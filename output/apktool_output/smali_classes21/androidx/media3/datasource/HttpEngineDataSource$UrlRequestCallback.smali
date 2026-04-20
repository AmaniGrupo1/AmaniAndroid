.class final Landroidx/media3/datasource/HttpEngineDataSource$UrlRequestCallback;
.super Ljava/lang/Object;
.source "HttpEngineDataSource.java"

# interfaces
.implements Landroid/net/http/UrlRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/datasource/HttpEngineDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "UrlRequestCallback"
.end annotation


# instance fields
.field private volatile isClosed:Z

.field final synthetic this$0:Landroidx/media3/datasource/HttpEngineDataSource;


# direct methods
.method constructor <init>(Landroidx/media3/datasource/HttpEngineDataSource;)V
    .locals 1
    .param p1, "this$0"    # Landroidx/media3/datasource/HttpEngineDataSource;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1001
    iput-object p1, p0, Landroidx/media3/datasource/HttpEngineDataSource$UrlRequestCallback;->this$0:Landroidx/media3/datasource/HttpEngineDataSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1002
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/datasource/HttpEngineDataSource$UrlRequestCallback;->isClosed:Z

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1005
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/datasource/HttpEngineDataSource$UrlRequestCallback;->isClosed:Z

    .line 1006
    return-void
.end method

