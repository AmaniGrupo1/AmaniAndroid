.class public final Lcom/google/android/gms/internal/base/zak;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.9.0"


# static fields
.field public static final zaa:I

.field private static volatile zab:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gms/internal/base/zak;->zab:Z

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v1, v2, :cond_0

    const/high16 v0, 0x2000000

    :cond_0
    sput v0, Lcom/google/android/gms/internal/base/zak;->zaa:I

    return-void
.end method

.method public static zaa(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method
