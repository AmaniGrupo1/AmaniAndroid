.class abstract Lretrofit2/HttpServiceMethod;
.super Lretrofit2/ServiceMethod;
.source "HttpServiceMethod.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit2/HttpServiceMethod$SuspendForBody;,
        Lretrofit2/HttpServiceMethod$SuspendForResponse;,
        Lretrofit2/HttpServiceMethod$CallAdapted;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseT:",
        "Ljava/lang/Object;",
        "ReturnT:",
        "Ljava/lang/Object;",
        ">",
        "Lretrofit2/ServiceMethod<",
        "TReturnT;>;"
    }
.end annotation


# instance fields
.field private final callFactory:Lokhttp3/Call$Factory;

.field private final requestFactory:Lretrofit2/RequestFactory;

.field private final responseConverter:Lretrofit2/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Converter<",
            "Lokhttp3/ResponseBody;",
            "TResponseT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lretrofit2/RequestFactory;Lokhttp3/Call$Factory;Lretrofit2/Converter;)V
    .locals 0
    .param p1, "requestFactory"    # Lretrofit2/RequestFactory;
    .param p2, "callFactory"    # Lokhttp3/Call$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/RequestFactory;",
            "Lokhttp3/Call$Factory;",
            "Lretrofit2/Converter<",
            "Lokhttp3/ResponseBody;",
            "TResponseT;>;)V"
        }
    .end annotation

    .line 150
    .local p0, "this":Lretrofit2/HttpServiceMethod;, "Lretrofit2/HttpServiceMethod<TResponseT;TReturnT;>;"
    .local p3, "responseConverter":Lretrofit2/Converter;, "Lretrofit2/Converter<Lokhttp3/ResponseBody;TResponseT;>;"
    invoke-direct {p0}, Lretrofit2/ServiceMethod;-><init>()V

    .line 151
    iput-object p1, p0, Lretrofit2/HttpServiceMethod;->requestFactory:Lretrofit2/RequestFactory;

    .line 152
    iput-object p2, p0, Lretrofit2/HttpServiceMethod;->callFactory:Lokhttp3/Call$Factory;

    .line 153
    iput-object p3, p0, Lretrofit2/HttpServiceMethod;->responseConverter:Lretrofit2/Converter;

    .line 154
    return-void
.end method

