.class public abstract Lkotlinx/serialization/json/JsonContentPolymorphicSerializer;
.super Ljava/lang/Object;
.source "JsonContentPolymorphicSerializer.kt"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/KSerializer<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0001\n\u0002\u0008\u0002\u0008&\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003B\u0015\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001b\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u0011J\u0013\u0010\u0012\u001a\u00028\u00002\u0006\u0010\u0013\u001a\u00020\u0014\u00a2\u0006\u0002\u0010\u0015J\u0016\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00172\u0006\u0010\u0018\u001a\u00020\u0019H$J \u0010\u001a\u001a\u00020\u001b2\n\u0010\u001c\u001a\u0006\u0012\u0002\u0008\u00030\u00052\n\u0010\u0004\u001a\u0006\u0012\u0002\u0008\u00030\u0005H\u0002R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u00020\tX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u001d"
    }
    d2 = {
        "Lkotlinx/serialization/json/JsonContentPolymorphicSerializer;",
        "T",
        "",
        "Lkotlinx/serialization/KSerializer;",
        "baseClass",
        "Lkotlin/reflect/KClass;",
        "<init>",
        "(Lkotlin/reflect/KClass;)V",
        "descriptor",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "getDescriptor",
        "()Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "serialize",
        "",
        "encoder",
        "Lkotlinx/serialization/encoding/Encoder;",
        "value",
        "(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V",
        "deserialize",
        "decoder",
        "Lkotlinx/serialization/encoding/Decoder;",
        "(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;",
        "selectDeserializer",
        "Lkotlinx/serialization/DeserializationStrategy;",
        "element",
        "Lkotlinx/serialization/json/JsonElement;",
        "throwSubtypeNotRegistered",
        "",
        "subClass",
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
.field private final baseClass:Lkotlin/reflect/KClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/KClass<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method public constructor <init>(Lkotlin/reflect/KClass;)V
    .locals 7
    .param p1, "baseClass"    # Lkotlin/reflect/KClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KClass<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "baseClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/json/JsonContentPolymorphicSerializer;->baseClass:Lkotlin/reflect/KClass;

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JsonContentPolymorphicSerializer<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/serialization/json/JsonContentPolymorphicSerializer;->baseClass:Lkotlin/reflect/KClass;

    invoke-interface {v1}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lkotlinx/serialization/descriptors/PolymorphicKind$SEALED;->INSTANCE:Lkotlinx/serialization/descriptors/PolymorphicKind$SEALED;

    move-object v2, v0

    check-cast v2, Lkotlinx/serialization/descriptors/SerialKind;

    const/4 v0, 0x0

    new-array v3, v0, [Lkotlinx/serialization/descriptors/SerialDescriptor;

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/serialization/descriptors/SerialDescriptorsKt;->buildSerialDescriptor$default(Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialKind;[Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/serialization/json/JsonContentPolymorphicSerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 67
    return-void
.end method

.method private final throwSubtypeNotRegistered(Lkotlin/reflect/KClass;Lkotlin/reflect/KClass;)Ljava/lang/Void;
    .locals 5
    .param p1, "subClass"    # Lkotlin/reflect/KClass;
    .param p2, "baseClass"    # Lkotlin/reflect/KClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KClass<",
            "*>;",
            "Lkotlin/reflect/KClass<",
            "*>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 103
    invoke-interface {p1}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "subClassName":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in the scope of \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, "scope":Ljava/lang/String;
    new-instance v2, Lkotlinx/serialization/SerializationException;

    .line 106
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Class \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' is not registered for polymorphic serialization "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".\nMark the base class as \'sealed\' or register the serializer explicitly."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 105
    invoke-direct {v2, v3}, Lkotlinx/serialization/SerializationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public final deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 5
    .param p1, "decoder"    # Lkotlinx/serialization/encoding/Decoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/encoding/Decoder;",
            ")TT;"
        }
    .end annotation

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-static {p1}, Lkotlinx/serialization/json/JsonElementSerializersKt;->asJsonDecoder(Lkotlinx/serialization/encoding/Decoder;)Lkotlinx/serialization/json/JsonDecoder;

    move-result-object v0

    .line 90
    .local v0, "input":Lkotlinx/serialization/json/JsonDecoder;
    invoke-interface {v0}, Lkotlinx/serialization/json/JsonDecoder;->decodeJsonElement()Lkotlinx/serialization/json/JsonElement;

    move-result-object v1

    .line 93
    .local v1, "tree":Lkotlinx/serialization/json/JsonElement;
    invoke-virtual {p0, v1}, Lkotlinx/serialization/json/JsonContentPolymorphicSerializer;->selectDeserializer(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/DeserializationStrategy;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.json.JsonContentPolymorphicSerializer>"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lkotlinx/serialization/KSerializer;

    .line 92
    nop

    .line 94
    .local v2, "actualSerializer":Lkotlinx/serialization/KSerializer;
    invoke-interface {v0}, Lkotlinx/serialization/json/JsonDecoder;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v3

    move-object v4, v2

    check-cast v4, Lkotlinx/serialization/DeserializationStrategy;

    invoke-virtual {v3, v4, v1}, Lkotlinx/serialization/json/Json;->decodeFromJsonElement(Lkotlinx/serialization/DeserializationStrategy;Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 1

    .line 76
    iget-object v0, p0, Lkotlinx/serialization/json/JsonContentPolymorphicSerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object v0
.end method

.method protected abstract selectDeserializer(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/DeserializationStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/json/JsonElement;",
            ")",
            "Lkotlinx/serialization/DeserializationStrategy<",
            "TT;>;"
        }
    .end annotation
.end method

.method public final serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 2
    .param p1, "encoder"    # Lkotlinx/serialization/encoding/Encoder;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/encoding/Encoder;",
            "TT;)V"
        }
    .end annotation

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-interface {p1}, Lkotlinx/serialization/encoding/Encoder;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/serialization/json/JsonContentPolymorphicSerializer;->baseClass:Lkotlin/reflect/KClass;

    invoke-virtual {v0, v1, p2}, Lkotlinx/serialization/modules/SerializersModule;->getPolymorphic(Lkotlin/reflect/KClass;Ljava/lang/Object;)Lkotlinx/serialization/SerializationStrategy;

    move-result-object v0

    if-nez v0, :cond_1

    .line 82
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/serialization/SerializersKt;->serializerOrNull(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_0

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/serialization/json/JsonContentPolymorphicSerializer;->baseClass:Lkotlin/reflect/KClass;

    invoke-direct {p0, v0, v1}, Lkotlinx/serialization/json/JsonContentPolymorphicSerializer;->throwSubtypeNotRegistered(Lkotlin/reflect/KClass;Lkotlin/reflect/KClass;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .line 80
    :cond_1
    :goto_0
    nop

    .line 85
    .local v0, "actualSerializer":Lkotlinx/serialization/SerializationStrategy;
    move-object v1, v0

    check-cast v1, Lkotlinx/serialization/KSerializer;

    invoke-interface {v1, p1, p2}, Lkotlinx/serialization/KSerializer;->serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V

    .line 86
    return-void
.end method
