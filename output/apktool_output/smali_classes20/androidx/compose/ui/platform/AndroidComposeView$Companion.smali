.class public final Landroidx/compose/ui/platform/AndroidComposeView$Companion;
.super Ljava/lang/Object;
.source "AndroidComposeView.android.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/platform/AndroidComposeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidComposeView.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidComposeView.android.kt\nandroidx/compose/ui/platform/AndroidComposeView$Companion\n+ 2 Synchronization.android.kt\nandroidx/compose/ui/platform/Synchronization_androidKt\n+ 3 ObjectList.kt\nandroidx/collection/MutableObjectList\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 ObjectList.kt\nandroidx/collection/ObjectList\n*L\n1#1,3963:1\n32#2:3964\n32#2:3967\n32#2:3971\n919#3,2:3965\n924#3,2:3968\n1#4:3970\n287#5,6:3972\n287#5,6:3978\n*S KotlinDebug\n*F\n+ 1 AndroidComposeView.android.kt\nandroidx/compose/ui/platform/AndroidComposeView$Companion\n*L\n3309#1:3964\n3315#1:3967\n3276#1:3971\n3309#1:3965,2\n3315#1:3968,2\n3278#1:3972,6\n3286#1:3978,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u000f\u001a\u00020\u0010H\u0002J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u000bH\u0002J\u0010\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u000bH\u0002J\u0010\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u0017H\u0007R\u0014\u0010\u0004\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Landroidx/compose/ui/platform/AndroidComposeView$Companion;",
        "",
        "<init>",
        "()V",
        "systemPropertiesClass",
        "Ljava/lang/Class;",
        "getBooleanMethod",
        "Ljava/lang/reflect/Method;",
        "addChangeCallbackMethod",
        "composeViews",
        "Landroidx/collection/MutableObjectList;",
        "Landroidx/compose/ui/platform/AndroidComposeView;",
        "systemPropertiesChangedRunnable",
        "Ljava/lang/Runnable;",
        "dispatchOnScrollChangedMethod",
        "getIsShowingLayoutBounds",
        "",
        "addNotificationForSysPropsChange",
        "",
        "composeView",
        "removeNotificationForSysPropsChange",
        "dispatchOnScrollChanged",
        "viewTreeObserver",
        "Landroid/view/ViewTreeObserver;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 3242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeView$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$addNotificationForSysPropsChange(Landroidx/compose/ui/platform/AndroidComposeView$Companion;Landroidx/compose/ui/platform/AndroidComposeView;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/ui/platform/AndroidComposeView$Companion;
    .param p1, "composeView"    # Landroidx/compose/ui/platform/AndroidComposeView;

    .line 3242
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeView$Companion;->addNotificationForSysPropsChange(Landroidx/compose/ui/platform/AndroidComposeView;)V

    return-void
.end method

