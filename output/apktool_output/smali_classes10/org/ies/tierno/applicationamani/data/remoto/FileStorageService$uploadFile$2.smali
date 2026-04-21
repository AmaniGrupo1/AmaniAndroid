.class final Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadFile$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "FileStorageService.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService;->uploadFile(Landroid/net/Uri;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$UploadResult;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$UploadResult;",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "org.ies.tierno.applicationamani.data.remoto.FileStorageService$uploadFile$2"
    f = "FileStorageService.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1
    }
    l = {
        0x3b,
        0x3e
    }
    m = "invokeSuspend"
    n = {
        "mimeType",
        "attachmentType",
        "extension",
        "fileName",
        "path",
        "fileRef",
        "uploadTask",
        "mimeType",
        "attachmentType",
        "extension",
        "fileName",
        "path",
        "fileRef",
        "uploadTask",
        "taskSnapshot"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "L$6",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "L$6",
        "L$7"
    }
.end annotation


# instance fields
.field final synthetic $conversationId:Ljava/lang/String;

.field final synthetic $uri:Landroid/net/Uri;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

.field L$7:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService;


# direct methods
.method constructor <init>(Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService;Landroid/net/Uri;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadFile$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadFile$2;->this$0:Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService;

    iput-object p2, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadFile$2;->$uri:Landroid/net/Uri;

    iput-object p3, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadFile$2;->$conversationId:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadFile$2;

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadFile$2;->this$0:Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService;

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadFile$2;->$uri:Landroid/net/Uri;

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadFile$2;->$conversationId:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p2}, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadFile$2;-><init>(Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService;Landroid/net/Uri;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadFile$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$UploadResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadFile$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadFile$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadFile$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13
    .param p1, "$result"    # Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 31
    iget v1, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadFile$2;->label:I

    const/4 v2, 0x2

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadFile$2;->L$7:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/storage/UploadTask$TaskSnapshot;

    .local v0, "taskSnapshot":Lcom/google/firebase/storage/UploadTask$TaskSnapshot;
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadFile$2;->L$6:Ljava/lang/Object;

    check-cast v1, Lcom/google/firebase/storage/UploadTask;

    .local v1, "uploadTask":Lcom/google/firebase/storage/UploadTask;
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadFile$2;->L$5:Ljava/lang/Object;

    check-cast v2, Lcom/google/firebase/storage/StorageReference;

    .local v2, "fileRef":Lcom/google/firebase/storage/StorageReference;
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadFile$2;->L$4:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .local v3, "path":Ljava/lang/String;
    iget-object v4, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadFile$2;->L$3:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .local v4, "fileName":Ljava/lang/String;
    iget-object v5, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadFile$2;->L$2:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .local v5, "extension":Ljava/lang/String;
    iget-object v6, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadFile$2;->L$1:Ljava/lang/Object;

    check-cast v6, Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;

    .local v6, "attachmentType":Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;
    iget-object v7, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadFile$2;->L$0:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    .local v7, "mimeType":Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, p1

    goto/16 :goto_3

    .end local v0    # "taskSnapshot":Lcom/google/firebase/storage/UploadTask$TaskSnapshot;
    .end local v1    # "uploadTask":Lcom/google/firebase/storage/UploadTask;
    .end local v2    # "fileRef":Lcom/google/firebase/storage/StorageReference;
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "fileName":Ljava/lang/String;
    .end local v5    # "extension":Ljava/lang/String;
    .end local v6    # "attachmentType":Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;
    .end local v7    # "mimeType":Ljava/lang/String;
    :pswitch_1
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadFile$2;->L$6:Ljava/lang/Object;

    check-cast v1, Lcom/google/firebase/storage/UploadTask;

    .restart local v1    # "uploadTask":Lcom/google/firebase/storage/UploadTask;
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadFile$2;->L$5:Ljava/lang/Object;

    check-cast v3, Lcom/google/firebase/storage/StorageReference;

    .local v3, "fileRef":Lcom/google/firebase/storage/StorageReference;
    iget-object v4, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadFile$2;->L$4:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .local v4, "path":Ljava/lang/String;
    iget-object v5, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadFile$2;->L$3:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .local v5, "fileName":Ljava/lang/String;
    iget-object v6, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadFile$2;->L$2:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .local v6, "extension":Ljava/lang/String;
    iget-object v7, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadFile$2;->L$1:Ljava/lang/Object;

    check-cast v7, Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;

    .local v7, "attachmentType":Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;
    iget-object v8, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadFile$2;->L$0:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    .local v8, "mimeType":Ljava/lang/String;
    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v9, p1

    goto/16 :goto_2

    .end local v1    # "uploadTask":Lcom/google/firebase/storage/UploadTask;
    .end local v3    # "fileRef":Lcom/google/firebase/storage/StorageReference;
    .end local v4    # "path":Ljava/lang/String;
    .end local v5    # "fileName":Ljava/lang/String;
    .end local v6    # "extension":Ljava/lang/String;
    .end local v7    # "attachmentType":Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;
    .end local v8    # "mimeType":Ljava/lang/String;
    :pswitch_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 32
    nop

    .line 33
    :try_start_2
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadFile$2;->this$0:Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService;

    invoke-static {v1}, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService;->access$getContext$p(Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadFile$2;->$uri:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "application/octet-stream"

    .line 34
    .local v1, "mimeType":Ljava/lang/String;
    :cond_0
    nop

    .line 35
    const-string v3, "image/"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v3, v5, v2, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;->IMAGE:Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;

    goto :goto_0

    .line 36
    :cond_1
    const-string v3, "audio/"

    invoke-static {v1, v3, v5, v2, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;->AUDIO:Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;

    goto :goto_0

    .line 37
    :cond_2
    sget-object v3, Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;->DOCUMENT:Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;

    .line 34
    :goto_0
    nop

    .line 40
    .local v3, "attachmentType":Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    const-string v4, "bin"

    .line 41
    .local v4, "extension":Ljava/lang/String;
    :cond_3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 42
    .restart local v5    # "fileName":Ljava/lang/String;
    iget-object v6, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadFile$2;->$conversationId:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "amani-chat/attachments/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 44
    .local v6, "path":Ljava/lang/String;
    iget-object v7, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadFile$2;->this$0:Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService;

    invoke-static {v7}, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService;->access$getStorageRef$p(Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService;)Lcom/google/firebase/storage/StorageReference;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/firebase/storage/StorageReference;->child(Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;

    move-result-object v7

    const-string v8, "child(...)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .local v7, "fileRef":Lcom/google/firebase/storage/StorageReference;
    sget-object v8, Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;->IMAGE:Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 53
    iget-object v9, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadFile$2;->this$0:Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService;

    .line 46
    const-string v10, "No se pudo leer el archivo"

    if-ne v3, v8, :cond_5

    .line 47
    :try_start_3
    iget-object v8, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadFile$2;->$uri:Landroid/net/Uri;

    invoke-static {v9, v8}, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService;->access$compressImage(Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v8

    .line 48
    .local v8, "compressedUri":Landroid/net/Uri;
    iget-object v9, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadFile$2;->this$0:Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService;

    invoke-static {v9}, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService;->access$getContext$p(Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v9

    if-nez v9, :cond_4

    .line 49
    new-instance v0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$UploadResult$Error;

    invoke-direct {v0, v10}, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$UploadResult$Error;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 51
    .local v9, "inputStream":Ljava/io/InputStream;
    :cond_4
    invoke-virtual {v7, v9}, Lcom/google/firebase/storage/StorageReference;->putStream(Ljava/io/InputStream;)Lcom/google/firebase/storage/UploadTask;

    move-result-object v10

    .line 46
    .end local v8    # "compressedUri":Landroid/net/Uri;
    .end local v9    # "inputStream":Ljava/io/InputStream;
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_1

    .line 53
    :cond_5
    invoke-static {v9}, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService;->access$getContext$p(Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iget-object v9, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadFile$2;->$uri:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v8

    if-nez v8, :cond_6

    .line 54
    new-instance v0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$UploadResult$Error;

    invoke-direct {v0, v10}, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$UploadResult$Error;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 56
    .local v8, "inputStream":Ljava/io/InputStream;
    :cond_6
    invoke-virtual {v7, v8}, Lcom/google/firebase/storage/StorageReference;->putStream(Ljava/io/InputStream;)Lcom/google/firebase/storage/UploadTask;

    move-result-object v10

    .line 52
    .end local v8    # "inputStream":Ljava/io/InputStream;
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 46
    :goto_1
    nop

    .line 59
    .local v10, "uploadTask":Lcom/google/firebase/storage/UploadTask;
    move-object v8, v10

    check-cast v8, Lcom/google/android/gms/tasks/Task;

    move-object v9, p0

    check-cast v9, Lkotlin/coroutines/Continuation;

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    iput-object v11, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadFile$2;->L$0:Ljava/lang/Object;

    iput-object v3, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadFile$2;->L$1:Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    iput-object v11, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadFile$2;->L$2:Ljava/lang/Object;

    iput-object v5, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadFile$2;->L$3:Ljava/lang/Object;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    iput-object v11, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadFile$2;->L$4:Ljava/lang/Object;

    iput-object v7, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadFile$2;->L$5:Ljava/lang/Object;

    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    iput-object v11, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadFile$2;->L$6:Ljava/lang/Object;

    const/4 v11, 0x1

    iput v11, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadFile$2;->label:I

    invoke-static {v8, v9}, Lkotlinx/coroutines/tasks/TasksKt;->await(Lcom/google/android/gms/tasks/Task;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v0, :cond_7

    .line 31
    return-object v0

    .line 59
    :cond_7
    move-object v9, v7

    move-object v7, v3

    move-object v3, v9

    move-object v9, v6

    move-object v6, v4

    move-object v4, v9

    move-object v9, v8

    move-object v8, v1

    move-object v1, v10

    .line 31
    .end local v10    # "uploadTask":Lcom/google/firebase/storage/UploadTask;
    .local v1, "uploadTask":Lcom/google/firebase/storage/UploadTask;
    .local v3, "fileRef":Lcom/google/firebase/storage/StorageReference;
    .local v4, "path":Ljava/lang/String;
    .local v6, "extension":Ljava/lang/String;
    .local v7, "attachmentType":Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;
    .local v8, "mimeType":Ljava/lang/String;
    :goto_2
    check-cast v9, Lcom/google/firebase/storage/UploadTask$TaskSnapshot;

    .line 61
    .local v9, "taskSnapshot":Lcom/google/firebase/storage/UploadTask$TaskSnapshot;
    invoke-virtual {v9}, Lcom/google/firebase/storage/UploadTask$TaskSnapshot;->getTask()Lcom/google/firebase/storage/StorageTask;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/firebase/storage/StorageTask;->isSuccessful()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 62
    invoke-virtual {v3}, Lcom/google/firebase/storage/StorageReference;->getDownloadUrl()Lcom/google/android/gms/tasks/Task;

    move-result-object v10

    const-string v11, "getDownloadUrl(...)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v11, p0

    check-cast v11, Lkotlin/coroutines/Continuation;

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    iput-object v12, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadFile$2;->L$0:Ljava/lang/Object;

    iput-object v7, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadFile$2;->L$1:Ljava/lang/Object;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    iput-object v12, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadFile$2;->L$2:Ljava/lang/Object;

    iput-object v5, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadFile$2;->L$3:Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    iput-object v12, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadFile$2;->L$4:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    iput-object v12, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadFile$2;->L$5:Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    iput-object v12, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadFile$2;->L$6:Ljava/lang/Object;

    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    iput-object v12, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadFile$2;->L$7:Ljava/lang/Object;

    iput v2, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadFile$2;->label:I

    invoke-static {v10, v11}, Lkotlinx/coroutines/tasks/TasksKt;->await(Lcom/google/android/gms/tasks/Task;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_8

    .line 31
    return-object v0

    .line 62
    :cond_8
    move-object v0, v9

    .line 63
    .end local v9    # "taskSnapshot":Lcom/google/firebase/storage/UploadTask$TaskSnapshot;
    .restart local v0    # "taskSnapshot":Lcom/google/firebase/storage/UploadTask$TaskSnapshot;
    :goto_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, "?alt=media"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "downloadUrl":Ljava/lang/String;
    new-instance v9, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$UploadResult$Success;

    invoke-direct {v9, v2, v7, v5}, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$UploadResult$Success;-><init>(Ljava/lang/String;Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;Ljava/lang/String;)V

    .end local v2    # "downloadUrl":Ljava/lang/String;
    check-cast v9, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$UploadResult;

    goto :goto_4

    .line 65
    .end local v0    # "taskSnapshot":Lcom/google/firebase/storage/UploadTask$TaskSnapshot;
    .restart local v9    # "taskSnapshot":Lcom/google/firebase/storage/UploadTask$TaskSnapshot;
    :cond_9
    new-instance v0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$UploadResult$Error;

    const-string v2, "Error al subir archivo"

    invoke-direct {v0, v2}, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$UploadResult$Error;-><init>(Ljava/lang/String;)V

    check-cast v0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$UploadResult;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object v9, v0

    .end local v1    # "uploadTask":Lcom/google/firebase/storage/UploadTask;
    .end local v3    # "fileRef":Lcom/google/firebase/storage/StorageReference;
    .end local v4    # "path":Ljava/lang/String;
    .end local v5    # "fileName":Ljava/lang/String;
    .end local v6    # "extension":Ljava/lang/String;
    .end local v7    # "attachmentType":Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;
    .end local v8    # "mimeType":Ljava/lang/String;
    .end local v9    # "taskSnapshot":Lcom/google/firebase/storage/UploadTask$TaskSnapshot;
    :goto_4
    goto :goto_5

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$UploadResult$Error;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_a

    const-string v2, "Error desconocido"

    :cond_a
    invoke-direct {v1, v2}, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$UploadResult$Error;-><init>(Ljava/lang/String;)V

    move-object v9, v1

    check-cast v9, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$UploadResult;

    .line 69
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5
    return-object v9

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
