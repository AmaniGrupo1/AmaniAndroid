.class public final Lkotlinx/serialization/json/JsonDecoder$DefaultImpls;
.super Ljava/lang/Object;
.source "JsonDecoder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/serialization/json/JsonDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static decodeCollectionSize(Lkotlinx/serialization/json/JsonDecoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)I
    .locals 1
    .param p0, "$this"    # Lkotlinx/serialization/json/JsonDecoder;
    .param p1, "descriptor"    # Lkotlinx/serialization/descriptors/SerialDescriptor;

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    move-object v0, p0

    check-cast v0, Lkotlinx/serialization/encoding/CompositeDecoder;

    invoke-static {v0, p1}, Lkotlinx/serialization/encoding/CompositeDecoder$DefaultImpls;->decodeCollectionSize(Lkotlinx/serialization/encoding/CompositeDecoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v0

    .line 91
    return v0
.end method

.method public static decodeNullableSerializableValue(Lkotlinx/serialization/json/JsonDecoder;Lkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lkotlinx/serialization/json/JsonDecoder;
    .param p1, "deserializer"    # Lkotlinx/serialization/DeserializationStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/json/JsonDecoder;",
            "Lkotlinx/serialization/DeserializationStrategy<",
            "+TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Lkotlinx/serialization/ExperimentalSerializationApi;
    .end annotation

    const-string v0, "deserializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    move-object v0, p0

    check-cast v0, Lkotlinx/serialization/encoding/Decoder;

    invoke-static {v0, p1}, Lkotlinx/serialization/encoding/Decoder$DefaultImpls;->decodeNullableSerializableValue(Lkotlinx/serialization/encoding/Decoder;Lkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;

    move-result-object v0

    .line 91
    return-object v0
.end method

.method public static decodeSequentially(Lkotlinx/serialization/json/JsonDecoder;)Z
    .locals 1
    .param p0, "$this"    # Lkotlinx/serialization/json/JsonDecoder;
    .annotation runtime Lkotlinx/serialization/ExperimentalSerializationApi;
    .end annotation

    .line 54
    move-object v0, p0

    check-cast v0, Lkotlinx/serialization/encoding/CompositeDecoder;

    invoke-static {v0}, Lkotlinx/serialization/encoding/CompositeDecoder$DefaultImpls;->decodeSequentially(Lkotlinx/serialization/encoding/CompositeDecoder;)Z

    move-result v0

    .line 91
    return v0
.end method

.method public static decodeSerializableValue(Lkotlinx/serialization/json/JsonDecoder;Lkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lkotlinx/serialization/json/JsonDecoder;
    .param p1, "deserializer"    # Lkotlinx/serialization/DeserializationStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/json/JsonDecoder;",
            "Lkotlinx/serialization/DeserializationStrategy<",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "deserializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    move-object v0, p0

    check-cast v0, Lkotlinx/serialization/encoding/Decoder;

    invoke-static {v0, p1}, Lkotlinx/serialization/encoding/Decoder$DefaultImpls;->decodeSerializableValue(Lkotlinx/serialization/encoding/Decoder;Lkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;

    move-result-object v0

    .line 91
    return-object v0
.end method
