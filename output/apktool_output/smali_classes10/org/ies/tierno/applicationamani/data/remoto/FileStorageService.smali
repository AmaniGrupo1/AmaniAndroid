.class public final Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService;
.super Ljava/lang/Object;
.source "FileStorageService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$UploadResult;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFileStorageService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileStorageService.kt\norg/ies/tierno/applicationamani/data/remoto/FileStorageService\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,144:1\n1#2:145\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u0017B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001e\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0086@\u00a2\u0006\u0002\u0010\u0010J\u001e\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u000e\u001a\u00020\u000fH\u0086@\u00a2\u0006\u0002\u0010\u0014J\u0010\u0010\u0015\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\rH\u0002J\u000e\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u000c\u001a\u00020\rR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService;",
        "",
        "firebaseInstance",
        "Lorg/ies/tierno/applicationamani/data/remoto/FirebaseInstance;",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Lorg/ies/tierno/applicationamani/data/remoto/FirebaseInstance;Landroid/content/Context;)V",
        "storageRef",
        "Lcom/google/firebase/storage/StorageReference;",
        "uploadFile",
        "Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$UploadResult;",
        "uri",
        "Landroid/net/Uri;",
        "conversationId",
        "",
        "(Landroid/net/Uri;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "uploadVoiceNote",
        "audioFile",
        "Ljava/io/File;",
        "(Ljava/io/File;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "compressImage",
        "getFileNameFromUri",
        "UploadResult",
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


# instance fields
.field private final context:Landroid/content/Context;

.field private final firebaseInstance:Lorg/ies/tierno/applicationamani/data/remoto/FirebaseInstance;

.field private final storageRef:Lcom/google/firebase/storage/StorageReference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService;->$stable:I

    return-void
.end method

.method public constructor <init>(Lorg/ies/tierno/applicationamani/data/remoto/FirebaseInstance;Landroid/content/Context;)V
    .locals 2
    .param p1, "firebaseInstance"    # Lorg/ies/tierno/applicationamani/data/remoto/FirebaseInstance;
    .param p2, "context"    # Landroid/content/Context;

    const-string v0, "firebaseInstance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService;->firebaseInstance:Lorg/ies/tierno/applicationamani/data/remoto/FirebaseInstance;

    .line 22
    iput-object p2, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService;->context:Landroid/content/Context;

    .line 24
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService;->firebaseInstance:Lorg/ies/tierno/applicationamani/data/remoto/FirebaseInstance;

    invoke-virtual {v0}, Lorg/ies/tierno/applicationamani/data/remoto/FirebaseInstance;->getStorage()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/storage/FirebaseStorage;->getReference()Lcom/google/firebase/storage/StorageReference;

    move-result-object v0

    const-string v1, "getReference(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService;->storageRef:Lcom/google/firebase/storage/StorageReference;

    .line 20
    return-void
.end method