.method public static final synthetic access$getIsShowingLayoutBounds(Landroidx/compose/ui/platform/AndroidComposeView$Companion;)Z
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/platform/AndroidComposeView$Companion;

    .line 3242
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeView$Companion;->getIsShowingLayoutBounds()Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$removeNotificationForSysPropsChange(Landroidx/compose/ui/platform/AndroidComposeView$Companion;Landroidx/compose/ui/platform/AndroidComposeView;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/ui/platform/AndroidComposeView$Companion;
    .param p1, "composeView"    # Landroidx/compose/ui/platform/AndroidComposeView;

    .line 3242
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeView$Companion;->removeNotificationForSysPropsChange(Landroidx/compose/ui/platform/AndroidComposeView;)V

    return-void
.end method

.method private final addNotificationForSysPropsChange(Landroidx/compose/ui/platform/AndroidComposeView;)V
    .locals 8
    .param p1, "composeView"    # Landroidx/compose/ui/platform/AndroidComposeView;

    .line 3271
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-le v0, v1, :cond_5

    .line 3274
    invoke-static {}, Landroidx/compose/ui/platform/AndroidComposeView;->access$getSystemPropertiesChangedRunnable$cp()Ljava/lang/Runnable;

    move-result-object v0

    if-nez v0, :cond_4

    .line 3275
    new-instance v0, Landroidx/compose/ui/platform/AndroidComposeView$Companion$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/compose/ui/platform/AndroidComposeView$Companion$$ExternalSyntheticLambda0;-><init>()V

    .line 3290
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->access$setSystemPropertiesChangedRunnable$cp(Ljava/lang/Runnable;)V

    .line 3291
    invoke-static {}, Landroid/os/StrictMode;->getVmPolicy()Landroid/os/StrictMode$VmPolicy;

    move-result-object v1

    .line 3292
    .local v1, "origPolicy":Landroid/os/StrictMode$VmPolicy;
    nop

    .line 3293
    :try_start_0
    invoke-static {}, Landroidx/compose/ui/platform/AndroidComposeView;->access$getSystemPropertiesClass$cp()Ljava/lang/Class;

    move-result-object v2

    if-nez v2, :cond_0

    .line 3294
    const-string v2, "android.os.SystemProperties"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/ui/platform/AndroidComposeView;->access$setSystemPropertiesClass$cp(Ljava/lang/Class;)V

    .line 3296
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/AndroidComposeView;->access$getAddChangeCallbackMethod$cp()Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 3297
    sget-object v2, Landroid/os/StrictMode$VmPolicy;->LAX:Landroid/os/StrictMode$VmPolicy;

    invoke-static {v2}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 3298
    nop

    .line 3299
    invoke-static {}, Landroidx/compose/ui/platform/AndroidComposeView;->access$getSystemPropertiesClass$cp()Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3300
    const-string v4, "addChangeCallback"

    .line 3301
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Runnable;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 3299
    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v3

    .line 3298
    :goto_0
    invoke-static {v2}, Landroidx/compose/ui/platform/AndroidComposeView;->access$setAddChangeCallbackMethod$cp(Ljava/lang/reflect/Method;)V

    .line 3304
    :cond_2
    invoke-static {}, Landroidx/compose/ui/platform/AndroidComposeView;->access$getAddChangeCallbackMethod$cp()Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_3

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 3305
    :catchall_0
    move-exception v2

    .line 3306
    :cond_3
    :goto_1
    invoke-static {v1}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 3307
    nop

    .line 3309
    .end local v0    # "runnable":Ljava/lang/Runnable;
    .end local v1    # "origPolicy":Landroid/os/StrictMode$VmPolicy;
    :cond_4
    invoke-static {}, Landroidx/compose/ui/platform/AndroidComposeView;->access$getComposeViews$cp()Landroidx/collection/MutableObjectList;

    move-result-object v0

    .local v0, "lock$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 3964
    .local v1, "$i$f$synchronized":I
    monitor-enter v0

    const/4 v2, 0x0

    .line 3309
    .local v2, "$i$a$-synchronized-AndroidComposeView$Companion$addNotificationForSysPropsChange$2":I
    :try_start_1
    invoke-static {}, Landroidx/compose/ui/platform/AndroidComposeView;->access$getComposeViews$cp()Landroidx/collection/MutableObjectList;

    move-result-object v3

    move-object v4, p1

    .local v3, "this_$iv":Landroidx/collection/MutableObjectList;
    .local v4, "element$iv":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 3965
    .local v5, "$i$f$plusAssign":I
    invoke-virtual {v3, v4}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)Z

    .line 3966
    nop

    .line 3309
    .end local v3    # "this_$iv":Landroidx/collection/MutableObjectList;
    .end local v4    # "element$iv":Ljava/lang/Object;
    .end local v5    # "$i$f$plusAssign":I
    nop

    .end local v2    # "$i$a$-synchronized-AndroidComposeView$Companion$addNotificationForSysPropsChange$2":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3964
    monitor-exit v0

    goto :goto_2

    :catchall_1
    move-exception v2

    monitor-exit v0

    throw v2

    .line 3311
    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    :cond_5
    :goto_2
    return-void
.end method

