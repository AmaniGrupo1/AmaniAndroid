.class public final Lcom/google/logging/type/HttpRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "HttpRequest.java"

# interfaces
.implements Lcom/google/logging/type/HttpRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/logging/type/HttpRequest$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/logging/type/HttpRequest;",
        "Lcom/google/logging/type/HttpRequest$Builder;",
        ">;",
        "Lcom/google/logging/type/HttpRequestOrBuilder;"
    }
.end annotation


# static fields
.field public static final CACHE_FILL_BYTES_FIELD_NUMBER:I = 0xc

.field public static final CACHE_HIT_FIELD_NUMBER:I = 0x9

.field public static final CACHE_LOOKUP_FIELD_NUMBER:I = 0xb

.field public static final CACHE_VALIDATED_WITH_ORIGIN_SERVER_FIELD_NUMBER:I = 0xa

.field private static final DEFAULT_INSTANCE:Lcom/google/logging/type/HttpRequest;

.field public static final LATENCY_FIELD_NUMBER:I = 0xe

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/logging/type/HttpRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROTOCOL_FIELD_NUMBER:I = 0xf

.field public static final REFERER_FIELD_NUMBER:I = 0x8

.field public static final REMOTE_IP_FIELD_NUMBER:I = 0x7

.field public static final REQUEST_METHOD_FIELD_NUMBER:I = 0x1

.field public static final REQUEST_SIZE_FIELD_NUMBER:I = 0x3

.field public static final REQUEST_URL_FIELD_NUMBER:I = 0x2

.field public static final RESPONSE_SIZE_FIELD_NUMBER:I = 0x5

.field public static final SERVER_IP_FIELD_NUMBER:I = 0xd

.field public static final STATUS_FIELD_NUMBER:I = 0x4

.field public static final USER_AGENT_FIELD_NUMBER:I = 0x6


# instance fields
.field private bitField0_:I

.field private cacheFillBytes_:J

.field private cacheHit_:Z

.field private cacheLookup_:Z

.field private cacheValidatedWithOriginServer_:Z

.field private latency_:Lcom/google/protobuf/Duration;

.field private protocol_:Ljava/lang/String;

.field private referer_:Ljava/lang/String;

.field private remoteIp_:Ljava/lang/String;

.field private requestMethod_:Ljava/lang/String;

.field private requestSize_:J

.field private requestUrl_:Ljava/lang/String;

.field private responseSize_:J

.field private serverIp_:Ljava/lang/String;

.field private status_:I

.field private userAgent_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1974
    new-instance v0, Lcom/google/logging/type/HttpRequest;

    invoke-direct {v0}, Lcom/google/logging/type/HttpRequest;-><init>()V

    .line 1977
    .local v0, "defaultInstance":Lcom/google/logging/type/HttpRequest;
    sput-object v0, Lcom/google/logging/type/HttpRequest;->DEFAULT_INSTANCE:Lcom/google/logging/type/HttpRequest;

    .line 1978
    const-class v1, Lcom/google/logging/type/HttpRequest;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1980
    .end local v0    # "defaultInstance":Lcom/google/logging/type/HttpRequest;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/google/logging/type/HttpRequest;->requestMethod_:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/google/logging/type/HttpRequest;->requestUrl_:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/google/logging/type/HttpRequest;->userAgent_:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/google/logging/type/HttpRequest;->remoteIp_:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/google/logging/type/HttpRequest;->serverIp_:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/google/logging/type/HttpRequest;->referer_:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/google/logging/type/HttpRequest;->protocol_:Ljava/lang/String;

    .line 29
    return-void
.end method

