.class public final Lretrofit2/Invocation;
.super Ljava/lang/Object;
.source "Invocation.java"


# instance fields
.field private final arguments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation
.end field

.field private final instance:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final method:Ljava/lang/reflect/Method;

.field private final service:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/util/List;)V
    .locals 1
    .param p2, "instance"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "method"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Method;",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .line 76
    .local p1, "service":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p4, "arguments":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lretrofit2/Invocation;->service:Ljava/lang/Class;

    .line 78
    iput-object p2, p0, Lretrofit2/Invocation;->instance:Ljava/lang/Object;

    .line 79
    iput-object p3, p0, Lretrofit2/Invocation;->method:Ljava/lang/reflect/Method;

    .line 80
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lretrofit2/Invocation;->arguments:Ljava/util/List;

    .line 81
    return-void
.end method

.method public static of(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/util/List;)Lretrofit2/Invocation;
    .locals 2
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TT;",
            "Ljava/lang/reflect/Method;",
            "Ljava/util/List<",
            "*>;)",
            "Lretrofit2/Invocation;"
        }
    .end annotation

    .line 55
    .local p0, "service":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "instance":Ljava/lang/Object;, "TT;"
    .local p3, "arguments":Ljava/util/List;, "Ljava/util/List<*>;"
    const-string v0, "service == null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 56
    const-string v0, "instance == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 57
    const-string v0, "method == null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 58
    const-string v0, "arguments == null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 59
    new-instance v0, Lretrofit2/Invocation;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, p0, p1, p2, v1}, Lretrofit2/Invocation;-><init>(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/util/List;)V

    return-object v0
.end method

.method public static of(Ljava/lang/reflect/Method;Ljava/util/List;)Lretrofit2/Invocation;
    .locals 4
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/util/List<",
            "*>;)",
            "Lretrofit2/Invocation;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 64
    .local p1, "arguments":Ljava/util/List;, "Ljava/util/List<*>;"
    const-string v0, "method == null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 65
    const-string v0, "arguments == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 66
    new-instance v0, Lretrofit2/Invocation;

    .line 67
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, p0, v2}, Lretrofit2/Invocation;-><init>(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/util/List;)V

    .line 66
    return-object v0
.end method


# virtual methods
.method public arguments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lretrofit2/Invocation;->arguments:Ljava/util/List;

    return-object v0
.end method

.method public instance()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 95
    iget-object v0, p0, Lretrofit2/Invocation;->instance:Ljava/lang/Object;

    return-object v0
.end method

.method public method()Ljava/lang/reflect/Method;
    .locals 1

    .line 99
    iget-object v0, p0, Lretrofit2/Invocation;->method:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public service()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lretrofit2/Invocation;->service:Ljava/lang/Class;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 108
    iget-object v0, p0, Lretrofit2/Invocation;->service:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lretrofit2/Invocation;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lretrofit2/Invocation;->arguments:Ljava/util/List;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s.%s() %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
