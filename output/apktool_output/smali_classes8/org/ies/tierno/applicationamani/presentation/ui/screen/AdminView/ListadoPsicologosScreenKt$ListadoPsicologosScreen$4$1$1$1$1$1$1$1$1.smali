.class final Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1$1$1$1;
.super Ljava/lang/Object;
.source "ListadoPsicologosScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1;->invoke(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $mostrarDialogoBaja$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $psicologo:Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoSelfResponseDTO;

.field final synthetic $psicologoSeleccionado$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoSelfResponseDTO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoSelfResponseDTO;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoSelfResponseDTO;",
            "Landroidx/compose/runtime/MutableState<",
            "Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoSelfResponseDTO;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1$1$1$1;->$psicologo:Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoSelfResponseDTO;

    iput-object p2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1$1$1$1;->$psicologoSeleccionado$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1$1$1$1;->$mostrarDialogoBaja$delegate:Landroidx/compose/runtime/MutableState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 132
    invoke-virtual {p0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1$1$1$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 133
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1$1$1$1;->$psicologoSeleccionado$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1$1$1$1;->$psicologo:Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoSelfResponseDTO;

    invoke-static {v0, v1}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt;->access$ListadoPsicologosScreen$lambda$4(Landroidx/compose/runtime/MutableState;Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoSelfResponseDTO;)V

    .line 134
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1$1$1$1;->$mostrarDialogoBaja$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt;->access$ListadoPsicologosScreen$lambda$7(Landroidx/compose/runtime/MutableState;Z)V

    .line 135
    return-void
.end method
