.class final Lretrofit2/RequestFactory$Builder;
.super Ljava/lang/Object;
.source "RequestFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/RequestFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# static fields
.field private static final PARAM:Ljava/lang/String; = "[a-zA-Z][a-zA-Z0-9_-]*"

.field private static final PARAM_NAME_REGEX:Ljava/util/regex/Pattern;

.field private static final PARAM_URL_REGEX:Ljava/util/regex/Pattern;


# instance fields
.field contentType:Lokhttp3/MediaType;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field gotBody:Z

.field gotField:Z

.field gotPart:Z

.field gotPath:Z

.field gotQuery:Z

.field gotQueryMap:Z

.field gotQueryName:Z

.field gotUrl:Z

.field hasBody:Z

.field headers:Lokhttp3/Headers;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field httpMethod:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field isFormEncoded:Z

.field isKotlinSuspendFunction:Z

.field isMultipart:Z

.field final method:Ljava/lang/reflect/Method;

.field final methodAnnotations:[Ljava/lang/annotation/Annotation;

.field final parameterAnnotationsArray:[[Ljava/lang/annotation/Annotation;

.field parameterHandlers:[Lretrofit2/ParameterHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lretrofit2/ParameterHandler<",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final parameterTypes:[Ljava/lang/reflect/Type;

.field relativeUrl:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field relativeUrlParamNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final retrofit:Lretrofit2/Retrofit;

.field final service:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 148
    const-string v0, "\\{([a-zA-Z][a-zA-Z0-9_-]*)\\}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lretrofit2/RequestFactory$Builder;->PARAM_URL_REGEX:Ljava/util/regex/Pattern;

    .line 149
    const-string v0, "[a-zA-Z][a-zA-Z0-9_-]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lretrofit2/RequestFactory$Builder;->PARAM_NAME_REGEX:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Lretrofit2/Retrofit;Ljava/lang/Class;Ljava/lang/reflect/Method;)V
    .locals 1
    .param p1, "retrofit"    # Lretrofit2/Retrofit;
    .param p3, "method"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Retrofit;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Method;",
            ")V"
        }
    .end annotation

    .line 177
    .local p2, "service":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-object p1, p0, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    .line 179
    iput-object p2, p0, Lretrofit2/RequestFactory$Builder;->service:Ljava/lang/Class;

    .line 180
    iput-object p3, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    .line 181
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    iput-object v0, p0, Lretrofit2/RequestFactory$Builder;->methodAnnotations:[Ljava/lang/annotation/Annotation;

    .line 182
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lretrofit2/RequestFactory$Builder;->parameterTypes:[Ljava/lang/reflect/Type;

    .line 183
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v0

    iput-object v0, p0, Lretrofit2/RequestFactory$Builder;->parameterAnnotationsArray:[[Ljava/lang/annotation/Annotation;

    .line 184
    return-void
.end method

.method private static boxIfPrimitive(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 861
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_0

    const-class v0, Ljava/lang/Boolean;

    return-object v0

    .line 862
    :cond_0
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_1

    const-class v0, Ljava/lang/Byte;

    return-object v0

    .line 863
    :cond_1
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_2

    const-class v0, Ljava/lang/Character;

    return-object v0

    .line 864
    :cond_2
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_3

    const-class v0, Ljava/lang/Double;

    return-object v0

    .line 865
    :cond_3
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_4

    const-class v0, Ljava/lang/Float;

    return-object v0

    .line 866
    :cond_4
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_5

    const-class v0, Ljava/lang/Integer;

    return-object v0

    .line 867
    :cond_5
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_6

    const-class v0, Ljava/lang/Long;

    return-object v0

    .line 868
    :cond_6
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_7

    const-class v0, Ljava/lang/Short;

    return-object v0

    .line 869
    :cond_7
    return-object p0
.end method

.method private parseHeaders([Ljava/lang/String;Z)Lokhttp3/Headers;
    .locals 9
    .param p1, "headers"    # [Ljava/lang/String;
    .param p2, "allowUnsafeNonAsciiValues"    # Z

    .line 305
    new-instance v0, Lokhttp3/Headers$Builder;

    invoke-direct {v0}, Lokhttp3/Headers$Builder;-><init>()V

    .line 306
    .local v0, "builder":Lokhttp3/Headers$Builder;
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, p1, v3

    .line 307
    .local v4, "header":Ljava/lang/String;
    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 308
    .local v5, "colon":I
    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-eq v5, v6, :cond_2

    .line 312
    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 313
    .local v6, "headerName":Ljava/lang/String;
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 314
    .local v7, "headerValue":Ljava/lang/String;
    const-string v8, "Content-Type"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 316
    :try_start_0
    invoke-static {v7}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v8

    iput-object v8, p0, Lretrofit2/RequestFactory$Builder;->contentType:Lokhttp3/MediaType;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    goto :goto_1

    .line 317
    :catch_0
    move-exception v1

    .line 318
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v3, "Malformed content type: %s"

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v2, v1, v3, v8}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 320
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    if-eqz p2, :cond_1

    .line 321
    invoke-virtual {v0, v6, v7}, Lokhttp3/Headers$Builder;->addUnsafeNonAscii(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    goto :goto_1

    .line 323
    :cond_1
    invoke-virtual {v0, v6, v7}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 306
    .end local v4    # "header":Ljava/lang/String;
    .end local v5    # "colon":I
    .end local v6    # "headerName":Ljava/lang/String;
    .end local v7    # "headerValue":Ljava/lang/String;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 309
    .restart local v4    # "header":Ljava/lang/String;
    .restart local v5    # "colon":I
    :cond_2
    iget-object v1, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v2, "@Headers value must be in the form \"Name: Value\". Found: \"%s\""

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 326
    .end local v4    # "header":Ljava/lang/String;
    .end local v5    # "colon":I
    :cond_3
    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v1

    return-object v1
.end method

.method private parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "httpMethod"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "hasBody"    # Z

    .line 271
    iget-object v0, p0, Lretrofit2/RequestFactory$Builder;->httpMethod:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 278
    iput-object p1, p0, Lretrofit2/RequestFactory$Builder;->httpMethod:Ljava/lang/String;

    .line 279
    iput-boolean p3, p0, Lretrofit2/RequestFactory$Builder;->hasBody:Z

    .line 281
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    return-void

    .line 286
    :cond_0
    const/16 v0, 0x3f

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 287
    .local v0, "question":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    .line 289
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 290
    .local v1, "queryParams":Ljava/lang/String;
    sget-object v2, Lretrofit2/RequestFactory$Builder;->PARAM_URL_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 291
    .local v2, "queryParamMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 292
    :cond_1
    iget-object v3, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v4, "URL query string \"%s\" must not have replace block. For dynamic query parameters use @Query."

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 300
    .end local v1    # "queryParams":Ljava/lang/String;
    .end local v2    # "queryParamMatcher":Ljava/util/regex/Matcher;
    :cond_2
    :goto_0
    iput-object p2, p0, Lretrofit2/RequestFactory$Builder;->relativeUrl:Ljava/lang/String;

    .line 301
    invoke-static {p2}, Lretrofit2/RequestFactory$Builder;->parsePathParameters(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lretrofit2/RequestFactory$Builder;->relativeUrlParamNames:Ljava/util/Set;

    .line 302
    return-void

    .line 272
    .end local v0    # "question":I
    :cond_3
    iget-object v0, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lretrofit2/RequestFactory$Builder;->httpMethod:Ljava/lang/String;

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Only one HTTP method is allowed. Found: %s and %s."

    invoke-static {v0, v2, v1}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private parseMethodAnnotation(Ljava/lang/annotation/Annotation;)V
    .locals 5
    .param p1, "annotation"    # Ljava/lang/annotation/Annotation;

    .line 233
    instance-of v0, p1, Lretrofit2/http/DELETE;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 234
    move-object v0, p1

    check-cast v0, Lretrofit2/http/DELETE;

    invoke-interface {v0}, Lretrofit2/http/DELETE;->value()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DELETE"

    invoke-direct {p0, v2, v0, v1}, Lretrofit2/RequestFactory$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 235
    :cond_0
    instance-of v0, p1, Lretrofit2/http/GET;

    if-eqz v0, :cond_1

    .line 236
    move-object v0, p1

    check-cast v0, Lretrofit2/http/GET;

    invoke-interface {v0}, Lretrofit2/http/GET;->value()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GET"

    invoke-direct {p0, v2, v0, v1}, Lretrofit2/RequestFactory$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 237
    :cond_1
    instance-of v0, p1, Lretrofit2/http/HEAD;

    if-eqz v0, :cond_2

    .line 238
    move-object v0, p1

    check-cast v0, Lretrofit2/http/HEAD;

    invoke-interface {v0}, Lretrofit2/http/HEAD;->value()Ljava/lang/String;

    move-result-object v0

    const-string v2, "HEAD"

    invoke-direct {p0, v2, v0, v1}, Lretrofit2/RequestFactory$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 239
    :cond_2
    instance-of v0, p1, Lretrofit2/http/PATCH;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 240
    move-object v0, p1

    check-cast v0, Lretrofit2/http/PATCH;

    invoke-interface {v0}, Lretrofit2/http/PATCH;->value()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PATCH"

    invoke-direct {p0, v1, v0, v2}, Lretrofit2/RequestFactory$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 241
    :cond_3
    instance-of v0, p1, Lretrofit2/http/POST;

    if-eqz v0, :cond_4

    .line 242
    move-object v0, p1

    check-cast v0, Lretrofit2/http/POST;

    invoke-interface {v0}, Lretrofit2/http/POST;->value()Ljava/lang/String;

    move-result-object v0

    const-string v1, "POST"

    invoke-direct {p0, v1, v0, v2}, Lretrofit2/RequestFactory$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 243
    :cond_4
    instance-of v0, p1, Lretrofit2/http/PUT;

    if-eqz v0, :cond_5

    .line 244
    move-object v0, p1

    check-cast v0, Lretrofit2/http/PUT;

    invoke-interface {v0}, Lretrofit2/http/PUT;->value()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PUT"

    invoke-direct {p0, v1, v0, v2}, Lretrofit2/RequestFactory$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 245
    :cond_5
    instance-of v0, p1, Lretrofit2/http/OPTIONS;

    if-eqz v0, :cond_6

    .line 246
    move-object v0, p1

    check-cast v0, Lretrofit2/http/OPTIONS;

    invoke-interface {v0}, Lretrofit2/http/OPTIONS;->value()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OPTIONS"

    invoke-direct {p0, v2, v0, v1}, Lretrofit2/RequestFactory$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 247
    :cond_6
    instance-of v0, p1, Lretrofit2/http/HTTP;

    if-eqz v0, :cond_7

    .line 248
    move-object v0, p1

    check-cast v0, Lretrofit2/http/HTTP;

    .line 249
    .local v0, "http":Lretrofit2/http/HTTP;
    invoke-interface {v0}, Lretrofit2/http/HTTP;->method()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lretrofit2/http/HTTP;->path()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lretrofit2/http/HTTP;->hasBody()Z

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lretrofit2/RequestFactory$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 250
    .end local v0    # "http":Lretrofit2/http/HTTP;
    goto :goto_0

    :cond_7
    instance-of v0, p1, Lretrofit2/http/Headers;

    if-eqz v0, :cond_9

    .line 251
    move-object v0, p1

    check-cast v0, Lretrofit2/http/Headers;

    .line 252
    .local v0, "headers":Lretrofit2/http/Headers;
    invoke-interface {v0}, Lretrofit2/http/Headers;->value()[Ljava/lang/String;

    move-result-object v2

    .line 253
    .local v2, "headersToParse":[Ljava/lang/String;
    array-length v3, v2

    if-eqz v3, :cond_8

    .line 256
    invoke-interface {v0}, Lretrofit2/http/Headers;->allowUnsafeNonAsciiValues()Z

    move-result v1

    invoke-direct {p0, v2, v1}, Lretrofit2/RequestFactory$Builder;->parseHeaders([Ljava/lang/String;Z)Lokhttp3/Headers;

    move-result-object v1

    iput-object v1, p0, Lretrofit2/RequestFactory$Builder;->headers:Lokhttp3/Headers;

    .line 257
    .end local v0    # "headers":Lretrofit2/http/Headers;
    .end local v2    # "headersToParse":[Ljava/lang/String;
    goto :goto_0

    .line 254
    .restart local v0    # "headers":Lretrofit2/http/Headers;
    .restart local v2    # "headersToParse":[Ljava/lang/String;
    :cond_8
    iget-object v3, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v4, "@Headers annotation is empty."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v1}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 257
    .end local v0    # "headers":Lretrofit2/http/Headers;
    .end local v2    # "headersToParse":[Ljava/lang/String;
    :cond_9
    instance-of v0, p1, Lretrofit2/http/Multipart;

    const-string v3, "Only one encoding annotation is allowed."

    if-eqz v0, :cond_b

    .line 258
    iget-boolean v0, p0, Lretrofit2/RequestFactory$Builder;->isFormEncoded:Z

    if-nez v0, :cond_a

    .line 261
    iput-boolean v2, p0, Lretrofit2/RequestFactory$Builder;->isMultipart:Z

    goto :goto_0

    .line 259
    :cond_a
    iget-object v0, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v1}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 262
    :cond_b
    instance-of v0, p1, Lretrofit2/http/FormUrlEncoded;

    if-eqz v0, :cond_d

    .line 263
    iget-boolean v0, p0, Lretrofit2/RequestFactory$Builder;->isMultipart:Z

    if-nez v0, :cond_c

    .line 266
    iput-boolean v2, p0, Lretrofit2/RequestFactory$Builder;->isFormEncoded:Z

    goto :goto_0

    .line 264
    :cond_c
    iget-object v0, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v1}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 268
    :cond_d
    :goto_0
    return-void
.end method

.method private parseParameter(ILjava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Z)Lretrofit2/ParameterHandler;
    .locals 6
    .param p1, "p"    # I
    .param p2, "parameterType"    # Ljava/lang/reflect/Type;
    .param p3, "annotations"    # [Ljava/lang/annotation/Annotation;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "allowContinuation"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Z)",
            "Lretrofit2/ParameterHandler<",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 331
    const/4 v0, 0x0

    .line 332
    .local v0, "result":Lretrofit2/ParameterHandler;, "Lretrofit2/ParameterHandler<*>;"
    const/4 v1, 0x0

    if-eqz p3, :cond_2

    .line 333
    array-length v2, p3

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p3, v3

    .line 334
    .local v4, "annotation":Ljava/lang/annotation/Annotation;
    nop

    .line 335
    invoke-direct {p0, p1, p2, p3, v4}, Lretrofit2/RequestFactory$Builder;->parseParameterAnnotation(ILjava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Lretrofit2/ParameterHandler;

    move-result-object v5

    .line 337
    .local v5, "annotationAction":Lretrofit2/ParameterHandler;, "Lretrofit2/ParameterHandler<*>;"
    if-nez v5, :cond_0

    .line 338
    goto :goto_1

    .line 341
    :cond_0
    if-nez v0, :cond_1

    .line 346
    move-object v0, v5

    .line 333
    .end local v4    # "annotation":Ljava/lang/annotation/Annotation;
    .end local v5    # "annotationAction":Lretrofit2/ParameterHandler;, "Lretrofit2/ParameterHandler<*>;"
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 342
    .restart local v4    # "annotation":Ljava/lang/annotation/Annotation;
    .restart local v5    # "annotationAction":Lretrofit2/ParameterHandler;, "Lretrofit2/ParameterHandler<*>;"
    :cond_1
    iget-object v2, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v3, "Multiple Retrofit annotations found, only one allowed."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, p1, v3, v1}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 350
    .end local v4    # "annotation":Ljava/lang/annotation/Annotation;
    .end local v5    # "annotationAction":Lretrofit2/ParameterHandler;, "Lretrofit2/ParameterHandler<*>;"
    :cond_2
    if-nez v0, :cond_5

    .line 351
    if-eqz p4, :cond_4

    .line 353
    :try_start_0
    invoke-static {p2}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lkotlin/coroutines/Continuation;

    if-ne v2, v3, :cond_3

    .line 354
    const/4 v2, 0x1

    iput-boolean v2, p0, Lretrofit2/RequestFactory$Builder;->isKotlinSuspendFunction:Z
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    const/4 v1, 0x0

    return-object v1

    .line 359
    :cond_3
    goto :goto_2

    .line 357
    :catch_0
    move-exception v2

    .line 361
    :cond_4
    :goto_2
    iget-object v2, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v3, "No Retrofit annotation found."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, p1, v3, v1}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 364
    :cond_5
    return-object v0
.end method

.method private parseParameterAnnotation(ILjava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Lretrofit2/ParameterHandler;
    .locals 10
    .param p1, "p"    # I
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "annotations"    # [Ljava/lang/annotation/Annotation;
    .param p4, "annotation"    # Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lretrofit2/ParameterHandler<",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 370
    instance-of v0, p4, Lretrofit2/http/Url;

    const-string v1, "@Path parameters may not be used with @Url."

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_8

    .line 371
    invoke-direct {p0, p1, p2}, Lretrofit2/RequestFactory$Builder;->validateResolvableType(ILjava/lang/reflect/Type;)V

    .line 372
    iget-boolean v0, p0, Lretrofit2/RequestFactory$Builder;->gotUrl:Z

    if-nez v0, :cond_7

    .line 375
    iget-boolean v0, p0, Lretrofit2/RequestFactory$Builder;->gotPath:Z

    if-nez v0, :cond_6

    .line 378
    iget-boolean v0, p0, Lretrofit2/RequestFactory$Builder;->gotQuery:Z

    if-nez v0, :cond_5

    .line 381
    iget-boolean v0, p0, Lretrofit2/RequestFactory$Builder;->gotQueryName:Z

    if-nez v0, :cond_4

    .line 384
    iget-boolean v0, p0, Lretrofit2/RequestFactory$Builder;->gotQueryMap:Z

    if-nez v0, :cond_3

    .line 387
    iget-object v0, p0, Lretrofit2/RequestFactory$Builder;->relativeUrl:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 391
    iput-boolean v2, p0, Lretrofit2/RequestFactory$Builder;->gotUrl:Z

    .line 393
    const-class v0, Lokhttp3/HttpUrl;

    if-eq p2, v0, :cond_1

    const-class v0, Ljava/lang/String;

    if-eq p2, v0, :cond_1

    const-class v0, Ljava/net/URI;

    if-eq p2, v0, :cond_1

    instance-of v0, p2, Ljava/lang/Class;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/lang/Class;

    .line 396
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.Uri"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 399
    :cond_0
    iget-object v0, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v1, "@Url must be okhttp3.HttpUrl, String, java.net.URI, or android.net.Uri type."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, p1, v1, v2}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 397
    :cond_1
    :goto_0
    new-instance v0, Lretrofit2/ParameterHandler$RelativeUrl;

    iget-object v1, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    invoke-direct {v0, v1, p1}, Lretrofit2/ParameterHandler$RelativeUrl;-><init>(Ljava/lang/reflect/Method;I)V

    return-object v0

    .line 388
    :cond_2
    iget-object v0, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lretrofit2/RequestFactory$Builder;->httpMethod:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "@Url cannot be used with @%s URL"

    invoke-static {v0, p1, v2, v1}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 385
    :cond_3
    iget-object v0, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v1, "A @Url parameter must not come after a @QueryMap."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, p1, v1, v2}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 382
    :cond_4
    iget-object v0, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v1, "A @Url parameter must not come after a @QueryName."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, p1, v1, v2}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 379
    :cond_5
    iget-object v0, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v1, "A @Url parameter must not come after a @Query."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, p1, v1, v2}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 376
    :cond_6
    iget-object v0, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, p1, v1, v2}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 373
    :cond_7
    iget-object v0, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v1, "Multiple @Url method annotations found."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, p1, v1, v2}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 405
    :cond_8
    instance-of v0, p4, Lretrofit2/http/Path;

    if-eqz v0, :cond_e

    .line 406
    invoke-direct {p0, p1, p2}, Lretrofit2/RequestFactory$Builder;->validateResolvableType(ILjava/lang/reflect/Type;)V

    .line 407
    iget-boolean v0, p0, Lretrofit2/RequestFactory$Builder;->gotQuery:Z

    if-nez v0, :cond_d

    .line 410
    iget-boolean v0, p0, Lretrofit2/RequestFactory$Builder;->gotQueryName:Z

    if-nez v0, :cond_c

    .line 413
    iget-boolean v0, p0, Lretrofit2/RequestFactory$Builder;->gotQueryMap:Z

    if-nez v0, :cond_b

    .line 416
    iget-boolean v0, p0, Lretrofit2/RequestFactory$Builder;->gotUrl:Z

    if-nez v0, :cond_a

    .line 419
    iget-object v0, p0, Lretrofit2/RequestFactory$Builder;->relativeUrl:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 423
    iput-boolean v2, p0, Lretrofit2/RequestFactory$Builder;->gotPath:Z

    .line 425
    move-object v0, p4

    check-cast v0, Lretrofit2/http/Path;

    .line 426
    .local v0, "path":Lretrofit2/http/Path;
    invoke-interface {v0}, Lretrofit2/http/Path;->value()Ljava/lang/String;

    move-result-object v4

    .line 427
    .local v4, "name":Ljava/lang/String;
    invoke-direct {p0, p1, v4}, Lretrofit2/RequestFactory$Builder;->validatePathName(ILjava/lang/String;)V

    .line 429
    iget-object v1, p0, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    invoke-virtual {v1, p2, p3}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v5

    .line 430
    .local v5, "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    new-instance v1, Lretrofit2/ParameterHandler$Path;

    iget-object v2, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    invoke-interface {v0}, Lretrofit2/http/Path;->encoded()Z

    move-result v6

    move v3, p1

    .end local p1    # "p":I
    .local v3, "p":I
    invoke-direct/range {v1 .. v6}, Lretrofit2/ParameterHandler$Path;-><init>(Ljava/lang/reflect/Method;ILjava/lang/String;Lretrofit2/Converter;Z)V

    .end local v3    # "p":I
    .restart local p1    # "p":I
    return-object v1

    .line 420
    .end local v0    # "path":Lretrofit2/http/Path;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    :cond_9
    iget-object v0, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lretrofit2/RequestFactory$Builder;->httpMethod:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "@Path can only be used with relative url on @%s"

    invoke-static {v0, p1, v2, v1}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 417
    :cond_a
    iget-object v0, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, p1, v1, v2}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 414
    :cond_b
    iget-object v0, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v1, "A @Path parameter must not come after a @QueryMap."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, p1, v1, v2}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 411
    :cond_c
    iget-object v0, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v1, "A @Path parameter must not come after a @QueryName."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, p1, v1, v2}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 408
    :cond_d
    iget-object v0, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v1, "A @Path parameter must not come after a @Query."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, p1, v1, v2}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 432
    :cond_e
    instance-of v0, p4, Lretrofit2/http/Query;

    const-string v1, "<String>)"

    const-string v4, " must include generic type (e.g., "

    if-eqz v0, :cond_12

    .line 433
    invoke-direct {p0, p1, p2}, Lretrofit2/RequestFactory$Builder;->validateResolvableType(ILjava/lang/reflect/Type;)V

    .line 434
    move-object v0, p4

    check-cast v0, Lretrofit2/http/Query;

    .line 435
    .local v0, "query":Lretrofit2/http/Query;
    invoke-interface {v0}, Lretrofit2/http/Query;->value()Ljava/lang/String;

    move-result-object v5

    .line 436
    .local v5, "name":Ljava/lang/String;
    invoke-interface {v0}, Lretrofit2/http/Query;->encoded()Z

    move-result v6

    .line 438
    .local v6, "encoded":Z
    invoke-static {p2}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v7

    .line 439
    .local v7, "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-boolean v2, p0, Lretrofit2/RequestFactory$Builder;->gotQuery:Z

    .line 440
    const-class v2, Ljava/lang/Iterable;

    invoke-virtual {v2, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 441
    instance-of v2, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_f

    .line 450
    move-object v1, p2

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .line 451
    .local v1, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-static {v3, v1}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v2

    .line 452
    .local v2, "iterableType":Ljava/lang/reflect/Type;
    iget-object v3, p0, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    invoke-virtual {v3, v2, p3}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v3

    .line 453
    .local v3, "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    new-instance v4, Lretrofit2/ParameterHandler$Query;

    invoke-direct {v4, v5, v3, v6}, Lretrofit2/ParameterHandler$Query;-><init>(Ljava/lang/String;Lretrofit2/Converter;Z)V

    invoke-virtual {v4}, Lretrofit2/ParameterHandler$Query;->iterable()Lretrofit2/ParameterHandler;

    move-result-object v4

    return-object v4

    .line 442
    .end local v1    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    .end local v2    # "iterableType":Ljava/lang/reflect/Type;
    .end local v3    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    :cond_f
    iget-object v2, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 445
    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 447
    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    .line 442
    invoke-static {v2, p1, v1, v3}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 454
    :cond_10
    invoke-virtual {v7}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 455
    invoke-virtual {v7}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lretrofit2/RequestFactory$Builder;->boxIfPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 456
    .local v1, "arrayComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v2, p0, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    .line 457
    invoke-virtual {v2, v1, p3}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v2

    .line 458
    .local v2, "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    new-instance v3, Lretrofit2/ParameterHandler$Query;

    invoke-direct {v3, v5, v2, v6}, Lretrofit2/ParameterHandler$Query;-><init>(Ljava/lang/String;Lretrofit2/Converter;Z)V

    invoke-virtual {v3}, Lretrofit2/ParameterHandler$Query;->array()Lretrofit2/ParameterHandler;

    move-result-object v3

    return-object v3

    .line 460
    .end local v1    # "arrayComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    :cond_11
    iget-object v1, p0, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    invoke-virtual {v1, p2, p3}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v1

    .line 461
    .local v1, "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    new-instance v2, Lretrofit2/ParameterHandler$Query;

    invoke-direct {v2, v5, v1, v6}, Lretrofit2/ParameterHandler$Query;-><init>(Ljava/lang/String;Lretrofit2/Converter;Z)V

    return-object v2

    .line 464
    .end local v0    # "query":Lretrofit2/http/Query;
    .end local v1    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "encoded":Z
    .end local v7    # "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_12
    instance-of v0, p4, Lretrofit2/http/QueryName;

    if-eqz v0, :cond_16

    .line 465
    invoke-direct {p0, p1, p2}, Lretrofit2/RequestFactory$Builder;->validateResolvableType(ILjava/lang/reflect/Type;)V

    .line 466
    move-object v0, p4

    check-cast v0, Lretrofit2/http/QueryName;

    .line 467
    .local v0, "query":Lretrofit2/http/QueryName;
    invoke-interface {v0}, Lretrofit2/http/QueryName;->encoded()Z

    move-result v5

    .line 469
    .local v5, "encoded":Z
    invoke-static {p2}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v6

    .line 470
    .local v6, "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-boolean v2, p0, Lretrofit2/RequestFactory$Builder;->gotQueryName:Z

    .line 471
    const-class v2, Ljava/lang/Iterable;

    invoke-virtual {v2, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 472
    instance-of v2, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_13

    .line 481
    move-object v1, p2

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .line 482
    .local v1, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-static {v3, v1}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v2

    .line 483
    .local v2, "iterableType":Ljava/lang/reflect/Type;
    iget-object v3, p0, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    invoke-virtual {v3, v2, p3}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v3

    .line 484
    .restart local v3    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    new-instance v4, Lretrofit2/ParameterHandler$QueryName;

    invoke-direct {v4, v3, v5}, Lretrofit2/ParameterHandler$QueryName;-><init>(Lretrofit2/Converter;Z)V

    invoke-virtual {v4}, Lretrofit2/ParameterHandler$QueryName;->iterable()Lretrofit2/ParameterHandler;

    move-result-object v4

    return-object v4

    .line 473
    .end local v1    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    .end local v2    # "iterableType":Ljava/lang/reflect/Type;
    .end local v3    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    :cond_13
    iget-object v2, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 476
    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 478
    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    .line 473
    invoke-static {v2, p1, v1, v3}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 485
    :cond_14
    invoke-virtual {v6}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 486
    invoke-virtual {v6}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lretrofit2/RequestFactory$Builder;->boxIfPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 487
    .local v1, "arrayComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v2, p0, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    .line 488
    invoke-virtual {v2, v1, p3}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v2

    .line 489
    .local v2, "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    new-instance v3, Lretrofit2/ParameterHandler$QueryName;

    invoke-direct {v3, v2, v5}, Lretrofit2/ParameterHandler$QueryName;-><init>(Lretrofit2/Converter;Z)V

    invoke-virtual {v3}, Lretrofit2/ParameterHandler$QueryName;->array()Lretrofit2/ParameterHandler;

    move-result-object v3

    return-object v3

    .line 491
    .end local v1    # "arrayComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    :cond_15
    iget-object v1, p0, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    invoke-virtual {v1, p2, p3}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v1

    .line 492
    .local v1, "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    new-instance v2, Lretrofit2/ParameterHandler$QueryName;

    invoke-direct {v2, v1, v5}, Lretrofit2/ParameterHandler$QueryName;-><init>(Lretrofit2/Converter;Z)V

    return-object v2

    .line 495
    .end local v0    # "query":Lretrofit2/http/QueryName;
    .end local v1    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    .end local v5    # "encoded":Z
    .end local v6    # "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_16
    instance-of v0, p4, Lretrofit2/http/QueryMap;

    const-string v5, "Map must include generic types (e.g., Map<String, String>)"

    if-eqz v0, :cond_1a

    .line 496
    invoke-direct {p0, p1, p2}, Lretrofit2/RequestFactory$Builder;->validateResolvableType(ILjava/lang/reflect/Type;)V

    .line 497
    invoke-static {p2}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 498
    .local v0, "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-boolean v2, p0, Lretrofit2/RequestFactory$Builder;->gotQueryMap:Z

    .line 499
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 502
    const-class v1, Ljava/util/Map;

    invoke-static {p2, v0, v1}, Lretrofit2/Utils;->getSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 503
    .local v1, "mapType":Ljava/lang/reflect/Type;
    instance-of v4, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_18

    .line 507
    move-object v4, v1

    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    .line 508
    .local v4, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-static {v3, v4}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v5

    .line 509
    .local v5, "keyType":Ljava/lang/reflect/Type;
    const-class v6, Ljava/lang/String;

    if-ne v6, v5, :cond_17

    .line 512
    invoke-static {v2, v4}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v2

    .line 513
    .local v2, "valueType":Ljava/lang/reflect/Type;
    iget-object v3, p0, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    invoke-virtual {v3, v2, p3}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v3

    .line 515
    .local v3, "valueConverter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    new-instance v6, Lretrofit2/ParameterHandler$QueryMap;

    iget-object v7, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    move-object v8, p4

    check-cast v8, Lretrofit2/http/QueryMap;

    .line 516
    invoke-interface {v8}, Lretrofit2/http/QueryMap;->encoded()Z

    move-result v8

    invoke-direct {v6, v7, p1, v3, v8}, Lretrofit2/ParameterHandler$QueryMap;-><init>(Ljava/lang/reflect/Method;ILretrofit2/Converter;Z)V

    .line 515
    return-object v6

    .line 510
    .end local v2    # "valueType":Ljava/lang/reflect/Type;
    .end local v3    # "valueConverter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    :cond_17
    iget-object v2, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "@QueryMap keys must be of type String: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, p1, v6, v3}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 504
    .end local v4    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    .end local v5    # "keyType":Ljava/lang/reflect/Type;
    :cond_18
    iget-object v2, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, p1, v5, v3}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 500
    .end local v1    # "mapType":Ljava/lang/reflect/Type;
    :cond_19
    iget-object v1, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v2, "@QueryMap parameter type must be Map."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, p1, v2, v3}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 518
    .end local v0    # "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1a
    instance-of v0, p4, Lretrofit2/http/Header;

    if-eqz v0, :cond_1e

    .line 519
    invoke-direct {p0, p1, p2}, Lretrofit2/RequestFactory$Builder;->validateResolvableType(ILjava/lang/reflect/Type;)V

    .line 520
    move-object v0, p4

    check-cast v0, Lretrofit2/http/Header;

    .line 521
    .local v0, "header":Lretrofit2/http/Header;
    invoke-interface {v0}, Lretrofit2/http/Header;->value()Ljava/lang/String;

    move-result-object v2

    .line 523
    .local v2, "name":Ljava/lang/String;
    invoke-static {p2}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v5

    .line 524
    .local v5, "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v6, Ljava/lang/Iterable;

    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 525
    instance-of v6, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v6, :cond_1b

    .line 534
    move-object v1, p2

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .line 535
    .local v1, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-static {v3, v1}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v3

    .line 536
    .local v3, "iterableType":Ljava/lang/reflect/Type;
    iget-object v4, p0, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    invoke-virtual {v4, v3, p3}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v4

    .line 537
    .local v4, "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    new-instance v6, Lretrofit2/ParameterHandler$Header;

    invoke-interface {v0}, Lretrofit2/http/Header;->allowUnsafeNonAsciiValues()Z

    move-result v7

    invoke-direct {v6, v2, v4, v7}, Lretrofit2/ParameterHandler$Header;-><init>(Ljava/lang/String;Lretrofit2/Converter;Z)V

    .line 538
    invoke-virtual {v6}, Lretrofit2/ParameterHandler$Header;->iterable()Lretrofit2/ParameterHandler;

    move-result-object v6

    .line 537
    return-object v6

    .line 526
    .end local v1    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    .end local v3    # "iterableType":Ljava/lang/reflect/Type;
    .end local v4    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    :cond_1b
    iget-object v6, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 529
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 531
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    .line 526
    invoke-static {v6, p1, v1, v3}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 539
    :cond_1c
    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 540
    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lretrofit2/RequestFactory$Builder;->boxIfPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 541
    .local v1, "arrayComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v3, p0, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    .line 542
    invoke-virtual {v3, v1, p3}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v3

    .line 543
    .local v3, "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    new-instance v4, Lretrofit2/ParameterHandler$Header;

    invoke-interface {v0}, Lretrofit2/http/Header;->allowUnsafeNonAsciiValues()Z

    move-result v6

    invoke-direct {v4, v2, v3, v6}, Lretrofit2/ParameterHandler$Header;-><init>(Ljava/lang/String;Lretrofit2/Converter;Z)V

    .line 544
    invoke-virtual {v4}, Lretrofit2/ParameterHandler$Header;->array()Lretrofit2/ParameterHandler;

    move-result-object v4

    .line 543
    return-object v4

    .line 546
    .end local v1    # "arrayComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    :cond_1d
    iget-object v1, p0, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    invoke-virtual {v1, p2, p3}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v1

    .line 547
    .local v1, "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    new-instance v3, Lretrofit2/ParameterHandler$Header;

    invoke-interface {v0}, Lretrofit2/http/Header;->allowUnsafeNonAsciiValues()Z

    move-result v4

    invoke-direct {v3, v2, v1, v4}, Lretrofit2/ParameterHandler$Header;-><init>(Ljava/lang/String;Lretrofit2/Converter;Z)V

    return-object v3

    .line 550
    .end local v0    # "header":Lretrofit2/http/Header;
    .end local v1    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    .end local v2    # "name":Ljava/lang/String;
    .end local v5    # "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1e
    instance-of v0, p4, Lretrofit2/http/HeaderMap;

    if-eqz v0, :cond_23

    .line 551
    const-class v0, Lokhttp3/Headers;

    if-ne p2, v0, :cond_1f

    .line 552
    new-instance v0, Lretrofit2/ParameterHandler$Headers;

    iget-object v1, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    invoke-direct {v0, v1, p1}, Lretrofit2/ParameterHandler$Headers;-><init>(Ljava/lang/reflect/Method;I)V

    return-object v0

    .line 555
    :cond_1f
    invoke-direct {p0, p1, p2}, Lretrofit2/RequestFactory$Builder;->validateResolvableType(ILjava/lang/reflect/Type;)V

    .line 556
    invoke-static {p2}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 557
    .local v0, "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 560
    const-class v1, Ljava/util/Map;

    invoke-static {p2, v0, v1}, Lretrofit2/Utils;->getSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 561
    .local v1, "mapType":Ljava/lang/reflect/Type;
    instance-of v4, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_21

    .line 565
    move-object v4, v1

    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    .line 566
    .local v4, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-static {v3, v4}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v5

    .line 567
    .local v5, "keyType":Ljava/lang/reflect/Type;
    const-class v6, Ljava/lang/String;

    if-ne v6, v5, :cond_20

    .line 570
    invoke-static {v2, v4}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v2

    .line 571
    .local v2, "valueType":Ljava/lang/reflect/Type;
    iget-object v3, p0, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    invoke-virtual {v3, v2, p3}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v3

    .line 573
    .local v3, "valueConverter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    new-instance v6, Lretrofit2/ParameterHandler$HeaderMap;

    iget-object v7, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    move-object v8, p4

    check-cast v8, Lretrofit2/http/HeaderMap;

    .line 574
    invoke-interface {v8}, Lretrofit2/http/HeaderMap;->allowUnsafeNonAsciiValues()Z

    move-result v8

    invoke-direct {v6, v7, p1, v3, v8}, Lretrofit2/ParameterHandler$HeaderMap;-><init>(Ljava/lang/reflect/Method;ILretrofit2/Converter;Z)V

    .line 573
    return-object v6

    .line 568
    .end local v2    # "valueType":Ljava/lang/reflect/Type;
    .end local v3    # "valueConverter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    :cond_20
    iget-object v2, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "@HeaderMap keys must be of type String: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, p1, v6, v3}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 562
    .end local v4    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    .end local v5    # "keyType":Ljava/lang/reflect/Type;
    :cond_21
    iget-object v2, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, p1, v5, v3}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 558
    .end local v1    # "mapType":Ljava/lang/reflect/Type;
    :cond_22
    iget-object v1, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v2, "@HeaderMap parameter type must be Map or Headers."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, p1, v2, v3}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 576
    .end local v0    # "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_23
    instance-of v0, p4, Lretrofit2/http/Field;

    if-eqz v0, :cond_28

    .line 577
    invoke-direct {p0, p1, p2}, Lretrofit2/RequestFactory$Builder;->validateResolvableType(ILjava/lang/reflect/Type;)V

    .line 578
    iget-boolean v0, p0, Lretrofit2/RequestFactory$Builder;->isFormEncoded:Z

    if-eqz v0, :cond_27

    .line 581
    move-object v0, p4

    check-cast v0, Lretrofit2/http/Field;

    .line 582
    .local v0, "field":Lretrofit2/http/Field;
    invoke-interface {v0}, Lretrofit2/http/Field;->value()Ljava/lang/String;

    move-result-object v5

    .line 583
    .local v5, "name":Ljava/lang/String;
    invoke-interface {v0}, Lretrofit2/http/Field;->encoded()Z

    move-result v6

    .line 585
    .local v6, "encoded":Z
    iput-boolean v2, p0, Lretrofit2/RequestFactory$Builder;->gotField:Z

    .line 587
    invoke-static {p2}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    .line 588
    .local v2, "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v7, Ljava/lang/Iterable;

    invoke-virtual {v7, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_25

    .line 589
    instance-of v7, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v7, :cond_24

    .line 598
    move-object v1, p2

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .line 599
    .local v1, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-static {v3, v1}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v3

    .line 600
    .local v3, "iterableType":Ljava/lang/reflect/Type;
    iget-object v4, p0, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    invoke-virtual {v4, v3, p3}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v4

    .line 601
    .local v4, "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    new-instance v7, Lretrofit2/ParameterHandler$Field;

    invoke-direct {v7, v5, v4, v6}, Lretrofit2/ParameterHandler$Field;-><init>(Ljava/lang/String;Lretrofit2/Converter;Z)V

    invoke-virtual {v7}, Lretrofit2/ParameterHandler$Field;->iterable()Lretrofit2/ParameterHandler;

    move-result-object v7

    return-object v7

    .line 590
    .end local v1    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    .end local v3    # "iterableType":Ljava/lang/reflect/Type;
    .end local v4    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    :cond_24
    iget-object v7, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 593
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 595
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    .line 590
    invoke-static {v7, p1, v1, v3}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 602
    :cond_25
    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 603
    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lretrofit2/RequestFactory$Builder;->boxIfPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 604
    .local v1, "arrayComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v3, p0, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    .line 605
    invoke-virtual {v3, v1, p3}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v3

    .line 606
    .local v3, "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    new-instance v4, Lretrofit2/ParameterHandler$Field;

    invoke-direct {v4, v5, v3, v6}, Lretrofit2/ParameterHandler$Field;-><init>(Ljava/lang/String;Lretrofit2/Converter;Z)V

    invoke-virtual {v4}, Lretrofit2/ParameterHandler$Field;->array()Lretrofit2/ParameterHandler;

    move-result-object v4

    return-object v4

    .line 608
    .end local v1    # "arrayComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    :cond_26
    iget-object v1, p0, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    invoke-virtual {v1, p2, p3}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v1

    .line 609
    .local v1, "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    new-instance v3, Lretrofit2/ParameterHandler$Field;

    invoke-direct {v3, v5, v1, v6}, Lretrofit2/ParameterHandler$Field;-><init>(Ljava/lang/String;Lretrofit2/Converter;Z)V

    return-object v3

    .line 579
    .end local v0    # "field":Lretrofit2/http/Field;
    .end local v1    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    .end local v2    # "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "encoded":Z
    :cond_27
    iget-object v0, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v1, "@Field parameters can only be used with form encoding."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, p1, v1, v2}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 612
    :cond_28
    instance-of v0, p4, Lretrofit2/http/FieldMap;

    if-eqz v0, :cond_2d

    .line 613
    invoke-direct {p0, p1, p2}, Lretrofit2/RequestFactory$Builder;->validateResolvableType(ILjava/lang/reflect/Type;)V

    .line 614
    iget-boolean v0, p0, Lretrofit2/RequestFactory$Builder;->isFormEncoded:Z

    if-eqz v0, :cond_2c

    .line 618
    invoke-static {p2}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 619
    .local v0, "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 622
    const-class v1, Ljava/util/Map;

    invoke-static {p2, v0, v1}, Lretrofit2/Utils;->getSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 623
    .local v1, "mapType":Ljava/lang/reflect/Type;
    instance-of v4, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_2a

    .line 627
    move-object v4, v1

    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    .line 628
    .local v4, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-static {v3, v4}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v5

    .line 629
    .local v5, "keyType":Ljava/lang/reflect/Type;
    const-class v6, Ljava/lang/String;

    if-ne v6, v5, :cond_29

    .line 632
    invoke-static {v2, v4}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v3

    .line 633
    .local v3, "valueType":Ljava/lang/reflect/Type;
    iget-object v6, p0, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    invoke-virtual {v6, v3, p3}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v6

    .line 635
    .local v6, "valueConverter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    iput-boolean v2, p0, Lretrofit2/RequestFactory$Builder;->gotField:Z

    .line 636
    new-instance v2, Lretrofit2/ParameterHandler$FieldMap;

    iget-object v7, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    move-object v8, p4

    check-cast v8, Lretrofit2/http/FieldMap;

    .line 637
    invoke-interface {v8}, Lretrofit2/http/FieldMap;->encoded()Z

    move-result v8

    invoke-direct {v2, v7, p1, v6, v8}, Lretrofit2/ParameterHandler$FieldMap;-><init>(Ljava/lang/reflect/Method;ILretrofit2/Converter;Z)V

    .line 636
    return-object v2

    .line 630
    .end local v3    # "valueType":Ljava/lang/reflect/Type;
    .end local v6    # "valueConverter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    :cond_29
    iget-object v2, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "@FieldMap keys must be of type String: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, p1, v6, v3}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 624
    .end local v4    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    .end local v5    # "keyType":Ljava/lang/reflect/Type;
    :cond_2a
    iget-object v2, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, p1, v5, v3}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 620
    .end local v1    # "mapType":Ljava/lang/reflect/Type;
    :cond_2b
    iget-object v1, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v2, "@FieldMap parameter type must be Map."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, p1, v2, v3}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 615
    .end local v0    # "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2c
    iget-object v0, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v1, "@FieldMap parameters can only be used with form encoding."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, p1, v1, v2}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 639
    :cond_2d
    instance-of v0, p4, Lretrofit2/http/Part;

    if-eqz v0, :cond_3c

    .line 640
    invoke-direct {p0, p1, p2}, Lretrofit2/RequestFactory$Builder;->validateResolvableType(ILjava/lang/reflect/Type;)V

    .line 641
    iget-boolean v0, p0, Lretrofit2/RequestFactory$Builder;->isMultipart:Z

    if-eqz v0, :cond_3b

    .line 645
    move-object v0, p4

    check-cast v0, Lretrofit2/http/Part;

    .line 646
    .local v0, "part":Lretrofit2/http/Part;
    iput-boolean v2, p0, Lretrofit2/RequestFactory$Builder;->gotPart:Z

    .line 648
    invoke-interface {v0}, Lretrofit2/http/Part;->value()Ljava/lang/String;

    move-result-object v2

    .line 649
    .local v2, "partName":Ljava/lang/String;
    invoke-static {p2}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v5

    .line 650
    .local v5, "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_34

    .line 651
    const-class v6, Ljava/lang/Iterable;

    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    const-string v7, "@Part annotation must supply a name or use MultipartBody.Part parameter type."

    if-eqz v6, :cond_30

    .line 652
    instance-of v6, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v6, :cond_2f

    .line 661
    move-object v1, p2

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .line 662
    .local v1, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-static {v3, v1}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v4

    .line 663
    .local v4, "iterableType":Ljava/lang/reflect/Type;
    const-class v6, Lokhttp3/MultipartBody$Part;

    invoke-static {v4}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 669
    sget-object v3, Lretrofit2/ParameterHandler$RawPart;->INSTANCE:Lretrofit2/ParameterHandler$RawPart;

    invoke-virtual {v3}, Lretrofit2/ParameterHandler$RawPart;->iterable()Lretrofit2/ParameterHandler;

    move-result-object v3

    return-object v3

    .line 664
    :cond_2e
    iget-object v6, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v6, p1, v7, v3}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 653
    .end local v1    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    .end local v4    # "iterableType":Ljava/lang/reflect/Type;
    :cond_2f
    iget-object v6, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 656
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 658
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    .line 653
    invoke-static {v6, p1, v1, v3}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 670
    :cond_30
    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 671
    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 672
    .local v1, "arrayComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v4, Lokhttp3/MultipartBody$Part;

    invoke-virtual {v4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 678
    sget-object v3, Lretrofit2/ParameterHandler$RawPart;->INSTANCE:Lretrofit2/ParameterHandler$RawPart;

    invoke-virtual {v3}, Lretrofit2/ParameterHandler$RawPart;->array()Lretrofit2/ParameterHandler;

    move-result-object v3

    return-object v3

    .line 673
    :cond_31
    iget-object v4, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4, p1, v7, v3}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 679
    .end local v1    # "arrayComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_32
    const-class v1, Lokhttp3/MultipartBody$Part;

    invoke-virtual {v1, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 680
    sget-object v1, Lretrofit2/ParameterHandler$RawPart;->INSTANCE:Lretrofit2/ParameterHandler$RawPart;

    return-object v1

    .line 682
    :cond_33
    iget-object v1, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, p1, v7, v3}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 688
    :cond_34
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "form-data; name=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 693
    invoke-interface {v0}, Lretrofit2/http/Part;->encoding()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Content-Disposition"

    const-string v9, "Content-Transfer-Encoding"

    filled-new-array {v8, v6, v9, v7}, [Ljava/lang/String;

    move-result-object v6

    .line 689
    invoke-static {v6}, Lokhttp3/Headers;->of([Ljava/lang/String;)Lokhttp3/Headers;

    move-result-object v6

    .line 695
    .local v6, "headers":Lokhttp3/Headers;
    const-class v7, Ljava/lang/Iterable;

    invoke-virtual {v7, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    const-string v8, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation."

    if-eqz v7, :cond_37

    .line 696
    instance-of v7, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v7, :cond_36

    .line 705
    move-object v1, p2

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .line 706
    .local v1, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-static {v3, v1}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v4

    .line 707
    .restart local v4    # "iterableType":Ljava/lang/reflect/Type;
    const-class v7, Lokhttp3/MultipartBody$Part;

    invoke-static {v4}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_35

    .line 714
    iget-object v3, p0, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    iget-object v7, p0, Lretrofit2/RequestFactory$Builder;->methodAnnotations:[Ljava/lang/annotation/Annotation;

    .line 715
    invoke-virtual {v3, v4, p3, v7}, Lretrofit2/Retrofit;->requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v3

    .line 716
    .local v3, "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Lokhttp3/RequestBody;>;"
    new-instance v7, Lretrofit2/ParameterHandler$Part;

    iget-object v8, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    invoke-direct {v7, v8, p1, v6, v3}, Lretrofit2/ParameterHandler$Part;-><init>(Ljava/lang/reflect/Method;ILokhttp3/Headers;Lretrofit2/Converter;)V

    invoke-virtual {v7}, Lretrofit2/ParameterHandler$Part;->iterable()Lretrofit2/ParameterHandler;

    move-result-object v7

    return-object v7

    .line 708
    .end local v3    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Lokhttp3/RequestBody;>;"
    :cond_35
    iget-object v7, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v7, p1, v8, v3}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 697
    .end local v1    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    .end local v4    # "iterableType":Ljava/lang/reflect/Type;
    :cond_36
    iget-object v7, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 700
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 702
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    .line 697
    invoke-static {v7, p1, v1, v3}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 717
    :cond_37
    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 718
    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lretrofit2/RequestFactory$Builder;->boxIfPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 719
    .local v1, "arrayComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v4, Lokhttp3/MultipartBody$Part;

    invoke-virtual {v4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_38

    .line 726
    iget-object v3, p0, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    iget-object v4, p0, Lretrofit2/RequestFactory$Builder;->methodAnnotations:[Ljava/lang/annotation/Annotation;

    .line 727
    invoke-virtual {v3, v1, p3, v4}, Lretrofit2/Retrofit;->requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v3

    .line 728
    .restart local v3    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Lokhttp3/RequestBody;>;"
    new-instance v4, Lretrofit2/ParameterHandler$Part;

    iget-object v7, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    invoke-direct {v4, v7, p1, v6, v3}, Lretrofit2/ParameterHandler$Part;-><init>(Ljava/lang/reflect/Method;ILokhttp3/Headers;Lretrofit2/Converter;)V

    invoke-virtual {v4}, Lretrofit2/ParameterHandler$Part;->array()Lretrofit2/ParameterHandler;

    move-result-object v4

    return-object v4

    .line 720
    .end local v3    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Lokhttp3/RequestBody;>;"
    :cond_38
    iget-object v4, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4, p1, v8, v3}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 729
    .end local v1    # "arrayComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_39
    const-class v1, Lokhttp3/MultipartBody$Part;

    invoke-virtual {v1, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 736
    iget-object v1, p0, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    iget-object v3, p0, Lretrofit2/RequestFactory$Builder;->methodAnnotations:[Ljava/lang/annotation/Annotation;

    .line 737
    invoke-virtual {v1, p2, p3, v3}, Lretrofit2/Retrofit;->requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v1

    .line 738
    .local v1, "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Lokhttp3/RequestBody;>;"
    new-instance v3, Lretrofit2/ParameterHandler$Part;

    iget-object v4, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    invoke-direct {v3, v4, p1, v6, v1}, Lretrofit2/ParameterHandler$Part;-><init>(Ljava/lang/reflect/Method;ILokhttp3/Headers;Lretrofit2/Converter;)V

    return-object v3

    .line 730
    .end local v1    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Lokhttp3/RequestBody;>;"
    :cond_3a
    iget-object v1, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, p1, v8, v3}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 642
    .end local v0    # "part":Lretrofit2/http/Part;
    .end local v2    # "partName":Ljava/lang/String;
    .end local v5    # "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "headers":Lokhttp3/Headers;
    :cond_3b
    iget-object v0, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v1, "@Part parameters can only be used with multipart encoding."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, p1, v1, v2}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 742
    :cond_3c
    instance-of v0, p4, Lretrofit2/http/PartMap;

    if-eqz v0, :cond_42

    .line 743
    invoke-direct {p0, p1, p2}, Lretrofit2/RequestFactory$Builder;->validateResolvableType(ILjava/lang/reflect/Type;)V

    .line 744
    iget-boolean v0, p0, Lretrofit2/RequestFactory$Builder;->isMultipart:Z

    if-eqz v0, :cond_41

    .line 748
    iput-boolean v2, p0, Lretrofit2/RequestFactory$Builder;->gotPart:Z

    .line 749
    invoke-static {p2}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 750
    .local v0, "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 753
    const-class v1, Ljava/util/Map;

    invoke-static {p2, v0, v1}, Lretrofit2/Utils;->getSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 754
    .local v1, "mapType":Ljava/lang/reflect/Type;
    instance-of v4, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_3f

    .line 758
    move-object v4, v1

    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    .line 760
    .local v4, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-static {v3, v4}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v5

    .line 761
    .local v5, "keyType":Ljava/lang/reflect/Type;
    const-class v6, Ljava/lang/String;

    if-ne v6, v5, :cond_3e

    .line 765
    invoke-static {v2, v4}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v2

    .line 766
    .local v2, "valueType":Ljava/lang/reflect/Type;
    const-class v6, Lokhttp3/MultipartBody$Part;

    invoke-static {v2}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_3d

    .line 774
    iget-object v3, p0, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    iget-object v6, p0, Lretrofit2/RequestFactory$Builder;->methodAnnotations:[Ljava/lang/annotation/Annotation;

    .line 775
    invoke-virtual {v3, v2, p3, v6}, Lretrofit2/Retrofit;->requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v3

    .line 777
    .local v3, "valueConverter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Lokhttp3/RequestBody;>;"
    move-object v6, p4

    check-cast v6, Lretrofit2/http/PartMap;

    .line 778
    .local v6, "partMap":Lretrofit2/http/PartMap;
    new-instance v7, Lretrofit2/ParameterHandler$PartMap;

    iget-object v8, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    invoke-interface {v6}, Lretrofit2/http/PartMap;->encoding()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, p1, v3, v9}, Lretrofit2/ParameterHandler$PartMap;-><init>(Ljava/lang/reflect/Method;ILretrofit2/Converter;Ljava/lang/String;)V

    return-object v7

    .line 767
    .end local v3    # "valueConverter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Lokhttp3/RequestBody;>;"
    .end local v6    # "partMap":Lretrofit2/http/PartMap;
    :cond_3d
    iget-object v6, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v7, "@PartMap values cannot be MultipartBody.Part. Use @Part List<Part> or a different value type instead."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v6, p1, v7, v3}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 762
    .end local v2    # "valueType":Ljava/lang/reflect/Type;
    :cond_3e
    iget-object v2, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "@PartMap keys must be of type String: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, p1, v6, v3}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 755
    .end local v4    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    .end local v5    # "keyType":Ljava/lang/reflect/Type;
    :cond_3f
    iget-object v2, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, p1, v5, v3}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 751
    .end local v1    # "mapType":Ljava/lang/reflect/Type;
    :cond_40
    iget-object v1, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v2, "@PartMap parameter type must be Map."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, p1, v2, v3}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 745
    .end local v0    # "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_41
    iget-object v0, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v1, "@PartMap parameters can only be used with multipart encoding."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, p1, v1, v2}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 780
    :cond_42
    instance-of v0, p4, Lretrofit2/http/Body;

    if-eqz v0, :cond_45

    .line 781
    invoke-direct {p0, p1, p2}, Lretrofit2/RequestFactory$Builder;->validateResolvableType(ILjava/lang/reflect/Type;)V

    .line 782
    iget-boolean v0, p0, Lretrofit2/RequestFactory$Builder;->isFormEncoded:Z

    if-nez v0, :cond_44

    iget-boolean v0, p0, Lretrofit2/RequestFactory$Builder;->isMultipart:Z

    if-nez v0, :cond_44

    .line 786
    iget-boolean v0, p0, Lretrofit2/RequestFactory$Builder;->gotBody:Z

    if-nez v0, :cond_43

    .line 792
    :try_start_0
    iget-object v0, p0, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    iget-object v1, p0, Lretrofit2/RequestFactory$Builder;->methodAnnotations:[Ljava/lang/annotation/Annotation;

    invoke-virtual {v0, p2, p3, v1}, Lretrofit2/Retrofit;->requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 796
    .local v0, "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Lokhttp3/RequestBody;>;"
    nop

    .line 797
    iput-boolean v2, p0, Lretrofit2/RequestFactory$Builder;->gotBody:Z

    .line 798
    new-instance v1, Lretrofit2/ParameterHandler$Body;

    iget-object v2, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    invoke-direct {v1, v2, p1, v0}, Lretrofit2/ParameterHandler$Body;-><init>(Ljava/lang/reflect/Method;ILretrofit2/Converter;)V

    return-object v1

    .line 793
    .end local v0    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Lokhttp3/RequestBody;>;"
    :catch_0
    move-exception v0

    .line 795
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v1, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v2, "Unable to create @Body converter for %s"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v0, p1, v2, v3}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;Ljava/lang/Throwable;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 787
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_43
    iget-object v0, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v1, "Multiple @Body method annotations found."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, p1, v1, v2}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 783
    :cond_44
    iget-object v0, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v1, "@Body parameters cannot be used with form or multi-part encoding."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, p1, v1, v2}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 800
    :cond_45
    instance-of v0, p4, Lretrofit2/http/Tag;

    if-eqz v0, :cond_49

    .line 801
    invoke-direct {p0, p1, p2}, Lretrofit2/RequestFactory$Builder;->validateResolvableType(ILjava/lang/reflect/Type;)V

    .line 803
    invoke-static {p2}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lretrofit2/RequestFactory$Builder;->boxIfPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 804
    .local v0, "tagType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v1, p1, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_48

    .line 805
    iget-object v2, p0, Lretrofit2/RequestFactory$Builder;->parameterHandlers:[Lretrofit2/ParameterHandler;

    aget-object v2, v2, v1

    .line 806
    .local v2, "otherHandler":Lretrofit2/ParameterHandler;, "Lretrofit2/ParameterHandler<*>;"
    instance-of v4, v2, Lretrofit2/ParameterHandler$Tag;

    if-eqz v4, :cond_47

    move-object v4, v2

    check-cast v4, Lretrofit2/ParameterHandler$Tag;

    iget-object v4, v4, Lretrofit2/ParameterHandler$Tag;->cls:Ljava/lang/Class;

    .line 807
    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_46

    goto :goto_2

    .line 808
    :cond_46
    iget-object v4, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "@Tag type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 812
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is duplicate of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lretrofit2/Platform;->reflection:Lretrofit2/Reflection;

    iget-object v7, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    .line 814
    invoke-virtual {v6, v7, v1}, Lretrofit2/Reflection;->describeMethodParameter(Ljava/lang/reflect/Method;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and would always overwrite its value."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Object;

    .line 808
    invoke-static {v4, p1, v5, v3}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 804
    .end local v2    # "otherHandler":Lretrofit2/ParameterHandler;, "Lretrofit2/ParameterHandler<*>;"
    :cond_47
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 819
    .end local v1    # "i":I
    :cond_48
    new-instance v1, Lretrofit2/ParameterHandler$Tag;

    invoke-direct {v1, v0}, Lretrofit2/ParameterHandler$Tag;-><init>(Ljava/lang/Class;)V

    return-object v1

    .line 822
    .end local v0    # "tagType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_49
    const/4 v0, 0x0

    return-object v0
.end method

.method static parsePathParameters(Ljava/lang/String;)Ljava/util/Set;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 852
    sget-object v0, Lretrofit2/RequestFactory$Builder;->PARAM_URL_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 853
    .local v0, "m":Ljava/util/regex/Matcher;
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 854
    .local v1, "patterns":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 855
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 857
    :cond_0
    return-object v1
.end method

.method private validatePathName(ILjava/lang/String;)V
    .locals 3
    .param p1, "p"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 833
    sget-object v0, Lretrofit2/RequestFactory$Builder;->PARAM_NAME_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 842
    iget-object v0, p0, Lretrofit2/RequestFactory$Builder;->relativeUrlParamNames:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 845
    return-void

    .line 843
    :cond_0
    iget-object v0, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lretrofit2/RequestFactory$Builder;->relativeUrl:Ljava/lang/String;

    filled-new-array {v1, p2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "URL \"%s\" does not contain \"{%s}\"."

    invoke-static {v0, p1, v2, v1}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 834
    :cond_1
    iget-object v0, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    sget-object v1, Lretrofit2/RequestFactory$Builder;->PARAM_URL_REGEX:Ljava/util/regex/Pattern;

    .line 838
    invoke-virtual {v1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1, p2}, [Ljava/lang/Object;

    move-result-object v1

    .line 834
    const-string v2, "@Path parameter name must match %s. Found: %s"

    invoke-static {v0, p1, v2, v1}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private validateResolvableType(ILjava/lang/reflect/Type;)V
    .locals 3
    .param p1, "p"    # I
    .param p2, "type"    # Ljava/lang/reflect/Type;

    .line 826
    invoke-static {p2}, Lretrofit2/Utils;->hasUnresolvableType(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 830
    return-void

    .line 827
    :cond_0
    iget-object v0, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v1, "Parameter type must not include a type variable or wildcard: %s"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method build()Lretrofit2/RequestFactory;
    .locals 8

    .line 187
    iget-object v0, p0, Lretrofit2/RequestFactory$Builder;->methodAnnotations:[Ljava/lang/annotation/Annotation;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 188
    .local v4, "annotation":Ljava/lang/annotation/Annotation;
    invoke-direct {p0, v4}, Lretrofit2/RequestFactory$Builder;->parseMethodAnnotation(Ljava/lang/annotation/Annotation;)V

    .line 187
    .end local v4    # "annotation":Ljava/lang/annotation/Annotation;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 191
    :cond_0
    iget-object v0, p0, Lretrofit2/RequestFactory$Builder;->httpMethod:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 195
    iget-boolean v0, p0, Lretrofit2/RequestFactory$Builder;->hasBody:Z

    if-nez v0, :cond_3

    .line 196
    iget-boolean v0, p0, Lretrofit2/RequestFactory$Builder;->isMultipart:Z

    if-nez v0, :cond_2

    .line 201
    iget-boolean v0, p0, Lretrofit2/RequestFactory$Builder;->isFormEncoded:Z

    if-nez v0, :cond_1

    goto :goto_1

    .line 202
    :cond_1
    iget-object v0, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v1, "FormUrlEncoded can only be specified on HTTP methods with request body (e.g., @POST)."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 197
    :cond_2
    iget-object v0, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v1, "Multipart can only be specified on HTTP methods with request body (e.g., @POST)."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 209
    :cond_3
    :goto_1
    iget-object v0, p0, Lretrofit2/RequestFactory$Builder;->parameterAnnotationsArray:[[Ljava/lang/annotation/Annotation;

    array-length v0, v0

    .line 210
    .local v0, "parameterCount":I
    new-array v1, v0, [Lretrofit2/ParameterHandler;

    iput-object v1, p0, Lretrofit2/RequestFactory$Builder;->parameterHandlers:[Lretrofit2/ParameterHandler;

    .line 211
    const/4 v1, 0x0

    .local v1, "p":I
    add-int/lit8 v3, v0, -0x1

    .local v3, "lastParameter":I
    :goto_2
    if-ge v1, v0, :cond_5

    .line 212
    iget-object v4, p0, Lretrofit2/RequestFactory$Builder;->parameterHandlers:[Lretrofit2/ParameterHandler;

    iget-object v5, p0, Lretrofit2/RequestFactory$Builder;->parameterTypes:[Ljava/lang/reflect/Type;

    aget-object v5, v5, v1

    iget-object v6, p0, Lretrofit2/RequestFactory$Builder;->parameterAnnotationsArray:[[Ljava/lang/annotation/Annotation;

    aget-object v6, v6, v1

    if-ne v1, v3, :cond_4

    const/4 v7, 0x1

    goto :goto_3

    :cond_4
    move v7, v2

    .line 213
    :goto_3
    invoke-direct {p0, v1, v5, v6, v7}, Lretrofit2/RequestFactory$Builder;->parseParameter(ILjava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Z)Lretrofit2/ParameterHandler;

    move-result-object v5

    aput-object v5, v4, v1

    .line 211
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 216
    .end local v1    # "p":I
    .end local v3    # "lastParameter":I
    :cond_5
    iget-object v1, p0, Lretrofit2/RequestFactory$Builder;->relativeUrl:Ljava/lang/String;

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lretrofit2/RequestFactory$Builder;->gotUrl:Z

    if-eqz v1, :cond_6

    goto :goto_4

    .line 217
    :cond_6
    iget-object v1, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lretrofit2/RequestFactory$Builder;->httpMethod:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Missing either @%s URL or @Url parameter."

    invoke-static {v1, v3, v2}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 219
    :cond_7
    :goto_4
    iget-boolean v1, p0, Lretrofit2/RequestFactory$Builder;->isFormEncoded:Z

    if-nez v1, :cond_9

    iget-boolean v1, p0, Lretrofit2/RequestFactory$Builder;->isMultipart:Z

    if-nez v1, :cond_9

    iget-boolean v1, p0, Lretrofit2/RequestFactory$Builder;->hasBody:Z

    if-nez v1, :cond_9

    iget-boolean v1, p0, Lretrofit2/RequestFactory$Builder;->gotBody:Z

    if-nez v1, :cond_8

    goto :goto_5

    .line 220
    :cond_8
    iget-object v1, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v3, "Non-body HTTP method cannot contain @Body."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 222
    :cond_9
    :goto_5
    iget-boolean v1, p0, Lretrofit2/RequestFactory$Builder;->isFormEncoded:Z

    if-eqz v1, :cond_b

    iget-boolean v1, p0, Lretrofit2/RequestFactory$Builder;->gotField:Z

    if-eqz v1, :cond_a

    goto :goto_6

    .line 223
    :cond_a
    iget-object v1, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v3, "Form-encoded method must contain at least one @Field."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 225
    :cond_b
    :goto_6
    iget-boolean v1, p0, Lretrofit2/RequestFactory$Builder;->isMultipart:Z

    if-eqz v1, :cond_d

    iget-boolean v1, p0, Lretrofit2/RequestFactory$Builder;->gotPart:Z

    if-eqz v1, :cond_c

    goto :goto_7

    .line 226
    :cond_c
    iget-object v1, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v3, "Multipart method must contain at least one @Part."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 229
    :cond_d
    :goto_7
    new-instance v1, Lretrofit2/RequestFactory;

    invoke-direct {v1, p0}, Lretrofit2/RequestFactory;-><init>(Lretrofit2/RequestFactory$Builder;)V

    return-object v1

    .line 192
    .end local v0    # "parameterCount":I
    :cond_e
    iget-object v0, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v1, "HTTP method annotation is required (e.g., @GET, @POST, etc.)."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method
