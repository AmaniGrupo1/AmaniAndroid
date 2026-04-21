.class public final Landroidx/media3/common/Format;
.super Ljava/lang/Object;
.source "Format.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/Format$Builder;,
        Landroidx/media3/common/Format$CueReplacementBehavior;
    }
.end annotation


# static fields
.field public static final CUE_REPLACEMENT_BEHAVIOR_MERGE:I = 0x1

.field public static final CUE_REPLACEMENT_BEHAVIOR_REPLACE:I = 0x2

.field private static final DEFAULT:Landroidx/media3/common/Format;

.field private static final FIELD_ACCESSIBILITY_CHANNEL:Ljava/lang/String;

.field private static final FIELD_AUXILIARY_TRACK_TYPE:Ljava/lang/String;

.field private static final FIELD_AVERAGE_BITRATE:Ljava/lang/String;

.field private static final FIELD_CHANNEL_COUNT:Ljava/lang/String;

.field private static final FIELD_CODECS:Ljava/lang/String;

.field private static final FIELD_COLOR_INFO:Ljava/lang/String;

.field private static final FIELD_CONTAINER_MIME_TYPE:Ljava/lang/String;

.field private static final FIELD_CRYPTO_TYPE:Ljava/lang/String;

.field private static final FIELD_DECODED_HEIGHT:Ljava/lang/String;

.field private static final FIELD_DECODED_WIDTH:Ljava/lang/String;

.field private static final FIELD_DRM_INIT_DATA:Ljava/lang/String;

.field private static final FIELD_ENCODER_DELAY:Ljava/lang/String;

.field private static final FIELD_ENCODER_PADDING:Ljava/lang/String;

.field private static final FIELD_FRAME_RATE:Ljava/lang/String;

.field private static final FIELD_HEIGHT:Ljava/lang/String;

.field private static final FIELD_ID:Ljava/lang/String;

.field private static final FIELD_INITIALIZATION_DATA:Ljava/lang/String;

.field private static final FIELD_LABEL:Ljava/lang/String;

.field private static final FIELD_LABELS:Ljava/lang/String;

.field private static final FIELD_LANGUAGE:Ljava/lang/String;

.field private static final FIELD_MAX_INPUT_SIZE:Ljava/lang/String;

.field private static final FIELD_MAX_SUB_LAYERS:Ljava/lang/String;

.field private static final FIELD_PCM_ENCODING:Ljava/lang/String;

.field private static final FIELD_PEAK_BITRATE:Ljava/lang/String;

.field private static final FIELD_PIXEL_WIDTH_HEIGHT_RATIO:Ljava/lang/String;

.field private static final FIELD_PRIMARY_TRACK_GROUP_ID:Ljava/lang/String;

.field private static final FIELD_PROJECTION_DATA:Ljava/lang/String;

.field private static final FIELD_ROLE_FLAGS:Ljava/lang/String;

.field private static final FIELD_ROTATION_DEGREES:Ljava/lang/String;

.field private static final FIELD_SAMPLE_MIME_TYPE:Ljava/lang/String;

.field private static final FIELD_SAMPLE_RATE:Ljava/lang/String;

.field private static final FIELD_SELECTION_FLAGS:Ljava/lang/String;

.field private static final FIELD_STEREO_MODE:Ljava/lang/String;

.field private static final FIELD_SUBSAMPLE_OFFSET_US:Ljava/lang/String;

.field private static final FIELD_TILE_COUNT_HORIZONTAL:Ljava/lang/String;

.field private static final FIELD_TILE_COUNT_VERTICAL:Ljava/lang/String;

.field private static final FIELD_WIDTH:Ljava/lang/String;

.field public static final NO_VALUE:I = -0x1

.field public static final OFFSET_SAMPLE_RELATIVE:J = 0x7fffffffffffffffL

.field private static final UNUSED_FIELD_METADATA:Ljava/lang/String;


# instance fields
.field public final accessibilityChannel:I

.field public final auxiliaryTrackType:I

.field public final averageBitrate:I

.field public final bitrate:I

.field public final channelCount:I

.field public final codecs:Ljava/lang/String;

.field public final colorInfo:Landroidx/media3/common/ColorInfo;

.field public final containerMimeType:Ljava/lang/String;

.field public final cryptoType:I

.field public final cueReplacementBehavior:I

.field public final customData:Ljava/lang/Object;

.field public final decodedHeight:I

.field public final decodedWidth:I

.field public final drmInitData:Landroidx/media3/common/DrmInitData;

.field public final encoderDelay:I

.field public final encoderPadding:I

.field public final frameRate:F

.field public final hasPrerollSamples:Z

.field private hashCode:I

.field public final height:I

.field public final id:Ljava/lang/String;

.field public final initializationData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public final label:Ljava/lang/String;

.field public final labels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/common/Label;",
            ">;"
        }
    .end annotation
.end field

.field public final language:Ljava/lang/String;

.field public final maxInputSize:I

.field public final maxNumReorderSamples:I

.field public final maxSubLayers:I

.field public final metadata:Landroidx/media3/common/Metadata;

.field public final pcmEncoding:I

.field public final peakBitrate:I

.field public final pixelWidthHeightRatio:F

.field public final primaryTrackGroupId:Ljava/lang/String;

