.class public final Lorg/ies/tierno/applicationamani/domain/events/HorarioEvents;
.super Ljava/lang/Object;
.source "HorarioEvents.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u000b\u001a\u00020\u0006H\u0086@\u00a2\u0006\u0002\u0010\u000cR\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\r"
    }
    d2 = {
        "Lorg/ies/tierno/applicationamani/domain/events/HorarioEvents;",
        "",
        "<init>",
        "()V",
        "_horarioActualizado",
        "Lkotlinx/coroutines/flow/MutableSharedFlow;",
        "",
        "horarioActualizado",
        "Lkotlinx/coroutines/flow/SharedFlow;",
        "getHorarioActualizado",
        "()Lkotlinx/coroutines/flow/SharedFlow;",
        "notificar",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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

.field public static final INSTANCE:Lorg/ies/tierno/applicationamani/domain/events/HorarioEvents;

.field private static final _horarioActualizado:Lkotlinx/coroutines/flow/MutableSharedFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableSharedFlow<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private static final horarioActualizado:Lkotlinx/coroutines/flow/SharedFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/SharedFlow<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/ies/tierno/applicationamani/domain/events/HorarioEvents;

    invoke-direct {v0}, Lorg/ies/tierno/applicationamani/domain/events/HorarioEvents;-><init>()V

    sput-object v0, Lorg/ies/tierno/applicationamani/domain/events/HorarioEvents;->INSTANCE:Lorg/ies/tierno/applicationamani/domain/events/HorarioEvents;

    .line 13
    const/4 v0, 0x0

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {v2, v2, v0, v1, v0}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;ILjava/lang/Object;)Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object v0

    sput-object v0, Lorg/ies/tierno/applicationamani/domain/events/HorarioEvents;->_horarioActualizado:Lkotlinx/coroutines/flow/MutableSharedFlow;

    .line 14
    sget-object v0, Lorg/ies/tierno/applicationamani/domain/events/HorarioEvents;->_horarioActualizado:Lkotlinx/coroutines/flow/MutableSharedFlow;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->asSharedFlow(Lkotlinx/coroutines/flow/MutableSharedFlow;)Lkotlinx/coroutines/flow/SharedFlow;

    move-result-object v0

    sput-object v0, Lorg/ies/tierno/applicationamani/domain/events/HorarioEvents;->horarioActualizado:Lkotlinx/coroutines/flow/SharedFlow;

    const/16 v0, 0x8

    sput v0, Lorg/ies/tierno/applicationamani/domain/events/HorarioEvents;->$stable:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getHorarioActualizado()Lkotlinx/coroutines/flow/SharedFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/SharedFlow<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 14
    sget-object v0, Lorg/ies/tierno/applicationamani/domain/events/HorarioEvents;->horarioActualizado:Lkotlinx/coroutines/flow/SharedFlow;

    return-object v0
.end method

.method public final notificar(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 17
    sget-object v0, Lorg/ies/tierno/applicationamani/domain/events/HorarioEvents;->_horarioActualizado:Lkotlinx/coroutines/flow/MutableSharedFlow;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v0, v1, p1}, Lkotlinx/coroutines/flow/MutableSharedFlow;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 18
    return-object v0
.end method
