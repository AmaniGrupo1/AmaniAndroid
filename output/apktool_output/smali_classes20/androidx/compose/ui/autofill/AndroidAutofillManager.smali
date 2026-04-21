.class public final Landroidx/compose/ui/autofill/AndroidAutofillManager;
.super Landroidx/compose/ui/autofill/AutofillManager;
.source "AndroidAutofillManager.android.kt"

# interfaces
.implements Landroidx/compose/ui/semantics/SemanticsListener;
.implements Landroidx/compose/ui/focus/FocusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/autofill/AndroidAutofillManager$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidAutofillManager.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidAutofillManager.android.kt\nandroidx/compose/ui/autofill/AndroidAutofillManager\n+ 2 InlineClassHelper.kt\nandroidx/compose/ui/internal/InlineClassHelperKt\n+ 3 ObjectList.kt\nandroidx/collection/ObjectList\n+ 4 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 5 SparseArray.kt\nandroidx/core/util/SparseArrayKt\n*L\n1#1,346:1\n91#2,5:347\n80#3:352\n80#3:353\n35#4,5:354\n24#5:359\n*S KotlinDebug\n*F\n+ 1 AndroidAutofillManager.android.kt\nandroidx/compose/ui/autofill/AndroidAutofillManager\n*L\n68#1:347,5\n208#1:352\n209#1:353\n211#1:354,5\n236#1:359\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u0001\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B/\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0008\u0010\u0018\u001a\u00020\u0019H\u0016J\u0008\u0010\u001a\u001a\u00020\u0019H\u0016J\u001c\u0010\u001b\u001a\u00020\u00192\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001dH\u0016J\u001a\u0010\u001f\u001a\u00020\u00192\u0006\u0010 \u001a\u00020!2\u0008\u0010\"\u001a\u0004\u0018\u00010#H\u0016J\u000e\u0010$\u001a\u00020\u00192\u0006\u0010%\u001a\u00020&J\u0014\u0010\'\u001a\u00020\u00192\u000c\u0010(\u001a\u0008\u0012\u0004\u0012\u00020*0)J\u0015\u0010-\u001a\u00020\u00192\u0006\u0010 \u001a\u00020!H\u0000\u00a2\u0006\u0002\u0008.J\u0015\u0010/\u001a\u00020\u00192\u0006\u0010 \u001a\u00020!H\u0000\u00a2\u0006\u0002\u00080J\u001d\u00101\u001a\u00020\u00192\u0006\u0010 \u001a\u00020!2\u0006\u00102\u001a\u000203H\u0000\u00a2\u0006\u0002\u00084J\u0015\u00105\u001a\u00020\u00192\u0006\u0010 \u001a\u00020!H\u0000\u00a2\u0006\u0002\u00086J\u0015\u00107\u001a\u00020\u00192\u0006\u0010 \u001a\u00020!H\u0000\u00a2\u0006\u0002\u00088J\r\u0010;\u001a\u00020\u0019H\u0000\u00a2\u0006\u0002\u0008<R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020,X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00109\u001a\u00020:X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006="
    }
    d2 = {
        "Landroidx/compose/ui/autofill/AndroidAutofillManager;",
        "Landroidx/compose/ui/autofill/AutofillManager;",
        "Landroidx/compose/ui/semantics/SemanticsListener;",
        "Landroidx/compose/ui/focus/FocusListener;",
        "platformAutofillManager",
        "Landroidx/compose/ui/autofill/PlatformAutofillManager;",
        "semanticsOwner",
        "Landroidx/compose/ui/semantics/SemanticsOwner;",
        "view",
        "Landroid/view/View;",
        "rectManager",
        "Landroidx/compose/ui/spatial/RectManager;",
        "packageName",
        "",
        "<init>",
        "(Landroidx/compose/ui/autofill/PlatformAutofillManager;Landroidx/compose/ui/semantics/SemanticsOwner;Landroid/view/View;Landroidx/compose/ui/spatial/RectManager;Ljava/lang/String;)V",
        "getPlatformAutofillManager",
        "()Landroidx/compose/ui/autofill/PlatformAutofillManager;",
        "setPlatformAutofillManager",
        "(Landroidx/compose/ui/autofill/PlatformAutofillManager;)V",
        "reusableRect",
        "Landroid/graphics/Rect;",
        "rootAutofillId",
        "Landroid/view/autofill/AutofillId;",
        "commit",
        "",
        "cancel",
        "onFocusChanged",
        "previous",
        "Landroidx/compose/ui/focus/FocusTargetModifierNode;",
        "current",
        "onSemanticsChanged",
        "semanticsInfo",
        "Landroidx/compose/ui/semantics/SemanticsInfo;",
        "previousSemanticsConfiguration",
        "Landroidx/compose/ui/semantics/SemanticsConfiguration;",
        "populateViewStructure",
        "rootViewStructure",
        "Landroid/view/ViewStructure;",
        "performAutofill",
        "values",
        "Landroid/util/SparseArray;",
        "Landroid/view/autofill/AutofillValue;",
        "currentlyDisplayedIDs",
        "Landroidx/collection/MutableIntSet;",
        "requestAutofill",
        "requestAutofill$ui",
        "onPostAttach",
        "onPostAttach$ui",
        "onPostLayoutNodeReused",
        "previousSemanticsId",
        "",
        "onPostLayoutNodeReused$ui",
        "onLayoutNodeDeactivated",
        "onLayoutNodeDeactivated$ui",
        "onDetach",
        "onDetach$ui",
        "pendingAutofillCommit",
        "",
        "onEndApplyChanges",
        "onEndApplyChanges$ui",
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
.field private currentlyDisplayedIDs:Landroidx/collection/MutableIntSet;

.field private final packageName:Ljava/lang/String;

.field private pendingAutofillCommit:Z

.field private platformAutofillManager:Landroidx/compose/ui/autofill/PlatformAutofillManager;

.field private final rectManager:Landroidx/compose/ui/spatial/RectManager;

.field private reusableRect:Landroid/graphics/Rect;

.field private rootAutofillId:Landroid/view/autofill/AutofillId;

.field private final semanticsOwner:Landroidx/compose/ui/semantics/SemanticsOwner;

.field private final view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/autofill/PlatformAutofillManager;Landroidx/compose/ui/semantics/SemanticsOwner;Landroid/view/View;Landroidx/compose/ui/spatial/RectManager;Ljava/lang/String;)V
    .locals 4
    .param p1, "platformAutofillManager"    # Landroidx/compose/ui/autofill/PlatformAutofillManager;
    .param p2, "semanticsOwner"    # Landroidx/compose/ui/semantics/SemanticsOwner;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "rectManager"    # Landroidx/compose/ui/spatial/RectManager;
    .param p5, "packageName"    # Ljava/lang/String;

    .line 54
    invoke-direct {p0}, Landroidx/compose/ui/autofill/AutofillManager;-><init>()V

    .line 56
    iput-object p1, p0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->platformAutofillManager:Landroidx/compose/ui/autofill/PlatformAutofillManager;

    .line 57
    iput-object p2, p0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->semanticsOwner:Landroidx/compose/ui/semantics/SemanticsOwner;

    .line 58
    iput-object p3, p0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->view:Landroid/view/View;

    .line 59
    iput-object p4, p0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->rectManager:Landroidx/compose/ui/spatial/RectManager;

    .line 60
    iput-object p5, p0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->packageName:Ljava/lang/String;

    .line 62
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->reusableRect:Landroid/graphics/Rect;

    .line 65
    nop

    .line 66
    iget-object v0, p0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->view:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAutofill(I)V

    .line 67
    nop

    .line 68
    iget-object v0, p0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->view:Landroid/view/View;

    invoke-static {v0}, Landroidx/compose/ui/platform/coreshims/ViewCompatShims;->getAutofillId(Landroid/view/View;)Landroidx/compose/ui/platform/coreshims/AutofillIdCompat;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/platform/coreshims/AutofillIdCompat;->toAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    .local v0, "value$iv":Ljava/lang/Object;
    :goto_0
    const/4 v3, 0x0

    .line 347
    .local v3, "$i$f$checkPreconditionNotNull":I
    if-eqz v0, :cond_1

    .line 351
    nop

    .line 67
    .end local v0    # "value$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$checkPreconditionNotNull":I
    iput-object v0, p0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->rootAutofillId:Landroid/view/autofill/AutofillId;

    .line 69
    nop

    .line 257
    new-instance v0, Landroidx/collection/MutableIntSet;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableIntSet;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->currentlyDisplayedIDs:Landroidx/collection/MutableIntSet;

    .line 55
    return-void

    .line 348
    .restart local v0    # "value$iv":Ljava/lang/Object;
    .restart local v3    # "$i$f$checkPreconditionNotNull":I
    :cond_1
    const-string v1, "Required value was null."

    invoke-static {v1}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateExceptionForNullCheck(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v1, Lkotlin/KotlinNothingValueException;

    invoke-direct {v1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v1
.end method

.method public static final synthetic access$getReusableRect$p(Landroidx/compose/ui/autofill/AndroidAutofillManager;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/autofill/AndroidAutofillManager;

    .line 54
    iget-object v0, p0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->reusableRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public static final synthetic access$getView$p(Landroidx/compose/ui/autofill/AndroidAutofillManager;)Landroid/view/View;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/autofill/AndroidAutofillManager;

    .line 54
    iget-object v0, p0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->view:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 76
    iget-object v0, p0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->platformAutofillManager:Landroidx/compose/ui/autofill/PlatformAutofillManager;

    invoke-interface {v0}, Landroidx/compose/ui/autofill/PlatformAutofillManager;->cancel()V

    .line 77
    return-void
.end method

.method public commit()V
    .locals 1

    .line 72
    iget-object v0, p0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->platformAutofillManager:Landroidx/compose/ui/autofill/PlatformAutofillManager;

    invoke-interface {v0}, Landroidx/compose/ui/autofill/PlatformAutofillManager;->commit()V

    .line 73
    return-void
.end method

.method public final getPlatformAutofillManager()Landroidx/compose/ui/autofill/PlatformAutofillManager;
    .locals 1

    .line 56
    iget-object v0, p0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->platformAutofillManager:Landroidx/compose/ui/autofill/PlatformAutofillManager;

    return-object v0
.end method

.method public final onDetach$ui(Landroidx/compose/ui/semantics/SemanticsInfo;)V
    .locals 4
    .param p1, "semanticsInfo"    # Landroidx/compose/ui/semantics/SemanticsInfo;

    .line 303
    iget-object v0, p0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->currentlyDisplayedIDs:Landroidx/collection/MutableIntSet;

    invoke-interface {p1}, Landroidx/compose/ui/semantics/SemanticsInfo;->getSemanticsId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/collection/MutableIntSet;->remove(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->platformAutofillManager:Landroidx/compose/ui/autofill/PlatformAutofillManager;

    .line 307
    iget-object v1, p0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->view:Landroid/view/View;

    .line 308
    invoke-interface {p1}, Landroidx/compose/ui/semantics/SemanticsInfo;->getSemanticsId()I

    move-result v2

    .line 309
    nop

    .line 306
    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroidx/compose/ui/autofill/PlatformAutofillManager;->notifyViewVisibilityChanged(Landroid/view/View;IZ)V

    .line 312
    :cond_0
    return-void
.end method

.method public final onEndApplyChanges$ui()V
    .locals 1

    .line 317
    iget-object v0, p0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->currentlyDisplayedIDs:Landroidx/collection/MutableIntSet;

    invoke-virtual {v0}, Landroidx/collection/MutableIntSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->pendingAutofillCommit:Z

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->platformAutofillManager:Landroidx/compose/ui/autofill/PlatformAutofillManager;

    invoke-interface {v0}, Landroidx/compose/ui/autofill/PlatformAutofillManager;->commit()V

    .line 321
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->pendingAutofillCommit:Z

    .line 323
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->currentlyDisplayedIDs:Landroidx/collection/MutableIntSet;

    invoke-virtual {v0}, Landroidx/collection/MutableIntSet;->isNotEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 324
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->pendingAutofillCommit:Z

    .line 326
    :cond_1
    return-void
.end method

.method public onFocusChanged(Landroidx/compose/ui/focus/FocusTargetModifierNode;Landroidx/compose/ui/focus/FocusTargetModifierNode;)V
    .locals 7
    .param p1, "previous"    # Landroidx/compose/ui/focus/FocusTargetModifierNode;
    .param p2, "current"    # Landroidx/compose/ui/focus/FocusTargetModifierNode;

    .line 83
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    move-object v2, p1

    check-cast v2, Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {v2}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireSemanticsInfo(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/semantics/SemanticsInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    .local v2, "it":Landroidx/compose/ui/semantics/SemanticsInfo;
    const/4 v3, 0x0

    .line 84
    .local v3, "$i$a$-let-AndroidAutofillManager$onFocusChanged$1":I
    invoke-interface {v2}, Landroidx/compose/ui/semantics/SemanticsInfo;->getSemanticsConfiguration()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {v4}, Landroidx/compose/ui/autofill/AndroidAutofillManager_androidKt;->access$isAutofillable(Landroidx/compose/ui/semantics/SemanticsConfiguration;)Z

    move-result v4

    if-ne v4, v0, :cond_0

    move v4, v0

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    if-eqz v4, :cond_1

    .line 85
    iget-object v4, p0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->platformAutofillManager:Landroidx/compose/ui/autofill/PlatformAutofillManager;

    iget-object v5, p0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->view:Landroid/view/View;

    invoke-interface {v2}, Landroidx/compose/ui/semantics/SemanticsInfo;->getSemanticsId()I

    move-result v6

    invoke-interface {v4, v5, v6}, Landroidx/compose/ui/autofill/PlatformAutofillManager;->notifyViewExited(Landroid/view/View;I)V

    .line 87
    :cond_1
    nop

    .line 83
    .end local v2    # "it":Landroidx/compose/ui/semantics/SemanticsInfo;
    .end local v3    # "$i$a$-let-AndroidAutofillManager$onFocusChanged$1":I
    :cond_2
    nop

    .line 88
    if-eqz p2, :cond_5

    move-object v2, p2

    check-cast v2, Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {v2}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireSemanticsInfo(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/semantics/SemanticsInfo;

    move-result-object v2

    if-eqz v2, :cond_5

    .restart local v2    # "it":Landroidx/compose/ui/semantics/SemanticsInfo;
    const/4 v3, 0x0

    .line 89
    .local v3, "$i$a$-let-AndroidAutofillManager$onFocusChanged$2":I
    invoke-interface {v2}, Landroidx/compose/ui/semantics/SemanticsInfo;->getSemanticsConfiguration()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-static {v4}, Landroidx/compose/ui/autofill/AndroidAutofillManager_androidKt;->access$isAutofillable(Landroidx/compose/ui/semantics/SemanticsConfiguration;)Z

    move-result v4

    if-ne v4, v0, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    if-eqz v0, :cond_4

    .line 90
    invoke-interface {v2}, Landroidx/compose/ui/semantics/SemanticsInfo;->getSemanticsId()I

    move-result v0

    .line 91
    .local v0, "semanticsId":I
    iget-object v1, p0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->rectManager:Landroidx/compose/ui/spatial/RectManager;

    invoke-virtual {v1}, Landroidx/compose/ui/spatial/RectManager;->getRects()Landroidx/compose/ui/spatial/RectList;

    move-result-object v1

    new-instance v4, Landroidx/compose/ui/autofill/AndroidAutofillManager$onFocusChanged$2$1;

    invoke-direct {v4, p0, v0}, Landroidx/compose/ui/autofill/AndroidAutofillManager$onFocusChanged$2$1;-><init>(Landroidx/compose/ui/autofill/AndroidAutofillManager;I)V

    check-cast v4, Lkotlin/jvm/functions/Function4;

    invoke-virtual {v1, v0, v4}, Landroidx/compose/ui/spatial/RectList;->withRect(ILkotlin/jvm/functions/Function4;)Z

    .line 95
    .end local v0    # "semanticsId":I
    :cond_4
    nop

    .line 88
    .end local v2    # "it":Landroidx/compose/ui/semantics/SemanticsInfo;
    .end local v3    # "$i$a$-let-AndroidAutofillManager$onFocusChanged$2":I
    :cond_5
    nop

    .line 96
    return-void
.end method

.method public final onLayoutNodeDeactivated$ui(Landroidx/compose/ui/semantics/SemanticsInfo;)V
    .locals 4
    .param p1, "semanticsInfo"    # Landroidx/compose/ui/semantics/SemanticsInfo;

    .line 293
    iget-object v0, p0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->currentlyDisplayedIDs:Landroidx/collection/MutableIntSet;

    invoke-interface {p1}, Landroidx/compose/ui/semantics/SemanticsInfo;->getSemanticsId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/collection/MutableIntSet;->remove(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->platformAutofillManager:Landroidx/compose/ui/autofill/PlatformAutofillManager;

    .line 295
    iget-object v1, p0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->view:Landroid/view/View;

    .line 296
    invoke-interface {p1}, Landroidx/compose/ui/semantics/SemanticsInfo;->getSemanticsId()I

    move-result v2

    .line 297
    nop

    .line 294
    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroidx/compose/ui/autofill/PlatformAutofillManager;->notifyViewVisibilityChanged(Landroid/view/View;IZ)V

    .line 300
    :cond_0
    return-void
.end method

.method public final onPostAttach$ui(Landroidx/compose/ui/semantics/SemanticsInfo;)V
    .locals 4
    .param p1, "semanticsInfo"    # Landroidx/compose/ui/semantics/SemanticsInfo;

    .line 267
    invoke-interface {p1}, Landroidx/compose/ui/semantics/SemanticsInfo;->getSemanticsConfiguration()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/compose/ui/autofill/AndroidAutofillManager_androidKt;->access$isRelatedToAutoCommit(Landroidx/compose/ui/semantics/SemanticsConfiguration;)Z

    move-result v0

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    if-eqz v1, :cond_1

    .line 268
    iget-object v0, p0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->currentlyDisplayedIDs:Landroidx/collection/MutableIntSet;

    invoke-interface {p1}, Landroidx/compose/ui/semantics/SemanticsInfo;->getSemanticsId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/collection/MutableIntSet;->add(I)Z

    .line 270
    iget-object v0, p0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->platformAutofillManager:Landroidx/compose/ui/autofill/PlatformAutofillManager;

    .line 271
    iget-object v1, p0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->view:Landroid/view/View;

    .line 272
    invoke-interface {p1}, Landroidx/compose/ui/semantics/SemanticsInfo;->getSemanticsId()I

    move-result v3

    .line 273
    nop

    .line 270
    invoke-interface {v0, v1, v3, v2}, Landroidx/compose/ui/autofill/PlatformAutofillManager;->notifyViewVisibilityChanged(Landroid/view/View;IZ)V

    .line 276
    :cond_1
    return-void
.end method

.method public final onPostLayoutNodeReused$ui(Landroidx/compose/ui/semantics/SemanticsInfo;I)V
    .locals 4
    .param p1, "semanticsInfo"    # Landroidx/compose/ui/semantics/SemanticsInfo;
    .param p2, "previousSemanticsId"    # I

    .line 279
    iget-object v0, p0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->currentlyDisplayedIDs:Landroidx/collection/MutableIntSet;

    invoke-virtual {v0, p2}, Landroidx/collection/MutableIntSet;->remove(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->platformAutofillManager:Landroidx/compose/ui/autofill/PlatformAutofillManager;

    iget-object v2, p0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->view:Landroid/view/View;

    invoke-interface {v0, v2, p2, v1}, Landroidx/compose/ui/autofill/PlatformAutofillManager;->notifyViewVisibilityChanged(Landroid/view/View;IZ)V

    .line 282
    :cond_0
    invoke-interface {p1}, Landroidx/compose/ui/semantics/SemanticsInfo;->getSemanticsConfiguration()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroidx/compose/ui/autofill/AndroidAutofillManager_androidKt;->access$isRelatedToAutoCommit(Landroidx/compose/ui/semantics/SemanticsConfiguration;)Z

    move-result v0

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    if-eqz v1, :cond_2

    .line 283
    iget-object v0, p0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->currentlyDisplayedIDs:Landroidx/collection/MutableIntSet;

    invoke-interface {p1}, Landroidx/compose/ui/semantics/SemanticsInfo;->getSemanticsId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/collection/MutableIntSet;->add(I)Z

    .line 284
    iget-object v0, p0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->platformAutofillManager:Landroidx/compose/ui/autofill/PlatformAutofillManager;

    .line 285
    iget-object v1, p0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->view:Landroid/view/View;

    .line 286
    invoke-interface {p1}, Landroidx/compose/ui/semantics/SemanticsInfo;->getSemanticsId()I

    move-result v3

    .line 287
    nop

    .line 284
    invoke-interface {v0, v1, v3, v2}, Landroidx/compose/ui/autofill/PlatformAutofillManager;->notifyViewVisibilityChanged(Landroid/view/View;IZ)V

    .line 290
    :cond_2
    return-void
.end method

.method public onSemanticsChanged(Landroidx/compose/ui/semantics/SemanticsInfo;Landroidx/compose/ui/semantics/SemanticsConfiguration;)V
    .locals 17
    .param p1, "semanticsInfo"    # Landroidx/compose/ui/semantics/SemanticsInfo;
    .param p2, "previousSemanticsConfiguration"    # Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 103
    move-object/from16 v0, p0

    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/semantics/SemanticsInfo;->getSemanticsConfiguration()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v1

    .line 104
    .local v1, "config":Landroidx/compose/ui/semantics/SemanticsConfiguration;
    move-object/from16 v2, p2

    .line 105
    .local v2, "prevConfig":Landroidx/compose/ui/semantics/SemanticsConfiguration;
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/semantics/SemanticsInfo;->getSemanticsId()I

    move-result v3

    .line 108
    .local v3, "semanticsId":I
    if-eqz v2, :cond_0

    sget-object v5, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsProperties;->getInputText()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v5

    invoke-static {v2, v5}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/text/AnnotatedString;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroidx/compose/ui/text/AnnotatedString;->getText()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 109
    .local v5, "previousText":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_1

    sget-object v6, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v6}, Landroidx/compose/ui/semantics/SemanticsProperties;->getInputText()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v6

    invoke-static {v1, v6}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/text/AnnotatedString;

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroidx/compose/ui/text/AnnotatedString;->getText()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    .line 110
    .local v6, "newText":Ljava/lang/String;
    :goto_1
    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v5, v6, :cond_4

    .line 111
    nop

    .line 112
    if-nez v5, :cond_2

    .line 113
    iget-object v9, v0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->platformAutofillManager:Landroidx/compose/ui/autofill/PlatformAutofillManager;

    iget-object v10, v0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->view:Landroid/view/View;

    invoke-interface {v9, v10, v3, v8}, Landroidx/compose/ui/autofill/PlatformAutofillManager;->notifyViewVisibilityChanged(Landroid/view/View;IZ)V

    goto :goto_2

    .line 114
    :cond_2
    if-nez v6, :cond_3

    .line 115
    iget-object v9, v0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->platformAutofillManager:Landroidx/compose/ui/autofill/PlatformAutofillManager;

    iget-object v10, v0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->view:Landroid/view/View;

    invoke-interface {v9, v10, v3, v7}, Landroidx/compose/ui/autofill/PlatformAutofillManager;->notifyViewVisibilityChanged(Landroid/view/View;IZ)V

    goto :goto_2

    .line 117
    :cond_3
    sget-object v9, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v9}, Landroidx/compose/ui/semantics/SemanticsProperties;->getContentDataType()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v9

    invoke-static {v1, v9}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/autofill/ContentDataType;

    .line 118
    .local v9, "contentDataType":Landroidx/compose/ui/autofill/ContentDataType;
    sget-object v10, Landroidx/compose/ui/autofill/ContentDataType;->Companion:Landroidx/compose/ui/autofill/ContentDataType$Companion;

    invoke-virtual {v10}, Landroidx/compose/ui/autofill/ContentDataType$Companion;->getText()Landroidx/compose/ui/autofill/ContentDataType;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 119
    iget-object v10, v0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->platformAutofillManager:Landroidx/compose/ui/autofill/PlatformAutofillManager;

    .line 120
    iget-object v11, v0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->view:Landroid/view/View;

    .line 121
    nop

    .line 122
    sget-object v12, Landroidx/compose/ui/autofill/AutofillApi26Helper;->INSTANCE:Landroidx/compose/ui/autofill/AutofillApi26Helper;

    invoke-virtual {v12, v6}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->getAutofillTextValue(Ljava/lang/String;)Landroid/view/autofill/AutofillValue;

    move-result-object v12

    .line 119
    invoke-interface {v10, v11, v3, v12}, Landroidx/compose/ui/autofill/PlatformAutofillManager;->notifyValueChanged(Landroid/view/View;ILandroid/view/autofill/AutofillValue;)V

    .line 130
    .end local v9    # "contentDataType":Landroidx/compose/ui/autofill/ContentDataType;
    :cond_4
    :goto_2
    if-eqz v2, :cond_5

    sget-object v9, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v9}, Landroidx/compose/ui/semantics/SemanticsProperties;->getToggleableState()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v9

    invoke-static {v2, v9}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/state/ToggleableState;

    goto :goto_3

    :cond_5
    const/4 v9, 0x0

    .line 131
    .local v9, "previousToggleValue":Landroidx/compose/ui/state/ToggleableState;
    :goto_3
    if-eqz v1, :cond_6

    sget-object v10, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v10}, Landroidx/compose/ui/semantics/SemanticsProperties;->getToggleableState()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v10

    invoke-static {v1, v10}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/ui/state/ToggleableState;

    goto :goto_4

    :cond_6
    const/4 v10, 0x0

    .line 132
    .local v10, "newToggleValue":Landroidx/compose/ui/state/ToggleableState;
    :goto_4
    if-eq v9, v10, :cond_9

    .line 133
    nop

    .line 134
    if-nez v9, :cond_7

    .line 135
    iget-object v11, v0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->platformAutofillManager:Landroidx/compose/ui/autofill/PlatformAutofillManager;

    iget-object v12, v0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->view:Landroid/view/View;

    invoke-interface {v11, v12, v3, v8}, Landroidx/compose/ui/autofill/PlatformAutofillManager;->notifyViewVisibilityChanged(Landroid/view/View;IZ)V

    goto :goto_6

    .line 137
    :cond_7
    if-nez v10, :cond_8

    .line 138
    iget-object v11, v0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->platformAutofillManager:Landroidx/compose/ui/autofill/PlatformAutofillManager;

    iget-object v12, v0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->view:Landroid/view/View;

    invoke-interface {v11, v12, v3, v7}, Landroidx/compose/ui/autofill/PlatformAutofillManager;->notifyViewVisibilityChanged(Landroid/view/View;IZ)V

    goto :goto_6

    .line 141
    :cond_8
    sget-object v11, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsProperties;->getContentDataType()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v11

    invoke-static {v1, v11}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/ui/autofill/ContentDataType;

    .line 142
    .local v11, "contentDataType":Landroidx/compose/ui/autofill/ContentDataType;
    sget-object v12, Landroidx/compose/ui/autofill/ContentDataType;->Companion:Landroidx/compose/ui/autofill/ContentDataType$Companion;

    invoke-virtual {v12}, Landroidx/compose/ui/autofill/ContentDataType$Companion;->getToggle()Landroidx/compose/ui/autofill/ContentDataType;

    move-result-object v12

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 144
    sget-object v12, Landroidx/compose/ui/autofill/AndroidAutofillManager$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v10}, Landroidx/compose/ui/state/ToggleableState;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_0

    .line 147
    const/4 v12, 0x0

    goto :goto_5

    .line 146
    :pswitch_0
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    goto :goto_5

    .line 145
    :pswitch_1
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    .line 144
    :goto_5
    nop

    .line 143
    nop

    .line 149
    .local v12, "isToggled":Ljava/lang/Boolean;
    if-eqz v12, :cond_9

    .line 150
    iget-object v13, v0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->platformAutofillManager:Landroidx/compose/ui/autofill/PlatformAutofillManager;

    .line 151
    iget-object v14, v0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->view:Landroid/view/View;

    .line 152
    nop

    .line 153
    sget-object v15, Landroidx/compose/ui/autofill/AutofillApi26Helper;->INSTANCE:Landroidx/compose/ui/autofill/AutofillApi26Helper;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v15, v4}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->getAutofillToggleValue(Z)Landroid/view/autofill/AutofillValue;

    move-result-object v4

    .line 150
    invoke-interface {v13, v14, v3, v4}, Landroidx/compose/ui/autofill/PlatformAutofillManager;->notifyValueChanged(Landroid/view/View;ILandroid/view/autofill/AutofillValue;)V

    .line 162
    .end local v11    # "contentDataType":Landroidx/compose/ui/autofill/ContentDataType;
    .end local v12    # "isToggled":Ljava/lang/Boolean;
    :cond_9
    :goto_6
    if-eqz v2, :cond_a

    sget-object v4, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v4}, Landroidx/compose/ui/semantics/SemanticsProperties;->getFillableData()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v4

    invoke-static {v2, v4}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/autofill/FillableData;

    goto :goto_7

    :cond_a
    const/4 v4, 0x0

    .line 163
    .local v4, "previousFillableData":Landroidx/compose/ui/autofill/FillableData;
    :goto_7
    if-eqz v1, :cond_b

    sget-object v11, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsProperties;->getFillableData()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v11

    invoke-static {v1, v11}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/ui/autofill/FillableData;

    move-object/from16 v16, v11

    goto :goto_8

    :cond_b
    const/16 v16, 0x0

    :goto_8
    move-object/from16 v11, v16

    .line 164
    .local v11, "newFillableData":Landroidx/compose/ui/autofill/FillableData;
    invoke-static {v4, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_e

    .line 165
    nop

    .line 166
    if-nez v4, :cond_c

    .line 167
    iget-object v12, v0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->platformAutofillManager:Landroidx/compose/ui/autofill/PlatformAutofillManager;

    iget-object v13, v0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->view:Landroid/view/View;

    invoke-interface {v12, v13, v3, v8}, Landroidx/compose/ui/autofill/PlatformAutofillManager;->notifyViewVisibilityChanged(Landroid/view/View;IZ)V

    goto :goto_9

    .line 168
    :cond_c
    nop

    .line 171
    iget-object v12, v0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->platformAutofillManager:Landroidx/compose/ui/autofill/PlatformAutofillManager;

    .line 168
    if-nez v11, :cond_d

    .line 169
    iget-object v13, v0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->view:Landroid/view/View;

    invoke-interface {v12, v13, v3, v7}, Landroidx/compose/ui/autofill/PlatformAutofillManager;->notifyViewVisibilityChanged(Landroid/view/View;IZ)V

    goto :goto_9

    .line 171
    :cond_d
    nop

    .line 172
    iget-object v13, v0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->view:Landroid/view/View;

    .line 173
    nop

    .line 174
    move-object v14, v11

    check-cast v14, Landroidx/compose/ui/autofill/AndroidFillableData;

    invoke-virtual {v14}, Landroidx/compose/ui/autofill/AndroidFillableData;->getAutofillValue$ui()Landroid/view/autofill/AutofillValue;

    move-result-object v14

    .line 171
    invoke-interface {v12, v13, v3, v14}, Landroidx/compose/ui/autofill/PlatformAutofillManager;->notifyValueChanged(Landroid/view/View;ILandroid/view/autofill/AutofillValue;)V

    .line 181
    :cond_e
    :goto_9
    if-eqz v2, :cond_f

    invoke-static {v2}, Landroidx/compose/ui/autofill/AndroidAutofillManager_androidKt;->access$isRelatedToAutoCommit(Landroidx/compose/ui/semantics/SemanticsConfiguration;)Z

    move-result v12

    if-ne v12, v8, :cond_f

    move v12, v8

    goto :goto_a

    :cond_f
    move v12, v7

    .line 182
    .local v12, "prevRelatedToAutoCommit":Z
    :goto_a
    if-eqz v1, :cond_10

    invoke-static {v1}, Landroidx/compose/ui/autofill/AndroidAutofillManager_androidKt;->access$isRelatedToAutoCommit(Landroidx/compose/ui/semantics/SemanticsConfiguration;)Z

    move-result v13

    if-ne v13, v8, :cond_10

    move v7, v8

    .line 183
    .local v7, "currRelatedToAutoCommit":Z
    :cond_10
    if-eq v12, v7, :cond_12

    .line 184
    nop

    .line 187
    iget-object v8, v0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->currentlyDisplayedIDs:Landroidx/collection/MutableIntSet;

    .line 184
    if-eqz v7, :cond_11

    .line 185
    invoke-virtual {v8, v3}, Landroidx/collection/MutableIntSet;->add(I)Z

    goto :goto_b

    .line 187
    :cond_11
    invoke-virtual {v8, v3}, Landroidx/collection/MutableIntSet;->remove(I)Z

    :goto_b
    nop

    .line 190
    :cond_12
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final performAutofill(Landroid/util/SparseArray;)V
    .locals 11
    .param p1, "values"    # Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/view/autofill/AutofillValue;",
            ">;)V"
        }
    .end annotation

    .line 236
    const/4 v0, 0x0

    .local v0, "index":I
    move-object v1, p1

    .local v1, "$this$size$iv":Landroid/util/SparseArray;
    const/4 v2, 0x0

    .line 359
    .local v2, "$i$f$getSize":I
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 236
    .end local v1    # "$this$size$iv":Landroid/util/SparseArray;
    .end local v2    # "$i$f$getSize":I
    nop

    :goto_0
    if-ge v0, v1, :cond_3

    .line 237
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 238
    .local v2, "itemId":I
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/autofill/AutofillValue;

    .line 239
    .local v3, "value":Landroid/view/autofill/AutofillValue;
    iget-object v4, p0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->semanticsOwner:Landroidx/compose/ui/semantics/SemanticsOwner;

    invoke-virtual {v4, v2}, Landroidx/compose/ui/semantics/SemanticsOwner;->get$ui(I)Landroidx/compose/ui/semantics/SemanticsInfo;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v4}, Landroidx/compose/ui/semantics/SemanticsInfo;->getSemanticsConfiguration()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v4

    if-eqz v4, :cond_2

    .local v4, "semanticsConfig":Landroidx/compose/ui/semantics/SemanticsConfiguration;
    const/4 v5, 0x0

    .line 244
    .local v5, "$i$a$-let-AndroidAutofillManager$performAutofill$1":I
    nop

    .line 245
    nop

    .line 242
    nop

    .line 243
    sget-object v6, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v6}, Landroidx/compose/ui/semantics/SemanticsActions;->getOnAutofillText()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v6

    invoke-static {v4, v6}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 244
    if-eqz v6, :cond_0

    .line 242
    nop

    .line 244
    invoke-virtual {v6}, Landroidx/compose/ui/semantics/AccessibilityAction;->getAction()Lkotlin/Function;

    move-result-object v6

    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 245
    if-eqz v6, :cond_0

    .line 242
    nop

    .line 245
    new-instance v7, Landroidx/compose/ui/text/AnnotatedString;

    sget-object v8, Landroidx/compose/ui/autofill/AutofillApi26Helper;->INSTANCE:Landroidx/compose/ui/autofill/AutofillApi26Helper;

    invoke-virtual {v8, v3}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->textValue(Landroid/view/autofill/AutofillValue;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-direct {v7, v8, v10, v9, v10}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v6, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    goto :goto_1

    .line 244
    :cond_0
    nop

    .line 249
    :goto_1
    nop

    .line 250
    nop

    .line 247
    nop

    .line 248
    sget-object v6, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v6}, Landroidx/compose/ui/semantics/SemanticsActions;->getOnFillData()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v6

    invoke-static {v4, v6}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 249
    if-eqz v6, :cond_1

    .line 247
    nop

    .line 249
    invoke-virtual {v6}, Landroidx/compose/ui/semantics/AccessibilityAction;->getAction()Lkotlin/Function;

    move-result-object v6

    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 250
    if-eqz v6, :cond_1

    .line 247
    nop

    .line 250
    new-instance v7, Landroidx/compose/ui/autofill/AndroidFillableData;

    invoke-direct {v7, v3}, Landroidx/compose/ui/autofill/AndroidFillableData;-><init>(Landroid/view/autofill/AutofillValue;)V

    invoke-interface {v6, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    goto :goto_2

    .line 249
    :cond_1
    nop

    .line 250
    :goto_2
    nop

    .line 239
    .end local v4    # "semanticsConfig":Landroidx/compose/ui/semantics/SemanticsConfiguration;
    .end local v5    # "$i$a$-let-AndroidAutofillManager$performAutofill$1":I
    :cond_2
    nop

    .line 236
    .end local v2    # "itemId":I
    .end local v3    # "value":Landroid/view/autofill/AutofillValue;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 253
    .end local v0    # "index":I
    :cond_3
    return-void
.end method

.method public final populateViewStructure(Landroid/view/ViewStructure;)V
    .locals 20
    .param p1, "rootViewStructure"    # Landroid/view/ViewStructure;

    .line 194
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Landroidx/compose/ui/autofill/AutofillApi26Helper;->INSTANCE:Landroidx/compose/ui/autofill/AutofillApi26Helper;

    .line 195
    .local v2, "autofillApi":Landroidx/compose/ui/autofill/AutofillApi26Helper;
    iget-object v3, v0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->semanticsOwner:Landroidx/compose/ui/semantics/SemanticsOwner;

    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsOwner;->getRootInfo$ui()Landroidx/compose/ui/semantics/SemanticsInfo;

    move-result-object v3

    .line 198
    .local v3, "rootSemanticInfo":Landroidx/compose/ui/semantics/SemanticsInfo;
    iget-object v4, v0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->rootAutofillId:Landroid/view/autofill/AutofillId;

    iget-object v5, v0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->packageName:Ljava/lang/String;

    iget-object v6, v0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->rectManager:Landroidx/compose/ui/spatial/RectManager;

    invoke-static {v1, v3, v4, v5, v6}, Landroidx/compose/ui/autofill/PopulateViewStructure_androidKt;->populate(Landroid/view/ViewStructure;Landroidx/compose/ui/semantics/SemanticsInfo;Landroid/view/autofill/AutofillId;Ljava/lang/String;Landroidx/compose/ui/spatial/RectManager;)V

    .line 202
    invoke-static {v3, v1}, Landroidx/collection/ObjectListKt;->mutableObjectListOf(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/collection/MutableObjectList;

    move-result-object v4

    .line 205
    .local v4, "populateChildren":Landroidx/collection/MutableObjectList;
    :goto_0
    invoke-virtual {v4}, Landroidx/collection/MutableObjectList;->isNotEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 208
    move-object v5, v4

    check-cast v5, Landroidx/collection/ObjectList;

    .local v5, "this_$iv":Landroidx/collection/ObjectList;
    const/4 v6, 0x0

    .line 352
    .local v6, "$i$f$getLastIndex":I
    iget v7, v5, Landroidx/collection/ObjectList;->_size:I

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    .line 208
    .end local v5    # "this_$iv":Landroidx/collection/ObjectList;
    .end local v6    # "$i$f$getLastIndex":I
    invoke-virtual {v4, v7}, Landroidx/collection/MutableObjectList;->removeAt(I)Ljava/lang/Object;

    move-result-object v5

    const-string/jumbo v6, "null cannot be cast to non-null type android.view.ViewStructure"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/view/ViewStructure;

    .line 207
    nop

    .line 209
    .local v5, "parentStructure":Landroid/view/ViewStructure;
    move-object v6, v4

    check-cast v6, Landroidx/collection/ObjectList;

    .local v6, "this_$iv":Landroidx/collection/ObjectList;
    const/4 v7, 0x0

    .line 353
    .local v7, "$i$f$getLastIndex":I
    iget v9, v6, Landroidx/collection/ObjectList;->_size:I

    sub-int/2addr v9, v8

    .line 209
    .end local v6    # "this_$iv":Landroidx/collection/ObjectList;
    .end local v7    # "$i$f$getLastIndex":I
    invoke-virtual {v4, v9}, Landroidx/collection/MutableObjectList;->removeAt(I)Ljava/lang/Object;

    move-result-object v6

    const-string/jumbo v7, "null cannot be cast to non-null type androidx.compose.ui.semantics.SemanticsInfo"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroidx/compose/ui/semantics/SemanticsInfo;

    .line 211
    .local v6, "parentInfo":Landroidx/compose/ui/semantics/SemanticsInfo;
    invoke-interface {v6}, Landroidx/compose/ui/semantics/SemanticsInfo;->getChildrenInfo()Ljava/util/List;

    move-result-object v7

    .local v7, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v9, 0x0

    .line 354
    .local v9, "$i$f$fastForEach":I
    const/4 v10, 0x0

    .local v10, "index$iv":I
    move-object v11, v7

    check-cast v11, Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->size()I

    move-result v11

    :goto_1
    if-ge v10, v11, :cond_4

    .line 355
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 356
    .local v12, "item$iv":Ljava/lang/Object;
    move-object v13, v12

    check-cast v13, Landroidx/compose/ui/semantics/SemanticsInfo;

    .local v13, "childInfo":Landroidx/compose/ui/semantics/SemanticsInfo;
    const/4 v14, 0x0

    .line 212
    .local v14, "$i$a$-fastForEach-AndroidAutofillManager$populateViewStructure$1":I
    invoke-interface {v13}, Landroidx/compose/ui/semantics/SemanticsInfo;->isDeactivated()Z

    move-result v15

    if-nez v15, :cond_3

    invoke-interface {v13}, Landroidx/compose/ui/semantics/SemanticsInfo;->isAttached()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v13}, Landroidx/compose/ui/semantics/SemanticsInfo;->isPlaced()Z

    move-result v15

    if-nez v15, :cond_0

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    goto :goto_2

    .line 218
    :cond_0
    invoke-interface {v13}, Landroidx/compose/ui/semantics/SemanticsInfo;->getSemanticsConfiguration()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v15

    .line 219
    .local v15, "semanticsConfigurationChild":Landroidx/compose/ui/semantics/SemanticsConfiguration;
    const/16 v16, 0x0

    if-eqz v15, :cond_1

    invoke-static {v15}, Landroidx/compose/ui/autofill/AndroidAutofillManager_androidKt;->access$isRelatedToAutofill(Landroidx/compose/ui/semantics/SemanticsConfiguration;)Z

    move-result v1

    if-ne v1, v8, :cond_1

    move/from16 v16, v8

    :cond_1
    if-nez v16, :cond_2

    .line 220
    invoke-virtual {v4, v13}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)Z

    .line 221
    invoke-virtual {v4, v5}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)Z

    .line 222
    move-object/from16 v18, v2

    move-object/from16 v19, v3

    goto :goto_3

    .line 225
    :cond_2
    invoke-virtual {v2, v5, v8}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->addChildCount(Landroid/view/ViewStructure;I)I

    move-result v1

    .line 226
    .local v1, "childIndex":I
    invoke-virtual {v2, v5, v1}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->newChild(Landroid/view/ViewStructure;I)Landroid/view/ViewStructure;

    move-result-object v8

    .line 227
    .local v8, "childStructure":Landroid/view/ViewStructure;
    move/from16 v17, v1

    .end local v1    # "childIndex":I
    .local v17, "childIndex":I
    iget-object v1, v0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->rootAutofillId:Landroid/view/autofill/AutofillId;

    move-object/from16 v18, v2

    .end local v2    # "autofillApi":Landroidx/compose/ui/autofill/AutofillApi26Helper;
    .local v18, "autofillApi":Landroidx/compose/ui/autofill/AutofillApi26Helper;
    iget-object v2, v0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->packageName:Ljava/lang/String;

    move-object/from16 v19, v3

    .end local v3    # "rootSemanticInfo":Landroidx/compose/ui/semantics/SemanticsInfo;
    .local v19, "rootSemanticInfo":Landroidx/compose/ui/semantics/SemanticsInfo;
    iget-object v3, v0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->rectManager:Landroidx/compose/ui/spatial/RectManager;

    invoke-static {v8, v13, v1, v2, v3}, Landroidx/compose/ui/autofill/PopulateViewStructure_androidKt;->populate(Landroid/view/ViewStructure;Landroidx/compose/ui/semantics/SemanticsInfo;Landroid/view/autofill/AutofillId;Ljava/lang/String;Landroidx/compose/ui/spatial/RectManager;)V

    .line 228
    invoke-virtual {v4, v13}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)Z

    .line 229
    invoke-virtual {v4, v8}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)Z

    .line 230
    goto :goto_3

    .line 212
    .end local v8    # "childStructure":Landroid/view/ViewStructure;
    .end local v15    # "semanticsConfigurationChild":Landroidx/compose/ui/semantics/SemanticsConfiguration;
    .end local v17    # "childIndex":I
    .end local v18    # "autofillApi":Landroidx/compose/ui/autofill/AutofillApi26Helper;
    .end local v19    # "rootSemanticInfo":Landroidx/compose/ui/semantics/SemanticsInfo;
    .restart local v2    # "autofillApi":Landroidx/compose/ui/autofill/AutofillApi26Helper;
    .restart local v3    # "rootSemanticInfo":Landroidx/compose/ui/semantics/SemanticsInfo;
    :cond_3
    move-object/from16 v18, v2

    move-object/from16 v19, v3

    .line 213
    .end local v2    # "autofillApi":Landroidx/compose/ui/autofill/AutofillApi26Helper;
    .end local v3    # "rootSemanticInfo":Landroidx/compose/ui/semantics/SemanticsInfo;
    .restart local v18    # "autofillApi":Landroidx/compose/ui/autofill/AutofillApi26Helper;
    .restart local v19    # "rootSemanticInfo":Landroidx/compose/ui/semantics/SemanticsInfo;
    :goto_2
    nop

    .line 356
    .end local v13    # "childInfo":Landroidx/compose/ui/semantics/SemanticsInfo;
    .end local v14    # "$i$a$-fastForEach-AndroidAutofillManager$populateViewStructure$1":I
    :goto_3
    nop

    .line 354
    .end local v12    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    const/4 v8, 0x1

    goto :goto_1

    .end local v18    # "autofillApi":Landroidx/compose/ui/autofill/AutofillApi26Helper;
    .end local v19    # "rootSemanticInfo":Landroidx/compose/ui/semantics/SemanticsInfo;
    .restart local v2    # "autofillApi":Landroidx/compose/ui/autofill/AutofillApi26Helper;
    .restart local v3    # "rootSemanticInfo":Landroidx/compose/ui/semantics/SemanticsInfo;
    :cond_4
    move-object/from16 v18, v2

    move-object/from16 v19, v3

    .line 358
    .end local v2    # "autofillApi":Landroidx/compose/ui/autofill/AutofillApi26Helper;
    .end local v3    # "rootSemanticInfo":Landroidx/compose/ui/semantics/SemanticsInfo;
    .end local v10    # "index$iv":I
    .restart local v18    # "autofillApi":Landroidx/compose/ui/autofill/AutofillApi26Helper;
    .restart local v19    # "rootSemanticInfo":Landroidx/compose/ui/semantics/SemanticsInfo;
    move-object/from16 v1, p1

    .end local v5    # "parentStructure":Landroid/view/ViewStructure;
    .end local v6    # "parentInfo":Landroidx/compose/ui/semantics/SemanticsInfo;
    .end local v7    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v9    # "$i$f$fastForEach":I
    goto/16 :goto_0

    .line 232
    .end local v18    # "autofillApi":Landroidx/compose/ui/autofill/AutofillApi26Helper;
    .end local v19    # "rootSemanticInfo":Landroidx/compose/ui/semantics/SemanticsInfo;
    .restart local v2    # "autofillApi":Landroidx/compose/ui/autofill/AutofillApi26Helper;
    .restart local v3    # "rootSemanticInfo":Landroidx/compose/ui/semantics/SemanticsInfo;
    :cond_5
    return-void
