.class final Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase$login$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "LoginUseCase.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase;->login-gIAlu-s(Lorg/ies/tierno/applicationamani/domain/models/login/LoginRequestDTO;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
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

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "org.ies.tierno.applicationamani.domain.usecases.login.LoginUseCase"
    f = "LoginUseCase.kt"
    i = {
        0x0
    }
    l = {
        0x1a
    }
    m = "login-gIAlu-s"
    n = {
        "request"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase;


# direct methods
.method constructor <init>(Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase$login$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase$login$1;->this$0:Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase$login$1;->result:Ljava/lang/Object;

    iget v0, p0, Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase$login$1;->label:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase$login$1;->label:I

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase$login$1;->this$0:Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase;

    const/4 v1, 0x0

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    invoke-virtual {v0, v1, v2}, Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase;->login-gIAlu-s(Lorg/ies/tierno/applicationamani/domain/models/login/LoginRequestDTO;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {v0}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object v0

    return-object v0
.end method
