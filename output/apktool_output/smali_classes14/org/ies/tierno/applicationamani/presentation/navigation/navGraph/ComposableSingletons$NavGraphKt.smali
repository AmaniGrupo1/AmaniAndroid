.class public final Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/ComposableSingletons$NavGraphKt;
.super Ljava/lang/Object;
.source "NavGraph.kt"


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
.field public static final INSTANCE:Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/ComposableSingletons$NavGraphKt;

.field private static lambda$-1307778222:Lkotlin/jvm/functions/Function4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function4<",
            "Landroidx/compose/animation/AnimatedContentScope;",
            "Landroidx/navigation/NavBackStackEntry;",
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

    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/ComposableSingletons$NavGraphKt;

    invoke-direct {v0}, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/ComposableSingletons$NavGraphKt;-><init>()V

    sput-object v0, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/ComposableSingletons$NavGraphKt;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/ComposableSingletons$NavGraphKt;

    .line 145
    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/ComposableSingletons$NavGraphKt$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/ComposableSingletons$NavGraphKt$$ExternalSyntheticLambda0;-><init>()V

    const v1, -0x4df31cae

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function4;

    sput-object v0, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/ComposableSingletons$NavGraphKt;->lambda$-1307778222:Lkotlin/jvm/functions/Function4;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final lambda__1307778222$lambda$0(Landroidx/compose/animation/AnimatedContentScope;Landroidx/navigation/NavBackStackEntry;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 12
    .param p0, "$this$composable"    # Landroidx/compose/animation/AnimatedContentScope;
    .param p1, "it"    # Landroidx/navigation/NavBackStackEntry;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    const-string v0, "$this$composable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "CN(it)145@7132L16:NavGraph.kt#cx1nnv"

    invoke-static {p2, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "org.ies.tierno.applicationamani.presentation.navigation.navGraph.ComposableSingletons$NavGraphKt.lambda$-1307778222.<anonymous> (NavGraph.kt:145)"

    const v2, -0x4df31cae

    invoke-static {v2, p3, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 146
    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x3f

    move-object v9, p2

    .end local p2    # "$composer":Landroidx/compose/runtime/Composer;
    .local v9, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static/range {v3 .. v11}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/CalendarioViewKt;->CalendarioView(Landroidx/compose/ui/Modifier;Lj$/time/YearMonth;Lj$/time/LocalDate;Ljava/util/Set;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 147
    :cond_1
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p2
.end method


# virtual methods
.method public final getLambda$-1307778222$app()Lkotlin/jvm/functions/Function4;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function4<",
            "Landroidx/compose/animation/AnimatedContentScope;",
            "Landroidx/navigation/NavBackStackEntry;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/ies/tierno/applicationamani/presentation/navigation/navGraph/ComposableSingletons$NavGraphKt;->lambda$-1307778222:Lkotlin/jvm/functions/Function4;

    return-object v0
.end method
