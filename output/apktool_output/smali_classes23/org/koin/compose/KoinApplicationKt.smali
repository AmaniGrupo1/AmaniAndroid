.class public final Lorg/koin/compose/KoinApplicationKt;
.super Ljava/lang/Object;
.source "KoinApplication.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKoinApplication.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KoinApplication.kt\norg/koin/compose/KoinApplicationKt\n+ 2 RememberKoinApplication.kt\norg/koin/compose/application/RememberKoinApplicationKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,313:1\n33#2,2:314\n35#2:319\n37#2:323\n43#2,3:336\n46#2:342\n48#2:346\n43#2,3:359\n46#2:365\n48#2:369\n1128#3,3:316\n1131#3,3:320\n1128#3,6:324\n1128#3,6:330\n1128#3,3:339\n1131#3,3:343\n1128#3,6:347\n1128#3,6:353\n1128#3,3:362\n1131#3,3:366\n1128#3,6:370\n1128#3,6:376\n1128#3,6:382\n1128#3,6:388\n1128#3,6:394\n1128#3,6:400\n1128#3,6:406\n1128#3,6:412\n*S KotlinDebug\n*F\n+ 1 KoinApplication.kt\norg/koin/compose/KoinApplicationKt\n*L\n142#1:314,2\n142#1:319\n142#1:323\n187#1:336,3\n187#1:342\n187#1:346\n222#1:359,3\n222#1:365\n222#1:369\n142#1:316,3\n142#1:320,3\n144#1:324,6\n145#1:330,6\n187#1:339,3\n187#1:343,3\n189#1:347,6\n190#1:353,6\n222#1:362,3\n222#1:366,3\n224#1:370,6\n225#1:376,6\n258#1:382,6\n259#1:388,6\n288#1:394,6\n289#1:400,6\n309#1:406,6\n310#1:412,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u001a\u0008\u0010\u0012\u001a\u00020\u0008H\u0002\u001a\u0008\u0010\u0013\u001a\u00020\u0002H\u0002\u001a\r\u0010\u0014\u001a\u00020\u0008H\u0007\u00a2\u0006\u0002\u0010\u0015\u001a\r\u0010\u0016\u001a\u00020\u0002H\u0007\u00a2\u0006\u0002\u0010\u0017\u001a=\u0010\u0018\u001a\u00020\u00192\u001b\u0010\u001a\u001a\u0017\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u00190\u001bj\u0002`\u001e\u00a2\u0006\u0002\u0008\u001d2\u0011\u0010\u001f\u001a\r\u0012\u0004\u0012\u00020\u00190 \u00a2\u0006\u0002\u0008!H\u0007\u00a2\u0006\u0002\u0010\"\u001a2\u0010\u0018\u001a\u00020\u00192\u0006\u0010#\u001a\u00020$2\u0008\u0008\u0002\u0010%\u001a\u00020&2\u0011\u0010\u001f\u001a\r\u0012\u0004\u0012\u00020\u00190 \u00a2\u0006\u0002\u0008!H\u0007\u00a2\u0006\u0002\u0010\'\u001a2\u0010(\u001a\u00020\u00192\u0006\u0010)\u001a\u00020$2\u0008\u0008\u0002\u0010%\u001a\u00020&2\u0011\u0010\u001f\u001a\r\u0012\u0004\u0012\u00020\u00190 \u00a2\u0006\u0002\u0008!H\u0007\u00a2\u0006\u0002\u0010\'\u001a*\u0010*\u001a\u00020\u00192\u0008\u0008\u0002\u0010+\u001a\u00020\u00082\u0011\u0010\u001f\u001a\r\u0012\u0004\u0012\u00020\u00190 \u00a2\u0006\u0002\u0008!H\u0007\u00a2\u0006\u0002\u0010,\u001a(\u0010-\u001a\u00020\u00192\u0006\u0010.\u001a\u00020\u001c2\u0011\u0010\u001f\u001a\r\u0012\u0004\u0012\u00020\u00190 \u00a2\u0006\u0002\u0008!H\u0007\u00a2\u0006\u0002\u0010/\u001a=\u00100\u001a\u00020\u00192\u001b\u0010\u001a\u001a\u0017\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u00190\u001bj\u0002`\u001e\u00a2\u0006\u0002\u0008\u001d2\u0011\u0010\u001f\u001a\r\u0012\u0004\u0012\u00020\u00190 \u00a2\u0006\u0002\u0008!H\u0007\u00a2\u0006\u0002\u0010\"\"\"\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00018\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\"\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00018\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\t\u0010\u0004\u001a\u0004\u0008\n\u0010\u0006\"(\u0010\u000b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\u000c0\u00018\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\r\u0010\u0004\u001a\u0004\u0008\u000e\u0010\u0006\"(\u0010\u000f\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u000c0\u00018\u0000X\u0081\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0010\u0010\u0004\u001a\u0004\u0008\u0011\u0010\u0006\u00a8\u00061"
    }
    d2 = {
        "LocalKoinScope",
        "Landroidx/compose/runtime/ProvidableCompositionLocal;",
        "Lorg/koin/core/scope/Scope;",
        "getLocalKoinScope$annotations",
        "()V",
        "getLocalKoinScope",
        "()Landroidx/compose/runtime/ProvidableCompositionLocal;",
        "LocalKoinApplication",
        "Lorg/koin/core/Koin;",
        "getLocalKoinApplication$annotations",
        "getLocalKoinApplication",
        "LocalKoinScopeContext",
        "Lorg/koin/compose/ComposeContextWrapper;",
        "getLocalKoinScopeContext$annotations",
        "getLocalKoinScopeContext",
        "LocalKoinApplicationContext",
        "getLocalKoinApplicationContext$annotations",
        "getLocalKoinApplicationContext",
        "getDefaultKoinContext",
        "getDefaultRootScope",
        "getKoin",
        "(Landroidx/compose/runtime/Composer;I)Lorg/koin/core/Koin;",
        "currentKoinScope",
        "(Landroidx/compose/runtime/Composer;I)Lorg/koin/core/scope/Scope;",
        "KoinApplication",
        "",
        "application",
        "Lkotlin/Function1;",
        "Lorg/koin/core/KoinApplication;",
        "Lkotlin/ExtensionFunctionType;",
        "Lorg/koin/dsl/KoinAppDeclaration;",
        "content",
        "Lkotlin/Function0;",
        "Landroidx/compose/runtime/Composable;",
        "(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V",
        "configuration",
        "Lorg/koin/dsl/KoinConfiguration;",
        "logLevel",
        "Lorg/koin/core/logger/Level;",
        "(Lorg/koin/dsl/KoinConfiguration;Lorg/koin/core/logger/Level;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V",
        "KoinMultiplatformApplication",
        "config",
        "KoinContext",
        "koin",
        "(Lorg/koin/core/Koin;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V",
        "KoinIsolatedContext",
        "context",
        "(Lorg/koin/core/KoinApplication;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V",
        "KoinApplicationPreview",
        "koin-compose_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final LocalKoinApplication:Landroidx/compose/runtime/ProvidableCompositionLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/ProvidableCompositionLocal<",
            "Lorg/koin/core/Koin;",
            ">;"
        }
    .end annotation
.end field

