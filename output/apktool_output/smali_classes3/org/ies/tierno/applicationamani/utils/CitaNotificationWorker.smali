.class public final Lorg/ies/tierno/applicationamani/utils/CitaNotificationWorker;
.super Landroidx/work/Worker;
.source "CitaNotificationWorker.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ies/tierno/applicationamani/utils/CitaNotificationWorker$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u0000 \n2\u00020\u0001:\u0001\nB\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0008\u0010\u0008\u001a\u00020\tH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "Lorg/ies/tierno/applicationamani/utils/CitaNotificationWorker;",
        "Landroidx/work/Worker;",
        "context",
        "Landroid/content/Context;",
        "params",
        "Landroidx/work/WorkerParameters;",
        "<init>",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V",
        "doWork",
        "Landroidx/work/ListenableWorker$Result;",
        "Companion",
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

.field public static final CANAL_CITAS_ID:Ljava/lang/String; = "amani_citas"

.field public static final Companion:Lorg/ies/tierno/applicationamani/utils/CitaNotificationWorker$Companion;

.field public static final KEY_MENSAJE:Ljava/lang/String; = "mensaje"

.field public static final KEY_TITULO:Ljava/lang/String; = "titulo"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/ies/tierno/applicationamani/utils/CitaNotificationWorker$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ies/tierno/applicationamani/utils/CitaNotificationWorker$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ies/tierno/applicationamani/utils/CitaNotificationWorker;->Companion:Lorg/ies/tierno/applicationamani/utils/CitaNotificationWorker$Companion;

    const/16 v0, 0x8

    sput v0, Lorg/ies/tierno/applicationamani/utils/CitaNotificationWorker;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # Landroidx/work/WorkerParameters;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 30
    return-void
.end method


# virtual methods
.method public doWork()Landroidx/work/ListenableWorker$Result;
    .locals 9

    .line 36
    invoke-virtual {p0}, Lorg/ies/tierno/applicationamani/utils/CitaNotificationWorker;->getInputData()Landroidx/work/Data;

    move-result-object v0

    const-string v1, "titulo"

    invoke-virtual {v0, v1}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Recordatorio de cita"

    .line 37
    .local v0, "titulo":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lorg/ies/tierno/applicationamani/utils/CitaNotificationWorker;->getInputData()Landroidx/work/Data;

    move-result-object v1

    const-string v2, "mensaje"

    invoke-virtual {v1, v2}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "Tienes una cita pr\u00f3ximamente"

    .line 40
    .local v1, "mensaje":Ljava/lang/String;
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lt v2, v3, :cond_3

    .line 41
    nop

    .line 42
    invoke-virtual {p0}, Lorg/ies/tierno/applicationamani/utils/CitaNotificationWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 43
    nop

    .line 41
    const-string v3, "android.permission.POST_NOTIFICATIONS"

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    move v2, v4

    goto :goto_0

    :cond_2
    move v2, v5

    .line 45
    .local v2, "granted":Z
    :goto_0
    if-nez v2, :cond_3

    .line 46
    sget-object v3, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const-string v4, "Permiso POST_NOTIFICATIONS no concedido, no se puede mostrar notificaci\u00f3n"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ltimber/log/Timber$Forest;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    move-result-object v3

    const-string v4, "failure(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v3

    .line 53
    .end local v2    # "granted":Z
    :cond_3
    invoke-virtual {p0}, Lorg/ies/tierno/applicationamani/utils/CitaNotificationWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 54
    nop

    .line 55
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/ies/tierno/applicationamani/utils/CitaNotificationWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lorg/ies/tierno/applicationamani/MainActivity;

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v6, v3

    .local v6, "$this$doWork_u24lambda_u240\\1":Landroid/content/Intent;
    const/4 v7, 0x0

    .line 56
    .local v7, "$i$a$-apply-CitaNotificationWorker$doWork$tapIntent$1\\1\\55\\0":I
    const v8, 0x10008000

    invoke-virtual {v6, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 57
    nop

    .end local v6    # "$this$doWork_u24lambda_u240\\1":Landroid/content/Intent;
    .end local v7    # "$i$a$-apply-CitaNotificationWorker$doWork$tapIntent$1\\1\\55\\0":I
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 55
    nop

    .line 58
    nop

    .line 52
    const/high16 v6, 0x4000000

    invoke-static {v2, v5, v3, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 61
    .local v2, "tapIntent":Landroid/app/PendingIntent;
    new-instance v3, Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Lorg/ies/tierno/applicationamani/utils/CitaNotificationWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "amani_citas"

    invoke-direct {v3, v5, v6}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 62
    sget v5, Lorg/ies/tierno/applicationamani/R$drawable;->ic_notificacion_amani:I

    invoke-virtual {v3, v5}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    .line 63
    move-object v5, v0

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    .line 64
    move-object v5, v1

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    .line 65
    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    .line 66
    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    .line 67
    invoke-virtual {v3, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    .line 68
    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    const-string v4, "build(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    nop

    .line 70
    .local v3, "notification":Landroid/app/Notification;
    invoke-virtual {p0}, Lorg/ies/tierno/applicationamani/utils/CitaNotificationWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v4

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    long-to-int v5, v5

    invoke-virtual {v4, v5, v3}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    .line 73
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object v4

    const-string v5, "success(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v4
.end method
