.class public final Lorg/koin/core/extension/ExtensionManager;
.super Ljava/lang/Object;
.source "ExtensionManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExtensionManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExtensionManager.kt\norg/koin/core/extension/ExtensionManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,47:1\n36#1:48\n1915#2,2:49\n*S KotlinDebug\n*F\n+ 1 ExtensionManager.kt\norg/koin/core/extension/ExtensionManager\n*L\n34#1:48\n44#1:49,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\"\u0010\u0011\u001a\u0002H\u0012\"\n\u0008\u0000\u0010\u0012\u0018\u0001*\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\nH\u0086\u0008\u00a2\u0006\u0002\u0010\u0014J$\u0010\u0015\u001a\u0004\u0018\u0001H\u0012\"\n\u0008\u0000\u0010\u0012\u0018\u0001*\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\nH\u0086\u0008\u00a2\u0006\u0002\u0010\u0014J%\u0010\u0016\u001a\u00020\u0017\"\u0008\u0008\u0000\u0010\u0012*\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0018\u001a\u0002H\u0012\u00a2\u0006\u0002\u0010\u0019J\u0006\u0010\u001a\u001a\u00020\u0017R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R8\u0010\u0008\u001a\u001e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\tj\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b`\u000c8\u0000X\u0081\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u001b"
    }
    d2 = {
        "Lorg/koin/core/extension/ExtensionManager;",
        "",
        "_koin",
        "Lorg/koin/core/Koin;",
        "<init>",
        "(Lorg/koin/core/Koin;)V",
        "get_koin$koin_core",
        "()Lorg/koin/core/Koin;",
        "extensions",
        "Ljava/util/HashMap;",
        "",
        "Lorg/koin/core/extension/KoinExtension;",
        "Lkotlin/collections/HashMap;",
        "getExtensions$annotations",
        "()V",
        "getExtensions",
        "()Ljava/util/HashMap;",
        "getExtension",
        "T",
        "id",
        "(Ljava/lang/String;)Lorg/koin/core/extension/KoinExtension;",
        "getExtensionOrNull",
        "registerExtension",
        "",
        "extension",
        "(Ljava/lang/String;Lorg/koin/core/extension/KoinExtension;)V",
        "close",
        "koin-core"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final _koin:Lorg/koin/core/Koin;

.field private final extensions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/koin/core/extension/KoinExtension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/koin/core/Koin;)V
    .locals 1
    .param p1, "_koin"    # Lorg/koin/core/Koin;

    const-string v0, "_koin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/koin/core/extension/ExtensionManager;->_koin:Lorg/koin/core/Koin;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/koin/core/extension/ExtensionManager;->extensions:Ljava/util/HashMap;

    .line 29
    return-void
.end method

.method public static synthetic getExtensions$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 6

    .line 44
    iget-object v0, p0, Lorg/koin/core/extension/ExtensionManager;->extensions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "<get-values>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 49
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lorg/koin/core/extension/KoinExtension;

    .local v4, "it":Lorg/koin/core/extension/KoinExtension;
    const/4 v5, 0x0

    .line 44
    .local v5, "$i$a$-forEach-ExtensionManager$close$1":I
    invoke-interface {v4}, Lorg/koin/core/extension/KoinExtension;->onClose()V

    .line 49
    .end local v4    # "it":Lorg/koin/core/extension/KoinExtension;
    .end local v5    # "$i$a$-forEach-ExtensionManager$close$1":I
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 50
    :cond_0
    nop

    .line 45
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method

.method public final synthetic getExtension(Ljava/lang/String;)Lorg/koin/core/extension/KoinExtension;
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/koin/core/extension/KoinExtension;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 34
    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .local v0, "$i$f$getExtension":I
    move-object v1, p1

    .local v1, "id$iv":Ljava/lang/String;
    move-object v2, p0

    .local v2, "this_$iv":Lorg/koin/core/extension/ExtensionManager;
    const/4 v3, 0x0

    .line 48
    .local v3, "$i$f$getExtensionOrNull":I
    invoke-virtual {v2}, Lorg/koin/core/extension/ExtensionManager;->getExtensions()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x2

    const-string v6, "T"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    check-cast v4, Lorg/koin/core/extension/KoinExtension;

    .line 34
    .end local v1    # "id$iv":Ljava/lang/String;
    .end local v2    # "this_$iv":Lorg/koin/core/extension/ExtensionManager;
    .end local v3    # "$i$f$getExtensionOrNull":I
    if-eqz v4, :cond_0

    move-object v1, v4

    check-cast v1, Lorg/koin/core/extension/KoinExtension;

    return-object v4

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Koin extension \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' not found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final synthetic getExtensionOrNull(Ljava/lang/String;)Lorg/koin/core/extension/KoinExtension;
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/koin/core/extension/KoinExtension;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 36
    .local v0, "$i$f$getExtensionOrNull":I
    invoke-virtual {p0}, Lorg/koin/core/extension/ExtensionManager;->getExtensions()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x2

    const-string v3, "T"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    check-cast v1, Lorg/koin/core/extension/KoinExtension;

    return-object v1
.end method

.method public final getExtensions()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/koin/core/extension/KoinExtension;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lorg/koin/core/extension/ExtensionManager;->extensions:Ljava/util/HashMap;

    return-object v0
.end method

.method public final get_koin$koin_core()Lorg/koin/core/Koin;
    .locals 1

    .line 29
    iget-object v0, p0, Lorg/koin/core/extension/ExtensionManager;->_koin:Lorg/koin/core/Koin;

    return-object v0
.end method

.method public final registerExtension(Ljava/lang/String;Lorg/koin/core/extension/KoinExtension;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "extension"    # Lorg/koin/core/extension/KoinExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/koin/core/extension/KoinExtension;",
            ">(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extension"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lorg/koin/core/extension/ExtensionManager;->extensions:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v0, p0, Lorg/koin/core/extension/ExtensionManager;->_koin:Lorg/koin/core/Koin;

    invoke-interface {p2, v0}, Lorg/koin/core/extension/KoinExtension;->onRegister(Lorg/koin/core/Koin;)V

    .line 41
    return-void
.end method
