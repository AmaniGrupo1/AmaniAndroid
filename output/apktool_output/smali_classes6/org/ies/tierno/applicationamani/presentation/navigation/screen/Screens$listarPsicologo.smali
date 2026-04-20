.class public final Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$listarPsicologo;
.super Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens;
.source "Screens.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "listarPsicologo"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$listarPsicologo;",
        "Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens;",
        "<init>",
        "()V",
        "createRoute",
        "",
        "pacienteId",
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

.field public static final INSTANCE:Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$listarPsicologo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$listarPsicologo;

    invoke-direct {v0}, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$listarPsicologo;-><init>()V

    sput-object v0, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$listarPsicologo;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$listarPsicologo;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 68
    const-string v0, "listarPsicologo/{pacienteId}"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public final createRoute(J)Ljava/lang/String;
    .locals 2
    .param p1, "pacienteId"    # J

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "listarPsicologo/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
