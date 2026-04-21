.class public final Lorg/ies/tierno/applicationamani/domain/models/Message;
.super Ljava/lang/Object;
.source "Message.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0008$\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u008b\u0001\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000c\u0012\u0016\u0008\u0002\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u0011\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\t\u0010&\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\'\u001a\u00020\u0003H\u00c6\u0003J\t\u0010(\u001a\u00020\u0003H\u00c6\u0003J\t\u0010)\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010*\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010+\u001a\u0004\u0018\u00010\tH\u00c6\u0003J\u000b\u0010,\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010-\u001a\u00020\u000cH\u00c6\u0003J\t\u0010.\u001a\u00020\u000eH\u00c6\u0003J\u0010\u0010/\u001a\u0004\u0018\u00010\u000cH\u00c6\u0003\u00a2\u0006\u0002\u0010!J\u0017\u00100\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u0011H\u00c6\u0003J\u0092\u0001\u00101\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000c2\u0016\u0008\u0002\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u0011H\u00c6\u0001\u00a2\u0006\u0002\u00102J\u0013\u00103\u001a\u00020\u000e2\u0008\u00104\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u00105\u001a\u000206H\u00d6\u0001J\t\u00107\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0015R\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0015R\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0015R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0015R\u0013\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u0013\u0010\n\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u0015R\u0011\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001eR\u0011\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u001fR\u0015\u0010\u000f\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\n\n\u0002\u0010\"\u001a\u0004\u0008 \u0010!R\u001f\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010$R\u0011\u0010%\u001a\u00020\u000e8F\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010\u001f\u00a8\u00068"
    }
    d2 = {
        "Lorg/ies/tierno/applicationamani/domain/models/Message;",
        "",
        "id",
        "",
        "conversationId",
        "senderId",
        "content",
        "attachmentUrl",
        "attachmentType",
        "Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;",
        "attachmentName",
        "timestamp",
        "",
        "isRead",
        "",
        "deliveredAt",
        "readBy",
        "",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;Ljava/lang/String;JZLjava/lang/Long;Ljava/util/Map;)V",
        "getId",
        "()Ljava/lang/String;",
        "getConversationId",
        "getSenderId",
        "getContent",
        "getAttachmentUrl",
        "getAttachmentType",
        "()Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;",
        "getAttachmentName",
        "getTimestamp",
        "()J",
        "()Z",
        "getDeliveredAt",
        "()Ljava/lang/Long;",
        "Ljava/lang/Long;",
        "getReadBy",
        "()Ljava/util/Map;",
        "isDelivered",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "component10",
        "component11",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;Ljava/lang/String;JZLjava/lang/Long;Ljava/util/Map;)Lorg/ies/tierno/applicationamani/domain/models/Message;",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
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
.field private final attachmentName:Ljava/lang/String;

.field private final attachmentType:Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;

.field private final attachmentUrl:Ljava/lang/String;

.field private final content:Ljava/lang/String;

.field private final conversationId:Ljava/lang/String;

.field private final deliveredAt:Ljava/lang/Long;

.field private final id:Ljava/lang/String;

.field private final isRead:Z

.field private final readBy:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final senderId:Ljava/lang/String;

