.class public final enum Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;
.super Ljava/lang/Enum;
.source "BarraNavegationInferiorAdmin.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0008\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "DOCUMENTOS",
        "MENSAJES",
        "CALENDARIO",
        "ESTADISTICAS",
        "CONFIGURACION",
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
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;

.field public static final enum CALENDARIO:Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;

.field public static final enum CONFIGURACION:Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;

.field public static final enum DOCUMENTOS:Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;

.field public static final enum ESTADISTICAS:Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;

.field public static final enum MENSAJES:Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;


# direct methods
.method private static final synthetic $values()[Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;
    .locals 5

    sget-object v0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;->DOCUMENTOS:Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;

    sget-object v1, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;->MENSAJES:Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;

    sget-object v2, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;->CALENDARIO:Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;

    sget-object v3, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;->ESTADISTICAS:Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;

    sget-object v4, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;->CONFIGURACION:Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;

    filled-new-array {v0, v1, v2, v3, v4}, [Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 23
    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;

    const-string v1, "DOCUMENTOS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;->DOCUMENTOS:Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;

    .line 24
    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;

    const-string v1, "MENSAJES"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;->MENSAJES:Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;

    .line 25
    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;

    const-string v1, "CALENDARIO"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;->CALENDARIO:Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;

    .line 26
    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;

    const-string v1, "ESTADISTICAS"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;->ESTADISTICAS:Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;

    .line 27
    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;

    const-string v1, "CONFIGURACION"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;->CONFIGURACION:Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;

    invoke-static {}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;->$values()[Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;

    move-result-object v0

    sput-object v0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;->$VALUES:[Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;

    sget-object v0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;->$VALUES:[Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "$enum$name"    # Ljava/lang/String;
    .param p2, "$enum$ordinal"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;
    .locals 1

    const-class v0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;

    return-object v0
.end method

.method public static values()[Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;
    .locals 1

    sget-object v0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;->$VALUES:[Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/AdminNavItem;

    return-object v0
.end method
