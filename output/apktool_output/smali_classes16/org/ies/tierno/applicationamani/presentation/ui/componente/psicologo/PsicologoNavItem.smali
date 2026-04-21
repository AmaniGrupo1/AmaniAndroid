.class public final enum Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/PsicologoNavItem;
.super Ljava/lang/Enum;
.source "BarraNavegationInferiorPsicologo.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/PsicologoNavItem;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\r\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B,\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0011\u0010\u0004\u001a\r\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0002\u0008\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u001e\u0010\u0004\u001a\r\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0002\u0008\u0007\u00a2\u0006\n\n\u0002\u0010\u000f\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000cj\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/PsicologoNavItem;",
        "",
        "route",
        "",
        "icon",
        "Lkotlin/Function0;",
        "",
        "Landroidx/compose/runtime/Composable;",
        "label",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;Lkotlin/jvm/functions/Function2;Ljava/lang/String;)V",
        "getRoute",
        "()Ljava/lang/String;",
        "getIcon",
        "()Lkotlin/jvm/functions/Function2;",
        "Lkotlin/jvm/functions/Function2;",
        "getLabel",
        "MIS_PACIENTES",
        "AGENDA",
        "PERFIL",
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

.field private static final synthetic $VALUES:[Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/PsicologoNavItem;

.field public static final enum AGENDA:Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/PsicologoNavItem;

.field public static final enum MIS_PACIENTES:Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/PsicologoNavItem;

.field public static final enum PERFIL:Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/PsicologoNavItem;


# instance fields
.field private final icon:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final label:Ljava/lang/String;

.field private final route:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/PsicologoNavItem;
    .locals 3

    sget-object v0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/PsicologoNavItem;->MIS_PACIENTES:Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/PsicologoNavItem;

    sget-object v1, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/PsicologoNavItem;->AGENDA:Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/PsicologoNavItem;

    sget-object v2, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/PsicologoNavItem;->PERFIL:Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/PsicologoNavItem;

    filled-new-array {v0, v1, v2}, [Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/PsicologoNavItem;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 8

    .line 25
    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/PsicologoNavItem;

    .line 26
    sget-object v1, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$psicologoHome;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$psicologoHome;

    invoke-virtual {v1}, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$psicologoHome;->getRoute()Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/ComposableSingletons$BarraNavegationInferiorPsicologoKt;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/ComposableSingletons$BarraNavegationInferiorPsicologoKt;

    invoke-virtual {v1}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/ComposableSingletons$BarraNavegationInferiorPsicologoKt;->getLambda$-827975433$app()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    .line 28
    nop

    .line 25
    const-string v1, "MIS_PACIENTES"

    const/4 v2, 0x0

    const-string v5, "Pacientes"

    invoke-direct/range {v0 .. v5}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/PsicologoNavItem;-><init>(Ljava/lang/String;ILjava/lang/String;Lkotlin/jvm/functions/Function2;Ljava/lang/String;)V

    sput-object v0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/PsicologoNavItem;->MIS_PACIENTES:Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/PsicologoNavItem;

    .line 30
    new-instance v1, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/PsicologoNavItem;

    .line 31
    sget-object v0, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$psicologoAgenda;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$psicologoAgenda;

    invoke-virtual {v0}, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$psicologoAgenda;->getRoute()Ljava/lang/String;

    move-result-object v4

    sget-object v0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/ComposableSingletons$BarraNavegationInferiorPsicologoKt;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/ComposableSingletons$BarraNavegationInferiorPsicologoKt;

    invoke-virtual {v0}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/ComposableSingletons$BarraNavegationInferiorPsicologoKt;->getLambda$-1847790965$app()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    .line 33
    nop

    .line 30
    const-string v2, "AGENDA"

    const/4 v3, 0x1

    const-string v6, "Agenda"

    invoke-direct/range {v1 .. v6}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/PsicologoNavItem;-><init>(Ljava/lang/String;ILjava/lang/String;Lkotlin/jvm/functions/Function2;Ljava/lang/String;)V

    sput-object v1, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/PsicologoNavItem;->AGENDA:Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/PsicologoNavItem;

    .line 35
    new-instance v2, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/PsicologoNavItem;

    .line 36
    sget-object v0, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$perfilPsicologo;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$perfilPsicologo;

    invoke-virtual {v0}, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$perfilPsicologo;->getRoute()Ljava/lang/String;

    move-result-object v5

    sget-object v0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/ComposableSingletons$BarraNavegationInferiorPsicologoKt;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/ComposableSingletons$BarraNavegationInferiorPsicologoKt;

    invoke-virtual {v0}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/ComposableSingletons$BarraNavegationInferiorPsicologoKt;->getLambda$198319307$app()Lkotlin/jvm/functions/Function2;

    move-result-object v6

    .line 38
    nop

    .line 35
    const-string v3, "PERFIL"

    const/4 v4, 0x2

    const-string v7, "Perfil"

    invoke-direct/range {v2 .. v7}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/PsicologoNavItem;-><init>(Ljava/lang/String;ILjava/lang/String;Lkotlin/jvm/functions/Function2;Ljava/lang/String;)V

    sput-object v2, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/PsicologoNavItem;->PERFIL:Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/PsicologoNavItem;

    invoke-static {}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/PsicologoNavItem;->$values()[Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/PsicologoNavItem;

    move-result-object v0

    sput-object v0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/PsicologoNavItem;->$VALUES:[Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/PsicologoNavItem;

    sget-object v0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/PsicologoNavItem;->$VALUES:[Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/PsicologoNavItem;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/PsicologoNavItem;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lkotlin/jvm/functions/Function2;Ljava/lang/String;)V
    .locals 0
    .param p1, "$enum$name"    # Ljava/lang/String;
    .param p2, "$enum$ordinal"    # I
    .param p3, "route"    # Ljava/lang/String;
    .param p4, "icon"    # Lkotlin/jvm/functions/Function2;
    .param p5, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/PsicologoNavItem;->route:Ljava/lang/String;

    iput-object p4, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/PsicologoNavItem;->icon:Lkotlin/jvm/functions/Function2;

    iput-object p5, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/PsicologoNavItem;->label:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/PsicologoNavItem;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/PsicologoNavItem;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/PsicologoNavItem;
    .locals 1

    const-class v0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/PsicologoNavItem;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/PsicologoNavItem;

    return-object v0
.end method

.method public static values()[Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/PsicologoNavItem;
    .locals 1

    sget-object v0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/PsicologoNavItem;->$VALUES:[Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/PsicologoNavItem;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/PsicologoNavItem;

    return-object v0
.end method


# virtual methods
.method public final getIcon()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/PsicologoNavItem;->icon:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public final getLabel()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/PsicologoNavItem;->label:Ljava/lang/String;

    return-object v0
.end method

.method public final getRoute()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/PsicologoNavItem;->route:Ljava/lang/String;

    return-object v0
.end method
