.class public final Lorg/ies/tierno/applicationamani/presentation/ui/screens/psicologo/AmaniPsicologoColors;
.super Ljava/lang/Object;
.source "ViewPsicologoPrincipal.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u001c\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0013\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\n\n\u0002\u0010\u0008\u001a\u0004\u0008\u0006\u0010\u0007R\u0013\u0010\t\u001a\u00020\u0005\u00a2\u0006\n\n\u0002\u0010\u0008\u001a\u0004\u0008\n\u0010\u0007R\u0013\u0010\u000b\u001a\u00020\u0005\u00a2\u0006\n\n\u0002\u0010\u0008\u001a\u0004\u0008\u000c\u0010\u0007R\u0013\u0010\r\u001a\u00020\u0005\u00a2\u0006\n\n\u0002\u0010\u0008\u001a\u0004\u0008\u000e\u0010\u0007R\u0013\u0010\u000f\u001a\u00020\u0005\u00a2\u0006\n\n\u0002\u0010\u0008\u001a\u0004\u0008\u0010\u0010\u0007R\u0013\u0010\u0011\u001a\u00020\u0005\u00a2\u0006\n\n\u0002\u0010\u0008\u001a\u0004\u0008\u0012\u0010\u0007R\u0013\u0010\u0013\u001a\u00020\u0005\u00a2\u0006\n\n\u0002\u0010\u0008\u001a\u0004\u0008\u0014\u0010\u0007R\u0013\u0010\u0015\u001a\u00020\u0005\u00a2\u0006\n\n\u0002\u0010\u0008\u001a\u0004\u0008\u0016\u0010\u0007R\u0013\u0010\u0017\u001a\u00020\u0005\u00a2\u0006\n\n\u0002\u0010\u0008\u001a\u0004\u0008\u0018\u0010\u0007R\u0013\u0010\u0019\u001a\u00020\u0005\u00a2\u0006\n\n\u0002\u0010\u0008\u001a\u0004\u0008\u001a\u0010\u0007R\u0013\u0010\u001b\u001a\u00020\u0005\u00a2\u0006\n\n\u0002\u0010\u0008\u001a\u0004\u0008\u001c\u0010\u0007R\u0013\u0010\u001d\u001a\u00020\u0005\u00a2\u0006\n\n\u0002\u0010\u0008\u001a\u0004\u0008\u001e\u0010\u0007R\u0013\u0010\u001f\u001a\u00020\u0005\u00a2\u0006\n\n\u0002\u0010\u0008\u001a\u0004\u0008 \u0010\u0007\u00a8\u0006!"
    }
    d2 = {
        "Lorg/ies/tierno/applicationamani/presentation/ui/screens/psicologo/AmaniPsicologoColors;",
        "",
        "<init>",
        "()V",
        "Primary",
        "Landroidx/compose/ui/graphics/Color;",
        "getPrimary-0d7_KjU",
        "()J",
        "J",
        "PrimaryLight",
        "getPrimaryLight-0d7_KjU",
        "PrimaryDark",
        "getPrimaryDark-0d7_KjU",
        "Secondary",
        "getSecondary-0d7_KjU",
        "Accent",
        "getAccent-0d7_KjU",
        "Surface",
        "getSurface-0d7_KjU",
        "Background",
        "getBackground-0d7_KjU",
        "TextPrimary",
        "getTextPrimary-0d7_KjU",
        "TextSecondary",
        "getTextSecondary-0d7_KjU",
        "Success",
        "getSuccess-0d7_KjU",
        "Warning",
        "getWarning-0d7_KjU",
        "Error",
        "getError-0d7_KjU",
        "Info",
        "getInfo-0d7_KjU",
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

.field private static final Accent:J

.field private static final Background:J

.field private static final Error:J

.field public static final INSTANCE:Lorg/ies/tierno/applicationamani/presentation/ui/screens/psicologo/AmaniPsicologoColors;

.field private static final Info:J

.field private static final Primary:J

.field private static final PrimaryDark:J

.field private static final PrimaryLight:J

.field private static final Secondary:J

.field private static final Success:J

.field private static final Surface:J

.field private static final TextPrimary:J

.field private static final TextSecondary:J

.field private static final Warning:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/ui/screens/psicologo/AmaniPsicologoColors;

    invoke-direct {v0}, Lorg/ies/tierno/applicationamani/presentation/ui/screens/psicologo/AmaniPsicologoColors;-><init>()V

    sput-object v0, Lorg/ies/tierno/applicationamani/presentation/ui/screens/psicologo/AmaniPsicologoColors;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/ui/screens/psicologo/AmaniPsicologoColors;

    .line 99
    const-wide v0, 0xff6b4e71L

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    sput-wide v0, Lorg/ies/tierno/applicationamani/presentation/ui/screens/psicologo/AmaniPsicologoColors;->Primary:J

    .line 100
    const-wide v0, 0xff9b7e9fL

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    sput-wide v0, Lorg/ies/tierno/applicationamani/presentation/ui/screens/psicologo/AmaniPsicologoColors;->PrimaryLight:J

    .line 101
    const-wide v0, 0xff4a2b50L

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    sput-wide v0, Lorg/ies/tierno/applicationamani/presentation/ui/screens/psicologo/AmaniPsicologoColors;->PrimaryDark:J

    .line 102
    const-wide v0, 0xffe8b4b8L

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    sput-wide v0, Lorg/ies/tierno/applicationamani/presentation/ui/screens/psicologo/AmaniPsicologoColors;->Secondary:J

    .line 103
    const-wide v0, 0xfff5e6e8L

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    sput-wide v0, Lorg/ies/tierno/applicationamani/presentation/ui/screens/psicologo/AmaniPsicologoColors;->Accent:J

    .line 104
    const-wide v0, 0xffffffffL

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    sput-wide v0, Lorg/ies/tierno/applicationamani/presentation/ui/screens/psicologo/AmaniPsicologoColors;->Surface:J

    .line 105
    const-wide v0, 0xfffdf8f9L

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    sput-wide v0, Lorg/ies/tierno/applicationamani/presentation/ui/screens/psicologo/AmaniPsicologoColors;->Background:J

    .line 106
    const-wide v0, 0xff2d1b30L

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    sput-wide v0, Lorg/ies/tierno/applicationamani/presentation/ui/screens/psicologo/AmaniPsicologoColors;->TextPrimary:J

    .line 107
    const-wide v0, 0xff7a6b7eL

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    sput-wide v0, Lorg/ies/tierno/applicationamani/presentation/ui/screens/psicologo/AmaniPsicologoColors;->TextSecondary:J

    .line 108
    const-wide v0, 0xff81c784L

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    sput-wide v0, Lorg/ies/tierno/applicationamani/presentation/ui/screens/psicologo/AmaniPsicologoColors;->Success:J

    .line 109
    const-wide v0, 0xffffb74dL

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    sput-wide v0, Lorg/ies/tierno/applicationamani/presentation/ui/screens/psicologo/AmaniPsicologoColors;->Warning:J

    .line 110
    const-wide v0, 0xffe57373L

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    sput-wide v0, Lorg/ies/tierno/applicationamani/presentation/ui/screens/psicologo/AmaniPsicologoColors;->Error:J

    .line 111
    const-wide v0, 0xff64b5f6L

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    sput-wide v0, Lorg/ies/tierno/applicationamani/presentation/ui/screens/psicologo/AmaniPsicologoColors;->Info:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAccent-0d7_KjU()J
    .locals 2

    .line 103
    sget-wide v0, Lorg/ies/tierno/applicationamani/presentation/ui/screens/psicologo/AmaniPsicologoColors;->Accent:J

    return-wide v0
.end method

.method public final getBackground-0d7_KjU()J
    .locals 2

    .line 105
    sget-wide v0, Lorg/ies/tierno/applicationamani/presentation/ui/screens/psicologo/AmaniPsicologoColors;->Background:J

    return-wide v0
.end method

.method public final getError-0d7_KjU()J
    .locals 2

    .line 110
    sget-wide v0, Lorg/ies/tierno/applicationamani/presentation/ui/screens/psicologo/AmaniPsicologoColors;->Error:J

    return-wide v0
.end method

.method public final getInfo-0d7_KjU()J
    .locals 2

    .line 111
    sget-wide v0, Lorg/ies/tierno/applicationamani/presentation/ui/screens/psicologo/AmaniPsicologoColors;->Info:J

    return-wide v0
.end method

.method public final getPrimary-0d7_KjU()J
    .locals 2

    .line 99
    sget-wide v0, Lorg/ies/tierno/applicationamani/presentation/ui/screens/psicologo/AmaniPsicologoColors;->Primary:J

    return-wide v0
.end method

.method public final getPrimaryDark-0d7_KjU()J
    .locals 2

    .line 101
    sget-wide v0, Lorg/ies/tierno/applicationamani/presentation/ui/screens/psicologo/AmaniPsicologoColors;->PrimaryDark:J

    return-wide v0
.end method

.method public final getPrimaryLight-0d7_KjU()J
    .locals 2

    .line 100
    sget-wide v0, Lorg/ies/tierno/applicationamani/presentation/ui/screens/psicologo/AmaniPsicologoColors;->PrimaryLight:J

    return-wide v0
.end method

.method public final getSecondary-0d7_KjU()J
    .locals 2

    .line 102
    sget-wide v0, Lorg/ies/tierno/applicationamani/presentation/ui/screens/psicologo/AmaniPsicologoColors;->Secondary:J

    return-wide v0
.end method

.method public final getSuccess-0d7_KjU()J
    .locals 2

    .line 108
    sget-wide v0, Lorg/ies/tierno/applicationamani/presentation/ui/screens/psicologo/AmaniPsicologoColors;->Success:J

    return-wide v0
.end method

.method public final getSurface-0d7_KjU()J
    .locals 2

    .line 104
    sget-wide v0, Lorg/ies/tierno/applicationamani/presentation/ui/screens/psicologo/AmaniPsicologoColors;->Surface:J

    return-wide v0
.end method

.method public final getTextPrimary-0d7_KjU()J
    .locals 2

    .line 106
    sget-wide v0, Lorg/ies/tierno/applicationamani/presentation/ui/screens/psicologo/AmaniPsicologoColors;->TextPrimary:J

    return-wide v0
.end method

.method public final getTextSecondary-0d7_KjU()J
    .locals 2

    .line 107
    sget-wide v0, Lorg/ies/tierno/applicationamani/presentation/ui/screens/psicologo/AmaniPsicologoColors;->TextSecondary:J

    return-wide v0
.end method

.method public final getWarning-0d7_KjU()J
    .locals 2

    .line 109
    sget-wide v0, Lorg/ies/tierno/applicationamani/presentation/ui/screens/psicologo/AmaniPsicologoColors;->Warning:J

    return-wide v0
.end method
