.class final Lkotlinx/serialization/json/internal/JsonTreeMapEncoder;
.super Lkotlinx/serialization/json/internal/JsonTreeEncoder;
.source "TreeJsonEncoder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0002\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0018\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u0006H\u0016J\u0008\u0010\u0011\u001a\u00020\u0006H\u0016R\u000e\u0010\n\u001a\u00020\u000bX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lkotlinx/serialization/json/internal/JsonTreeMapEncoder;",
        "Lkotlinx/serialization/json/internal/JsonTreeEncoder;",
        "json",
        "Lkotlinx/serialization/json/Json;",
        "nodeConsumer",
        "Lkotlin/Function1;",
        "Lkotlinx/serialization/json/JsonElement;",
        "",
        "<init>",
        "(Lkotlinx/serialization/json/Json;Lkotlin/jvm/functions/Function1;)V",
        "tag",
        "",
        "isKey",
        "",
        "putElement",
        "key",
        "element",
        "getCurrent",
        "kotlinx-serialization-json"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private isKey:Z

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/Json;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1, "json"    # Lkotlinx/serialization/json/Json;
    .param p2, "nodeConsumer"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/json/Json;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlinx/serialization/json/JsonElement;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nodeConsumer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    invoke-direct {p0, p1, p2}, Lkotlinx/serialization/json/internal/JsonTreeEncoder;-><init>(Lkotlinx/serialization/json/Json;Lkotlin/jvm/functions/Function1;)V

    .line 236
    const/4 v0, 0x1

    iput-boolean v0, p0, Lkotlinx/serialization/json/internal/JsonTreeMapEncoder;->isKey:Z

    .line 234
    return-void
.end method


# virtual methods
.method public getCurrent()Lkotlinx/serialization/json/JsonElement;
    .locals 2

    .line 253
    new-instance v0, Lkotlinx/serialization/json/JsonObject;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonTreeMapEncoder;->getContent()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlinx/serialization/json/JsonObject;-><init>(Ljava/util/Map;)V

    check-cast v0, Lkotlinx/serialization/json/JsonElement;

    return-object v0
.end method

.method public putElement(Ljava/lang/String;Lkotlinx/serialization/json/JsonElement;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "element"    # Lkotlinx/serialization/json/JsonElement;

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "element"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/JsonTreeMapEncoder;->isKey:Z

    if-eqz v0, :cond_3

    .line 240
    nop

    .line 241
    instance-of v0, p2, Lkotlinx/serialization/json/JsonPrimitive;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/serialization/json/JsonPrimitive;

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 240
    iput-object v0, p0, Lkotlinx/serialization/json/internal/JsonTreeMapEncoder;->tag:Ljava/lang/String;

    .line 245
    const/4 v0, 0x0

    iput-boolean v0, p0, Lkotlinx/serialization/json/internal/JsonTreeMapEncoder;->isKey:Z

    goto :goto_0

    .line 242
    :cond_0
    instance-of v0, p2, Lkotlinx/serialization/json/JsonObject;

    if-nez v0, :cond_2

    .line 243
    instance-of v0, p2, Lkotlinx/serialization/json/JsonArray;

    if-eqz v0, :cond_1

    sget-object v0, Lkotlinx/serialization/json/JsonArraySerializer;->INSTANCE:Lkotlinx/serialization/json/JsonArraySerializer;

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonArraySerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->InvalidKeyKindException(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/json/internal/JsonEncodingException;

    move-result-object v0

    throw v0

    .line 240
    :cond_1
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 242
    :cond_2
    sget-object v0, Lkotlinx/serialization/json/JsonObjectSerializer;->INSTANCE:Lkotlinx/serialization/json/JsonObjectSerializer;

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonObjectSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->InvalidKeyKindException(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/json/internal/JsonEncodingException;

    move-result-object v0

    throw v0

    .line 247
    :cond_3
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonTreeMapEncoder;->getContent()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonTreeMapEncoder;->tag:Ljava/lang/String;

    if-nez v1, :cond_4

    const-string v1, "tag"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_4
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    const/4 v0, 0x1

    iput-boolean v0, p0, Lkotlinx/serialization/json/internal/JsonTreeMapEncoder;->isKey:Z

    .line 250
    :goto_0
    return-void
.end method
