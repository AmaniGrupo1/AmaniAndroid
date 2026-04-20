.class public final Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/DarBajaPacienteUseCase;
.super Ljava/lang/Object;
.source "DarBajaPacienteUseCase.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001e\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u000b\u001a\u00020\u000cH\u0086B\u00a2\u0006\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u000f"
    }
    d2 = {
        "Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/DarBajaPacienteUseCase;",
        "",
        "repository",
        "Lorg/ies/tierno/applicationamani/data/AuthRepository;",
        "<init>",
        "(Lorg/ies/tierno/applicationamani/data/AuthRepository;)V",
        "getRepository",
        "()Lorg/ies/tierno/applicationamani/data/AuthRepository;",
        "invoke",
        "Lkotlin/Result;",
        "",
        "id",
        "",
        "invoke-gIAlu-s",
        "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field private final repository:Lorg/ies/tierno/applicationamani/data/AuthRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/DarBajaPacienteUseCase;->$stable:I

    return-void
.end method

.method public constructor <init>(Lorg/ies/tierno/applicationamani/data/AuthRepository;)V
    .locals 1
    .param p1, "repository"    # Lorg/ies/tierno/applicationamani/data/AuthRepository;

    const-string v0, "repository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/DarBajaPacienteUseCase;->repository:Lorg/ies/tierno/applicationamani/data/AuthRepository;

    return-void
.end method


# virtual methods
.method public final getRepository()Lorg/ies/tierno/applicationamani/data/AuthRepository;
    .locals 1

    .line 16
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/DarBajaPacienteUseCase;->repository:Lorg/ies/tierno/applicationamani/data/AuthRepository;

    return-object v0
.end method

.method public final invoke-gIAlu-s(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .param p1, "id"    # J
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/DarBajaPacienteUseCase$invoke$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/DarBajaPacienteUseCase$invoke$1;

    iget v1, v0, Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/DarBajaPacienteUseCase$invoke$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/DarBajaPacienteUseCase$invoke$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/DarBajaPacienteUseCase$invoke$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/DarBajaPacienteUseCase$invoke$1;

    invoke-direct {v0, p0, p3}, Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/DarBajaPacienteUseCase$invoke$1;-><init>(Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/DarBajaPacienteUseCase;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/DarBajaPacienteUseCase$invoke$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 24
    iget v3, v0, Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/DarBajaPacienteUseCase$invoke$1;->label:I

    packed-switch v3, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget-wide p1, v0, Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/DarBajaPacienteUseCase$invoke$1;->J$0:J

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, v1

    check-cast v2, Lkotlin/Result;

    invoke-virtual {v2}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 25
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/DarBajaPacienteUseCase;->repository:Lorg/ies/tierno/applicationamani/data/AuthRepository;

    iput-wide p1, v0, Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/DarBajaPacienteUseCase$invoke$1;->J$0:J

    const/4 v4, 0x1

    iput v4, v0, Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/DarBajaPacienteUseCase$invoke$1;->label:I

    invoke-virtual {v3, p1, p2, v0}, Lorg/ies/tierno/applicationamani/data/AuthRepository;->darBajaPaciente-gIAlu-s(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_1

    .line 24
    return-object v2

    .line 25
    :cond_1
    move-object v2, v3

    :goto_1
    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
