.class public final Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$agregarAdmin;
.super Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens;
.source "Screens.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "agregarAdmin"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$agregarAdmin;",
        "Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens;",
        "<init>",
        "()V",
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

.field public static final INSTANCE:Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$agregarAdmin;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$agregarAdmin;

    invoke-direct {v0}, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$agregarAdmin;-><init>()V

    sput-object v0, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$agregarAdmin;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$agregarAdmin;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 46
    const-string v0, "agregarAdmin"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
