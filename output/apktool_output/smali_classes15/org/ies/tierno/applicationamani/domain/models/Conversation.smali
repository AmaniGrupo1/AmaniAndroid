.class public final Lorg/ies/tierno/applicationamani/domain/models/Conversation;
.super Ljava/lang/Object;
.source "Conversation.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u001a\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001Ba\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\t\u0010\u001e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010 \u001a\u00020\u0003H\u00c6\u0003J\t\u0010!\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\"\u001a\u00020\u0003H\u00c6\u0003J\t\u0010#\u001a\u00020\u0003H\u00c6\u0003J\t\u0010$\u001a\u00020\nH\u00c6\u0003J\t\u0010%\u001a\u00020\u000cH\u00c6\u0003J\t\u0010&\u001a\u00020\u000eH\u00c6\u0003Jc\u0010\'\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00032\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000eH\u00c6\u0001J\u0013\u0010(\u001a\u00020)2\u0008\u0010*\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010+\u001a\u00020\u000eH\u00d6\u0001J\t\u0010,\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0012R\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0012R\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0012R\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0012R\u0011\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0012R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0011\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u0011\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\u00a8\u0006-"
    }
    d2 = {
        "Lorg/ies/tierno/applicationamani/domain/models/Conversation;",
        "",
        "id",
        "",
        "pacienteId",
        "pacienteNombre",
        "psicologoId",
        "psicologoNombre",
        "lastMessage",
        "lastMessageTime",
        "",
        "estado",
        "Lorg/ies/tierno/applicationamani/domain/models/ConversationState;",
        "unreadCount",
        "",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLorg/ies/tierno/applicationamani/domain/models/ConversationState;I)V",
        "getId",
        "()Ljava/lang/String;",
        "getPacienteId",
        "getPacienteNombre",
        "getPsicologoId",
        "getPsicologoNombre",
        "getLastMessage",
        "getLastMessageTime",
        "()J",
        "getEstado",
        "()Lorg/ies/tierno/applicationamani/domain/models/ConversationState;",
        "getUnreadCount",
        "()I",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
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
.field private final estado:Lorg/ies/tierno/applicationamani/domain/models/ConversationState;

.field private final id:Ljava/lang/String;

.field private final lastMessage:Ljava/lang/String;

.field private final lastMessageTime:J

.field private final pacienteId:Ljava/lang/String;

.field private final pacienteNombre:Ljava/lang/String;

.field private final psicologoId:Ljava/lang/String;

.field private final psicologoNombre:Ljava/lang/String;

