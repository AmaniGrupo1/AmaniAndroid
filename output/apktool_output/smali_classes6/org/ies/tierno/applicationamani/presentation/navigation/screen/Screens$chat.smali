.class public final Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$chat;
.super Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens;
.source "Screens.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "chat"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0005\u00a8\u0006\n"
    }
    d2 = {
        "Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$chat;",
        "Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens;",
        "<init>",
        "()V",
        "createRoute",
        "",
        "currentUserId",
        "",
        "otherUserId",
        "otherUserName",
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

.field public static final INSTANCE:Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$chat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$chat;

    invoke-direct {v0}, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$chat;-><init>()V

    sput-object v0, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$chat;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$chat;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 80
    const-string v0, "chat/{currentUserId}/{otherUserId}/{otherUserName}"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public final createRoute(JJLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "currentUserId"    # J
    .param p3, "otherUserId"    # J
    .param p5, "otherUserName"    # Ljava/lang/String;

    const-string v0, "otherUserName"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "chat/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
