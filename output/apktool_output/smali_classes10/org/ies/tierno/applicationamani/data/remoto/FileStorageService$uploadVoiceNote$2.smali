.class final Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadVoiceNote$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "FileStorageService.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService;->uploadVoiceNote(Ljava/io/File;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "org.ies.tierno.applicationamani.data.remoto.FileStorageService$uploadVoiceNote$2"
    f = "FileStorageService.kt"
    i = {
        0x0,
        0x0,
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
        0x1
    }
    l = {
        0x5e,
        0x62
    }
    m = "invokeSuspend"
    n = {
        "extension",
        "fileName",
        "path",
        "fileRef",
        "contentType",
        "metadata",
        "inputStream\\1",
        "uploadTask\\1",
        "$i$a$-use-FileStorageService$uploadVoiceNote$2$taskSnapshot$1\\1\\92\\0",
        "extension",
        "fileName",
        "path",
        "fileRef",
        "contentType",
        "metadata",
        "taskSnapshot"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "L$7",
        "L$8",
        "I$0",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "L$6"
    }
.end annotation


# instance fields
.field final synthetic $audioFile:Ljava/io/File;

.field final synthetic $conversationId:Ljava/lang/String;

.field I$0:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

.field L$7:Ljava/lang/Object;

.field L$8:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService;


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/lang/String;Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadVoiceNote$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadVoiceNote$2;->$audioFile:Ljava/io/File;

    iput-object p2, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadVoiceNote$2;->$conversationId:Ljava/lang/String;

    iput-object p3, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadVoiceNote$2;->this$0:Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method static final invokeSuspend$lambda$0(Ljava/lang/String;Lcom/google/firebase/storage/StorageMetadata$Builder;)Lkotlin/Unit;
    .locals 1
    .param p0, "$contentType"    # Ljava/lang/String;
    .param p1, "$this$storageMetadata"    # Lcom/google/firebase/storage/StorageMetadata$Builder;

    .line 89
    invoke-virtual {p1, p0}, Lcom/google/firebase/storage/StorageMetadata$Builder;->setContentType(Ljava/lang/String;)Lcom/google/firebase/storage/StorageMetadata$Builder;

    .line 90
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
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

    new-instance v0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadVoiceNote$2;

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadVoiceNote$2;->$audioFile:Ljava/io/File;

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadVoiceNote$2;->$conversationId:Ljava/lang/String;

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadVoiceNote$2;->this$0:Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService;

    invoke-direct {v0, v1, v2, v3, p2}, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadVoiceNote$2;-><init>(Ljava/io/File;Ljava/lang/String;Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadVoiceNote$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadVoiceNote$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadVoiceNote$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadVoiceNote$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13
    .param p1, "$result"    # Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 72
    iget v1, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadVoiceNote$2;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadVoiceNote$2;->L$6:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/storage/UploadTask$TaskSnapshot;

    .local v0, "taskSnapshot":Lcom/google/firebase/storage/UploadTask$TaskSnapshot;
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadVoiceNote$2;->L$5:Ljava/lang/Object;

    check-cast v1, Lcom/google/firebase/storage/StorageMetadata;

    .local v1, "metadata":Lcom/google/firebase/storage/StorageMetadata;
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadVoiceNote$2;->L$4:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .local v2, "contentType":Ljava/lang/String;
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadVoiceNote$2;->L$3:Ljava/lang/Object;

    check-cast v3, Lcom/google/firebase/storage/StorageReference;

    .local v3, "fileRef":Lcom/google/firebase/storage/StorageReference;
    iget-object v4, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadVoiceNote$2;->L$2:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .local v4, "path":Ljava/lang/String;
    iget-object v5, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadVoiceNote$2;->L$1:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .local v5, "fileName":Ljava/lang/String;
    iget-object v6, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadVoiceNote$2;->L$0:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .local v6, "extension":Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v9, v5

    move-object v5, v1

    move-object v1, p1

    goto/16 :goto_4

    .end local v0    # "taskSnapshot":Lcom/google/firebase/storage/UploadTask$TaskSnapshot;
    .end local v1    # "metadata":Lcom/google/firebase/storage/StorageMetadata;
    .end local v2    # "contentType":Ljava/lang/String;
    .end local v3    # "fileRef":Lcom/google/firebase/storage/StorageReference;
    .end local v4    # "path":Ljava/lang/String;
    .end local v5    # "fileName":Ljava/lang/String;
    .end local v6    # "extension":Ljava/lang/String;
    :pswitch_1
    iget v1, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadVoiceNote$2;->I$0:I

    .local v1, "$i$a$-use-FileStorageService$uploadVoiceNote$2$taskSnapshot$1\\1\\92\\0":I
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadVoiceNote$2;->L$8:Ljava/lang/Object;

    check-cast v2, Lcom/google/firebase/storage/UploadTask;

    .local v2, "uploadTask\\1":Lcom/google/firebase/storage/UploadTask;
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadVoiceNote$2;->L$7:Ljava/lang/Object;

    check-cast v3, Ljava/io/FileInputStream;

    .local v3, "inputStream\\1":Ljava/io/FileInputStream;
    iget-object v4, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadVoiceNote$2;->L$6:Ljava/lang/Object;

    check-cast v4, Ljava/io/Closeable;

    iget-object v5, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadVoiceNote$2;->L$5:Ljava/lang/Object;

    check-cast v5, Lcom/google/firebase/storage/StorageMetadata;

    .local v5, "metadata":Lcom/google/firebase/storage/StorageMetadata;
    iget-object v6, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadVoiceNote$2;->L$4:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .local v6, "contentType":Ljava/lang/String;
    iget-object v7, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadVoiceNote$2;->L$3:Ljava/lang/Object;

    check-cast v7, Lcom/google/firebase/storage/StorageReference;

    .local v7, "fileRef":Lcom/google/firebase/storage/StorageReference;
    iget-object v8, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadVoiceNote$2;->L$2:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    .local v8, "path":Ljava/lang/String;
    iget-object v9, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadVoiceNote$2;->L$1:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    .local v9, "fileName":Ljava/lang/String;
    iget-object v10, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadVoiceNote$2;->L$0:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    .local v10, "extension":Ljava/lang/String;
    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v11, p1

    goto/16 :goto_3

    .line 92
    .end local v1    # "$i$a$-use-FileStorageService$uploadVoiceNote$2$taskSnapshot$1\\1\\92\\0":I
    .end local v2    # "uploadTask\\1":Lcom/google/firebase/storage/UploadTask;
    .end local v3    # "inputStream\\1":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v0

    goto/16 :goto_6

    .line 72
    .end local v5    # "metadata":Lcom/google/firebase/storage/StorageMetadata;
    .end local v6    # "contentType":Ljava/lang/String;
    .end local v7    # "fileRef":Lcom/google/firebase/storage/StorageReference;
    .end local v8    # "path":Ljava/lang/String;
    .end local v9    # "fileName":Ljava/lang/String;
    .end local v10    # "extension":Ljava/lang/String;
    :pswitch_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 73
    nop

    .line 74
    :try_start_2
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadVoiceNote$2;->$audioFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadVoiceNote$2;->$audioFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    goto/16 :goto_7

    .line 78
    :cond_0
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadVoiceNote$2;->$audioFile:Ljava/io/File;

    invoke-static {v1}, Lkotlin/io/FilesKt;->getExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    move-object v10, v1

    .line 79
    .restart local v10    # "extension":Ljava/lang/String;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "voice_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v9, v1

    .line 80
    .restart local v9    # "fileName":Ljava/lang/String;
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadVoiceNote$2;->$conversationId:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "amani-chat/attachments/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v8, v1

    .line 81
    .restart local v8    # "path":Ljava/lang/String;
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadVoiceNote$2;->this$0:Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService;

    invoke-static {v1}, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService;->access$getStorageRef$p(Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService;)Lcom/google/firebase/storage/StorageReference;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/google/firebase/storage/StorageReference;->child(Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;

    move-result-object v1

    const-string v2, "child(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, v1

    .line 82
    .restart local v7    # "fileRef":Lcom/google/firebase/storage/StorageReference;
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v2, "audio/mp4"

    sparse-switch v1, :sswitch_data_0

    :cond_1
    :goto_0
    goto :goto_1

    :sswitch_0
    :try_start_3
    const-string v1, "ogg"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    const-string v2, "audio/ogg"

    goto :goto_2

    .line 82
    :sswitch_1
    const-string v1, "mp3"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 85
    :cond_2
    const-string v2, "audio/mpeg"

    goto :goto_2

    .line 82
    :sswitch_2
    const-string v1, "m4a"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 84
    :cond_3
    goto :goto_2

    .line 86
    :goto_1
    nop

    .line 82
    :goto_2
    move-object v6, v2

    .line 88
    .restart local v6    # "contentType":Ljava/lang/String;
    new-instance v1, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadVoiceNote$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, v6}, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadVoiceNote$2$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/firebase/storage/StorageKt;->storageMetadata(Lkotlin/jvm/functions/Function1;)Lcom/google/firebase/storage/StorageMetadata;

    move-result-object v1

    move-object v5, v1

    .restart local v5    # "metadata":Lcom/google/firebase/storage/StorageMetadata;
    new-instance v1, Ljava/io/FileInputStream;

    .line 92
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadVoiceNote$2;->$audioFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v4, v1

    check-cast v4, Ljava/io/Closeable;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    move-object v1, v4

    check-cast v1, Ljava/io/FileInputStream;

    move-object v3, v1

    .restart local v3    # "inputStream\\1":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 93
    .restart local v1    # "$i$a$-use-FileStorageService$uploadVoiceNote$2$taskSnapshot$1\\1\\92\\0":I
    move-object v2, v3

    check-cast v2, Ljava/io/InputStream;

    invoke-virtual {v7, v2, v5}, Lcom/google/firebase/storage/StorageReference;->putStream(Ljava/io/InputStream;Lcom/google/firebase/storage/StorageMetadata;)Lcom/google/firebase/storage/UploadTask;

    move-result-object v2

    const-string v11, "putStream(...)"

    invoke-static {v2, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    .restart local v2    # "uploadTask\\1":Lcom/google/firebase/storage/UploadTask;
    move-object v11, v2

    check-cast v11, Lcom/google/android/gms/tasks/Task;

    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    iput-object v12, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadVoiceNote$2;->L$0:Ljava/lang/Object;

    iput-object v9, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadVoiceNote$2;->L$1:Ljava/lang/Object;

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    iput-object v12, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadVoiceNote$2;->L$2:Ljava/lang/Object;

    iput-object v7, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadVoiceNote$2;->L$3:Ljava/lang/Object;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    iput-object v12, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadVoiceNote$2;->L$4:Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    iput-object v12, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadVoiceNote$2;->L$5:Ljava/lang/Object;

    iput-object v4, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadVoiceNote$2;->L$6:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    iput-object v12, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadVoiceNote$2;->L$7:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    iput-object v12, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadVoiceNote$2;->L$8:Ljava/lang/Object;

    iput v1, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadVoiceNote$2;->I$0:I

    const/4 v12, 0x1

    iput v12, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadVoiceNote$2;->label:I

    invoke-static {v11, p0}, Lkotlinx/coroutines/tasks/TasksKt;->await(Lcom/google/android/gms/tasks/Task;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v0, :cond_4

    .line 72
    return-object v0

    .line 94
    :cond_4
    :goto_3
    check-cast v11, Lcom/google/firebase/storage/UploadTask$TaskSnapshot;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 92
    .end local v1    # "$i$a$-use-FileStorageService$uploadVoiceNote$2$taskSnapshot$1\\1\\92\\0":I
    .end local v2    # "uploadTask\\1":Lcom/google/firebase/storage/UploadTask;
    .end local v3    # "inputStream\\1":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    :try_start_5
    invoke-static {v4, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 97
    .local v11, "taskSnapshot":Lcom/google/firebase/storage/UploadTask$TaskSnapshot;
    invoke-virtual {v11}, Lcom/google/firebase/storage/UploadTask$TaskSnapshot;->getTask()Lcom/google/firebase/storage/StorageTask;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/storage/StorageTask;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 98
    invoke-virtual {v7}, Lcom/google/firebase/storage/StorageReference;->getDownloadUrl()Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    const-string v3, "getDownloadUrl(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadVoiceNote$2;->L$0:Ljava/lang/Object;

    iput-object v9, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadVoiceNote$2;->L$1:Ljava/lang/Object;

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadVoiceNote$2;->L$2:Ljava/lang/Object;

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadVoiceNote$2;->L$3:Ljava/lang/Object;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadVoiceNote$2;->L$4:Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadVoiceNote$2;->L$5:Ljava/lang/Object;

    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadVoiceNote$2;->L$6:Ljava/lang/Object;

    iput-object v1, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadVoiceNote$2;->L$7:Ljava/lang/Object;

    iput-object v1, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadVoiceNote$2;->L$8:Ljava/lang/Object;

    const/4 v1, 0x2

    iput v1, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadVoiceNote$2;->label:I

    invoke-static {v2, v3}, Lkotlinx/coroutines/tasks/TasksKt;->await(Lcom/google/android/gms/tasks/Task;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_5

    .line 72
    return-object v0

    .line 98
    :cond_5
    move-object v2, v6

    move-object v3, v7

    move-object v4, v8

    move-object v6, v10

    move-object v0, v11

    .line 99
    .end local v7    # "fileRef":Lcom/google/firebase/storage/StorageReference;
    .end local v8    # "path":Ljava/lang/String;
    .end local v10    # "extension":Ljava/lang/String;
    .end local v11    # "taskSnapshot":Lcom/google/firebase/storage/UploadTask$TaskSnapshot;
    .restart local v0    # "taskSnapshot":Lcom/google/firebase/storage/UploadTask$TaskSnapshot;
    .local v2, "contentType":Ljava/lang/String;
    .local v3, "fileRef":Lcom/google/firebase/storage/StorageReference;
    .restart local v4    # "path":Ljava/lang/String;
    .local v6, "extension":Ljava/lang/String;
    :goto_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "?alt=media"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "downloadUrl":Ljava/lang/String;
    new-instance v7, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$UploadResult$Success;

    sget-object v8, Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;->AUDIO:Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;

    invoke-direct {v7, v1, v8, v9}, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$UploadResult$Success;-><init>(Ljava/lang/String;Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;Ljava/lang/String;)V

    .end local v1    # "downloadUrl":Ljava/lang/String;
    check-cast v7, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$UploadResult;

    goto :goto_5

    .line 101
    .end local v0    # "taskSnapshot":Lcom/google/firebase/storage/UploadTask$TaskSnapshot;
    .end local v2    # "contentType":Ljava/lang/String;
    .end local v3    # "fileRef":Lcom/google/firebase/storage/StorageReference;
    .end local v4    # "path":Ljava/lang/String;
    .local v6, "contentType":Ljava/lang/String;
    .restart local v7    # "fileRef":Lcom/google/firebase/storage/StorageReference;
    .restart local v8    # "path":Ljava/lang/String;
    .restart local v10    # "extension":Ljava/lang/String;
    .restart local v11    # "taskSnapshot":Lcom/google/firebase/storage/UploadTask$TaskSnapshot;
    :cond_6
    new-instance v0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$UploadResult$Error;

    const-string v1, "Error al subir nota de voz"

    invoke-direct {v0, v1}, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$UploadResult$Error;-><init>(Ljava/lang/String;)V

    check-cast v0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$UploadResult;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-object v7, v0

    .end local v5    # "metadata":Lcom/google/firebase/storage/StorageMetadata;
    .end local v6    # "contentType":Ljava/lang/String;
    .end local v7    # "fileRef":Lcom/google/firebase/storage/StorageReference;
    .end local v8    # "path":Ljava/lang/String;
    .end local v9    # "fileName":Ljava/lang/String;
    .end local v10    # "extension":Ljava/lang/String;
    .end local v11    # "taskSnapshot":Lcom/google/firebase/storage/UploadTask$TaskSnapshot;
    :goto_5
    goto :goto_8

    .line 92
    .end local p1    # "$result":Ljava/lang/Object;
    :goto_6
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .restart local v5    # "metadata":Lcom/google/firebase/storage/StorageMetadata;
    .restart local v6    # "contentType":Ljava/lang/String;
    .restart local v7    # "fileRef":Lcom/google/firebase/storage/StorageReference;
    .restart local v8    # "path":Ljava/lang/String;
    .restart local v9    # "fileName":Ljava/lang/String;
    .restart local v10    # "extension":Ljava/lang/String;
    .restart local p1    # "$result":Ljava/lang/Object;
    :catchall_1
    move-exception v1

    :try_start_7
    invoke-static {v4, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local p1    # "$result":Ljava/lang/Object;
    throw v1

    .line 75
    .end local v5    # "metadata":Lcom/google/firebase/storage/StorageMetadata;
    .end local v6    # "contentType":Ljava/lang/String;
    .end local v7    # "fileRef":Lcom/google/firebase/storage/StorageReference;
    .end local v8    # "path":Ljava/lang/String;
    .end local v9    # "fileName":Ljava/lang/String;
    .end local v10    # "extension":Ljava/lang/String;
    .restart local p1    # "$result":Ljava/lang/Object;
    :cond_7
    :goto_7
    new-instance v0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$UploadResult$Error;

    const-string v1, "La nota de voz est\u00e1 vac\u00eda o no se encontr\u00f3"

    invoke-direct {v0, v1}, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$UploadResult$Error;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    return-object v0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$UploadResult$Error;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_8

    const-string v2, "Error desconocido"

    :cond_8
    invoke-direct {v1, v2}, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$UploadResult$Error;-><init>(Ljava/lang/String;)V

    move-object v7, v1

    check-cast v7, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$UploadResult;

    .line 105
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_8
    return-object v7

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x19fda -> :sswitch_2
        0x1a6f0 -> :sswitch_1
        0x1ad8f -> :sswitch_0
    .end sparse-switch
.end method
