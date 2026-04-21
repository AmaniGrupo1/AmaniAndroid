.class public final Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ComposableSingletons$ChatScreenKt;
.super Ljava/lang/Object;
.source "ChatScreen.kt"


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
.field public static final INSTANCE:Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ComposableSingletons$ChatScreenKt;

.field private static lambda$1858986821:Lkotlin/jvm/functions/Function2;
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


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ComposableSingletons$ChatScreenKt;

    invoke-direct {v0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ComposableSingletons$ChatScreenKt;-><init>()V

    sput-object v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ComposableSingletons$ChatScreenKt;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ComposableSingletons$ChatScreenKt;

    .line 273
    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ComposableSingletons$ChatScreenKt$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ComposableSingletons$ChatScreenKt$$ExternalSyntheticLambda0;-><init>()V

    const v1, 0x6ecde345

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function2;

    sput-object v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ComposableSingletons$ChatScreenKt;->lambda$1858986821:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final lambda_1858986821$lambda$0(Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 9
    .param p0, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p1, "$changed"    # I

    const-string v0, "C273@11407L144:ChatScreen.kt#5xjsc0"

    invoke-static {p0, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v0, p1, 0x3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit8 v1, p1, 0x1

    invoke-interface {p0, v0, v1}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    const-string v1, "org.ies.tierno.applicationamani.presentation.ui.screen.chat.ComposableSingletons$ChatScreenKt.lambda$1858986821.<anonymous> (ChatScreen.kt:273)"

    const v2, 0x6ecde345

    invoke-static {v2, p1, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 275
    :cond_1
    sget-object v0, Landroidx/compose/material/icons/Icons$AutoMirrored$Filled;->INSTANCE:Landroidx/compose/material/icons/Icons$AutoMirrored$Filled;

    invoke-static {v0}, Landroidx/compose/material/icons/automirrored/filled/ArrowBackKt;->getArrowBack(Landroidx/compose/material/icons/Icons$AutoMirrored$Filled;)Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v1

    .line 276
    nop

    .line 274
    const-string v2, "Volver"

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/16 v7, 0x30

    const/16 v8, 0xc

    move-object v6, p0

    .end local p0    # "$composer":Landroidx/compose/runtime/Composer;
    .local v6, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static/range {v1 .. v8}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_1

    .line 273
    .end local v6    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local p0    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_2
    move-object v6, p0

    .end local p0    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v6    # "$composer":Landroidx/compose/runtime/Composer;
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 278
    :cond_3
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final getLambda$1858986821$app()Lkotlin/jvm/functions/Function2;
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

    sget-object v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ComposableSingletons$ChatScreenKt;->lambda$1858986821:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method