.field private final unreadCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 13

    const/16 v11, 0x1ff

    const/4 v12, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lorg/ies/tierno/applicationamani/domain/models/Conversation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLorg/ies/tierno/applicationamani/domain/models/ConversationState;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLorg/ies/tierno/applicationamani/domain/models/ConversationState;I)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "pacienteId"    # Ljava/lang/String;
    .param p3, "pacienteNombre"    # Ljava/lang/String;
    .param p4, "psicologoId"    # Ljava/lang/String;
    .param p5, "psicologoNombre"    # Ljava/lang/String;
    .param p6, "lastMessage"    # Ljava/lang/String;
    .param p7, "lastMessageTime"    # J
    .param p9, "estado"    # Lorg/ies/tierno/applicationamani/domain/models/ConversationState;
    .param p10, "unreadCount"    # I

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pacienteId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pacienteNombre"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "psicologoId"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "psicologoNombre"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lastMessage"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "estado"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lorg/ies/tierno/applicationamani/domain/models/Conversation;->id:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lorg/ies/tierno/applicationamani/domain/models/Conversation;->pacienteId:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lorg/ies/tierno/applicationamani/domain/models/Conversation;->pacienteNombre:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lorg/ies/tierno/applicationamani/domain/models/Conversation;->psicologoId:Ljava/lang/String;

    .line 8
    iput-object p5, p0, Lorg/ies/tierno/applicationamani/domain/models/Conversation;->psicologoNombre:Ljava/lang/String;

    .line 9
    iput-object p6, p0, Lorg/ies/tierno/applicationamani/domain/models/Conversation;->lastMessage:Ljava/lang/String;

    .line 10
    iput-wide p7, p0, Lorg/ies/tierno/applicationamani/domain/models/Conversation;->lastMessageTime:J

    .line 11
    iput-object p9, p0, Lorg/ies/tierno/applicationamani/domain/models/Conversation;->estado:Lorg/ies/tierno/applicationamani/domain/models/ConversationState;

    .line 12
    iput p10, p0, Lorg/ies/tierno/applicationamani/domain/models/Conversation;->unreadCount:I

    .line 3
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLorg/ies/tierno/applicationamani/domain/models/ConversationState;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    .line 3
    and-int/lit8 p12, p11, 0x1

    const-string v0, ""

    if-eqz p12, :cond_0

    .line 4
    move-object p1, v0

    .line 3
    :cond_0
    and-int/lit8 p12, p11, 0x2

    if-eqz p12, :cond_1

    .line 5
    move-object p2, v0

    .line 3
    :cond_1
    and-int/lit8 p12, p11, 0x4

    if-eqz p12, :cond_2

    .line 6
    move-object p3, v0

    .line 3
    :cond_2
    and-int/lit8 p12, p11, 0x8

    if-eqz p12, :cond_3

    .line 7
    move-object p4, v0

    .line 3
    :cond_3
    and-int/lit8 p12, p11, 0x10

    if-eqz p12, :cond_4

    .line 8
    move-object p5, v0

    .line 3
    :cond_4
    and-int/lit8 p12, p11, 0x20

    if-eqz p12, :cond_5

    .line 9
    move-object p6, v0

    .line 3
    :cond_5
    and-int/lit8 p12, p11, 0x40

    if-eqz p12, :cond_6

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p7

    .line 3
    :cond_6
    and-int/lit16 p12, p11, 0x80

    if-eqz p12, :cond_7

    .line 11
    sget-object p9, Lorg/ies/tierno/applicationamani/domain/models/ConversationState;->ACTIVA:Lorg/ies/tierno/applicationamani/domain/models/ConversationState;

    .line 3
    :cond_7
    and-int/lit16 p11, p11, 0x100

    if-eqz p11, :cond_8

    .line 12
    const/4 p10, 0x0

    move p11, p10

    goto :goto_0

    .line 3
    :cond_8
    move p11, p10

    :goto_0
    move-object p10, p9

    move-wide p8, p7

    move-object p7, p6

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    invoke-direct/range {p1 .. p11}, Lorg/ies/tierno/applicationamani/domain/models/Conversation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLorg/ies/tierno/applicationamani/domain/models/ConversationState;I)V

    .line 13
    return-void
.end method

