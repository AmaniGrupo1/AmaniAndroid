.class public final Lorg/ies/tierno/applicationamani/presentation/ui/screen/consentimiento/ComposableSingletons$RegistroExitosoScreenKt;
.super Ljava/lang/Object;
.source "RegistroExitosoScreen.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ies/tierno/applicationamani/presentation/ui/screen/consentimiento/ComposableSingletons$RegistroExitosoScreenKt;

.field private static lambda$-2026952961:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Landroidx/compose/foundation/layout/RowScope;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/consentimiento/ComposableSingletons$RegistroExitosoScreenKt;

    invoke-direct {v0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/consentimiento/ComposableSingletons$RegistroExitosoScreenKt;-><init>()V

    sput-object v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/consentimiento/ComposableSingletons$RegistroExitosoScreenKt;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/ui/screen/consentimiento/ComposableSingletons$RegistroExitosoScreenKt;

    .line 48
    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/consentimiento/ComposableSingletons$RegistroExitosoScreenKt$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/consentimiento/ComposableSingletons$RegistroExitosoScreenKt$$ExternalSyntheticLambda0;-><init>()V

    const v1, -0x78d0d901

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function3;

    sput-object v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/consentimiento/ComposableSingletons$RegistroExitosoScreenKt;->lambda$-2026952961:Lkotlin/jvm/functions/Function3;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final lambda__2026952961$lambda$0(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 25
    .param p0, "$this$Button"    # Landroidx/compose/foundation/layout/RowScope;
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    move-object/from16 v0, p1

    move/from16 v1, p2

    const-string v2, "$this$Button"

    move-object/from16 v3, p0

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "C48@1635L19:RegistroExitosoScreen.kt#qemjsp"

    invoke-static {v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v2, v1, 0x11

    const/16 v4, 0x10

    if-eq v2, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/lit8 v4, v1, 0x1

    invoke-interface {v0, v2, v4}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    const-string v4, "org.ies.tierno.applicationamani.presentation.ui.screen.consentimiento.ComposableSingletons$RegistroExitosoScreenKt.lambda$-2026952961.<anonymous> (RegistroExitosoScreen.kt:48)"

    const v5, -0x78d0d901

    invoke-static {v5, v1, v2, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 49
    :cond_1
    const/16 v23, 0x0

    const v24, 0x1fffe

    const-string v0, "Ir al login"

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x6

    move-object/from16 v21, p1

    invoke-static/range {v0 .. v24}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_1

    .line 48
    :cond_2
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 50
    :cond_3
    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method


# virtual methods
.method public final getLambda$-2026952961$app()Lkotlin/jvm/functions/Function3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function3<",
            "Landroidx/compose/foundation/layout/RowScope;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/consentimiento/ComposableSingletons$RegistroExitosoScreenKt;->lambda$-2026952961:Lkotlin/jvm/functions/Function3;

    return-object v0
.end method
