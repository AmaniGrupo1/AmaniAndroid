.class public final Lcom/google/firebase/firestore/pipeline/InternalOptions;
.super Ljava/lang/Object;
.source "options.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/pipeline/InternalOptions$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u001c\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\u001d\u0008\u0000\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001d\u0010\u0008\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0005H\u0000\u00a2\u0006\u0002\u0008\u000bJ#\u0010\u0008\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u00042\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00050\rH\u0000\u00a2\u0006\u0002\u0008\u000bJ\u001d\u0010\u0008\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0000H\u0000\u00a2\u0006\u0002\u0008\u000bJ!\u0010\u0008\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u00042\n\u0010\n\u001a\u0006\u0012\u0002\u0008\u00030\u000eH\u0000\u00a2\u0006\u0002\u0008\u000bJ\u0015\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u0000H\u0000\u00a2\u0006\u0002\u0008\u0011J\'\u0010\u0012\u001a\u00020\u00132\u0018\u0010\u0014\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00130\u0015H\u0000\u00a2\u0006\u0002\u0008\u0016J\u0008\u0010\u0017\u001a\u00020\u0005H\u0002R\u001a\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/google/firebase/firestore/pipeline/InternalOptions;",
        "",
        "options",
        "Lcom/google/common/collect/ImmutableMap;",
        "",
        "Lcom/google/firestore/v1/Value;",
        "<init>",
        "(Lcom/google/common/collect/ImmutableMap;)V",
        "with",
        "key",
        "value",
        "with$com_google_firebase_firebase_firestore",
        "values",
        "",
        "Lcom/google/firebase/firestore/pipeline/AbstractOptions;",
        "adding",
        "newOptions",
        "adding$com_google_firebase_firebase_firestore",
        "forEach",
        "",
        "f",
        "Lkotlin/Function2;",
        "forEach$com_google_firebase_firebase_firestore",
        "toValue",
        "Companion",
        "com.google.firebase-firebase-firestore"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/google/firebase/firestore/pipeline/InternalOptions$Companion;

.field public static final EMPTY:Lcom/google/firebase/firestore/pipeline/InternalOptions;


# instance fields
.field private final options:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/String;",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/firebase/firestore/pipeline/InternalOptions$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/pipeline/InternalOptions$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/firebase/firestore/pipeline/InternalOptions;->Companion:Lcom/google/firebase/firestore/pipeline/InternalOptions$Companion;

    .line 73
    new-instance v0, Lcom/google/firebase/firestore/pipeline/InternalOptions;

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    const-string v2, "of(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/pipeline/InternalOptions;-><init>(Lcom/google/common/collect/ImmutableMap;)V

    sput-object v0, Lcom/google/firebase/firestore/pipeline/InternalOptions;->EMPTY:Lcom/google/firebase/firestore/pipeline/InternalOptions;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/ImmutableMap;)V
    .locals 1
    .param p1, "options"    # Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/String;",
            "Lcom/google/firestore/v1/Value;",
            ">;)V"
        }
    .end annotation

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/pipeline/InternalOptions;->options:Lcom/google/common/collect/ImmutableMap;

    return-void
.end method

.method private final toValue()Lcom/google/firestore/v1/Value;
    .locals 3

    .line 68
    invoke-static {}, Lcom/google/firestore/v1/MapValue;->newBuilder()Lcom/google/firestore/v1/MapValue$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/pipeline/InternalOptions;->options:Lcom/google/common/collect/ImmutableMap;

    check-cast v1, Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/google/firestore/v1/MapValue$Builder;->putAllFields(Ljava/util/Map;)Lcom/google/firestore/v1/MapValue$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/MapValue$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/MapValue;

    .line 69
    .local v0, "mapValue":Lcom/google/firestore/v1/MapValue;
    invoke-static {}, Lcom/google/firestore/v1/Value;->newBuilder()Lcom/google/firestore/v1/Value$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/firestore/v1/Value$Builder;->setMapValue(Lcom/google/firestore/v1/MapValue;)Lcom/google/firestore/v1/Value$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    const-string v2, "build(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/google/firestore/v1/Value;

    return-object v1
.end method