.method public static synthetic copy$default(Lorg/ies/tierno/applicationamani/domain/models/Conversation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLorg/ies/tierno/applicationamani/domain/models/ConversationState;IILjava/lang/Object;)Lorg/ies/tierno/applicationamani/domain/models/Conversation;
    .locals 0

    and-int/lit8 p12, p11, 0x1

    if-eqz p12, :cond_0

    iget-object p1, p0, Lorg/ies/tierno/applicationamani/domain/models/Conversation;->id:Ljava/lang/String;

    :cond_0
    and-int/lit8 p12, p11, 0x2

    if-eqz p12, :cond_1

    iget-object p2, p0, Lorg/ies/tierno/applicationamani/domain/models/Conversation;->pacienteId:Ljava/lang/String;

    :cond_1
    and-int/lit8 p12, p11, 0x4

    if-eqz p12, :cond_2

    iget-object p3, p0, Lorg/ies/tierno/applicationamani/domain/models/Conversation;->pacienteNombre:Ljava/lang/String;

    :cond_2
    and-int/lit8 p12, p11, 0x8

    if-eqz p12, :cond_3

    iget-object p4, p0, Lorg/ies/tierno/applicationamani/domain/models/Conversation;->psicologoId:Ljava/lang/String;

    :cond_3
    and-int/lit8 p12, p11, 0x10

    if-eqz p12, :cond_4

    iget-object p5, p0, Lorg/ies/tierno/applicationamani/domain/models/Conversation;->psicologoNombre:Ljava/lang/String;

    :cond_4
    and-int/lit8 p12, p11, 0x20

    if-eqz p12, :cond_5

    iget-object p6, p0, Lorg/ies/tierno/applicationamani/domain/models/Conversation;->lastMessage:Ljava/lang/String;

    :cond_5
    and-int/lit8 p12, p11, 0x40

    if-eqz p12, :cond_6

    iget-wide p7, p0, Lorg/ies/tierno/applicationamani/domain/models/Conversation;->lastMessageTime:J

    :cond_6
    and-int/lit16 p12, p11, 0x80

    if-eqz p12, :cond_7

    iget-object p9, p0, Lorg/ies/tierno/applicationamani/domain/models/Conversation;->estado:Lorg/ies/tierno/applicationamani/domain/models/ConversationState;

    :cond_7
    and-int/lit16 p11, p11, 0x100

    if-eqz p11, :cond_8

    iget p10, p0, Lorg/ies/tierno/applicationamani/domain/models/Conversation;->unreadCount:I

    :cond_8
    move-object p11, p9

    move p12, p10

    move-wide p9, p7

    move-object p7, p5

    move-object p8, p6

    move-object p5, p3

    move-object p6, p4

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p12}, Lorg/ies/tierno/applicationamani/domain/models/Conversation;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLorg/ies/tierno/applicationamani/domain/models/ConversationState;I)Lorg/ies/tierno/applicationamani/domain/models/Conversation;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/models/Conversation;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/models/Conversation;->pacienteId:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/models/Conversation;->pacienteNombre:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/models/Conversation;->psicologoId:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/models/Conversation;->psicologoNombre:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/models/Conversation;->lastMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()J
    .locals 2

    iget-wide v0, p0, Lorg/ies/tierno/applicationamani/domain/models/Conversation;->lastMessageTime:J

    return-wide v0
.end method

.method public final component8()Lorg/ies/tierno/applicationamani/domain/models/ConversationState;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/models/Conversation;->estado:Lorg/ies/tierno/applicationamani/domain/models/ConversationState;

    return-object v0
.end method

.method public final component9()I
    .locals 1

    iget v0, p0, Lorg/ies/tierno/applicationamani/domain/models/Conversation;->unreadCount:I

    return v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLorg/ies/tierno/applicationamani/domain/models/ConversationState;I)Lorg/ies/tierno/applicationamani/domain/models/Conversation;
    .locals 12

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pacienteId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pacienteNombre"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "psicologoId"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "psicologoNombre"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lastMessage"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "estado"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lorg/ies/tierno/applicationamani/domain/models/Conversation;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide/from16 v8, p7

    move/from16 v11, p10

    invoke-direct/range {v1 .. v11}, Lorg/ies/tierno/applicationamani/domain/models/Conversation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLorg/ies/tierno/applicationamani/domain/models/ConversationState;I)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/ies/tierno/applicationamani/domain/models/Conversation;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/ies/tierno/applicationamani/domain/models/Conversation;

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/domain/models/Conversation;->id:Ljava/lang/String;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/domain/models/Conversation;->id:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/domain/models/Conversation;->pacienteId:Ljava/lang/String;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/domain/models/Conversation;->pacienteId:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/domain/models/Conversation;->pacienteNombre:Ljava/lang/String;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/domain/models/Conversation;->pacienteNombre:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    :cond_4
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/domain/models/Conversation;->psicologoId:Ljava/lang/String;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/domain/models/Conversation;->psicologoId:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    return v2

    :cond_5
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/domain/models/Conversation;->psicologoNombre:Ljava/lang/String;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/domain/models/Conversation;->psicologoNombre:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    return v2

    :cond_6
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/domain/models/Conversation;->lastMessage:Ljava/lang/String;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/domain/models/Conversation;->lastMessage:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    return v2

    :cond_7
    iget-wide v3, p0, Lorg/ies/tierno/applicationamani/domain/models/Conversation;->lastMessageTime:J

    iget-wide v5, v1, Lorg/ies/tierno/applicationamani/domain/models/Conversation;->lastMessageTime:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_8

    return v2

    :cond_8
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/domain/models/Conversation;->estado:Lorg/ies/tierno/applicationamani/domain/models/ConversationState;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/domain/models/Conversation;->estado:Lorg/ies/tierno/applicationamani/domain/models/ConversationState;

    if-eq v3, v4, :cond_9

    return v2

    :cond_9
    iget v3, p0, Lorg/ies/tierno/applicationamani/domain/models/Conversation;->unreadCount:I

    iget v1, v1, Lorg/ies/tierno/applicationamani/domain/models/Conversation;->unreadCount:I

    if-eq v3, v1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final getEstado()Lorg/ies/tierno/applicationamani/domain/models/ConversationState;
    .locals 1

    .line 11
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/models/Conversation;->estado:Lorg/ies/tierno/applicationamani/domain/models/ConversationState;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/models/Conversation;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getLastMessage()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/models/Conversation;->lastMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final getLastMessageTime()J
    .locals 2

    .line 10
    iget-wide v0, p0, Lorg/ies/tierno/applicationamani/domain/models/Conversation;->lastMessageTime:J

    return-wide v0
