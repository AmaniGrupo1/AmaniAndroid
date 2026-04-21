.class public final Lorg/ies/tierno/applicationamani/di/RetrofitModuleKt$retrofitModule$1$3$gson$1;
.super Ljava/lang/Object;
.source "RetrofitModule.kt"

# interfaces
.implements Lcom/google/gson/JsonSerializer;
.implements Lcom/google/gson/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ies/tierno/applicationamani/di/RetrofitModuleKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson/JsonSerializer<",
        "Lj$/time/LocalDate;",
        ">;",
        "Lcom/google/gson/JsonDeserializer<",
        "Lj$/time/LocalDate;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000-\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00020\u0003J\'\u0010\n\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\'\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "org/ies/tierno/applicationamani/di/RetrofitModuleKt$retrofitModule$1$3$gson$1",
        "Lcom/google/gson/JsonSerializer;",
        "j$/time/LocalDate",
        "Lcom/google/gson/JsonDeserializer;",
        "src",
        "Ljava/lang/reflect/Type;",
        "typeOfSrc",
        "Lcom/google/gson/JsonSerializationContext;",
        "context",
        "Lcom/google/gson/JsonElement;",
        "serialize",
        "(Lj$/time/LocalDate;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;",
        "json",
        "typeOfT",
        "Lcom/google/gson/JsonDeserializationContext;",
        "deserialize",
        "(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lj$/time/LocalDate;",
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


# direct methods
.method constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lj$/time/LocalDate;
    .locals 2
    .param p1, "json"    # Lcom/google/gson/JsonElement;
    .param p2, "typeOfT"    # Ljava/lang/reflect/Type;
    .param p3, "context"    # Lcom/google/gson/JsonDeserializationContext;

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeOfT"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lj$/time/LocalDate;->parse(Ljava/lang/CharSequence;)Lj$/time/LocalDate;

    move-result-object v0

    const-string v1, "parse(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "p0"    # Lcom/google/gson/JsonElement;
    .param p2, "p1"    # Ljava/lang/reflect/Type;
    .param p3, "p2"    # Lcom/google/gson/JsonDeserializationContext;

    .line 57
    invoke-virtual {p0, p1, p2, p3}, Lorg/ies/tierno/applicationamani/di/RetrofitModuleKt$retrofitModule$1$3$gson$1;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lj$/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lj$/time/LocalDate;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 2
    .param p1, "src"    # Lj$/time/LocalDate;
    .param p2, "typeOfSrc"    # Ljava/lang/reflect/Type;
    .param p3, "context"    # Lcom/google/gson/JsonSerializationContext;

    const-string v0, "src"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeOfSrc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    new-instance v0, Lcom/google/gson/JsonPrimitive;

    invoke-virtual {p1}, Lj$/time/LocalDate;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    check-cast v0, Lcom/google/gson/JsonElement;

    return-object v0
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 1
    .param p1, "p0"    # Ljava/lang/Object;
    .param p2, "p1"    # Ljava/lang/reflect/Type;
    .param p3, "p2"    # Lcom/google/gson/JsonSerializationContext;

    .line 57
    move-object v0, p1

    check-cast v0, Lj$/time/LocalDate;

    invoke-virtual {p0, v0, p2, p3}, Lorg/ies/tierno/applicationamani/di/RetrofitModuleKt$retrofitModule$1$3$gson$1;->serialize(Lj$/time/LocalDate;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method