.field private final timestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lorg/ies/tierno/applicationamani/domain/models/Message;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 15

    const/16 v13, 0x7ff

    const/4 v14, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v14}, Lorg/ies/tierno/applicationamani/domain/models/Message;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;Ljava/lang/String;JZLjava/lang/Long;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;Ljava/lang/String;JZLjava/lang/Long;Ljava/util/Map;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "conversationId"    # Ljava/lang/String;
    .param p3, "senderId"    # Ljava/lang/String;
    .param p4, "content"    # Ljava/lang/String;
    .param p5, "attachmentUrl"    # Ljava/lang/String;
    .param p6, "attachmentType"    # Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;
    .param p7, "attachmentName"    # Ljava/lang/String;
    .param p8, "timestamp"    # J
    .param p10, "isRead"    # Z
    .param p11, "deliveredAt"    # Ljava/lang/Long;
    .param p12, "readBy"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;",
            "Ljava/lang/String;",
            "JZ",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "conversationId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "senderId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lorg/ies/tierno/applicationamani/domain/models/Message;->id:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lorg/ies/tierno/applicationamani/domain/models/Message;->conversationId:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lorg/ies/tierno/applicationamani/domain/models/Message;->senderId:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lorg/ies/tierno/applicationamani/domain/models/Message;->content:Ljava/lang/String;

    .line 8
    iput-object p5, p0, Lorg/ies/tierno/applicationamani/domain/models/Message;->attachmentUrl:Ljava/lang/String;

    .line 9
    iput-object p6, p0, Lorg/ies/tierno/applicationamani/domain/models/Message;->attachmentType:Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;

    .line 10
    iput-object p7, p0, Lorg/ies/tierno/applicationamani/domain/models/Message;->attachmentName:Ljava/lang/String;

    .line 11
    iput-wide p8, p0, Lorg/ies/tierno/applicationamani/domain/models/Message;->timestamp:J

    .line 12
    iput-boolean p10, p0, Lorg/ies/tierno/applicationamani/domain/models/Message;->isRead:Z

    .line 13
    iput-object p11, p0, Lorg/ies/tierno/applicationamani/domain/models/Message;->deliveredAt:Ljava/lang/Long;

    .line 14
    iput-object p12, p0, Lorg/ies/tierno/applicationamani/domain/models/Message;->readBy:Ljava/util/Map;

    .line 3
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;Ljava/lang/String;JZLjava/lang/Long;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    .line 3
    and-int/lit8 p14, p13, 0x1

    const-string v0, ""

    if-eqz p14, :cond_0

    .line 4
    move-object p1, v0

    .line 3
    :cond_0
    and-int/lit8 p14, p13, 0x2

    if-eqz p14, :cond_1

    .line 5
    move-object p2, v0

    .line 3
    :cond_1
    and-int/lit8 p14, p13, 0x4

    if-eqz p14, :cond_2

    .line 6
    move-object p3, v0

    .line 3
    :cond_2
    and-int/lit8 p14, p13, 0x8

    if-eqz p14, :cond_3

    .line 7
    move-object p4, v0

    .line 3
    :cond_3
    and-int/lit8 p14, p13, 0x10

    const/4 v0, 0x0

    if-eqz p14, :cond_4

    .line 8
    move-object p5, v0

    .line 3
    :cond_4
    and-int/lit8 p14, p13, 0x20

    if-eqz p14, :cond_5

    .line 9
    move-object p6, v0

    .line 3
    :cond_5
    and-int/lit8 p14, p13, 0x40

    if-eqz p14, :cond_6

    .line 10
    move-object p7, v0

    .line 3
    :cond_6
    and-int/lit16 p14, p13, 0x80

    if-eqz p14, :cond_7

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p8

    .line 3
    :cond_7
    and-int/lit16 p14, p13, 0x100

    if-eqz p14, :cond_8

    .line 12
    const/4 p10, 0x0

    .line 3
    :cond_8
    and-int/lit16 p14, p13, 0x200

    if-eqz p14, :cond_9

    .line 13
    move-object p11, v0

    .line 3
    :cond_9
    and-int/lit16 p13, p13, 0x400

    if-eqz p13, :cond_a

    .line 14
    move-object p13, v0

    goto :goto_0

    .line 3
    :cond_a
    move-object p13, p12

    :goto_0
    move-object p12, p11

    move p11, p10

    move-wide p9, p8

    move-object p8, p7

    move-object p7, p6

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    invoke-direct/range {p1 .. p13}, Lorg/ies/tierno/applicationamani/domain/models/Message;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;Ljava/lang/String;JZLjava/lang/Long;Ljava/util/Map;)V

    .line 15
    return-void
.end method

