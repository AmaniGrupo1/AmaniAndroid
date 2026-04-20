.class public final Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListItem$MessageItem;
.super Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListItem;
.source "ChatUiModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MessageItem"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000c\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\t\u0010\u000c\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\r\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u000e\u001a\u00020\u0005H\u00c6\u0003J\'\u0010\u000f\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0010\u001a\u00020\u00052\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u00d6\u0003J\t\u0010\u0013\u001a\u00020\u0014H\u00d6\u0001J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0004\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u000b\u00a8\u0006\u0017"
    }
    d2 = {
        "Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListItem$MessageItem;",
        "Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListItem;",
        "msg",
        "Lorg/ies/tierno/applicationamani/domain/models/Message;",
        "isFirstInGroup",
        "",
        "isLastInGroup",
        "<init>",
        "(Lorg/ies/tierno/applicationamani/domain/models/Message;ZZ)V",
        "getMsg",
        "()Lorg/ies/tierno/applicationamani/domain/models/Message;",
        "()Z",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
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
.field private final isFirstInGroup:Z

.field private final isLastInGroup:Z

.field private final msg:Lorg/ies/tierno/applicationamani/domain/models/Message;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListItem$MessageItem;->$stable:I

    return-void
.end method

.method public constructor <init>(Lorg/ies/tierno/applicationamani/domain/models/Message;ZZ)V
    .locals 1
    .param p1, "msg"    # Lorg/ies/tierno/applicationamani/domain/models/Message;
    .param p2, "isFirstInGroup"    # Z
    .param p3, "isLastInGroup"    # Z

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListItem;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 12
    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListItem$MessageItem;->msg:Lorg/ies/tierno/applicationamani/domain/models/Message;

    .line 13
    iput-boolean p2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListItem$MessageItem;->isFirstInGroup:Z

    .line 14
    iput-boolean p3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListItem$MessageItem;->isLastInGroup:Z

    .line 11
    return-void
.end method

.method public static synthetic copy$default(Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListItem$MessageItem;Lorg/ies/tierno/applicationamani/domain/models/Message;ZZILjava/lang/Object;)Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListItem$MessageItem;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListItem$MessageItem;->msg:Lorg/ies/tierno/applicationamani/domain/models/Message;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-boolean p2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListItem$MessageItem;->isFirstInGroup:Z

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-boolean p3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListItem$MessageItem;->isLastInGroup:Z

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListItem$MessageItem;->copy(Lorg/ies/tierno/applicationamani/domain/models/Message;ZZ)Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListItem$MessageItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lorg/ies/tierno/applicationamani/domain/models/Message;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListItem$MessageItem;->msg:Lorg/ies/tierno/applicationamani/domain/models/Message;

    return-object v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListItem$MessageItem;->isFirstInGroup:Z

    return v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListItem$MessageItem;->isLastInGroup:Z

    return v0
.end method

.method public final copy(Lorg/ies/tierno/applicationamani/domain/models/Message;ZZ)Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListItem$MessageItem;
    .locals 1

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListItem$MessageItem;

    invoke-direct {v0, p1, p2, p3}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListItem$MessageItem;-><init>(Lorg/ies/tierno/applicationamani/domain/models/Message;ZZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListItem$MessageItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListItem$MessageItem;

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListItem$MessageItem;->msg:Lorg/ies/tierno/applicationamani/domain/models/Message;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListItem$MessageItem;->msg:Lorg/ies/tierno/applicationamani/domain/models/Message;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget-boolean v3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListItem$MessageItem;->isFirstInGroup:Z

    iget-boolean v4, v1, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListItem$MessageItem;->isFirstInGroup:Z

    if-eq v3, v4, :cond_3

    return v2

    :cond_3
    iget-boolean v3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListItem$MessageItem;->isLastInGroup:Z

    iget-boolean v1, v1, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListItem$MessageItem;->isLastInGroup:Z

    if-eq v3, v1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getMsg()Lorg/ies/tierno/applicationamani/domain/models/Message;
    .locals 1

    .line 12
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListItem$MessageItem;->msg:Lorg/ies/tierno/applicationamani/domain/models/Message;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListItem$MessageItem;->msg:Lorg/ies/tierno/applicationamani/domain/models/Message;

    invoke-virtual {v0}, Lorg/ies/tierno/applicationamani/domain/models/Message;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListItem$MessageItem;->isFirstInGroup:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListItem$MessageItem;->isLastInGroup:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public final isFirstInGroup()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListItem$MessageItem;->isFirstInGroup:Z

    return v0
.end method

.method public final isLastInGroup()Z
    .locals 1

    .line 14
    iget-boolean v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListItem$MessageItem;->isLastInGroup:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListItem$MessageItem;->msg:Lorg/ies/tierno/applicationamani/domain/models/Message;

    iget-boolean v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListItem$MessageItem;->isFirstInGroup:Z

    iget-boolean v2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListItem$MessageItem;->isLastInGroup:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MessageItem(msg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", isFirstInGroup="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isLastInGroup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