.method private static createCallAdapter(Lretrofit2/Retrofit;Ljava/lang/reflect/Method;Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/CallAdapter;
    .locals 3
    .param p0, "retrofit"    # Lretrofit2/Retrofit;
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "returnType"    # Ljava/lang/reflect/Type;
    .param p3, "annotations"    # [Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResponseT:",
            "Ljava/lang/Object;",
            "ReturnT:",
            "Ljava/lang/Object;",
            ">(",
            "Lretrofit2/Retrofit;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lretrofit2/CallAdapter<",
            "TResponseT;TReturnT;>;"
        }
    .end annotation

    .line 127
    :try_start_0
    invoke-virtual {p0, p2, p3}, Lretrofit2/Retrofit;->callAdapter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/CallAdapter;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "Unable to create call adapter for %s"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private static createResponseConverter(Lretrofit2/Retrofit;Ljava/lang/reflect/Method;Ljava/lang/reflect/Type;)Lretrofit2/Converter;
    .locals 4
    .param p0, "retrofit"    # Lretrofit2/Retrofit;
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "responseType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResponseT:",
            "Ljava/lang/Object;",
            ">(",
            "Lretrofit2/Retrofit;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lretrofit2/Converter<",
            "Lokhttp3/ResponseBody;",
            "TResponseT;>;"
        }
    .end annotation

    .line 135
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 137
    .local v0, "annotations":[Ljava/lang/annotation/Annotation;
    :try_start_0
    invoke-virtual {p0, p2, v0}, Lretrofit2/Retrofit;->responseBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 138
    :catch_0
    move-exception v1

    .line 139
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v2, "Unable to create converter for %s"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v1, v2, v3}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static parseAnnotations(Lretrofit2/Retrofit;Ljava/lang/reflect/Method;Lretrofit2/RequestFactory;)Lretrofit2/HttpServiceMethod;
    .locals 12
    .param p0, "retrofit"    # Lretrofit2/Retrofit;
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "requestFactory"    # Lretrofit2/RequestFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResponseT:",
            "Ljava/lang/Object;",
            "ReturnT:",
            "Ljava/lang/Object;",
            ">(",
            "Lretrofit2/Retrofit;",
            "Ljava/lang/reflect/Method;",
            "Lretrofit2/RequestFactory;",
            ")",
            "Lretrofit2/HttpServiceMethod<",
            "TResponseT;TReturnT;>;"
        }
    .end annotation

    .line 39
    iget-boolean v0, p2, Lretrofit2/RequestFactory;->isKotlinSuspendFunction:Z

    .line 40
    .local v0, "isKotlinSuspendFunction":Z
    const/4 v1, 0x0

    .line 41
    .local v1, "continuationWantsResponse":Z
    const/4 v7, 0x0

    .line 42
    .local v7, "continuationBodyNullable":Z
    const/4 v2, 0x0

    .line 44
    .local v2, "continuationIsUnit":Z
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v3

    .line 46
    .local v3, "annotations":[Ljava/lang/annotation/Annotation;
    const/4 v4, 0x0

    if-eqz v0, :cond_2

    .line 47
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v5

    .line 48
    .local v5, "parameterTypes":[Ljava/lang/reflect/Type;
    array-length v6, v5

    const/4 v8, 0x1

    sub-int/2addr v6, v8

    aget-object v6, v5, v6

    check-cast v6, Ljava/lang/reflect/ParameterizedType;

    .line 49
    invoke-static {v4, v6}, Lretrofit2/Utils;->getParameterLowerBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v6

    .line 51
    .local v6, "responseType":Ljava/lang/reflect/Type;
    invoke-static {v6}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v9

    const-class v10, Lretrofit2/Response;

    if-ne v9, v10, :cond_0

    instance-of v9, v6, Ljava/lang/reflect/ParameterizedType;

    if-eqz v9, :cond_0

    .line 53
    move-object v9, v6

    check-cast v9, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v4, v9}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v6

    .line 54
    const/4 v1, 0x1

    goto :goto_0

    .line 56
    :cond_0
    invoke-static {v6}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v9

    const-class v10, Lretrofit2/Call;

    if-eq v9, v10, :cond_1

    .line 64
    invoke-static {v6}, Lretrofit2/Utils;->isUnit(Ljava/lang/reflect/Type;)Z

    move-result v2

    .line 71
    :goto_0
    new-instance v9, Lretrofit2/Utils$ParameterizedTypeImpl;

    const-class v10, Lretrofit2/Call;

    new-array v8, v8, [Ljava/lang/reflect/Type;

    aput-object v6, v8, v4

    const/4 v11, 0x0

    invoke-direct {v9, v11, v10, v8}, Lretrofit2/Utils$ParameterizedTypeImpl;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    .line 72
    .local v9, "adapterType":Ljava/lang/reflect/Type;
    invoke-static {v3}, Lretrofit2/SkipCallbackExecutorImpl;->ensurePresent([Ljava/lang/annotation/Annotation;)[Ljava/lang/annotation/Annotation;

    move-result-object v3

    .line 73
    .end local v5    # "parameterTypes":[Ljava/lang/reflect/Type;
    .end local v6    # "responseType":Ljava/lang/reflect/Type;
    move v8, v2

    move-object v10, v9

    move-object v9, v3

    goto :goto_1

    .line 57
    .end local v9    # "adapterType":Ljava/lang/reflect/Type;
    .restart local v5    # "parameterTypes":[Ljava/lang/reflect/Type;
    .restart local v6    # "responseType":Ljava/lang/reflect/Type;
    :cond_1
    move-object v8, v6

    check-cast v8, Ljava/lang/reflect/ParameterizedType;

    .line 61
    invoke-static {v4, v8}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 57
    const-string v8, "Suspend functions should not return Call, as they already execute asynchronously.\nChange its return type to %s"

    invoke-static {p1, v8, v4}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    .line 74
    .end local v5    # "parameterTypes":[Ljava/lang/reflect/Type;
    .end local v6    # "responseType":Ljava/lang/reflect/Type;
    :cond_2
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v9

    move v8, v2

    move-object v10, v9

    move-object v9, v3

    .line 77
    .end local v2    # "continuationIsUnit":Z
    .end local v3    # "annotations":[Ljava/lang/annotation/Annotation;
    .local v8, "continuationIsUnit":Z
    .local v9, "annotations":[Ljava/lang/annotation/Annotation;
    .local v10, "adapterType":Ljava/lang/reflect/Type;
    :goto_1
    nop

    .line 78
    invoke-static {p0, p1, v10, v9}, Lretrofit2/HttpServiceMethod;->createCallAdapter(Lretrofit2/Retrofit;Ljava/lang/reflect/Method;Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/CallAdapter;

    move-result-object v6

    .line 79
    .local v6, "callAdapter":Lretrofit2/CallAdapter;, "Lretrofit2/CallAdapter<TResponseT;TReturnT;>;"
    invoke-interface {v6}, Lretrofit2/CallAdapter;->responseType()Ljava/lang/reflect/Type;

    move-result-object v11

    .line 80
    .local v11, "responseType":Ljava/lang/reflect/Type;
    const-class v2, Lokhttp3/Response;

    if-eq v11, v2, :cond_8

    .line 87
    const-class v2, Lretrofit2/Response;

    if-eq v11, v2, :cond_7

    .line 90
    iget-object v2, p2, Lretrofit2/RequestFactory;->httpMethod:Ljava/lang/String;

    const-string v3, "HEAD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-class v2, Ljava/lang/Void;

    .line 91
    invoke-virtual {v2, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 92
    invoke-static {v11}, Lretrofit2/Utils;->isUnit(Ljava/lang/reflect/Type;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    .line 93
    :cond_3
    const-string v2, "HEAD method must use Void or Unit as response type."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p1, v2, v3}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 96
    :cond_4
    :goto_2
    nop

    .line 97
    invoke-static {p0, p1, v11}, Lretrofit2/HttpServiceMethod;->createResponseConverter(Lretrofit2/Retrofit;Ljava/lang/reflect/Method;Ljava/lang/reflect/Type;)Lretrofit2/Converter;

    move-result-object v5

    .line 99
    .local v5, "responseConverter":Lretrofit2/Converter;, "Lretrofit2/Converter<Lokhttp3/ResponseBody;TResponseT;>;"
    iget-object v4, p0, Lretrofit2/Retrofit;->callFactory:Lokhttp3/Call$Factory;

    .line 100
    .local v4, "callFactory":Lokhttp3/Call$Factory;
    if-nez v0, :cond_5

    .line 101
    new-instance v2, Lretrofit2/HttpServiceMethod$CallAdapted;

    invoke-direct {v2, p2, v4, v5, v6}, Lretrofit2/HttpServiceMethod$CallAdapted;-><init>(Lretrofit2/RequestFactory;Lokhttp3/Call$Factory;Lretrofit2/Converter;Lretrofit2/CallAdapter;)V

    return-object v2

    .line 102
    :cond_5
    if-eqz v1, :cond_6

    .line 104
    new-instance v2, Lretrofit2/HttpServiceMethod$SuspendForResponse;

    invoke-direct {v2, p2, v4, v5, v6}, Lretrofit2/HttpServiceMethod$SuspendForResponse;-><init>(Lretrofit2/RequestFactory;Lokhttp3/Call$Factory;Lretrofit2/Converter;Lretrofit2/CallAdapter;)V

    return-object v2

    .line 112
    :cond_6
    new-instance v2, Lretrofit2/HttpServiceMethod$SuspendForBody;

    move-object v3, p2

    .end local p2    # "requestFactory":Lretrofit2/RequestFactory;
    .local v3, "requestFactory":Lretrofit2/RequestFactory;
    invoke-direct/range {v2 .. v8}, Lretrofit2/HttpServiceMethod$SuspendForBody;-><init>(Lretrofit2/RequestFactory;Lokhttp3/Call$Factory;Lretrofit2/Converter;Lretrofit2/CallAdapter;ZZ)V

    return-object v2

    .line 88
    .end local v3    # "requestFactory":Lretrofit2/RequestFactory;
    .end local v4    # "callFactory":Lokhttp3/Call$Factory;
    .end local v5    # "responseConverter":Lretrofit2/Converter;, "Lretrofit2/Converter<Lokhttp3/ResponseBody;TResponseT;>;"
    .restart local p2    # "requestFactory":Lretrofit2/RequestFactory;
    :cond_7
    move-object v3, p2

    .end local p2    # "requestFactory":Lretrofit2/RequestFactory;
    .restart local v3    # "requestFactory":Lretrofit2/RequestFactory;
    const-string p2, "Response must include generic type (e.g., Response<String>)"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p1, p2, v2}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2

    .line 81
    .end local v3    # "requestFactory":Lretrofit2/RequestFactory;
    .restart local p2    # "requestFactory":Lretrofit2/RequestFactory;
    :cond_8
    move-object v3, p2

    .end local p2    # "requestFactory":Lretrofit2/RequestFactory;
    .restart local v3    # "requestFactory":Lretrofit2/RequestFactory;
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 84
    invoke-static {v11}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, "\' is not a valid response body type. Did you mean ResponseBody?"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v2, v4, [Ljava/lang/Object;

    .line 81
    invoke-static {p1, p2, v2}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method


# virtual methods
.method protected abstract adapt(Lretrofit2/Call;[Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "TResponseT;>;[",
            "Ljava/lang/Object;",
            ")TReturnT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method final invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "instance"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")TReturnT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 158
    .local p0, "this":Lretrofit2/HttpServiceMethod;, "Lretrofit2/HttpServiceMethod<TResponseT;TReturnT;>;"
    new-instance v0, Lretrofit2/OkHttpCall;

    iget-object v1, p0, Lretrofit2/HttpServiceMethod;->requestFactory:Lretrofit2/RequestFactory;

    iget-object v4, p0, Lretrofit2/HttpServiceMethod;->callFactory:Lokhttp3/Call$Factory;

    iget-object v5, p0, Lretrofit2/HttpServiceMethod;->responseConverter:Lretrofit2/Converter;

    move-object v2, p1

    move-object v3, p2

    .end local p1    # "instance":Ljava/lang/Object;
    .end local p2    # "args":[Ljava/lang/Object;
    .local v2, "instance":Ljava/lang/Object;
    .local v3, "args":[Ljava/lang/Object;
    invoke-direct/range {v0 .. v5}, Lretrofit2/OkHttpCall;-><init>(Lretrofit2/RequestFactory;Ljava/lang/Object;[Ljava/lang/Object;Lokhttp3/Call$Factory;Lretrofit2/Converter;)V

    .line 160
    .local v0, "call":Lretrofit2/Call;, "Lretrofit2/Call<TResponseT;>;"
    invoke-virtual {p0, v0, v3}, Lretrofit2/HttpServiceMethod;->adapt(Lretrofit2/Call;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
