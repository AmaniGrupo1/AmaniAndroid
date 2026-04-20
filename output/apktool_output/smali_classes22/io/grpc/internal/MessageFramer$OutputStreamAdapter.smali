.class Lio/grpc/internal/MessageFramer$OutputStreamAdapter;
.super Ljava/io/OutputStream;
.source "MessageFramer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/MessageFramer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OutputStreamAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/MessageFramer;


# direct methods
.method private constructor <init>(Lio/grpc/internal/MessageFramer;)V
    .locals 0

    .line 368
    iput-object p1, p0, Lio/grpc/internal/MessageFramer$OutputStreamAdapter;->this$0:Lio/grpc/internal/MessageFramer;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/internal/MessageFramer;Lio/grpc/internal/MessageFramer$1;)V
    .locals 0
    .param p1, "x0"    # Lio/grpc/internal/MessageFramer;
    .param p2, "x1"    # Lio/grpc/internal/MessageFramer$1;

    .line 368
    invoke-direct {p0, p1}, Lio/grpc/internal/MessageFramer$OutputStreamAdapter;-><init>(Lio/grpc/internal/MessageFramer;)V

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 4
    .param p1, "b"    # I

    .line 376
    int-to-byte v0, p1

    const/4 v1, 0x1

    new-array v2, v1, [B

    const/4 v3, 0x0

    aput-byte v0, v2, v3

    .line 377
    .local v2, "singleByte":[B
    invoke-virtual {p0, v2, v3, v1}, Lio/grpc/internal/MessageFramer$OutputStreamAdapter;->write([BII)V

    .line 378
    return-void
.end method

.method public write([BII)V
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 382
    iget-object v0, p0, Lio/grpc/internal/MessageFramer$OutputStreamAdapter;->this$0:Lio/grpc/internal/MessageFramer;

    invoke-static {v0, p1, p2, p3}, Lio/grpc/internal/MessageFramer;->access$400(Lio/grpc/internal/MessageFramer;[BII)V

    .line 383
    return-void
.end method
