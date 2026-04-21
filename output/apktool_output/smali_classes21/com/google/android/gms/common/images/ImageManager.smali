.class public final Lcom/google/android/gms/common/images/ImageManager;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.9.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;,
        Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;
    }
.end annotation


# static fields
.field private static final zaa:Ljava/lang/Object;

.field private static final zab:Ljava/util/HashSet;

.field private static zac:Lcom/google/android/gms/common/images/ImageManager;


# instance fields
.field private final zad:Landroid/content/Context;

.field private final zae:Landroid/os/Handler;

.field private final zaf:Ljava/util/concurrent/ExecutorService;

.field private final zag:Lcom/google/android/gms/internal/base/zaj;

.field private final zah:Ljava/util/Map;

.field private final zai:Ljava/util/Map;

.field private final zaj:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/images/ImageManager;->zaa:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/images/ImageManager;->zab:Ljava/util/HashSet;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/images/ImageManager;->zad:Landroid/content/Context;

    new-instance p1, Lcom/google/android/gms/internal/base/zao;

    .line 2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/base/zao;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/gms/common/images/ImageManager;->zae:Landroid/os/Handler;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/base/zan;->zaa()Lcom/google/android/gms/internal/base/zal;

    move-result-object p1

    .line 4
    const/4 p2, 0x4

    const/4 v0, 0x2

    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/base/zal;->zaa(II)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/images/ImageManager;->zaf:Ljava/util/concurrent/ExecutorService;

    .line 5
    new-instance p1, Lcom/google/android/gms/internal/base/zaj;

    invoke-direct {p1}, Lcom/google/android/gms/internal/base/zaj;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/images/ImageManager;->zag:Lcom/google/android/gms/internal/base/zaj;

    new-instance p1, Ljava/util/HashMap;

    .line 6
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/images/ImageManager;->zah:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    .line 7
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/images/ImageManager;->zai:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    .line 8
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/images/ImageManager;->zaj:Ljava/util/Map;

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/google/android/gms/common/images/ImageManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 1
    sget-object v0, Lcom/google/android/gms/common/images/ImageManager;->zac:Lcom/google/android/gms/common/images/ImageManager;

    .end local p0    # "context":Landroid/content/Context;
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/common/images/ImageManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/common/images/ImageManager;-><init>(Landroid/content/Context;Z)V

    sput-object v0, Lcom/google/android/gms/common/images/ImageManager;->zac:Lcom/google/android/gms/common/images/ImageManager;

    :cond_0
    sget-object p0, Lcom/google/android/gms/common/images/ImageManager;->zac:Lcom/google/android/gms/common/images/ImageManager;

    return-object p0
.end method

.method static synthetic zab()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/images/ImageManager;->zaa:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic zac()Ljava/util/HashSet;
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/images/ImageManager;->zab:Ljava/util/HashSet;

    return-object v0
.end method


# virtual methods
.method public loadImage(Landroid/widget/ImageView;I)V
    .locals 1
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "resId"    # I

    .line 1
    nop

    .end local p0    # "this":Lcom/google/android/gms/common/images/ImageManager;
    .end local p1    # "imageView":Landroid/widget/ImageView;
    .end local p2    # "resId":I
    new-instance v0, Lcom/google/android/gms/common/images/zae;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/common/images/zae;-><init>(Landroid/widget/ImageView;I)V

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/images/ImageManager;->zaa(Lcom/google/android/gms/common/images/zag;)V

    return-void
.end method

.method public loadImage(Landroid/widget/ImageView;Landroid/net/Uri;)V
    .locals 1
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 3
    nop

    .end local p0    # "this":Lcom/google/android/gms/common/images/ImageManager;
    .end local p1    # "imageView":Landroid/widget/ImageView;
    .end local p2    # "uri":Landroid/net/Uri;
    new-instance v0, Lcom/google/android/gms/common/images/zae;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/common/images/zae;-><init>(Landroid/widget/ImageView;Landroid/net/Uri;)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/images/ImageManager;->zaa(Lcom/google/android/gms/common/images/zag;)V

    return-void
.end method

.method public loadImage(Landroid/widget/ImageView;Landroid/net/Uri;I)V
    .locals 1
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "defaultResId"    # I

    .line 5
    nop

    .end local p0    # "this":Lcom/google/android/gms/common/images/ImageManager;
    .end local p1    # "imageView":Landroid/widget/ImageView;
    .end local p2    # "uri":Landroid/net/Uri;
    .end local p3    # "defaultResId":I
    new-instance v0, Lcom/google/android/gms/common/images/zae;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/common/images/zae;-><init>(Landroid/widget/ImageView;Landroid/net/Uri;)V

    iput p3, v0, Lcom/google/android/gms/common/images/zag;->zab:I

    .line 6
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/images/ImageManager;->zaa(Lcom/google/android/gms/common/images/zag;)V

    return-void
.end method

.method public loadImage(Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;Landroid/net/Uri;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 7
    nop

    .end local p0    # "this":Lcom/google/android/gms/common/images/ImageManager;
    .end local p1    # "listener":Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;
    .end local p2    # "uri":Landroid/net/Uri;
    new-instance v0, Lcom/google/android/gms/common/images/zaf;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/common/images/zaf;-><init>(Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;Landroid/net/Uri;)V

    .line 8
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/images/ImageManager;->zaa(Lcom/google/android/gms/common/images/zag;)V

    return-void
.end method

.method public loadImage(Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;Landroid/net/Uri;I)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "defaultResId"    # I

    .line 9
    nop

    .end local p0    # "this":Lcom/google/android/gms/common/images/ImageManager;
    .end local p1    # "listener":Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;
    .end local p2    # "uri":Landroid/net/Uri;
    .end local p3    # "defaultResId":I
    new-instance v0, Lcom/google/android/gms/common/images/zaf;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/common/images/zaf;-><init>(Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;Landroid/net/Uri;)V

    iput p3, v0, Lcom/google/android/gms/common/images/zag;->zab:I

    .line 10
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/images/ImageManager;->zaa(Lcom/google/android/gms/common/images/zag;)V

    return-void
.end method

.method public final zaa(Lcom/google/android/gms/common/images/zag;)V
    .locals 1

    .line 1
    const-string v0, "ImageManager.loadImage() must be called in the main thread"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Asserts;->checkMainThread(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/common/images/zab;

    .line 2
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/common/images/zab;-><init>(Lcom/google/android/gms/common/images/ImageManager;Lcom/google/android/gms/common/images/zag;)V

    .line 3
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method final synthetic zad()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->zad:Landroid/content/Context;

    return-object v0
.end method

.method final synthetic zae()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->zae:Landroid/os/Handler;

    return-object v0
.end method

.method final synthetic zaf()Ljava/util/concurrent/ExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->zaf:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method final synthetic zag()Lcom/google/android/gms/internal/base/zaj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->zag:Lcom/google/android/gms/internal/base/zaj;

    return-object v0
.end method

.method final synthetic zah()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->zah:Ljava/util/Map;

    return-object v0
.end method

.method final synthetic zai()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->zai:Ljava/util/Map;

    return-object v0
.end method

.method final synthetic zaj()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->zaj:Ljava/util/Map;

    return-object v0
.end method