.end method

.method public final getPacienteId()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/models/Conversation;->pacienteId:Ljava/lang/String;

    return-object v0
.end method

.method public final getPacienteNombre()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/models/Conversation;->pacienteNombre:Ljava/lang/String;

    return-object v0
.end method

.method public final getPsicologoId()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/models/Conversation;->psicologoId:Ljava/lang/String;

    return-object v0
.end method

.method public final getPsicologoNombre()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/models/Conversation;->psicologoNombre:Ljava/lang/String;

    return-object v0
.end method

.method public final getUnreadCount()I
    .locals 1

    .line 12
    iget v0, p0, Lorg/ies/tierno/applicationamani/domain/models/Conversation;->unreadCount:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/models/Conversation;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/domain/models/Conversation;->pacienteId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/domain/models/Conversation;->pacienteNombre:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/domain/models/Conversation;->psicologoId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/domain/models/Conversation;->psicologoNombre:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/domain/models/Conversation;->lastMessage:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lorg/ies/tierno/applicationamani/domain/models/Conversation;->lastMessageTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/domain/models/Conversation;->estado:Lorg/ies/tierno/applicationamani/domain/models/ConversationState;

    invoke-virtual {v2}, Lorg/ies/tierno/applicationamani/domain/models/ConversationState;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lorg/ies/tierno/applicationamani/domain/models/Conversation;->unreadCount:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/models/Conversation;->id:Ljava/lang/String;

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/domain/models/Conversation;->pacienteId:Ljava/lang/String;

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/domain/models/Conversation;->pacienteNombre:Ljava/lang/String;

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/domain/models/Conversation;->psicologoId:Ljava/lang/String;

    iget-object v4, p0, Lorg/ies/tierno/applicationamani/domain/models/Conversation;->psicologoNombre:Ljava/lang/String;

    iget-object v5, p0, Lorg/ies/tierno/applicationamani/domain/models/Conversation;->lastMessage:Ljava/lang/String;

    iget-wide v6, p0, Lorg/ies/tierno/applicationamani/domain/models/Conversation;->lastMessageTime:J

    iget-object v8, p0, Lorg/ies/tierno/applicationamani/domain/models/Conversation;->estado:Lorg/ies/tierno/applicationamani/domain/models/ConversationState;

    iget v9, p0, Lorg/ies/tierno/applicationamani/domain/models/Conversation;->unreadCount:I

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Conversation(id="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, ", pacienteId="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pacienteNombre="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", psicologoId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", psicologoNombre="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastMessageTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", estado="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", unreadCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