.method public declared-synchronized onCanceled(Landroid/net/http/UrlRequest;Landroid/net/http/UrlResponseInfo;)V
    .locals 0
    .param p1, "request"    # Landroid/net/http/UrlRequest;
    .param p2, "info"    # Landroid/net/http/UrlResponseInfo;

    monitor-enter p0

    .line 1150
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onFailed(Landroid/net/http/UrlRequest;Landroid/net/http/UrlResponseInfo;Landroid/net/http/HttpException;)V
    .locals 2
    .param p1, "request"    # Landroid/net/http/UrlRequest;
    .param p2, "info"    # Landroid/net/http/UrlResponseInfo;
    .param p3, "error"    # Landroid/net/http/HttpException;

    monitor-enter p0

    .line 1134
    :try_start_0
    iget-boolean v0, p0, Landroidx/media3/datasource/HttpEngineDataSource$UrlRequestCallback;->isClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1135
    monitor-exit p0

    return-void

    .line 1137
    :cond_0
    :try_start_1
    instance-of v0, p3, Landroid/net/http/NetworkException;

    if-eqz v0, :cond_1

    move-object v0, p3

    check-cast v0, Landroid/net/http/NetworkException;

    .line 1138
    invoke-virtual {v0}, Landroid/net/http/NetworkException;->getErrorCode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1140
    iget-object v0, p0, Landroidx/media3/datasource/HttpEngineDataSource$UrlRequestCallback;->this$0:Landroidx/media3/datasource/HttpEngineDataSource;

    new-instance v1, Ljava/net/UnknownHostException;

    invoke-direct {v1}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v0, v1}, Landroidx/media3/datasource/HttpEngineDataSource;->access$102(Landroidx/media3/datasource/HttpEngineDataSource;Ljava/io/IOException;)Ljava/io/IOException;

    goto :goto_0

    .line 1142
    .end local p0    # "this":Landroidx/media3/datasource/HttpEngineDataSource$UrlRequestCallback;
    :cond_1
    iget-object v0, p0, Landroidx/media3/datasource/HttpEngineDataSource$UrlRequestCallback;->this$0:Landroidx/media3/datasource/HttpEngineDataSource;

    invoke-static {v0, p3}, Landroidx/media3/datasource/HttpEngineDataSource;->access$102(Landroidx/media3/datasource/HttpEngineDataSource;Ljava/io/IOException;)Ljava/io/IOException;

    .line 1144
    :goto_0
    iget-object v0, p0, Landroidx/media3/datasource/HttpEngineDataSource$UrlRequestCallback;->this$0:Landroidx/media3/datasource/HttpEngineDataSource;

    invoke-static {v0}, Landroidx/media3/datasource/HttpEngineDataSource;->access$200(Landroidx/media3/datasource/HttpEngineDataSource;)Landroidx/media3/common/util/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/util/ConditionVariable;->open()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1145
    monitor-exit p0

    return-void

    .line 1133
    .end local p1    # "request":Landroid/net/http/UrlRequest;
    .end local p2    # "info":Landroid/net/http/UrlResponseInfo;
    .end local p3    # "error":Landroid/net/http/HttpException;
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized onReadCompleted(Landroid/net/http/UrlRequest;Landroid/net/http/UrlResponseInfo;Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "request"    # Landroid/net/http/UrlRequest;
    .param p2, "info"    # Landroid/net/http/UrlResponseInfo;
    .param p3, "buffer"    # Ljava/nio/ByteBuffer;

    monitor-enter p0

    .line 1116
    :try_start_0
    iget-boolean v0, p0, Landroidx/media3/datasource/HttpEngineDataSource$UrlRequestCallback;->isClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1117
    monitor-exit p0

    return-void

    .line 1119
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroidx/media3/datasource/HttpEngineDataSource$UrlRequestCallback;->this$0:Landroidx/media3/datasource/HttpEngineDataSource;

    invoke-static {v0}, Landroidx/media3/datasource/HttpEngineDataSource;->access$200(Landroidx/media3/datasource/HttpEngineDataSource;)Landroidx/media3/common/util/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/util/ConditionVariable;->open()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1120
    monitor-exit p0

    return-void

    .line 1115
    .end local p0    # "this":Landroidx/media3/datasource/HttpEngineDataSource$UrlRequestCallback;
    .end local p1    # "request":Landroid/net/http/UrlRequest;
    .end local p2    # "info":Landroid/net/http/UrlResponseInfo;
    .end local p3    # "buffer":Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized onRedirectReceived(Landroid/net/http/UrlRequest;Landroid/net/http/UrlResponseInfo;Ljava/lang/String;)V
    .locals 10
    .param p1, "request"    # Landroid/net/http/UrlRequest;
    .param p2, "info"    # Landroid/net/http/UrlResponseInfo;
    .param p3, "newLocationUrl"    # Ljava/lang/String;

    monitor-enter p0

    .line 1011
    :try_start_0
    iget-boolean v0, p0, Landroidx/media3/datasource/HttpEngineDataSource$UrlRequestCallback;->isClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1012
    monitor-exit p0

    return-void

    .line 1014
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroidx/media3/datasource/HttpEngineDataSource$UrlRequestCallback;->this$0:Landroidx/media3/datasource/HttpEngineDataSource;

    invoke-static {v0}, Landroidx/media3/datasource/HttpEngineDataSource;->access$000(Landroidx/media3/datasource/HttpEngineDataSource;)Landroidx/media3/datasource/DataSpec;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/datasource/DataSpec;

    move-object v6, v0

    .line 1015
    .local v6, "dataSpec":Landroidx/media3/datasource/DataSpec;
    invoke-virtual {p2}, Landroid/net/http/UrlResponseInfo;->getHttpStatusCode()I

    move-result v2

    .line 1016
    .local v2, "responseCode":I
    iget v0, v6, Landroidx/media3/datasource/DataSpec;->httpMethod:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1019
    const/16 v0, 0x133

    if-eq v2, v0, :cond_1

    const/16 v0, 0x134

    if-ne v2, v0, :cond_2

    .line 1020
    :cond_1
    iget-object v0, p0, Landroidx/media3/datasource/HttpEngineDataSource$UrlRequestCallback;->this$0:Landroidx/media3/datasource/HttpEngineDataSource;

    new-instance v1, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;

    .line 1023
    invoke-virtual {p2}, Landroid/net/http/UrlResponseInfo;->getHttpStatusText()Ljava/lang/String;

    move-result-object v3

    .line 1025
    invoke-virtual {p2}, Landroid/net/http/UrlResponseInfo;->getHeaders()Landroid/net/http/HeaderBlock;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/http/HeaderBlock;->getAsMap()Ljava/util/Map;

    move-result-object v5

    sget-object v7, Landroidx/media3/common/util/Util;->EMPTY_BYTE_ARRAY:[B

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v7}, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;-><init>(ILjava/lang/String;Ljava/io/IOException;Ljava/util/Map;Landroidx/media3/datasource/DataSpec;[B)V

    .line 1020
    invoke-static {v0, v1}, Landroidx/media3/datasource/HttpEngineDataSource;->access$102(Landroidx/media3/datasource/HttpEngineDataSource;Ljava/io/IOException;)Ljava/io/IOException;

    .line 1028
    iget-object v0, p0, Landroidx/media3/datasource/HttpEngineDataSource$UrlRequestCallback;->this$0:Landroidx/media3/datasource/HttpEngineDataSource;

    invoke-static {v0}, Landroidx/media3/datasource/HttpEngineDataSource;->access$200(Landroidx/media3/datasource/HttpEngineDataSource;)Landroidx/media3/common/util/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/util/ConditionVariable;->open()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1029
    monitor-exit p0

    return-void

    .line 1032
    .end local p0    # "this":Landroidx/media3/datasource/HttpEngineDataSource$UrlRequestCallback;
    :cond_2
    :try_start_2
    iget-object v0, p0, Landroidx/media3/datasource/HttpEngineDataSource$UrlRequestCallback;->this$0:Landroidx/media3/datasource/HttpEngineDataSource;

    invoke-static {v0}, Landroidx/media3/datasource/HttpEngineDataSource;->access$300(Landroidx/media3/datasource/HttpEngineDataSource;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1033
    iget-object v0, p0, Landroidx/media3/datasource/HttpEngineDataSource$UrlRequestCallback;->this$0:Landroidx/media3/datasource/HttpEngineDataSource;

    invoke-static {v0}, Landroidx/media3/datasource/HttpEngineDataSource;->access$400(Landroidx/media3/datasource/HttpEngineDataSource;)V

    .line 1036
    :cond_3
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v0

    .line 1038
    .local v0, "cookieHandler":Ljava/net/CookieHandler;
    if-nez v0, :cond_4

    iget-object v3, p0, Landroidx/media3/datasource/HttpEngineDataSource$UrlRequestCallback;->this$0:Landroidx/media3/datasource/HttpEngineDataSource;

    invoke-static {v3}, Landroidx/media3/datasource/HttpEngineDataSource;->access$500(Landroidx/media3/datasource/HttpEngineDataSource;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1041
    new-instance v3, Ljava/net/CookieManager;

    invoke-direct {v3}, Ljava/net/CookieManager;-><init>()V

    move-object v0, v3

    goto :goto_0

    .line 1044
    :cond_4
    move-object v3, v0

    .end local v0    # "cookieHandler":Ljava/net/CookieHandler;
    .local v3, "cookieHandler":Ljava/net/CookieHandler;
    :goto_0
    invoke-virtual {p2}, Landroid/net/http/UrlResponseInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 1045
    .local v4, "url":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/net/http/UrlResponseInfo;->getHeaders()Landroid/net/http/HeaderBlock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/http/HeaderBlock;->getAsMap()Ljava/util/Map;

    move-result-object v0

    move-object v5, v0

    .line 1046
    .local v5, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-static {v4, v5, v3}, Landroidx/media3/datasource/HttpUtil;->storeCookiesFromHeaders(Ljava/lang/String;Ljava/util/Map;Ljava/net/CookieHandler;)V

    .line 1047
    invoke-static {v4, v5, v3}, Landroidx/media3/datasource/HttpUtil;->getCookieHeader(Ljava/lang/String;Ljava/util/Map;Ljava/net/CookieHandler;)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .line 1049
    .local v7, "cookieHeaders":Ljava/lang/String;
    iget-object v0, p0, Landroidx/media3/datasource/HttpEngineDataSource$UrlRequestCallback;->this$0:Landroidx/media3/datasource/HttpEngineDataSource;

    .line 1050
    invoke-static {v0}, Landroidx/media3/datasource/HttpEngineDataSource;->access$600(Landroidx/media3/datasource/HttpEngineDataSource;)Z

    move-result v0

    const/4 v8, 0x1

    if-eqz v0, :cond_5

    iget v0, v6, Landroidx/media3/datasource/DataSpec;->httpMethod:I

    if-ne v0, v1, :cond_5

    const/16 v0, 0x12e

    if-ne v2, v0, :cond_5

    move v0, v8

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    move v9, v0

    .line 1056
    .local v9, "shouldKeepPost":Z
    if-nez v9, :cond_7

    .line 1058
    iget-object v0, p0, Landroidx/media3/datasource/HttpEngineDataSource$UrlRequestCallback;->this$0:Landroidx/media3/datasource/HttpEngineDataSource;

    invoke-static {v0}, Landroidx/media3/datasource/HttpEngineDataSource;->access$500(Landroidx/media3/datasource/HttpEngineDataSource;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1059
    :cond_6
    invoke-virtual {p1}, Landroid/net/http/UrlRequest;->followRedirect()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1060
    monitor-exit p0

    return-void

    .line 1064
    :cond_7
    :try_start_3
    invoke-virtual {p1}, Landroid/net/http/UrlRequest;->cancel()V

    .line 1066
    if-nez v9, :cond_8

    iget v0, v6, Landroidx/media3/datasource/DataSpec;->httpMethod:I

    if-ne v0, v1, :cond_8

    .line 1069
    nop

    .line 1071
    invoke-virtual {v6}, Landroidx/media3/datasource/DataSpec;->buildUpon()Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v0

    .line 1072
    invoke-virtual {v0, p3}, Landroidx/media3/datasource/DataSpec$Builder;->setUri(Ljava/lang/String;)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v0

    .line 1073
    invoke-virtual {v0, v8}, Landroidx/media3/datasource/DataSpec$Builder;->setHttpMethod(I)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v0

    .line 1074
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media3/datasource/DataSpec$Builder;->setHttpBody([B)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v0

    .line 1075
    invoke-virtual {v0}, Landroidx/media3/datasource/DataSpec$Builder;->build()Landroidx/media3/datasource/DataSpec;

    move-result-object v0

    .local v0, "redirectUrlDataSpec":Landroidx/media3/datasource/DataSpec;
    goto :goto_2

    .line 1077
    .end local v0    # "redirectUrlDataSpec":Landroidx/media3/datasource/DataSpec;
    :cond_8
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroidx/media3/datasource/DataSpec;->withUri(Landroid/net/Uri;)Landroidx/media3/datasource/DataSpec;

    move-result-object v0

    .line 1080
    .restart local v0    # "redirectUrlDataSpec":Landroidx/media3/datasource/DataSpec;
    :goto_2
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1081
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1082
    .local v1, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v8, v6, Landroidx/media3/datasource/DataSpec;->httpRequestHeaders:Ljava/util/Map;

    invoke-interface {v1, v8}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1083
    const-string v8, "Cookie"

    invoke-interface {v1, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1084
    nop

    .line 1085
    invoke-virtual {v0}, Landroidx/media3/datasource/DataSpec;->buildUpon()Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroidx/media3/datasource/DataSpec$Builder;->setHttpRequestHeaders(Ljava/util/Map;)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/media3/datasource/DataSpec$Builder;->build()Landroidx/media3/datasource/DataSpec;

    move-result-object v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v8

    move-object v1, v0

    goto :goto_3

    .line 1080
    .end local v1    # "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_9
    move-object v1, v0

    .line 1090
    .end local v0    # "redirectUrlDataSpec":Landroidx/media3/datasource/DataSpec;
    .local v1, "redirectUrlDataSpec":Landroidx/media3/datasource/DataSpec;
    :goto_3
    :try_start_4
    iget-object v0, p0, Landroidx/media3/datasource/HttpEngineDataSource$UrlRequestCallback;->this$0:Landroidx/media3/datasource/HttpEngineDataSource;

    invoke-static {v0, v1}, Landroidx/media3/datasource/HttpEngineDataSource;->access$700(Landroidx/media3/datasource/HttpEngineDataSource;Landroidx/media3/datasource/DataSpec;)Landroidx/media3/datasource/HttpEngineDataSource$UrlRequestWrapper;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1094
    .local v0, "redirectUrlRequestWrapper":Landroidx/media3/datasource/HttpEngineDataSource$UrlRequestWrapper;
    nop

    .line 1095
    :try_start_5
    iget-object v8, p0, Landroidx/media3/datasource/HttpEngineDataSource$UrlRequestCallback;->this$0:Landroidx/media3/datasource/HttpEngineDataSource;

    invoke-static {v8}, Landroidx/media3/datasource/HttpEngineDataSource;->access$800(Landroidx/media3/datasource/HttpEngineDataSource;)Landroidx/media3/datasource/HttpEngineDataSource$UrlRequestWrapper;

    move-result-object v8

    if-eqz v8, :cond_a

    .line 1096
    iget-object v8, p0, Landroidx/media3/datasource/HttpEngineDataSource$UrlRequestCallback;->this$0:Landroidx/media3/datasource/HttpEngineDataSource;

    invoke-static {v8}, Landroidx/media3/datasource/HttpEngineDataSource;->access$800(Landroidx/media3/datasource/HttpEngineDataSource;)Landroidx/media3/datasource/HttpEngineDataSource$UrlRequestWrapper;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/media3/datasource/HttpEngineDataSource$UrlRequestWrapper;->close()V

    .line 1098
    :cond_a
    iget-object v8, p0, Landroidx/media3/datasource/HttpEngineDataSource$UrlRequestCallback;->this$0:Landroidx/media3/datasource/HttpEngineDataSource;

    invoke-static {v8, v0}, Landroidx/media3/datasource/HttpEngineDataSource;->access$802(Landroidx/media3/datasource/HttpEngineDataSource;Landroidx/media3/datasource/HttpEngineDataSource$UrlRequestWrapper;)Landroidx/media3/datasource/HttpEngineDataSource$UrlRequestWrapper;

    .line 1099
    iget-object v8, p0, Landroidx/media3/datasource/HttpEngineDataSource$UrlRequestCallback;->this$0:Landroidx/media3/datasource/HttpEngineDataSource;

    invoke-static {v8}, Landroidx/media3/datasource/HttpEngineDataSource;->access$800(Landroidx/media3/datasource/HttpEngineDataSource;)Landroidx/media3/datasource/HttpEngineDataSource$UrlRequestWrapper;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/media3/datasource/HttpEngineDataSource$UrlRequestWrapper;->start()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1100
    monitor-exit p0

    return-void

    .line 1091
    .end local v0    # "redirectUrlRequestWrapper":Landroidx/media3/datasource/HttpEngineDataSource$UrlRequestWrapper;
    :catch_0
    move-exception v0

    .line 1092
    .local v0, "e":Ljava/io/IOException;
    :try_start_6
    iget-object v8, p0, Landroidx/media3/datasource/HttpEngineDataSource$UrlRequestCallback;->this$0:Landroidx/media3/datasource/HttpEngineDataSource;

    invoke-static {v8, v0}, Landroidx/media3/datasource/HttpEngineDataSource;->access$102(Landroidx/media3/datasource/HttpEngineDataSource;Ljava/io/IOException;)Ljava/io/IOException;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1093
    monitor-exit p0

    return-void

    .line 1010
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "redirectUrlDataSpec":Landroidx/media3/datasource/DataSpec;
    .end local v2    # "responseCode":I
    .end local v3    # "cookieHandler":Ljava/net/CookieHandler;
    .end local v4    # "url":Ljava/lang/String;
    .end local v5    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v6    # "dataSpec":Landroidx/media3/datasource/DataSpec;
    .end local v7    # "cookieHeaders":Ljava/lang/String;
    .end local v9    # "shouldKeepPost":Z
    .end local p1    # "request":Landroid/net/http/UrlRequest;
    .end local p2    # "info":Landroid/net/http/UrlResponseInfo;
    .end local p3    # "newLocationUrl":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object p1, v0

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p1
.end method

.method public declared-synchronized onResponseStarted(Landroid/net/http/UrlRequest;Landroid/net/http/UrlResponseInfo;)V
    .locals 3
    .param p1, "request"    # Landroid/net/http/UrlRequest;
    .param p2, "info"    # Landroid/net/http/UrlResponseInfo;

    monitor-enter p0

    .line 1104
    :try_start_0
    iget-boolean v0, p0, Landroidx/media3/datasource/HttpEngineDataSource$UrlRequestCallback;->isClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1105
    monitor-exit p0

    return-void

    .line 1107
    :cond_0
    nop

    .line 1108
    :try_start_1
    invoke-virtual {p2}, Landroid/net/http/UrlResponseInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/net/http/UrlResponseInfo;->getHeaders()Landroid/net/http/HeaderBlock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/http/HeaderBlock;->getAsMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v2

    .line 1107
    invoke-static {v0, v1, v2}, Landroidx/media3/datasource/HttpUtil;->storeCookiesFromHeaders(Ljava/lang/String;Ljava/util/Map;Ljava/net/CookieHandler;)V

    .line 1109
    iget-object v0, p0, Landroidx/media3/datasource/HttpEngineDataSource$UrlRequestCallback;->this$0:Landroidx/media3/datasource/HttpEngineDataSource;

    invoke-static {v0, p2}, Landroidx/media3/datasource/HttpEngineDataSource;->access$902(Landroidx/media3/datasource/HttpEngineDataSource;Landroid/net/http/UrlResponseInfo;)Landroid/net/http/UrlResponseInfo;

    .line 1110
    iget-object v0, p0, Landroidx/media3/datasource/HttpEngineDataSource$UrlRequestCallback;->this$0:Landroidx/media3/datasource/HttpEngineDataSource;

    invoke-static {v0}, Landroidx/media3/datasource/HttpEngineDataSource;->access$200(Landroidx/media3/datasource/HttpEngineDataSource;)Landroidx/media3/common/util/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/util/ConditionVariable;->open()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1111
    monitor-exit p0

    return-void

    .line 1103
    .end local p0    # "this":Landroidx/media3/datasource/HttpEngineDataSource$UrlRequestCallback;
    .end local p1    # "request":Landroid/net/http/UrlRequest;
    .end local p2    # "info":Landroid/net/http/UrlResponseInfo;
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized onSucceeded(Landroid/net/http/UrlRequest;Landroid/net/http/UrlResponseInfo;)V
    .locals 2
    .param p1, "request"    # Landroid/net/http/UrlRequest;
    .param p2, "info"    # Landroid/net/http/UrlResponseInfo;

    monitor-enter p0

    .line 1124
    :try_start_0
    iget-boolean v0, p0, Landroidx/media3/datasource/HttpEngineDataSource$UrlRequestCallback;->isClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1125
    monitor-exit p0

    return-void

    .line 1127
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroidx/media3/datasource/HttpEngineDataSource$UrlRequestCallback;->this$0:Landroidx/media3/datasource/HttpEngineDataSource;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/media3/datasource/HttpEngineDataSource;->access$1002(Landroidx/media3/datasource/HttpEngineDataSource;Z)Z

    .line 1128
    iget-object v0, p0, Landroidx/media3/datasource/HttpEngineDataSource$UrlRequestCallback;->this$0:Landroidx/media3/datasource/HttpEngineDataSource;

    invoke-static {v0}, Landroidx/media3/datasource/HttpEngineDataSource;->access$200(Landroidx/media3/datasource/HttpEngineDataSource;)Landroidx/media3/common/util/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/util/ConditionVariable;->open()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1129
    monitor-exit p0

    return-void

    .line 1123
    .end local p0    # "this":Landroidx/media3/datasource/HttpEngineDataSource$UrlRequestCallback;
    .end local p1    # "request":Landroid/net/http/UrlRequest;
    .end local p2    # "info":Landroid/net/http/UrlResponseInfo;
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