.method public static final synthetic access$compressImage(Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .param p0, "$this"    # Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 20
    invoke-direct {p0, p1}, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService;->compressImage(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getContext$p(Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService;)Landroid/content/Context;
    .locals 1
    .param p0, "$this"    # Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService;

    .line 20
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static final synthetic access$getStorageRef$p(Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService;)Lcom/google/firebase/storage/StorageReference;
    .locals 1
    .param p0, "$this"    # Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService;

    .line 20
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService;->storageRef:Lcom/google/firebase/storage/StorageReference;

    return-object v0
.end method

.method private final compressImage(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 13
    .param p1, "uri"    # Landroid/net/Uri;

    .line 109
    nop

    .line 110
    :try_start_0
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 111
    .local v0, "inputStream":Ljava/io/InputStream;
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 112
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 114
    :cond_0
    const/16 v2, 0x400

    .line 115
    .local v2, "maxSize":I
    int-to-float v3, v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 116
    .local v3, "ratio":F
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v4, v4

    .line 117
    .local v4, "width":I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    .line 119
    .local v5, "height":I
    const/4 v6, 0x1

    invoke-static {v1, v4, v5, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    const-string v7, "createScaledBitmap(...)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    .local v6, "scaledBitmap":Landroid/graphics/Bitmap;
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 122
    .local v7, "outputStream":Ljava/io/ByteArrayOutputStream;
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move-object v9, v7

    check-cast v9, Ljava/io/OutputStream;

    const/16 v10, 0x50

    invoke-virtual {v6, v8, v10, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 124
    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v9

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "compressed_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".jpg"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 125
    .local v8, "tempFile":Ljava/io/File;
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast v9, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object v10, v9

    check-cast v10, Ljava/io/FileOutputStream;

    .line 145
    .local v10, "it\\1":Ljava/io/FileOutputStream;
    const/4 v11, 0x0

    .line 125
    .local v11, "$i$a$-use-FileStorageService$compressImage$1\\1\\125\\0":I
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/io/FileOutputStream;->write([B)V

    .end local v10    # "it\\1":Ljava/io/FileOutputStream;
    .end local v11    # "$i$a$-use-FileStorageService$compressImage$1\\1\\125\\0":I
    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v10, 0x0

    :try_start_2
    invoke-static {v9, v10}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 127
    invoke-static {v8}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    const-string v10, "fromFile(...)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v9

    .line 125
    :catchall_0
    move-exception v10

    .end local v0    # "inputStream":Ljava/io/InputStream;
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "maxSize":I
    .end local v3    # "ratio":F
    .end local v4    # "width":I
    .end local v5    # "height":I
    .end local v6    # "scaledBitmap":Landroid/graphics/Bitmap;
    .end local v7    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "tempFile":Ljava/io/File;
    .end local p1    # "uri":Landroid/net/Uri;
    :try_start_3
    throw v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .restart local v0    # "inputStream":Ljava/io/InputStream;
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "maxSize":I
    .restart local v3    # "ratio":F
    .restart local v4    # "width":I
    .restart local v5    # "height":I
    .restart local v6    # "scaledBitmap":Landroid/graphics/Bitmap;
    .restart local v7    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "tempFile":Ljava/io/File;
    .restart local p1    # "uri":Landroid/net/Uri;
    :catchall_1
    move-exception v11

    :try_start_4
    invoke-static {v9, v10}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local p1    # "uri":Landroid/net/Uri;
    throw v11
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 128
    .end local v0    # "inputStream":Ljava/io/InputStream;
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "maxSize":I
    .end local v3    # "ratio":F
    .end local v4    # "width":I
    .end local v5    # "height":I
    .end local v6    # "scaledBitmap":Landroid/graphics/Bitmap;
    .end local v7    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "tempFile":Ljava/io/File;
    .restart local p1    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/Exception;
    return-object p1
.end method


# virtual methods
.method public final getFileNameFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    const/4 v0, 0x0

    .local v0, "fileName":Ljava/lang/Object;
    const-string v1, "file"

    .line 135
    .end local v0    # "fileName":Ljava/lang/Object;
    .local v1, "fileName":Ljava/lang/Object;
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    .end local p1    # "uri":Landroid/net/Uri;
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Ljava/io/Closeable;

    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/database/Cursor;

    .local v0, "cursor\\1":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 136
    .local v2, "$i$a$-use-FileStorageService$getFileNameFromUri$1\\1\\135\\0":I
    const-string v4, "_display_name"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 137
    .local v4, "nameIndex\\1":I
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_0

    if-ltz v4, :cond_0

    .line 138
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "getString(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v5

    .line 140
    :cond_0
    nop

    .end local v0    # "cursor\\1":Landroid/database/Cursor;
    .end local v2    # "$i$a$-use-FileStorageService$getFileNameFromUri$1\\1\\135\\0":I
    .end local v4    # "nameIndex\\1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    .end local v1    # "fileName":Ljava/lang/Object;
    .end local v3    # "uri":Landroid/net/Uri;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .local v2, "fileName":Ljava/lang/Object;
    .restart local v3    # "uri":Landroid/net/Uri;
    :catchall_1
    move-exception v0

    invoke-static {p1, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 141
    .end local v2    # "fileName":Ljava/lang/Object;
    .restart local v1    # "fileName":Ljava/lang/Object;
    :cond_1
    :goto_0
    return-object v1
.end method

.method public final uploadFile(Landroid/net/Uri;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "conversationId"    # Ljava/lang/String;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$UploadResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 31
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadFile$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadFile$2;-><init>(Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService;Landroid/net/Uri;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 70
    return-object v0
.end method

.method public final uploadVoiceNote(Ljava/io/File;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "audioFile"    # Ljava/io/File;
    .param p2, "conversationId"    # Ljava/lang/String;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$UploadResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 72
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadVoiceNote$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p0, v2}, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadVoiceNote$2;-><init>(Ljava/io/File;Ljava/lang/String;Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 106
    return-object v0
.end method