.method static final addNotificationForSysPropsChange$lambda$0()V
    .locals 12

    .line 3276
    invoke-static {}, Landroidx/compose/ui/platform/AndroidComposeView;->access$getComposeViews$cp()Landroidx/collection/MutableObjectList;

    move-result-object v0

    .local v0, "lock$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 3971
    .local v1, "$i$f$synchronized":I
    monitor-enter v0

    const/4 v2, 0x0

    .line 3277
    .local v2, "$i$a$-synchronized-AndroidComposeView$Companion$addNotificationForSysPropsChange$runnable$1$1":I
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1e

    if-ge v3, v4, :cond_2

    .line 3278
    invoke-static {}, Landroidx/compose/ui/platform/AndroidComposeView;->access$getComposeViews$cp()Landroidx/collection/MutableObjectList;

    move-result-object v3

    check-cast v3, Landroidx/collection/ObjectList;

    .local v3, "this_$iv":Landroidx/collection/ObjectList;
    const/4 v4, 0x0

    .line 3972
    .local v4, "$i$f$forEach":I
    nop

    .line 3973
    iget-object v5, v3, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    .line 3974
    .local v5, "content$iv":[Ljava/lang/Object;
    const/4 v6, 0x0

    .local v6, "i$iv":I
    iget v7, v3, Landroidx/collection/ObjectList;->_size:I

    :goto_0
    if-ge v6, v7, :cond_1

    .line 3975
    aget-object v8, v5, v6

    check-cast v8, Landroidx/compose/ui/platform/AndroidComposeView;

    .local v8, "it":Landroidx/compose/ui/platform/AndroidComposeView;
    const/4 v9, 0x0

    .line 3279
    .local v9, "$i$a$-forEach-AndroidComposeView$Companion$addNotificationForSysPropsChange$runnable$1$1$1":I
    invoke-virtual {v8}, Landroidx/compose/ui/platform/AndroidComposeView;->getShowLayoutBounds()Z

    move-result v10

    .line 3280
    .local v10, "oldValue":Z
    sget-object v11, Landroidx/compose/ui/platform/AndroidComposeView;->Companion:Landroidx/compose/ui/platform/AndroidComposeView$Companion;

    invoke-direct {v11}, Landroidx/compose/ui/platform/AndroidComposeView$Companion;->getIsShowingLayoutBounds()Z

    move-result v11

    invoke-virtual {v8, v11}, Landroidx/compose/ui/platform/AndroidComposeView;->setShowLayoutBounds(Z)V

    .line 3281
    invoke-virtual {v8}, Landroidx/compose/ui/platform/AndroidComposeView;->getShowLayoutBounds()Z

    move-result v11

    if-eq v10, v11, :cond_0

    .line 3282
    invoke-virtual {v8}, Landroidx/compose/ui/platform/AndroidComposeView;->invalidateDescendants()V

    .line 3284
    :cond_0
    nop

    .line 3975
    .end local v8    # "it":Landroidx/compose/ui/platform/AndroidComposeView;
    .end local v9    # "$i$a$-forEach-AndroidComposeView$Companion$addNotificationForSysPropsChange$runnable$1$1$1":I
    .end local v10    # "oldValue":Z
    nop

    .line 3974
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 3977
    .end local v6    # "i$iv":I
    :cond_1
    nop

    .end local v3    # "this_$iv":Landroidx/collection/ObjectList;
    .end local v4    # "$i$f$forEach":I
    .end local v5    # "content$iv":[Ljava/lang/Object;
    goto :goto_2

    .line 3286
    :cond_2
    invoke-static {}, Landroidx/compose/ui/platform/AndroidComposeView;->access$getComposeViews$cp()Landroidx/collection/MutableObjectList;

    move-result-object v3

    check-cast v3, Landroidx/collection/ObjectList;

    .restart local v3    # "this_$iv":Landroidx/collection/ObjectList;
    const/4 v4, 0x0

    .line 3978
    .restart local v4    # "$i$f$forEach":I
    nop

    .line 3979
    iget-object v5, v3, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    .line 3980
    .restart local v5    # "content$iv":[Ljava/lang/Object;
    const/4 v6, 0x0

    .restart local v6    # "i$iv":I
    iget v7, v3, Landroidx/collection/ObjectList;->_size:I

    :goto_1
    if-ge v6, v7, :cond_3

    .line 3981
    aget-object v8, v5, v6

    check-cast v8, Landroidx/compose/ui/platform/AndroidComposeView;

    .restart local v8    # "it":Landroidx/compose/ui/platform/AndroidComposeView;
    const/4 v9, 0x0

    .line 3286
    .local v9, "$i$a$-forEach-AndroidComposeView$Companion$addNotificationForSysPropsChange$runnable$1$1$2":I
    invoke-virtual {v8}, Landroidx/compose/ui/platform/AndroidComposeView;->invalidateDescendants()V

    .line 3981
    .end local v8    # "it":Landroidx/compose/ui/platform/AndroidComposeView;
    .end local v9    # "$i$a$-forEach-AndroidComposeView$Companion$addNotificationForSysPropsChange$runnable$1$1$2":I
    nop

    .line 3980
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 3983
    .end local v6    # "i$iv":I
    :cond_3
    nop

    .line 3288
    .end local v3    # "this_$iv":Landroidx/collection/ObjectList;
    .end local v4    # "$i$f$forEach":I
    .end local v5    # "content$iv":[Ljava/lang/Object;
    :goto_2
    nop

    .end local v2    # "$i$a$-synchronized-AndroidComposeView$Companion$addNotificationForSysPropsChange$runnable$1$1":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3971
    monitor-exit v0

    .line 3289
    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    return-void

    .line 3971
    .restart local v0    # "lock$iv":Ljava/lang/Object;
    .restart local v1    # "$i$f$synchronized":I
    :catchall_0
    move-exception v2

    monitor-exit v0

    throw v2
.end method

.method private final getIsShowingLayoutBounds()Z
    .locals 7

    .line 3252
    nop

    .line 3253
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroidx/compose/ui/platform/AndroidComposeView;->access$getSystemPropertiesClass$cp()Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3254
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/ui/platform/AndroidComposeView;->access$setSystemPropertiesClass$cp(Ljava/lang/Class;)V

    .line 3256
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/AndroidComposeView;->access$getGetBooleanMethod$cp()Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_2

    .line 3257
    nop

    .line 3258
    invoke-static {}, Landroidx/compose/ui/platform/AndroidComposeView;->access$getSystemPropertiesClass$cp()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3259
    const-string v4, "getBoolean"

    .line 3260
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v0

    .line 3261
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    .line 3260
    nop

    .line 3258
    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v3

    .line 3257
    :goto_0
    invoke-static {v1}, Landroidx/compose/ui/platform/AndroidComposeView;->access$setGetBooleanMethod$cp(Ljava/lang/reflect/Method;)V

    .line 3264
    :cond_2
    invoke-static {}, Landroidx/compose/ui/platform/AndroidComposeView;->access$getGetBooleanMethod$cp()Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v4, "debug.layout"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v1, v3

    :goto_1
    instance-of v4, v1, Ljava/lang/Boolean;

    if-eqz v4, :cond_4

    move-object v3, v1

    check-cast v3, Ljava/lang/Boolean;

    :cond_4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 3265
    :catch_0
    move-exception v1

    .line 3266
    .local v1, "<unused var>":Ljava/lang/Exception;
    nop

    .line 3267
    .end local v1    # "<unused var>":Ljava/lang/Exception;
    :goto_2
    return v0
.end method

.method private final removeNotificationForSysPropsChange(Landroidx/compose/ui/platform/AndroidComposeView;)V
    .locals 6
    .param p1, "composeView"    # Landroidx/compose/ui/platform/AndroidComposeView;

    .line 3314
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-le v0, v1, :cond_0

    .line 3315
    invoke-static {}, Landroidx/compose/ui/platform/AndroidComposeView;->access$getComposeViews$cp()Landroidx/collection/MutableObjectList;

    move-result-object v0

    .local v0, "lock$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 3967
    .local v1, "$i$f$synchronized":I
    monitor-enter v0

    const/4 v2, 0x0

    .line 3315
    .local v2, "$i$a$-synchronized-AndroidComposeView$Companion$removeNotificationForSysPropsChange$1":I
    :try_start_0
    invoke-static {}, Landroidx/compose/ui/platform/AndroidComposeView;->access$getComposeViews$cp()Landroidx/collection/MutableObjectList;

    move-result-object v3

    move-object v4, p1

    .local v3, "this_$iv":Landroidx/collection/MutableObjectList;
    .local v4, "element$iv":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 3968
    .local v5, "$i$f$minusAssign":I
    invoke-virtual {v3, v4}, Landroidx/collection/MutableObjectList;->remove(Ljava/lang/Object;)Z

    .line 3969
    nop

    .line 3315
    .end local v3    # "this_$iv":Landroidx/collection/MutableObjectList;
    .end local v4    # "element$iv":Ljava/lang/Object;
    .end local v5    # "$i$f$minusAssign":I
    nop

    .end local v2    # "$i$a$-synchronized-AndroidComposeView$Companion$removeNotificationForSysPropsChange$1":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3967
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v0

    throw v2

    .line 3317
    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public final dispatchOnScrollChanged(Landroid/view/ViewTreeObserver;)V
    .locals 5
    .param p1, "viewTreeObserver"    # Landroid/view/ViewTreeObserver;

    .line 3322
    nop

    .line 3323
    :try_start_0
    invoke-static {}, Landroidx/compose/ui/platform/AndroidComposeView;->access$getDispatchOnScrollChangedMethod$cp()Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3324
    nop

    .line 3325
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 3326
    const-string v2, "dispatchOnScrollChanged"

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 3327
    move-object v2, v0

    .line 3970
    .local v2, "it":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    .line 3327
    .local v3, "$i$a$-also-AndroidComposeView$Companion$dispatchOnScrollChanged$1":I
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 3324
    .end local v2    # "it":Ljava/lang/reflect/Method;
    .end local v3    # "$i$a$-also-AndroidComposeView$Companion$dispatchOnScrollChanged$1":I
    invoke-static {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->access$setDispatchOnScrollChangedMethod$cp(Ljava/lang/reflect/Method;)V

    .line 3329
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/AndroidComposeView;->access$getDispatchOnScrollChangedMethod$cp()Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3330
    :catch_0
    move-exception v0

    .line 3331
    :cond_1
    :goto_0
    return-void
.end method
