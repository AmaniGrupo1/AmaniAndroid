.class public final Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepository$DefaultImpls;
.super Ljava/lang/Object;
.source "ChatRepository.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic sendMessage-bMdYcbs$default(Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepository;JJLjava/lang/String;Ljava/lang/String;Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-static/range {p0 .. p11}, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepository;->sendMessage-bMdYcbs$default(Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepository;JJLjava/lang/String;Ljava/lang/String;Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 16
    return-object p0
.end method