.method static synthetic access$000()Lcom/google/logging/type/HttpRequest;
    .locals 1

    .line 16
    sget-object v0, Lcom/google/logging/type/HttpRequest;->DEFAULT_INSTANCE:Lcom/google/logging/type/HttpRequest;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/logging/type/HttpRequest;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/logging/type/HttpRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .line 16
    invoke-direct {p0, p1}, Lcom/google/logging/type/HttpRequest;->setRequestMethod(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/logging/type/HttpRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/logging/type/HttpRequest;

    .line 16
    invoke-direct {p0}, Lcom/google/logging/type/HttpRequest;->clearStatus()V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/logging/type/HttpRequest;J)V
    .locals 0
    .param p0, "x0"    # Lcom/google/logging/type/HttpRequest;
    .param p1, "x1"    # J

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/google/logging/type/HttpRequest;->setResponseSize(J)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/logging/type/HttpRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/logging/type/HttpRequest;

    .line 16
    invoke-direct {p0}, Lcom/google/logging/type/HttpRequest;->clearResponseSize()V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/logging/type/HttpRequest;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/logging/type/HttpRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .line 16
    invoke-direct {p0, p1}, Lcom/google/logging/type/HttpRequest;->setUserAgent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/logging/type/HttpRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/logging/type/HttpRequest;

    .line 16
    invoke-direct {p0}, Lcom/google/logging/type/HttpRequest;->clearUserAgent()V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/logging/type/HttpRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/logging/type/HttpRequest;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 16
    invoke-direct {p0, p1}, Lcom/google/logging/type/HttpRequest;->setUserAgentBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/logging/type/HttpRequest;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/logging/type/HttpRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .line 16
    invoke-direct {p0, p1}, Lcom/google/logging/type/HttpRequest;->setRemoteIp(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/logging/type/HttpRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/logging/type/HttpRequest;

    .line 16
    invoke-direct {p0}, Lcom/google/logging/type/HttpRequest;->clearRemoteIp()V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/logging/type/HttpRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/logging/type/HttpRequest;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 16
    invoke-direct {p0, p1}, Lcom/google/logging/type/HttpRequest;->setRemoteIpBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/logging/type/HttpRequest;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/logging/type/HttpRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .line 16
    invoke-direct {p0, p1}, Lcom/google/logging/type/HttpRequest;->setServerIp(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/logging/type/HttpRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/logging/type/HttpRequest;

    .line 16
    invoke-direct {p0}, Lcom/google/logging/type/HttpRequest;->clearRequestMethod()V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/logging/type/HttpRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/logging/type/HttpRequest;

    .line 16
    invoke-direct {p0}, Lcom/google/logging/type/HttpRequest;->clearServerIp()V

    return-void
.end method

.method static synthetic access$2100(Lcom/google/logging/type/HttpRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/logging/type/HttpRequest;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 16
    invoke-direct {p0, p1}, Lcom/google/logging/type/HttpRequest;->setServerIpBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/google/logging/type/HttpRequest;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/logging/type/HttpRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .line 16
    invoke-direct {p0, p1}, Lcom/google/logging/type/HttpRequest;->setReferer(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/google/logging/type/HttpRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/logging/type/HttpRequest;

    .line 16
    invoke-direct {p0}, Lcom/google/logging/type/HttpRequest;->clearReferer()V

    return-void
.end method

.method static synthetic access$2400(Lcom/google/logging/type/HttpRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/logging/type/HttpRequest;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 16
    invoke-direct {p0, p1}, Lcom/google/logging/type/HttpRequest;->setRefererBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/google/logging/type/HttpRequest;Lcom/google/protobuf/Duration;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/logging/type/HttpRequest;
    .param p1, "x1"    # Lcom/google/protobuf/Duration;

    .line 16
    invoke-direct {p0, p1}, Lcom/google/logging/type/HttpRequest;->setLatency(Lcom/google/protobuf/Duration;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/google/logging/type/HttpRequest;Lcom/google/protobuf/Duration;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/logging/type/HttpRequest;
    .param p1, "x1"    # Lcom/google/protobuf/Duration;

    .line 16
    invoke-direct {p0, p1}, Lcom/google/logging/type/HttpRequest;->mergeLatency(Lcom/google/protobuf/Duration;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/google/logging/type/HttpRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/logging/type/HttpRequest;

    .line 16
    invoke-direct {p0}, Lcom/google/logging/type/HttpRequest;->clearLatency()V

    return-void
.end method

.method static synthetic access$2800(Lcom/google/logging/type/HttpRequest;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/logging/type/HttpRequest;
    .param p1, "x1"    # Z

    .line 16
    invoke-direct {p0, p1}, Lcom/google/logging/type/HttpRequest;->setCacheLookup(Z)V

    return-void
.end method

.method static synthetic access$2900(Lcom/google/logging/type/HttpRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/logging/type/HttpRequest;

    .line 16
    invoke-direct {p0}, Lcom/google/logging/type/HttpRequest;->clearCacheLookup()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/logging/type/HttpRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/logging/type/HttpRequest;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 16
    invoke-direct {p0, p1}, Lcom/google/logging/type/HttpRequest;->setRequestMethodBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/google/logging/type/HttpRequest;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/logging/type/HttpRequest;
    .param p1, "x1"    # Z

    .line 16
    invoke-direct {p0, p1}, Lcom/google/logging/type/HttpRequest;->setCacheHit(Z)V

    return-void
.end method

.method static synthetic access$3100(Lcom/google/logging/type/HttpRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/logging/type/HttpRequest;

    .line 16
    invoke-direct {p0}, Lcom/google/logging/type/HttpRequest;->clearCacheHit()V

    return-void
.end method

.method static synthetic access$3200(Lcom/google/logging/type/HttpRequest;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/logging/type/HttpRequest;
    .param p1, "x1"    # Z

    .line 16
    invoke-direct {p0, p1}, Lcom/google/logging/type/HttpRequest;->setCacheValidatedWithOriginServer(Z)V

    return-void
.end method

.method static synthetic access$3300(Lcom/google/logging/type/HttpRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/logging/type/HttpRequest;

    .line 16
    invoke-direct {p0}, Lcom/google/logging/type/HttpRequest;->clearCacheValidatedWithOriginServer()V

    return-void
.end method

.method static synthetic access$3400(Lcom/google/logging/type/HttpRequest;J)V
    .locals 0
    .param p0, "x0"    # Lcom/google/logging/type/HttpRequest;
    .param p1, "x1"    # J

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/google/logging/type/HttpRequest;->setCacheFillBytes(J)V

    return-void
.end method

.method static synthetic access$3500(Lcom/google/logging/type/HttpRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/logging/type/HttpRequest;

    .line 16
    invoke-direct {p0}, Lcom/google/logging/type/HttpRequest;->clearCacheFillBytes()V

    return-void
.end method

.method static synthetic access$3600(Lcom/google/logging/type/HttpRequest;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/logging/type/HttpRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .line 16
    invoke-direct {p0, p1}, Lcom/google/logging/type/HttpRequest;->setProtocol(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/google/logging/type/HttpRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/logging/type/HttpRequest;

    .line 16
    invoke-direct {p0}, Lcom/google/logging/type/HttpRequest;->clearProtocol()V

    return-void
.end method

.method static synthetic access$3800(Lcom/google/logging/type/HttpRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/logging/type/HttpRequest;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 16
    invoke-direct {p0, p1}, Lcom/google/logging/type/HttpRequest;->setProtocolBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/logging/type/HttpRequest;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/logging/type/HttpRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .line 16
    invoke-direct {p0, p1}, Lcom/google/logging/type/HttpRequest;->setRequestUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/logging/type/HttpRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/logging/type/HttpRequest;

    .line 16
    invoke-direct {p0}, Lcom/google/logging/type/HttpRequest;->clearRequestUrl()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/logging/type/HttpRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/logging/type/HttpRequest;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 16
    invoke-direct {p0, p1}, Lcom/google/logging/type/HttpRequest;->setRequestUrlBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/logging/type/HttpRequest;J)V
    .locals 0
    .param p0, "x0"    # Lcom/google/logging/type/HttpRequest;
    .param p1, "x1"    # J

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/google/logging/type/HttpRequest;->setRequestSize(J)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/logging/type/HttpRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/logging/type/HttpRequest;

    .line 16
    invoke-direct {p0}, Lcom/google/logging/type/HttpRequest;->clearRequestSize()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/logging/type/HttpRequest;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/logging/type/HttpRequest;
    .param p1, "x1"    # I

    .line 16
    invoke-direct {p0, p1}, Lcom/google/logging/type/HttpRequest;->setStatus(I)V

    return-void
.end method

.method private clearCacheFillBytes()V
    .locals 2

    .line 828
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/logging/type/HttpRequest;->cacheFillBytes_:J

    .line 829
    return-void
.end method

.method private clearCacheHit()V
    .locals 1

    .line 743
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/logging/type/HttpRequest;->cacheHit_:Z

    .line 744
    return-void
.end method

.method private clearCacheLookup()V
    .locals 1

    .line 702
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/logging/type/HttpRequest;->cacheLookup_:Z

    .line 703
    return-void
.end method

.method private clearCacheValidatedWithOriginServer()V
    .locals 1

    .line 787
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/logging/type/HttpRequest;->cacheValidatedWithOriginServer_:Z

    .line 788
    return-void
.end method

.method private clearLatency()V
    .locals 1

    .line 663
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/logging/type/HttpRequest;->latency_:Lcom/google/protobuf/Duration;

    .line 664
    iget v0, p0, Lcom/google/logging/type/HttpRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/logging/type/HttpRequest;->bitField0_:I

    .line 665
    return-void
.end method

.method private clearProtocol()V
    .locals 1

    .line 881
    invoke-static {}, Lcom/google/logging/type/HttpRequest;->getDefaultInstance()Lcom/google/logging/type/HttpRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/logging/type/HttpRequest;->getProtocol()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/logging/type/HttpRequest;->protocol_:Ljava/lang/String;

    .line 882
    return-void
.end method

.method private clearReferer()V
    .locals 1

    .line 577
    invoke-static {}, Lcom/google/logging/type/HttpRequest;->getDefaultInstance()Lcom/google/logging/type/HttpRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/logging/type/HttpRequest;->getReferer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/logging/type/HttpRequest;->referer_:Ljava/lang/String;

    .line 578
    return-void
.end method

.method private clearRemoteIp()V
    .locals 1

    .line 429
    invoke-static {}, Lcom/google/logging/type/HttpRequest;->getDefaultInstance()Lcom/google/logging/type/HttpRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/logging/type/HttpRequest;->getRemoteIp()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/logging/type/HttpRequest;->remoteIp_:Ljava/lang/String;

    .line 430
    return-void
.end method

.method private clearRequestMethod()V
    .locals 1

    .line 81
    invoke-static {}, Lcom/google/logging/type/HttpRequest;->getDefaultInstance()Lcom/google/logging/type/HttpRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/logging/type/HttpRequest;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/logging/type/HttpRequest;->requestMethod_:Ljava/lang/String;

    .line 82
    return-void
.end method

.method private clearRequestSize()V
    .locals 2

    .line 213
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/logging/type/HttpRequest;->requestSize_:J

    .line 214
    return-void
.end method

.method private clearRequestUrl()V
    .locals 1

    .line 156
    invoke-static {}, Lcom/google/logging/type/HttpRequest;->getDefaultInstance()Lcom/google/logging/type/HttpRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/logging/type/HttpRequest;->getRequestUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/logging/type/HttpRequest;->requestUrl_:Ljava/lang/String;

    .line 157
    return-void
.end method

.method private clearResponseSize()V
    .locals 2

    .line 295
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/logging/type/HttpRequest;->responseSize_:J

    .line 296
    return-void
.end method

.method private clearServerIp()V
    .locals 1

    .line 501
    invoke-static {}, Lcom/google/logging/type/HttpRequest;->getDefaultInstance()Lcom/google/logging/type/HttpRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/logging/type/HttpRequest;->getServerIp()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/logging/type/HttpRequest;->serverIp_:Ljava/lang/String;

    .line 502
    return-void
.end method

.method private clearStatus()V
    .locals 1

    .line 254
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/logging/type/HttpRequest;->status_:I

    .line 255
    return-void
.end method

.method private clearUserAgent()V
    .locals 1

    .line 356
    invoke-static {}, Lcom/google/logging/type/HttpRequest;->getDefaultInstance()Lcom/google/logging/type/HttpRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/logging/type/HttpRequest;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/logging/type/HttpRequest;->userAgent_:Ljava/lang/String;

    .line 357
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/logging/type/HttpRequest;
    .locals 1

    .line 1983
    sget-object v0, Lcom/google/logging/type/HttpRequest;->DEFAULT_INSTANCE:Lcom/google/logging/type/HttpRequest;

    return-object v0
.end method

.method private mergeLatency(Lcom/google/protobuf/Duration;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/Duration;

    .line 645
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 646
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest;->latency_:Lcom/google/protobuf/Duration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/logging/type/HttpRequest;->latency_:Lcom/google/protobuf/Duration;

    .line 647
    invoke-static {}, Lcom/google/protobuf/Duration;->getDefaultInstance()Lcom/google/protobuf/Duration;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 648
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest;->latency_:Lcom/google/protobuf/Duration;

    .line 649
    invoke-static {v0}, Lcom/google/protobuf/Duration;->newBuilder(Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Duration$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Duration$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Duration$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Duration;

    iput-object v0, p0, Lcom/google/logging/type/HttpRequest;->latency_:Lcom/google/protobuf/Duration;

    goto :goto_0

    .line 651
    :cond_0
    iput-object p1, p0, Lcom/google/logging/type/HttpRequest;->latency_:Lcom/google/protobuf/Duration;

    .line 653
    :goto_0
    iget v0, p0, Lcom/google/logging/type/HttpRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/logging/type/HttpRequest;->bitField0_:I

    .line 654
    return-void
.end method

.method public static newBuilder()Lcom/google/logging/type/HttpRequest$Builder;
    .locals 1

    .line 975
    sget-object v0, Lcom/google/logging/type/HttpRequest;->DEFAULT_INSTANCE:Lcom/google/logging/type/HttpRequest;

    invoke-virtual {v0}, Lcom/google/logging/type/HttpRequest;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/logging/type/HttpRequest$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/logging/type/HttpRequest;)Lcom/google/logging/type/HttpRequest$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/logging/type/HttpRequest;

    .line 978
    sget-object v0, Lcom/google/logging/type/HttpRequest;->DEFAULT_INSTANCE:Lcom/google/logging/type/HttpRequest;

    invoke-virtual {v0, p0}, Lcom/google/logging/type/HttpRequest;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/logging/type/HttpRequest$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/logging/type/HttpRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 951
    sget-object v0, Lcom/google/logging/type/HttpRequest;->DEFAULT_INSTANCE:Lcom/google/logging/type/HttpRequest;

    invoke-static {v0, p0}, Lcom/google/logging/type/HttpRequest;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/logging/type/HttpRequest;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/logging/type/HttpRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 958
    sget-object v0, Lcom/google/logging/type/HttpRequest;->DEFAULT_INSTANCE:Lcom/google/logging/type/HttpRequest;

    invoke-static {v0, p0, p1}, Lcom/google/logging/type/HttpRequest;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/logging/type/HttpRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/logging/type/HttpRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 914
    sget-object v0, Lcom/google/logging/type/HttpRequest;->DEFAULT_INSTANCE:Lcom/google/logging/type/HttpRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/logging/type/HttpRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/logging/type/HttpRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 921
    sget-object v0, Lcom/google/logging/type/HttpRequest;->DEFAULT_INSTANCE:Lcom/google/logging/type/HttpRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/logging/type/HttpRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/logging/type/HttpRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 963
    sget-object v0, Lcom/google/logging/type/HttpRequest;->DEFAULT_INSTANCE:Lcom/google/logging/type/HttpRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/logging/type/HttpRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/logging/type/HttpRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 970
    sget-object v0, Lcom/google/logging/type/HttpRequest;->DEFAULT_INSTANCE:Lcom/google/logging/type/HttpRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/logging/type/HttpRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/logging/type/HttpRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 938
    sget-object v0, Lcom/google/logging/type/HttpRequest;->DEFAULT_INSTANCE:Lcom/google/logging/type/HttpRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/logging/type/HttpRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/logging/type/HttpRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 945
    sget-object v0, Lcom/google/logging/type/HttpRequest;->DEFAULT_INSTANCE:Lcom/google/logging/type/HttpRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/logging/type/HttpRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/logging/type/HttpRequest;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 901
    sget-object v0, Lcom/google/logging/type/HttpRequest;->DEFAULT_INSTANCE:Lcom/google/logging/type/HttpRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/logging/type/HttpRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/logging/type/HttpRequest;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 908
    sget-object v0, Lcom/google/logging/type/HttpRequest;->DEFAULT_INSTANCE:Lcom/google/logging/type/HttpRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/logging/type/HttpRequest;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/logging/type/HttpRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 926
    sget-object v0, Lcom/google/logging/type/HttpRequest;->DEFAULT_INSTANCE:Lcom/google/logging/type/HttpRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/logging/type/HttpRequest;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/logging/type/HttpRequest;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 933
    sget-object v0, Lcom/google/logging/type/HttpRequest;->DEFAULT_INSTANCE:Lcom/google/logging/type/HttpRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/logging/type/HttpRequest;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/logging/type/HttpRequest;",
            ">;"
        }
    .end annotation

    .line 1989
    sget-object v0, Lcom/google/logging/type/HttpRequest;->DEFAULT_INSTANCE:Lcom/google/logging/type/HttpRequest;

    invoke-virtual {v0}, Lcom/google/logging/type/HttpRequest;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setCacheFillBytes(J)V
    .locals 0
    .param p1, "value"    # J

    .line 816
    iput-wide p1, p0, Lcom/google/logging/type/HttpRequest;->cacheFillBytes_:J

    .line 817
    return-void
.end method

.method private setCacheHit(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 731
    iput-boolean p1, p0, Lcom/google/logging/type/HttpRequest;->cacheHit_:Z

    .line 732
    return-void
.end method

.method private setCacheLookup(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 691
    iput-boolean p1, p0, Lcom/google/logging/type/HttpRequest;->cacheLookup_:Z

    .line 692
    return-void
.end method

.method private setCacheValidatedWithOriginServer(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 774
    iput-boolean p1, p0, Lcom/google/logging/type/HttpRequest;->cacheValidatedWithOriginServer_:Z

    .line 775
    return-void
.end method

.method private setLatency(Lcom/google/protobuf/Duration;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Duration;

    .line 631
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 632
    iput-object p1, p0, Lcom/google/logging/type/HttpRequest;->latency_:Lcom/google/protobuf/Duration;

    .line 633
    iget v0, p0, Lcom/google/logging/type/HttpRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/logging/type/HttpRequest;->bitField0_:I

    .line 634
    return-void
.end method

.method private setProtocol(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 868
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 870
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/google/logging/type/HttpRequest;->protocol_:Ljava/lang/String;

    .line 871
    return-void
.end method

.method private setProtocolBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 893
    invoke-static {p1}, Lcom/google/logging/type/HttpRequest;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 894
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/logging/type/HttpRequest;->protocol_:Ljava/lang/String;

    .line 896
    return-void
.end method

.method private setReferer(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 562
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 564
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/google/logging/type/HttpRequest;->referer_:Ljava/lang/String;

    .line 565
    return-void
.end method

.method private setRefererBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 591
    invoke-static {p1}, Lcom/google/logging/type/HttpRequest;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 592
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/logging/type/HttpRequest;->referer_:Ljava/lang/String;

    .line 594
    return-void
.end method

.method private setRemoteIp(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 415
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 417
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/google/logging/type/HttpRequest;->remoteIp_:Ljava/lang/String;

    .line 418
    return-void
.end method

.method private setRemoteIpBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 442
    invoke-static {p1}, Lcom/google/logging/type/HttpRequest;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 443
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/logging/type/HttpRequest;->remoteIp_:Ljava/lang/String;

    .line 445
    return-void
.end method

.method private setRequestMethod(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 70
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/google/logging/type/HttpRequest;->requestMethod_:Ljava/lang/String;

    .line 71
    return-void
.end method

.method private setRequestMethodBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 93
    invoke-static {p1}, Lcom/google/logging/type/HttpRequest;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 94
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/logging/type/HttpRequest;->requestMethod_:Ljava/lang/String;

    .line 96
    return-void
.end method

.method private setRequestSize(J)V
    .locals 0
    .param p1, "value"    # J

    .line 201
    iput-wide p1, p0, Lcom/google/logging/type/HttpRequest;->requestSize_:J

    .line 202
    return-void
.end method

.method private setRequestUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 141
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 143
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/google/logging/type/HttpRequest;->requestUrl_:Ljava/lang/String;

    .line 144
    return-void
.end method

.method private setRequestUrlBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 170
    invoke-static {p1}, Lcom/google/logging/type/HttpRequest;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 171
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/logging/type/HttpRequest;->requestUrl_:Ljava/lang/String;

    .line 173
    return-void
.end method

.method private setResponseSize(J)V
    .locals 0
    .param p1, "value"    # J

    .line 283
    iput-wide p1, p0, Lcom/google/logging/type/HttpRequest;->responseSize_:J

    .line 284
    return-void
.end method

.method private setServerIp(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 487
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 489
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/google/logging/type/HttpRequest;->serverIp_:Ljava/lang/String;

    .line 490
    return-void
.end method

.method private setServerIpBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 514
    invoke-static {p1}, Lcom/google/logging/type/HttpRequest;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 515
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/logging/type/HttpRequest;->serverIp_:Ljava/lang/String;

    .line 517
    return-void
.end method

.method private setStatus(I)V
    .locals 0
    .param p1, "value"    # I

    .line 242
    iput p1, p0, Lcom/google/logging/type/HttpRequest;->status_:I

    .line 243
    return-void
.end method

.method private setUserAgent(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 341
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 343
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/google/logging/type/HttpRequest;->userAgent_:Ljava/lang/String;

    .line 344
    return-void
.end method

.method private setUserAgentBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 370
    invoke-static {p1}, Lcom/google/logging/type/HttpRequest;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 371
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/logging/type/HttpRequest;->userAgent_:Ljava/lang/String;

    .line 373
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 1909
    sget-object v0, Lcom/google/logging/type/HttpRequest$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1967
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1964
    :pswitch_0
    return-object v1

    .line 1961
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 1946
    :pswitch_2
    sget-object v1, Lcom/google/logging/type/HttpRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 1947
    .local v1, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/logging/type/HttpRequest;>;"
    if-nez v1, :cond_1

    .line 1948
    const-class v2, Lcom/google/logging/type/HttpRequest;

    monitor-enter v2

    .line 1949
    :try_start_0
    sget-object v0, Lcom/google/logging/type/HttpRequest;->PARSER:Lcom/google/protobuf/Parser;

    move-object v1, v0

    .line 1950
    if-nez v1, :cond_0

    .line 1951
    new-instance v0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/logging/type/HttpRequest;->DEFAULT_INSTANCE:Lcom/google/logging/type/HttpRequest;

    invoke-direct {v0, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v1, v0

    .line 1954
    sput-object v1, Lcom/google/logging/type/HttpRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 1956
    :cond_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1958
    :cond_1
    :goto_0
    return-object v1

    .line 1943
    .end local v1    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/logging/type/HttpRequest;>;"
    :pswitch_3
    sget-object v0, Lcom/google/logging/type/HttpRequest;->DEFAULT_INSTANCE:Lcom/google/logging/type/HttpRequest;

    return-object v0

    .line 1917
    :pswitch_4
    const-string v2, "bitField0_"

    const-string v3, "requestMethod_"

    const-string v4, "requestUrl_"

    const-string v5, "requestSize_"

    const-string v6, "status_"

    const-string v7, "responseSize_"

    const-string v8, "userAgent_"

    const-string v9, "remoteIp_"

    const-string v10, "referer_"

    const-string v11, "cacheHit_"

    const-string v12, "cacheValidatedWithOriginServer_"

    const-string v13, "cacheLookup_"

    const-string v14, "cacheFillBytes_"

    const-string v15, "serverIp_"

    const-string v16, "latency_"

    const-string v17, "protocol_"

    filled-new-array/range {v2 .. v17}, [Ljava/lang/Object;

    move-result-object v0

    .line 1935
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u000f\u0000\u0001\u0001\u000f\u000f\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\u0002\u0004\u0004\u0005\u0002\u0006\u0208\u0007\u0208\u0008\u0208\t\u0007\n\u0007\u000b\u0007\u000c\u0002\r\u0208\u000e\u1009\u0000\u000f\u0208"

    .line 1939
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/logging/type/HttpRequest;->DEFAULT_INSTANCE:Lcom/google/logging/type/HttpRequest;

    invoke-static {v2, v1, v0}, Lcom/google/logging/type/HttpRequest;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 1914
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/logging/type/HttpRequest$Builder;

    invoke-direct {v0, v1}, Lcom/google/logging/type/HttpRequest$Builder;-><init>(Lcom/google/logging/type/HttpRequest$1;)V

    return-object v0

    .line 1911
    :pswitch_6
    new-instance v0, Lcom/google/logging/type/HttpRequest;

    invoke-direct {v0}, Lcom/google/logging/type/HttpRequest;-><init>()V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getCacheFillBytes()J
    .locals 2

    .line 803
    iget-wide v0, p0, Lcom/google/logging/type/HttpRequest;->cacheFillBytes_:J

    return-wide v0
.end method

.method public getCacheHit()Z
    .locals 1

    .line 718
    iget-boolean v0, p0, Lcom/google/logging/type/HttpRequest;->cacheHit_:Z

    return v0
.end method

.method public getCacheLookup()Z
    .locals 1

    .line 679
    iget-boolean v0, p0, Lcom/google/logging/type/HttpRequest;->cacheLookup_:Z

    return v0
.end method

.method public getCacheValidatedWithOriginServer()Z
    .locals 1

    .line 760
    iget-boolean v0, p0, Lcom/google/logging/type/HttpRequest;->cacheValidatedWithOriginServer_:Z

    return v0
.end method

.method public getLatency()Lcom/google/protobuf/Duration;
    .locals 1

    .line 620
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest;->latency_:Lcom/google/protobuf/Duration;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Duration;->getDefaultInstance()Lcom/google/protobuf/Duration;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest;->latency_:Lcom/google/protobuf/Duration;

    :goto_0
    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .line 843
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest;->protocol_:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocolBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 856
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest;->protocol_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getReferer()Ljava/lang/String;
    .locals 1

    .line 533
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest;->referer_:Ljava/lang/String;

    return-object v0
.end method

.method public getRefererBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 548
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest;->referer_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteIp()Ljava/lang/String;
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest;->remoteIp_:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteIpBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 402
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest;->remoteIp_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRequestMethod()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest;->requestMethod_:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestMethodBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest;->requestMethod_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRequestSize()J
    .locals 2

    .line 188
    iget-wide v0, p0, Lcom/google/logging/type/HttpRequest;->requestSize_:J

    return-wide v0
.end method

.method public getRequestUrl()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest;->requestUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest;->requestUrl_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getResponseSize()J
    .locals 2

    .line 270
    iget-wide v0, p0, Lcom/google/logging/type/HttpRequest;->responseSize_:J

    return-wide v0
.end method

.method public getServerIp()Ljava/lang/String;
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest;->serverIp_:Ljava/lang/String;

    return-object v0
.end method

.method public getServerIpBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 474
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest;->serverIp_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 229
    iget v0, p0, Lcom/google/logging/type/HttpRequest;->status_:I

    return v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest;->userAgent_:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAgentBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest;->userAgent_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasLatency()Z
    .locals 2

    .line 608
    iget v0, p0, Lcom/google/logging/type/HttpRequest;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
