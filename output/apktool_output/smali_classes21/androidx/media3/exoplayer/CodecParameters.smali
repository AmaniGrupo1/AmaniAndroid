.class public final Landroidx/media3/exoplayer/CodecParameters;
.super Ljava/lang/Object;
.source "CodecParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/CodecParameters$Builder;
    }
.end annotation


# static fields
.field public static final EMPTY:Landroidx/media3/exoplayer/CodecParameters;


# instance fields
.field private final params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Landroidx/media3/exoplayer/CodecParameters$Builder;

    invoke-direct {v0}, Landroidx/media3/exoplayer/CodecParameters$Builder;-><init>()V

    invoke-virtual {v0}, Landroidx/media3/exoplayer/CodecParameters$Builder;->build()Landroidx/media3/exoplayer/CodecParameters;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/CodecParameters;->EMPTY:Landroidx/media3/exoplayer/CodecParameters;

    return-void
.end method

.method private constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 41
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/CodecParameters;->params:Ljava/util/Map;

    .line 43
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Landroidx/media3/exoplayer/CodecParameters$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/Map;
    .param p2, "x1"    # Landroidx/media3/exoplayer/CodecParameters$1;

    .line 34
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/CodecParameters;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$100(Landroidx/media3/exoplayer/CodecParameters;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/CodecParameters;

    .line 34
    iget-object v0, p0, Landroidx/media3/exoplayer/CodecParameters;->params:Ljava/util/Map;

    return-object v0
.end method

.method public static createFrom(Landroid/media/MediaFormat;Ljava/util/Set;)Landroidx/media3/exoplayer/CodecParameters$Builder;
    .locals 6
    .param p0, "mediaFormat"    # Landroid/media/MediaFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaFormat;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/media3/exoplayer/CodecParameters$Builder;"
        }
    .end annotation

    .line 167
    .local p1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Landroidx/media3/exoplayer/CodecParameters$Builder;

    invoke-direct {v0}, Landroidx/media3/exoplayer/CodecParameters$Builder;-><init>()V

    .line 168
    .local v0, "builder":Landroidx/media3/exoplayer/CodecParameters$Builder;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 169
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 170
    invoke-virtual {p0, v2}, Landroid/media/MediaFormat;->getValueTypeForKey(Ljava/lang/String;)I

    move-result v3

    .line 171
    .local v3, "type":I
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 185
    :pswitch_0
    invoke-virtual {p0, v2}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroidx/media3/exoplayer/CodecParameters$Builder;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)Landroidx/media3/exoplayer/CodecParameters$Builder;

    .line 186
    goto :goto_1

    .line 182
    :pswitch_1
    invoke-virtual {p0, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroidx/media3/exoplayer/CodecParameters$Builder;->setString(Ljava/lang/String;Ljava/lang/String;)Landroidx/media3/exoplayer/CodecParameters$Builder;

    .line 183
    goto :goto_1

    .line 179
    :pswitch_2
    invoke-virtual {p0, v2}, Landroid/media/MediaFormat;->getFloat(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v0, v2, v4}, Landroidx/media3/exoplayer/CodecParameters$Builder;->setFloat(Ljava/lang/String;F)Landroidx/media3/exoplayer/CodecParameters$Builder;

    .line 180
    goto :goto_1

    .line 176
    :pswitch_3
    invoke-virtual {p0, v2}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Landroidx/media3/exoplayer/CodecParameters$Builder;->setLong(Ljava/lang/String;J)Landroidx/media3/exoplayer/CodecParameters$Builder;

    .line 177
    goto :goto_1

    .line 173
    :pswitch_4
    invoke-virtual {p0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v2, v4}, Landroidx/media3/exoplayer/CodecParameters$Builder;->setInteger(Ljava/lang/String;I)Landroidx/media3/exoplayer/CodecParameters$Builder;

    .line 174
    nop

    .line 191
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "type":I
    :cond_0
    :goto_1
    goto :goto_0

    .line 192
    :cond_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public applyTo(Landroid/media/MediaFormat;)V
    .locals 6
    .param p1, "mediaFormat"    # Landroid/media/MediaFormat;

    .line 263
    iget-object v0, p0, Landroidx/media3/exoplayer/CodecParameters;->params:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 264
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 265
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 266
    .local v3, "value":Ljava/lang/Object;
    if-nez v3, :cond_0

    .line 267
    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    goto :goto_0

    .line 270
    :cond_0
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_1

    .line 271
    move-object v4, v3

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v2, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_1

    .line 272
    :cond_1
    instance-of v4, v3, Ljava/lang/Long;

    if-eqz v4, :cond_2

    .line 273
    move-object v4, v3

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p1, v2, v4, v5}, Landroid/media/MediaFormat;->setLong(Ljava/lang/String;J)V

    goto :goto_1

    .line 274
    :cond_2
    instance-of v4, v3, Ljava/lang/Float;

    if-eqz v4, :cond_3

    .line 275
    move-object v4, v3

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {p1, v2, v4}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    goto :goto_1

    .line 276
    :cond_3
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 277
    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v2, v4}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 278
    :cond_4
    instance-of v4, v3, Ljava/nio/ByteBuffer;

    if-eqz v4, :cond_5

    .line 279
    move-object v4, v3

    check-cast v4, Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v2, v4}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 281
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_5
    :goto_1
    goto :goto_0

    .line 282
    :cond_6
    return-void
