.class public final Lorg/ies/tierno/applicationamani/MyLibraryApplication;
.super Landroid/app/Application;
.source "MyLibraryApplication.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0005H\u0002\u00a8\u0006\u0007"
    }
    d2 = {
        "Lorg/ies/tierno/applicationamani/MyLibraryApplication;",
        "Landroid/app/Application;",
        "<init>",
        "()V",
        "onCreate",
        "",
        "crearCanalNotificaciones",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lorg/ies/tierno/applicationamani/MyLibraryApplication;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method private final crearCanalNotificaciones()V
    .locals 4

    .line 62
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 63
    new-instance v0, Landroid/app/NotificationChannel;

    .line 64
    nop

    .line 65
    const-string v1, "Recordatorio de citas"

    check-cast v1, Ljava/lang/CharSequence;

    .line 66
    nop

    .line 63
    const-string v2, "amani_citas"

    const/4 v3, 0x4

    invoke-direct {v0, v2, v1, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 67
    move-object v1, v0

    .local v1, "$this$crearCanalNotificaciones_u24lambda_u241\\1":Landroid/app/NotificationChannel;
    const/4 v2, 0x0

    .line 68
    .local v2, "$i$a$-apply-MyLibraryApplication$crearCanalNotificaciones$channel$1\\1\\67\\0":I
    const-string v3, "Notificaciones de recordatorio de tus citas en Amani"

    invoke-virtual {v1, v3}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 69
    nop

    .line 67
    .end local v1    # "$this$crearCanalNotificaciones_u24lambda_u241\\1":Landroid/app/NotificationChannel;
    .end local v2    # "$i$a$-apply-MyLibraryApplication$crearCanalNotificaciones$channel$1\\1\\67\\0":I
    nop

    .line 63
    nop

    .line 70
    .local v0, "channel":Landroid/app/NotificationChannel;
    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {p0, v1}, Lorg/ies/tierno/applicationamani/MyLibraryApplication;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 71
    .local v1, "manager":Landroid/app/NotificationManager;
    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 73
    .end local v0    # "channel":Landroid/app/NotificationChannel;
    .end local v1    # "manager":Landroid/app/NotificationManager;
    :cond_0
    return-void
.end method

.method static final onCreate$lambda$0(Lorg/ies/tierno/applicationamani/MyLibraryApplication;Lorg/koin/core/KoinApplication;)Lkotlin/Unit;
    .locals 3
    .param p0, "this$0"    # Lorg/ies/tierno/applicationamani/MyLibraryApplication;
    .param p1, "$this$startKoin"    # Lorg/koin/core/KoinApplication;

    const-string v0, "$this$startKoin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {p1, v0}, Lorg/koin/android/ext/koin/KoinExtKt;->androidContext(Lorg/koin/core/KoinApplication;Landroid/content/Context;)Lorg/koin/core/KoinApplication;

    .line 47
    nop

    .line 48
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/koin/core/module/Module;

    const/4 v1, 0x0

    invoke-static {}, Lorg/ies/tierno/applicationamani/di/AppModuleKt;->getAppModule()Lorg/koin/core/module/Module;

    move-result-object v2

    aput-object v2, v0, v1

    .line 49
    invoke-static {}, Lorg/ies/tierno/applicationamani/di/RetrofitModuleKt;->getRetrofitModule()Lorg/koin/core/module/Module;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 48
    nop

    .line 47
    invoke-virtual {p1, v0}, Lorg/koin/core/KoinApplication;->modules([Lorg/koin/core/module/Module;)Lorg/koin/core/KoinApplication;

    .line 51
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .locals 3

    .line 38
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 40
    sget-boolean v0, Lorg/ies/tierno/applicationamani/BuildConfig;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v1, Ltimber/log/Timber$DebugTree;

    invoke-direct {v1}, Ltimber/log/Timber$DebugTree;-><init>()V

    check-cast v1, Ltimber/log/Timber$Tree;

    invoke-virtual {v0, v1}, Ltimber/log/Timber$Forest;->plant(Ltimber/log/Timber$Tree;)V

    .line 41
    :cond_0
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v1, Lorg/ies/tierno/applicationamani/utils/FileLoggingTree;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Lorg/ies/tierno/applicationamani/utils/FileLoggingTree;-><init>(Landroid/content/Context;)V

    check-cast v1, Ltimber/log/Timber$Tree;

    invoke-virtual {v0, v1}, Ltimber/log/Timber$Forest;->plant(Ltimber/log/Timber$Tree;)V

    .line 43
    invoke-direct {p0}, Lorg/ies/tierno/applicationamani/MyLibraryApplication;->crearCanalNotificaciones()V

    .line 45
    sget-object v0, Lorg/koin/core/context/GlobalContext;->INSTANCE:Lorg/koin/core/context/GlobalContext;

    new-instance v1, Lorg/ies/tierno/applicationamani/MyLibraryApplication$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/ies/tierno/applicationamani/MyLibraryApplication$$ExternalSyntheticLambda0;-><init>(Lorg/ies/tierno/applicationamani/MyLibraryApplication;)V

    invoke-virtual {v0, v1}, Lorg/koin/core/context/GlobalContext;->startKoin(Lkotlin/jvm/functions/Function1;)Lorg/koin/core/KoinApplication;

    .line 52
    return-void
.end method
