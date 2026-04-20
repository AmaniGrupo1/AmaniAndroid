.class final Lorg/ies/tierno/applicationamani/presentation/components/Routes;
.super Ljava/lang/Object;
.source "BottomBar.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u00c2\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lorg/ies/tierno/applicationamani/presentation/components/Routes;",
        "",
        "<init>",
        "()V",
        "HOME",
        "",
        "CHAT",
        "CITAS",
        "DIARIO",
        "SETTINGS",
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
.field public static final CHAT:Ljava/lang/String; = "chat"

.field public static final CITAS:Ljava/lang/String; = "citas"

.field public static final DIARIO:Ljava/lang/String; = "diario"

.field public static final HOME:Ljava/lang/String; = "home"

.field public static final INSTANCE:Lorg/ies/tierno/applicationamani/presentation/components/Routes;

.field public static final SETTINGS:Ljava/lang/String; = "settings"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/components/Routes;

    invoke-direct {v0}, Lorg/ies/tierno/applicationamani/presentation/components/Routes;-><init>()V

    sput-object v0, Lorg/ies/tierno/applicationamani/presentation/components/Routes;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/components/Routes;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
