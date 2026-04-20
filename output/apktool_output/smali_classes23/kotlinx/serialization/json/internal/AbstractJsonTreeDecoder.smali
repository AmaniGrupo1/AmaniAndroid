.class abstract Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
.super Lkotlinx/serialization/internal/NamedValueDecoder;
.source "TreeJsonDecoder.kt"

# interfaces
.implements Lkotlinx/serialization/json/JsonDecoder;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTreeJsonDecoder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TreeJsonDecoder.kt\nkotlinx/serialization/json/internal/AbstractJsonTreeDecoder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Polymorphic.kt\nkotlinx/serialization/json/internal/PolymorphicKt\n+ 4 TreeJsonEncoder.kt\nkotlinx/serialization/json/internal/TreeJsonEncoderKt\n+ 5 WriteMode.kt\nkotlinx/serialization/json/internal/WriteModeKt\n*L\n1#1,334:1\n74#1:359\n74#1:373\n74#1:384\n74#1:394\n75#1:419\n75#1:428\n85#1:437\n75#1:438\n88#1:447\n75#1:448\n89#1,5:457\n88#1:462\n75#1:463\n89#1,5:472\n88#1:477\n75#1:478\n89#1,5:487\n88#1:492\n75#1:493\n89#1,5:502\n88#1:507\n75#1:508\n89#1,5:517\n88#1:522\n75#1:523\n89#1,5:532\n88#1:537\n75#1:538\n89#1,5:547\n88#1:552\n75#1:553\n89#1,5:562\n75#1:567\n85#1:576\n75#1:577\n1#2:335\n76#3,6:336\n82#3,9:350\n271#4,8:342\n271#4,8:360\n271#4,8:374\n271#4,8:385\n271#4,8:395\n271#4,8:403\n271#4,8:411\n271#4,8:420\n271#4,8:429\n271#4,8:439\n271#4,8:449\n271#4,8:464\n271#4,8:479\n271#4,8:494\n271#4,8:509\n271#4,8:524\n271#4,8:539\n271#4,8:554\n271#4,8:568\n271#4,8:578\n36#5,5:368\n41#5,2:382\n44#5:393\n*S KotlinDebug\n*F\n+ 1 TreeJsonDecoder.kt\nkotlinx/serialization/json/internal/AbstractJsonTreeDecoder\n*L\n64#1:359\n67#1:373\n68#1:384\n70#1:394\n85#1:419\n88#1:428\n105#1:437\n105#1:438\n112#1:447\n112#1:448\n112#1:457,5\n114#1:462\n114#1:463\n114#1:472,5\n120#1:477\n120#1:478\n120#1:487,5\n126#1:492\n126#1:493\n126#1:502,5\n127#1:507\n127#1:508\n127#1:517,5\n130#1:522\n130#1:523\n130#1:532,5\n137#1:537\n137#1:538\n137#1:547,5\n143#1:552\n143#1:553\n143#1:562,5\n146#1:567\n159#1:576\n159#1:577\n56#1:336,6\n56#1:350,9\n56#1:342,8\n64#1:360,8\n67#1:374,8\n68#1:385,8\n70#1:395,8\n74#1:403,8\n75#1:411,8\n85#1:420,8\n88#1:429,8\n105#1:439,8\n112#1:449,8\n114#1:464,8\n120#1:479,8\n126#1:494,8\n127#1:509,8\n130#1:524,8\n137#1:539,8\n143#1:554,8\n146#1:568,8\n159#1:578,8\n65#1:368,5\n65#1:382,2\n65#1:393\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ba\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0001\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\n\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u000c\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00082\u0018\u00002\u00020\u00012\u00020\u0002B%\u0008\u0004\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0008\u0010\u0017\u001a\u00020\u0006H\u0004J\u000e\u0010\u0018\u001a\u00020\u00082\u0006\u0010\u0019\u001a\u00020\u0008J\u0008\u0010\u001a\u001a\u00020\u0006H\u0016J!\u0010\u001b\u001a\u0002H\u001c\"\u0004\u0008\u0000\u0010\u001c2\u000c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u0002H\u001c0\u001eH\u0016\u00a2\u0006\u0002\u0010\u001fJ\u0018\u0010 \u001a\u00020\u00082\u0006\u0010!\u001a\u00020\u00082\u0006\u0010\"\u001a\u00020\u0008H\u0014J\u0010\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&H\u0016J*\u0010\'\u001a\u0002H\u001c\"\n\u0008\u0000\u0010\u001c\u0018\u0001*\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010%\u001a\u00020&H\u0086\u0008\u00a2\u0006\u0002\u0010(J2\u0010\'\u001a\u0002H\u001c\"\n\u0008\u0000\u0010\u001c\u0018\u0001*\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010)\u001a\u00020\u00082\u0006\u0010*\u001a\u00020\u0008H\u0086\u0008\u00a2\u0006\u0002\u0010+J\u0010\u0010,\u001a\u00020-2\u0006\u0010%\u001a\u00020&H\u0016J\u0008\u0010.\u001a\u00020/H\u0016J\u0019\u00100\u001a\u0002012\u0006\u0010*\u001a\u00020\u00082\u0006\u0010%\u001a\u00020&H\u0084\u0008JC\u00100\u001a\u0002H\u001c\"\u0008\u0008\u0000\u0010\u001c*\u0002022\u0006\u0010*\u001a\u00020\u00082\u0006\u00103\u001a\u00020\u00082\u0019\u00104\u001a\u0015\u0012\u0004\u0012\u000201\u0012\u0006\u0012\u0004\u0018\u0001H\u001c05\u00a2\u0006\u0002\u00086H\u0082\u0008\u00a2\u0006\u0002\u00107J \u00108\u001a\u0002092\u0006\u0010:\u001a\u0002012\u0006\u0010;\u001a\u00020\u00082\u0006\u0010*\u001a\u00020\u0008H\u0002J\u0010\u0010<\u001a\u00020\u00062\u0006\u0010*\u001a\u00020\u0008H$J\u0018\u0010=\u001a\u00020>2\u0006\u0010*\u001a\u00020\u00082\u0006\u0010?\u001a\u00020&H\u0014J\u0012\u0010@\u001a\u0004\u0018\u0001092\u0006\u0010*\u001a\u00020\u0008H\u0014J\u0010\u0010A\u001a\u00020/2\u0006\u0010*\u001a\u00020\u0008H\u0014J\u0010\u0010B\u001a\u00020/2\u0006\u0010*\u001a\u00020\u0008H\u0014J\u0010\u0010C\u001a\u00020D2\u0006\u0010*\u001a\u00020\u0008H\u0014J\u0010\u0010E\u001a\u00020F2\u0006\u0010*\u001a\u00020\u0008H\u0014J\u0010\u0010G\u001a\u00020>2\u0006\u0010*\u001a\u00020\u0008H\u0014J\u0010\u0010H\u001a\u00020I2\u0006\u0010*\u001a\u00020\u0008H\u0014J\u0010\u0010J\u001a\u00020K2\u0006\u0010*\u001a\u00020\u0008H\u0014J\u0010\u0010L\u001a\u00020M2\u0006\u0010*\u001a\u00020\u0008H\u0014J\u0010\u0010N\u001a\u00020O2\u0006\u0010*\u001a\u00020\u0008H\u0014J\u0010\u0010P\u001a\u00020\u00082\u0006\u0010*\u001a\u00020\u0008H\u0014J\u0018\u0010Q\u001a\u00020R2\u0006\u0010*\u001a\u00020\u00082\u0006\u0010S\u001a\u00020&H\u0014J\u0010\u0010T\u001a\u00020R2\u0006\u0010%\u001a\u00020&H\u0016R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0011\u001a\u00020\u00128VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014R\u0010\u0010\u0015\u001a\u00020\u00168\u0004X\u0085\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0001\u0003UVW\u00a8\u0006X"
    }
    d2 = {
        "Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;",
        "Lkotlinx/serialization/internal/NamedValueDecoder;",
        "Lkotlinx/serialization/json/JsonDecoder;",
        "json",
        "Lkotlinx/serialization/json/Json;",
        "value",
        "Lkotlinx/serialization/json/JsonElement;",
        "polymorphicDiscriminator",
        "",
        "<init>",
        "(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/JsonElement;Ljava/lang/String;)V",
        "getJson",
        "()Lkotlinx/serialization/json/Json;",
        "getValue",
        "()Lkotlinx/serialization/json/JsonElement;",
        "getPolymorphicDiscriminator",
        "()Ljava/lang/String;",
        "serializersModule",
        "Lkotlinx/serialization/modules/SerializersModule;",
        "getSerializersModule",
        "()Lkotlinx/serialization/modules/SerializersModule;",
        "configuration",
        "Lkotlinx/serialization/json/JsonConfiguration;",
        "currentObject",
        "renderTagStack",
        "currentTag",
        "decodeJsonElement",
        "decodeSerializableValue",
        "T",
        "deserializer",
        "Lkotlinx/serialization/DeserializationStrategy;",
        "(Lkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;",
        "composeName",
        "parentName",
        "childName",
        "beginStructure",
        "Lkotlinx/serialization/encoding/CompositeDecoder;",
        "descriptor",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "cast",
        "(Lkotlinx/serialization/json/JsonElement;Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/json/JsonElement;",
        "serialName",
        "tag",
        "(Lkotlinx/serialization/json/JsonElement;Ljava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;",
        "endStructure",
        "",
        "decodeNotNullMark",
        "",
        "getPrimitiveValue",
        "Lkotlinx/serialization/json/JsonPrimitive;",
        "",
        "primitiveName",
        "convert",
        "Lkotlin/Function1;",
        "Lkotlin/ExtensionFunctionType;",
        "(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
        "unparsedPrimitive",
        "",
        "literal",
        "primitive",
        "currentElement",
        "decodeTaggedEnum",
        "",
        "enumDescriptor",
        "decodeTaggedNull",
        "decodeTaggedNotNullMark",
        "decodeTaggedBoolean",
        "decodeTaggedByte",
        "",
        "decodeTaggedShort",
        "",
        "decodeTaggedInt",
        "decodeTaggedLong",
        "",
        "decodeTaggedFloat",
        "",
        "decodeTaggedDouble",
        "",
        "decodeTaggedChar",
        "",
        "decodeTaggedString",
        "decodeTaggedInline",
        "Lkotlinx/serialization/encoding/Decoder;",
        "inlineDescriptor",
        "decodeInline",
        "Lkotlinx/serialization/json/internal/JsonPrimitiveDecoder;",
        "Lkotlinx/serialization/json/internal/JsonTreeDecoder;",
        "Lkotlinx/serialization/json/internal/JsonTreeListDecoder;",
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
.field protected final configuration:Lkotlinx/serialization/json/JsonConfiguration;

.field private final json:Lkotlinx/serialization/json/Json;

.field private final polymorphicDiscriminator:Ljava/lang/String;

.field private final value:Lkotlinx/serialization/json/JsonElement;


# direct methods
.method private constructor <init>(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/JsonElement;Ljava/lang/String;)V
    .locals 1
    .param p1, "json"    # Lkotlinx/serialization/json/Json;
    .param p2, "value"    # Lkotlinx/serialization/json/JsonElement;
    .param p3, "polymorphicDiscriminator"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0}, Lkotlinx/serialization/internal/NamedValueDecoder;-><init>()V

    .line 38
    iput-object p1, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->json:Lkotlinx/serialization/json/Json;

    .line 39
    iput-object p2, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->value:Lkotlinx/serialization/json/JsonElement;

    .line 40
    iput-object p3, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->polymorphicDiscriminator:Ljava/lang/String;

    .line 47
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/Json;->getConfiguration()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    .line 37
    return-void
.end method

