.class public final Landroidx/media3/common/BundleableByteArray;
.super Ljava/lang/Object;
.source "BundleableByteArray.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/BundleableByteArray$InProcessBinder;,
        Landroidx/media3/common/BundleableByteArray$SharedMemoryApi27;,
        Landroidx/media3/common/BundleableByteArray$SplitArrayRetriever;
    }
.end annotation


# static fields
.field private static final FIELD_IN_PROCESS_BINDER:Ljava/lang/String;

.field private static final FIELD_SHARED_MEMORY:Ljava/lang/String;

.field private static final FIELD_SPLIT_ARRAY_RETRIEVER:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "BundleableByteArray"


# instance fields
.field private final byteArray:[B

.field private final inProcessBinder:Landroidx/media3/common/BundleableByteArray$InProcessBinder;

.field sharedMemoryApi27:Landroidx/media3/common/BundleableByteArray$SharedMemoryApi27;

.field splitArrayRetriever:Landroidx/media3/common/BundleableByteArray$SplitArrayRetriever;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/BundleableByteArray;->FIELD_IN_PROCESS_BINDER:Ljava/lang/String;

    .line 67
    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/BundleableByteArray;->FIELD_SHARED_MEMORY:Ljava/lang/String;

    .line 68
    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/BundleableByteArray;->FIELD_SPLIT_ARRAY_RETRIEVER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "byteArray"    # [B

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Landroidx/media3/common/BundleableByteArray;->byteArray:[B

    .line 63
    new-instance v0, Landroidx/media3/common/BundleableByteArray$InProcessBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/common/BundleableByteArray$InProcessBinder;-><init>(Landroidx/media3/common/BundleableByteArray;Landroidx/media3/common/BundleableByteArray$1;)V

    iput-object v0, p0, Landroidx/media3/common/BundleableByteArray;->inProcessBinder:Landroidx/media3/common/BundleableByteArray$InProcessBinder;

    .line 64
    return-void
.end method

.method static synthetic access$1000(Landroidx/media3/common/BundleableByteArray;)[B
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/BundleableByteArray;

    .line 45
    iget-object v0, p0, Landroidx/media3/common/BundleableByteArray;->byteArray:[B

    return-object v0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .line 45
    sget-object v0, Landroidx/media3/common/BundleableByteArray;->FIELD_SHARED_MEMORY:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    .line 45
    sget-object v0, Landroidx/media3/common/BundleableByteArray;->FIELD_SPLIT_ARRAY_RETRIEVER:Ljava/lang/String;

    return-object v0
.end method

.method public static fromBundle(Landroid/os/Bundle;)[B
    .locals 4
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 98
    sget-object v0, Landroidx/media3/common/BundleableByteArray;->FIELD_IN_PROCESS_BINDER:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 99
    .local v0, "inProcessBinder":Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 100
    const/4 v1, 0x0

    return-object v1

    .line 102
    :cond_0
    instance-of v1, v0, Landroidx/media3/common/BundleableByteArray$InProcessBinder;

    .line 103
    .local v1, "isLocal":Z
    if-eqz v1, :cond_1

    .line 104
    move-object v2, v0

    check-cast v2, Landroidx/media3/common/BundleableByteArray$InProcessBinder;

    invoke-static {v2}, Landroidx/media3/common/BundleableByteArray$InProcessBinder;->access$500(Landroidx/media3/common/BundleableByteArray$InProcessBinder;)[B

    move-result-object v2

    return-object v2

    .line 106
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1b

    if-lt v2, v3, :cond_2

    .line 107
    invoke-static {p0}, Landroidx/media3/common/BundleableByteArray$SharedMemoryApi27;->access$600(Landroid/os/Bundle;)[B

    move-result-object v2

    .line 108
    .local v2, "byteArray":[B
    if-eqz v2, :cond_2

    .line 109
    return-object v2

    .line 112
    .end local v2    # "byteArray":[B
    :cond_2
    invoke-static {p0}, Landroidx/media3/common/BundleableByteArray$SplitArrayRetriever;->access$700(Landroid/os/Bundle;)[B

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public toBundle()Landroid/os/Bundle;
    .locals 4

    .line 72
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 73
    .local v0, "bundle":Landroid/os/Bundle;
    sget-object v1, Landroidx/media3/common/BundleableByteArray;->FIELD_IN_PROCESS_BINDER:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/common/BundleableByteArray;->inProcessBinder:Landroidx/media3/common/BundleableByteArray$InProcessBinder;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 74
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1b

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Landroidx/media3/common/BundleableByteArray;->byteArray:[B

    array-length v1, v1

    if-lez v1, :cond_1

    .line 75
    iget-object v1, p0, Landroidx/media3/common/BundleableByteArray;->sharedMemoryApi27:Landroidx/media3/common/BundleableByteArray$SharedMemoryApi27;

    if-nez v1, :cond_0

    .line 76
    iget-object v1, p0, Landroidx/media3/common/BundleableByteArray;->byteArray:[B

    invoke-static {v1}, Landroidx/media3/common/BundleableByteArray$SharedMemoryApi27;->access$100([B)Landroidx/media3/common/BundleableByteArray$SharedMemoryApi27;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/common/BundleableByteArray;->sharedMemoryApi27:Landroidx/media3/common/BundleableByteArray$SharedMemoryApi27;

    .line 78
    :cond_0
    iget-object v1, p0, Landroidx/media3/common/BundleableByteArray;->sharedMemoryApi27:Landroidx/media3/common/BundleableByteArray$SharedMemoryApi27;

    if-eqz v1, :cond_1

    .line 79
    iget-object v1, p0, Landroidx/media3/common/BundleableByteArray;->sharedMemoryApi27:Landroidx/media3/common/BundleableByteArray$SharedMemoryApi27;

    invoke-static {v1, v0}, Landroidx/media3/common/BundleableByteArray$SharedMemoryApi27;->access$200(Landroidx/media3/common/BundleableByteArray$SharedMemoryApi27;Landroid/os/Bundle;)V

    .line 80
    return-object v0

    .line 83
    :cond_1
    iget-object v1, p0, Landroidx/media3/common/BundleableByteArray;->splitArrayRetriever:Landroidx/media3/common/BundleableByteArray$SplitArrayRetriever;

    if-nez v1, :cond_2

    .line 84
    new-instance v1, Landroidx/media3/common/BundleableByteArray$SplitArrayRetriever;

    iget-object v2, p0, Landroidx/media3/common/BundleableByteArray;->byteArray:[B

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroidx/media3/common/BundleableByteArray$SplitArrayRetriever;-><init>([BLandroidx/media3/common/BundleableByteArray$1;)V

    iput-object v1, p0, Landroidx/media3/common/BundleableByteArray;->splitArrayRetriever:Landroidx/media3/common/BundleableByteArray$SplitArrayRetriever;

    .line 86
    :cond_2
    iget-object v1, p0, Landroidx/media3/common/BundleableByteArray;->splitArrayRetriever:Landroidx/media3/common/BundleableByteArray$SplitArrayRetriever;

    invoke-static {v1, v0}, Landroidx/media3/common/BundleableByteArray$SplitArrayRetriever;->access$400(Landroidx/media3/common/BundleableByteArray$SplitArrayRetriever;Landroid/os/Bundle;)V

    .line 87
    return-object v0
.end method