.end method

.method public buildUpon()Landroidx/media3/exoplayer/CodecParameters$Builder;
    .locals 2

    .line 47
    new-instance v0, Landroidx/media3/exoplayer/CodecParameters$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/exoplayer/CodecParameters$Builder;-><init>(Landroidx/media3/exoplayer/CodecParameters;Landroidx/media3/exoplayer/CodecParameters$1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 217
    if-ne p0, p1, :cond_0

    .line 218
    const/4 v0, 0x1

    return v0

    .line 220
    :cond_0
    instance-of v0, p1, Landroidx/media3/exoplayer/CodecParameters;

    if-nez v0, :cond_1

    .line 221
    const/4 v0, 0x0

    return v0

    .line 223
    :cond_1
    move-object v0, p1

    check-cast v0, Landroidx/media3/exoplayer/CodecParameters;

    .line 224
    .local v0, "other":Landroidx/media3/exoplayer/CodecParameters;
    iget-object v1, p0, Landroidx/media3/exoplayer/CodecParameters;->params:Ljava/util/Map;

    iget-object v2, v0, Landroidx/media3/exoplayer/CodecParameters;->params:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 207
    iget-object v0, p0, Landroidx/media3/exoplayer/CodecParameters;->params:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 229
    iget-object v0, p0, Landroidx/media3/exoplayer/CodecParameters;->params:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 212
    iget-object v0, p0, Landroidx/media3/exoplayer/CodecParameters;->params:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 8

    .line 235
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 236
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Landroidx/media3/exoplayer/CodecParameters;->params:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 237
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 238
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 239
    .local v4, "value":Ljava/lang/Object;
    if-nez v4, :cond_0

    .line 240
    goto :goto_0

    .line 242
    :cond_0
    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_1

    .line 243
    move-object v5, v4

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 244
    :cond_1
    instance-of v5, v4, Ljava/lang/Long;

    if-eqz v5, :cond_2

    .line 245
    move-object v5, v4

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v0, v3, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_1

    .line 246
    :cond_2
    instance-of v5, v4, Ljava/lang/Float;

    if-eqz v5, :cond_3

    .line 247
    move-object v5, v4

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_1

    .line 248
    :cond_3
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 249
    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 250
    :cond_4
    instance-of v5, v4, Ljava/nio/ByteBuffer;

    if-eqz v5, :cond_5

    .line 251
    move-object v5, v4

    check-cast v5, Ljava/nio/ByteBuffer;

    .line 252
    .local v5, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    new-array v6, v6, [B

    .line 253
    .local v6, "bytes":[B
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 254
    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 256
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Object;
    .end local v5    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local v6    # "bytes":[B
    :cond_5
    :goto_1
    goto :goto_0

    .line 257
    :cond_6
    return-object v0
.end method