# virtual methods
.method public final adding$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/pipeline/InternalOptions;)Lcom/google/firebase/firestore/pipeline/InternalOptions;
    .locals 4
    .param p1, "newOptions"    # Lcom/google/firebase/firestore/pipeline/InternalOptions;

    const-string v0, "newOptions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/google/firebase/firestore/pipeline/InternalOptions;->options:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->size()I

    move-result v0

    iget-object v1, p1, Lcom/google/firebase/firestore/pipeline/InternalOptions;->options:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/common/collect/ImmutableMap;->builderWithExpectedSize(I)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 54
    nop

    .line 56
    .local v0, "builder":Lcom/google/common/collect/ImmutableMap$Builder;
    iget-object v1, p0, Lcom/google/firebase/firestore/pipeline/InternalOptions;->options:Lcom/google/common/collect/ImmutableMap;

    check-cast v1, Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->putAll(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 57
    iget-object v1, p1, Lcom/google/firebase/firestore/pipeline/InternalOptions;->options:Lcom/google/common/collect/ImmutableMap;

    check-cast v1, Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->putAll(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 58
    new-instance v1, Lcom/google/firebase/firestore/pipeline/InternalOptions;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v2

    const-string v3, "build(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/google/firebase/firestore/pipeline/InternalOptions;-><init>(Lcom/google/common/collect/ImmutableMap;)V

    return-object v1
.end method

.method public final forEach$com_google_firebase_firebase_firestore(Lkotlin/jvm/functions/Function2;)V
    .locals 5
    .param p1, "f"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Lcom/google/firestore/v1/Value;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "f"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/google/firebase/firestore/pipeline/InternalOptions;->options:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    const-string v1, "iterator(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Lcom/google/common/collect/UnmodifiableIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/common/collect/UnmodifiableIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 63
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "<get-key>(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "<get-value>(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v2, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 65
    .end local v1    # "entry":Ljava/util/Map$Entry;
    :cond_0
    return-void
.end method

.method public final with$com_google_firebase_firebase_firestore(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/AbstractOptions;)Lcom/google/firebase/firestore/pipeline/InternalOptions;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lcom/google/firebase/firestore/pipeline/AbstractOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/firebase/firestore/pipeline/AbstractOptions<",
            "*>;)",
            "Lcom/google/firebase/firestore/pipeline/InternalOptions;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Lcom/google/firebase/firestore/pipeline/AbstractOptions;->getOptions$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/pipeline/InternalOptions;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/firestore/pipeline/InternalOptions;->with$com_google_firebase_firebase_firestore(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/InternalOptions;)Lcom/google/firebase/firestore/pipeline/InternalOptions;

    move-result-object v0

    return-object v0
.end method

.method public final with$com_google_firebase_firebase_firestore(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/InternalOptions;)Lcom/google/firebase/firestore/pipeline/InternalOptions;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lcom/google/firebase/firestore/pipeline/InternalOptions;

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-direct {p2}, Lcom/google/firebase/firestore/pipeline/InternalOptions;->toValue()Lcom/google/firestore/v1/Value;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/firestore/pipeline/InternalOptions;->with$com_google_firebase_firebase_firestore(Ljava/lang/String;Lcom/google/firestore/v1/Value;)Lcom/google/firebase/firestore/pipeline/InternalOptions;

    move-result-object v0

    return-object v0
.end method

.method public final with$com_google_firebase_firebase_firestore(Ljava/lang/String;Lcom/google/firestore/v1/Value;)Lcom/google/firebase/firestore/pipeline/InternalOptions;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lcom/google/firestore/v1/Value;

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/google/firebase/firestore/pipeline/InternalOptions;->options:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/common/collect/ImmutableMap;->builderWithExpectedSize(I)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 35
    .local v0, "builder":Lcom/google/common/collect/ImmutableMap$Builder;
    iget-object v1, p0, Lcom/google/firebase/firestore/pipeline/InternalOptions;->options:Lcom/google/common/collect/ImmutableMap;

    check-cast v1, Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->putAll(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 36
    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 37
    new-instance v1, Lcom/google/firebase/firestore/pipeline/InternalOptions;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->buildKeepingLast()Lcom/google/common/collect/ImmutableMap;

    move-result-object v2

    const-string v3, "buildKeepingLast(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/google/firebase/firestore/pipeline/InternalOptions;-><init>(Lcom/google/common/collect/ImmutableMap;)V

    return-object v1
.end method

.method public final with$com_google_firebase_firebase_firestore(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/google/firebase/firestore/pipeline/InternalOptions;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "values"    # Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "Lcom/google/firestore/v1/Value;",
            ">;)",
            "Lcom/google/firebase/firestore/pipeline/InternalOptions;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-static {}, Lcom/google/firestore/v1/ArrayValue;->newBuilder()Lcom/google/firestore/v1/ArrayValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/firestore/v1/ArrayValue$Builder;->addAllValues(Ljava/lang/Iterable;)Lcom/google/firestore/v1/ArrayValue$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/ArrayValue$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ArrayValue;

    .line 42
    .local v0, "arrayValue":Lcom/google/firestore/v1/ArrayValue;
    invoke-static {}, Lcom/google/firestore/v1/Value;->newBuilder()Lcom/google/firestore/v1/Value$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/firestore/v1/Value$Builder;->setArrayValue(Lcom/google/firestore/v1/ArrayValue;)Lcom/google/firestore/v1/Value$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    const-string v2, "build(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/google/firestore/v1/Value;

    invoke-virtual {p0, p1, v1}, Lcom/google/firebase/firestore/pipeline/InternalOptions;->with$com_google_firebase_firebase_firestore(Ljava/lang/String;Lcom/google/firestore/v1/Value;)Lcom/google/firebase/firestore/pipeline/InternalOptions;

    move-result-object v1

    return-object v1
.end method
