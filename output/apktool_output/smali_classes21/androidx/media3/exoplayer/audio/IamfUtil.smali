.class public final Landroidx/media3/exoplayer/audio/IamfUtil;
.super Ljava/lang/Object;
.source "IamfUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/audio/IamfUtil$OutputLayout;
    }
.end annotation


# static fields
.field private static final CHANNEL_OUT_IAMF_3POINT1POINT2:I = 0x1403c

.field private static final CHANNEL_OUT_IAMF_7POINT1POINT2:I = 0x158fc

.field private static final CHANNEL_OUT_IAMF_9POINT1POINT4:I = 0xb5bfc

.field private static final CHANNEL_OUT_IAMF_9POINT1POINT6:I = 0x3b5bfc

.field private static final CHANNEL_OUT_ITU_2051_SOUND_SYSTEM_C_2_5_0:I = 0x140fc

.field private static final CHANNEL_OUT_ITU_2051_SOUND_SYSTEM_E_4_5_1:I = 0x8b40fc

.field public static final CHANNEL_OUT_ITU_2051_SOUND_SYSTEM_H_9_10_3:I = 0x3fffffc

.field public static final IAMF_SUPPORTED_CHANNEL_MASKS:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final ITU_2051_SOUND_SYSTEM_F_3_7_0:I = 0x20558fc

.field public static final OUTPUT_LAYOUT_BINAURAL:I = 0xe

.field public static final OUTPUT_LAYOUT_IAMF_SOUND_SYSTEM_EXTENSION_0_1_0:I = 0xc

.field public static final OUTPUT_LAYOUT_IAMF_SOUND_SYSTEM_EXTENSION_2_3_0:I = 0xb

.field public static final OUTPUT_LAYOUT_IAMF_SOUND_SYSTEM_EXTENSION_2_7_0:I = 0xa

.field public static final OUTPUT_LAYOUT_IAMF_SOUND_SYSTEM_EXTENSION_6_9_0:I = 0xd

.field public static final OUTPUT_LAYOUT_ITU2051_SOUND_SYSTEM_A_0_2_0:I = 0x0

.field public static final OUTPUT_LAYOUT_ITU2051_SOUND_SYSTEM_B_0_5_0:I = 0x1

.field public static final OUTPUT_LAYOUT_ITU2051_SOUND_SYSTEM_C_2_5_0:I = 0x2

.field public static final OUTPUT_LAYOUT_ITU2051_SOUND_SYSTEM_D_4_5_0:I = 0x3

.field public static final OUTPUT_LAYOUT_ITU2051_SOUND_SYSTEM_E_4_5_1:I = 0x4

.field public static final OUTPUT_LAYOUT_ITU2051_SOUND_SYSTEM_F_3_7_0:I = 0x5

.field public static final OUTPUT_LAYOUT_ITU2051_SOUND_SYSTEM_G_4_9_0:I = 0x6

.field public static final OUTPUT_LAYOUT_ITU2051_SOUND_SYSTEM_H_9_10_3:I = 0x7

.field public static final OUTPUT_LAYOUT_ITU2051_SOUND_SYSTEM_I_0_7_0:I = 0x8

.field public static final OUTPUT_LAYOUT_ITU2051_SOUND_SYSTEM_J_4_7_0:I = 0x9

.field public static final OUTPUT_LAYOUT_UNSET:I = -0x1

.field public static final REQUESTED_MIX_PRESENTATION_ID_UNSET:J = -0x1L

