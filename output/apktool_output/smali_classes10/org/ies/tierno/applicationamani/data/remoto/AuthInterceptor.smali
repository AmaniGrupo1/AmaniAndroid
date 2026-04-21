.class public final Lorg/ies/tierno/applicationamani/data/remoto/AuthInterceptor;
.super Ljava/lang/Object;
.source "AuthInterceptor.kt"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lorg/ies/tierno/applicationamani/data/remoto/AuthInterceptor;",
        "Lokhttp3/Interceptor;",
        "tokenHolder",
        "Lorg/ies/tierno/applicationamani/data/local/TokenHolder;",
        "<init>",
        "(Lorg/ies/tierno/applicationamani/data/local/TokenHolder;)V",
        "intercept",
        "Lokhttp3/Response;",
        "chain",
        "Lokhttp3/Interceptor$Chain;",
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
.field private final tokenHolder:Lorg/ies/tierno/applicationamani/data/local/TokenHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lorg/ies/tierno/applicationamani/data/remoto/AuthInterceptor;->$stable:I

    return-void
.end method

.method public constructor <init>(Lorg/ies/tierno/applicationamani/data/local/TokenHolder;)V
    .locals 1
    .param p1, "tokenHolder"    # Lorg/ies/tierno/applicationamani/data/local/TokenHolder;

    const-string v0, "tokenHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/data/remoto/AuthInterceptor;->tokenHolder:Lorg/ies/tierno/applicationamani/data/local/TokenHolder;

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 5
    .param p1, "chain"    # Lokhttp3/Interceptor$Chain;

    const-string v0, "chain"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/data/remoto/AuthInterceptor;->tokenHolder:Lorg/ies/tierno/applicationamani/data/local/TokenHolder;

    invoke-virtual {v0}, Lorg/ies/tierno/applicationamani/data/local/TokenHolder;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 14
    .local v0, "token":Ljava/lang/String;
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v1

    .line 18
    .local v1, "originalRequest":Lokhttp3/Request;
    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {v1}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v2

    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bearer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Authorization"

    invoke-virtual {v2, v4, v3}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 21
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    goto :goto_0

    .line 23
    :cond_0
    move-object v2, v1

    .line 18
    :goto_0
    nop

    .line 26
    .local v2, "request":Lokhttp3/Request;
    invoke-interface {p1, v2}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v3

    return-object v3
.end method
