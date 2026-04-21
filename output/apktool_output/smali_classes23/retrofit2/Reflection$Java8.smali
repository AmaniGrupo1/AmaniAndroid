.class Lretrofit2/Reflection$Java8;
.super Lretrofit2/Reflection;
.source "Reflection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/Reflection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Java8"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lretrofit2/Reflection;-><init>()V

    return-void
.end method


# virtual methods
.method describeMethodParameter(Ljava/lang/reflect/Method;I)Ljava/lang/String;
    .locals 3
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "index"    # I

    .line 57
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameters()[Ljava/lang/reflect/Parameter;

    move-result-object v0

    aget-object v0, v0, p2

    .line 58
    .local v0, "parameter":Ljava/lang/reflect/Parameter;
    invoke-virtual {v0}, Ljava/lang/reflect/Parameter;->isNamePresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parameter \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/reflect/Parameter;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 61
    :cond_0
    invoke-super {p0, p1, p2}, Lretrofit2/Reflection;->describeMethodParameter(Ljava/lang/reflect/Method;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method invokeDefaultMethod(Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p3, "proxy"    # Ljava/lang/Object;
    .param p4, "args"    # [Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 52
    .local p2, "declaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1, p2, p3, p4}, Lretrofit2/DefaultMethodSupport;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method isDefaultMethod(Ljava/lang/reflect/Method;)Z
    .locals 1
    .param p1, "method"    # Ljava/lang/reflect/Method;

    .line 45
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->isDefault()Z

    move-result v0

    return v0
.end method
