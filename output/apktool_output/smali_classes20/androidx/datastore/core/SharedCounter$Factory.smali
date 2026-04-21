.class public final Landroidx/datastore/core/SharedCounter$Factory;
.super Ljava/lang/Object;
.source "SharedCounter.android.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/core/SharedCounter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0002J\u001b\u0010\n\u001a\u00020\u00072\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cH\u0000\u00a2\u0006\u0002\u0008\u000eJ\u0008\u0010\u000f\u001a\u00020\u0010H\u0002R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Landroidx/datastore/core/SharedCounter$Factory;",
        "",
        "<init>",
        "()V",
        "nativeSharedCounter",
        "Landroidx/datastore/core/NativeSharedCounter;",
        "createCounterFromFd",
        "Landroidx/datastore/core/SharedCounter;",
        "pfd",
        "Landroid/os/ParcelFileDescriptor;",
        "create",
        "produceFile",
        "Lkotlin/Function0;",
        "Ljava/io/File;",
        "create$datastore_core",
        "isDalvik",
        "",
        "datastore-core"
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
.field static final synthetic $$INSTANCE:Landroidx/datastore/core/SharedCounter$Factory;

.field private static final nativeSharedCounter:Landroidx/datastore/core/NativeSharedCounter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/datastore/core/SharedCounter$Factory;

    invoke-direct {v0}, Landroidx/datastore/core/SharedCounter$Factory;-><init>()V

    sput-object v0, Landroidx/datastore/core/SharedCounter$Factory;->$$INSTANCE:Landroidx/datastore/core/SharedCounter$Factory;

    .line 75
    nop

    .line 76
    :try_start_0
    const-string v0, "datastore_shared_counter"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 77
    new-instance v0, Landroidx/datastore/core/NativeSharedCounter;

    invoke-direct {v0}, Landroidx/datastore/core/NativeSharedCounter;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 78
    :catchall_0
    move-exception v0

    .line 83
    .local v0, "th":Ljava/lang/Throwable;
    sget-object v1, Landroidx/datastore/core/SharedCounter$Factory;->$$INSTANCE:Landroidx/datastore/core/SharedCounter$Factory;

    invoke-direct {v1}, Landroidx/datastore/core/SharedCounter$Factory;->isDalvik()Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    const/4 v1, 0x0

    move-object v0, v1

    .line 75
    .end local v0    # "th":Ljava/lang/Throwable;
    :goto_0
    sput-object v0, Landroidx/datastore/core/SharedCounter$Factory;->nativeSharedCounter:Landroidx/datastore/core/NativeSharedCounter;

    return-void

    .line 85
    .restart local v0    # "th":Ljava/lang/Throwable;
    :cond_0
    throw v0
.end method

.method private constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final createCounterFromFd(Landroid/os/ParcelFileDescriptor;)Landroidx/datastore/core/SharedCounter;
    .locals 5
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;

    .line 93
    sget-object v0, Landroidx/datastore/core/SharedCounter$Factory;->nativeSharedCounter:Landroidx/datastore/core/NativeSharedCounter;

    if-nez v0, :cond_1

    .line 96
    invoke-direct {p0}, Landroidx/datastore/core/SharedCounter$Factory;->isDalvik()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Landroidx/datastore/core/SharedCounter$ShadowSharedCounter;

    invoke-direct {v0}, Landroidx/datastore/core/SharedCounter$ShadowSharedCounter;-><init>()V

    check-cast v0, Landroidx/datastore/core/SharedCounter;

    return-object v0

    .line 105
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 109
    const-string v1, "DataStore failed to load the native library to create SharedCounter."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_1
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v0

    .line 113
    .local v0, "nativeFd":I
    sget-object v1, Landroidx/datastore/core/SharedCounter$Factory;->nativeSharedCounter:Landroidx/datastore/core/NativeSharedCounter;

    invoke-virtual {v1, v0}, Landroidx/datastore/core/NativeSharedCounter;->nativeTruncateFile(I)I

    move-result v1

    if-nez v1, :cond_3

    .line 116
    sget-object v1, Landroidx/datastore/core/SharedCounter$Factory;->nativeSharedCounter:Landroidx/datastore/core/NativeSharedCounter;

    invoke-virtual {v1, v0}, Landroidx/datastore/core/NativeSharedCounter;->nativeCreateSharedCounter(I)J

    move-result-wide v1

    .line 117
    .local v1, "address":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_2

    .line 120
    new-instance v3, Landroidx/datastore/core/SharedCounter$RealSharedCounter;

    sget-object v4, Landroidx/datastore/core/SharedCounter$Factory;->nativeSharedCounter:Landroidx/datastore/core/NativeSharedCounter;

    invoke-direct {v3, v4, v1, v2}, Landroidx/datastore/core/SharedCounter$RealSharedCounter;-><init>(Landroidx/datastore/core/NativeSharedCounter;J)V

    check-cast v3, Landroidx/datastore/core/SharedCounter;

    return-object v3

    .line 118
    :cond_2
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Failed to mmap counter file"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 114
    .end local v1    # "address":J
    :cond_3
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Failed to truncate counter file"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private final isDalvik()Z
    .locals 3

    .line 140
    const-string/jumbo v0, "java.vm.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "dalvik"

    invoke-static {v2, v0, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final create$datastore_core(Lkotlin/jvm/functions/Function0;)Landroidx/datastore/core/SharedCounter;
    .locals 3
    .param p1, "produceFile"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ljava/io/File;",
            ">;)",
            "Landroidx/datastore/core/SharedCounter;"
        }
    .end annotation

    .line 134
    const-string/jumbo v0, "produceFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 125
    .local v0, "file":Ljava/io/File;
    const/4 v1, 0x0

    .line 126
    .local v1, "pfd":Landroid/os/ParcelFileDescriptor;
    nop

    .line 128
    nop

    .line 129
    nop

    .line 130
    nop

    .line 128
    const/high16 v2, 0x38000000

    :try_start_0
    invoke-static {v0, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 127
    move-object v1, v2

    .line 132
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Landroidx/datastore/core/SharedCounter$Factory;->createCounterFromFd(Landroid/os/ParcelFileDescriptor;)Landroidx/datastore/core/SharedCounter;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 132
    :cond_0
    return-object v2

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_1
    throw v2
.end method