.field private static final LocalKoinApplicationContext:Landroidx/compose/runtime/ProvidableCompositionLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/ProvidableCompositionLocal<",
            "Lorg/koin/compose/ComposeContextWrapper<",
            "Lorg/koin/core/Koin;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final LocalKoinScope:Landroidx/compose/runtime/ProvidableCompositionLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/ProvidableCompositionLocal<",
            "Lorg/koin/core/scope/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private static final LocalKoinScopeContext:Landroidx/compose/runtime/ProvidableCompositionLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/ProvidableCompositionLocal<",
            "Lorg/koin/compose/ComposeContextWrapper<",
            "Lorg/koin/core/scope/Scope;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$3E-CrbpECjBf2Uqm42iP19W6Q7U()Lorg/koin/core/scope/Scope;
    .locals 1

    invoke-static {}, Lorg/koin/compose/KoinApplicationKt;->KoinApplication$lambda$4$0()Lorg/koin/core/scope/Scope;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$4pIduVGYNYMtCcLdCcKhIl6EARo()Lorg/koin/core/Koin;
    .locals 1

    invoke-static {}, Lorg/koin/compose/KoinApplicationKt;->KoinContext$lambda$0$0()Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$FX88mRYSO8_rEe-WhN1Kho2Q0TU()Lorg/koin/core/Koin;
    .locals 1

    invoke-static {}, Lorg/koin/compose/KoinApplicationKt;->KoinApplication$lambda$0$0()Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$J6INUXoh5ct-0DcU1AzTh2eNmJU(Lorg/koin/core/KoinApplication;)Lorg/koin/core/scope/Scope;
    .locals 0

    invoke-static {p0}, Lorg/koin/compose/KoinApplicationKt;->KoinIsolatedContext$lambda$1$0(Lorg/koin/core/KoinApplication;)Lorg/koin/core/scope/Scope;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$QhTyg94BCz-mhlTlyoIamBqOWG8()Lorg/koin/core/scope/Scope;
    .locals 1

    invoke-static {}, Lorg/koin/compose/KoinApplicationKt;->KoinContext$lambda$1$0()Lorg/koin/core/scope/Scope;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$XzahqqtFEBttQ1eoHbwYVpfWzjo()Lorg/koin/core/scope/Scope;
    .locals 1

    invoke-static {}, Lorg/koin/compose/KoinApplicationKt;->LocalKoinScopeContext$lambda$0$0()Lorg/koin/core/scope/Scope;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$ZE27F7im7U02QdEC7LXA8DCYuyM()Lorg/koin/core/Koin;
    .locals 1

    invoke-static {}, Lorg/koin/compose/KoinApplicationKt;->LocalKoinApplicationContext$lambda$0$0()Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$auMfPzNKIa9I4KN6Q99uqGTAK70(Lorg/koin/core/KoinApplication;)Lorg/koin/core/Koin;
    .locals 0

    invoke-static {p0}, Lorg/koin/compose/KoinApplicationKt;->KoinApplicationPreview$lambda$0$0(Lorg/koin/core/KoinApplication;)Lorg/koin/core/Koin;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$hyC9eZ5btU7tid1AROcq8dLn8lo()Lorg/koin/core/Koin;
    .locals 1

    invoke-static {}, Lorg/koin/compose/KoinApplicationKt;->KoinMultiplatformApplication$lambda$0$0()Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$iH97cPlJ_vwnvGKHSpNw0NLcAQA()Lorg/koin/core/scope/Scope;
    .locals 1

    invoke-static {}, Lorg/koin/compose/KoinApplicationKt;->KoinApplication$lambda$1$0()Lorg/koin/core/scope/Scope;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$mpypJWonKDD2xUnPA-KvTe6keIU()Lorg/koin/core/scope/Scope;
    .locals 1

    invoke-static {}, Lorg/koin/compose/KoinApplicationKt;->KoinMultiplatformApplication$lambda$1$0()Lorg/koin/core/scope/Scope;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$obqT7b-0pxdCFUmY-wfyh3xNEMQ()Lorg/koin/core/Koin;
    .locals 1

    invoke-static {}, Lorg/koin/compose/KoinApplicationKt;->KoinApplication$lambda$3$0()Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$pBswk-9Hq5bCLe6ykFK_S7BdMBw(Lorg/koin/core/KoinApplication;)Lorg/koin/core/scope/Scope;
    .locals 0

    invoke-static {p0}, Lorg/koin/compose/KoinApplicationKt;->KoinApplicationPreview$lambda$1$0(Lorg/koin/core/KoinApplication;)Lorg/koin/core/scope/Scope;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$uxkP_Ow2wCSbB03DO_gd7mOh5CY(Lorg/koin/core/KoinApplication;)Lorg/koin/core/Koin;
    .locals 0

    invoke-static {p0}, Lorg/koin/compose/KoinApplicationKt;->KoinIsolatedContext$lambda$0$0(Lorg/koin/core/KoinApplication;)Lorg/koin/core/Koin;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 48
    new-instance v0, Lorg/koin/compose/KoinApplicationKt$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lorg/koin/compose/KoinApplicationKt$$ExternalSyntheticLambda7;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v1}, Landroidx/compose/runtime/CompositionLocalKt;->compositionLocalOf$default(Landroidx/compose/runtime/SnapshotMutationPolicy;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Lorg/koin/compose/KoinApplicationKt;->LocalKoinScope:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 56
    new-instance v0, Lorg/koin/compose/KoinApplicationKt$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lorg/koin/compose/KoinApplicationKt$$ExternalSyntheticLambda8;-><init>()V

    invoke-static {v1, v0, v2, v1}, Landroidx/compose/runtime/CompositionLocalKt;->compositionLocalOf$default(Landroidx/compose/runtime/SnapshotMutationPolicy;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Lorg/koin/compose/KoinApplicationKt;->LocalKoinApplication:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 66
    new-instance v0, Lorg/koin/compose/KoinApplicationKt$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lorg/koin/compose/KoinApplicationKt$$ExternalSyntheticLambda9;-><init>()V

    invoke-static {v1, v0, v2, v1}, Landroidx/compose/runtime/CompositionLocalKt;->compositionLocalOf$default(Landroidx/compose/runtime/SnapshotMutationPolicy;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Lorg/koin/compose/KoinApplicationKt;->LocalKoinScopeContext:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 75
    new-instance v0, Lorg/koin/compose/KoinApplicationKt$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lorg/koin/compose/KoinApplicationKt$$ExternalSyntheticLambda10;-><init>()V

    invoke-static {v1, v0, v2, v1}, Landroidx/compose/runtime/CompositionLocalKt;->compositionLocalOf$default(Landroidx/compose/runtime/SnapshotMutationPolicy;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Lorg/koin/compose/KoinApplicationKt;->LocalKoinApplicationContext:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-void
.end method

.method public static final KoinApplication(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 19
    .param p0, "application"    # Lkotlin/jvm/functions/Function1;
    .param p1, "content"    # Lkotlin/jvm/functions/Function2;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I
    .annotation runtime Landroidx/compose/runtime/internal/FunctionKeyMeta;
        endOffset = 0x1608
        key = -0x219153cb
        startOffset = 0x1457
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lorg/koin/core/KoinApplication;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->WARNING:Lkotlin/DeprecationLevel;
        message = "Use KoinApplication(config: KoinConfiguration) with koinConfiguration { } instead of KoinAppDeclaration lambda"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "KoinApplication(configuration = koinConfiguration(application), content = content)"
            imports = {
                "org.koin.dsl.koinConfiguration"
            }
        .end subannotation
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    const-string v3, "application"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "content"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    const v3, -0x219153cb

    move-object/from16 v4, p2

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v4

    .end local p2    # "$composer":Landroidx/compose/runtime/Composer;
    .local v4, "$composer":Landroidx/compose/runtime/Composer;
    const-string v5, "C(KoinApplication)N(application,content)141@5320L36,143@5460L27,144@5580L25,142@5361L277:KoinApplication.kt#8jjlyv"

    invoke-static {v4, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v5, p3

    .local v5, "$dirty":I
    and-int/lit8 v6, v2, 0x6

    const/4 v8, 0x4

    if-nez v6, :cond_1

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v8

    goto :goto_0

    :cond_0
    const/4 v6, 0x2

    :goto_0
    or-int/2addr v5, v6

    :cond_1
    and-int/lit8 v6, v2, 0x30

    if-nez v6, :cond_3

    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v6, 0x20

    goto :goto_1

    :cond_2
    const/16 v6, 0x10

    :goto_1
    or-int/2addr v5, v6

    :cond_3
    and-int/lit8 v6, v5, 0x13

    const/16 v9, 0x12

    if-eq v6, v9, :cond_4

    const/4 v6, 0x1

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    :goto_2
    and-int/lit8 v9, v5, 0x1

    invoke-interface {v4, v6, v9}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, -0x1

    const-string v9, "org.koin.compose.KoinApplication (KoinApplication.kt:140)"

    invoke-static {v3, v5, v6, v9}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 142
    :cond_5
    and-int/lit8 v3, v5, 0xe

    .local v3, "$changed$iv":I
    move-object/from16 v6, p0

    .local v6, "koinAppDeclaration$iv":Lkotlin/jvm/functions/Function1;
    move-object v9, v4

    .local v9, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v12, 0x0

    .line 314
    .local v12, "$i$f$rememberKoinApplication":I
    const v13, 0x3ecb0633

    const-string v14, "CC(rememberKoinApplication)N(koinAppDeclaration)33@1234L166:RememberKoinApplication.kt#f93w7t"

    invoke-static {v9, v13, v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 315
    const v13, -0x47ddad07

    const-string v14, "CC(remember):RememberKoinApplication.kt#9igjgp"

    invoke-static {v9, v13, v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v13, v3, 0xe

    xor-int/lit8 v13, v13, 0x6

    if-le v13, v8, :cond_6

    invoke-interface {v9, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_7

    :cond_6
    and-int/lit8 v13, v3, 0x6

    if-ne v13, v8, :cond_8

    :cond_7
    const/4 v8, 0x1

    goto :goto_3

    :cond_8
    const/4 v8, 0x0

    .local v8, "invalid$iv$iv":Z
    :goto_3
    move-object v13, v9

    .local v13, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v14, 0x0

    .line 316
    .local v14, "$i$f$cache":I
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v15

    .local v15, "it$iv$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 317
    .local v16, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    if-nez v8, :cond_a

    sget-object v17, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    const/16 p2, 0x0

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v10

    if-ne v15, v10, :cond_9

    goto :goto_4

    .line 322
    :cond_9
    const/16 v17, 0x1

    goto :goto_6

    .line 317
    :cond_a
    const/16 p2, 0x0

    .line 318
    :goto_4
    const/4 v10, 0x0

    .line 319
    .local v10, "$i$a$-cache-RememberKoinApplicationKt$rememberKoinApplication$wrapper$1$iv":I
    const/16 v17, 0x1

    new-instance v11, Lorg/koin/compose/application/CompositionKoinApplicationLoader;

    sget-object v18, Lorg/koin/mp/KoinPlatform;->INSTANCE:Lorg/koin/mp/KoinPlatform;

    invoke-virtual/range {v18 .. v18}, Lorg/koin/mp/KoinPlatform;->getKoinOrNull()Lorg/koin/core/Koin;

    move-result-object v18

    if-nez v18, :cond_b

    invoke-static {v6}, Lorg/koin/dsl/KoinApplicationKt;->koinApplication(Lkotlin/jvm/functions/Function1;)Lorg/koin/core/KoinApplication;

    move-result-object v18

    goto :goto_5

    :cond_b
    const/16 v18, 0x0

    :goto_5
    move-object/from16 v7, v18

    invoke-direct {v11, v7}, Lorg/koin/compose/application/CompositionKoinApplicationLoader;-><init>(Lorg/koin/core/KoinApplication;)V

    .line 318
    .end local v10    # "$i$a$-cache-RememberKoinApplicationKt$rememberKoinApplication$wrapper$1$iv":I
    nop

    .line 320
    .local v11, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v13, v11}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 321
    move-object v15, v11

    .line 316
    .end local v11    # "value$iv$iv":Ljava/lang/Object;
    .end local v15    # "it$iv$iv":Ljava/lang/Object;
    .end local v16    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    :goto_6
    nop

    .line 315
    .end local v8    # "invalid$iv$iv":Z
    .end local v13    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v14    # "$i$f$cache":I
    move-object v7, v15

    check-cast v7, Lorg/koin/compose/application/CompositionKoinApplicationLoader;

    .local v7, "wrapper$iv":Lorg/koin/compose/application/CompositionKoinApplicationLoader;
    invoke-static {v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 323
    invoke-virtual {v7}, Lorg/koin/compose/application/CompositionKoinApplicationLoader;->getKoin()Lorg/koin/core/Koin;

    move-result-object v8

    if-eqz v8, :cond_e

    .line 314
    invoke-static {v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 323
    nop

    .line 142
    .end local v3    # "$changed$iv":I
    .end local v6    # "koinAppDeclaration$iv":Lkotlin/jvm/functions/Function1;
    .end local v7    # "wrapper$iv":Lorg/koin/compose/application/CompositionKoinApplicationLoader;
    .end local v9    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v12    # "$i$f$rememberKoinApplication":I
    nop

    .line 144
    .local v8, "koin":Lorg/koin/core/Koin;
    const/4 v3, 0x2

    new-array v3, v3, [Landroidx/compose/runtime/ProvidedValue;

    sget-object v6, Lorg/koin/compose/KoinApplicationKt;->LocalKoinApplicationContext:Landroidx/compose/runtime/ProvidableCompositionLocal;

    const v7, -0x28b6d50

    const-string v9, "CC(remember):KoinApplication.kt#9igjgp"

    invoke-static {v4, v7, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v7, 0x0

    .local v7, "invalid$iv":Z
    move-object v10, v4

    .local v10, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v11, 0x0

    .line 324
    .local v11, "$i$f$cache":I
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    .local v12, "it$iv":Ljava/lang/Object;
    const/4 v13, 0x0

    .line 325
    .local v13, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v14, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v14}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v14

    if-ne v12, v14, :cond_c

    .line 326
    const/4 v14, 0x0

    .local v14, "$i$a$-cache-KoinApplicationKt$KoinApplication$1":I
    new-instance v15, Lorg/koin/compose/KoinApplicationKt$$ExternalSyntheticLambda21;

    invoke-direct {v15}, Lorg/koin/compose/KoinApplicationKt$$ExternalSyntheticLambda21;-><init>()V

    .line 327
    .end local v14    # "$i$a$-cache-KoinApplicationKt$KoinApplication$1":I
    .local v15, "value$iv":Ljava/lang/Object;
    invoke-interface {v10, v15}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 328
    move-object v12, v15

    .end local v15    # "value$iv":Ljava/lang/Object;
    goto :goto_7

    .line 329
    :cond_c
    nop

    .line 324
    .end local v12    # "it$iv":Ljava/lang/Object;
    .end local v13    # "$i$a$-let-ComposerKt$cache$1$iv":I
    :goto_7
    nop

    .line 144
    .end local v7    # "invalid$iv":Z
    .end local v10    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v11    # "$i$f$cache":I
    check-cast v12, Lkotlin/jvm/functions/Function0;

    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    new-instance v7, Lorg/koin/compose/ComposeContextWrapper;

    invoke-direct {v7, v8, v12}, Lorg/koin/compose/ComposeContextWrapper;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v6, v7}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v6

    aput-object v6, v3, p2

    .line 145
    sget-object v6, Lorg/koin/compose/KoinApplicationKt;->LocalKoinScopeContext:Landroidx/compose/runtime/ProvidableCompositionLocal;

    invoke-virtual {v8}, Lorg/koin/core/Koin;->getScopeRegistry()Lorg/koin/core/registry/ScopeRegistry;

    move-result-object v7

    invoke-virtual {v7}, Lorg/koin/core/registry/ScopeRegistry;->getRootScope()Lorg/koin/core/scope/Scope;

    move-result-object v7

    const v10, -0x28b5e52

    invoke-static {v4, v10, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v9, 0x0

    .local v9, "invalid$iv":Z
    move-object v10, v4

    .restart local v10    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v11, 0x0

    .line 330
    .restart local v11    # "$i$f$cache":I
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    .restart local v12    # "it$iv":Ljava/lang/Object;
    const/4 v13, 0x0

    .line 331
    .restart local v13    # "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v14, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v14}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v14

    if-ne v12, v14, :cond_d

    .line 332
    const/4 v14, 0x0

    .local v14, "$i$a$-cache-KoinApplicationKt$KoinApplication$2":I
    new-instance v15, Lorg/koin/compose/KoinApplicationKt$$ExternalSyntheticLambda22;

    invoke-direct {v15}, Lorg/koin/compose/KoinApplicationKt$$ExternalSyntheticLambda22;-><init>()V

    .line 333
    .end local v14    # "$i$a$-cache-KoinApplicationKt$KoinApplication$2":I
    .restart local v15    # "value$iv":Ljava/lang/Object;
    invoke-interface {v10, v15}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 334
    move-object v12, v15

    .end local v15    # "value$iv":Ljava/lang/Object;
    goto :goto_8

    .line 335
    :cond_d
    nop

    .line 330
    .end local v12    # "it$iv":Ljava/lang/Object;
    .end local v13    # "$i$a$-let-ComposerKt$cache$1$iv":I
    :goto_8
    nop

    .line 145
    .end local v9    # "invalid$iv":Z
    .end local v10    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v11    # "$i$f$cache":I
    check-cast v12, Lkotlin/jvm/functions/Function0;

    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    new-instance v9, Lorg/koin/compose/ComposeContextWrapper;

    invoke-direct {v9, v7, v12}, Lorg/koin/compose/ComposeContextWrapper;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v6, v9}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v6

    aput-object v6, v3, v17

    .line 144
    nop

    .line 146
    sget v6, Landroidx/compose/runtime/ProvidedValue;->$stable:I

    and-int/lit8 v7, v5, 0x70

    or-int/2addr v6, v7

    .line 143
    invoke-static {v3, v1, v4, v6}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .end local v8    # "koin":Lorg/koin/core/Koin;
    goto :goto_9

    .line 323
    .restart local v3    # "$changed$iv":I
    .restart local v6    # "koinAppDeclaration$iv":Lkotlin/jvm/functions/Function1;
    .local v7, "wrapper$iv":Lorg/koin/compose/application/CompositionKoinApplicationLoader;
    .local v9, "$composer$iv":Landroidx/compose/runtime/Composer;
    .local v12, "$i$f$rememberKoinApplication":I
    :cond_e
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v10, "Koin context has not been initialized in rememberKoinApplication"

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 138
    .end local v3    # "$changed$iv":I
    .end local v6    # "koinAppDeclaration$iv":Lkotlin/jvm/functions/Function1;
    .end local v7    # "wrapper$iv":Lorg/koin/compose/application/CompositionKoinApplicationLoader;
    .end local v9    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v12    # "$i$f$rememberKoinApplication":I
    :cond_f
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 148
    :cond_10
    :goto_9
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v3

    if-eqz v3, :cond_11

    new-instance v6, Lorg/koin/compose/KoinApplicationKt$$ExternalSyntheticLambda23;

    invoke-direct {v6, v0, v1, v2}, Lorg/koin/compose/KoinApplicationKt$$ExternalSyntheticLambda23;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;I)V

    invoke-interface {v3, v6}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_11
    return-void
.end method

.method public static final KoinApplication(Lorg/koin/dsl/KoinConfiguration;Lorg/koin/core/logger/Level;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 20
    .param p0, "configuration"    # Lorg/koin/dsl/KoinConfiguration;
    .param p1, "logLevel"    # Lorg/koin/core/logger/Level;
    .param p2, "content"    # Lkotlin/jvm/functions/Function2;
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I
    .annotation runtime Landroidx/compose/runtime/internal/FunctionKeyMeta;
        endOffset = 0x1ba6
        key = -0x228e1aff
        startOffset = 0x19c4
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/koin/dsl/KoinConfiguration;",
            "Lorg/koin/core/logger/Level;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move/from16 v4, p4

    const-string v0, "configuration"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    const v0, -0x228e1aff

    move-object/from16 v2, p3

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v6

    .end local p3    # "$composer":Landroidx/compose/runtime/Composer;
    .local v6, "$composer":Landroidx/compose/runtime/Composer;
    const-string v2, "C(KoinApplication)N(configuration,logLevel,content)186@6744L50,188@6898L27,189@7018L25,187@6799L277:KoinApplication.kt#8jjlyv"

    invoke-static {v6, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v2, p4

    .local v2, "$dirty":I
    and-int/lit8 v5, v4, 0x6

    if-nez v5, :cond_1

    invoke-interface {v6, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x4

    goto :goto_0

    :cond_0
    const/4 v5, 0x2

    :goto_0
    or-int/2addr v2, v5

    :cond_1
    and-int/lit8 v5, p5, 0x2

    const/4 v8, -0x1

    const/16 v9, 0x20

    if-eqz v5, :cond_2

    or-int/lit8 v2, v2, 0x30

    goto :goto_3

    :cond_2
    and-int/lit8 v10, v4, 0x30

    if-nez v10, :cond_5

    if-nez p1, :cond_3

    move v10, v8

    goto :goto_1

    :cond_3
    move-object/from16 v10, p1

    check-cast v10, Ljava/lang/Enum;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    :goto_1
    invoke-interface {v6, v10}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v10

    if-eqz v10, :cond_4

    move v10, v9

    goto :goto_2

    :cond_4
    const/16 v10, 0x10

    :goto_2
    or-int/2addr v2, v10

    :cond_5
    :goto_3
    and-int/lit16 v10, v4, 0x180

    if-nez v10, :cond_7

    invoke-interface {v6, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    const/16 v10, 0x100

    goto :goto_4

    :cond_6
    const/16 v10, 0x80

    :goto_4
    or-int/2addr v2, v10

    :cond_7
    move v10, v2

    .end local v2    # "$dirty":I
    .local v10, "$dirty":I
    and-int/lit16 v2, v10, 0x93

    const/16 v11, 0x92

    const/4 v13, 0x0

    if-eq v2, v11, :cond_8

    const/4 v2, 0x1

    goto :goto_5

    :cond_8
    move v2, v13

    :goto_5
    and-int/lit8 v11, v10, 0x1

    invoke-interface {v6, v2, v11}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v2

    if-eqz v2, :cond_14

    if-eqz v5, :cond_9

    .line 184
    sget-object v2, Lorg/koin/core/logger/Level;->INFO:Lorg/koin/core/logger/Level;

    .end local p1    # "logLevel":Lorg/koin/core/logger/Level;
    .local v2, "logLevel":Lorg/koin/core/logger/Level;
    goto :goto_6

    .line 186
    .end local v2    # "logLevel":Lorg/koin/core/logger/Level;
    .restart local p1    # "logLevel":Lorg/koin/core/logger/Level;
    :cond_9
    move-object/from16 v2, p1

    .line 184
    .end local p1    # "logLevel":Lorg/koin/core/logger/Level;
    .restart local v2    # "logLevel":Lorg/koin/core/logger/Level;
    :goto_6
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_a

    const-string v5, "org.koin.compose.KoinApplication (KoinApplication.kt:185)"

    invoke-static {v0, v10, v8, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 187
    :cond_a
    and-int/lit8 v0, v10, 0xe

    and-int/lit8 v5, v10, 0x70

    or-int/2addr v0, v5

    .local v0, "$changed$iv":I
    move-object/from16 v5, p0

    .local v5, "configuration$iv":Lorg/koin/dsl/KoinConfiguration;
    move-object v8, v2

    .local v8, "logLevel$iv":Lorg/koin/core/logger/Level;
    move-object v11, v6

    .local v11, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v14, 0x0

    .line 336
    .local v14, "$i$f$rememberKoinMPApplication":I
    const v15, 0x2027347c

    const/16 p3, 0x1

    const-string v12, "CC(rememberKoinMPApplication)N(configuration,logLevel)43@1691L67,44@1777L178:RememberKoinApplication.kt#f93w7t"

    invoke-static {v11, v15, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 337
    shr-int/lit8 v12, v0, 0x3

    and-int/lit8 v12, v12, 0xe

    shl-int/lit8 v15, v0, 0x3

    and-int/lit8 v15, v15, 0x70

    or-int/2addr v12, v15

    invoke-static {v8, v5, v11, v12, v13}, Lorg/koin/compose/KoinApplication_androidKt;->composeMultiplatformConfiguration(Lorg/koin/core/logger/Level;Lorg/koin/dsl/KoinConfiguration;Landroidx/compose/runtime/Composer;II)Lorg/koin/dsl/KoinConfiguration;

    move-result-object v12

    .line 338
    .local v12, "mergedConfiguration$iv":Lorg/koin/dsl/KoinConfiguration;
    const v15, -0x4cd3e032

    move/from16 v16, v13

    const-string v13, "CC(remember):RememberKoinApplication.kt#9igjgp"

    invoke-static {v11, v15, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v11, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v13

    and-int/lit8 v15, v0, 0x70

    xor-int/lit8 v15, v15, 0x30

    if-le v15, v9, :cond_b

    move-object v15, v8

    check-cast v15, Ljava/lang/Enum;

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    invoke-interface {v11, v15}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v15

    if-nez v15, :cond_c

    :cond_b
    and-int/lit8 v15, v0, 0x30

    if-ne v15, v9, :cond_d

    :cond_c
    move/from16 v9, p3

    goto :goto_7

    :cond_d
    move/from16 v9, v16

    :goto_7
    or-int/2addr v9, v13

    .local v9, "invalid$iv$iv":Z
    move-object v13, v11

    .local v13, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v15, 0x0

    .line 339
    .local v15, "$i$f$cache":I
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    .local v7, "it$iv$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 340
    .local v17, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    if-nez v9, :cond_f

    sget-object v18, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p1, v0

    .end local v0    # "$changed$iv":I
    .local p1, "$changed$iv":I
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v7, v0, :cond_e

    goto :goto_8

    .line 345
    :cond_e
    goto :goto_a

    .line 340
    .end local p1    # "$changed$iv":I
    .restart local v0    # "$changed$iv":I
    :cond_f
    move/from16 p1, v0

    .line 341
    .end local v0    # "$changed$iv":I
    .restart local p1    # "$changed$iv":I
    :goto_8
    const/4 v0, 0x0

    .line 342
    .local v0, "$i$a$-cache-RememberKoinApplicationKt$rememberKoinMPApplication$wrapper$1$iv":I
    move/from16 v18, v0

    .end local v0    # "$i$a$-cache-RememberKoinApplicationKt$rememberKoinMPApplication$wrapper$1$iv":I
    .local v18, "$i$a$-cache-RememberKoinApplicationKt$rememberKoinMPApplication$wrapper$1$iv":I
    new-instance v0, Lorg/koin/compose/application/CompositionKoinApplicationLoader;

    sget-object v19, Lorg/koin/mp/KoinPlatform;->INSTANCE:Lorg/koin/mp/KoinPlatform;

    invoke-virtual/range {v19 .. v19}, Lorg/koin/mp/KoinPlatform;->getKoinOrNull()Lorg/koin/core/Koin;

    move-result-object v19

    if-nez v19, :cond_10

    invoke-static {v12}, Lorg/koin/dsl/KoinApplicationKt;->koinApplication(Lorg/koin/dsl/KoinConfiguration;)Lorg/koin/core/KoinApplication;

    move-result-object v19

    goto :goto_9

    :cond_10
    const/16 v19, 0x0

    :goto_9
    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/koin/compose/application/CompositionKoinApplicationLoader;-><init>(Lorg/koin/core/KoinApplication;)V

    .line 341
    .end local v18    # "$i$a$-cache-RememberKoinApplicationKt$rememberKoinMPApplication$wrapper$1$iv":I
    nop

    .line 343
    .local v0, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 344
    move-object v7, v0

    .line 339
    .end local v0    # "value$iv$iv":Ljava/lang/Object;
    .end local v7    # "it$iv$iv":Ljava/lang/Object;
    .end local v17    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    :goto_a
    nop

    .line 338
    .end local v9    # "invalid$iv$iv":Z
    .end local v13    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v15    # "$i$f$cache":I
    move-object v0, v7

    check-cast v0, Lorg/koin/compose/application/CompositionKoinApplicationLoader;

    .local v0, "wrapper$iv":Lorg/koin/compose/application/CompositionKoinApplicationLoader;
    invoke-static {v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 346
    invoke-virtual {v0}, Lorg/koin/compose/application/CompositionKoinApplicationLoader;->getKoin()Lorg/koin/core/Koin;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 336
    invoke-static {v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 346
    nop

    .line 187
    .end local v0    # "wrapper$iv":Lorg/koin/compose/application/CompositionKoinApplicationLoader;
    .end local v5    # "configuration$iv":Lorg/koin/dsl/KoinConfiguration;
    .end local v8    # "logLevel$iv":Lorg/koin/core/logger/Level;
    .end local v11    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v12    # "mergedConfiguration$iv":Lorg/koin/dsl/KoinConfiguration;
    .end local v14    # "$i$f$rememberKoinMPApplication":I
    .end local p1    # "$changed$iv":I
    nop

    .line 189
    .local v1, "koin":Lorg/koin/core/Koin;
    const/4 v0, 0x2

    new-array v0, v0, [Landroidx/compose/runtime/ProvidedValue;

    sget-object v5, Lorg/koin/compose/KoinApplicationKt;->LocalKoinApplicationContext:Landroidx/compose/runtime/ProvidableCompositionLocal;

    const v7, 0x488cce9c    # 288372.88f

    const-string v8, "CC(remember):KoinApplication.kt#9igjgp"

    invoke-static {v6, v7, v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v7, 0x0

    .local v7, "invalid$iv":Z
    move-object v9, v6

    .local v9, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v11, 0x0

    .line 347
    .local v11, "$i$f$cache":I
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    .local v12, "it$iv":Ljava/lang/Object;
    const/4 v13, 0x0

    .line 348
    .local v13, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v14, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v14}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v14

    if-ne v12, v14, :cond_11

    .line 349
    const/4 v14, 0x0

    .local v14, "$i$a$-cache-KoinApplicationKt$KoinApplication$4":I
    new-instance v15, Lorg/koin/compose/KoinApplicationKt$$ExternalSyntheticLambda1;

    invoke-direct {v15}, Lorg/koin/compose/KoinApplicationKt$$ExternalSyntheticLambda1;-><init>()V

    .line 350
    .end local v14    # "$i$a$-cache-KoinApplicationKt$KoinApplication$4":I
    .local v15, "value$iv":Ljava/lang/Object;
    invoke-interface {v9, v15}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 351
    move-object v12, v15

    .end local v15    # "value$iv":Ljava/lang/Object;
    goto :goto_b

    .line 352
    :cond_11
    nop

    .line 347
    .end local v12    # "it$iv":Ljava/lang/Object;
    .end local v13    # "$i$a$-let-ComposerKt$cache$1$iv":I
    :goto_b
    nop

    .line 189
    .end local v7    # "invalid$iv":Z
    .end local v9    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v11    # "$i$f$cache":I
    check-cast v12, Lkotlin/jvm/functions/Function0;

    invoke-static {v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    new-instance v7, Lorg/koin/compose/ComposeContextWrapper;

    invoke-direct {v7, v1, v12}, Lorg/koin/compose/ComposeContextWrapper;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v5, v7}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v5

    aput-object v5, v0, v16

    .line 190
    sget-object v5, Lorg/koin/compose/KoinApplicationKt;->LocalKoinScopeContext:Landroidx/compose/runtime/ProvidableCompositionLocal;

    invoke-virtual {v1}, Lorg/koin/core/Koin;->getScopeRegistry()Lorg/koin/core/registry/ScopeRegistry;

    move-result-object v7

    invoke-virtual {v7}, Lorg/koin/core/registry/ScopeRegistry;->getRootScope()Lorg/koin/core/scope/Scope;

    move-result-object v7

    const v9, 0x488cdd9a

    invoke-static {v6, v9, v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v8, 0x0

    .local v8, "invalid$iv":Z
    move-object v9, v6

    .restart local v9    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v11, 0x0

    .line 353
    .restart local v11    # "$i$f$cache":I
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    .restart local v12    # "it$iv":Ljava/lang/Object;
    const/4 v13, 0x0

    .line 354
    .restart local v13    # "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v14, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v14}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v14

    if-ne v12, v14, :cond_12

    .line 355
    const/4 v14, 0x0

    .local v14, "$i$a$-cache-KoinApplicationKt$KoinApplication$5":I
    new-instance v15, Lorg/koin/compose/KoinApplicationKt$$ExternalSyntheticLambda2;

    invoke-direct {v15}, Lorg/koin/compose/KoinApplicationKt$$ExternalSyntheticLambda2;-><init>()V

    .line 356
    .end local v14    # "$i$a$-cache-KoinApplicationKt$KoinApplication$5":I
    .restart local v15    # "value$iv":Ljava/lang/Object;
    invoke-interface {v9, v15}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 357
    move-object v12, v15

    .end local v15    # "value$iv":Ljava/lang/Object;
    goto :goto_c

    .line 358
    :cond_12
    nop

    .line 353
    .end local v12    # "it$iv":Ljava/lang/Object;
    .end local v13    # "$i$a$-let-ComposerKt$cache$1$iv":I
    :goto_c
    nop

    .line 190
    .end local v8    # "invalid$iv":Z
    .end local v9    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v11    # "$i$f$cache":I
    check-cast v12, Lkotlin/jvm/functions/Function0;

    invoke-static {v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    new-instance v8, Lorg/koin/compose/ComposeContextWrapper;

    invoke-direct {v8, v7, v12}, Lorg/koin/compose/ComposeContextWrapper;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v5, v8}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v5

    aput-object v5, v0, p3

    .line 189
    nop

    .line 191
    sget v5, Landroidx/compose/runtime/ProvidedValue;->$stable:I

    shr-int/lit8 v7, v10, 0x3

    and-int/lit8 v7, v7, 0x70

    or-int/2addr v5, v7

    .line 188
    invoke-static {v0, v3, v6, v5}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .end local v1    # "koin":Lorg/koin/core/Koin;
    goto :goto_d

    .line 346
    .restart local v0    # "wrapper$iv":Lorg/koin/compose/application/CompositionKoinApplicationLoader;
    .restart local v5    # "configuration$iv":Lorg/koin/dsl/KoinConfiguration;
    .local v8, "logLevel$iv":Lorg/koin/core/logger/Level;
    .local v11, "$composer$iv":Landroidx/compose/runtime/Composer;
    .local v12, "mergedConfiguration$iv":Lorg/koin/dsl/KoinConfiguration;
    .local v14, "$i$f$rememberKoinMPApplication":I
    .restart local p1    # "$changed$iv":I
    :cond_13
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v7, "Koin context has not been initialized in rememberKoinApplication"

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 182
    .end local v0    # "wrapper$iv":Lorg/koin/compose/application/CompositionKoinApplicationLoader;
    .end local v2    # "logLevel":Lorg/koin/core/logger/Level;
    .end local v5    # "configuration$iv":Lorg/koin/dsl/KoinConfiguration;
    .end local v8    # "logLevel$iv":Lorg/koin/core/logger/Level;
    .end local v11    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v12    # "mergedConfiguration$iv":Lorg/koin/dsl/KoinConfiguration;
    .end local v14    # "$i$f$rememberKoinMPApplication":I
    .local p1, "logLevel":Lorg/koin/core/logger/Level;
    :cond_14
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v2, p1

    .line 193
    .end local p1    # "logLevel":Lorg/koin/core/logger/Level;
    .restart local v2    # "logLevel":Lorg/koin/core/logger/Level;
    :cond_15
    :goto_d
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v7

    if-eqz v7, :cond_16

    new-instance v0, Lorg/koin/compose/KoinApplicationKt$$ExternalSyntheticLambda3;

    move-object/from16 v1, p0

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/koin/compose/KoinApplicationKt$$ExternalSyntheticLambda3;-><init>(Lorg/koin/dsl/KoinConfiguration;Lorg/koin/core/logger/Level;Lkotlin/jvm/functions/Function2;II)V

    invoke-interface {v7, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_16
    return-void
.end method

.method private static final KoinApplication$lambda$0$0()Lorg/koin/core/Koin;
    .locals 1

    .line 144
    invoke-static {}, Lorg/koin/compose/KoinApplicationKt;->getDefaultKoinContext()Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method private static final KoinApplication$lambda$1$0()Lorg/koin/core/scope/Scope;
    .locals 1

    .line 145
    invoke-static {}, Lorg/koin/compose/KoinApplicationKt;->getDefaultRootScope()Lorg/koin/core/scope/Scope;

    move-result-object v0

    return-object v0
.end method

.method static final KoinApplication$lambda$2(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 1

    or-int/lit8 v0, p2, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v0

    invoke-static {p0, p1, p3, v0}, Lorg/koin/compose/KoinApplicationKt;->KoinApplication(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final KoinApplication$lambda$3$0()Lorg/koin/core/Koin;
    .locals 1

    .line 189
    invoke-static {}, Lorg/koin/compose/KoinApplicationKt;->getDefaultKoinContext()Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method private static final KoinApplication$lambda$4$0()Lorg/koin/core/scope/Scope;
    .locals 1

    .line 190
    invoke-static {}, Lorg/koin/compose/KoinApplicationKt;->getDefaultRootScope()Lorg/koin/core/scope/Scope;

    move-result-object v0

    return-object v0
.end method

.method static final KoinApplication$lambda$5(Lorg/koin/dsl/KoinConfiguration;Lorg/koin/core/logger/Level;Lkotlin/jvm/functions/Function2;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 7

    or-int/lit8 v0, p3, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v6, p4

    move-object v4, p5

    invoke-static/range {v1 .. v6}, Lorg/koin/compose/KoinApplicationKt;->KoinApplication(Lorg/koin/dsl/KoinConfiguration;Lorg/koin/core/logger/Level;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final KoinApplicationPreview(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 18
    .param p0, "application"    # Lkotlin/jvm/functions/Function1;
    .param p1, "content"    # Lkotlin/jvm/functions/Function2;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I
    .annotation runtime Landroidx/compose/runtime/internal/FunctionKeyMeta;
        endOffset = 0x2d7e
        key = -0x1089c975
        startOffset = 0x2bbb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lorg/koin/core/KoinApplication;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    const-string v3, "application"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "content"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    const v3, -0x1089c975

    move-object/from16 v4, p2

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v4

    .end local p2    # "$composer":Landroidx/compose/runtime/Composer;
    .local v4, "$composer":Landroidx/compose/runtime/Composer;
    const-string v5, "C(KoinApplicationPreview)N(application,content)308@11458L14,309@11573L38,307@11351L293:KoinApplication.kt#8jjlyv"

    invoke-static {v4, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v5, p3

    .local v5, "$dirty":I
    and-int/lit8 v6, v2, 0x6

    const/4 v7, 0x2

    if-nez v6, :cond_1

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x4

    goto :goto_0

    :cond_0
    move v6, v7

    :goto_0
    or-int/2addr v5, v6

    :cond_1
    and-int/lit8 v6, v2, 0x30

    if-nez v6, :cond_3

    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v6, 0x20

    goto :goto_1

    :cond_2
    const/16 v6, 0x10

    :goto_1
    or-int/2addr v5, v6

    :cond_3
    and-int/lit8 v6, v5, 0x13

    const/16 v8, 0x12

    if-eq v6, v8, :cond_4

    const/4 v6, 0x1

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    :goto_2
    and-int/lit8 v8, v5, 0x1

    invoke-interface {v4, v6, v8}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, -0x1

    const-string v8, "org.koin.compose.KoinApplicationPreview (KoinApplication.kt:305)"

    invoke-static {v3, v5, v6, v8}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 307
    :cond_5
    invoke-static {v0}, Lorg/koin/dsl/KoinApplicationKt;->koinApplication(Lkotlin/jvm/functions/Function1;)Lorg/koin/core/KoinApplication;

    move-result-object v3

    .line 309
    .local v3, "context":Lorg/koin/core/KoinApplication;
    new-array v6, v7, [Landroidx/compose/runtime/ProvidedValue;

    sget-object v7, Lorg/koin/compose/KoinApplicationKt;->LocalKoinApplicationContext:Landroidx/compose/runtime/ProvidableCompositionLocal;

    invoke-virtual {v3}, Lorg/koin/core/KoinApplication;->getKoin()Lorg/koin/core/Koin;

    move-result-object v8

    const v11, -0x153d1f47

    const-string v12, "CC(remember):KoinApplication.kt#9igjgp"

    invoke-static {v4, v11, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v11

    .local v11, "invalid$iv":Z
    move-object v13, v4

    .local v13, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v14, 0x0

    .line 406
    .local v14, "$i$f$cache":I
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v15

    .local v15, "it$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 407
    .local v16, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v11, :cond_7

    sget-object v17, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    const/16 p2, 0x0

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v9

    if-ne v15, v9, :cond_6

    goto :goto_3

    .line 411
    :cond_6
    const/16 v17, 0x1

    goto :goto_4

    .line 407
    :cond_7
    const/16 p2, 0x0

    .line 408
    :goto_3
    const/4 v9, 0x0

    .line 309
    .local v9, "$i$a$-cache-KoinApplicationKt$KoinApplicationPreview$1":I
    const/16 v17, 0x1

    new-instance v10, Lorg/koin/compose/KoinApplicationKt$$ExternalSyntheticLambda4;

    invoke-direct {v10, v3}, Lorg/koin/compose/KoinApplicationKt$$ExternalSyntheticLambda4;-><init>(Lorg/koin/core/KoinApplication;)V

    .line 408
    .end local v9    # "$i$a$-cache-KoinApplicationKt$KoinApplicationPreview$1":I
    nop

    .line 409
    .local v10, "value$iv":Ljava/lang/Object;
    invoke-interface {v13, v10}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 410
    move-object v15, v10

    .line 406
    .end local v10    # "value$iv":Ljava/lang/Object;
    .end local v15    # "it$iv":Ljava/lang/Object;
    .end local v16    # "$i$a$-let-ComposerKt$cache$1$iv":I
    :goto_4
    nop

    .line 309
    .end local v11    # "invalid$iv":Z
    .end local v13    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v14    # "$i$f$cache":I
    check-cast v15, Lkotlin/jvm/functions/Function0;

    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    new-instance v9, Lorg/koin/compose/ComposeContextWrapper;

    invoke-direct {v9, v8, v15}, Lorg/koin/compose/ComposeContextWrapper;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v7, v9}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v7

    aput-object v7, v6, p2

    .line 310
    sget-object v7, Lorg/koin/compose/KoinApplicationKt;->LocalKoinScopeContext:Landroidx/compose/runtime/ProvidableCompositionLocal;

    invoke-virtual {v3}, Lorg/koin/core/KoinApplication;->getKoin()Lorg/koin/core/Koin;

    move-result-object v8

    invoke-virtual {v8}, Lorg/koin/core/Koin;->getScopeRegistry()Lorg/koin/core/registry/ScopeRegistry;

    move-result-object v8

    invoke-virtual {v8}, Lorg/koin/core/registry/ScopeRegistry;->getRootScope()Lorg/koin/core/scope/Scope;

    move-result-object v8

    const v9, -0x153d10cf

    invoke-static {v4, v9, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    .local v9, "invalid$iv":Z
    move-object v10, v4

    .local v10, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v11, 0x0

    .line 412
    .local v11, "$i$f$cache":I
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    .local v12, "it$iv":Ljava/lang/Object;
    const/4 v13, 0x0

    .line 413
    .local v13, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v9, :cond_9

    sget-object v14, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v14}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v14

    if-ne v12, v14, :cond_8

    goto :goto_5

    .line 417
    :cond_8
    goto :goto_6

    .line 414
    :cond_9
    :goto_5
    const/4 v14, 0x0

    .line 310
    .local v14, "$i$a$-cache-KoinApplicationKt$KoinApplicationPreview$2":I
    new-instance v15, Lorg/koin/compose/KoinApplicationKt$$ExternalSyntheticLambda5;

    invoke-direct {v15, v3}, Lorg/koin/compose/KoinApplicationKt$$ExternalSyntheticLambda5;-><init>(Lorg/koin/core/KoinApplication;)V

    .line 414
    .end local v14    # "$i$a$-cache-KoinApplicationKt$KoinApplicationPreview$2":I
    nop

    .line 415
    .local v15, "value$iv":Ljava/lang/Object;
    invoke-interface {v10, v15}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 416
    move-object v12, v15

    .line 412
    .end local v12    # "it$iv":Ljava/lang/Object;
    .end local v13    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local v15    # "value$iv":Ljava/lang/Object;
    :goto_6
    nop

    .line 310
    .end local v9    # "invalid$iv":Z
    .end local v10    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v11    # "$i$f$cache":I
    check-cast v12, Lkotlin/jvm/functions/Function0;

    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    new-instance v9, Lorg/koin/compose/ComposeContextWrapper;

    invoke-direct {v9, v8, v12}, Lorg/koin/compose/ComposeContextWrapper;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v7, v9}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v7

    aput-object v7, v6, v17

    .line 309
    nop

    .line 311
    sget v7, Landroidx/compose/runtime/ProvidedValue;->$stable:I

    and-int/lit8 v8, v5, 0x70

    or-int/2addr v7, v8

    .line 308
    invoke-static {v6, v1, v4, v7}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .end local v3    # "context":Lorg/koin/core/KoinApplication;
    goto :goto_7

    .line 303
    :cond_a
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 313
    :cond_b
    :goto_7
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v3

    if-eqz v3, :cond_c

    new-instance v6, Lorg/koin/compose/KoinApplicationKt$$ExternalSyntheticLambda6;

    invoke-direct {v6, v0, v1, v2}, Lorg/koin/compose/KoinApplicationKt$$ExternalSyntheticLambda6;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;I)V

    invoke-interface {v3, v6}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_c
    return-void
.end method

.method private static final KoinApplicationPreview$lambda$0$0(Lorg/koin/core/KoinApplication;)Lorg/koin/core/Koin;
    .locals 1
    .param p0, "$context"    # Lorg/koin/core/KoinApplication;

    .line 309
    invoke-virtual {p0}, Lorg/koin/core/KoinApplication;->getKoin()Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method private static final KoinApplicationPreview$lambda$1$0(Lorg/koin/core/KoinApplication;)Lorg/koin/core/scope/Scope;
    .locals 1
    .param p0, "$context"    # Lorg/koin/core/KoinApplication;

    .line 310
    invoke-virtual {p0}, Lorg/koin/core/KoinApplication;->getKoin()Lorg/koin/core/Koin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/koin/core/Koin;->getScopeRegistry()Lorg/koin/core/registry/ScopeRegistry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/koin/core/registry/ScopeRegistry;->getRootScope()Lorg/koin/core/scope/Scope;

    move-result-object v0

    return-object v0
.end method

.method static final KoinApplicationPreview$lambda$2(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 1

    or-int/lit8 v0, p2, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v0

    invoke-static {p0, p1, p3, v0}, Lorg/koin/compose/KoinApplicationKt;->KoinApplicationPreview(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public static final KoinContext(Lorg/koin/core/Koin;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 17
    .param p0, "koin"    # Lorg/koin/core/Koin;
    .param p1, "content"    # Lkotlin/jvm/functions/Function2;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I
    .annotation runtime Landroidx/compose/runtime/internal/FunctionKeyMeta;
        endOffset = 0x2638
        key = 0x5cfbd4e4
        startOffset = 0x24b8
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/koin/core/Koin;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "KoinContext is not needed anymore. This can be removed. Compose Koin context is setup with StartKoin()"
    .end annotation

    move-object/from16 v0, p1

    move/from16 v1, p3

    move/from16 v2, p4

    const-string v3, "content"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    const v3, 0x5cfbd4e4

    move-object/from16 v4, p2

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v4

    .end local p2    # "$composer":Landroidx/compose/runtime/Composer;
    .local v4, "$composer":Landroidx/compose/runtime/Composer;
    const-string v5, "C(KoinContext)N(koin,content)257@9604L27,258@9724L25,256@9505L277:KoinApplication.kt#8jjlyv"

    invoke-static {v4, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v5, p3

    .local v5, "$dirty":I
    and-int/lit8 v6, v1, 0x6

    const/4 v7, 0x2

    if-nez v6, :cond_2

    and-int/lit8 v6, v2, 0x1

    if-nez v6, :cond_0

    move-object/from16 v6, p0

    invoke-interface {v4, v6}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x4

    goto :goto_0

    :cond_0
    move-object/from16 v6, p0

    :cond_1
    move v8, v7

    :goto_0
    or-int/2addr v5, v8

    goto :goto_1

    :cond_2
    move-object/from16 v6, p0

    :goto_1
    and-int/lit8 v8, v1, 0x30

    if-nez v8, :cond_4

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0x20

    goto :goto_2

    :cond_3
    const/16 v8, 0x10

    :goto_2
    or-int/2addr v5, v8

    :cond_4
    and-int/lit8 v8, v5, 0x13

    const/16 v9, 0x12

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eq v8, v9, :cond_5

    move v8, v11

    goto :goto_3

    :cond_5
    move v8, v10

    :goto_3
    and-int/lit8 v9, v5, 0x1

    invoke-interface {v4, v8, v9}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->startDefaults()V

    const-string v8, "253@9434L25"

    invoke-static {v4, v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v8, v1, 0x1

    if-eqz v8, :cond_7

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_4

    .line 253
    :cond_6
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v8, v2, 0x1

    if-eqz v8, :cond_8

    and-int/lit8 v5, v5, -0xf

    goto :goto_5

    .line 256
    :cond_7
    :goto_4
    and-int/lit8 v8, v2, 0x1

    if-eqz v8, :cond_8

    .line 254
    invoke-static {v4, v10}, Lorg/koin/compose/KoinApplication_androidKt;->retrieveDefaultInstance(Landroidx/compose/runtime/Composer;I)Lorg/koin/core/Koin;

    move-result-object v6

    .end local p0    # "koin":Lorg/koin/core/Koin;
    .local v6, "koin":Lorg/koin/core/Koin;
    and-int/lit8 v5, v5, -0xf

    .line 253
    :cond_8
    :goto_5
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v8

    if-eqz v8, :cond_9

    const/4 v8, -0x1

    const-string v9, "org.koin.compose.KoinContext (KoinApplication.kt:255)"

    invoke-static {v3, v5, v8, v9}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 258
    :cond_9
    new-array v3, v7, [Landroidx/compose/runtime/ProvidedValue;

    sget-object v7, Lorg/koin/compose/KoinApplicationKt;->LocalKoinApplicationContext:Landroidx/compose/runtime/ProvidableCompositionLocal;

    const v8, 0xd5a457f

    const-string v9, "CC(remember):KoinApplication.kt#9igjgp"

    invoke-static {v4, v8, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v8, 0x0

    .local v8, "invalid$iv":Z
    move-object v12, v4

    .local v12, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v13, 0x0

    .line 382
    .local v13, "$i$f$cache":I
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    .local v14, "it$iv":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 383
    .local v15, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v16, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p2, v10

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v10

    if-ne v14, v10, :cond_a

    .line 384
    const/4 v10, 0x0

    .local v10, "$i$a$-cache-KoinApplicationKt$KoinContext$1":I
    new-instance v16, Lorg/koin/compose/KoinApplicationKt$$ExternalSyntheticLambda15;

    invoke-direct/range {v16 .. v16}, Lorg/koin/compose/KoinApplicationKt$$ExternalSyntheticLambda15;-><init>()V

    .end local v10    # "$i$a$-cache-KoinApplicationKt$KoinContext$1":I
    move-object/from16 v10, v16

    .line 385
    .local v10, "value$iv":Ljava/lang/Object;
    invoke-interface {v12, v10}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 386
    move-object v14, v10

    .end local v10    # "value$iv":Ljava/lang/Object;
    goto :goto_6

    .line 387
    :cond_a
    nop

    .line 382
    .end local v14    # "it$iv":Ljava/lang/Object;
    .end local v15    # "$i$a$-let-ComposerKt$cache$1$iv":I
    :goto_6
    nop

    .line 258
    .end local v8    # "invalid$iv":Z
    .end local v12    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v13    # "$i$f$cache":I
    check-cast v14, Lkotlin/jvm/functions/Function0;

    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    new-instance v8, Lorg/koin/compose/ComposeContextWrapper;

    invoke-direct {v8, v6, v14}, Lorg/koin/compose/ComposeContextWrapper;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v7

    aput-object v7, v3, p2

    .line 259
    sget-object v7, Lorg/koin/compose/KoinApplicationKt;->LocalKoinScopeContext:Landroidx/compose/runtime/ProvidableCompositionLocal;

    invoke-virtual {v6}, Lorg/koin/core/Koin;->getScopeRegistry()Lorg/koin/core/registry/ScopeRegistry;

    move-result-object v8

    invoke-virtual {v8}, Lorg/koin/core/registry/ScopeRegistry;->getRootScope()Lorg/koin/core/scope/Scope;

    move-result-object v8

    const v10, 0xd5a547d

    invoke-static {v4, v10, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v9, 0x0

    .local v9, "invalid$iv":Z
    move-object v10, v4

    .local v10, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v12, 0x0

    .line 388
    .local v12, "$i$f$cache":I
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    .local v13, "it$iv":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 389
    .local v14, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v15, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v15}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v15

    if-ne v13, v15, :cond_b

    .line 390
    const/4 v15, 0x0

    .local v15, "$i$a$-cache-KoinApplicationKt$KoinContext$2":I
    new-instance v16, Lorg/koin/compose/KoinApplicationKt$$ExternalSyntheticLambda16;

    invoke-direct/range {v16 .. v16}, Lorg/koin/compose/KoinApplicationKt$$ExternalSyntheticLambda16;-><init>()V

    .end local v15    # "$i$a$-cache-KoinApplicationKt$KoinContext$2":I
    move-object/from16 v15, v16

    .line 391
    .local v15, "value$iv":Ljava/lang/Object;
    invoke-interface {v10, v15}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 392
    move-object v13, v15

    .end local v15    # "value$iv":Ljava/lang/Object;
    goto :goto_7

    .line 393
    :cond_b
    nop

    .line 388
    .end local v13    # "it$iv":Ljava/lang/Object;
    .end local v14    # "$i$a$-let-ComposerKt$cache$1$iv":I
    :goto_7
    nop

    .line 259
    .end local v9    # "invalid$iv":Z
    .end local v10    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v12    # "$i$f$cache":I
    check-cast v13, Lkotlin/jvm/functions/Function0;

    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    new-instance v9, Lorg/koin/compose/ComposeContextWrapper;

    invoke-direct {v9, v8, v13}, Lorg/koin/compose/ComposeContextWrapper;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v7, v9}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v7

    aput-object v7, v3, v11

    .line 258
    nop

    .line 260
    sget v7, Landroidx/compose/runtime/ProvidedValue;->$stable:I

    and-int/lit8 v8, v5, 0x70

    or-int/2addr v7, v8

    .line 257
    invoke-static {v3, v0, v4, v7}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_8

    .line 253
    .end local v6    # "koin":Lorg/koin/core/Koin;
    .restart local p0    # "koin":Lorg/koin/core/Koin;
    :cond_c
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 262
    .end local p0    # "koin":Lorg/koin/core/Koin;
    .restart local v6    # "koin":Lorg/koin/core/Koin;
    :cond_d
    :goto_8
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v3

    if-eqz v3, :cond_e

    new-instance v7, Lorg/koin/compose/KoinApplicationKt$$ExternalSyntheticLambda17;

    invoke-direct {v7, v6, v0, v1, v2}, Lorg/koin/compose/KoinApplicationKt$$ExternalSyntheticLambda17;-><init>(Lorg/koin/core/Koin;Lkotlin/jvm/functions/Function2;II)V

    invoke-interface {v3, v7}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_e
    return-void
.end method

.method private static final KoinContext$lambda$0$0()Lorg/koin/core/Koin;
    .locals 1

    .line 258
    invoke-static {}, Lorg/koin/compose/KoinApplicationKt;->getDefaultKoinContext()Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method private static final KoinContext$lambda$1$0()Lorg/koin/core/scope/Scope;
    .locals 1

    .line 259
    invoke-static {}, Lorg/koin/compose/KoinApplicationKt;->getDefaultRootScope()Lorg/koin/core/scope/Scope;

    move-result-object v0

    return-object v0
.end method

.method static final KoinContext$lambda$2(Lorg/koin/core/Koin;Lkotlin/jvm/functions/Function2;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 1

    or-int/lit8 v0, p2, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v0

    invoke-static {p0, p1, p4, v0, p3}, Lorg/koin/compose/KoinApplicationKt;->KoinContext(Lorg/koin/core/Koin;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public static final KoinIsolatedContext(Lorg/koin/core/KoinApplication;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 17
    .param p0, "context"    # Lorg/koin/core/KoinApplication;
    .param p1, "content"    # Lkotlin/jvm/functions/Function2;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I
    .annotation runtime Landroidx/compose/runtime/internal/FunctionKeyMeta;
        endOffset = 0x2a85
        key = -0x63b6fa57
        startOffset = 0x28f6
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/koin/core/KoinApplication;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    const-string v3, "context"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "content"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 286
    const v3, -0x63b6fa57

    move-object/from16 v4, p2

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v4

    .end local p2    # "$composer":Landroidx/compose/runtime/Composer;
    .local v4, "$composer":Landroidx/compose/runtime/Composer;
    const-string v5, "C(KoinIsolatedContext)N(context,content)287@10692L15,288@10809L40,286@10585L298:KoinApplication.kt#8jjlyv"

    invoke-static {v4, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v5, p3

    .local v5, "$dirty":I
    and-int/lit8 v6, v2, 0x6

    const/4 v7, 0x2

    if-nez v6, :cond_1

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x4

    goto :goto_0

    :cond_0
    move v6, v7

    :goto_0
    or-int/2addr v5, v6

    :cond_1
    and-int/lit8 v6, v2, 0x30

    if-nez v6, :cond_3

    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v6, 0x20

    goto :goto_1

    :cond_2
    const/16 v6, 0x10

    :goto_1
    or-int/2addr v5, v6

    :cond_3
    and-int/lit8 v6, v5, 0x13

    const/16 v8, 0x12

    if-eq v6, v8, :cond_4

    const/4 v6, 0x1

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    :goto_2
    and-int/lit8 v8, v5, 0x1

    invoke-interface {v4, v6, v8}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, -0x1

    const-string v8, "org.koin.compose.KoinIsolatedContext (KoinApplication.kt:285)"

    invoke-static {v3, v5, v6, v8}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 288
    :cond_5
    new-array v3, v7, [Landroidx/compose/runtime/ProvidedValue;

    sget-object v6, Lorg/koin/compose/KoinApplicationKt;->LocalKoinApplicationContext:Landroidx/compose/runtime/ProvidableCompositionLocal;

    invoke-virtual {v0}, Lorg/koin/core/KoinApplication;->getKoin()Lorg/koin/core/Koin;

    move-result-object v7

    const v8, -0x51e1a6c8

    const-string v11, "CC(remember):KoinApplication.kt#9igjgp"

    invoke-static {v4, v8, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    .local v8, "invalid$iv":Z
    move-object v12, v4

    .local v12, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v13, 0x0

    .line 394
    .local v13, "$i$f$cache":I
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    .local v14, "it$iv":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 395
    .local v15, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v8, :cond_7

    sget-object v16, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    const/16 p2, 0x0

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v9

    if-ne v14, v9, :cond_6

    goto :goto_3

    .line 399
    :cond_6
    const/16 v16, 0x1

    goto :goto_4

    .line 395
    :cond_7
    const/16 p2, 0x0

    .line 396
    :goto_3
    const/4 v9, 0x0

    .line 288
    .local v9, "$i$a$-cache-KoinApplicationKt$KoinIsolatedContext$1":I
    const/16 v16, 0x1

    new-instance v10, Lorg/koin/compose/KoinApplicationKt$$ExternalSyntheticLambda18;

    invoke-direct {v10, v0}, Lorg/koin/compose/KoinApplicationKt$$ExternalSyntheticLambda18;-><init>(Lorg/koin/core/KoinApplication;)V

    .line 396
    .end local v9    # "$i$a$-cache-KoinApplicationKt$KoinIsolatedContext$1":I
    nop

    .line 397
    .local v10, "value$iv":Ljava/lang/Object;
    invoke-interface {v12, v10}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 398
    move-object v14, v10

    .line 394
    .end local v10    # "value$iv":Ljava/lang/Object;
    .end local v14    # "it$iv":Ljava/lang/Object;
    .end local v15    # "$i$a$-let-ComposerKt$cache$1$iv":I
    :goto_4
    nop

    .line 288
    .end local v8    # "invalid$iv":Z
    .end local v12    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v13    # "$i$f$cache":I
    check-cast v14, Lkotlin/jvm/functions/Function0;

    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    new-instance v8, Lorg/koin/compose/ComposeContextWrapper;

    invoke-direct {v8, v7, v14}, Lorg/koin/compose/ComposeContextWrapper;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v6, v8}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v6

    aput-object v6, v3, p2

    .line 289
    sget-object v6, Lorg/koin/compose/KoinApplicationKt;->LocalKoinScopeContext:Landroidx/compose/runtime/ProvidableCompositionLocal;

    invoke-virtual {v0}, Lorg/koin/core/KoinApplication;->getKoin()Lorg/koin/core/Koin;

    move-result-object v7

    invoke-virtual {v7}, Lorg/koin/core/Koin;->getScopeRegistry()Lorg/koin/core/registry/ScopeRegistry;

    move-result-object v7

    invoke-virtual {v7}, Lorg/koin/core/registry/ScopeRegistry;->getRootScope()Lorg/koin/core/scope/Scope;

    move-result-object v7

    const v8, -0x51e1980f

    invoke-static {v4, v8, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    .restart local v8    # "invalid$iv":Z
    move-object v9, v4

    .local v9, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v10, 0x0

    .line 400
    .local v10, "$i$f$cache":I
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    .local v11, "it$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 401
    .local v12, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v8, :cond_9

    sget-object v13, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v13}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v13

    if-ne v11, v13, :cond_8

    goto :goto_5

    .line 405
    :cond_8
    goto :goto_6

    .line 402
    :cond_9
    :goto_5
    const/4 v13, 0x0

    .line 289
    .local v13, "$i$a$-cache-KoinApplicationKt$KoinIsolatedContext$2":I
    new-instance v14, Lorg/koin/compose/KoinApplicationKt$$ExternalSyntheticLambda19;

    invoke-direct {v14, v0}, Lorg/koin/compose/KoinApplicationKt$$ExternalSyntheticLambda19;-><init>(Lorg/koin/core/KoinApplication;)V

    .line 402
    .end local v13    # "$i$a$-cache-KoinApplicationKt$KoinIsolatedContext$2":I
    nop

    .line 403
    .local v14, "value$iv":Ljava/lang/Object;
    invoke-interface {v9, v14}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 404
    move-object v11, v14

    .line 400
    .end local v11    # "it$iv":Ljava/lang/Object;
    .end local v12    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local v14    # "value$iv":Ljava/lang/Object;
    :goto_6
    nop

    .line 289
    .end local v8    # "invalid$iv":Z
    .end local v9    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v10    # "$i$f$cache":I
    check-cast v11, Lkotlin/jvm/functions/Function0;

    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    new-instance v8, Lorg/koin/compose/ComposeContextWrapper;

    invoke-direct {v8, v7, v11}, Lorg/koin/compose/ComposeContextWrapper;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v6, v8}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v6

    aput-object v6, v3, v16

    .line 288
    nop

    .line 290
    sget v6, Landroidx/compose/runtime/ProvidedValue;->$stable:I

    and-int/lit8 v7, v5, 0x70

    or-int/2addr v6, v7

    .line 287
    invoke-static {v3, v1, v4, v6}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_7

    .line 283
    :cond_a
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 292
    :cond_b
    :goto_7
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v3

    if-eqz v3, :cond_c

    new-instance v6, Lorg/koin/compose/KoinApplicationKt$$ExternalSyntheticLambda20;

    invoke-direct {v6, v0, v1, v2}, Lorg/koin/compose/KoinApplicationKt$$ExternalSyntheticLambda20;-><init>(Lorg/koin/core/KoinApplication;Lkotlin/jvm/functions/Function2;I)V

    invoke-interface {v3, v6}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_c
    return-void
.end method

.method private static final KoinIsolatedContext$lambda$0$0(Lorg/koin/core/KoinApplication;)Lorg/koin/core/Koin;
    .locals 1
    .param p0, "$context"    # Lorg/koin/core/KoinApplication;

    .line 288
    invoke-virtual {p0}, Lorg/koin/core/KoinApplication;->getKoin()Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method private static final KoinIsolatedContext$lambda$1$0(Lorg/koin/core/KoinApplication;)Lorg/koin/core/scope/Scope;
    .locals 1
    .param p0, "$context"    # Lorg/koin/core/KoinApplication;

    .line 289
    invoke-virtual {p0}, Lorg/koin/core/KoinApplication;->getKoin()Lorg/koin/core/Koin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/koin/core/Koin;->getScopeRegistry()Lorg/koin/core/registry/ScopeRegistry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/koin/core/registry/ScopeRegistry;->getRootScope()Lorg/koin/core/scope/Scope;

    move-result-object v0

    return-object v0
.end method

.method static final KoinIsolatedContext$lambda$2(Lorg/koin/core/KoinApplication;Lkotlin/jvm/functions/Function2;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 1

    or-int/lit8 v0, p2, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v0

    invoke-static {p0, p1, p3, v0}, Lorg/koin/compose/KoinApplicationKt;->KoinIsolatedContext(Lorg/koin/core/KoinApplication;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public static final KoinMultiplatformApplication(Lorg/koin/dsl/KoinConfiguration;Lorg/koin/core/logger/Level;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 20
    .param p0, "config"    # Lorg/koin/dsl/KoinConfiguration;
    .param p1, "logLevel"    # Lorg/koin/core/logger/Level;
    .param p2, "content"    # Lkotlin/jvm/functions/Function2;
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I
    .annotation runtime Landroidx/compose/runtime/internal/FunctionKeyMeta;
        endOffset = 0x21c0
        key = -0x4434d8bd
        startOffset = 0x1fdf
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/koin/dsl/KoinConfiguration;",
            "Lorg/koin/core/logger/Level;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "Use KoinApplication(configuration: KoinConfiguration, logLevel: Level) instead"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "KoinApplication(configuration = config, logLevel = logLevel, content = content)"
            imports = {}
        .end subannotation
    .end annotation

    .annotation runtime Lorg/koin/core/annotation/KoinExperimentalAPI;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move/from16 v4, p4

    const-string v0, "config"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    const v0, -0x4434d8bd

    move-object/from16 v2, p3

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v6

    .end local p3    # "$composer":Landroidx/compose/runtime/Composer;
    .local v6, "$composer":Landroidx/compose/runtime/Composer;
    const-string v2, "C(KoinMultiplatformApplication)N(config,logLevel,content)221@8313L43,223@8460L27,224@8580L25,222@8361L277:KoinApplication.kt#8jjlyv"

    invoke-static {v6, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v2, p4

    .local v2, "$dirty":I
    and-int/lit8 v5, v4, 0x6

    if-nez v5, :cond_1

    invoke-interface {v6, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x4

    goto :goto_0

    :cond_0
    const/4 v5, 0x2

    :goto_0
    or-int/2addr v2, v5

    :cond_1
    and-int/lit8 v5, p5, 0x2

    const/4 v8, -0x1

    const/16 v9, 0x20

    if-eqz v5, :cond_2

    or-int/lit8 v2, v2, 0x30

    goto :goto_3

    :cond_2
    and-int/lit8 v10, v4, 0x30

    if-nez v10, :cond_5

    if-nez p1, :cond_3

    move v10, v8

    goto :goto_1

    :cond_3
    move-object/from16 v10, p1

    check-cast v10, Ljava/lang/Enum;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    :goto_1
    invoke-interface {v6, v10}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v10

    if-eqz v10, :cond_4

    move v10, v9

    goto :goto_2

    :cond_4
    const/16 v10, 0x10

    :goto_2
    or-int/2addr v2, v10

    :cond_5
    :goto_3
    and-int/lit16 v10, v4, 0x180

    if-nez v10, :cond_7

    invoke-interface {v6, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    const/16 v10, 0x100

    goto :goto_4

    :cond_6
    const/16 v10, 0x80

    :goto_4
    or-int/2addr v2, v10

    :cond_7
    move v10, v2

    .end local v2    # "$dirty":I
    .local v10, "$dirty":I
    and-int/lit16 v2, v10, 0x93

    const/16 v11, 0x92

    const/4 v13, 0x0

    if-eq v2, v11, :cond_8

    const/4 v2, 0x1

    goto :goto_5

    :cond_8
    move v2, v13

    :goto_5
    and-int/lit8 v11, v10, 0x1

    invoke-interface {v6, v2, v11}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v2

    if-eqz v2, :cond_14

    if-eqz v5, :cond_9

    .line 219
    sget-object v2, Lorg/koin/core/logger/Level;->INFO:Lorg/koin/core/logger/Level;

    .end local p1    # "logLevel":Lorg/koin/core/logger/Level;
    .local v2, "logLevel":Lorg/koin/core/logger/Level;
    goto :goto_6

    .line 221
    .end local v2    # "logLevel":Lorg/koin/core/logger/Level;
    .restart local p1    # "logLevel":Lorg/koin/core/logger/Level;
    :cond_9
    move-object/from16 v2, p1

    .line 219
    .end local p1    # "logLevel":Lorg/koin/core/logger/Level;
    .restart local v2    # "logLevel":Lorg/koin/core/logger/Level;
    :goto_6
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_a

    const-string v5, "org.koin.compose.KoinMultiplatformApplication (KoinApplication.kt:220)"

    invoke-static {v0, v10, v8, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 222
    :cond_a
    and-int/lit8 v0, v10, 0xe

    and-int/lit8 v5, v10, 0x70

    or-int/2addr v0, v5

    .local v0, "$changed$iv":I
    move-object/from16 v5, p0

    .local v5, "configuration$iv":Lorg/koin/dsl/KoinConfiguration;
    move-object v8, v2

    .local v8, "logLevel$iv":Lorg/koin/core/logger/Level;
    move-object v11, v6

    .local v11, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v14, 0x0

    .line 359
    .local v14, "$i$f$rememberKoinMPApplication":I
    const v15, 0x2027347c

    const/16 p3, 0x1

    const-string v12, "CC(rememberKoinMPApplication)N(configuration,logLevel)43@1691L67,44@1777L178:RememberKoinApplication.kt#f93w7t"

    invoke-static {v11, v15, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 360
    shr-int/lit8 v12, v0, 0x3

    and-int/lit8 v12, v12, 0xe

    shl-int/lit8 v15, v0, 0x3

    and-int/lit8 v15, v15, 0x70

    or-int/2addr v12, v15

    invoke-static {v8, v5, v11, v12, v13}, Lorg/koin/compose/KoinApplication_androidKt;->composeMultiplatformConfiguration(Lorg/koin/core/logger/Level;Lorg/koin/dsl/KoinConfiguration;Landroidx/compose/runtime/Composer;II)Lorg/koin/dsl/KoinConfiguration;

    move-result-object v12

    .line 361
    .local v12, "mergedConfiguration$iv":Lorg/koin/dsl/KoinConfiguration;
    const v15, -0x4cd3e032

    move/from16 v16, v13

    const-string v13, "CC(remember):RememberKoinApplication.kt#9igjgp"

    invoke-static {v11, v15, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v11, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v13

    and-int/lit8 v15, v0, 0x70

    xor-int/lit8 v15, v15, 0x30

    if-le v15, v9, :cond_b

    move-object v15, v8

    check-cast v15, Ljava/lang/Enum;

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    invoke-interface {v11, v15}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v15

    if-nez v15, :cond_c

    :cond_b
    and-int/lit8 v15, v0, 0x30

    if-ne v15, v9, :cond_d

    :cond_c
    move/from16 v9, p3

    goto :goto_7

    :cond_d
    move/from16 v9, v16

    :goto_7
    or-int/2addr v9, v13

    .local v9, "invalid$iv$iv":Z
    move-object v13, v11

    .local v13, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v15, 0x0

    .line 362
    .local v15, "$i$f$cache":I
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    .local v7, "it$iv$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 363
    .local v17, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    if-nez v9, :cond_f

    sget-object v18, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p1, v0

    .end local v0    # "$changed$iv":I
    .local p1, "$changed$iv":I
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v7, v0, :cond_e

    goto :goto_8

    .line 368
    :cond_e
    goto :goto_a

    .line 363
    .end local p1    # "$changed$iv":I
    .restart local v0    # "$changed$iv":I
    :cond_f
    move/from16 p1, v0

    .line 364
    .end local v0    # "$changed$iv":I
    .restart local p1    # "$changed$iv":I
    :goto_8
    const/4 v0, 0x0

    .line 365
    .local v0, "$i$a$-cache-RememberKoinApplicationKt$rememberKoinMPApplication$wrapper$1$iv":I
    move/from16 v18, v0

    .end local v0    # "$i$a$-cache-RememberKoinApplicationKt$rememberKoinMPApplication$wrapper$1$iv":I
    .local v18, "$i$a$-cache-RememberKoinApplicationKt$rememberKoinMPApplication$wrapper$1$iv":I
    new-instance v0, Lorg/koin/compose/application/CompositionKoinApplicationLoader;

    sget-object v19, Lorg/koin/mp/KoinPlatform;->INSTANCE:Lorg/koin/mp/KoinPlatform;

    invoke-virtual/range {v19 .. v19}, Lorg/koin/mp/KoinPlatform;->getKoinOrNull()Lorg/koin/core/Koin;

    move-result-object v19

    if-nez v19, :cond_10

    invoke-static {v12}, Lorg/koin/dsl/KoinApplicationKt;->koinApplication(Lorg/koin/dsl/KoinConfiguration;)Lorg/koin/core/KoinApplication;

    move-result-object v19

    goto :goto_9

    :cond_10
    const/16 v19, 0x0

    :goto_9
    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/koin/compose/application/CompositionKoinApplicationLoader;-><init>(Lorg/koin/core/KoinApplication;)V

    .line 364
    .end local v18    # "$i$a$-cache-RememberKoinApplicationKt$rememberKoinMPApplication$wrapper$1$iv":I
    nop

    .line 366
    .local v0, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 367
    move-object v7, v0

    .line 362
    .end local v0    # "value$iv$iv":Ljava/lang/Object;
    .end local v7    # "it$iv$iv":Ljava/lang/Object;
    .end local v17    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    :goto_a
    nop

    .line 361
    .end local v9    # "invalid$iv$iv":Z
    .end local v13    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v15    # "$i$f$cache":I
    move-object v0, v7

    check-cast v0, Lorg/koin/compose/application/CompositionKoinApplicationLoader;

    .local v0, "wrapper$iv":Lorg/koin/compose/application/CompositionKoinApplicationLoader;
    invoke-static {v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 369
    invoke-virtual {v0}, Lorg/koin/compose/application/CompositionKoinApplicationLoader;->getKoin()Lorg/koin/core/Koin;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 359
    invoke-static {v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 369
    nop

    .line 222
    .end local v0    # "wrapper$iv":Lorg/koin/compose/application/CompositionKoinApplicationLoader;
    .end local v5    # "configuration$iv":Lorg/koin/dsl/KoinConfiguration;
    .end local v8    # "logLevel$iv":Lorg/koin/core/logger/Level;
    .end local v11    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v12    # "mergedConfiguration$iv":Lorg/koin/dsl/KoinConfiguration;
    .end local v14    # "$i$f$rememberKoinMPApplication":I
    .end local p1    # "$changed$iv":I
    nop

    .line 224
    .local v1, "koin":Lorg/koin/core/Koin;
    const/4 v0, 0x2

    new-array v0, v0, [Landroidx/compose/runtime/ProvidedValue;

    sget-object v5, Lorg/koin/compose/KoinApplicationKt;->LocalKoinApplicationContext:Landroidx/compose/runtime/ProvidableCompositionLocal;

    const v7, -0xa6177c2

    const-string v8, "CC(remember):KoinApplication.kt#9igjgp"

    invoke-static {v6, v7, v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v7, 0x0

    .local v7, "invalid$iv":Z
    move-object v9, v6

    .local v9, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v11, 0x0

    .line 370
    .local v11, "$i$f$cache":I
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    .local v12, "it$iv":Ljava/lang/Object;
    const/4 v13, 0x0

    .line 371
    .local v13, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v14, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v14}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v14

    if-ne v12, v14, :cond_11

    .line 372
    const/4 v14, 0x0

    .local v14, "$i$a$-cache-KoinApplicationKt$KoinMultiplatformApplication$1":I
    new-instance v15, Lorg/koin/compose/KoinApplicationKt$$ExternalSyntheticLambda12;

    invoke-direct {v15}, Lorg/koin/compose/KoinApplicationKt$$ExternalSyntheticLambda12;-><init>()V

    .line 373
    .end local v14    # "$i$a$-cache-KoinApplicationKt$KoinMultiplatformApplication$1":I
    .local v15, "value$iv":Ljava/lang/Object;
    invoke-interface {v9, v15}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 374
    move-object v12, v15

    .end local v15    # "value$iv":Ljava/lang/Object;
    goto :goto_b

    .line 375
    :cond_11
    nop

    .line 370
    .end local v12    # "it$iv":Ljava/lang/Object;
    .end local v13    # "$i$a$-let-ComposerKt$cache$1$iv":I
    :goto_b
    nop

    .line 224
    .end local v7    # "invalid$iv":Z
    .end local v9    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v11    # "$i$f$cache":I
    check-cast v12, Lkotlin/jvm/functions/Function0;

    invoke-static {v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    new-instance v7, Lorg/koin/compose/ComposeContextWrapper;

    invoke-direct {v7, v1, v12}, Lorg/koin/compose/ComposeContextWrapper;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v5, v7}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v5

    aput-object v5, v0, v16

    .line 225
    sget-object v5, Lorg/koin/compose/KoinApplicationKt;->LocalKoinScopeContext:Landroidx/compose/runtime/ProvidableCompositionLocal;

    invoke-virtual {v1}, Lorg/koin/core/Koin;->getScopeRegistry()Lorg/koin/core/registry/ScopeRegistry;

    move-result-object v7

    invoke-virtual {v7}, Lorg/koin/core/registry/ScopeRegistry;->getRootScope()Lorg/koin/core/scope/Scope;

    move-result-object v7

    const v9, -0xa6168c4

    invoke-static {v6, v9, v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v8, 0x0

    .local v8, "invalid$iv":Z
    move-object v9, v6

    .restart local v9    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v11, 0x0

    .line 376
    .restart local v11    # "$i$f$cache":I
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    .restart local v12    # "it$iv":Ljava/lang/Object;
    const/4 v13, 0x0

    .line 377
    .restart local v13    # "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v14, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v14}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v14

    if-ne v12, v14, :cond_12

    .line 378
    const/4 v14, 0x0

    .local v14, "$i$a$-cache-KoinApplicationKt$KoinMultiplatformApplication$2":I
    new-instance v15, Lorg/koin/compose/KoinApplicationKt$$ExternalSyntheticLambda13;

    invoke-direct {v15}, Lorg/koin/compose/KoinApplicationKt$$ExternalSyntheticLambda13;-><init>()V

    .line 379
    .end local v14    # "$i$a$-cache-KoinApplicationKt$KoinMultiplatformApplication$2":I
    .restart local v15    # "value$iv":Ljava/lang/Object;
    invoke-interface {v9, v15}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 380
    move-object v12, v15

    .end local v15    # "value$iv":Ljava/lang/Object;
    goto :goto_c

    .line 381
    :cond_12
    nop

    .line 376
    .end local v12    # "it$iv":Ljava/lang/Object;
    .end local v13    # "$i$a$-let-ComposerKt$cache$1$iv":I
    :goto_c
    nop

    .line 225
    .end local v8    # "invalid$iv":Z
    .end local v9    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v11    # "$i$f$cache":I
    check-cast v12, Lkotlin/jvm/functions/Function0;

    invoke-static {v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    new-instance v8, Lorg/koin/compose/ComposeContextWrapper;

    invoke-direct {v8, v7, v12}, Lorg/koin/compose/ComposeContextWrapper;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v5, v8}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v5

    aput-object v5, v0, p3

    .line 224
    nop

    .line 226
    sget v5, Landroidx/compose/runtime/ProvidedValue;->$stable:I

    shr-int/lit8 v7, v10, 0x3

    and-int/lit8 v7, v7, 0x70

    or-int/2addr v5, v7

    .line 223
    invoke-static {v0, v3, v6, v5}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .end local v1    # "koin":Lorg/koin/core/Koin;
    goto :goto_d

    .line 369
    .restart local v0    # "wrapper$iv":Lorg/koin/compose/application/CompositionKoinApplicationLoader;
    .restart local v5    # "configuration$iv":Lorg/koin/dsl/KoinConfiguration;
    .local v8, "logLevel$iv":Lorg/koin/core/logger/Level;
    .local v11, "$composer$iv":Landroidx/compose/runtime/Composer;
    .local v12, "mergedConfiguration$iv":Lorg/koin/dsl/KoinConfiguration;
    .local v14, "$i$f$rememberKoinMPApplication":I
    .restart local p1    # "$changed$iv":I
    :cond_13
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v7, "Koin context has not been initialized in rememberKoinApplication"

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 217
    .end local v0    # "wrapper$iv":Lorg/koin/compose/application/CompositionKoinApplicationLoader;
    .end local v2    # "logLevel":Lorg/koin/core/logger/Level;
    .end local v5    # "configuration$iv":Lorg/koin/dsl/KoinConfiguration;
    .end local v8    # "logLevel$iv":Lorg/koin/core/logger/Level;
    .end local v11    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v12    # "mergedConfiguration$iv":Lorg/koin/dsl/KoinConfiguration;
    .end local v14    # "$i$f$rememberKoinMPApplication":I
    .local p1, "logLevel":Lorg/koin/core/logger/Level;
    :cond_14
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v2, p1

    .line 228
    .end local p1    # "logLevel":Lorg/koin/core/logger/Level;
    .restart local v2    # "logLevel":Lorg/koin/core/logger/Level;
    :cond_15
    :goto_d
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v7

    if-eqz v7, :cond_16

    new-instance v0, Lorg/koin/compose/KoinApplicationKt$$ExternalSyntheticLambda14;

    move-object/from16 v1, p0

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/koin/compose/KoinApplicationKt$$ExternalSyntheticLambda14;-><init>(Lorg/koin/dsl/KoinConfiguration;Lorg/koin/core/logger/Level;Lkotlin/jvm/functions/Function2;II)V

    invoke-interface {v7, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_16
    return-void
.end method

.method private static final KoinMultiplatformApplication$lambda$0$0()Lorg/koin/core/Koin;
    .locals 1

    .line 224
    invoke-static {}, Lorg/koin/compose/KoinApplicationKt;->getDefaultKoinContext()Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method private static final KoinMultiplatformApplication$lambda$1$0()Lorg/koin/core/scope/Scope;
    .locals 1

    .line 225
    invoke-static {}, Lorg/koin/compose/KoinApplicationKt;->getDefaultRootScope()Lorg/koin/core/scope/Scope;

    move-result-object v0

    return-object v0
.end method

.method static final KoinMultiplatformApplication$lambda$2(Lorg/koin/dsl/KoinConfiguration;Lorg/koin/core/logger/Level;Lkotlin/jvm/functions/Function2;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 7

    or-int/lit8 v0, p3, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v6, p4

    move-object v4, p5

    invoke-static/range {v1 .. v6}, Lorg/koin/compose/KoinApplicationKt;->KoinMultiplatformApplication(Lorg/koin/dsl/KoinConfiguration;Lorg/koin/core/logger/Level;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final LocalKoinApplication$lambda$0()Lorg/koin/core/Koin;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 56
    const-string v1, "should not be used in favor of getKoin()"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static final LocalKoinApplicationContext$lambda$0()Lorg/koin/compose/ComposeContextWrapper;
    .locals 3

    .line 75
    new-instance v0, Lorg/koin/compose/ComposeContextWrapper;

    invoke-static {}, Lorg/koin/compose/KoinApplicationKt;->getDefaultKoinContext()Lorg/koin/core/Koin;

    move-result-object v1

    new-instance v2, Lorg/koin/compose/KoinApplicationKt$$ExternalSyntheticLambda11;

    invoke-direct {v2}, Lorg/koin/compose/KoinApplicationKt$$ExternalSyntheticLambda11;-><init>()V

    invoke-direct {v0, v1, v2}, Lorg/koin/compose/ComposeContextWrapper;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    return-object v0
.end method

.method private static final LocalKoinApplicationContext$lambda$0$0()Lorg/koin/core/Koin;
    .locals 1

    .line 75
    invoke-static {}, Lorg/koin/compose/KoinApplicationKt;->getDefaultKoinContext()Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method static final LocalKoinScope$lambda$0()Lorg/koin/core/scope/Scope;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 48
    const-string v1, "should not be used in favor of LocalKoinScopeContext"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static final LocalKoinScopeContext$lambda$0()Lorg/koin/compose/ComposeContextWrapper;
    .locals 3

    .line 66
    new-instance v0, Lorg/koin/compose/ComposeContextWrapper;

    invoke-static {}, Lorg/koin/compose/KoinApplicationKt;->getDefaultRootScope()Lorg/koin/core/scope/Scope;

    move-result-object v1

    new-instance v2, Lorg/koin/compose/KoinApplicationKt$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lorg/koin/compose/KoinApplicationKt$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1, v2}, Lorg/koin/compose/ComposeContextWrapper;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    return-object v0
.end method

.method private static final LocalKoinScopeContext$lambda$0$0()Lorg/koin/core/scope/Scope;
    .locals 1

    .line 66
    invoke-static {}, Lorg/koin/compose/KoinApplicationKt;->getDefaultRootScope()Lorg/koin/core/scope/Scope;

    move-result-object v0

    return-object v0
.end method

.method public static final currentKoinScope(Landroidx/compose/runtime/Composer;I)Lorg/koin/core/scope/Scope;
    .locals 6
    .param p0, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p1, "$changed"    # I
    .annotation runtime Landroidx/compose/runtime/internal/FunctionKeyMeta;
        endOffset = 0x116e
        key = 0x6378e4a6
        startOffset = 0xfaa
    .end annotation

    .line 106
    const v0, 0x6378e4a6

    const-string v1, "C(currentKoinScope):KoinApplication.kt#8jjlyv"

    invoke-static {p0, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "org.koin.compose.currentKoinScope (KoinApplication.kt:105)"

    invoke-static {v0, p1, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    move-object v0, p0

    .local v0, "$this$currentKoinScope_u24lambda_u240":Landroidx/compose/runtime/Composer;
    const/4 v1, 0x0

    .line 107
    .local v1, "$i$a$-run-KoinApplicationKt$currentKoinScope$1":I
    nop

    .line 108
    :try_start_0
    sget-object v2, Lorg/koin/compose/KoinApplicationKt;->LocalKoinScopeContext:Landroidx/compose/runtime/ProvidableCompositionLocal;

    check-cast v2, Landroidx/compose/runtime/CompositionLocal;

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/koin/compose/ComposeContextWrapper;

    invoke-virtual {v2}, Lorg/koin/compose/ComposeContextWrapper;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/koin/core/scope/Scope;

    .line 109
    .local v2, "currentScope":Lorg/koin/core/scope/Scope;
    invoke-virtual {v2}, Lorg/koin/core/scope/Scope;->getClosed()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lorg/koin/compose/KoinApplicationKt;->LocalKoinScopeContext:Landroidx/compose/runtime/ProvidableCompositionLocal;

    check-cast v3, Landroidx/compose/runtime/CompositionLocal;

    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/koin/compose/ComposeContextWrapper;

    invoke-virtual {v3}, Lorg/koin/compose/ComposeContextWrapper;->resetValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/koin/core/scope/Scope;

    if-eqz v3, :cond_1

    move-object v2, v3

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t get Koin scope. Scope \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' is closed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "$this$currentKoinScope_u24lambda_u240":Landroidx/compose/runtime/Composer;
    .end local v1    # "$i$a$-run-KoinApplicationKt$currentKoinScope$1":I
    .end local p0    # "$composer":Landroidx/compose/runtime/Composer;
    .end local p1    # "$changed":I
    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .restart local v0    # "$this$currentKoinScope_u24lambda_u240":Landroidx/compose/runtime/Composer;
    .restart local v1    # "$i$a$-run-KoinApplicationKt$currentKoinScope$1":I
    .restart local p0    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local p1    # "$changed":I
    :cond_2
    nop

    .end local v2    # "currentScope":Lorg/koin/core/scope/Scope;
    :goto_0
    goto :goto_1

    .line 111
    :catch_0
    move-exception v2

    .line 112
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lorg/koin/compose/KoinApplicationKt;->LocalKoinScopeContext:Landroidx/compose/runtime/ProvidableCompositionLocal;

    check-cast v3, Landroidx/compose/runtime/CompositionLocal;

    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/koin/compose/ComposeContextWrapper;

    invoke-virtual {v3}, Lorg/koin/compose/ComposeContextWrapper;->resetValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/koin/core/scope/Scope;

    if-eqz v3, :cond_4

    .line 113
    move-object v2, v3

    .line 107
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    nop

    .line 114
    nop

    .line 106
    .end local v0    # "$this$currentKoinScope_u24lambda_u240":Landroidx/compose/runtime/Composer;
    .end local v1    # "$i$a$-run-KoinApplicationKt$currentKoinScope$1":I
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    return-object v2

    .line 112
    .restart local v0    # "$this$currentKoinScope_u24lambda_u240":Landroidx/compose/runtime/Composer;
    .restart local v1    # "$i$a$-run-KoinApplicationKt$currentKoinScope$1":I
    .restart local v2    # "e":Ljava/lang/Exception;
    :cond_4
    new-instance v3, Ljava/lang/IllegalStateException;

    .line 113
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t get Koin scope due to error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static final getDefaultKoinContext()Lorg/koin/core/Koin;
    .locals 1

    .line 77
    sget-object v0, Lorg/koin/mp/KoinPlatform;->INSTANCE:Lorg/koin/mp/KoinPlatform;

    invoke-virtual {v0}, Lorg/koin/mp/KoinPlatform;->getKoin()Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method private static final getDefaultRootScope()Lorg/koin/core/scope/Scope;
    .locals 1

    .line 80
    sget-object v0, Lorg/koin/mp/KoinPlatform;->INSTANCE:Lorg/koin/mp/KoinPlatform;

    invoke-virtual {v0}, Lorg/koin/mp/KoinPlatform;->getKoin()Lorg/koin/core/Koin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/koin/core/Koin;->getScopeRegistry()Lorg/koin/core/registry/ScopeRegistry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/koin/core/registry/ScopeRegistry;->getRootScope()Lorg/koin/core/scope/Scope;

    move-result-object v0

    return-object v0
.end method

.method public static final getKoin(Landroidx/compose/runtime/Composer;I)Lorg/koin/core/Koin;
    .locals 6
    .param p0, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p1, "$changed"    # I
    .annotation runtime Landroidx/compose/runtime/internal/FunctionKeyMeta;
        endOffset = 0xf08
        key = 0x1f352afe
        startOffset = 0xdfc
    .end annotation

    .line 89
    const v0, 0x1f352afe

    const-string v1, "C(getKoin):KoinApplication.kt#8jjlyv"

    invoke-static {p0, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "org.koin.compose.getKoin (KoinApplication.kt:88)"

    invoke-static {v0, p1, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    move-object v0, p0

    .local v0, "$this$getKoin_u24lambda_u240":Landroidx/compose/runtime/Composer;
    const/4 v1, 0x0

    .line 90
    .local v1, "$i$a$-run-KoinApplicationKt$getKoin$1":I
    nop

    .line 91
    :try_start_0
    sget-object v2, Lorg/koin/compose/KoinApplicationKt;->LocalKoinApplicationContext:Landroidx/compose/runtime/ProvidableCompositionLocal;

    check-cast v2, Landroidx/compose/runtime/CompositionLocal;

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/koin/compose/ComposeContextWrapper;

    invoke-virtual {v2}, Lorg/koin/compose/ComposeContextWrapper;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/koin/core/Koin;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 92
    :catch_0
    move-exception v2

    .line 93
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lorg/koin/compose/KoinApplicationKt;->LocalKoinApplicationContext:Landroidx/compose/runtime/ProvidableCompositionLocal;

    check-cast v3, Landroidx/compose/runtime/CompositionLocal;

    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/koin/compose/ComposeContextWrapper;

    invoke-virtual {v3}, Lorg/koin/compose/ComposeContextWrapper;->resetValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/koin/core/Koin;

    if-eqz v3, :cond_2

    .line 94
    move-object v2, v3

    .line 90
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    nop

    .line 95
    nop

    .line 89
    .end local v0    # "$this$getKoin_u24lambda_u240":Landroidx/compose/runtime/Composer;
    .end local v1    # "$i$a$-run-KoinApplicationKt$getKoin$1":I
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1
    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    return-object v2

    .line 93
    .restart local v0    # "$this$getKoin_u24lambda_u240":Landroidx/compose/runtime/Composer;
    .restart local v1    # "$i$a$-run-KoinApplicationKt$getKoin$1":I
    .restart local v2    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v3, Ljava/lang/IllegalStateException;

    .line 94
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t get Koin context due to error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static final getLocalKoinApplication()Landroidx/compose/runtime/ProvidableCompositionLocal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/ProvidableCompositionLocal<",
            "Lorg/koin/core/Koin;",
            ">;"
        }
    .end annotation

    .line 56
    sget-object v0, Lorg/koin/compose/KoinApplicationKt;->LocalKoinApplication:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-object v0
.end method

.method public static synthetic getLocalKoinApplication$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "LocalKoinApplication is deprecated. Use getKoin() to access the Koin instance directly."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "getKoin()"
            imports = {}
        .end subannotation
    .end annotation

    return-void
.end method

.method public static final getLocalKoinApplicationContext()Landroidx/compose/runtime/ProvidableCompositionLocal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/ProvidableCompositionLocal<",
            "Lorg/koin/compose/ComposeContextWrapper<",
            "Lorg/koin/core/Koin;",
            ">;>;"
        }
    .end annotation

    .line 75
    sget-object v0, Lorg/koin/compose/KoinApplicationKt;->LocalKoinApplicationContext:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-object v0
.end method

.method public static synthetic getLocalKoinApplicationContext$annotations()V
    .locals 0

    return-void
.end method

.method public static final getLocalKoinScope()Landroidx/compose/runtime/ProvidableCompositionLocal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/ProvidableCompositionLocal<",
            "Lorg/koin/core/scope/Scope;",
            ">;"
        }
    .end annotation

    .line 48
    sget-object v0, Lorg/koin/compose/KoinApplicationKt;->LocalKoinScope:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-object v0
.end method

.method public static synthetic getLocalKoinScope$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "LocalKoinScope has been replaced with LocalKoinScopeContext, using ComposeContextWrapper.getValue() to retrieve the value. See also KoinScope() or UnboundKoinScope() Compose functions"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "LocalKoinScopeContext"
            imports = {}
        .end subannotation
    .end annotation

    return-void
.end method

.method public static final getLocalKoinScopeContext()Landroidx/compose/runtime/ProvidableCompositionLocal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/ProvidableCompositionLocal<",
            "Lorg/koin/compose/ComposeContextWrapper<",
            "Lorg/koin/core/scope/Scope;",
            ">;>;"
        }
    .end annotation

    .line 66
    sget-object v0, Lorg/koin/compose/KoinApplicationKt;->LocalKoinScopeContext:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-object v0
.end method

.method public static synthetic getLocalKoinScopeContext$annotations()V
    .locals 0

    return-void
.end method
