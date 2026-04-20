.class public final Lorg/ies/tierno/applicationamani/domain/usecases/ObserveUserOnlineUseCase;
.super Ljava/lang/Object;
.source "ObserveUserOnlineUseCase.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0017\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u0010\t\u001a\u00020\nH\u0086\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lorg/ies/tierno/applicationamani/domain/usecases/ObserveUserOnlineUseCase;",
        "",
        "chatRepository",
        "Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepository;",
        "<init>",
        "(Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepository;)V",
        "invoke",
        "Lkotlinx/coroutines/flow/Flow;",
        "",
        "userId",
        "",
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
.field private final chatRepository:Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lorg/ies/tierno/applicationamani/domain/usecases/ObserveUserOnlineUseCase;->$stable:I

    return-void
.end method

.method public constructor <init>(Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepository;)V
    .locals 1
    .param p1, "chatRepository"    # Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepository;

    const-string v0, "chatRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/domain/usecases/ObserveUserOnlineUseCase;->chatRepository:Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepository;

    return-void
.end method


# virtual methods
.method public final invoke(J)Lkotlinx/coroutines/flow/Flow;
    .locals 1
    .param p1, "userId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/usecases/ObserveUserOnlineUseCase;->chatRepository:Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepository;

    invoke-interface {v0, p1, p2}, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepository;->observeUserOnline(J)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    return-object v0
.end method