.end method

.method public final requestAutofill$ui(Landroidx/compose/ui/semantics/SemanticsInfo;)V
    .locals 3
    .param p1, "semanticsInfo"    # Landroidx/compose/ui/semantics/SemanticsInfo;

    .line 260
    iget-object v0, p0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->rectManager:Landroidx/compose/ui/spatial/RectManager;

    invoke-virtual {v0}, Landroidx/compose/ui/spatial/RectManager;->getRects()Landroidx/compose/ui/spatial/RectList;

    move-result-object v0

    invoke-interface {p1}, Landroidx/compose/ui/semantics/SemanticsInfo;->getSemanticsId()I

    move-result v1

    new-instance v2, Landroidx/compose/ui/autofill/AndroidAutofillManager$requestAutofill$1;

    invoke-direct {v2, p0, p1}, Landroidx/compose/ui/autofill/AndroidAutofillManager$requestAutofill$1;-><init>(Landroidx/compose/ui/autofill/AndroidAutofillManager;Landroidx/compose/ui/semantics/SemanticsInfo;)V

    check-cast v2, Lkotlin/jvm/functions/Function4;

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/spatial/RectList;->withRect(ILkotlin/jvm/functions/Function4;)Z

    .line 264
    return-void
.end method

.method public final setPlatformAutofillManager(Landroidx/compose/ui/autofill/PlatformAutofillManager;)V
    .locals 0
    .param p1, "<set-?>"    # Landroidx/compose/ui/autofill/PlatformAutofillManager;

    .line 56
    iput-object p1, p0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->platformAutofillManager:Landroidx/compose/ui/autofill/PlatformAutofillManager;

    return-void
.end method