.field public final projectionData:[B

.field public final roleFlags:I

.field public final rotationDegrees:I

.field public final sampleMimeType:Ljava/lang/String;

.field public final sampleRate:I

.field public final selectionFlags:I

.field public final stereoMode:I

.field public final subsampleOffsetUs:J

.field public final tileCountHorizontal:I

.field public final tileCountVertical:I

.field public final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 902
    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->DEFAULT:Landroidx/media3/common/Format;

    .line 1622
    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_ID:Ljava/lang/String;

    .line 1623
    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_LABEL:Ljava/lang/String;

    .line 1624
    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_LANGUAGE:Ljava/lang/String;

    .line 1625
    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_SELECTION_FLAGS:Ljava/lang/String;

    .line 1626
    const/4 v0, 0x4

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_ROLE_FLAGS:Ljava/lang/String;

    .line 1627
    const/4 v0, 0x5

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_AVERAGE_BITRATE:Ljava/lang/String;

    .line 1628
    const/4 v0, 0x6

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_PEAK_BITRATE:Ljava/lang/String;

    .line 1629
    const/4 v0, 0x7

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_CODECS:Ljava/lang/String;

    .line 1631
    const/16 v0, 0x8

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->UNUSED_FIELD_METADATA:Ljava/lang/String;

    .line 1632
    const/16 v0, 0x9

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_CONTAINER_MIME_TYPE:Ljava/lang/String;

    .line 1633
    const/16 v0, 0xa

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_SAMPLE_MIME_TYPE:Ljava/lang/String;

    .line 1634
    const/16 v0, 0xb

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_MAX_INPUT_SIZE:Ljava/lang/String;

    .line 1635
    const/16 v0, 0xc

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_INITIALIZATION_DATA:Ljava/lang/String;

    .line 1636
    const/16 v0, 0xd

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_DRM_INIT_DATA:Ljava/lang/String;

    .line 1637
    const/16 v0, 0xe

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_SUBSAMPLE_OFFSET_US:Ljava/lang/String;

    .line 1638
    const/16 v0, 0xf

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_WIDTH:Ljava/lang/String;

    .line 1639
    const/16 v0, 0x10

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_HEIGHT:Ljava/lang/String;

    .line 1640
    const/16 v0, 0x11

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_FRAME_RATE:Ljava/lang/String;

    .line 1641
    const/16 v0, 0x12

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_ROTATION_DEGREES:Ljava/lang/String;

    .line 1642
    const/16 v0, 0x13

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_PIXEL_WIDTH_HEIGHT_RATIO:Ljava/lang/String;

    .line 1643
    const/16 v0, 0x14

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_PROJECTION_DATA:Ljava/lang/String;

    .line 1644
    const/16 v0, 0x15

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_STEREO_MODE:Ljava/lang/String;

    .line 1645
    const/16 v0, 0x16

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_COLOR_INFO:Ljava/lang/String;

    .line 1646
    const/16 v0, 0x17

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_CHANNEL_COUNT:Ljava/lang/String;

    .line 1647
    const/16 v0, 0x18

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_SAMPLE_RATE:Ljava/lang/String;

    .line 1648
    const/16 v0, 0x19

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_PCM_ENCODING:Ljava/lang/String;

    .line 1649
    const/16 v0, 0x1a

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_ENCODER_DELAY:Ljava/lang/String;

    .line 1650
    const/16 v0, 0x1b

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_ENCODER_PADDING:Ljava/lang/String;

    .line 1651
    const/16 v0, 0x1c

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_ACCESSIBILITY_CHANNEL:Ljava/lang/String;

    .line 1652
    const/16 v0, 0x1d

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_CRYPTO_TYPE:Ljava/lang/String;

    .line 1653
    const/16 v0, 0x1e

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_TILE_COUNT_HORIZONTAL:Ljava/lang/String;

    .line 1654
    const/16 v0, 0x1f

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_TILE_COUNT_VERTICAL:Ljava/lang/String;

    .line 1655
    const/16 v0, 0x20

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_LABELS:Ljava/lang/String;

    .line 1656
    const/16 v0, 0x21

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_AUXILIARY_TRACK_TYPE:Ljava/lang/String;

    .line 1657
    const/16 v0, 0x22

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_MAX_SUB_LAYERS:Ljava/lang/String;

    .line 1658
    const/16 v0, 0x23

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_DECODED_WIDTH:Ljava/lang/String;

    .line 1659
    const/16 v0, 0x24

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_DECODED_HEIGHT:Ljava/lang/String;

    .line 1660
    const/16 v0, 0x25

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_PRIMARY_TRACK_GROUP_ID:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroidx/media3/common/Format$Builder;)V
    .locals 6
    .param p1, "builder"    # Landroidx/media3/common/Format$Builder;

    .line 1180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1181
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$300(Landroidx/media3/common/Format$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    .line 1182
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$400(Landroidx/media3/common/Format$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Util;->normalizeLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    .line 1183
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$100(Landroidx/media3/common/Format$Builder;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$200(Landroidx/media3/common/Format$Builder;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1184
    new-instance v0, Landroidx/media3/common/Label;

    iget-object v1, p0, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$200(Landroidx/media3/common/Format$Builder;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroidx/media3/common/Label;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/Format;->labels:Ljava/util/List;

    .line 1185
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$200(Landroidx/media3/common/Format$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/Format;->label:Ljava/lang/String;

    goto :goto_0

    .line 1186
    :cond_0
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$100(Landroidx/media3/common/Format$Builder;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$200(Landroidx/media3/common/Format$Builder;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1187
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$100(Landroidx/media3/common/Format$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/Format;->labels:Ljava/util/List;

    .line 1188
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$100(Landroidx/media3/common/Format$Builder;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    invoke-static {v0, v1}, Landroidx/media3/common/Format;->getDefaultLabel(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/Format;->label:Ljava/lang/String;

    goto :goto_0

    .line 1190
    :cond_1
    invoke-static {p1}, Landroidx/media3/common/Format;->isLabelPartOfLabels(Landroidx/media3/common/Format$Builder;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 1191
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$100(Landroidx/media3/common/Format$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/Format;->labels:Ljava/util/List;

    .line 1192
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$200(Landroidx/media3/common/Format$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/Format;->label:Ljava/lang/String;

    .line 1194
    :goto_0
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$500(Landroidx/media3/common/Format$Builder;)I

    move-result v0

    iput v0, p0, Landroidx/media3/common/Format;->selectionFlags:I

    .line 1196
    nop

    .line 1197
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$600(Landroidx/media3/common/Format$Builder;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 1198
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$700(Landroidx/media3/common/Format$Builder;)I

    move-result v0

    const v3, 0x8000

    and-int/2addr v0, v3

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    :goto_1
    move v0, v1

    .line 1196
    :goto_2
    const-string v3, "Auxiliary track type must only be set to a value other than AUXILIARY_TRACK_TYPE_UNDEFINED only when ROLE_FLAG_AUXILIARY is set"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1201
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$700(Landroidx/media3/common/Format$Builder;)I

    move-result v0

    iput v0, p0, Landroidx/media3/common/Format;->roleFlags:I

    .line 1202
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$600(Landroidx/media3/common/Format$Builder;)I

    move-result v0

    iput v0, p0, Landroidx/media3/common/Format;->auxiliaryTrackType:I

    .line 1203
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$800(Landroidx/media3/common/Format$Builder;)I

    move-result v0

    iput v0, p0, Landroidx/media3/common/Format;->averageBitrate:I

    .line 1204
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$900(Landroidx/media3/common/Format$Builder;)I

    move-result v0

    iput v0, p0, Landroidx/media3/common/Format;->peakBitrate:I

    .line 1205
    iget v0, p0, Landroidx/media3/common/Format;->peakBitrate:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_4

    iget v0, p0, Landroidx/media3/common/Format;->peakBitrate:I

    goto :goto_3

    :cond_4
    iget v0, p0, Landroidx/media3/common/Format;->averageBitrate:I

    :goto_3
    iput v0, p0, Landroidx/media3/common/Format;->bitrate:I

    .line 1206
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$1000(Landroidx/media3/common/Format$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    .line 1207
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$1100(Landroidx/media3/common/Format$Builder;)Landroidx/media3/common/Metadata;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    .line 1208
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$1200(Landroidx/media3/common/Format$Builder;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/Format;->customData:Ljava/lang/Object;

    .line 1209
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$1300(Landroidx/media3/common/Format$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/Format;->primaryTrackGroupId:Ljava/lang/String;

    .line 1211
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$1400(Landroidx/media3/common/Format$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/Format;->containerMimeType:Ljava/lang/String;

    .line 1213
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$1500(Landroidx/media3/common/Format$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 1214
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$1600(Landroidx/media3/common/Format$Builder;)I

    move-result v0

    iput v0, p0, Landroidx/media3/common/Format;->maxInputSize:I

    .line 1215
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$1700(Landroidx/media3/common/Format$Builder;)I

    move-result v0

    iput v0, p0, Landroidx/media3/common/Format;->maxNumReorderSamples:I

    .line 1216
    nop

    .line 1217
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$1800(Landroidx/media3/common/Format$Builder;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_4

    :cond_5
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$1800(Landroidx/media3/common/Format$Builder;)Ljava/util/List;

    move-result-object v0

    :goto_4
    iput-object v0, p0, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    .line 1218
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$1900(Landroidx/media3/common/Format$Builder;)Landroidx/media3/common/DrmInitData;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/Format;->drmInitData:Landroidx/media3/common/DrmInitData;

    .line 1219
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$2000(Landroidx/media3/common/Format$Builder;)J

    move-result-wide v4

    iput-wide v4, p0, Landroidx/media3/common/Format;->subsampleOffsetUs:J

    .line 1220
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$2100(Landroidx/media3/common/Format$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media3/common/Format;->hasPrerollSamples:Z

    .line 1222
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$2200(Landroidx/media3/common/Format$Builder;)I

    move-result v0

    iput v0, p0, Landroidx/media3/common/Format;->width:I

    .line 1223
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$2300(Landroidx/media3/common/Format$Builder;)I

    move-result v0

    iput v0, p0, Landroidx/media3/common/Format;->height:I

    .line 1224
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$2400(Landroidx/media3/common/Format$Builder;)I

    move-result v0

    iput v0, p0, Landroidx/media3/common/Format;->decodedWidth:I

    .line 1225
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$2500(Landroidx/media3/common/Format$Builder;)I

    move-result v0

    iput v0, p0, Landroidx/media3/common/Format;->decodedHeight:I

    .line 1226
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$2600(Landroidx/media3/common/Format$Builder;)F

    move-result v0

    iput v0, p0, Landroidx/media3/common/Format;->frameRate:F

    .line 1227
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$2700(Landroidx/media3/common/Format$Builder;)I

    move-result v0

    if-ne v0, v3, :cond_6

    move v0, v2

    goto :goto_5

    :cond_6
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$2700(Landroidx/media3/common/Format$Builder;)I

    move-result v0

    :goto_5
    iput v0, p0, Landroidx/media3/common/Format;->rotationDegrees:I

    .line 1228
    nop

    .line 1229
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$2800(Landroidx/media3/common/Format$Builder;)F

    move-result v0

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v0, v0, v4

    if-nez v0, :cond_7

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_6

    :cond_7
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$2800(Landroidx/media3/common/Format$Builder;)F

    move-result v0

    :goto_6
    iput v0, p0, Landroidx/media3/common/Format;->pixelWidthHeightRatio:F

    .line 1230
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$2900(Landroidx/media3/common/Format$Builder;)[B

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/Format;->projectionData:[B

    .line 1231
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$3000(Landroidx/media3/common/Format$Builder;)I

    move-result v0

    iput v0, p0, Landroidx/media3/common/Format;->stereoMode:I

    .line 1232
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$3100(Landroidx/media3/common/Format$Builder;)Landroidx/media3/common/ColorInfo;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    .line 1233
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$3200(Landroidx/media3/common/Format$Builder;)I

    move-result v0

    iput v0, p0, Landroidx/media3/common/Format;->maxSubLayers:I

    .line 1235
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$3300(Landroidx/media3/common/Format$Builder;)I

    move-result v0

    iput v0, p0, Landroidx/media3/common/Format;->channelCount:I

    .line 1236
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$3400(Landroidx/media3/common/Format$Builder;)I

    move-result v0

    iput v0, p0, Landroidx/media3/common/Format;->sampleRate:I

    .line 1237
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$3500(Landroidx/media3/common/Format$Builder;)I

    move-result v0

    iput v0, p0, Landroidx/media3/common/Format;->pcmEncoding:I

    .line 1238
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$3600(Landroidx/media3/common/Format$Builder;)I

    move-result v0

    if-ne v0, v3, :cond_8

    move v0, v2

    goto :goto_7

    :cond_8
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$3600(Landroidx/media3/common/Format$Builder;)I

    move-result v0

    :goto_7
    iput v0, p0, Landroidx/media3/common/Format;->encoderDelay:I

    .line 1239
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$3700(Landroidx/media3/common/Format$Builder;)I

    move-result v0

    if-ne v0, v3, :cond_9

    goto :goto_8

    :cond_9
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$3700(Landroidx/media3/common/Format$Builder;)I

    move-result v2

    :goto_8
    iput v2, p0, Landroidx/media3/common/Format;->encoderPadding:I

    .line 1241
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$3800(Landroidx/media3/common/Format$Builder;)I

    move-result v0

    iput v0, p0, Landroidx/media3/common/Format;->accessibilityChannel:I

    .line 1242
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$3900(Landroidx/media3/common/Format$Builder;)I

    move-result v0

    iput v0, p0, Landroidx/media3/common/Format;->cueReplacementBehavior:I

    .line 1244
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$4000(Landroidx/media3/common/Format$Builder;)I

    move-result v0

    iput v0, p0, Landroidx/media3/common/Format;->tileCountHorizontal:I

    .line 1245
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$4100(Landroidx/media3/common/Format$Builder;)I

    move-result v0

    iput v0, p0, Landroidx/media3/common/Format;->tileCountVertical:I

    .line 1247
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$4200(Landroidx/media3/common/Format$Builder;)I

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Landroidx/media3/common/Format;->drmInitData:Landroidx/media3/common/DrmInitData;

    if-eqz v0, :cond_a

    .line 1249
    iput v1, p0, Landroidx/media3/common/Format;->cryptoType:I

    goto :goto_9

    .line 1251
    :cond_a
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$4200(Landroidx/media3/common/Format$Builder;)I

    move-result v0

    iput v0, p0, Landroidx/media3/common/Format;->cryptoType:I

    .line 1253
    :goto_9
    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/common/Format$Builder;Landroidx/media3/common/Format$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/media3/common/Format$Builder;
    .param p2, "x1"    # Landroidx/media3/common/Format$1;

    .line 134
    invoke-direct {p0, p1}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    return-void
.end method

.method private static defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .line 1826
    .local p0, "value":Ljava/lang/Object;, "TT;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    return-object v0
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Format;
    .locals 8
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 1731
    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 1732
    .local v0, "builder":Landroidx/media3/common/Format$Builder;
    invoke-static {p0}, Landroidx/media3/common/util/BundleCollectionUtil;->ensureClassLoader(Landroid/os/Bundle;)V

    .line 1733
    sget-object v1, Landroidx/media3/common/Format;->FIELD_ID:Ljava/lang/String;

    .line 1734
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroidx/media3/common/Format;->DEFAULT:Landroidx/media3/common/Format;

    iget-object v2, v2, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    invoke-static {v1, v2}, Landroidx/media3/common/Format;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    sget-object v2, Landroidx/media3/common/Format;->FIELD_LABEL:Ljava/lang/String;

    .line 1735
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroidx/media3/common/Format;->DEFAULT:Landroidx/media3/common/Format;

    iget-object v3, v3, Landroidx/media3/common/Format;->label:Ljava/lang/String;

    invoke-static {v2, v3}, Landroidx/media3/common/Format;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setLabel(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 1736
    sget-object v1, Landroidx/media3/common/Format;->FIELD_LABELS:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1738
    .local v1, "labelsBundles":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    if-nez v1, :cond_0

    .line 1739
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    goto :goto_0

    .line 1740
    :cond_0
    new-instance v2, Landroidx/media3/common/Format$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Landroidx/media3/common/Format$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v2, v1}, Landroidx/media3/common/util/BundleCollectionUtil;->fromBundleList(Lcom/google/common/base/Function;Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    :goto_0
    nop

    .line 1741
    .local v2, "labels":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Label;>;"
    nop

    .line 1742
    invoke-virtual {v0, v2}, Landroidx/media3/common/Format$Builder;->setLabels(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    sget-object v4, Landroidx/media3/common/Format;->FIELD_LANGUAGE:Ljava/lang/String;

    .line 1743
    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroidx/media3/common/Format;->DEFAULT:Landroidx/media3/common/Format;

    iget-object v5, v5, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    invoke-static {v4, v5}, Landroidx/media3/common/Format;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    sget-object v4, Landroidx/media3/common/Format;->FIELD_SELECTION_FLAGS:Ljava/lang/String;

    sget-object v5, Landroidx/media3/common/Format;->DEFAULT:Landroidx/media3/common/Format;

    iget v5, v5, Landroidx/media3/common/Format;->selectionFlags:I

    .line 1744
    invoke-virtual {p0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/media3/common/Format$Builder;->setSelectionFlags(I)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    sget-object v4, Landroidx/media3/common/Format;->FIELD_ROLE_FLAGS:Ljava/lang/String;

    sget-object v5, Landroidx/media3/common/Format;->DEFAULT:Landroidx/media3/common/Format;

    iget v5, v5, Landroidx/media3/common/Format;->roleFlags:I

    .line 1745
    invoke-virtual {p0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/media3/common/Format$Builder;->setRoleFlags(I)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    sget-object v4, Landroidx/media3/common/Format;->FIELD_AUXILIARY_TRACK_TYPE:Ljava/lang/String;

    sget-object v5, Landroidx/media3/common/Format;->DEFAULT:Landroidx/media3/common/Format;

    iget v5, v5, Landroidx/media3/common/Format;->auxiliaryTrackType:I

    .line 1747
    invoke-virtual {p0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 1746
    invoke-virtual {v3, v4}, Landroidx/media3/common/Format$Builder;->setAuxiliaryTrackType(I)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    sget-object v4, Landroidx/media3/common/Format;->FIELD_AVERAGE_BITRATE:Ljava/lang/String;

    sget-object v5, Landroidx/media3/common/Format;->DEFAULT:Landroidx/media3/common/Format;

    iget v5, v5, Landroidx/media3/common/Format;->averageBitrate:I

    .line 1748
    invoke-virtual {p0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/media3/common/Format$Builder;->setAverageBitrate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    sget-object v4, Landroidx/media3/common/Format;->FIELD_PEAK_BITRATE:Ljava/lang/String;

    sget-object v5, Landroidx/media3/common/Format;->DEFAULT:Landroidx/media3/common/Format;

    iget v5, v5, Landroidx/media3/common/Format;->peakBitrate:I

    .line 1749
    invoke-virtual {p0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/media3/common/Format$Builder;->setPeakBitrate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    sget-object v4, Landroidx/media3/common/Format;->FIELD_CODECS:Ljava/lang/String;

    .line 1750
    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroidx/media3/common/Format;->DEFAULT:Landroidx/media3/common/Format;

    iget-object v5, v5, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    invoke-static {v4, v5}, Landroidx/media3/common/Format;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroidx/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    sget-object v4, Landroidx/media3/common/Format;->FIELD_PRIMARY_TRACK_GROUP_ID:Ljava/lang/String;

    .line 1753
    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroidx/media3/common/Format;->DEFAULT:Landroidx/media3/common/Format;

    iget-object v5, v5, Landroidx/media3/common/Format;->primaryTrackGroupId:Ljava/lang/String;

    .line 1752
    invoke-static {v4, v5}, Landroidx/media3/common/Format;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1751
    invoke-virtual {v3, v4}, Landroidx/media3/common/Format$Builder;->setPrimaryTrackGroupId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    sget-object v4, Landroidx/media3/common/Format;->FIELD_CONTAINER_MIME_TYPE:Ljava/lang/String;

    .line 1756
    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroidx/media3/common/Format;->DEFAULT:Landroidx/media3/common/Format;

    iget-object v5, v5, Landroidx/media3/common/Format;->containerMimeType:Ljava/lang/String;

    invoke-static {v4, v5}, Landroidx/media3/common/Format;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1755
    invoke-virtual {v3, v4}, Landroidx/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    sget-object v4, Landroidx/media3/common/Format;->FIELD_SAMPLE_MIME_TYPE:Ljava/lang/String;

    .line 1759
    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroidx/media3/common/Format;->DEFAULT:Landroidx/media3/common/Format;

    iget-object v5, v5, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v4, v5}, Landroidx/media3/common/Format;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1758
    invoke-virtual {v3, v4}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    sget-object v4, Landroidx/media3/common/Format;->FIELD_MAX_INPUT_SIZE:Ljava/lang/String;

    sget-object v5, Landroidx/media3/common/Format;->DEFAULT:Landroidx/media3/common/Format;

    iget v5, v5, Landroidx/media3/common/Format;->maxInputSize:I

    .line 1760
    invoke-virtual {p0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/media3/common/Format$Builder;->setMaxInputSize(I)Landroidx/media3/common/Format$Builder;

    .line 1762
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1763
    .local v3, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v4, 0x0

    .line 1764
    .local v4, "i":I
    :goto_1
    invoke-static {v4}, Landroidx/media3/common/Format;->keyForInitializationData(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v5

    .line 1765
    .local v5, "data":[B
    if-nez v5, :cond_2

    .line 1766
    nop

    .line 1770
    .end local v4    # "i":I
    .end local v5    # "data":[B
    nop

    .line 1771
    invoke-virtual {v0, v3}, Landroidx/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    sget-object v5, Landroidx/media3/common/Format;->FIELD_DRM_INIT_DATA:Ljava/lang/String;

    .line 1772
    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroidx/media3/common/DrmInitData;

    invoke-virtual {v4, v5}, Landroidx/media3/common/Format$Builder;->setDrmInitData(Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    sget-object v5, Landroidx/media3/common/Format;->FIELD_SUBSAMPLE_OFFSET_US:Ljava/lang/String;

    sget-object v6, Landroidx/media3/common/Format;->DEFAULT:Landroidx/media3/common/Format;

    iget-wide v6, v6, Landroidx/media3/common/Format;->subsampleOffsetUs:J

    .line 1773
    invoke-virtual {p0, v5, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroidx/media3/common/Format$Builder;->setSubsampleOffsetUs(J)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    sget-object v5, Landroidx/media3/common/Format;->FIELD_WIDTH:Ljava/lang/String;

    sget-object v6, Landroidx/media3/common/Format;->DEFAULT:Landroidx/media3/common/Format;

    iget v6, v6, Landroidx/media3/common/Format;->width:I

    .line 1775
    invoke-virtual {p0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/media3/common/Format$Builder;->setWidth(I)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    sget-object v5, Landroidx/media3/common/Format;->FIELD_HEIGHT:Ljava/lang/String;

    sget-object v6, Landroidx/media3/common/Format;->DEFAULT:Landroidx/media3/common/Format;

    iget v6, v6, Landroidx/media3/common/Format;->height:I

    .line 1776
    invoke-virtual {p0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/media3/common/Format$Builder;->setHeight(I)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    sget-object v5, Landroidx/media3/common/Format;->FIELD_DECODED_WIDTH:Ljava/lang/String;

    sget-object v6, Landroidx/media3/common/Format;->DEFAULT:Landroidx/media3/common/Format;

    iget v6, v6, Landroidx/media3/common/Format;->decodedWidth:I

    .line 1777
    invoke-virtual {p0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/media3/common/Format$Builder;->setDecodedWidth(I)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    sget-object v5, Landroidx/media3/common/Format;->FIELD_DECODED_HEIGHT:Ljava/lang/String;

    sget-object v6, Landroidx/media3/common/Format;->DEFAULT:Landroidx/media3/common/Format;

    iget v6, v6, Landroidx/media3/common/Format;->decodedHeight:I

    .line 1778
    invoke-virtual {p0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/media3/common/Format$Builder;->setDecodedHeight(I)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    sget-object v5, Landroidx/media3/common/Format;->FIELD_FRAME_RATE:Ljava/lang/String;

    sget-object v6, Landroidx/media3/common/Format;->DEFAULT:Landroidx/media3/common/Format;

    iget v6, v6, Landroidx/media3/common/Format;->frameRate:F

    .line 1779
    invoke-virtual {p0, v5, v6}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/media3/common/Format$Builder;->setFrameRate(F)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    sget-object v5, Landroidx/media3/common/Format;->FIELD_ROTATION_DEGREES:Ljava/lang/String;

    sget-object v6, Landroidx/media3/common/Format;->DEFAULT:Landroidx/media3/common/Format;

    iget v6, v6, Landroidx/media3/common/Format;->rotationDegrees:I

    .line 1780
    invoke-virtual {p0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/media3/common/Format$Builder;->setRotationDegrees(I)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    sget-object v5, Landroidx/media3/common/Format;->FIELD_PIXEL_WIDTH_HEIGHT_RATIO:Ljava/lang/String;

    sget-object v6, Landroidx/media3/common/Format;->DEFAULT:Landroidx/media3/common/Format;

    iget v6, v6, Landroidx/media3/common/Format;->pixelWidthHeightRatio:F

    .line 1782
    invoke-virtual {p0, v5, v6}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v5

    .line 1781
    invoke-virtual {v4, v5}, Landroidx/media3/common/Format$Builder;->setPixelWidthHeightRatio(F)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    sget-object v5, Landroidx/media3/common/Format;->FIELD_PROJECTION_DATA:Ljava/lang/String;

    .line 1783
    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/media3/common/Format$Builder;->setProjectionData([B)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    sget-object v5, Landroidx/media3/common/Format;->FIELD_STEREO_MODE:Ljava/lang/String;

    sget-object v6, Landroidx/media3/common/Format;->DEFAULT:Landroidx/media3/common/Format;

    iget v6, v6, Landroidx/media3/common/Format;->stereoMode:I

    .line 1784
    invoke-virtual {p0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/media3/common/Format$Builder;->setStereoMode(I)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    sget-object v5, Landroidx/media3/common/Format;->FIELD_MAX_SUB_LAYERS:Ljava/lang/String;

    sget-object v6, Landroidx/media3/common/Format;->DEFAULT:Landroidx/media3/common/Format;

    iget v6, v6, Landroidx/media3/common/Format;->maxSubLayers:I

    .line 1785
    invoke-virtual {p0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/media3/common/Format$Builder;->setMaxSubLayers(I)Landroidx/media3/common/Format$Builder;

    .line 1786
    sget-object v4, Landroidx/media3/common/Format;->FIELD_COLOR_INFO:Ljava/lang/String;

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 1787
    .local v4, "colorInfoBundle":Landroid/os/Bundle;
    if-eqz v4, :cond_1

    .line 1788
    invoke-static {v4}, Landroidx/media3/common/ColorInfo;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/ColorInfo;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroidx/media3/common/Format$Builder;->setColorInfo(Landroidx/media3/common/ColorInfo;)Landroidx/media3/common/Format$Builder;

    .line 1791
    :cond_1
    sget-object v5, Landroidx/media3/common/Format;->FIELD_CHANNEL_COUNT:Ljava/lang/String;

    sget-object v6, Landroidx/media3/common/Format;->DEFAULT:Landroidx/media3/common/Format;

    iget v6, v6, Landroidx/media3/common/Format;->channelCount:I

    .line 1792
    invoke-virtual {p0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    sget-object v6, Landroidx/media3/common/Format;->FIELD_SAMPLE_RATE:Ljava/lang/String;

    sget-object v7, Landroidx/media3/common/Format;->DEFAULT:Landroidx/media3/common/Format;

    iget v7, v7, Landroidx/media3/common/Format;->sampleRate:I

    .line 1793
    invoke-virtual {p0, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    sget-object v6, Landroidx/media3/common/Format;->FIELD_PCM_ENCODING:Ljava/lang/String;

    sget-object v7, Landroidx/media3/common/Format;->DEFAULT:Landroidx/media3/common/Format;

    iget v7, v7, Landroidx/media3/common/Format;->pcmEncoding:I

    .line 1794
    invoke-virtual {p0, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroidx/media3/common/Format$Builder;->setPcmEncoding(I)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    sget-object v6, Landroidx/media3/common/Format;->FIELD_ENCODER_DELAY:Ljava/lang/String;

    sget-object v7, Landroidx/media3/common/Format;->DEFAULT:Landroidx/media3/common/Format;

    iget v7, v7, Landroidx/media3/common/Format;->encoderDelay:I

    .line 1795
    invoke-virtual {p0, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroidx/media3/common/Format$Builder;->setEncoderDelay(I)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    sget-object v6, Landroidx/media3/common/Format;->FIELD_ENCODER_PADDING:Ljava/lang/String;

    sget-object v7, Landroidx/media3/common/Format;->DEFAULT:Landroidx/media3/common/Format;

    iget v7, v7, Landroidx/media3/common/Format;->encoderPadding:I

    .line 1796
    invoke-virtual {p0, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroidx/media3/common/Format$Builder;->setEncoderPadding(I)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    sget-object v6, Landroidx/media3/common/Format;->FIELD_ACCESSIBILITY_CHANNEL:Ljava/lang/String;

    sget-object v7, Landroidx/media3/common/Format;->DEFAULT:Landroidx/media3/common/Format;

    iget v7, v7, Landroidx/media3/common/Format;->accessibilityChannel:I

    .line 1799
    invoke-virtual {p0, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 1798
    invoke-virtual {v5, v6}, Landroidx/media3/common/Format$Builder;->setAccessibilityChannel(I)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    sget-object v6, Landroidx/media3/common/Format;->FIELD_TILE_COUNT_HORIZONTAL:Ljava/lang/String;

    sget-object v7, Landroidx/media3/common/Format;->DEFAULT:Landroidx/media3/common/Format;

    iget v7, v7, Landroidx/media3/common/Format;->tileCountHorizontal:I

    .line 1802
    invoke-virtual {p0, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 1801
    invoke-virtual {v5, v6}, Landroidx/media3/common/Format$Builder;->setTileCountHorizontal(I)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    sget-object v6, Landroidx/media3/common/Format;->FIELD_TILE_COUNT_VERTICAL:Ljava/lang/String;

    sget-object v7, Landroidx/media3/common/Format;->DEFAULT:Landroidx/media3/common/Format;

    iget v7, v7, Landroidx/media3/common/Format;->tileCountVertical:I

    .line 1803
    invoke-virtual {p0, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroidx/media3/common/Format$Builder;->setTileCountVertical(I)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    sget-object v6, Landroidx/media3/common/Format;->FIELD_CRYPTO_TYPE:Ljava/lang/String;

    sget-object v7, Landroidx/media3/common/Format;->DEFAULT:Landroidx/media3/common/Format;

    iget v7, v7, Landroidx/media3/common/Format;->cryptoType:I

    .line 1805
    invoke-virtual {p0, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroidx/media3/common/Format$Builder;->setCryptoType(I)Landroidx/media3/common/Format$Builder;

    .line 1807
    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v5

    return-object v5

    .line 1768
    .local v4, "i":I
    .restart local v5    # "data":[B
    :cond_2
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1763
    .end local v5    # "data":[B
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1
.end method

.method private static getDefaultLabel(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "language"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/Label;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1830
    .local p0, "labels":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Label;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/Label;

    .line 1831
    .local v1, "l":Landroidx/media3/common/Label;
    iget-object v2, v1, Landroidx/media3/common/Label;->language:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1832
    iget-object v0, v1, Landroidx/media3/common/Label;->value:Ljava/lang/String;

    return-object v0

    .line 1834
    .end local v1    # "l":Landroidx/media3/common/Label;
    :cond_0
    goto :goto_0

    .line 1835
    :cond_1
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/Label;

    iget-object v0, v0, Landroidx/media3/common/Label;->value:Ljava/lang/String;

    return-object v0
.end method

.method private static isLabelPartOfLabels(Landroidx/media3/common/Format$Builder;)Z
    .locals 4
    .param p0, "builder"    # Landroidx/media3/common/Format$Builder;

    .line 1169
    invoke-static {p0}, Landroidx/media3/common/Format$Builder;->access$100(Landroidx/media3/common/Format$Builder;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroidx/media3/common/Format$Builder;->access$200(Landroidx/media3/common/Format$Builder;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1170
    return v1

    .line 1172
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {p0}, Landroidx/media3/common/Format$Builder;->access$100(Landroidx/media3/common/Format$Builder;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1173
    invoke-static {p0}, Landroidx/media3/common/Format$Builder;->access$100(Landroidx/media3/common/Format$Builder;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/Label;

    iget-object v2, v2, Landroidx/media3/common/Label;->value:Ljava/lang/String;

    invoke-static {p0}, Landroidx/media3/common/Format$Builder;->access$200(Landroidx/media3/common/Format$Builder;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1174
    return v1

    .line 1172
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1177
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private static keyForInitializationData(I)Ljava/lang/String;
    .locals 2
    .param p0, "initialisationDataIndex"    # I

    .line 1811
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroidx/media3/common/Format;->FIELD_INITIALIZATION_DATA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1813
    const/16 v1, 0x24

    invoke-static {p0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1811
    return-object v0
.end method

.method static synthetic lambda$toLogString$0(Landroidx/media3/common/Label;)Ljava/lang/String;
    .locals 2
    .param p0, "l"    # Landroidx/media3/common/Label;

    .line 1598
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroidx/media3/common/Label;->language:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/common/Label;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toLogString(Landroidx/media3/common/Format;)Ljava/lang/String;
    .locals 10
    .param p0, "format"    # Landroidx/media3/common/Format;

    .line 1524
    if-nez p0, :cond_0

    .line 1525
    const-string/jumbo v0, "null"

    return-object v0

    .line 1527
    :cond_0
    const/16 v0, 0x2c

    invoke-static {v0}, Lcom/google/common/base/Joiner;->on(C)Lcom/google/common/base/Joiner;

    move-result-object v0

    .line 1528
    .local v0, "commaJoiner":Lcom/google/common/base/Joiner;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1529
    .local v1, "builder":Ljava/lang/StringBuilder;
    const-string v2, "id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mimeType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1530
    iget-object v2, p0, Landroidx/media3/common/Format;->containerMimeType:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1531
    const-string v2, ", container="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroidx/media3/common/Format;->containerMimeType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1533
    :cond_1
    iget-object v2, p0, Landroidx/media3/common/Format;->primaryTrackGroupId:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 1534
    const-string v2, ", primaryGroupId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroidx/media3/common/Format;->primaryTrackGroupId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1536
    :cond_2
    iget v2, p0, Landroidx/media3/common/Format;->bitrate:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 1537
    const-string v2, ", bitrate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Landroidx/media3/common/Format;->bitrate:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1539
    :cond_3
    iget-object v2, p0, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 1540
    const-string v2, ", codecs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1542
    :cond_4
    iget-object v2, p0, Landroidx/media3/common/Format;->drmInitData:Landroidx/media3/common/DrmInitData;

    if-eqz v2, :cond_b

    .line 1543
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1544
    .local v2, "schemes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v5, p0, Landroidx/media3/common/Format;->drmInitData:Landroidx/media3/common/DrmInitData;

    iget v5, v5, Landroidx/media3/common/DrmInitData;->schemeDataCount:I

    if-ge v4, v5, :cond_a

    .line 1545
    iget-object v5, p0, Landroidx/media3/common/Format;->drmInitData:Landroidx/media3/common/DrmInitData;

    invoke-virtual {v5, v4}, Landroidx/media3/common/DrmInitData;->get(I)Landroidx/media3/common/DrmInitData$SchemeData;

    move-result-object v5

    iget-object v5, v5, Landroidx/media3/common/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    .line 1546
    .local v5, "schemeUuid":Ljava/util/UUID;
    sget-object v6, Landroidx/media3/common/C;->COMMON_PSSH_UUID:Ljava/util/UUID;

    invoke-virtual {v5, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1547
    const-string v6, "cenc"

    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1548
    :cond_5
    sget-object v6, Landroidx/media3/common/C;->CLEARKEY_UUID:Ljava/util/UUID;

    invoke-virtual {v5, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1549
    const-string v6, "clearkey"

    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1550
    :cond_6
    sget-object v6, Landroidx/media3/common/C;->PLAYREADY_UUID:Ljava/util/UUID;

    invoke-virtual {v5, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1551
    const-string/jumbo v6, "playready"

    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1552
    :cond_7
    sget-object v6, Landroidx/media3/common/C;->WIDEVINE_UUID:Ljava/util/UUID;

    invoke-virtual {v5, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1553
    const-string/jumbo v6, "widevine"

    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1554
    :cond_8
    sget-object v6, Landroidx/media3/common/C;->UUID_NIL:Ljava/util/UUID;

    invoke-virtual {v5, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1555
    const-string/jumbo v6, "universal"

    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1557
    :cond_9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unknown ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1544
    .end local v5    # "schemeUuid":Ljava/util/UUID;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1560
    .end local v4    # "i":I
    :cond_a
    const-string v4, ", drm=["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1561
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Joiner;->appendTo(Ljava/lang/StringBuilder;Ljava/lang/Iterable;)Ljava/lang/StringBuilder;

    .line 1562
    const/16 v4, 0x5d

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1564
    .end local v2    # "schemes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_b
    iget v2, p0, Landroidx/media3/common/Format;->width:I

    const-string/jumbo v4, "x"

    if-eq v2, v3, :cond_c

    iget v2, p0, Landroidx/media3/common/Format;->height:I

    if-eq v2, v3, :cond_c

    .line 1565
    const-string v2, ", res="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Landroidx/media3/common/Format;->width:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Landroidx/media3/common/Format;->height:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1567
    :cond_c
    iget v2, p0, Landroidx/media3/common/Format;->decodedWidth:I

    if-eq v2, v3, :cond_d

    iget v2, p0, Landroidx/media3/common/Format;->decodedHeight:I

    if-eq v2, v3, :cond_d

    .line 1568
    nop

    .line 1569
    const-string v2, ", decRes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Landroidx/media3/common/Format;->decodedWidth:I

    .line 1570
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1571
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Landroidx/media3/common/Format;->decodedHeight:I

    .line 1572
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1574
    :cond_d
    iget v2, p0, Landroidx/media3/common/Format;->pixelWidthHeightRatio:F

    float-to-double v4, v2

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide v8, 0x3f50624dd2f1a9fcL    # 0.001

    invoke-static/range {v4 .. v9}, Lcom/google/common/math/DoubleMath;->fuzzyEquals(DDD)Z

    move-result v2

    if-nez v2, :cond_e

    .line 1575
    const-string v2, ", par="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Landroidx/media3/common/Format;->pixelWidthHeightRatio:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%.3f"

    invoke-static {v5, v4}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1577
    :cond_e
    iget-object v2, p0, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    if-eqz v2, :cond_f

    iget-object v2, p0, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    invoke-virtual {v2}, Landroidx/media3/common/ColorInfo;->isValid()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1578
    const-string v2, ", color="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    invoke-virtual {v4}, Landroidx/media3/common/ColorInfo;->toLogString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1580
    :cond_f
    iget v2, p0, Landroidx/media3/common/Format;->frameRate:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_10

    .line 1581
    const-string v2, ", fps="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Landroidx/media3/common/Format;->frameRate:F

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1583
    :cond_10
    iget v2, p0, Landroidx/media3/common/Format;->maxSubLayers:I

    if-eq v2, v3, :cond_11

    .line 1584
    const-string v2, ", maxSubLayers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Landroidx/media3/common/Format;->maxSubLayers:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1586
    :cond_11
    iget v2, p0, Landroidx/media3/common/Format;->channelCount:I

    if-eq v2, v3, :cond_12

    .line 1587
    const-string v2, ", channels="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Landroidx/media3/common/Format;->channelCount:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1589
    :cond_12
    iget v2, p0, Landroidx/media3/common/Format;->sampleRate:I

    if-eq v2, v3, :cond_13

    .line 1590
    const-string v2, ", sample_rate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroidx/media3/common/Format;->sampleRate:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1592
    :cond_13
    iget-object v2, p0, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    if-eqz v2, :cond_14

    .line 1593
    const-string v2, ", language="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1595
    :cond_14
    iget-object v2, p0, Landroidx/media3/common/Format;->labels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const-string v3, "]"

    if-nez v2, :cond_15

    .line 1596
    const-string v2, ", labels=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1597
    iget-object v2, p0, Landroidx/media3/common/Format;->labels:Ljava/util/List;

    new-instance v4, Landroidx/media3/common/Format$$ExternalSyntheticLambda2;

    invoke-direct {v4}, Landroidx/media3/common/Format$$ExternalSyntheticLambda2;-><init>()V

    .line 1598
    invoke-static {v2, v4}, Lcom/google/common/collect/Lists;->transform(Ljava/util/List;Lcom/google/common/base/Function;)Ljava/util/List;

    move-result-object v2

    .line 1597
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Joiner;->appendTo(Ljava/lang/StringBuilder;Ljava/lang/Iterable;)Ljava/lang/StringBuilder;

    .line 1599
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1601
    :cond_15
    iget v2, p0, Landroidx/media3/common/Format;->selectionFlags:I

    if-eqz v2, :cond_16

    .line 1602
    const-string v2, ", selectionFlags=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1603
    iget v2, p0, Landroidx/media3/common/Format;->selectionFlags:I

    invoke-static {v2}, Landroidx/media3/common/util/Util;->getSelectionFlagStrings(I)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Joiner;->appendTo(Ljava/lang/StringBuilder;Ljava/lang/Iterable;)Ljava/lang/StringBuilder;

    .line 1604
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1606
    :cond_16
    iget v2, p0, Landroidx/media3/common/Format;->roleFlags:I

    if-eqz v2, :cond_17

    .line 1607
    const-string v2, ", roleFlags=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1608
    iget v2, p0, Landroidx/media3/common/Format;->roleFlags:I

    invoke-static {v2}, Landroidx/media3/common/util/Util;->getRoleFlagStrings(I)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Joiner;->appendTo(Ljava/lang/StringBuilder;Ljava/lang/Iterable;)Ljava/lang/StringBuilder;

    .line 1609
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1611
    :cond_17
    iget-object v2, p0, Landroidx/media3/common/Format;->customData:Ljava/lang/Object;

    if-eqz v2, :cond_18

    .line 1612
    const-string v2, ", customData="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroidx/media3/common/Format;->customData:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1614
    :cond_18
    iget v2, p0, Landroidx/media3/common/Format;->roleFlags:I

    const v3, 0x8000

    and-int/2addr v2, v3

    if-eqz v2, :cond_19

    .line 1615
    nop

    .line 1616
    const-string v2, ", auxiliaryTrackType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroidx/media3/common/Format;->auxiliaryTrackType:I

    .line 1617
    invoke-static {v3}, Landroidx/media3/common/util/Util;->getAuxiliaryTrackTypeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1619
    :cond_19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public buildUpon()Landroidx/media3/common/Format$Builder;
    .locals 2

    .line 1258
    new-instance v0, Landroidx/media3/common/Format$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/common/Format$Builder;-><init>(Landroidx/media3/common/Format;Landroidx/media3/common/Format$1;)V

    return-object v0
.end method

.method public copyWithCryptoType(I)Landroidx/media3/common/Format;
    .locals 1
    .param p1, "cryptoType"    # I

    .line 1344
    invoke-virtual {p0}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/media3/common/Format$Builder;->setCryptoType(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1446
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 1447
    return v0

    .line 1449
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    .line 1452
    :cond_1
    move-object v2, p1

    check-cast v2, Landroidx/media3/common/Format;

    .line 1453
    .local v2, "other":Landroidx/media3/common/Format;
    iget v3, p0, Landroidx/media3/common/Format;->hashCode:I

    if-eqz v3, :cond_2

    iget v3, v2, Landroidx/media3/common/Format;->hashCode:I

    if-eqz v3, :cond_2

    iget v3, p0, Landroidx/media3/common/Format;->hashCode:I

    iget v4, v2, Landroidx/media3/common/Format;->hashCode:I

    if-eq v3, v4, :cond_2

    .line 1454
    return v1

    .line 1457
    :cond_2
    iget v3, p0, Landroidx/media3/common/Format;->selectionFlags:I

    iget v4, v2, Landroidx/media3/common/Format;->selectionFlags:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroidx/media3/common/Format;->roleFlags:I

    iget v4, v2, Landroidx/media3/common/Format;->roleFlags:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroidx/media3/common/Format;->auxiliaryTrackType:I

    iget v4, v2, Landroidx/media3/common/Format;->auxiliaryTrackType:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroidx/media3/common/Format;->averageBitrate:I

    iget v4, v2, Landroidx/media3/common/Format;->averageBitrate:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroidx/media3/common/Format;->peakBitrate:I

    iget v4, v2, Landroidx/media3/common/Format;->peakBitrate:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroidx/media3/common/Format;->maxInputSize:I

    iget v4, v2, Landroidx/media3/common/Format;->maxInputSize:I

    if-ne v3, v4, :cond_3

    iget-wide v3, p0, Landroidx/media3/common/Format;->subsampleOffsetUs:J

    iget-wide v5, v2, Landroidx/media3/common/Format;->subsampleOffsetUs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget v3, p0, Landroidx/media3/common/Format;->width:I

    iget v4, v2, Landroidx/media3/common/Format;->width:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroidx/media3/common/Format;->height:I

    iget v4, v2, Landroidx/media3/common/Format;->height:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroidx/media3/common/Format;->decodedWidth:I

    iget v4, v2, Landroidx/media3/common/Format;->decodedWidth:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroidx/media3/common/Format;->decodedHeight:I

    iget v4, v2, Landroidx/media3/common/Format;->decodedHeight:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroidx/media3/common/Format;->rotationDegrees:I

    iget v4, v2, Landroidx/media3/common/Format;->rotationDegrees:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroidx/media3/common/Format;->stereoMode:I

    iget v4, v2, Landroidx/media3/common/Format;->stereoMode:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroidx/media3/common/Format;->maxSubLayers:I

    iget v4, v2, Landroidx/media3/common/Format;->maxSubLayers:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroidx/media3/common/Format;->channelCount:I

    iget v4, v2, Landroidx/media3/common/Format;->channelCount:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroidx/media3/common/Format;->sampleRate:I

    iget v4, v2, Landroidx/media3/common/Format;->sampleRate:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroidx/media3/common/Format;->pcmEncoding:I

    iget v4, v2, Landroidx/media3/common/Format;->pcmEncoding:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroidx/media3/common/Format;->encoderDelay:I

    iget v4, v2, Landroidx/media3/common/Format;->encoderDelay:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroidx/media3/common/Format;->encoderPadding:I

    iget v4, v2, Landroidx/media3/common/Format;->encoderPadding:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroidx/media3/common/Format;->accessibilityChannel:I

    iget v4, v2, Landroidx/media3/common/Format;->accessibilityChannel:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroidx/media3/common/Format;->tileCountHorizontal:I

    iget v4, v2, Landroidx/media3/common/Format;->tileCountHorizontal:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroidx/media3/common/Format;->tileCountVertical:I

    iget v4, v2, Landroidx/media3/common/Format;->tileCountVertical:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroidx/media3/common/Format;->cryptoType:I

    iget v4, v2, Landroidx/media3/common/Format;->cryptoType:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroidx/media3/common/Format;->frameRate:F

    iget v4, v2, Landroidx/media3/common/Format;->frameRate:F

    .line 1480
    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_3

    iget v3, p0, Landroidx/media3/common/Format;->pixelWidthHeightRatio:F

    iget v4, v2, Landroidx/media3/common/Format;->pixelWidthHeightRatio:F

    .line 1481
    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    iget-object v4, v2, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    .line 1482
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroidx/media3/common/Format;->label:Ljava/lang/String;

    iget-object v4, v2, Landroidx/media3/common/Format;->label:Ljava/lang/String;

    .line 1483
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroidx/media3/common/Format;->labels:Ljava/util/List;

    iget-object v4, v2, Landroidx/media3/common/Format;->labels:Ljava/util/List;

    .line 1484
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    iget-object v4, v2, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    .line 1485
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroidx/media3/common/Format;->primaryTrackGroupId:Ljava/lang/String;

    iget-object v4, v2, Landroidx/media3/common/Format;->primaryTrackGroupId:Ljava/lang/String;

    .line 1486
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroidx/media3/common/Format;->containerMimeType:Ljava/lang/String;

    iget-object v4, v2, Landroidx/media3/common/Format;->containerMimeType:Ljava/lang/String;

    .line 1487
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v4, v2, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 1488
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    iget-object v4, v2, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    .line 1489
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroidx/media3/common/Format;->projectionData:[B

    iget-object v4, v2, Landroidx/media3/common/Format;->projectionData:[B

    .line 1490
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    iget-object v4, v2, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    .line 1491
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    iget-object v4, v2, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    .line 1492
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroidx/media3/common/Format;->drmInitData:Landroidx/media3/common/DrmInitData;

    iget-object v4, v2, Landroidx/media3/common/Format;->drmInitData:Landroidx/media3/common/DrmInitData;

    .line 1493
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1494
    invoke-virtual {p0, v2}, Landroidx/media3/common/Format;->initializationDataEquals(Landroidx/media3/common/Format;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroidx/media3/common/Format;->customData:Ljava/lang/Object;

    iget-object v4, v2, Landroidx/media3/common/Format;->customData:Ljava/lang/Object;

    .line 1495
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1457
    :goto_0
    return v0

    .line 1450
    .end local v2    # "other":Landroidx/media3/common/Format;
    :cond_4
    :goto_1
    return v1
.end method

.method public getPixelCount()I
    .locals 2

    .line 1353
    iget v0, p0, Landroidx/media3/common/Format;->width:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroidx/media3/common/Format;->height:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/media3/common/Format;->width:I

    iget v1, p0, Landroidx/media3/common/Format;->height:I

    mul-int/2addr v1, v0

    :cond_1
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 1390
    iget v0, p0, Landroidx/media3/common/Format;->hashCode:I

    if-nez v0, :cond_9

    .line 1392
    const/16 v0, 0x11

    .line 1393
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v1, v2

    .line 1394
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroidx/media3/common/Format;->label:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    iget-object v2, p0, Landroidx/media3/common/Format;->label:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    .line 1395
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroidx/media3/common/Format;->labels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 1396
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    iget-object v2, p0, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    .line 1397
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroidx/media3/common/Format;->selectionFlags:I

    add-int/2addr v1, v2

    .line 1398
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroidx/media3/common/Format;->roleFlags:I

    add-int/2addr v0, v2

    .line 1399
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroidx/media3/common/Format;->auxiliaryTrackType:I

    add-int/2addr v1, v2

    .line 1400
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroidx/media3/common/Format;->averageBitrate:I

    add-int/2addr v0, v2

    .line 1401
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroidx/media3/common/Format;->peakBitrate:I

    add-int/2addr v1, v2

    .line 1402
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v3

    goto :goto_3

    :cond_3
    iget-object v2, p0, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    .line 1403
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    if-nez v2, :cond_4

    move v2, v3

    goto :goto_4

    :cond_4
    iget-object v2, p0, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    invoke-virtual {v2}, Landroidx/media3/common/Metadata;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v1, v2

    .line 1404
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroidx/media3/common/Format;->customData:Ljava/lang/Object;

    if-nez v2, :cond_5

    move v2, v3

    goto :goto_5

    :cond_5
    iget-object v2, p0, Landroidx/media3/common/Format;->customData:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    .line 1405
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroidx/media3/common/Format;->primaryTrackGroupId:Ljava/lang/String;

    if-nez v2, :cond_6

    move v2, v3

    goto :goto_6

    :cond_6
    iget-object v2, p0, Landroidx/media3/common/Format;->primaryTrackGroupId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v1, v2

    .line 1407
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroidx/media3/common/Format;->containerMimeType:Ljava/lang/String;

    if-nez v2, :cond_7

    move v2, v3

    goto :goto_7

    :cond_7
    iget-object v2, p0, Landroidx/media3/common/Format;->containerMimeType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_7
    add-int/2addr v0, v2

    .line 1409
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    if-nez v2, :cond_8

    goto :goto_8

    :cond_8
    iget-object v2, p0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_8
    add-int/2addr v1, v3

    .line 1410
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroidx/media3/common/Format;->maxInputSize:I

    add-int/2addr v0, v2

    .line 1413
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroidx/media3/common/Format;->subsampleOffsetUs:J

    long-to-int v2, v2

    add-int/2addr v1, v2

    .line 1415
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroidx/media3/common/Format;->width:I

    add-int/2addr v0, v2

    .line 1416
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroidx/media3/common/Format;->height:I

    add-int/2addr v1, v2

    .line 1417
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroidx/media3/common/Format;->decodedWidth:I

    add-int/2addr v0, v2

    .line 1418
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroidx/media3/common/Format;->decodedHeight:I

    add-int/2addr v1, v2

    .line 1419
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroidx/media3/common/Format;->frameRate:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    .line 1420
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroidx/media3/common/Format;->rotationDegrees:I

    add-int/2addr v1, v2

    .line 1421
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroidx/media3/common/Format;->pixelWidthHeightRatio:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    .line 1423
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroidx/media3/common/Format;->stereoMode:I

    add-int/2addr v1, v2

    .line 1425
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroidx/media3/common/Format;->maxSubLayers:I

    add-int/2addr v0, v2

    .line 1427
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroidx/media3/common/Format;->channelCount:I

    add-int/2addr v1, v2

    .line 1428
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroidx/media3/common/Format;->sampleRate:I

    add-int/2addr v0, v2

    .line 1429
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroidx/media3/common/Format;->pcmEncoding:I

    add-int/2addr v1, v2

    .line 1430
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroidx/media3/common/Format;->encoderDelay:I

    add-int/2addr v0, v2

    .line 1431
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroidx/media3/common/Format;->encoderPadding:I

    add-int/2addr v1, v2

    .line 1433
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroidx/media3/common/Format;->accessibilityChannel:I

    add-int/2addr v0, v2

    .line 1435
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroidx/media3/common/Format;->tileCountHorizontal:I

    add-int/2addr v1, v2

    .line 1436
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroidx/media3/common/Format;->tileCountVertical:I

    add-int/2addr v0, v2

    .line 1438
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroidx/media3/common/Format;->cryptoType:I

    add-int/2addr v1, v2

    .line 1439
    .end local v0    # "result":I
    .restart local v1    # "result":I
    iput v1, p0, Landroidx/media3/common/Format;->hashCode:I

    .line 1441
    .end local v1    # "result":I
    :cond_9
    iget v0, p0, Landroidx/media3/common/Format;->hashCode:I

    return v0
.end method

.method public initializationDataEquals(Landroidx/media3/common/Format;)Z
    .locals 4
    .param p1, "other"    # Landroidx/media3/common/Format;

    .line 1508
    iget-object v0, p0, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p1, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 1509
    return v2

    .line 1511
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1512
    iget-object v1, p0, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iget-object v3, p1, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1513
    return v2

    .line 1511
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1516
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 4

    .line 1668
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1669
    .local v0, "bundle":Landroid/os/Bundle;
    sget-object v1, Landroidx/media3/common/Format;->FIELD_ID:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1670
    sget-object v1, Landroidx/media3/common/Format;->FIELD_LABEL:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/common/Format;->label:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1671
    sget-object v1, Landroidx/media3/common/Format;->FIELD_LABELS:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/common/Format;->labels:Ljava/util/List;

    new-instance v3, Landroidx/media3/common/Format$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Landroidx/media3/common/Format$$ExternalSyntheticLambda0;-><init>()V

    .line 1672
    invoke-static {v2, v3}, Landroidx/media3/common/util/BundleCollectionUtil;->toBundleArrayList(Ljava/util/Collection;Lcom/google/common/base/Function;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1671
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1673
    sget-object v1, Landroidx/media3/common/Format;->FIELD_LANGUAGE:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1674
    sget-object v1, Landroidx/media3/common/Format;->FIELD_SELECTION_FLAGS:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/Format;->selectionFlags:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1675
    sget-object v1, Landroidx/media3/common/Format;->FIELD_ROLE_FLAGS:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/Format;->roleFlags:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1676
    iget v1, p0, Landroidx/media3/common/Format;->auxiliaryTrackType:I

    sget-object v2, Landroidx/media3/common/Format;->DEFAULT:Landroidx/media3/common/Format;

    iget v2, v2, Landroidx/media3/common/Format;->auxiliaryTrackType:I

    if-eq v1, v2, :cond_0

    .line 1677
    sget-object v1, Landroidx/media3/common/Format;->FIELD_AUXILIARY_TRACK_TYPE:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/Format;->auxiliaryTrackType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1679
    :cond_0
    sget-object v1, Landroidx/media3/common/Format;->FIELD_AVERAGE_BITRATE:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/Format;->averageBitrate:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1680
    sget-object v1, Landroidx/media3/common/Format;->FIELD_PEAK_BITRATE:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/Format;->peakBitrate:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1681
    sget-object v1, Landroidx/media3/common/Format;->FIELD_CODECS:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1682
    iget-object v1, p0, Landroidx/media3/common/Format;->primaryTrackGroupId:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1683
    sget-object v1, Landroidx/media3/common/Format;->FIELD_PRIMARY_TRACK_GROUP_ID:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/common/Format;->primaryTrackGroupId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1687
    :cond_1
    sget-object v1, Landroidx/media3/common/Format;->FIELD_CONTAINER_MIME_TYPE:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/common/Format;->containerMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1689
    sget-object v1, Landroidx/media3/common/Format;->FIELD_SAMPLE_MIME_TYPE:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1690
    sget-object v1, Landroidx/media3/common/Format;->FIELD_MAX_INPUT_SIZE:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/Format;->maxInputSize:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1691
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1692
    invoke-static {v1}, Landroidx/media3/common/Format;->keyForInitializationData(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1691
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1696
    .end local v1    # "i":I
    :cond_2
    sget-object v1, Landroidx/media3/common/Format;->FIELD_DRM_INIT_DATA:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/common/Format;->drmInitData:Landroidx/media3/common/DrmInitData;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1697
    sget-object v1, Landroidx/media3/common/Format;->FIELD_SUBSAMPLE_OFFSET_US:Ljava/lang/String;

    iget-wide v2, p0, Landroidx/media3/common/Format;->subsampleOffsetUs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1699
    sget-object v1, Landroidx/media3/common/Format;->FIELD_WIDTH:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/Format;->width:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1700
    sget-object v1, Landroidx/media3/common/Format;->FIELD_HEIGHT:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/Format;->height:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1701
    sget-object v1, Landroidx/media3/common/Format;->FIELD_DECODED_WIDTH:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/Format;->decodedWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1702
    sget-object v1, Landroidx/media3/common/Format;->FIELD_DECODED_HEIGHT:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/Format;->decodedHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1703
    sget-object v1, Landroidx/media3/common/Format;->FIELD_FRAME_RATE:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/Format;->frameRate:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1704
    sget-object v1, Landroidx/media3/common/Format;->FIELD_ROTATION_DEGREES:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/Format;->rotationDegrees:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1705
    sget-object v1, Landroidx/media3/common/Format;->FIELD_PIXEL_WIDTH_HEIGHT_RATIO:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/Format;->pixelWidthHeightRatio:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1706
    sget-object v1, Landroidx/media3/common/Format;->FIELD_PROJECTION_DATA:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/common/Format;->projectionData:[B

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1707
    sget-object v1, Landroidx/media3/common/Format;->FIELD_STEREO_MODE:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/Format;->stereoMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1708
    iget-object v1, p0, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    if-eqz v1, :cond_3

    .line 1709
    sget-object v1, Landroidx/media3/common/Format;->FIELD_COLOR_INFO:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    invoke-virtual {v2}, Landroidx/media3/common/ColorInfo;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1711
    :cond_3
    sget-object v1, Landroidx/media3/common/Format;->FIELD_MAX_SUB_LAYERS:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/Format;->maxSubLayers:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1713
    sget-object v1, Landroidx/media3/common/Format;->FIELD_CHANNEL_COUNT:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/Format;->channelCount:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1714
    sget-object v1, Landroidx/media3/common/Format;->FIELD_SAMPLE_RATE:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/Format;->sampleRate:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1715
    sget-object v1, Landroidx/media3/common/Format;->FIELD_PCM_ENCODING:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/Format;->pcmEncoding:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1716
    sget-object v1, Landroidx/media3/common/Format;->FIELD_ENCODER_DELAY:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/Format;->encoderDelay:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1717
    sget-object v1, Landroidx/media3/common/Format;->FIELD_ENCODER_PADDING:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/Format;->encoderPadding:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1719
    sget-object v1, Landroidx/media3/common/Format;->FIELD_ACCESSIBILITY_CHANNEL:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/Format;->accessibilityChannel:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1721
    sget-object v1, Landroidx/media3/common/Format;->FIELD_TILE_COUNT_HORIZONTAL:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/Format;->tileCountHorizontal:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1722
    sget-object v1, Landroidx/media3/common/Format;->FIELD_TILE_COUNT_VERTICAL:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/Format;->tileCountVertical:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1724
    sget-object v1, Landroidx/media3/common/Format;->FIELD_CRYPTO_TYPE:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/Format;->cryptoType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1725
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Format("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroidx/media3/common/Format;->label:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroidx/media3/common/Format;->containerMimeType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroidx/media3/common/Format;->bitrate:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroidx/media3/common/Format;->width:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroidx/media3/common/Format;->height:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroidx/media3/common/Format;->frameRate:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "], ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroidx/media3/common/Format;->channelCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/media3/common/Format;->sampleRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "])"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withManifestFormatInfo(Landroidx/media3/common/Format;)Landroidx/media3/common/Format;
    .locals 18
    .param p1, "manifestFormat"    # Landroidx/media3/common/Format;

    .line 1264
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_0

    .line 1266
    return-object v0

    .line 1269
    :cond_0
    iget-object v2, v0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v2}, Landroidx/media3/common/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v2

    .line 1272
    .local v2, "trackType":I
    iget-object v3, v1, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    .line 1273
    .local v3, "id":Ljava/lang/String;
    iget v4, v1, Landroidx/media3/common/Format;->tileCountHorizontal:I

    .line 1274
    .local v4, "tileCountHorizontal":I
    iget v5, v1, Landroidx/media3/common/Format;->tileCountVertical:I

    .line 1277
    .local v5, "tileCountVertical":I
    iget-object v6, v1, Landroidx/media3/common/Format;->label:Ljava/lang/String;

    if-eqz v6, :cond_1

    iget-object v6, v1, Landroidx/media3/common/Format;->label:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v6, v0, Landroidx/media3/common/Format;->label:Ljava/lang/String;

    .line 1278
    .local v6, "label":Ljava/lang/String;
    :goto_0
    iget-object v7, v1, Landroidx/media3/common/Format;->labels:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, v1, Landroidx/media3/common/Format;->labels:Ljava/util/List;

    goto :goto_1

    :cond_2
    iget-object v7, v0, Landroidx/media3/common/Format;->labels:Ljava/util/List;

    .line 1279
    .local v7, "labels":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Label;>;"
    :goto_1
    iget-object v8, v0, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    .line 1280
    .local v8, "language":Ljava/lang/String;
    const/4 v9, 0x3

    const/4 v10, 0x1

    if-eq v2, v9, :cond_3

    if-ne v2, v10, :cond_4

    :cond_3
    iget-object v9, v1, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    if-eqz v9, :cond_4

    .line 1282
    iget-object v8, v1, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    .line 1287
    :cond_4
    iget v9, v0, Landroidx/media3/common/Format;->averageBitrate:I

    const/4 v11, -0x1

    if-ne v9, v11, :cond_5

    iget v9, v1, Landroidx/media3/common/Format;->averageBitrate:I

    goto :goto_2

    :cond_5
    iget v9, v0, Landroidx/media3/common/Format;->averageBitrate:I

    .line 1288
    .local v9, "averageBitrate":I
    :goto_2
    iget v12, v0, Landroidx/media3/common/Format;->peakBitrate:I

    if-ne v12, v11, :cond_6

    iget v11, v1, Landroidx/media3/common/Format;->peakBitrate:I

    goto :goto_3

    :cond_6
    iget v11, v0, Landroidx/media3/common/Format;->peakBitrate:I

    .line 1289
    .local v11, "peakBitrate":I
    :goto_3
    iget-object v12, v0, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    .line 1290
    .local v12, "codecs":Ljava/lang/String;
    if-nez v12, :cond_7

    .line 1293
    iget-object v13, v1, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    invoke-static {v13, v2}, Landroidx/media3/common/util/Util;->getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    .line 1294
    .local v13, "codecsOfType":Ljava/lang/String;
    invoke-static {v13}, Landroidx/media3/common/util/Util;->splitCodecs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    array-length v14, v14

    if-ne v14, v10, :cond_7

    .line 1295
    move-object v12, v13

    .line 1300
    .end local v13    # "codecsOfType":Ljava/lang/String;
    :cond_7
    iget-object v10, v0, Landroidx/media3/common/Format;->primaryTrackGroupId:Ljava/lang/String;

    if-eqz v10, :cond_8

    .line 1301
    iget-object v10, v0, Landroidx/media3/common/Format;->primaryTrackGroupId:Ljava/lang/String;

    goto :goto_4

    .line 1302
    :cond_8
    iget-object v10, v1, Landroidx/media3/common/Format;->primaryTrackGroupId:Ljava/lang/String;

    :goto_4
    nop

    .line 1306
    .local v10, "primaryTrackGroupId":Ljava/lang/String;
    iget-object v13, v0, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    if-nez v13, :cond_9

    .line 1307
    iget-object v13, v1, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    goto :goto_5

    .line 1308
    :cond_9
    iget-object v13, v0, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    iget-object v14, v1, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    invoke-virtual {v13, v14}, Landroidx/media3/common/Metadata;->copyWithAppendedEntriesFrom(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Metadata;

    move-result-object v13

    :goto_5
    nop

    .line 1310
    .local v13, "metadata":Landroidx/media3/common/Metadata;
    iget v14, v0, Landroidx/media3/common/Format;->frameRate:F

    .line 1311
    .local v14, "frameRate":F
    const/high16 v15, -0x40800000    # -1.0f

    cmpl-float v15, v14, v15

    if-nez v15, :cond_a

    const/4 v15, 0x2

    if-ne v2, v15, :cond_a

    .line 1312
    iget v14, v1, Landroidx/media3/common/Format;->frameRate:F

    .line 1316
    :cond_a
    iget v15, v0, Landroidx/media3/common/Format;->selectionFlags:I

    move/from16 v16, v2

    .end local v2    # "trackType":I
    .local v16, "trackType":I
    iget v2, v1, Landroidx/media3/common/Format;->selectionFlags:I

    or-int/2addr v2, v15

    .line 1317
    .local v2, "selectionFlags":I
    iget v15, v0, Landroidx/media3/common/Format;->roleFlags:I

    move/from16 v17, v15

    iget v15, v1, Landroidx/media3/common/Format;->roleFlags:I

    or-int v15, v17, v15

    .line 1319
    .local v15, "roleFlags":I
    move/from16 v17, v5

    .end local v5    # "tileCountVertical":I
    .local v17, "tileCountVertical":I
    iget-object v5, v1, Landroidx/media3/common/Format;->drmInitData:Landroidx/media3/common/DrmInitData;

    iget-object v1, v0, Landroidx/media3/common/Format;->drmInitData:Landroidx/media3/common/DrmInitData;

    .line 1320
    invoke-static {v5, v1}, Landroidx/media3/common/DrmInitData;->createSessionCreationData(Landroidx/media3/common/DrmInitData;Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/DrmInitData;

    move-result-object v1

    .line 1322
    .local v1, "drmInitData":Landroidx/media3/common/DrmInitData;
    invoke-virtual {v0}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v5

    .line 1323
    invoke-virtual {v5, v3}, Landroidx/media3/common/Format$Builder;->setId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    .line 1324
    invoke-virtual {v5, v6}, Landroidx/media3/common/Format$Builder;->setLabel(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    .line 1325
    invoke-virtual {v5, v7}, Landroidx/media3/common/Format$Builder;->setLabels(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    .line 1326
    invoke-virtual {v5, v8}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    .line 1327
    invoke-virtual {v5, v2}, Landroidx/media3/common/Format$Builder;->setSelectionFlags(I)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    .line 1328
    invoke-virtual {v5, v15}, Landroidx/media3/common/Format$Builder;->setRoleFlags(I)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    .line 1329
    invoke-virtual {v5, v9}, Landroidx/media3/common/Format$Builder;->setAverageBitrate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    .line 1330
    invoke-virtual {v5, v11}, Landroidx/media3/common/Format$Builder;->setPeakBitrate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    .line 1331
    invoke-virtual {v5, v12}, Landroidx/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    .line 1332
    invoke-virtual {v5, v13}, Landroidx/media3/common/Format$Builder;->setMetadata(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    .line 1333
    invoke-virtual {v5, v10}, Landroidx/media3/common/Format$Builder;->setPrimaryTrackGroupId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    .line 1334
    invoke-virtual {v5, v1}, Landroidx/media3/common/Format$Builder;->setDrmInitData(Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    .line 1335
    invoke-virtual {v5, v14}, Landroidx/media3/common/Format$Builder;->setFrameRate(F)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    .line 1336
    invoke-virtual {v5, v4}, Landroidx/media3/common/Format$Builder;->setTileCountHorizontal(I)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    .line 1337
    move/from16 v0, v17

    .end local v17    # "tileCountVertical":I
    .local v0, "tileCountVertical":I
    invoke-virtual {v5, v0}, Landroidx/media3/common/Format$Builder;->setTileCountVertical(I)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    .line 1338
    invoke-virtual {v5}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v5

    .line 1322
    return-object v5
.end method