.field private static final TAG:Ljava/lang/String; = "IamfUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 209
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x20

    const/4 v2, 0x4

    .line 220
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 209
    const/16 v2, 0x18fc

    .line 219
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 209
    const/16 v2, 0xfc

    .line 218
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 209
    const/16 v2, 0xc

    .line 217
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 209
    if-ge v0, v1, :cond_0

    .line 210
    nop

    .line 211
    nop

    .line 212
    nop

    .line 213
    nop

    .line 214
    nop

    .line 210
    invoke-static {v3, v4, v5, v6}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_0

    .line 215
    :cond_0
    nop

    .line 217
    nop

    .line 218
    nop

    .line 219
    nop

    .line 220
    nop

    .line 221
    const v0, 0x3000fc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 222
    const v0, 0x140fc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 223
    const v0, 0xb40fc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 224
    const v0, 0x8b40fc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 225
    const v0, 0x20558fc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 226
    const v0, 0xc0b58fc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 227
    const v0, 0xb5bfc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 228
    const v0, 0x3fffffc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 229
    const v0, 0xb58fc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 230
    const v0, 0x3018fc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    .line 231
    const v0, 0x158fc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    .line 232
    const v0, 0x1403c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    .line 233
    const v0, 0xc3b58fc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    .line 234
    const v0, 0x3b5bfc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    filled-new-array/range {v9 .. v20}, [Ljava/lang/Integer;

    move-result-object v9

    .line 215
    invoke-static/range {v3 .. v9}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    :goto_0
    sput-object v0, Landroidx/media3/exoplayer/audio/IamfUtil;->IAMF_SUPPORTED_CHANNEL_MASKS:Lcom/google/common/collect/ImmutableSet;

    .line 208
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getChannelMaskForOutputLayout(I)I
    .locals 3
    .param p0, "outputLayout"    # I

    .line 315
    sparse-switch p0, :sswitch_data_0

    .line 332
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x20

    if-lt v0, v1, :cond_0

    .line 333
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 326
    :sswitch_0
    const/4 v0, 0x4

    return v0

    .line 323
    :sswitch_1
    const/16 v0, 0x18fc

    return v0

    .line 320
    :sswitch_2
    const/16 v0, 0xfc

    return v0

    .line 317
    :sswitch_3
    const/16 v0, 0xc

    return v0

    .line 362
    :pswitch_1
    const v0, 0x3b5bfc

    return v0

    .line 359
    :pswitch_2
    const v0, 0x1403c

    return v0

    .line 356
    :pswitch_3
    const v0, 0x158fc

    return v0

    .line 353
    :pswitch_4
    const v0, 0xb58fc

    return v0

    .line 350
    :pswitch_5
    const v0, 0x3fffffc

    return v0

    .line 347
    :pswitch_6
    const v0, 0xb5bfc

    return v0

    .line 344
    :pswitch_7
    const v0, 0x20558fc

    return v0

    .line 341
    :pswitch_8
    const v0, 0x8b40fc

    return v0

    .line 338
    :pswitch_9
    const v0, 0xb40fc

    return v0

    .line 335
    :pswitch_a
    const v0, 0x140fc

    return v0

    .line 369
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported output layout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x1 -> :sswitch_2
        0x8 -> :sswitch_1
        0xc -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getFirstCompatibleChannelMask(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 438
    .local p0, "channelMasks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 439
    .local v1, "channelMask":I
    sget-object v2, Landroidx/media3/exoplayer/audio/IamfUtil;->IAMF_SUPPORTED_CHANNEL_MASKS:Lcom/google/common/collect/ImmutableSet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 440
    return v1

    .line 442
    .end local v1    # "channelMask":I
    :cond_0
    goto :goto_0

    .line 443
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static getOutputChannelMaskForCurrentConfiguration(Landroidx/media3/exoplayer/audio/AudioCapabilities;)I
    .locals 3
    .param p0, "audioCapabilities"    # Landroidx/media3/exoplayer/audio/AudioCapabilities;

    .line 423
    nop

    .line 424
    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/AudioCapabilities;->getSpatializerChannelMasks()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/exoplayer/audio/IamfUtil;->getFirstCompatibleChannelMask(Ljava/util/List;)I

    move-result v0

    .line 425
    .local v0, "spatializerChannelMask":I
    if-eqz v0, :cond_0

    .line 426
    return v0

    .line 429
    :cond_0
    nop

    .line 430
    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/AudioCapabilities;->getSpeakerLayoutChannelMasks()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/exoplayer/audio/IamfUtil;->getFirstCompatibleChannelMask(Ljava/util/List;)I

    move-result v1

    .line 431
    .local v1, "speakerLayoutChannelMask":I
    if-eqz v1, :cond_1

    .line 432
    return v1

    .line 434
    :cond_1
    const/16 v2, 0xc

    return v2
.end method

.method public static getOutputLayoutForChannelMask(I)I
    .locals 3
    .param p0, "channelMask"    # I

    .line 245
    sparse-switch p0, :sswitch_data_0

    .line 262
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x20

    if-lt v0, v1, :cond_0

    .line 263
    sparse-switch p0, :sswitch_data_1

    goto :goto_0

    .line 253
    :sswitch_0
    const/16 v0, 0x8

    return v0

    .line 250
    :sswitch_1
    const/4 v0, 0x1

    return v0

    .line 247
    :sswitch_2
    const/4 v0, 0x0

    return v0

    .line 256
    :sswitch_3
    const/16 v0, 0xc

    return v0

    .line 282
    :sswitch_4
    const/4 v0, 0x7

    return v0

    .line 275
    :sswitch_5
    const/4 v0, 0x5

    return v0

    .line 272
    :sswitch_6
    const/4 v0, 0x4

    return v0

    .line 296
    :sswitch_7
    const/16 v0, 0xd

    return v0

    .line 279
    :sswitch_8
    const/4 v0, 0x6

    return v0

    .line 285
    :sswitch_9
    const/16 v0, 0x9

    return v0

    .line 269
    :sswitch_a
    const/4 v0, 0x3

    return v0

    .line 289
    :sswitch_b
    const/16 v0, 0xa

    return v0

    .line 266
    :sswitch_c
    const/4 v0, 0x2

    return v0

    .line 292
    :sswitch_d
    const/16 v0, 0xb

    return v0

    .line 303
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported channel mask: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_3
        0xc -> :sswitch_2
        0xfc -> :sswitch_1
        0x18fc -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1403c -> :sswitch_d
        0x140fc -> :sswitch_c
        0x158fc -> :sswitch_b
        0xb40fc -> :sswitch_a
        0xb58fc -> :sswitch_9
        0xb5bfc -> :sswitch_8
        0x3000fc -> :sswitch_c
        0x3018fc -> :sswitch_b
        0x3b5bfc -> :sswitch_7
        0x8b40fc -> :sswitch_6
        0x20558fc -> :sswitch_5
        0x3fffffc -> :sswitch_4
        0xc0b58fc -> :sswitch_8
        0xc3b58fc -> :sswitch_7
    .end sparse-switch
.end method

.method public static getOutputLayoutForCurrentConfiguration(Landroidx/media3/exoplayer/audio/AudioCapabilities;Z)I
    .locals 3
    .param p0, "audioCapabilities"    # Landroidx/media3/exoplayer/audio/AudioCapabilities;
    .param p1, "useIntegratedBinauralRenderer"    # Z

    .line 389
    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/AudioCapabilities;->getSpatializerChannelMasks()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 392
    if-eqz p1, :cond_0

    .line 394
    const/16 v0, 0xe

    return v0

    .line 396
    :cond_0
    nop

    .line 397
    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/AudioCapabilities;->getSpatializerChannelMasks()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/exoplayer/audio/IamfUtil;->getFirstCompatibleChannelMask(Ljava/util/List;)I

    move-result v0

    .line 398
    .local v0, "spatializerChannelMask":I
    if-eqz v0, :cond_1

    .line 399
    invoke-static {v0}, Landroidx/media3/exoplayer/audio/IamfUtil;->getOutputLayoutForChannelMask(I)I

    move-result v1

    return v1

    .line 401
    :cond_1
    const-string v1, "IamfUtil"

    const-string v2, "No spatializer channel mask is compatible with IAMF, falling back to speaker layout."

    invoke-static {v1, v2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    .end local v0    # "spatializerChannelMask":I
    :cond_2
    nop

    .line 407
    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/AudioCapabilities;->getSpeakerLayoutChannelMasks()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/exoplayer/audio/IamfUtil;->getFirstCompatibleChannelMask(Ljava/util/List;)I

    move-result v0

    .line 408
    .local v0, "speakerLayoutChannelMask":I
    if-eqz v0, :cond_3

    .line 409
    invoke-static {v0}, Landroidx/media3/exoplayer/audio/IamfUtil;->getOutputLayoutForChannelMask(I)I

    move-result v1

    return v1

    .line 411
    :cond_3
    const/4 v1, 0x0

    return v1
.end method