.method public static synthetic copy$default(Lorg/ies/tierno/applicationamani/domain/models/Message;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;Ljava/lang/String;JZLjava/lang/Long;Ljava/util/Map;ILjava/lang/Object;)Lorg/ies/tierno/applicationamani/domain/models/Message;
    .locals 0

    and-int/lit8 p14, p13, 0x1

    if-eqz p14, :cond_0

    iget-object p1, p0, Lorg/ies/tierno/applicationamani/domain/models/Message;->id:Ljava/lang/String;

    :cond_0
    and-int/lit8 p14, p13, 0x2

    if-eqz p14, :cond_1

    iget-object p2, p0, Lorg/ies/tierno/applicationamani/domain/models/Message;->conversationId:Ljava/lang/String;

    :cond_1
    and-int/lit8 p14, p13, 0x4

    if-eqz p14, :cond_2

    iget-object p3, p0, Lorg/ies/tierno/applicationamani/domain/models/Message;->senderId:Ljava/lang/String;

    :cond_2
    and-int/lit8 p14, p13, 0x8

    if-eqz p14, :cond_3

    iget-object p4, p0, Lorg/ies/tierno/applicationamani/domain/models/Message;->content:Ljava/lang/String;

    :cond_3
    and-int/lit8 p14, p13, 0x10

    if-eqz p14, :cond_4

    iget-object p5, p0, Lorg/ies/tierno/applicationamani/domain/models/Message;->attachmentUrl:Ljava/lang/String;

    :cond_4
    and-int/lit8 p14, p13, 0x20

    if-eqz p14, :cond_5

    iget-object p6, p0, Lorg/ies/tierno/applicationamani/domain/models/Message;->attachmentType:Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;

    :cond_5
    and-int/lit8 p14, p13, 0x40

    if-eqz p14, :cond_6

    iget-object p7, p0, Lorg/ies/tierno/applicationamani/domain/models/Message;->attachmentName:Ljava/lang/String;

    :cond_6
    and-int/lit16 p14, p13, 0x80

    if-eqz p14, :cond_7

    iget-wide p8, p0, Lorg/ies/tierno/applicationamani/domain/models/Message;->timestamp:J

    :cond_7
    and-int/lit16 p14, p13, 0x100

    if-eqz p14, :cond_8

    iget-boolean p10, p0, Lorg/ies/tierno/applicationamani/domain/models/Message;->isRead:Z

    :cond_8
    and-int/lit16 p14, p13, 0x200

    if-eqz p14, :cond_9

    iget-object p11, p0, Lorg/ies/tierno/applicationamani/domain/models/Message;->deliveredAt:Ljava/lang/Long;

    :cond_9
    and-int/lit16 p13, p13, 0x400

    if-eqz p13, :cond_a

    iget-object p12, p0, Lorg/ies/tierno/applicationamani/domain/models/Message;->readBy:Ljava/util/Map;

    :cond_a
    move-object p13, p11

    move-object p14, p12

    move p12, p10

    move-wide p10, p8

    move-object p8, p6

    move-object p9, p7

    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p14}, Lorg/ies/tierno/applicationamani/domain/models/Message;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;Ljava/lang/String;JZLjava/lang/Long;Ljava/util/Map;)Lorg/ies/tierno/applicationamani/domain/models/Message;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/models/Message;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/models/Message;->deliveredAt:Ljava/lang/Long;

    return-object v0
.end method

.method public final component11()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/models/Message;->readBy:Ljava/util/Map;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/models/Message;->conversationId:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/models/Message;->senderId:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/models/Message;->content:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/models/Message;->attachmentUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/models/Message;->attachmentType:Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/models/Message;->attachmentName:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()J
    .locals 2

    iget-wide v0, p0, Lorg/ies/tierno/applicationamani/domain/models/Message;->timestamp:J

    return-wide v0
.end method

.method public final component9()Z
    .locals 1

    iget-boolean v0, p0, Lorg/ies/tierno/applicationamani/domain/models/Message;->isRead:Z

    return v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;Ljava/lang/String;JZLjava/lang/Long;Ljava/util/Map;)Lorg/ies/tierno/applicationamani/domain/models/Message;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;",
            "Ljava/lang/String;",
            "JZ",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)",
            "Lorg/ies/tierno/applicationamani/domain/models/Message;"
        }
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "conversationId"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "senderId"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lorg/ies/tierno/applicationamani/domain/models/Message;

    move-object v2, p1

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-wide/from16 v9, p8

    move/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-direct/range {v1 .. v13}, Lorg/ies/tierno/applicationamani/domain/models/Message;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;Ljava/lang/String;JZLjava/lang/Long;Ljava/util/Map;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/ies/tierno/applicationamani/domain/models/Message;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/ies/tierno/applicationamani/domain/models/Message;

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/domain/models/Message;->id:Ljava/lang/String;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/domain/models/Message;->id:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/domain/models/Message;->conversationId:Ljava/lang/String;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/domain/models/Message;->conversationId:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/domain/models/Message;->senderId:Ljava/lang/String;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/domain/models/Message;->senderId:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    :cond_4
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/domain/models/Message;->content:Ljava/lang/String;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/domain/models/Message;->content:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    return v2

    :cond_5
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/domain/models/Message;->attachmentUrl:Ljava/lang/String;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/domain/models/Message;->attachmentUrl:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    return v2

    :cond_6
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/domain/models/Message;->attachmentType:Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/domain/models/Message;->attachmentType:Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;

    if-eq v3, v4, :cond_7

    return v2

    :cond_7
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/domain/models/Message;->attachmentName:Ljava/lang/String;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/domain/models/Message;->attachmentName:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    return v2

    :cond_8
    iget-wide v3, p0, Lorg/ies/tierno/applicationamani/domain/models/Message;->timestamp:J

    iget-wide v5, v1, Lorg/ies/tierno/applicationamani/domain/models/Message;->timestamp:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_9

    return v2

    :cond_9
    iget-boolean v3, p0, Lorg/ies/tierno/applicationamani/domain/models/Message;->isRead:Z

    iget-boolean v4, v1, Lorg/ies/tierno/applicationamani/domain/models/Message;->isRead:Z

    if-eq v3, v4, :cond_a

    return v2

    :cond_a
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/domain/models/Message;->deliveredAt:Ljava/lang/Long;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/domain/models/Message;->deliveredAt:Ljava/lang/Long;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    return v2

    :cond_b
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/domain/models/Message;->readBy:Ljava/util/Map;

    iget-object v1, v1, Lorg/ies/tierno/applicationamani/domain/models/Message;->readBy:Ljava/util/Map;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    return v0
