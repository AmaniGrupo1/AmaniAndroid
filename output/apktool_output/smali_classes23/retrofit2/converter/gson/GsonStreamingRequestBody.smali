.class final Lretrofit2/converter/gson/GsonStreamingRequestBody;
.super Lokhttp3/RequestBody;
.source "GsonStreamingRequestBody.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lokhttp3/RequestBody;"
    }
.end annotation


# instance fields
.field private final adapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final gson:Lcom/google/gson/Gson;

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/gson/Gson;Lcom/google/gson/TypeAdapter;Ljava/lang/Object;)V
    .locals 0
    .param p1, "gson"    # Lcom/google/gson/Gson;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            "Lcom/google/gson/TypeAdapter<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 33
    .local p0, "this":Lretrofit2/converter/gson/GsonStreamingRequestBody;, "Lretrofit2/converter/gson/GsonStreamingRequestBody<TT;>;"
    .local p2, "adapter":Lcom/google/gson/TypeAdapter;, "Lcom/google/gson/TypeAdapter<TT;>;"
    .local p3, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    .line 34
    iput-object p1, p0, Lretrofit2/converter/gson/GsonStreamingRequestBody;->gson:Lcom/google/gson/Gson;

    .line 35
    iput-object p2, p0, Lretrofit2/converter/gson/GsonStreamingRequestBody;->adapter:Lcom/google/gson/TypeAdapter;

    .line 36
    iput-object p3, p0, Lretrofit2/converter/gson/GsonStreamingRequestBody;->value:Ljava/lang/Object;

    .line 37
    return-void
.end method


# virtual methods
.method public contentType()Lokhttp3/MediaType;
    .locals 1

    .line 41
    .local p0, "this":Lretrofit2/converter/gson/GsonStreamingRequestBody;, "Lretrofit2/converter/gson/GsonStreamingRequestBody<TT;>;"
    sget-object v0, Lretrofit2/converter/gson/GsonRequestBodyConverter;->MEDIA_TYPE:Lokhttp3/MediaType;

    return-object v0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .locals 3
    .param p1, "sink"    # Lokio/BufferedSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    .local p0, "this":Lretrofit2/converter/gson/GsonStreamingRequestBody;, "Lretrofit2/converter/gson/GsonStreamingRequestBody<TT;>;"
    iget-object v0, p0, Lretrofit2/converter/gson/GsonStreamingRequestBody;->gson:Lcom/google/gson/Gson;

    iget-object v1, p0, Lretrofit2/converter/gson/GsonStreamingRequestBody;->adapter:Lcom/google/gson/TypeAdapter;

    iget-object v2, p0, Lretrofit2/converter/gson/GsonStreamingRequestBody;->value:Ljava/lang/Object;

    invoke-static {p1, v0, v1, v2}, Lretrofit2/converter/gson/GsonRequestBodyConverter;->writeJson(Lokio/BufferedSink;Lcom/google/gson/Gson;Lcom/google/gson/TypeAdapter;Ljava/lang/Object;)V

    .line 47
    return-void
.end method
