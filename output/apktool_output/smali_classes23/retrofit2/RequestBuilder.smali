.class final Lretrofit2/RequestBuilder;
.super Ljava/lang/Object;
.source "RequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit2/RequestBuilder$ContentTypeOverridingRequestBody;
    }
.end annotation


# static fields
.field private static final HEX_DIGITS:[C

.field private static final PATH_SEGMENT_ALWAYS_ENCODE_SET:Ljava/lang/String; = " \"<>^`{}|\\?#"

.field private static final PATH_TRAVERSAL:Ljava/util/regex/Pattern;


# instance fields
.field private final baseUrl:Lokhttp3/HttpUrl;

.field private body:Lokhttp3/RequestBody;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private contentType:Lokhttp3/MediaType;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private formBuilder:Lokhttp3/FormBody$Builder;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final hasBody:Z

.field private final headersBuilder:Lokhttp3/Headers$Builder;

.field private final method:Ljava/lang/String;

.field private multipartBuilder:Lokhttp3/MultipartBody$Builder;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private relativeUrl:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final requestBuilder:Lokhttp3/Request$Builder;

.field private urlBuilder:Lokhttp3/HttpUrl$Builder;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lretrofit2/RequestBuilder;->HEX_DIGITS:[C

    .line 50
    const-string v0, "(.*/)?(\\.|%2e|%2E){1,2}(/.*)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lretrofit2/RequestBuilder;->PATH_TRAVERSAL:Ljava/util/regex/Pattern;

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method constructor <init>(Ljava/lang/String;Lokhttp3/HttpUrl;Ljava/lang/String;Lokhttp3/Headers;Lokhttp3/MediaType;ZZZ)V
    .locals 2
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "baseUrl"    # Lokhttp3/HttpUrl;
    .param p3, "relativeUrl"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "headers"    # Lokhttp3/Headers;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "contentType"    # Lokhttp3/MediaType;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "hasBody"    # Z
    .param p7, "isFormEncoded"    # Z
    .param p8, "isMultipart"    # Z

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lretrofit2/RequestBuilder;->method:Ljava/lang/String;

    .line 77
    iput-object p2, p0, Lretrofit2/RequestBuilder;->baseUrl:Lokhttp3/HttpUrl;

    .line 78
    iput-object p3, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    .line 79
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    iput-object v0, p0, Lretrofit2/RequestBuilder;->requestBuilder:Lokhttp3/Request$Builder;

    .line 80
    iput-object p5, p0, Lretrofit2/RequestBuilder;->contentType:Lokhttp3/MediaType;

    .line 81
    iput-boolean p6, p0, Lretrofit2/RequestBuilder;->hasBody:Z

    .line 83
    if-eqz p4, :cond_0

    .line 84
    invoke-virtual {p4}, Lokhttp3/Headers;->newBuilder()Lokhttp3/Headers$Builder;

    move-result-object v0

    iput-object v0, p0, Lretrofit2/RequestBuilder;->headersBuilder:Lokhttp3/Headers$Builder;

    goto :goto_0

    .line 86
    :cond_0
    new-instance v0, Lokhttp3/Headers$Builder;

    invoke-direct {v0}, Lokhttp3/Headers$Builder;-><init>()V

    iput-object v0, p0, Lretrofit2/RequestBuilder;->headersBuilder:Lokhttp3/Headers$Builder;

    .line 89
    :goto_0
    if-eqz p7, :cond_1

    .line 91
    new-instance v0, Lokhttp3/FormBody$Builder;

    invoke-direct {v0}, Lokhttp3/FormBody$Builder;-><init>()V

    iput-object v0, p0, Lretrofit2/RequestBuilder;->formBuilder:Lokhttp3/FormBody$Builder;

    goto :goto_1

    .line 92
    :cond_1
    if-eqz p8, :cond_2

    .line 94
    new-instance v0, Lokhttp3/MultipartBody$Builder;

    invoke-direct {v0}, Lokhttp3/MultipartBody$Builder;-><init>()V

    iput-object v0, p0, Lretrofit2/RequestBuilder;->multipartBuilder:Lokhttp3/MultipartBody$Builder;

    .line 95
    iget-object v0, p0, Lretrofit2/RequestBuilder;->multipartBuilder:Lokhttp3/MultipartBody$Builder;

    sget-object v1, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {v0, v1}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    .line 97
    :cond_2
    :goto_1
    return-void
.end method

.method private static canonicalizeForPath(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "alreadyEncoded"    # Z

    .line 137
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "limit":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 138
    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 139
    .local v2, "codePoint":I
    const/16 v3, 0x20

    if-lt v2, v3, :cond_1

    const/16 v3, 0x7f

    if-ge v2, v3, :cond_1

    .line 141
    const-string v3, " \"<>^`{}|\\?#"

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    if-nez p1, :cond_0

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_1

    const/16 v3, 0x25

    if-ne v2, v3, :cond_0

    goto :goto_1

    .line 137
    :cond_0
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0

    .line 144
    :cond_1
    :goto_1
    new-instance v3, Lokio/Buffer;

    invoke-direct {v3}, Lokio/Buffer;-><init>()V

    .line 145
    .local v3, "out":Lokio/Buffer;
    const/4 v4, 0x0

    invoke-virtual {v3, p0, v4, v0}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;

    .line 146
    invoke-static {v3, p0, v0, v1, p1}, Lretrofit2/RequestBuilder;->canonicalizeForPath(Lokio/Buffer;Ljava/lang/String;IIZ)V

    .line 147
    invoke-virtual {v3}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 152
    .end local v0    # "i":I
    .end local v1    # "limit":I
    .end local v2    # "codePoint":I
    .end local v3    # "out":Lokio/Buffer;
    :cond_2
    return-object p0
.end method

.method private static canonicalizeForPath(Lokio/Buffer;Ljava/lang/String;IIZ)V
    .locals 11
    .param p0, "out"    # Lokio/Buffer;
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I
    .param p4, "alreadyEncoded"    # Z

    .line 157
    const/4 v0, 0x0

    .line 159
    .local v0, "utf8Buffer":Lokio/Buffer;
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_6

    .line 160
    invoke-virtual {p1, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 161
    .local v2, "codePoint":I
    if-eqz p4, :cond_1

    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    const/16 v3, 0xa

    if-eq v2, v3, :cond_0

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    const/16 v3, 0xd

    if-ne v2, v3, :cond_1

    :cond_0
    goto :goto_3

    .line 164
    :cond_1
    const/16 v3, 0x20

    const/16 v4, 0x25

    if-lt v2, v3, :cond_3

    const/16 v3, 0x7f

    if-ge v2, v3, :cond_3

    .line 166
    const-string v3, " \"<>^`{}|\\?#"

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v5, -0x1

    if-ne v3, v5, :cond_3

    if-nez p4, :cond_2

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_3

    if-ne v2, v4, :cond_2

    goto :goto_1

    .line 182
    :cond_2
    invoke-virtual {p0, v2}, Lokio/Buffer;->writeUtf8CodePoint(I)Lokio/Buffer;

    goto :goto_3

    .line 169
    :cond_3
    :goto_1
    if-nez v0, :cond_4

    .line 170
    new-instance v3, Lokio/Buffer;

    invoke-direct {v3}, Lokio/Buffer;-><init>()V

    move-object v0, v3

    .line 172
    :cond_4
    invoke-virtual {v0, v2}, Lokio/Buffer;->writeUtf8CodePoint(I)Lokio/Buffer;

    .line 173
    const-wide/16 v5, 0x0

    .local v5, "j":J
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v7

    .local v7, "size":J
    :goto_2
    cmp-long v3, v5, v7

    if-gez v3, :cond_5

    .line 174
    invoke-virtual {v0, v5, v6}, Lokio/Buffer;->getByte(J)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    .line 175
    .local v3, "b":I
    invoke-virtual {p0, v4}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 176
    sget-object v9, Lretrofit2/RequestBuilder;->HEX_DIGITS:[C

    shr-int/lit8 v10, v3, 0x4

    and-int/lit8 v10, v10, 0xf

    aget-char v9, v9, v10

    invoke-virtual {p0, v9}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 177
    sget-object v9, Lretrofit2/RequestBuilder;->HEX_DIGITS:[C

    and-int/lit8 v10, v3, 0xf

    aget-char v9, v9, v10

    invoke-virtual {p0, v9}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 173
    .end local v3    # "b":I
    const-wide/16 v9, 0x1

    add-long/2addr v5, v9

    goto :goto_2

    .line 179
    .end local v5    # "j":J
    .end local v7    # "size":J
    :cond_5
    invoke-virtual {v0}, Lokio/Buffer;->clear()V

    .line 159
    :goto_3
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0

    .line 185
    .end local v1    # "i":I
    .end local v2    # "codePoint":I
    :cond_6
    return-void
.end method


# virtual methods
.method addFormField(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "encoded"    # Z

    .line 209
    nop

    .line 212
    iget-object v0, p0, Lretrofit2/RequestBuilder;->formBuilder:Lokhttp3/FormBody$Builder;

    .line 209
    if-eqz p3, :cond_0

    .line 210
    invoke-virtual {v0, p1, p2}, Lokhttp3/FormBody$Builder;->addEncoded(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    goto :goto_0

    .line 212
    :cond_0
    invoke-virtual {v0, p1, p2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 214
    :goto_0
    return-void
.end method

.method addHeader(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "allowUnsafeNonAsciiValues"    # Z

    .line 104
    const-string v0, "Content-Type"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    :try_start_0
    invoke-static {p2}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    iput-object v0, p0, Lretrofit2/RequestBuilder;->contentType:Lokhttp3/MediaType;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Malformed content type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 110
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    nop

    .line 113
    iget-object v0, p0, Lretrofit2/RequestBuilder;->headersBuilder:Lokhttp3/Headers$Builder;

    .line 110
    if-eqz p3, :cond_1

    .line 111
    invoke-virtual {v0, p1, p2}, Lokhttp3/Headers$Builder;->addUnsafeNonAscii(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    goto :goto_0

    .line 113
    :cond_1
    invoke-virtual {v0, p1, p2}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 115
    :goto_0
    return-void
.end method

.method addHeaders(Lokhttp3/Headers;)V
    .locals 1
    .param p1, "headers"    # Lokhttp3/Headers;

    .line 118
    iget-object v0, p0, Lretrofit2/RequestBuilder;->headersBuilder:Lokhttp3/Headers$Builder;

    invoke-virtual {v0, p1}, Lokhttp3/Headers$Builder;->addAll(Lokhttp3/Headers;)Lokhttp3/Headers$Builder;

    .line 119
    return-void
.end method

.method addPart(Lokhttp3/Headers;Lokhttp3/RequestBody;)V
    .locals 1
    .param p1, "headers"    # Lokhttp3/Headers;
    .param p2, "body"    # Lokhttp3/RequestBody;

    .line 218
    iget-object v0, p0, Lretrofit2/RequestBuilder;->multipartBuilder:Lokhttp3/MultipartBody$Builder;

    invoke-virtual {v0, p1, p2}, Lokhttp3/MultipartBody$Builder;->addPart(Lokhttp3/Headers;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    .line 219
    return-void
.end method

.method addPart(Lokhttp3/MultipartBody$Part;)V
    .locals 1
    .param p1, "part"    # Lokhttp3/MultipartBody$Part;

    .line 223
    iget-object v0, p0, Lretrofit2/RequestBuilder;->multipartBuilder:Lokhttp3/MultipartBody$Builder;

    invoke-virtual {v0, p1}, Lokhttp3/MultipartBody$Builder;->addPart(Lokhttp3/MultipartBody$Part;)Lokhttp3/MultipartBody$Builder;

    .line 224
    return-void
.end method

.method addPathParam(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "encoded"    # Z

    .line 122
    iget-object v0, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 126
    invoke-static {p2, p3}, Lretrofit2/RequestBuilder;->canonicalizeForPath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "replacement":Ljava/lang/String;
    iget-object v1, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, "newRelativeUrl":Ljava/lang/String;
    sget-object v2, Lretrofit2/RequestBuilder;->PATH_TRAVERSAL:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_0

    .line 132
    iput-object v1, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    .line 133
    return-void

    .line 129
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@Path parameters shouldn\'t perform path traversal (\'.\' or \'..\'): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 124
    .end local v0    # "replacement":Ljava/lang/String;
    .end local v1    # "newRelativeUrl":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method addQueryParam(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "encoded"    # Z

    .line 188
    iget-object v0, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lretrofit2/RequestBuilder;->baseUrl:Lokhttp3/HttpUrl;

    iget-object v1, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl;->newBuilder(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    iput-object v0, p0, Lretrofit2/RequestBuilder;->urlBuilder:Lokhttp3/HttpUrl$Builder;

    .line 191
    iget-object v0, p0, Lretrofit2/RequestBuilder;->urlBuilder:Lokhttp3/HttpUrl$Builder;

    if-eqz v0, :cond_0

    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    goto :goto_0

    .line 192
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Malformed URL. Base: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lretrofit2/RequestBuilder;->baseUrl:Lokhttp3/HttpUrl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Relative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_1
    :goto_0
    nop

    .line 203
    iget-object v0, p0, Lretrofit2/RequestBuilder;->urlBuilder:Lokhttp3/HttpUrl$Builder;

    .line 198
    if-eqz p3, :cond_2

    .line 200
    invoke-virtual {v0, p1, p2}, Lokhttp3/HttpUrl$Builder;->addEncodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    goto :goto_1

    .line 203
    :cond_2
    invoke-virtual {v0, p1, p2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 205
    :goto_1
    return-void
.end method

.method addTag(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 231
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lretrofit2/RequestBuilder;->requestBuilder:Lokhttp3/Request$Builder;

    invoke-virtual {v0, p1, p2}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Class;Ljava/lang/Object;)Lokhttp3/Request$Builder;

    .line 232
    return-void
.end method

.method get()Lokhttp3/Request$Builder;
    .locals 7

    .line 236
    iget-object v0, p0, Lretrofit2/RequestBuilder;->urlBuilder:Lokhttp3/HttpUrl$Builder;

    .line 237
    .local v0, "urlBuilder":Lokhttp3/HttpUrl$Builder;
    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {v0}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v1

    .local v1, "url":Lokhttp3/HttpUrl;
    goto :goto_0

    .line 242
    .end local v1    # "url":Lokhttp3/HttpUrl;
    :cond_0
    iget-object v1, p0, Lretrofit2/RequestBuilder;->baseUrl:Lokhttp3/HttpUrl;

    iget-object v2, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lokhttp3/HttpUrl;->resolve(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v1

    .line 243
    .restart local v1    # "url":Lokhttp3/HttpUrl;
    if-eqz v1, :cond_6

    .line 249
    :goto_0
    iget-object v2, p0, Lretrofit2/RequestBuilder;->body:Lokhttp3/RequestBody;

    .line 250
    .local v2, "body":Lokhttp3/RequestBody;
    if-nez v2, :cond_3

    .line 252
    iget-object v3, p0, Lretrofit2/RequestBuilder;->formBuilder:Lokhttp3/FormBody$Builder;

    if-eqz v3, :cond_1

    .line 253
    iget-object v3, p0, Lretrofit2/RequestBuilder;->formBuilder:Lokhttp3/FormBody$Builder;

    invoke-virtual {v3}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object v2

    goto :goto_1

    .line 254
    :cond_1
    iget-object v3, p0, Lretrofit2/RequestBuilder;->multipartBuilder:Lokhttp3/MultipartBody$Builder;

    if-eqz v3, :cond_2

    .line 255
    iget-object v3, p0, Lretrofit2/RequestBuilder;->multipartBuilder:Lokhttp3/MultipartBody$Builder;

    invoke-virtual {v3}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object v2

    goto :goto_1

    .line 256
    :cond_2
    iget-boolean v3, p0, Lretrofit2/RequestBuilder;->hasBody:Z

    if-eqz v3, :cond_3

    .line 258
    const/4 v3, 0x0

    new-array v3, v3, [B

    const/4 v4, 0x0

    invoke-static {v4, v3}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object v2

    .line 262
    :cond_3
    :goto_1
    iget-object v3, p0, Lretrofit2/RequestBuilder;->contentType:Lokhttp3/MediaType;

    .line 263
    .local v3, "contentType":Lokhttp3/MediaType;
    if-eqz v3, :cond_5

    .line 264
    if-eqz v2, :cond_4

    .line 265
    new-instance v4, Lretrofit2/RequestBuilder$ContentTypeOverridingRequestBody;

    invoke-direct {v4, v2, v3}, Lretrofit2/RequestBuilder$ContentTypeOverridingRequestBody;-><init>(Lokhttp3/RequestBody;Lokhttp3/MediaType;)V

    move-object v2, v4

    goto :goto_2

    .line 267
    :cond_4
    iget-object v4, p0, Lretrofit2/RequestBuilder;->headersBuilder:Lokhttp3/Headers$Builder;

    const-string v5, "Content-Type"

    invoke-virtual {v3}, Lokhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 271
    :cond_5
    :goto_2
    iget-object v4, p0, Lretrofit2/RequestBuilder;->requestBuilder:Lokhttp3/Request$Builder;

    invoke-virtual {v4, v1}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v4

    iget-object v5, p0, Lretrofit2/RequestBuilder;->headersBuilder:Lokhttp3/Headers$Builder;

    invoke-virtual {v5}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v5

    invoke-virtual {v4, v5}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object v4

    iget-object v5, p0, Lretrofit2/RequestBuilder;->method:Ljava/lang/String;

    invoke-virtual {v4, v5, v2}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v4

    return-object v4

    .line 244
    .end local v2    # "body":Lokhttp3/RequestBody;
    .end local v3    # "contentType":Lokhttp3/MediaType;
    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Malformed URL. Base: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lretrofit2/RequestBuilder;->baseUrl:Lokhttp3/HttpUrl;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Relative: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method setBody(Lokhttp3/RequestBody;)V
    .locals 0
    .param p1, "body"    # Lokhttp3/RequestBody;

    .line 227
    iput-object p1, p0, Lretrofit2/RequestBuilder;->body:Lokhttp3/RequestBody;

    .line 228
    return-void
.end method

.method setRelativeUrl(Ljava/lang/Object;)V
    .locals 1
    .param p1, "relativeUrl"    # Ljava/lang/Object;

    .line 100
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    .line 101
    return-void
.end method