.end method

.method public final getAttachmentName()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/models/Message;->attachmentName:Ljava/lang/String;

    return-object v0
.end method

.method public final getAttachmentType()Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;
    .locals 1

    .line 9
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/models/Message;->attachmentType:Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;

    return-object v0
.end method

.method public final getAttachmentUrl()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/models/Message;->attachmentUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getContent()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/models/Message;->content:Ljava/lang/String;

    return-object v0
.end method

.method public final getConversationId()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/models/Message;->conversationId:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeliveredAt()Ljava/lang/Long;
    .locals 1

    .line 13
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/models/Message;->deliveredAt:Ljava/lang/Long;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/models/Message;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getReadBy()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/models/Message;->readBy:Ljava/util/Map;

    return-object v0
.end method

.method public final getSenderId()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/models/Message;->senderId:Ljava/lang/String;

    return-object v0
.end method

.method public final getTimestamp()J
    .locals 2

    .line 11
    iget-wide v0, p0, Lorg/ies/tierno/applicationamani/domain/models/Message;->timestamp:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 6

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/models/Message;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/domain/models/Message;->conversationId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/domain/models/Message;->senderId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/domain/models/Message;->content:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/domain/models/Message;->attachmentUrl:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/domain/models/Message;->attachmentUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/domain/models/Message;->attachmentType:Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/domain/models/Message;->attachmentType:Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;

    invoke-virtual {v2}, Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/domain/models/Message;->attachmentName:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/domain/models/Message;->attachmentName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v4, p0, Lorg/ies/tierno/applicationamani/domain/models/Message;->timestamp:J

    invoke-static {v4, v5}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lorg/ies/tierno/applicationamani/domain/models/Message;->isRead:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/domain/models/Message;->deliveredAt:Ljava/lang/Long;

    if-nez v2, :cond_3

    move v2, v3

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/domain/models/Message;->deliveredAt:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/domain/models/Message;->readBy:Ljava/util/Map;

    if-nez v2, :cond_4

    goto :goto_4

    :cond_4
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/domain/models/Message;->readBy:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    return v0
.end method

.method public final isDelivered()Z
    .locals 1

    .line 17
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/models/Message;->deliveredAt:Ljava/lang/Long;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isRead()Z
    .locals 1

    .line 12
    iget-boolean v0, p0, Lorg/ies/tierno/applicationamani/domain/models/Message;->isRead:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 14

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/models/Message;->id:Ljava/lang/String;

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/domain/models/Message;->conversationId:Ljava/lang/String;

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/domain/models/Message;->senderId:Ljava/lang/String;

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/domain/models/Message;->content:Ljava/lang/String;

    iget-object v4, p0, Lorg/ies/tierno/applicationamani/domain/models/Message;->attachmentUrl:Ljava/lang/String;

    iget-object v5, p0, Lorg/ies/tierno/applicationamani/domain/models/Message;->attachmentType:Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;

    iget-object v6, p0, Lorg/ies/tierno/applicationamani/domain/models/Message;->attachmentName:Ljava/lang/String;

    iget-wide v7, p0, Lorg/ies/tierno/applicationamani/domain/models/Message;->timestamp:J

    iget-boolean v9, p0, Lorg/ies/tierno/applicationamani/domain/models/Message;->isRead:Z

    iget-object v10, p0, Lorg/ies/tierno/applicationamani/domain/models/Message;->deliveredAt:Ljava/lang/Long;

    iget-object v11, p0, Lorg/ies/tierno/applicationamani/domain/models/Message;->readBy:Ljava/util/Map;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Message(id="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, ", conversationId="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", senderId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", attachmentUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", attachmentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", attachmentName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isRead="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deliveredAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", readBy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