.method public synthetic constructor <init>(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/JsonElement;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 37
    and-int/lit8 p4, p4, 0x4

    const/4 p5, 0x0

    if-eqz p4, :cond_0

    .line 40
    move-object p3, p5

    .line 37
    :cond_0
    invoke-direct {p0, p1, p2, p3, p5}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;-><init>(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/JsonElement;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 41
    return-void
.end method

.method public synthetic constructor <init>(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/JsonElement;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;-><init>(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/JsonElement;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$currentElement(Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;
    .locals 1
    .param p0, "$this"    # Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    .param p1, "tag"    # Ljava/lang/String;

    .line 37
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->currentElement(Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$renderTagStack(Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;

    .line 37
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->renderTagStack()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final getPrimitiveValue(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 8
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "primitiveName"    # Ljava/lang/String;
    .param p3, "convert"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlinx/serialization/json/JsonPrimitive;",
            "+TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 88
    .local v0, "$i$f$getPrimitiveValue":I
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->currentElement(Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;

    move-result-object v1

    .local v1, "value$iv":Lkotlinx/serialization/json/JsonElement;
    move-object v2, p0

    .local v2, "this_$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    const/4 v3, 0x0

    .line 428
    .local v3, "$i$f$cast":I
    const/4 v4, 0x0

    .line 429
    .local v4, "$i$f$cast":I
    instance-of v5, v1, Lkotlinx/serialization/json/JsonPrimitive;

    if-eqz v5, :cond_1

    .line 436
    nop

    .line 428
    .end local v4    # "$i$f$cast":I
    nop

    .line 88
    .end local v1    # "value$iv":Lkotlinx/serialization/json/JsonElement;
    .end local v2    # "this_$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    .end local v3    # "$i$f$cast":I
    check-cast v1, Lkotlinx/serialization/json/JsonPrimitive;

    .line 89
    .local v1, "literal":Lkotlinx/serialization/json/JsonPrimitive;
    nop

    .line 90
    :try_start_0
    invoke-interface {p3, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    invoke-direct {p0, v1, p2, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->unparsedPrimitive(Lkotlinx/serialization/json/JsonPrimitive;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Void;

    new-instance v2, Lkotlin/KotlinNothingValueException;

    invoke-direct {v2}, Lkotlin/KotlinNothingValueException;-><init>()V

    .end local v0    # "$i$f$getPrimitiveValue":I
    .end local v1    # "literal":Lkotlinx/serialization/json/JsonPrimitive;
    .end local p1    # "tag":Ljava/lang/String;
    .end local p2    # "primitiveName":Ljava/lang/String;
    .end local p3    # "convert":Lkotlin/jvm/functions/Function1;
    throw v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .restart local v0    # "$i$f$getPrimitiveValue":I
    .restart local v1    # "literal":Lkotlinx/serialization/json/JsonPrimitive;
    .restart local p1    # "tag":Ljava/lang/String;
    .restart local p2    # "primitiveName":Ljava/lang/String;
    .restart local p3    # "convert":Lkotlin/jvm/functions/Function1;
    :catch_0
    move-exception v2

    .line 93
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-direct {p0, v1, p2, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->unparsedPrimitive(Lkotlinx/serialization/json/JsonPrimitive;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Void;

    new-instance v3, Lkotlin/KotlinNothingValueException;

    invoke-direct {v3}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v3

    .line 430
    .local v1, "value$iv":Lkotlinx/serialization/json/JsonElement;
    .local v2, "this_$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    .restart local v3    # "$i$f$cast":I
    .restart local v4    # "$i$f$cast":I
    :cond_1
    nop

    .line 431
    nop

    .line 432
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-class v6, Lkotlinx/serialization/json/JsonPrimitive;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    invoke-interface {v6}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", but had "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    invoke-interface {v6}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " as the serialized body of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at element: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    .line 428
    .local v6, "$i$a$-cast-AbstractJsonTreeDecoder$cast$2$iv":I
    invoke-virtual {v2, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->renderTagStack(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 432
    .end local v6    # "$i$a$-cast-AbstractJsonTreeDecoder$cast$2$iv":I
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 433
    invoke-virtual {v1}, Lkotlinx/serialization/json/JsonElement;->toString()Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    .line 430
    const/4 v7, -0x1

    invoke-static {v7, v5, v6}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->JsonDecodingException(ILjava/lang/String;Ljava/lang/CharSequence;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object v5

    throw v5
.end method

.method private final unparsedPrimitive(Lkotlinx/serialization/json/JsonPrimitive;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Void;
    .locals 4
    .param p1, "literal"    # Lkotlinx/serialization/json/JsonPrimitive;
    .param p2, "primitive"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;

    .line 98
    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "i"

    const/4 v3, 0x0

    invoke-static {p2, v2, v3, v0, v1}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "an "

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "a "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "type":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse literal \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value at element: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p3}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->renderTagStack(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->currentObject()Lkotlinx/serialization/json/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lkotlinx/serialization/json/JsonElement;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, -0x1

    invoke-static {v3, v1, v2}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->JsonDecodingException(ILjava/lang/String;Ljava/lang/CharSequence;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;
    .locals 24
    .param p1, "descriptor"    # Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-object/from16 v0, p1

    const-string v1, "descriptor"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-virtual/range {p0 .. p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->currentObject()Lkotlinx/serialization/json/JsonElement;

    move-result-object v1

    .line 63
    .local v1, "currentObject":Lkotlinx/serialization/json/JsonElement;
    invoke-interface {v0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getKind()Lkotlinx/serialization/descriptors/SerialKind;

    move-result-object v2

    .line 64
    sget-object v3, Lkotlinx/serialization/descriptors/StructureKind$LIST;->INSTANCE:Lkotlinx/serialization/descriptors/StructureKind$LIST;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const-string v4, " at element: "

    const-string v5, " as the serialized body of "

    const-string v6, ", but had "

    const-string v7, "Expected "

    if-nez v3, :cond_8

    instance-of v3, v2, Lkotlinx/serialization/descriptors/PolymorphicKind;

    if-eqz v3, :cond_0

    move-object/from16 v9, p0

    goto/16 :goto_2

    .line 65
    :cond_0
    sget-object v3, Lkotlinx/serialization/descriptors/StructureKind$MAP;->INSTANCE:Lkotlinx/serialization/descriptors/StructureKind$MAP;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual/range {p0 .. p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v2

    .local v2, "$this$selectMapMode$iv":Lkotlinx/serialization/json/Json;
    const/4 v3, 0x0

    .line 368
    .local v3, "$i$f$selectMapMode":I
    const/4 v9, 0x0

    invoke-interface {v0, v9}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementDescriptor(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v9

    invoke-virtual {v2}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlinx/serialization/json/internal/WriteModeKt;->carrierDescriptor(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/modules/SerializersModule;)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v9

    .line 369
    .local v9, "keyDescriptor$iv":Lkotlinx/serialization/descriptors/SerialDescriptor;
    invoke-interface {v9}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getKind()Lkotlinx/serialization/descriptors/SerialKind;

    move-result-object v10

    .line 371
    .local v10, "keyKind$iv":Lkotlinx/serialization/descriptors/SerialKind;
    instance-of v11, v10, Lkotlinx/serialization/descriptors/PrimitiveKind;

    if-nez v11, :cond_4

    sget-object v11, Lkotlinx/serialization/descriptors/SerialKind$ENUM;->INSTANCE:Lkotlinx/serialization/descriptors/SerialKind$ENUM;

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    goto/16 :goto_0

    .line 382
    :cond_1
    invoke-virtual {v2}, Lkotlinx/serialization/json/Json;->getConfiguration()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object v11

    invoke-virtual {v11}, Lkotlinx/serialization/json/JsonConfiguration;->getAllowStructuredMapKeys()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 383
    const/4 v11, 0x0

    .line 68
    .local v11, "$i$a$-selectMapMode-AbstractJsonTreeDecoder$beginStructure$2":I
    new-instance v12, Lkotlinx/serialization/json/internal/JsonTreeListDecoder;

    invoke-virtual/range {p0 .. p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v13

    move-object/from16 v14, p0

    .local v14, "this_$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    const/4 v15, 0x0

    .line 384
    .local v15, "$i$f$cast":I
    invoke-interface {v0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getSerialName()Ljava/lang/String;

    move-result-object v8

    .local v8, "serialName$iv$iv":Ljava/lang/String;
    const/16 v16, 0x0

    .line 385
    .local v16, "$i$f$cast":I
    instance-of v0, v1, Lkotlinx/serialization/json/JsonArray;

    if-eqz v0, :cond_2

    .line 392
    nop

    .line 384
    .end local v8    # "serialName$iv$iv":Ljava/lang/String;
    .end local v16    # "$i$f$cast":I
    nop

    .end local v14    # "this_$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    .end local v15    # "$i$f$cast":I
    move-object v0, v1

    check-cast v0, Lkotlinx/serialization/json/JsonArray;

    .line 68
    invoke-direct {v12, v13, v0}, Lkotlinx/serialization/json/internal/JsonTreeListDecoder;-><init>(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/JsonArray;)V

    .line 383
    .end local v11    # "$i$a$-selectMapMode-AbstractJsonTreeDecoder$beginStructure$2":I
    goto :goto_1

    .line 386
    .restart local v8    # "serialName$iv$iv":Ljava/lang/String;
    .restart local v11    # "$i$a$-selectMapMode-AbstractJsonTreeDecoder$beginStructure$2":I
    .restart local v14    # "this_$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    .restart local v15    # "$i$f$cast":I
    .restart local v16    # "$i$f$cast":I
    :cond_2
    nop

    .line 387
    nop

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v7, Lkotlinx/serialization/json/JsonArray;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    invoke-interface {v7}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    invoke-interface {v6}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v4, 0x0

    .line 384
    .local v4, "$i$a$-cast-AbstractJsonTreeDecoder$cast$1$iv":I
    invoke-static {v14}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->access$renderTagStack(Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;)Ljava/lang/String;

    move-result-object v4

    .line 388
    .end local v4    # "$i$a$-cast-AbstractJsonTreeDecoder$cast$1$iv":I
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 389
    invoke-virtual {v1}, Lkotlinx/serialization/json/JsonElement;->toString()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    .line 386
    const/4 v5, -0x1

    invoke-static {v5, v0, v4}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->JsonDecodingException(ILjava/lang/String;Ljava/lang/CharSequence;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object v0

    throw v0

    .line 393
    .end local v8    # "serialName$iv$iv":Ljava/lang/String;
    .end local v11    # "$i$a$-selectMapMode-AbstractJsonTreeDecoder$beginStructure$2":I
    .end local v14    # "this_$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    .end local v15    # "$i$f$cast":I
    .end local v16    # "$i$f$cast":I
    :cond_3
    invoke-static {v9}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->InvalidKeyKindException(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/json/internal/JsonEncodingException;

    move-result-object v0

    throw v0

    .line 372
    :cond_4
    :goto_0
    const/4 v0, 0x0

    .line 67
    .local v0, "$i$a$-selectMapMode-AbstractJsonTreeDecoder$beginStructure$1":I
    new-instance v12, Lkotlinx/serialization/json/internal/JsonTreeMapDecoder;

    invoke-virtual/range {p0 .. p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v8

    move-object/from16 v11, p0

    .local v11, "this_$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    const/4 v13, 0x0

    .line 373
    .local v13, "$i$f$cast":I
    invoke-interface/range {p1 .. p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getSerialName()Ljava/lang/String;

    move-result-object v14

    .local v14, "serialName$iv$iv":Ljava/lang/String;
    const/4 v15, 0x0

    .line 374
    .restart local v15    # "$i$f$cast":I
    move/from16 v16, v0

    .end local v0    # "$i$a$-selectMapMode-AbstractJsonTreeDecoder$beginStructure$1":I
    .local v16, "$i$a$-selectMapMode-AbstractJsonTreeDecoder$beginStructure$1":I
    instance-of v0, v1, Lkotlinx/serialization/json/JsonObject;

    if-eqz v0, :cond_5

    .line 381
    nop

    .line 373
    .end local v14    # "serialName$iv$iv":Ljava/lang/String;
    .end local v15    # "$i$f$cast":I
    nop

    .end local v11    # "this_$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    .end local v13    # "$i$f$cast":I
    move-object v0, v1

    check-cast v0, Lkotlinx/serialization/json/JsonObject;

    .line 67
    invoke-direct {v12, v8, v0}, Lkotlinx/serialization/json/internal/JsonTreeMapDecoder;-><init>(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/JsonObject;)V

    .line 372
    .end local v16    # "$i$a$-selectMapMode-AbstractJsonTreeDecoder$beginStructure$1":I
    nop

    .line 371
    :goto_1
    nop

    .end local v2    # "$this$selectMapMode$iv":Lkotlinx/serialization/json/Json;
    .end local v3    # "$i$f$selectMapMode":I
    .end local v9    # "keyDescriptor$iv":Lkotlinx/serialization/descriptors/SerialDescriptor;
    .end local v10    # "keyKind$iv":Lkotlinx/serialization/descriptors/SerialKind;
    check-cast v12, Lkotlinx/serialization/encoding/CompositeDecoder;

    move-object/from16 v9, p0

    goto/16 :goto_3

    .line 375
    .restart local v2    # "$this$selectMapMode$iv":Lkotlinx/serialization/json/Json;
    .restart local v3    # "$i$f$selectMapMode":I
    .restart local v9    # "keyDescriptor$iv":Lkotlinx/serialization/descriptors/SerialDescriptor;
    .restart local v10    # "keyKind$iv":Lkotlinx/serialization/descriptors/SerialKind;
    .restart local v11    # "this_$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    .restart local v13    # "$i$f$cast":I
    .restart local v14    # "serialName$iv$iv":Ljava/lang/String;
    .restart local v15    # "$i$f$cast":I
    .restart local v16    # "$i$a$-selectMapMode-AbstractJsonTreeDecoder$beginStructure$1":I
    :cond_5
    nop

    .line 376
    nop

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v7, Lkotlinx/serialization/json/JsonObject;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    invoke-interface {v7}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    invoke-interface {v6}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v4, 0x0

    .line 373
    .restart local v4    # "$i$a$-cast-AbstractJsonTreeDecoder$cast$1$iv":I
    invoke-static {v11}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->access$renderTagStack(Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;)Ljava/lang/String;

    move-result-object v4

    .line 377
    .end local v4    # "$i$a$-cast-AbstractJsonTreeDecoder$cast$1$iv":I
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 378
    invoke-virtual {v1}, Lkotlinx/serialization/json/JsonElement;->toString()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    .line 375
    const/4 v5, -0x1

    invoke-static {v5, v0, v4}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->JsonDecodingException(ILjava/lang/String;Ljava/lang/CharSequence;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object v0

    throw v0

    .line 70
    .end local v2    # "$this$selectMapMode$iv":Lkotlinx/serialization/json/Json;
    .end local v3    # "$i$f$selectMapMode":I
    .end local v9    # "keyDescriptor$iv":Lkotlinx/serialization/descriptors/SerialDescriptor;
    .end local v10    # "keyKind$iv":Lkotlinx/serialization/descriptors/SerialKind;
    .end local v11    # "this_$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    .end local v13    # "$i$f$cast":I
    .end local v14    # "serialName$iv$iv":Ljava/lang/String;
    .end local v15    # "$i$f$cast":I
    .end local v16    # "$i$a$-selectMapMode-AbstractJsonTreeDecoder$beginStructure$1":I
    :cond_6
    new-instance v17, Lkotlinx/serialization/json/internal/JsonTreeDecoder;

    invoke-virtual/range {p0 .. p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v18

    move-object/from16 v0, p0

    .local v0, "this_$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    const/4 v2, 0x0

    .line 394
    .local v2, "$i$f$cast":I
    invoke-interface/range {p1 .. p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getSerialName()Ljava/lang/String;

    move-result-object v3

    .local v3, "serialName$iv$iv":Ljava/lang/String;
    const/4 v8, 0x0

    .line 395
    .local v8, "$i$f$cast":I
    instance-of v9, v1, Lkotlinx/serialization/json/JsonObject;

    if-eqz v9, :cond_7

    .line 402
    nop

    .line 394
    .end local v3    # "serialName$iv$iv":Ljava/lang/String;
    .end local v8    # "$i$f$cast":I
    nop

    .end local v0    # "this_$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    .end local v2    # "$i$f$cast":I
    move-object/from16 v19, v1

    check-cast v19, Lkotlinx/serialization/json/JsonObject;

    .line 70
    move-object/from16 v9, p0

    iget-object v0, v9, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->polymorphicDiscriminator:Ljava/lang/String;

    const/16 v22, 0x8

    const/16 v23, 0x0

    const/16 v21, 0x0

    move-object/from16 v20, v0

    invoke-direct/range {v17 .. v23}, Lkotlinx/serialization/json/internal/JsonTreeDecoder;-><init>(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/JsonObject;Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v12, v17

    check-cast v12, Lkotlinx/serialization/encoding/CompositeDecoder;

    goto :goto_3

    .line 396
    .restart local v0    # "this_$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    .restart local v2    # "$i$f$cast":I
    .restart local v3    # "serialName$iv$iv":Ljava/lang/String;
    .restart local v8    # "$i$f$cast":I
    :cond_7
    move-object/from16 v9, p0

    .line 397
    nop

    .line 398
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-class v10, Lkotlinx/serialization/json/JsonObject;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-interface {v10}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    invoke-interface {v7}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    .line 394
    .local v5, "$i$a$-cast-AbstractJsonTreeDecoder$cast$1$iv":I
    invoke-static {v0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->access$renderTagStack(Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;)Ljava/lang/String;

    move-result-object v5

    .line 398
    .end local v5    # "$i$a$-cast-AbstractJsonTreeDecoder$cast$1$iv":I
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 399
    invoke-virtual {v1}, Lkotlinx/serialization/json/JsonElement;->toString()Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    .line 396
    const/4 v6, -0x1

    invoke-static {v6, v4, v5}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->JsonDecodingException(ILjava/lang/String;Ljava/lang/CharSequence;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object v4

    throw v4

    .line 64
    .end local v0    # "this_$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    .end local v2    # "$i$f$cast":I
    .end local v3    # "serialName$iv$iv":Ljava/lang/String;
    .end local v8    # "$i$f$cast":I
    :cond_8
    move-object/from16 v9, p0

    :goto_2
    new-instance v0, Lkotlinx/serialization/json/internal/JsonTreeListDecoder;

    invoke-virtual {v9}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v2

    move-object/from16 v3, p0

    .local v3, "this_$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    const/4 v8, 0x0

    .line 359
    .restart local v8    # "$i$f$cast":I
    invoke-interface/range {p1 .. p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getSerialName()Ljava/lang/String;

    move-result-object v10

    .local v10, "serialName$iv$iv":Ljava/lang/String;
    const/4 v11, 0x0

    .line 360
    .local v11, "$i$f$cast":I
    instance-of v12, v1, Lkotlinx/serialization/json/JsonArray;

    if-eqz v12, :cond_9

    .line 367
    nop

    .line 359
    .end local v10    # "serialName$iv$iv":Ljava/lang/String;
    .end local v11    # "$i$f$cast":I
    nop

    .end local v3    # "this_$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    .end local v8    # "$i$f$cast":I
    move-object v3, v1

    check-cast v3, Lkotlinx/serialization/json/JsonArray;

    .line 64
    invoke-direct {v0, v2, v3}, Lkotlinx/serialization/json/internal/JsonTreeListDecoder;-><init>(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/JsonArray;)V

    move-object v12, v0

    check-cast v12, Lkotlinx/serialization/encoding/CompositeDecoder;

    .line 63
    :goto_3
    return-object v12

    .line 361
    .restart local v3    # "this_$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    .restart local v8    # "$i$f$cast":I
    .restart local v10    # "serialName$iv$iv":Ljava/lang/String;
    .restart local v11    # "$i$f$cast":I
    :cond_9
    nop

    .line 362
    nop

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v2, Lkotlinx/serialization/json/JsonArray;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x0

    .line 359
    .local v2, "$i$a$-cast-AbstractJsonTreeDecoder$cast$1$iv":I
    invoke-static {v3}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->access$renderTagStack(Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;)Ljava/lang/String;

    move-result-object v2

    .line 363
    .end local v2    # "$i$a$-cast-AbstractJsonTreeDecoder$cast$1$iv":I
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 364
    invoke-virtual {v1}, Lkotlinx/serialization/json/JsonElement;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 361
    const/4 v5, -0x1

    invoke-static {v5, v0, v2}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->JsonDecodingException(ILjava/lang/String;Ljava/lang/CharSequence;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object v0

    throw v0
.end method

.method public final synthetic cast(Lkotlinx/serialization/json/JsonElement;Ljava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;
    .locals 5
    .param p1, "value"    # Lkotlinx/serialization/json/JsonElement;
    .param p2, "serialName"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lkotlinx/serialization/json/JsonElement;",
            ">(",
            "Lkotlinx/serialization/json/JsonElement;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tag"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 75
    .local v0, "$i$f$cast":I
    const/4 v1, 0x0

    .line 411
    .local v1, "$i$f$cast":I
    const/4 v2, 0x3

    const-string v3, "T"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    instance-of v2, p1, Lkotlinx/serialization/json/JsonElement;

    if-eqz v2, :cond_0

    .line 418
    nop

    .line 75
    .end local v1    # "$i$f$cast":I
    return-object p1

    .line 412
    .restart local v1    # "$i$f$cast":I
    :cond_0
    nop

    .line 413
    nop

    .line 414
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v3, Lkotlinx/serialization/json/JsonElement;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-interface {v3}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", but had "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-interface {v3}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " as the serialized body of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at element: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    .line 75
    .local v3, "$i$a$-cast-AbstractJsonTreeDecoder$cast$2":I
    invoke-virtual {p0, p3}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->renderTagStack(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 414
    .end local v3    # "$i$a$-cast-AbstractJsonTreeDecoder$cast$2":I
    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 415
    invoke-virtual {p1}, Lkotlinx/serialization/json/JsonElement;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 412
    const/4 v4, -0x1

    invoke-static {v4, v2, v3}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->JsonDecodingException(ILjava/lang/String;Ljava/lang/CharSequence;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object v2

    throw v2
.end method

.method public final synthetic cast(Lkotlinx/serialization/json/JsonElement;Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/json/JsonElement;
    .locals 6
    .param p1, "value"    # Lkotlinx/serialization/json/JsonElement;
    .param p2, "descriptor"    # Lkotlinx/serialization/descriptors/SerialDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lkotlinx/serialization/json/JsonElement;",
            ">(",
            "Lkotlinx/serialization/json/JsonElement;",
            "Lkotlinx/serialization/descriptors/SerialDescriptor;",
            ")TT;"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "descriptor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 74
    .local v0, "$i$f$cast":I
    invoke-interface {p2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getSerialName()Ljava/lang/String;

    move-result-object v1

    .local v1, "serialName$iv":Ljava/lang/String;
    const/4 v2, 0x0

    .line 403
    .local v2, "$i$f$cast":I
    const/4 v3, 0x3

    const-string v4, "T"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    instance-of v3, p1, Lkotlinx/serialization/json/JsonElement;

    if-eqz v3, :cond_0

    .line 410
    nop

    .line 74
    .end local v1    # "serialName$iv":Ljava/lang/String;
    .end local v2    # "$i$f$cast":I
    return-object p1

    .line 404
    .restart local v1    # "serialName$iv":Ljava/lang/String;
    .restart local v2    # "$i$f$cast":I
    :cond_0
    nop

    .line 405
    nop

    .line 406
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x4

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v4, Lkotlinx/serialization/json/JsonElement;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-interface {v4}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", but had "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-interface {v4}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " as the serialized body of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at element: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    .line 74
    .local v4, "$i$a$-cast-AbstractJsonTreeDecoder$cast$1":I
    invoke-static {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->access$renderTagStack(Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;)Ljava/lang/String;

    move-result-object v4

    .line 406
    .end local v4    # "$i$a$-cast-AbstractJsonTreeDecoder$cast$1":I
    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 407
    invoke-virtual {p1}, Lkotlinx/serialization/json/JsonElement;->toString()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    .line 404
    const/4 v5, -0x1

    invoke-static {v5, v3, v4}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->JsonDecodingException(ILjava/lang/String;Ljava/lang/CharSequence;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object v3

    throw v3
.end method

.method protected composeName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "parentName"    # Ljava/lang/String;
    .param p2, "childName"    # Ljava/lang/String;

    const-string v0, "parentName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "childName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    return-object p2
.end method

.method protected abstract currentElement(Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;
.end method

.method protected final currentObject()Lkotlinx/serialization/json/JsonElement;
    .locals 2

    .line 49
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->getCurrentTagOrNull()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 335
    .local v0, "it":Ljava/lang/String;
    const/4 v1, 0x0

    .line 49
    .local v1, "$i$a$-let-AbstractJsonTreeDecoder$currentObject$1":I
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->currentElement(Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;

    move-result-object v0

    .end local v0    # "it":Ljava/lang/String;
    .end local v1    # "$i$a$-let-AbstractJsonTreeDecoder$currentObject$1":I
    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->getValue()Lkotlinx/serialization/json/JsonElement;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public decodeInline(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/Decoder;
    .locals 4
    .param p1, "descriptor"    # Lkotlinx/serialization/descriptors/SerialDescriptor;

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->getCurrentTagOrNull()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lkotlinx/serialization/internal/NamedValueDecoder;->decodeInline(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/Decoder;

    move-result-object v0

    goto :goto_0

    .line 166
    :cond_0
    new-instance v0, Lkotlinx/serialization/json/internal/JsonPrimitiveDecoder;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v1

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->getValue()Lkotlinx/serialization/json/JsonElement;

    move-result-object v2

    iget-object v3, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->polymorphicDiscriminator:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lkotlinx/serialization/json/internal/JsonPrimitiveDecoder;-><init>(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/JsonElement;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lkotlinx/serialization/json/internal/JsonPrimitiveDecoder;->decodeInline(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/Decoder;

    move-result-object v0

    .line 165
    :goto_0
    return-object v0
.end method

.method public decodeJsonElement()Lkotlinx/serialization/json/JsonElement;
    .locals 1

    .line 53
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->currentObject()Lkotlinx/serialization/json/JsonElement;

    move-result-object v0

    return-object v0
.end method

.method public decodeNotNullMark()Z
    .locals 1

    .line 81
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->currentObject()Lkotlinx/serialization/json/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lkotlinx/serialization/json/JsonNull;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public decodeSerializableValue(Lkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;
    .locals 10
    .param p1, "deserializer"    # Lkotlinx/serialization/DeserializationStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/DeserializationStrategy<",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "deserializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    move-object v0, p0

    check-cast v0, Lkotlinx/serialization/json/JsonDecoder;

    .local v0, "$this$decodeSerializableValuePolymorphic$iv":Lkotlinx/serialization/json/JsonDecoder;
    const/4 v1, 0x0

    .line 336
    .local v1, "$i$f$decodeSerializableValuePolymorphic":I
    instance-of v2, p1, Lkotlinx/serialization/internal/AbstractPolymorphicSerializer;

    if-eqz v2, :cond_3

    invoke-interface {v0}, Lkotlinx/serialization/json/JsonDecoder;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v2

    invoke-virtual {v2}, Lkotlinx/serialization/json/Json;->getConfiguration()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lkotlinx/serialization/json/JsonConfiguration;->getUseArrayPolymorphism()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_1

    .line 339
    :cond_0
    move-object v2, p1

    check-cast v2, Lkotlinx/serialization/internal/AbstractPolymorphicSerializer;

    invoke-virtual {v2}, Lkotlinx/serialization/internal/AbstractPolymorphicSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v2

    invoke-interface {v0}, Lkotlinx/serialization/json/JsonDecoder;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlinx/serialization/json/internal/PolymorphicKt;->classDiscriminator(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json;)Ljava/lang/String;

    move-result-object v2

    .line 341
    .local v2, "discriminator$iv":Ljava/lang/String;
    invoke-interface {v0}, Lkotlinx/serialization/json/JsonDecoder;->decodeJsonElement()Lkotlinx/serialization/json/JsonElement;

    move-result-object v3

    .local v3, "value$iv$iv":Lkotlinx/serialization/json/JsonElement;
    move-object v4, p1

    check-cast v4, Lkotlinx/serialization/internal/AbstractPolymorphicSerializer;

    invoke-virtual {v4}, Lkotlinx/serialization/internal/AbstractPolymorphicSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v4

    invoke-interface {v4}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getSerialName()Ljava/lang/String;

    move-result-object v4

    .local v4, "serialName$iv$iv":Ljava/lang/String;
    const/4 v5, 0x0

    .line 342
    .local v5, "$i$f$cast":I
    instance-of v6, v3, Lkotlinx/serialization/json/JsonObject;

    const/4 v7, -0x1

    if-eqz v6, :cond_2

    .line 349
    nop

    .line 341
    .end local v3    # "value$iv$iv":Lkotlinx/serialization/json/JsonElement;
    .end local v4    # "serialName$iv$iv":Ljava/lang/String;
    .end local v5    # "$i$f$cast":I
    check-cast v3, Lkotlinx/serialization/json/JsonObject;

    .line 350
    .local v3, "jsonTree$iv":Lkotlinx/serialization/json/JsonObject;
    invoke-virtual {v3, v2}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlinx/serialization/json/JsonElement;

    if-eqz v4, :cond_1

    invoke-static {v4}, Lkotlinx/serialization/json/JsonElementKt;->getJsonPrimitive(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-static {v4}, Lkotlinx/serialization/json/JsonElementKt;->getContentOrNull(Lkotlinx/serialization/json/JsonPrimitive;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 353
    .local v4, "type$iv":Ljava/lang/String;
    :goto_0
    nop

    .line 354
    :try_start_0
    move-object v5, p1

    check-cast v5, Lkotlinx/serialization/internal/AbstractPolymorphicSerializer;

    move-object v6, v0

    check-cast v6, Lkotlinx/serialization/encoding/CompositeDecoder;

    invoke-static {v5, v6, v4}, Lkotlinx/serialization/PolymorphicSerializerKt;->findPolymorphicSerializer(Lkotlinx/serialization/internal/AbstractPolymorphicSerializer;Lkotlinx/serialization/encoding/CompositeDecoder;Ljava/lang/String;)Lkotlinx/serialization/DeserializationStrategy;

    move-result-object v5
    :try_end_0
    .catch Lkotlinx/serialization/SerializationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    nop

    .line 354
    const-string v6, "null cannot be cast to non-null type kotlinx.serialization.DeserializationStrategy<T of kotlinx.serialization.json.internal.PolymorphicKt.decodeSerializableValuePolymorphic>"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 351
    nop

    .line 358
    .local v5, "actualSerializer$iv":Lkotlinx/serialization/DeserializationStrategy;
    invoke-interface {v0}, Lkotlinx/serialization/json/JsonDecoder;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v6

    invoke-static {v6, v2, v3, v5}, Lkotlinx/serialization/json/internal/TreeJsonDecoderKt;->readPolymorphicJson(Lkotlinx/serialization/json/Json;Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;Lkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_2

    .line 355
    .end local v5    # "actualSerializer$iv":Lkotlinx/serialization/DeserializationStrategy;
    :catch_0
    move-exception v5

    .line 356
    .local v5, "it$iv":Lkotlinx/serialization/SerializationException;
    invoke-virtual {v5}, Lkotlinx/serialization/SerializationException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lkotlinx/serialization/json/JsonObject;->toString()Ljava/lang/String;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v7, v6, v8}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->JsonDecodingException(ILjava/lang/String;Ljava/lang/CharSequence;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object v6

    throw v6

    .line 343
    .local v3, "value$iv$iv":Lkotlinx/serialization/json/JsonElement;
    .local v4, "serialName$iv$iv":Ljava/lang/String;
    .local v5, "$i$f$cast":I
    :cond_2
    nop

    .line 344
    nop

    .line 345
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Expected "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-class v8, Lkotlinx/serialization/json/JsonObject;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-interface {v8}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", but had "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-interface {v8}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " as the serialized body of "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " at element: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v8, 0x0

    .local v8, "$i$f$decodeSerializableValue$stub_for_inlining":I
    const/4 v9, 0x0

    .line 56
    .local v9, "$i$a$-decodeSerializableValuePolymorphic-AbstractJsonTreeDecoder$decodeSerializableValue$1":I
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->renderTagStack()Ljava/lang/String;

    move-result-object v8

    .line 345
    .end local v8    # "$i$f$decodeSerializableValue$stub_for_inlining":I
    .end local v9    # "$i$a$-decodeSerializableValuePolymorphic-AbstractJsonTreeDecoder$decodeSerializableValue$1":I
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 346
    invoke-virtual {v3}, Lkotlinx/serialization/json/JsonElement;->toString()Ljava/lang/String;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    .line 343
    invoke-static {v7, v6, v8}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->JsonDecodingException(ILjava/lang/String;Ljava/lang/CharSequence;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object v6

    throw v6

    .line 337
    .end local v2    # "discriminator$iv":Ljava/lang/String;
    .end local v3    # "value$iv$iv":Lkotlinx/serialization/json/JsonElement;
    .end local v4    # "serialName$iv$iv":Ljava/lang/String;
    .end local v5    # "$i$f$cast":I
    :cond_3
    :goto_1
    move-object v2, v0

    check-cast v2, Lkotlinx/serialization/encoding/Decoder;

    invoke-interface {p1, v2}, Lkotlinx/serialization/DeserializationStrategy;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;

    move-result-object v6

    .line 56
    .end local v0    # "$this$decodeSerializableValuePolymorphic$iv":Lkotlinx/serialization/json/JsonDecoder;
    .end local v1    # "$i$f$decodeSerializableValuePolymorphic":I
    :goto_2
    return-object v6
.end method

.method public bridge synthetic decodeTaggedBoolean(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "tag"    # Ljava/lang/Object;

    .line 37
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->decodeTaggedBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected decodeTaggedBoolean(Ljava/lang/String;)Z
    .locals 10
    .param p1, "tag"    # Ljava/lang/String;

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    const-string v0, "boolean"

    .local v0, "primitiveName$iv":Ljava/lang/String;
    move-object v1, p0

    .local v1, "this_$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    const/4 v2, 0x0

    .line 447
    .local v2, "$i$f$getPrimitiveValue":I
    invoke-virtual {v1, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->currentElement(Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;

    move-result-object v3

    .local v3, "value$iv$iv":Lkotlinx/serialization/json/JsonElement;
    move-object v4, v1

    .local v4, "this_$iv$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    const/4 v5, 0x0

    .line 448
    .local v5, "$i$f$cast":I
    const/4 v6, 0x0

    .line 449
    .local v6, "$i$f$cast":I
    instance-of v7, v3, Lkotlinx/serialization/json/JsonPrimitive;

    if-eqz v7, :cond_1

    .line 456
    nop

    .line 448
    .end local v6    # "$i$f$cast":I
    nop

    .line 447
    .end local v3    # "value$iv$iv":Lkotlinx/serialization/json/JsonElement;
    .end local v4    # "this_$iv$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    .end local v5    # "$i$f$cast":I
    check-cast v3, Lkotlinx/serialization/json/JsonPrimitive;

    .line 457
    .local v3, "literal$iv":Lkotlinx/serialization/json/JsonPrimitive;
    nop

    .line 458
    move-object v4, v3

    .local v4, "p0":Lkotlinx/serialization/json/JsonPrimitive;
    const/4 v5, 0x0

    .local v5, "$i$f$decodeTaggedBoolean$stub_for_inlining$5":I
    const/4 v6, 0x0

    .line 112
    .local v6, "$i$a$-getPrimitiveValue-AbstractJsonTreeDecoder$decodeTaggedBoolean$1":I
    :try_start_0
    invoke-static {v4}, Lkotlinx/serialization/json/JsonElementKt;->getBooleanOrNull(Lkotlinx/serialization/json/JsonPrimitive;)Ljava/lang/Boolean;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    .end local v4    # "p0":Lkotlinx/serialization/json/JsonPrimitive;
    .end local v5    # "$i$f$decodeTaggedBoolean$stub_for_inlining$5":I
    .end local v6    # "$i$a$-getPrimitiveValue-AbstractJsonTreeDecoder$decodeTaggedBoolean$1":I
    if-eqz v7, :cond_0

    .line 461
    .end local v0    # "primitiveName$iv":Ljava/lang/String;
    .end local v1    # "this_$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    .end local v2    # "$i$f$getPrimitiveValue":I
    .end local v3    # "literal$iv":Lkotlinx/serialization/json/JsonPrimitive;
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 112
    return v0

    .line 458
    .restart local v0    # "primitiveName$iv":Ljava/lang/String;
    .restart local v1    # "this_$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    .restart local v2    # "$i$f$getPrimitiveValue":I
    .restart local v3    # "literal$iv":Lkotlinx/serialization/json/JsonPrimitive;
    :cond_0
    :try_start_1
    invoke-direct {v1, v3, v0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->unparsedPrimitive(Lkotlinx/serialization/json/JsonPrimitive;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Void;

    new-instance v4, Lkotlin/KotlinNothingValueException;

    invoke-direct {v4}, Lkotlin/KotlinNothingValueException;-><init>()V

    .end local v0    # "primitiveName$iv":Ljava/lang/String;
    .end local v1    # "this_$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    .end local v2    # "$i$f$getPrimitiveValue":I
    .end local v3    # "literal$iv":Lkotlinx/serialization/json/JsonPrimitive;
    .end local p1    # "tag":Ljava/lang/String;
    throw v4
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 459
    .restart local v0    # "primitiveName$iv":Ljava/lang/String;
    .restart local v1    # "this_$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    .restart local v2    # "$i$f$getPrimitiveValue":I
    .restart local v3    # "literal$iv":Lkotlinx/serialization/json/JsonPrimitive;
    .restart local p1    # "tag":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 461
    .local v4, "e$iv":Ljava/lang/IllegalArgumentException;
    invoke-direct {v1, v3, v0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->unparsedPrimitive(Lkotlinx/serialization/json/JsonPrimitive;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Void;

    new-instance v5, Lkotlin/KotlinNothingValueException;

    invoke-direct {v5}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v5

    .line 450
    .local v3, "value$iv$iv":Lkotlinx/serialization/json/JsonElement;
    .local v4, "this_$iv$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    .local v5, "$i$f$cast":I
    .local v6, "$i$f$cast":I
    :cond_1
    nop

    .line 451
    nop

    .line 452
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Expected "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-class v8, Lkotlinx/serialization/json/JsonPrimitive;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-interface {v8}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", but had "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-interface {v8}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " as the serialized body of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " at element: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    .line 448
    .local v8, "$i$a$-cast-AbstractJsonTreeDecoder$cast$2$iv$iv":I
    invoke-virtual {v4, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->renderTagStack(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 452
    .end local v8    # "$i$a$-cast-AbstractJsonTreeDecoder$cast$2$iv$iv":I
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 453
    invoke-virtual {v3}, Lkotlinx/serialization/json/JsonElement;->toString()Ljava/lang/String;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    .line 450
    const/4 v9, -0x1

    invoke-static {v9, v7, v8}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->JsonDecodingException(ILjava/lang/String;Ljava/lang/CharSequence;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object v7

    throw v7
.end method

.method public bridge synthetic decodeTaggedByte(Ljava/lang/Object;)B
    .locals 1
    .param p1, "tag"    # Ljava/lang/Object;

    .line 37
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->decodeTaggedByte(Ljava/lang/String;)B

    move-result v0

    return v0
.end method

.method protected decodeTaggedByte(Ljava/lang/String;)B
    .locals 10
    .param p1, "tag"    # Ljava/lang/String;

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    const-string v0, "byte"

    .local v0, "primitiveName$iv":Ljava/lang/String;
    move-object v1, p0

    .local v1, "this_$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    const/4 v2, 0x0

    .line 462
    .local v2, "$i$f$getPrimitiveValue":I
    invoke-virtual {v1, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->currentElement(Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;

    move-result-object v3

    .local v3, "value$iv$iv":Lkotlinx/serialization/json/JsonElement;
    move-object v4, v1

    .local v4, "this_$iv$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    const/4 v5, 0x0

    .line 463
    .local v5, "$i$f$cast":I
    const/4 v6, 0x0

    .line 464
    .local v6, "$i$f$cast":I
    instance-of v7, v3, Lkotlinx/serialization/json/JsonPrimitive;

    if-eqz v7, :cond_3

    .line 471
    nop

    .line 463
    .end local v6    # "$i$f$cast":I
    nop

    .line 462
    .end local v3    # "value$iv$iv":Lkotlinx/serialization/json/JsonElement;
    .end local v4    # "this_$iv$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    .end local v5    # "$i$f$cast":I
    check-cast v3, Lkotlinx/serialization/json/JsonPrimitive;

    .line 472
    .local v3, "literal$iv":Lkotlinx/serialization/json/JsonPrimitive;
    nop

    .line 473
    move-object v4, v3

    .local v4, "$this$decodeTaggedByte_u24lambda_u246":Lkotlinx/serialization/json/JsonPrimitive;
    const/4 v5, 0x0

    .line 115
    .local v5, "$i$a$-getPrimitiveValue-AbstractJsonTreeDecoder$decodeTaggedByte$1":I
    :try_start_0
    invoke-static {v4}, Lkotlinx/serialization/json/JsonElementKt;->getInt(Lkotlinx/serialization/json/JsonPrimitive;)I

    move-result v6

    .line 116
    .local v6, "result":I
    const/16 v7, -0x80

    const/4 v8, 0x0

    if-gt v7, v6, :cond_0

    const/16 v7, 0x7f

    if-gt v6, v7, :cond_0

    const/4 v8, 0x1

    :cond_0
    if-eqz v8, :cond_1

    int-to-byte v7, v6

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 117
    :cond_1
    const/4 v7, 0x0

    .line 473
    .end local v4    # "$this$decodeTaggedByte_u24lambda_u246":Lkotlinx/serialization/json/JsonPrimitive;
    .end local v5    # "$i$a$-getPrimitiveValue-AbstractJsonTreeDecoder$decodeTaggedByte$1":I
    .end local v6    # "result":I
    :goto_0
    if-eqz v7, :cond_2

    .line 476
    .end local v0    # "primitiveName$iv":Ljava/lang/String;
    .end local v1    # "this_$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    .end local v2    # "$i$f$getPrimitiveValue":I
    .end local v3    # "literal$iv":Lkotlinx/serialization/json/JsonPrimitive;
    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->byteValue()B

    move-result v0

    .line 118
    return v0

    .line 473
    .restart local v0    # "primitiveName$iv":Ljava/lang/String;
    .restart local v1    # "this_$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    .restart local v2    # "$i$f$getPrimitiveValue":I
    .restart local v3    # "literal$iv":Lkotlinx/serialization/json/JsonPrimitive;
    :cond_2
    :try_start_1
    invoke-direct {v1, v3, v0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->unparsedPrimitive(Lkotlinx/serialization/json/JsonPrimitive;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Void;

    new-instance v4, Lkotlin/KotlinNothingValueException;

    invoke-direct {v4}, Lkotlin/KotlinNothingValueException;-><init>()V

    .end local v0    # "primitiveName$iv":Ljava/lang/String;
    .end local v1    # "this_$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    .end local v2    # "$i$f$getPrimitiveValue":I
    .end local v3    # "literal$iv":Lkotlinx/serialization/json/JsonPrimitive;
    .end local p1    # "tag":Ljava/lang/String;
    throw v4
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 474
    .restart local v0    # "primitiveName$iv":Ljava/lang/String;
    .restart local v1    # "this_$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    .restart local v2    # "$i$f$getPrimitiveValue":I
    .restart local v3    # "literal$iv":Lkotlinx/serialization/json/JsonPrimitive;
    .restart local p1    # "tag":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 476
    .local v4, "e$iv":Ljava/lang/IllegalArgumentException;
    invoke-direct {v1, v3, v0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->unparsedPrimitive(Lkotlinx/serialization/json/JsonPrimitive;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Void;

    new-instance v5, Lkotlin/KotlinNothingValueException;

    invoke-direct {v5}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v5

    .line 465
    .local v3, "value$iv$iv":Lkotlinx/serialization/json/JsonElement;
    .local v4, "this_$iv$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    .local v5, "$i$f$cast":I
    .local v6, "$i$f$cast":I
    :cond_3
    nop

    .line 466
    nop

    .line 467
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Expected "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-class v8, Lkotlinx/serialization/json/JsonPrimitive;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-interface {v8}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", but had "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-interface {v8}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " as the serialized body of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " at element: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    .line 463
    .local v8, "$i$a$-cast-AbstractJsonTreeDecoder$cast$2$iv$iv":I
    invoke-virtual {v4, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->renderTagStack(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 467
    .end local v8    # "$i$a$-cast-AbstractJsonTreeDecoder$cast$2$iv$iv":I
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 468
    invoke-virtual {v3}, Lkotlinx/serialization/json/JsonElement;->toString()Ljava/lang/String;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    .line 465
    const/4 v9, -0x1

    invoke-static {v9, v7, v8}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->JsonDecodingException(ILjava/lang/String;Ljava/lang/CharSequence;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object v7

    throw v7
.end method

.method public bridge synthetic decodeTaggedChar(Ljava/lang/Object;)C
    .locals 1
    .param p1, "tag"    # Ljava/lang/Object;

    .line 37
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->decodeTaggedChar(Ljava/lang/String;)C

    move-result v0

    return v0
.end method

.method protected decodeTaggedChar(Ljava/lang/String;)C
    .locals 10
    .param p1, "tag"    # Ljava/lang/String;

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    const-string v0, "char"

    .local v0, "primitiveName$iv":Ljava/lang/String;
    move-object v1, p0

    .local v1, "this_$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    const/4 v2, 0x0

    .line 552
    .local v2, "$i$f$getPrimitiveValue":I
    invoke-virtual {v1, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->currentElement(Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;

    move-result-object v3

    .local v3, "value$iv$iv":Lkotlinx/serialization/json/JsonElement;
    move-object v4, v1

    .local v4, "this_$iv$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    const/4 v5, 0x0

    .line 553
    .local v5, "$i$f$cast":I
    const/4 v6, 0x0

    .line 554
    .local v6, "$i$f$cast":I
    instance-of v7, v3, Lkotlinx/serialization/json/JsonPrimitive;

    if-eqz v7, :cond_0

    .line 561
    nop

    .line 553
    .end local v6    # "$i$f$cast":I
    nop

    .line 552
    .end local v3    # "value$iv$iv":Lkotlinx/serialization/json/JsonElement;
    .end local v4    # "this_$iv$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    .end local v5    # "$i$f$cast":I
    check-cast v3, Lkotlinx/serialization/json/JsonPrimitive;

    .line 562
    .local v3, "literal$iv":Lkotlinx/serialization/json/JsonPrimitive;
    nop

    .line 563
    move-object v4, v3

    .local v4, "$this$decodeTaggedChar_u24lambda_u2412":Lkotlinx/serialization/json/JsonPrimitive;
    const/4 v5, 0x0

    .line 143
    .local v5, "$i$a$-getPrimitiveValue-AbstractJsonTreeDecoder$decodeTaggedChar$1":I
    :try_start_0
    invoke-virtual {v4}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Lkotlin/text/StringsKt;->single(Ljava/lang/CharSequence;)C

    move-result v6
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 563
    .end local v4    # "$this$decodeTaggedChar_u24lambda_u2412":Lkotlinx/serialization/json/JsonPrimitive;
    .end local v5    # "$i$a$-getPrimitiveValue-AbstractJsonTreeDecoder$decodeTaggedChar$1":I
    nop

    .line 143
    .end local v0    # "primitiveName$iv":Ljava/lang/String;
    .end local v1    # "this_$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    .end local v2    # "$i$f$getPrimitiveValue":I
    .end local v3    # "literal$iv":Lkotlinx/serialization/json/JsonPrimitive;
    return v6

    .line 564
    .restart local v0    # "primitiveName$iv":Ljava/lang/String;
    .restart local v1    # "this_$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    .restart local v2    # "$i$f$getPrimitiveValue":I
    .restart local v3    # "literal$iv":Lkotlinx/serialization/json/JsonPrimitive;
    :catch_0
    move-exception v4

    .line 566
    .local v4, "e$iv":Ljava/lang/IllegalArgumentException;
    invoke-direct {v1, v3, v0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->unparsedPrimitive(Lkotlinx/serialization/json/JsonPrimitive;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Void;

    new-instance v5, Lkotlin/KotlinNothingValueException;

    invoke-direct {v5}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v5

    .line 555
    .local v3, "value$iv$iv":Lkotlinx/serialization/json/JsonElement;
    .local v4, "this_$iv$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    .local v5, "$i$f$cast":I
    .restart local v6    # "$i$f$cast":I
    :cond_0
    nop

    .line 556
    nop

    .line 557
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Expected "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-class v8, Lkotlinx/serialization/json/JsonPrimitive;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-interface {v8}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", but had "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-interface {v8}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " as the serialized body of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " at element: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    .line 553
    .local v8, "$i$a$-cast-AbstractJsonTreeDecoder$cast$2$iv$iv":I
    invoke-virtual {v4, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->renderTagStack(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 557
    .end local v8    # "$i$a$-cast-AbstractJsonTreeDecoder$cast$2$iv$iv":I
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 558
    invoke-virtual {v3}, Lkotlinx/serialization/json/JsonElement;->toString()Ljava/lang/String;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    .line 555
    const/4 v9, -0x1

    invoke-static {v9, v7, v8}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->JsonDecodingException(ILjava/lang/String;Ljava/lang/CharSequence;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object v7

    throw v7
.end method

.method public bridge synthetic decodeTaggedDouble(Ljava/lang/Object;)D
    .locals 2
    .param p1, "tag"    # Ljava/lang/Object;

    .line 37
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->decodeTaggedDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method protected decodeTaggedDouble(Ljava/lang/String;)D
    .locals 10
    .param p1, "tag"    # Ljava/lang/String;

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    const-string v0, "double"

    .local v0, "primitiveName$iv":Ljava/lang/String;
    move-object v1, p0

    .local v1, "this_$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    const/4 v2, 0x0

    .line 537
    .local v2, "$i$f$getPrimitiveValue":I
    invoke-virtual {v1, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->currentElement(Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;

    move-result-object v3

    .local v3, "value$iv$iv":Lkotlinx/serialization/json/JsonElement;
    move-object v4, v1

    .local v4, "this_$iv$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    const/4 v5, 0x0

    .line 538
    .local v5, "$i$f$cast":I
    const/4 v6, 0x0

    .line 539
    .local v6, "$i$f$cast":I
    instance-of v7, v3, Lkotlinx/serialization/json/JsonPrimitive;

    if-eqz v7, :cond_3

    .line 546
    nop

    .line 538
    .end local v6    # "$i$f$cast":I
    nop

    .line 537
    .end local v3    # "value$iv$iv":Lkotlinx/serialization/json/JsonElement;
    .end local v4    # "this_$iv$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    .end local v5    # "$i$f$cast":I
    check-cast v3, Lkotlinx/serialization/json/JsonPrimitive;

    .line 547
    .local v3, "literal$iv":Lkotlinx/serialization/json/JsonPrimitive;
    nop

    .line 548
    move-object v4, v3

    .local v4, "$this$decodeTaggedDouble_u24lambda_u2411":Lkotlinx/serialization/json/JsonPrimitive;
    const/4 v5, 0x0

    .line 137
    .local v5, "$i$a$-getPrimitiveValue-AbstractJsonTreeDecoder$decodeTaggedDouble$result$1":I
    :try_start_0
    invoke-static {v4}, Lkotlinx/serialization/json/JsonElementKt;->getDouble(Lkotlinx/serialization/json/JsonPrimitive;)D

    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 548
    .end local v4    # "$this$decodeTaggedDouble_u24lambda_u2411":Lkotlinx/serialization/json/JsonPrimitive;
    .end local v5    # "$i$a$-getPrimitiveValue-AbstractJsonTreeDecoder$decodeTaggedDouble$result$1":I
    nop

    .line 137
    .end local v0    # "primitiveName$iv":Ljava/lang/String;
    .end local v1    # "this_$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    .end local v2    # "$i$f$getPrimitiveValue":I
    .end local v3    # "literal$iv":Lkotlinx/serialization/json/JsonPrimitive;
    nop

    .line 138
    .local v6, "result":D
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/Json;->getConfiguration()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->getAllowSpecialFloatingPointValues()Z

    move-result v0

    .line 139
    .local v0, "specialFp":Z
    if-nez v0, :cond_2

    invoke-static {v6, v7}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    .line 140
    :cond_1
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->currentObject()Lkotlinx/serialization/json/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lkotlinx/serialization/json/JsonElement;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->InvalidFloatingPointDecoded(Ljava/lang/Number;Ljava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object v1

    throw v1

    .line 139
    :cond_2
    :goto_1
    return-wide v6

    .line 549
    .end local v6    # "result":D
    .local v0, "primitiveName$iv":Ljava/lang/String;
    .restart local v1    # "this_$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    .restart local v2    # "$i$f$getPrimitiveValue":I
    .restart local v3    # "literal$iv":Lkotlinx/serialization/json/JsonPrimitive;
    :catch_0
    move-exception v4

    .line 551
    .local v4, "e$iv":Ljava/lang/IllegalArgumentException;
    invoke-direct {v1, v3, v0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->unparsedPrimitive(Lkotlinx/serialization/json/JsonPrimitive;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Void;

    new-instance v5, Lkotlin/KotlinNothingValueException;

    invoke-direct {v5}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v5

    .line 540
    .local v3, "value$iv$iv":Lkotlinx/serialization/json/JsonElement;
    .local v4, "this_$iv$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    .local v5, "$i$f$cast":I
    .local v6, "$i$f$cast":I
    :cond_3
    nop

    .line 541
    nop

    .line 542
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Expected "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-class v8, Lkotlinx/serialization/json/JsonPrimitive;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-interface {v8}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", but had "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-interface {v8}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " as the serialized body of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " at element: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    .line 538
    .local v8, "$i$a$-cast-AbstractJsonTreeDecoder$cast$2$iv$iv":I
    invoke-virtual {v4, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->renderTagStack(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 542
    .end local v8    # "$i$a$-cast-AbstractJsonTreeDecoder$cast$2$iv$iv":I
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 543
    invoke-virtual {v3}, Lkotlinx/serialization/json/JsonElement;->toString()Ljava/lang/String;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    .line 540
    const/4 v9, -0x1

    invoke-static {v9, v7, v8}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->JsonDecodingException(ILjava/lang/String;Ljava/lang/CharSequence;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object v7

    throw v7
.end method

.method public bridge synthetic decodeTaggedEnum(Ljava/lang/Object;Lkotlinx/serialization/descriptors/SerialDescriptor;)I
    .locals 1
    .param p1, "tag"    # Ljava/lang/Object;
    .param p2, "enumDescriptor"    # Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 37
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->decodeTaggedEnum(Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v0

    return v0
.end method

.method protected decodeTaggedEnum(Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;)I
    .locals 10
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "enumDescriptor"    # Lkotlinx/serialization/descriptors/SerialDescriptor;

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "enumDescriptor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v2

    move-object v0, p0

    .local v0, "this_$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    const/4 v1, 0x0

    .line 437
    .local v1, "$i$f$getPrimitiveValue":I
    invoke-static {v0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->access$currentElement(Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;

    move-result-object v3

    .local v3, "value$iv$iv":Lkotlinx/serialization/json/JsonElement;
    invoke-interface {p2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getSerialName()Ljava/lang/String;

    move-result-object v4

    .local v4, "serialName$iv$iv":Ljava/lang/String;
    move-object v5, v0

    .local v5, "this_$iv$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    const/4 v6, 0x0

    .line 438
    .local v6, "$i$f$cast":I
    const/4 v7, 0x0

    .line 439
    .local v7, "$i$f$cast":I
    instance-of v8, v3, Lkotlinx/serialization/json/JsonPrimitive;

    if-eqz v8, :cond_0

    .line 446
    nop

    .line 438
    .end local v7    # "$i$f$cast":I
    nop

    .end local v3    # "value$iv$iv":Lkotlinx/serialization/json/JsonElement;
    .end local v4    # "serialName$iv$iv":Ljava/lang/String;
    .end local v5    # "this_$iv$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    .end local v6    # "$i$f$cast":I
    check-cast v3, Lkotlinx/serialization/json/JsonPrimitive;

    .line 437
    nop

    .line 105
    .end local v0    # "this_$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    .end local v1    # "$i$f$getPrimitiveValue":I
    invoke-virtual {v3}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p2

    .end local p2    # "enumDescriptor":Lkotlinx/serialization/descriptors/SerialDescriptor;
    .local v1, "enumDescriptor":Lkotlinx/serialization/descriptors/SerialDescriptor;
    invoke-static/range {v1 .. v6}, Lkotlinx/serialization/json/internal/JsonNamesMapKt;->getJsonNameIndexOrThrow$default(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)I

    move-result p2

    move-object v2, v1

    .end local v1    # "enumDescriptor":Lkotlinx/serialization/descriptors/SerialDescriptor;
    .local v2, "enumDescriptor":Lkotlinx/serialization/descriptors/SerialDescriptor;
    return p2

    .line 440
    .end local v2    # "enumDescriptor":Lkotlinx/serialization/descriptors/SerialDescriptor;
    .restart local v0    # "this_$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    .local v1, "$i$f$getPrimitiveValue":I
    .restart local v3    # "value$iv$iv":Lkotlinx/serialization/json/JsonElement;
    .restart local v4    # "serialName$iv$iv":Ljava/lang/String;
    .restart local v5    # "this_$iv$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    .restart local v6    # "$i$f$cast":I
    .restart local v7    # "$i$f$cast":I
    .restart local p2    # "enumDescriptor":Lkotlinx/serialization/descriptors/SerialDescriptor;
    :cond_0
    move-object v2, p2

    .line 441
    .end local p2    # "enumDescriptor":Lkotlinx/serialization/descriptors/SerialDescriptor;
    .restart local v2    # "enumDescriptor":Lkotlinx/serialization/descriptors/SerialDescriptor;
    nop

    .line 442
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Expected "

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-class v8, Lkotlinx/serialization/json/JsonPrimitive;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-interface {v8}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v8, ", but had "

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-interface {v8}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v8, " as the serialized body of "

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v8, " at element: "

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const/4 v8, 0x0

    .line 438
    .local v8, "$i$a$-cast-AbstractJsonTreeDecoder$cast$2$iv$iv":I
    invoke-virtual {v5, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->renderTagStack(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 442
    .end local v8    # "$i$a$-cast-AbstractJsonTreeDecoder$cast$2$iv$iv":I
    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 443
    invoke-virtual {v3}, Lkotlinx/serialization/json/JsonElement;->toString()Ljava/lang/String;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    .line 440
    const/4 v9, -0x1

    invoke-static {v9, p2, v8}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->JsonDecodingException(ILjava/lang/String;Ljava/lang/CharSequence;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p2

    throw p2
.end method

.method public bridge synthetic decodeTaggedFloat(Ljava/lang/Object;)F
    .locals 1
    .param p1, "tag"    # Ljava/lang/Object;

    .line 37
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->decodeTaggedFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method protected decodeTaggedFloat(Ljava/lang/String;)F
    .locals 10
    .param p1, "tag"    # Ljava/lang/String;

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    const-string v0, "float"

    .local v0, "primitiveName$iv":Ljava/lang/String;
    move-object v1, p0

    .local v1, "this_$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    const/4 v2, 0x0

    .line 522
    .local v2, "$i$f$getPrimitiveValue":I
    invoke-virtual {v1, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->currentElement(Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;

    move-result-object v3

    .local v3, "value$iv$iv":Lkotlinx/serialization/json/JsonElement;
    move-object v4, v1

    .local v4, "this_$iv$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    const/4 v5, 0x0

    .line 523
    .local v5, "$i$f$cast":I
    const/4 v6, 0x0

    .line 524
    .local v6, "$i$f$cast":I
    instance-of v7, v3, Lkotlinx/serialization/json/JsonPrimitive;

    if-eqz v7, :cond_3

    .line 531
    nop

    .line 523
    .end local v6    # "$i$f$cast":I
    nop

    .line 522
    .end local v3    # "value$iv$iv":Lkotlinx/serialization/json/JsonElement;
    .end local v4    # "this_$iv$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    .end local v5    # "$i$f$cast":I
    check-cast v3, Lkotlinx/serialization/json/JsonPrimitive;

    .line 532
    .local v3, "literal$iv":Lkotlinx/serialization/json/JsonPrimitive;
    nop

    .line 533
    move-object v4, v3

    .local v4, "$this$decodeTaggedFloat_u24lambda_u2410":Lkotlinx/serialization/json/JsonPrimitive;
    const/4 v5, 0x0

    .line 130
    .local v5, "$i$a$-getPrimitiveValue-AbstractJsonTreeDecoder$decodeTaggedFloat$result$1":I
    :try_start_0
    invoke-static {v4}, Lkotlinx/serialization/json/JsonElementKt;->getFloat(Lkotlinx/serialization/json/JsonPrimitive;)F

    move-result v6
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    .end local v4    # "$this$decodeTaggedFloat_u24lambda_u2410":Lkotlinx/serialization/json/JsonPrimitive;
    .end local v5    # "$i$a$-getPrimitiveValue-AbstractJsonTreeDecoder$decodeTaggedFloat$result$1":I
    nop

    .line 130
    .end local v0    # "primitiveName$iv":Ljava/lang/String;
    .end local v1    # "this_$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    .end local v2    # "$i$f$getPrimitiveValue":I
    .end local v3    # "literal$iv":Lkotlinx/serialization/json/JsonPrimitive;
    nop

    .line 131
    .local v6, "result":F
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/Json;->getConfiguration()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->getAllowSpecialFloatingPointValues()Z

    move-result v0

    .line 132
    .local v0, "specialFp":Z
    if-nez v0, :cond_2

    invoke-static {v6}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    .line 133
    :cond_1
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->currentObject()Lkotlinx/serialization/json/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lkotlinx/serialization/json/JsonElement;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->InvalidFloatingPointDecoded(Ljava/lang/Number;Ljava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object v1

    throw v1

    .line 132
    :cond_2
    :goto_1
    return v6

    .line 534
    .end local v6    # "result":F
    .local v0, "primitiveName$iv":Ljava/lang/String;
    .restart local v1    # "this_$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    .restart local v2    # "$i$f$getPrimitiveValue":I
    .restart local v3    # "literal$iv":Lkotlinx/serialization/json/JsonPrimitive;
    :catch_0
    move-exception v4

    .line 536
    .local v4, "e$iv":Ljava/lang/IllegalArgumentException;
    invoke-direct {v1, v3, v0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->unparsedPrimitive(Lkotlinx/serialization/json/JsonPrimitive;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Void;

    new-instance v5, Lkotlin/KotlinNothingValueException;

    invoke-direct {v5}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v5

    .line 525
    .local v3, "value$iv$iv":Lkotlinx/serialization/json/JsonElement;
    .local v4, "this_$iv$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    .local v5, "$i$f$cast":I
    .local v6, "$i$f$cast":I
    :cond_3
    nop

    .line 526
    nop

    .line 527
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Expected "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-class v8, Lkotlinx/serialization/json/JsonPrimitive;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-interface {v8}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", but had "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-interface {v8}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " as the serialized body of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " at element: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    .line 523
    .local v8, "$i$a$-cast-AbstractJsonTreeDecoder$cast$2$iv$iv":I
    invoke-virtual {v4, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->renderTagStack(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 527
    .end local v8    # "$i$a$-cast-AbstractJsonTreeDecoder$cast$2$iv$iv":I
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 528
    invoke-virtual {v3}, Lkotlinx/serialization/json/JsonElement;->toString()Ljava/lang/String;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    .line 525
    const/4 v9, -0x1

    invoke-static {v9, v7, v8}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->JsonDecodingException(ILjava/lang/String;Ljava/lang/CharSequence;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object v7

    throw v7
.end method

.method public bridge synthetic decodeTaggedInline(Ljava/lang/Object;Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/Decoder;
    .locals 1
    .param p1, "tag"    # Ljava/lang/Object;
    .param p2, "inlineDescriptor"    # Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 37
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->decodeTaggedInline(Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/Decoder;

    move-result-object v0

    return-object v0
.end method

.method protected decodeTaggedInline(Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/Decoder;
    .locals 10
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "inlineDescriptor"    # Lkotlinx/serialization/descriptors/SerialDescriptor;

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inlineDescriptor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    invoke-static {p2}, Lkotlinx/serialization/json/internal/StreamingJsonEncoderKt;->isUnsignedNumber(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v0

    move-object v1, p0

    .local v1, "this_$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    const/4 v2, 0x0

    .line 576
    .local v2, "$i$f$getPrimitiveValue":I
    invoke-static {v1, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->access$currentElement(Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;

    move-result-object v3

    .local v3, "value$iv$iv":Lkotlinx/serialization/json/JsonElement;
    invoke-interface {p2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getSerialName()Ljava/lang/String;

    move-result-object v4

    .local v4, "serialName$iv$iv":Ljava/lang/String;
    move-object v5, v1

    .local v5, "this_$iv$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    const/4 v6, 0x0

    .line 577
    .local v6, "$i$f$cast":I
    const/4 v7, 0x0

    .line 578
    .local v7, "$i$f$cast":I
    instance-of v8, v3, Lkotlinx/serialization/json/JsonPrimitive;

    if-eqz v8, :cond_0

    .line 585
    nop

    .line 577
    .end local v7    # "$i$f$cast":I
    nop

    .end local v3    # "value$iv$iv":Lkotlinx/serialization/json/JsonElement;
    .end local v4    # "serialName$iv$iv":Ljava/lang/String;
    .end local v5    # "this_$iv$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    .end local v6    # "$i$f$cast":I
    check-cast v3, Lkotlinx/serialization/json/JsonPrimitive;

    .line 576
    nop

    .line 159
    .end local v1    # "this_$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    .end local v2    # "$i$f$getPrimitiveValue":I
    invoke-virtual {v3}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlinx/serialization/json/internal/StringJsonLexerKt;->StringJsonLexer(Lkotlinx/serialization/json/Json;Ljava/lang/String;)Lkotlinx/serialization/json/internal/StringJsonLexer;

    move-result-object v0

    .line 160
    .local v0, "lexer":Lkotlinx/serialization/json/internal/StringJsonLexer;
    new-instance v1, Lkotlinx/serialization/json/internal/JsonDecoderForUnsignedTypes;

    move-object v2, v0

    check-cast v2, Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lkotlinx/serialization/json/internal/JsonDecoderForUnsignedTypes;-><init>(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Lkotlinx/serialization/json/Json;)V

    .end local v0    # "lexer":Lkotlinx/serialization/json/internal/StringJsonLexer;
    check-cast v1, Lkotlinx/serialization/encoding/Decoder;

    goto :goto_0

    .line 579
    .restart local v1    # "this_$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    .restart local v2    # "$i$f$getPrimitiveValue":I
    .restart local v3    # "value$iv$iv":Lkotlinx/serialization/json/JsonElement;
    .restart local v4    # "serialName$iv$iv":Ljava/lang/String;
    .restart local v5    # "this_$iv$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    .restart local v6    # "$i$f$cast":I
    .restart local v7    # "$i$f$cast":I
    :cond_0
    nop

    .line 580
    nop

    .line 581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Expected "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v8, Lkotlinx/serialization/json/JsonPrimitive;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-interface {v8}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ", but had "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-interface {v8}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " as the serialized body of "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " at element: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v8, 0x0

    .line 577
    .local v8, "$i$a$-cast-AbstractJsonTreeDecoder$cast$2$iv$iv":I
    invoke-virtual {v5, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->renderTagStack(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 581
    .end local v8    # "$i$a$-cast-AbstractJsonTreeDecoder$cast$2$iv$iv":I
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 582
    invoke-virtual {v3}, Lkotlinx/serialization/json/JsonElement;->toString()Ljava/lang/String;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    .line 579
    const/4 v9, -0x1

    invoke-static {v9, v0, v8}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->JsonDecodingException(ILjava/lang/String;Ljava/lang/CharSequence;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object v0

    throw v0

    .line 161
    .end local v1    # "this_$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    .end local v2    # "$i$f$getPrimitiveValue":I
    .end local v3    # "value$iv$iv":Lkotlinx/serialization/json/JsonElement;
    .end local v4    # "serialName$iv$iv":Ljava/lang/String;
    .end local v5    # "this_$iv$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    .end local v6    # "$i$f$cast":I
    .end local v7    # "$i$f$cast":I
    :cond_1
    invoke-super {p0, p1, p2}, Lkotlinx/serialization/internal/NamedValueDecoder;->decodeTaggedInline(Ljava/lang/Object;Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/Decoder;

    move-result-object v1

    .line 158
    :goto_0
    return-object v1
.end method

.method public bridge synthetic decodeTaggedInt(Ljava/lang/Object;)I
    .locals 1
    .param p1, "tag"    # Ljava/lang/Object;

    .line 37
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->decodeTaggedInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected decodeTaggedInt(Ljava/lang/String;)I
    .locals 10
    .param p1, "tag"    # Ljava/lang/String;

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    const-string v0, "int"

    .local v0, "primitiveName$iv":Ljava/lang/String;
    move-object v1, p0

    .local v1, "this_$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    const/4 v2, 0x0

    .line 492
    .local v2, "$i$f$getPrimitiveValue":I
    invoke-virtual {v1, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->currentElement(Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;

    move-result-object v3

    .local v3, "value$iv$iv":Lkotlinx/serialization/json/JsonElement;
    move-object v4, v1

    .local v4, "this_$iv$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    const/4 v5, 0x0

    .line 493
    .local v5, "$i$f$cast":I
    const/4 v6, 0x0

    .line 494
    .local v6, "$i$f$cast":I
    instance-of v7, v3, Lkotlinx/serialization/json/JsonPrimitive;

    if-eqz v7, :cond_0

    .line 501
    nop

    .line 493
    .end local v6    # "$i$f$cast":I
    nop

    .line 492
    .end local v3    # "value$iv$iv":Lkotlinx/serialization/json/JsonElement;
    .end local v4    # "this_$iv$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    .end local v5    # "$i$f$cast":I
    check-cast v3, Lkotlinx/serialization/json/JsonPrimitive;

    .line 502
    .local v3, "literal$iv":Lkotlinx/serialization/json/JsonPrimitive;
    nop

    .line 503
    move-object v4, v3

    .local v4, "$this$decodeTaggedInt_u24lambda_u248":Lkotlinx/serialization/json/JsonPrimitive;
    const/4 v5, 0x0

    .line 126
    .local v5, "$i$a$-getPrimitiveValue-AbstractJsonTreeDecoder$decodeTaggedInt$1":I
    :try_start_0
    invoke-static {v4}, Lkotlinx/serialization/json/JsonElementKt;->getInt(Lkotlinx/serialization/json/JsonPrimitive;)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    .end local v4    # "$this$decodeTaggedInt_u24lambda_u248":Lkotlinx/serialization/json/JsonPrimitive;
    .end local v5    # "$i$a$-getPrimitiveValue-AbstractJsonTreeDecoder$decodeTaggedInt$1":I
    nop

    .line 126
    .end local v0    # "primitiveName$iv":Ljava/lang/String;
    .end local v1    # "this_$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    .end local v2    # "$i$f$getPrimitiveValue":I
    .end local v3    # "literal$iv":Lkotlinx/serialization/json/JsonPrimitive;
    return v6

    .line 504
    .restart local v0    # "primitiveName$iv":Ljava/lang/String;
    .restart local v1    # "this_$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    .restart local v2    # "$i$f$getPrimitiveValue":I
    .restart local v3    # "literal$iv":Lkotlinx/serialization/json/JsonPrimitive;
    :catch_0
    move-exception v4

    .line 506
    .local v4, "e$iv":Ljava/lang/IllegalArgumentException;
    invoke-direct {v1, v3, v0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->unparsedPrimitive(Lkotlinx/serialization/json/JsonPrimitive;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Void;

    new-instance v5, Lkotlin/KotlinNothingValueException;

    invoke-direct {v5}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v5

    .line 495
    .local v3, "value$iv$iv":Lkotlinx/serialization/json/JsonElement;
    .local v4, "this_$iv$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    .local v5, "$i$f$cast":I
    .restart local v6    # "$i$f$cast":I
    :cond_0
    nop

    .line 496
    nop

    .line 497
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Expected "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-class v8, Lkotlinx/serialization/json/JsonPrimitive;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-interface {v8}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", but had "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-interface {v8}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " as the serialized body of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " at element: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    .line 493
    .local v8, "$i$a$-cast-AbstractJsonTreeDecoder$cast$2$iv$iv":I
    invoke-virtual {v4, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->renderTagStack(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 497
    .end local v8    # "$i$a$-cast-AbstractJsonTreeDecoder$cast$2$iv$iv":I
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 498
    invoke-virtual {v3}, Lkotlinx/serialization/json/JsonElement;->toString()Ljava/lang/String;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    .line 495
    const/4 v9, -0x1

    invoke-static {v9, v7, v8}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->JsonDecodingException(ILjava/lang/String;Ljava/lang/CharSequence;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object v7

    throw v7
.end method

.method public bridge synthetic decodeTaggedLong(Ljava/lang/Object;)J
    .locals 2
    .param p1, "tag"    # Ljava/lang/Object;

    .line 37
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->decodeTaggedLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected decodeTaggedLong(Ljava/lang/String;)J
    .locals 10
    .param p1, "tag"    # Ljava/lang/String;

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    const-string v0, "long"

    .local v0, "primitiveName$iv":Ljava/lang/String;
    move-object v1, p0

    .local v1, "this_$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    const/4 v2, 0x0

    .line 507
    .local v2, "$i$f$getPrimitiveValue":I
    invoke-virtual {v1, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->currentElement(Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;

    move-result-object v3

    .local v3, "value$iv$iv":Lkotlinx/serialization/json/JsonElement;
    move-object v4, v1

    .local v4, "this_$iv$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    const/4 v5, 0x0

    .line 508
    .local v5, "$i$f$cast":I
    const/4 v6, 0x0

    .line 509
    .local v6, "$i$f$cast":I
    instance-of v7, v3, Lkotlinx/serialization/json/JsonPrimitive;

    if-eqz v7, :cond_0

    .line 516
    nop

    .line 508
    .end local v6    # "$i$f$cast":I
    nop

    .line 507
    .end local v3    # "value$iv$iv":Lkotlinx/serialization/json/JsonElement;
    .end local v4    # "this_$iv$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    .end local v5    # "$i$f$cast":I
    check-cast v3, Lkotlinx/serialization/json/JsonPrimitive;

    .line 517
    .local v3, "literal$iv":Lkotlinx/serialization/json/JsonPrimitive;
    nop

    .line 518
    move-object v4, v3

    .local v4, "$this$decodeTaggedLong_u24lambda_u249":Lkotlinx/serialization/json/JsonPrimitive;
    const/4 v5, 0x0

    .line 127
    .local v5, "$i$a$-getPrimitiveValue-AbstractJsonTreeDecoder$decodeTaggedLong$1":I
    :try_start_0
    invoke-static {v4}, Lkotlinx/serialization/json/JsonElementKt;->getLong(Lkotlinx/serialization/json/JsonPrimitive;)J

    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 518
    .end local v4    # "$this$decodeTaggedLong_u24lambda_u249":Lkotlinx/serialization/json/JsonPrimitive;
    .end local v5    # "$i$a$-getPrimitiveValue-AbstractJsonTreeDecoder$decodeTaggedLong$1":I
    nop

    .line 127
    .end local v0    # "primitiveName$iv":Ljava/lang/String;
    .end local v1    # "this_$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    .end local v2    # "$i$f$getPrimitiveValue":I
    .end local v3    # "literal$iv":Lkotlinx/serialization/json/JsonPrimitive;
    return-wide v6

    .line 519
    .restart local v0    # "primitiveName$iv":Ljava/lang/String;
    .restart local v1    # "this_$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    .restart local v2    # "$i$f$getPrimitiveValue":I
    .restart local v3    # "literal$iv":Lkotlinx/serialization/json/JsonPrimitive;
    :catch_0
    move-exception v4

    .line 521
    .local v4, "e$iv":Ljava/lang/IllegalArgumentException;
    invoke-direct {v1, v3, v0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->unparsedPrimitive(Lkotlinx/serialization/json/JsonPrimitive;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Void;

    new-instance v5, Lkotlin/KotlinNothingValueException;

    invoke-direct {v5}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v5

    .line 510
    .local v3, "value$iv$iv":Lkotlinx/serialization/json/JsonElement;
    .local v4, "this_$iv$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    .local v5, "$i$f$cast":I
    .restart local v6    # "$i$f$cast":I
    :cond_0
    nop

    .line 511
    nop

    .line 512
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Expected "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-class v8, Lkotlinx/serialization/json/JsonPrimitive;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-interface {v8}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", but had "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-interface {v8}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " as the serialized body of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " at element: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    .line 508
    .local v8, "$i$a$-cast-AbstractJsonTreeDecoder$cast$2$iv$iv":I
    invoke-virtual {v4, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->renderTagStack(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 512
    .end local v8    # "$i$a$-cast-AbstractJsonTreeDecoder$cast$2$iv$iv":I
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 513
    invoke-virtual {v3}, Lkotlinx/serialization/json/JsonElement;->toString()Ljava/lang/String;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    .line 510
    const/4 v9, -0x1

    invoke-static {v9, v7, v8}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->JsonDecodingException(ILjava/lang/String;Ljava/lang/CharSequence;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object v7

    throw v7
.end method

.method public bridge synthetic decodeTaggedNotNullMark(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "tag"    # Ljava/lang/Object;

    .line 37
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->decodeTaggedNotNullMark(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected decodeTaggedNotNullMark(Ljava/lang/String;)Z
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->currentElement(Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;

    move-result-object v0

    sget-object v1, Lkotlinx/serialization/json/JsonNull;->INSTANCE:Lkotlinx/serialization/json/JsonNull;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic decodeTaggedNull(Ljava/lang/Object;)Ljava/lang/Void;
    .locals 1
    .param p1, "tag"    # Ljava/lang/Object;

    .line 37
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->decodeTaggedNull(Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected decodeTaggedNull(Ljava/lang/String;)Ljava/lang/Void;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic decodeTaggedShort(Ljava/lang/Object;)S
    .locals 1
    .param p1, "tag"    # Ljava/lang/Object;

    .line 37
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->decodeTaggedShort(Ljava/lang/String;)S

    move-result v0

    return v0
.end method

.method protected decodeTaggedShort(Ljava/lang/String;)S
    .locals 10
    .param p1, "tag"    # Ljava/lang/String;

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    const-string v0, "short"

    .local v0, "primitiveName$iv":Ljava/lang/String;
    move-object v1, p0

    .local v1, "this_$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    const/4 v2, 0x0

    .line 477
    .local v2, "$i$f$getPrimitiveValue":I
    invoke-virtual {v1, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->currentElement(Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;

    move-result-object v3

    .local v3, "value$iv$iv":Lkotlinx/serialization/json/JsonElement;
    move-object v4, v1

    .local v4, "this_$iv$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    const/4 v5, 0x0

    .line 478
    .local v5, "$i$f$cast":I
    const/4 v6, 0x0

    .line 479
    .local v6, "$i$f$cast":I
    instance-of v7, v3, Lkotlinx/serialization/json/JsonPrimitive;

    if-eqz v7, :cond_3

    .line 486
    nop

    .line 478
    .end local v6    # "$i$f$cast":I
    nop

    .line 477
    .end local v3    # "value$iv$iv":Lkotlinx/serialization/json/JsonElement;
    .end local v4    # "this_$iv$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    .end local v5    # "$i$f$cast":I
    check-cast v3, Lkotlinx/serialization/json/JsonPrimitive;

    .line 487
    .local v3, "literal$iv":Lkotlinx/serialization/json/JsonPrimitive;
    nop

    .line 488
    move-object v4, v3

    .local v4, "$this$decodeTaggedShort_u24lambda_u247":Lkotlinx/serialization/json/JsonPrimitive;
    const/4 v5, 0x0

    .line 121
    .local v5, "$i$a$-getPrimitiveValue-AbstractJsonTreeDecoder$decodeTaggedShort$1":I
    :try_start_0
    invoke-static {v4}, Lkotlinx/serialization/json/JsonElementKt;->getInt(Lkotlinx/serialization/json/JsonPrimitive;)I

    move-result v6

    .line 122
    .local v6, "result":I
    const/16 v7, -0x8000

    const/4 v8, 0x0

    if-gt v7, v6, :cond_0

    const/16 v7, 0x7fff

    if-gt v6, v7, :cond_0

    const/4 v8, 0x1

    :cond_0
    if-eqz v8, :cond_1

    int-to-short v7, v6

    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 123
    :cond_1
    const/4 v7, 0x0

    .line 488
    .end local v4    # "$this$decodeTaggedShort_u24lambda_u247":Lkotlinx/serialization/json/JsonPrimitive;
    .end local v5    # "$i$a$-getPrimitiveValue-AbstractJsonTreeDecoder$decodeTaggedShort$1":I
    .end local v6    # "result":I
    :goto_0
    if-eqz v7, :cond_2

    .line 491
    .end local v0    # "primitiveName$iv":Ljava/lang/String;
    .end local v1    # "this_$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    .end local v2    # "$i$f$getPrimitiveValue":I
    .end local v3    # "literal$iv":Lkotlinx/serialization/json/JsonPrimitive;
    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->shortValue()S

    move-result v0

    .line 124
    return v0

    .line 488
    .restart local v0    # "primitiveName$iv":Ljava/lang/String;
    .restart local v1    # "this_$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    .restart local v2    # "$i$f$getPrimitiveValue":I
    .restart local v3    # "literal$iv":Lkotlinx/serialization/json/JsonPrimitive;
    :cond_2
    :try_start_1
    invoke-direct {v1, v3, v0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->unparsedPrimitive(Lkotlinx/serialization/json/JsonPrimitive;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Void;

    new-instance v4, Lkotlin/KotlinNothingValueException;

    invoke-direct {v4}, Lkotlin/KotlinNothingValueException;-><init>()V

    .end local v0    # "primitiveName$iv":Ljava/lang/String;
    .end local v1    # "this_$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    .end local v2    # "$i$f$getPrimitiveValue":I
    .end local v3    # "literal$iv":Lkotlinx/serialization/json/JsonPrimitive;
    .end local p1    # "tag":Ljava/lang/String;
    throw v4
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 489
    .restart local v0    # "primitiveName$iv":Ljava/lang/String;
    .restart local v1    # "this_$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    .restart local v2    # "$i$f$getPrimitiveValue":I
    .restart local v3    # "literal$iv":Lkotlinx/serialization/json/JsonPrimitive;
    .restart local p1    # "tag":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 491
    .local v4, "e$iv":Ljava/lang/IllegalArgumentException;
    invoke-direct {v1, v3, v0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->unparsedPrimitive(Lkotlinx/serialization/json/JsonPrimitive;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Void;

    new-instance v5, Lkotlin/KotlinNothingValueException;

    invoke-direct {v5}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v5

    .line 480
    .local v3, "value$iv$iv":Lkotlinx/serialization/json/JsonElement;
    .local v4, "this_$iv$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    .local v5, "$i$f$cast":I
    .local v6, "$i$f$cast":I
    :cond_3
    nop

    .line 481
    nop

    .line 482
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Expected "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-class v8, Lkotlinx/serialization/json/JsonPrimitive;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-interface {v8}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", but had "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-interface {v8}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " as the serialized body of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " at element: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    .line 478
    .local v8, "$i$a$-cast-AbstractJsonTreeDecoder$cast$2$iv$iv":I
    invoke-virtual {v4, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->renderTagStack(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 482
    .end local v8    # "$i$a$-cast-AbstractJsonTreeDecoder$cast$2$iv$iv":I
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 483
    invoke-virtual {v3}, Lkotlinx/serialization/json/JsonElement;->toString()Ljava/lang/String;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    .line 480
    const/4 v9, -0x1

    invoke-static {v9, v7, v8}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->JsonDecodingException(ILjava/lang/String;Ljava/lang/CharSequence;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object v7

    throw v7
.end method

.method public bridge synthetic decodeTaggedString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "tag"    # Ljava/lang/Object;

    .line 37
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->decodeTaggedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected decodeTaggedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "tag"    # Ljava/lang/String;

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->currentElement(Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;

    move-result-object v0

    .local v0, "value$iv":Lkotlinx/serialization/json/JsonElement;
    const-string v1, "string"

    .local v1, "serialName$iv":Ljava/lang/String;
    move-object v2, p0

    .local v2, "this_$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    const/4 v3, 0x0

    .line 567
    .local v3, "$i$f$cast":I
    const/4 v4, 0x0

    .line 568
    .local v4, "$i$f$cast":I
    instance-of v5, v0, Lkotlinx/serialization/json/JsonPrimitive;

    const/4 v6, -0x1

    if-eqz v5, :cond_3

    .line 575
    nop

    .line 567
    .end local v4    # "$i$f$cast":I
    nop

    .line 146
    .end local v0    # "value$iv":Lkotlinx/serialization/json/JsonElement;
    .end local v1    # "serialName$iv":Ljava/lang/String;
    .end local v2    # "this_$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    .end local v3    # "$i$f$cast":I
    check-cast v0, Lkotlinx/serialization/json/JsonPrimitive;

    .line 147
    .local v0, "value":Lkotlinx/serialization/json/JsonPrimitive;
    instance-of v1, v0, Lkotlinx/serialization/json/JsonLiteral;

    if-eqz v1, :cond_2

    .line 149
    move-object v1, v0

    check-cast v1, Lkotlinx/serialization/json/JsonLiteral;

    invoke-virtual {v1}, Lkotlinx/serialization/json/JsonLiteral;->isString()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v1

    invoke-virtual {v1}, Lkotlinx/serialization/json/Json;->getConfiguration()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lkotlinx/serialization/json/JsonConfiguration;->isLenient()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 150
    :cond_0
    nop

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "String literal for key \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' should be quoted at element: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->renderTagStack(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".\nUse \'isLenient = true\' in \'Json {}\' builder to accept non-compliant JSON."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->currentObject()Lkotlinx/serialization/json/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lkotlinx/serialization/json/JsonElement;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 150
    invoke-static {v6, v1, v2}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->JsonDecodingException(ILjava/lang/String;Ljava/lang/CharSequence;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object v1

    throw v1

    .line 154
    :cond_1
    :goto_0
    move-object v1, v0

    check-cast v1, Lkotlinx/serialization/json/JsonLiteral;

    invoke-virtual {v1}, Lkotlinx/serialization/json/JsonLiteral;->getContent()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 148
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected string value for a non-null key \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', got null literal instead at element: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->renderTagStack(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->currentObject()Lkotlinx/serialization/json/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lkotlinx/serialization/json/JsonElement;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v6, v1, v2}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->JsonDecodingException(ILjava/lang/String;Ljava/lang/CharSequence;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object v1

    throw v1

    .line 569
    .local v0, "value$iv":Lkotlinx/serialization/json/JsonElement;
    .restart local v1    # "serialName$iv":Ljava/lang/String;
    .restart local v2    # "this_$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    .restart local v3    # "$i$f$cast":I
    .restart local v4    # "$i$f$cast":I
    :cond_3
    nop

    .line 570
    nop

    .line 571
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expected "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-class v7, Lkotlinx/serialization/json/JsonPrimitive;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    invoke-interface {v7}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", but had "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    invoke-interface {v7}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " as the serialized body of "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " at element: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v7, 0x0

    .line 567
    .local v7, "$i$a$-cast-AbstractJsonTreeDecoder$cast$2$iv":I
    invoke-virtual {v2, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->renderTagStack(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 571
    .end local v7    # "$i$a$-cast-AbstractJsonTreeDecoder$cast$2$iv":I
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 572
    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonElement;->toString()Ljava/lang/String;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    .line 569
    invoke-static {v6, v5, v7}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->JsonDecodingException(ILjava/lang/String;Ljava/lang/CharSequence;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object v5

    throw v5
.end method

.method public endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 1
    .param p1, "descriptor"    # Lkotlinx/serialization/descriptors/SerialDescriptor;

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public getJson()Lkotlinx/serialization/json/Json;
    .locals 1

    .line 38
    iget-object v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->json:Lkotlinx/serialization/json/Json;

    return-object v0
.end method

.method protected final getPolymorphicDiscriminator()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->polymorphicDiscriminator:Ljava/lang/String;

    return-object v0
.end method

.method protected final getPrimitiveValue(Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/json/JsonPrimitive;
    .locals 9
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "descriptor"    # Lkotlinx/serialization/descriptors/SerialDescriptor;

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "descriptor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 85
    .local v0, "$i$f$getPrimitiveValue":I
    invoke-static {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->access$currentElement(Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;

    move-result-object v1

    .local v1, "value$iv":Lkotlinx/serialization/json/JsonElement;
    invoke-interface {p2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getSerialName()Ljava/lang/String;

    move-result-object v2

    .local v2, "serialName$iv":Ljava/lang/String;
    move-object v3, p0

    .local v3, "this_$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    const/4 v4, 0x0

    .line 419
    .local v4, "$i$f$cast":I
    const/4 v5, 0x0

    .line 420
    .local v5, "$i$f$cast":I
    instance-of v6, v1, Lkotlinx/serialization/json/JsonPrimitive;

    if-eqz v6, :cond_0

    .line 427
    nop

    .line 419
    .end local v5    # "$i$f$cast":I
    nop

    .end local v1    # "value$iv":Lkotlinx/serialization/json/JsonElement;
    .end local v2    # "serialName$iv":Ljava/lang/String;
    .end local v3    # "this_$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    .end local v4    # "$i$f$cast":I
    check-cast v1, Lkotlinx/serialization/json/JsonPrimitive;

    .line 85
    return-object v1

    .line 421
    .restart local v1    # "value$iv":Lkotlinx/serialization/json/JsonElement;
    .restart local v2    # "serialName$iv":Ljava/lang/String;
    .restart local v3    # "this_$iv":Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
    .restart local v4    # "$i$f$cast":I
    .restart local v5    # "$i$f$cast":I
    :cond_0
    nop

    .line 422
    nop

    .line 423
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expected "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-class v7, Lkotlinx/serialization/json/JsonPrimitive;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    invoke-interface {v7}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", but had "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    invoke-interface {v7}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " as the serialized body of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at element: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    .line 419
    .local v7, "$i$a$-cast-AbstractJsonTreeDecoder$cast$2$iv":I
    invoke-virtual {v3, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->renderTagStack(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 423
    .end local v7    # "$i$a$-cast-AbstractJsonTreeDecoder$cast$2$iv":I
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 424
    invoke-virtual {v1}, Lkotlinx/serialization/json/JsonElement;->toString()Ljava/lang/String;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    .line 421
    const/4 v8, -0x1

    invoke-static {v8, v6, v7}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->JsonDecodingException(ILjava/lang/String;Ljava/lang/CharSequence;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object v6

    throw v6
.end method

.method public getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Lkotlinx/serialization/json/JsonElement;
    .locals 1

    .line 39
    iget-object v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->value:Lkotlinx/serialization/json/JsonElement;

    return-object v0
.end method

.method public final renderTagStack(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "currentTag"    # Ljava/lang/String;

    const-string v0, "currentTag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->renderTagStack()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
