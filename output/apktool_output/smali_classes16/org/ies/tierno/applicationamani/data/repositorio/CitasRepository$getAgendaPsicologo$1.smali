.class final Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getAgendaPsicologo$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "CitasRepository.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;->getAgendaPsicologo-0E7RQCE(JLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "org.ies.tierno.applicationamani.data.repositorio.CitasRepository"
    f = "CitasRepository.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0
    }
    l = {
        0x21
    }
    m = "getAgendaPsicologo-0E7RQCE"
    n = {
        "month",
        "$this$getAgendaPsicologo_0E7RQCE_u24lambda_u241\\1",
        "idPsicologo",
        "$i$a$-runCatching-CitasRepository$getAgendaPsicologo$2\\1\\32\\0"
    }
    s = {
        "L$0",
        "L$1",
        "J$0",
        "I$0"
    }
.end annotation


# instance fields
.field I$0:I

.field J$0:J

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;


# direct methods
.method constructor <init>(Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getAgendaPsicologo$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getAgendaPsicologo$1;->this$0:Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getAgendaPsicologo$1;->result:Ljava/lang/Object;

    iget v0, p0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getAgendaPsicologo$1;->label:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getAgendaPsicologo$1;->label:I

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getAgendaPsicologo$1;->this$0:Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;

    const/4 v1, 0x0

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;->getAgendaPsicologo-0E7RQCE(JLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
