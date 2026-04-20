.class public final Landroidx/media3/common/Format$Builder;
.super Ljava/lang/Object;
.source "Format.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/Format;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private accessibilityChannel:I

.field private auxiliaryTrackType:I

.field private averageBitrate:I

.field private channelCount:I

.field private codecs:Ljava/lang/String;

.field private colorInfo:Landroidx/media3/common/ColorInfo;

.field private containerMimeType:Ljava/lang/String;

.field private cryptoType:I

.field private cueReplacementBehavior:I

.field private customData:Ljava/lang/Object;

.field private decodedHeight:I

.field private decodedWidth:I

.field private drmInitData:Landroidx/media3/common/DrmInitData;

.field private encoderDelay:I

.field private encoderPadding:I

.field private frameRate:F

.field private hasPrerollSamples:Z

.field private height:I

.field private id:Ljava/lang/String;

.field private initializationData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private label:Ljava/lang/String;

.field private labels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/common/Label;",
            ">;"
        }
    .end annotation
.end field

.field private language:Ljava/lang/String;

.field private maxInputSize:I

.field private maxNumReorderSamples:I

.field private maxSubLayers:I

.field private metadata:Landroidx/media3/common/Metadata;

.field private pcmEncoding:I

.field private peakBitrate:I

.field private pixelWidthHeightRatio:F

.field private primaryTrackGroupId:Ljava/lang/String;

.field private projectionData:[B

.field private roleFlags:I

.field private rotationDegrees:I

.field private sampleMimeType:Ljava/lang/String;

.field private sampleRate:I

.field private selectionFlags:I

.field private stereoMode:I

.field private subsampleOffsetUs:J

.field private tileCountHorizontal:I

.field private tileCountVertical:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/Format$Builder;->labels:Ljava/util/List;

    .line 215
    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/common/Format$Builder;->averageBitrate:I

    .line 216
    iput v0, p0, Landroidx/media3/common/Format$Builder;->peakBitrate:I

    .line 218
    iput v0, p0, Landroidx/media3/common/Format$Builder;->maxInputSize:I

    .line 219
    iput v0, p0, Landroidx/media3/common/Format$Builder;->maxNumReorderSamples:I

    .line 220
    const-wide v1, 0x7fffffffffffffffL

    iput-wide v1, p0, Landroidx/media3/common/Format$Builder;->subsampleOffsetUs:J

    .line 222
    iput v0, p0, Landroidx/media3/common/Format$Builder;->width:I

    .line 223
    iput v0, p0, Landroidx/media3/common/Format$Builder;->height:I

    .line 224
    iput v0, p0, Landroidx/media3/common/Format$Builder;->decodedWidth:I

    .line 225
    iput v0, p0, Landroidx/media3/common/Format$Builder;->decodedHeight:I

    .line 226
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroidx/media3/common/Format$Builder;->frameRate:F

    .line 227
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroidx/media3/common/Format$Builder;->pixelWidthHeightRatio:F

    .line 228
    iput v0, p0, Landroidx/media3/common/Format$Builder;->stereoMode:I

    .line 229
    iput v0, p0, Landroidx/media3/common/Format$Builder;->maxSubLayers:I

    .line 231
    iput v0, p0, Landroidx/media3/common/Format$Builder;->channelCount:I

    .line 232
    iput v0, p0, Landroidx/media3/common/Format$Builder;->sampleRate:I

    .line 233
    iput v0, p0, Landroidx/media3/common/Format$Builder;->pcmEncoding:I

    .line 235
    iput v0, p0, Landroidx/media3/common/Format$Builder;->accessibilityChannel:I

    .line 236
    const/4 v1, 0x1

    iput v1, p0, Landroidx/media3/common/Format$Builder;->cueReplacementBehavior:I

    .line 238
    iput v0, p0, Landroidx/media3/common/Format$Builder;->tileCountHorizontal:I

    .line 239
    iput v0, p0, Landroidx/media3/common/Format$Builder;->tileCountVertical:I

    .line 241
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/common/Format$Builder;->cryptoType:I

    .line 242
    iput v0, p0, Landroidx/media3/common/Format$Builder;->auxiliaryTrackType:I

    .line 243
    return-void
.end method

.method private constructor <init>(Landroidx/media3/common/Format;)V
    .locals 2
    .param p1, "format"    # Landroidx/media3/common/Format;

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    iget-object v0, p1, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/common/Format$Builder;->id:Ljava/lang/String;

    .line 252
    iget-object v0, p1, Landroidx/media3/common/Format;->label:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/common/Format$Builder;->label:Ljava/lang/String;

    .line 253
    iget-object v0, p1, Landroidx/media3/common/Format;->labels:Ljava/util/List;

    iput-object v0, p0, Landroidx/media3/common/Format$Builder;->labels:Ljava/util/List;

    .line 254
    iget-object v0, p1, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/common/Format$Builder;->language:Ljava/lang/String;

    .line 255
    iget v0, p1, Landroidx/media3/common/Format;->selectionFlags:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->selectionFlags:I

    .line 256
    iget v0, p1, Landroidx/media3/common/Format;->roleFlags:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->roleFlags:I

    .line 257
    iget v0, p1, Landroidx/media3/common/Format;->averageBitrate:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->averageBitrate:I

    .line 258
    iget v0, p1, Landroidx/media3/common/Format;->peakBitrate:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->peakBitrate:I

    .line 259
    iget-object v0, p1, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/common/Format$Builder;->codecs:Ljava/lang/String;

    .line 260
    iget-object v0, p1, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    iput-object v0, p0, Landroidx/media3/common/Format$Builder;->metadata:Landroidx/media3/common/Metadata;

    .line 261
    iget-object v0, p1, Landroidx/media3/common/Format;->customData:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/media3/common/Format$Builder;->customData:Ljava/lang/Object;

    .line 262
    iget-object v0, p1, Landroidx/media3/common/Format;->primaryTrackGroupId:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/common/Format$Builder;->primaryTrackGroupId:Ljava/lang/String;

    .line 264
    iget-object v0, p1, Landroidx/media3/common/Format;->containerMimeType:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/common/Format$Builder;->containerMimeType:Ljava/lang/String;

    .line 266
    iget-object v0, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/common/Format$Builder;->sampleMimeType:Ljava/lang/String;

    .line 267
    iget v0, p1, Landroidx/media3/common/Format;->maxInputSize:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->maxInputSize:I

    .line 268
    iget v0, p1, Landroidx/media3/common/Format;->maxNumReorderSamples:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->maxNumReorderSamples:I

    .line 269
    iget-object v0, p1, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    iput-object v0, p0, Landroidx/media3/common/Format$Builder;->initializationData:Ljava/util/List;

    .line 270
    iget-object v0, p1, Landroidx/media3/common/Format;->drmInitData:Landroidx/media3/common/DrmInitData;

    iput-object v0, p0, Landroidx/media3/common/Format$Builder;->drmInitData:Landroidx/media3/common/DrmInitData;

    .line 271
    iget-wide v0, p1, Landroidx/media3/common/Format;->subsampleOffsetUs:J

    iput-wide v0, p0, Landroidx/media3/common/Format$Builder;->subsampleOffsetUs:J

    .line 272
    iget-boolean v0, p1, Landroidx/media3/common/Format;->hasPrerollSamples:Z

    iput-boolean v0, p0, Landroidx/media3/common/Format$Builder;->hasPrerollSamples:Z

    .line 274
    iget v0, p1, Landroidx/media3/common/Format;->width:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->width:I

    .line 275
    iget v0, p1, Landroidx/media3/common/Format;->height:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->height:I

    .line 276
    iget v0, p1, Landroidx/media3/common/Format;->decodedWidth:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->decodedWidth:I

    .line 277
    iget v0, p1, Landroidx/media3/common/Format;->decodedHeight:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->decodedHeight:I

    .line 278
    iget v0, p1, Landroidx/media3/common/Format;->frameRate:F

    iput v0, p0, Landroidx/media3/common/Format$Builder;->frameRate:F

    .line 279
    iget v0, p1, Landroidx/media3/common/Format;->rotationDegrees:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->rotationDegrees:I

    .line 280
    iget v0, p1, Landroidx/media3/common/Format;->pixelWidthHeightRatio:F

    iput v0, p0, Landroidx/media3/common/Format$Builder;->pixelWidthHeightRatio:F

    .line 281
    iget-object v0, p1, Landroidx/media3/common/Format;->projectionData:[B

    iput-object v0, p0, Landroidx/media3/common/Format$Builder;->projectionData:[B

    .line 282
    iget v0, p1, Landroidx/media3/common/Format;->stereoMode:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->stereoMode:I

    .line 283
    iget-object v0, p1, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    iput-object v0, p0, Landroidx/media3/common/Format$Builder;->colorInfo:Landroidx/media3/common/ColorInfo;

    .line 284
    iget v0, p1, Landroidx/media3/common/Format;->maxSubLayers:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->maxSubLayers:I

    .line 286
    iget v0, p1, Landroidx/media3/common/Format;->channelCount:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->channelCount:I

    .line 287
    iget v0, p1, Landroidx/media3/common/Format;->sampleRate:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->sampleRate:I

    .line 288
    iget v0, p1, Landroidx/media3/common/Format;->pcmEncoding:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->pcmEncoding:I

    .line 289
    iget v0, p1, Landroidx/media3/common/Format;->encoderDelay:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->encoderDelay:I

    .line 290
    iget v0, p1, Landroidx/media3/common/Format;->encoderPadding:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->encoderPadding:I

    .line 292
    iget v0, p1, Landroidx/media3/common/Format;->accessibilityChannel:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->accessibilityChannel:I

    .line 293
    iget v0, p1, Landroidx/media3/common/Format;->cueReplacementBehavior:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->cueReplacementBehavior:I

    .line 295
    iget v0, p1, Landroidx/media3/common/Format;->tileCountHorizontal:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->tileCountHorizontal:I

    .line 296
    iget v0, p1, Landroidx/media3/common/Format;->tileCountVertical:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->tileCountVertical:I

    .line 298
    iget v0, p1, Landroidx/media3/common/Format;->cryptoType:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->cryptoType:I

    .line 299
    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/common/Format;Landroidx/media3/common/Format$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/media3/common/Format;
    .param p2, "x1"    # Landroidx/media3/common/Format$1;

    .line 146
    invoke-direct {p0, p1}, Landroidx/media3/common/Format$Builder;-><init>(Landroidx/media3/common/Format;)V

    return-void
.end method

.method static synthetic access$100(Landroidx/media3/common/Format$Builder;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/Format$Builder;

    .line 146
    iget-object v0, p0, Landroidx/media3/common/Format$Builder;->labels:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1000(Landroidx/media3/common/Format$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/Format$Builder;

    .line 146
    iget-object v0, p0, Landroidx/media3/common/Format$Builder;->codecs:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Landroidx/media3/common/Format$Builder;)Landroidx/media3/common/Metadata;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/Format$Builder;

    .line 146
    iget-object v0, p0, Landroidx/media3/common/Format$Builder;->metadata:Landroidx/media3/common/Metadata;

    return-object v0
.end method

.method static synthetic access$1200(Landroidx/media3/common/Format$Builder;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/Format$Builder;

    .line 146
    iget-object v0, p0, Landroidx/media3/common/Format$Builder;->customData:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1300(Landroidx/media3/common/Format$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/Format$Builder;

    .line 146
    iget-object v0, p0, Landroidx/media3/common/Format$Builder;->primaryTrackGroupId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Landroidx/media3/common/Format$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/Format$Builder;

    .line 146
    iget-object v0, p0, Landroidx/media3/common/Format$Builder;->containerMimeType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Landroidx/media3/common/Format$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/Format$Builder;

    .line 146
    iget-object v0, p0, Landroidx/media3/common/Format$Builder;->sampleMimeType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Landroidx/media3/common/Format$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/Format$Builder;

    .line 146
    iget v0, p0, Landroidx/media3/common/Format$Builder;->maxInputSize:I

    return v0
.end method

.method static synthetic access$1700(Landroidx/media3/common/Format$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/Format$Builder;

    .line 146
    iget v0, p0, Landroidx/media3/common/Format$Builder;->maxNumReorderSamples:I

    return v0
.end method

.method static synthetic access$1800(Landroidx/media3/common/Format$Builder;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/Format$Builder;

    .line 146
    iget-object v0, p0, Landroidx/media3/common/Format$Builder;->initializationData:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1900(Landroidx/media3/common/Format$Builder;)Landroidx/media3/common/DrmInitData;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/Format$Builder;

    .line 146
    iget-object v0, p0, Landroidx/media3/common/Format$Builder;->drmInitData:Landroidx/media3/common/DrmInitData;

    return-object v0
.end method

.method static synthetic access$200(Landroidx/media3/common/Format$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/Format$Builder;

    .line 146
    iget-object v0, p0, Landroidx/media3/common/Format$Builder;->label:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Landroidx/media3/common/Format$Builder;)J
    .locals 2
    .param p0, "x0"    # Landroidx/media3/common/Format$Builder;

    .line 146
    iget-wide v0, p0, Landroidx/media3/common/Format$Builder;->subsampleOffsetUs:J

    return-wide v0
.end method

.method static synthetic access$2100(Landroidx/media3/common/Format$Builder;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/Format$Builder;

    .line 146
    iget-boolean v0, p0, Landroidx/media3/common/Format$Builder;->hasPrerollSamples:Z

    return v0
.end method

.method static synthetic access$2200(Landroidx/media3/common/Format$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/Format$Builder;

    .line 146
    iget v0, p0, Landroidx/media3/common/Format$Builder;->width:I

    return v0
.end method

.method static synthetic access$2300(Landroidx/media3/common/Format$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/Format$Builder;

    .line 146
    iget v0, p0, Landroidx/media3/common/Format$Builder;->height:I

    return v0
.end method

.method static synthetic access$2400(Landroidx/media3/common/Format$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/Format$Builder;

    .line 146
    iget v0, p0, Landroidx/media3/common/Format$Builder;->decodedWidth:I

    return v0
.end method

.method static synthetic access$2500(Landroidx/media3/common/Format$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/Format$Builder;

    .line 146
    iget v0, p0, Landroidx/media3/common/Format$Builder;->decodedHeight:I

    return v0
.end method

.method static synthetic access$2600(Landroidx/media3/common/Format$Builder;)F
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/Format$Builder;

    .line 146
    iget v0, p0, Landroidx/media3/common/Format$Builder;->frameRate:F

    return v0
.end method

.method static synthetic access$2700(Landroidx/media3/common/Format$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/Format$Builder;

    .line 146
    iget v0, p0, Landroidx/media3/common/Format$Builder;->rotationDegrees:I

    return v0
.end method

.method static synthetic access$2800(Landroidx/media3/common/Format$Builder;)F
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/Format$Builder;

    .line 146
    iget v0, p0, Landroidx/media3/common/Format$Builder;->pixelWidthHeightRatio:F

    return v0
.end method

.method static synthetic access$2900(Landroidx/media3/common/Format$Builder;)[B
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/Format$Builder;

    .line 146
    iget-object v0, p0, Landroidx/media3/common/Format$Builder;->projectionData:[B

    return-object v0
.end method

.method static synthetic access$300(Landroidx/media3/common/Format$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/Format$Builder;

    .line 146
    iget-object v0, p0, Landroidx/media3/common/Format$Builder;->id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3000(Landroidx/media3/common/Format$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/Format$Builder;

    .line 146
    iget v0, p0, Landroidx/media3/common/Format$Builder;->stereoMode:I

    return v0
.end method

.method static synthetic access$3100(Landroidx/media3/common/Format$Builder;)Landroidx/media3/common/ColorInfo;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/Format$Builder;

    .line 146
    iget-object v0, p0, Landroidx/media3/common/Format$Builder;->colorInfo:Landroidx/media3/common/ColorInfo;

    return-object v0
.end method

.method static synthetic access$3200(Landroidx/media3/common/Format$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/Format$Builder;

    .line 146
    iget v0, p0, Landroidx/media3/common/Format$Builder;->maxSubLayers:I

    return v0
.end method

.method static synthetic access$3300(Landroidx/media3/common/Format$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/Format$Builder;

    .line 146
    iget v0, p0, Landroidx/media3/common/Format$Builder;->channelCount:I

    return v0
.end method

.method static synthetic access$3400(Landroidx/media3/common/Format$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/Format$Builder;

    .line 146
    iget v0, p0, Landroidx/media3/common/Format$Builder;->sampleRate:I

    return v0
.end method

.method static synthetic access$3500(Landroidx/media3/common/Format$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/Format$Builder;

    .line 146
    iget v0, p0, Landroidx/media3/common/Format$Builder;->pcmEncoding:I

    return v0
.end method

.method static synthetic access$3600(Landroidx/media3/common/Format$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/Format$Builder;

    .line 146
    iget v0, p0, Landroidx/media3/common/Format$Builder;->encoderDelay:I

    return v0
.end method

.method static synthetic access$3700(Landroidx/media3/common/Format$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/Format$Builder;

    .line 146
    iget v0, p0, Landroidx/media3/common/Format$Builder;->encoderPadding:I

    return v0
.end method

.method static synthetic access$3800(Landroidx/media3/common/Format$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/Format$Builder;

    .line 146
    iget v0, p0, Landroidx/media3/common/Format$Builder;->accessibilityChannel:I

    return v0
.end method

.method static synthetic access$3900(Landroidx/media3/common/Format$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/Format$Builder;

    .line 146
    iget v0, p0, Landroidx/media3/common/Format$Builder;->cueReplacementBehavior:I

    return v0
.end method

.method static synthetic access$400(Landroidx/media3/common/Format$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/Format$Builder;

    .line 146
    iget-object v0, p0, Landroidx/media3/common/Format$Builder;->language:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4000(Landroidx/media3/common/Format$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/Format$Builder;

    .line 146
    iget v0, p0, Landroidx/media3/common/Format$Builder;->tileCountHorizontal:I

    return v0
.end method

.method static synthetic access$4100(Landroidx/media3/common/Format$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/Format$Builder;

    .line 146
    iget v0, p0, Landroidx/media3/common/Format$Builder;->tileCountVertical:I

    return v0
.end method

.method static synthetic access$4200(Landroidx/media3/common/Format$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/Format$Builder;

    .line 146
    iget v0, p0, Landroidx/media3/common/Format$Builder;->cryptoType:I

    return v0
.end method

.method static synthetic access$500(Landroidx/media3/common/Format$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/Format$Builder;

    .line 146
    iget v0, p0, Landroidx/media3/common/Format$Builder;->selectionFlags:I

    return v0
.end method

.method static synthetic access$600(Landroidx/media3/common/Format$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/Format$Builder;

    .line 146
    iget v0, p0, Landroidx/media3/common/Format$Builder;->auxiliaryTrackType:I

    return v0
.end method

.method static synthetic access$700(Landroidx/media3/common/Format$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/Format$Builder;

    .line 146
    iget v0, p0, Landroidx/media3/common/Format$Builder;->roleFlags:I

    return v0
.end method

.method static synthetic access$800(Landroidx/media3/common/Format$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/Format$Builder;

    .line 146
    iget v0, p0, Landroidx/media3/common/Format$Builder;->averageBitrate:I

    return v0
.end method

.method static synthetic access$900(Landroidx/media3/common/Format$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/Format$Builder;

    .line 146
    iget v0, p0, Landroidx/media3/common/Format$Builder;->peakBitrate:I

    return v0
.end method


# virtual methods
.method public build()Landroidx/media3/common/Format;
    .locals 2

    .line 859
    new-instance v0, Landroidx/media3/common/Format;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;Landroidx/media3/common/Format$1;)V

    return-object v0
.end method

.method public setAccessibilityChannel(I)Landroidx/media3/common/Format$Builder;
    .locals 0
    .param p1, "accessibilityChannel"    # I

    .line 799
    iput p1, p0, Landroidx/media3/common/Format$Builder;->accessibilityChannel:I

    .line 800
    return-object p0
.end method

.method public setAuxiliaryTrackType(I)Landroidx/media3/common/Format$Builder;
    .locals 0
    .param p1, "auxiliaryTrackType"    # I

    .line 407
    iput p1, p0, Landroidx/media3/common/Format$Builder;->auxiliaryTrackType:I

    .line 408
    return-object p0
.end method

.method public setAverageBitrate(I)Landroidx/media3/common/Format$Builder;
    .locals 0
    .param p1, "averageBitrate"    # I

    .line 419
    iput p1, p0, Landroidx/media3/common/Format$Builder;->averageBitrate:I

    .line 420
    return-object p0
.end method

.method public setChannelCount(I)Landroidx/media3/common/Format$Builder;
    .locals 0
    .param p1, "channelCount"    # I

    .line 737
    iput p1, p0, Landroidx/media3/common/Format$Builder;->channelCount:I

    .line 738
    return-object p0
.end method

.method public setCodecs(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;
    .locals 0
    .param p1, "codecs"    # Ljava/lang/String;

    .line 443
    iput-object p1, p0, Landroidx/media3/common/Format$Builder;->codecs:Ljava/lang/String;

    .line 444
    return-object p0
.end method

.method public setColorInfo(Landroidx/media3/common/ColorInfo;)Landroidx/media3/common/Format$Builder;
    .locals 0
    .param p1, "colorInfo"    # Landroidx/media3/common/ColorInfo;

    .line 711
    iput-object p1, p0, Landroidx/media3/common/Format$Builder;->colorInfo:Landroidx/media3/common/ColorInfo;

    .line 712
    return-object p0
.end method

.method public setContainerMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;
    .locals 1
    .param p1, "containerMimeType"    # Ljava/lang/String;

    .line 503
    invoke-static {p1}, Landroidx/media3/common/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/Format$Builder;->containerMimeType:Ljava/lang/String;

    .line 504
    return-object p0
.end method

.method public setCryptoType(I)Landroidx/media3/common/Format$Builder;
    .locals 0
    .param p1, "cryptoType"    # I

    .line 852
    iput p1, p0, Landroidx/media3/common/Format$Builder;->cryptoType:I

    .line 853
    return-object p0
.end method

.method public setCueReplacementBehavior(I)Landroidx/media3/common/Format$Builder;
    .locals 0
    .param p1, "cueReplacementBehavior"    # I

    .line 812
    iput p1, p0, Landroidx/media3/common/Format$Builder;->cueReplacementBehavior:I

    .line 813
    return-object p0
.end method

.method public setCustomData(Ljava/lang/Object;)Landroidx/media3/common/Format$Builder;
    .locals 0
    .param p1, "customData"    # Ljava/lang/Object;

    .line 471
    iput-object p1, p0, Landroidx/media3/common/Format$Builder;->customData:Ljava/lang/Object;

    .line 472
    return-object p0
.end method

.method public setDecodedHeight(I)Landroidx/media3/common/Format$Builder;
    .locals 0
    .param p1, "decodedHeight"    # I

    .line 639
    iput p1, p0, Landroidx/media3/common/Format$Builder;->decodedHeight:I

    .line 640
    return-object p0
.end method

.method public setDecodedWidth(I)Landroidx/media3/common/Format$Builder;
    .locals 0
    .param p1, "decodedWidth"    # I

    .line 627
    iput p1, p0, Landroidx/media3/common/Format$Builder;->decodedWidth:I

    .line 628
    return-object p0
.end method

.method public setDrmInitData(Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format$Builder;
    .locals 0
    .param p1, "drmInitData"    # Landroidx/media3/common/DrmInitData;

    .line 565
    iput-object p1, p0, Landroidx/media3/common/Format$Builder;->drmInitData:Landroidx/media3/common/DrmInitData;

    .line 566
    return-object p0
.end method

.method public setEncoderDelay(I)Landroidx/media3/common/Format$Builder;
    .locals 0
    .param p1, "encoderDelay"    # I

    .line 773
    iput p1, p0, Landroidx/media3/common/Format$Builder;->encoderDelay:I

    .line 774
    return-object p0
.end method

.method public setEncoderPadding(I)Landroidx/media3/common/Format$Builder;
    .locals 0
    .param p1, "encoderPadding"    # I

    .line 785
    iput p1, p0, Landroidx/media3/common/Format$Builder;->encoderPadding:I

    .line 786
    return-object p0
.end method

.method public setFrameRate(F)Landroidx/media3/common/Format$Builder;
    .locals 0
    .param p1, "frameRate"    # F

    .line 651
    iput p1, p0, Landroidx/media3/common/Format$Builder;->frameRate:F

    .line 652
    return-object p0
.end method

.method public setHasPrerollSamples(Z)Landroidx/media3/common/Format$Builder;
    .locals 0
    .param p1, "hasPrerollSamples"    # Z

    .line 589
    iput-boolean p1, p0, Landroidx/media3/common/Format$Builder;->hasPrerollSamples:Z

    .line 590
    return-object p0
.end method

.method public setHeight(I)Landroidx/media3/common/Format$Builder;
    .locals 0
    .param p1, "height"    # I

    .line 615
    iput p1, p0, Landroidx/media3/common/Format$Builder;->height:I

    .line 616
    return-object p0
.end method

.method public setId(I)Landroidx/media3/common/Format$Builder;
    .locals 1
    .param p1, "id"    # I

    .line 322
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/Format$Builder;->id:Ljava/lang/String;

    .line 323
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .line 309
    iput-object p1, p0, Landroidx/media3/common/Format$Builder;->id:Ljava/lang/String;

    .line 310
    return-object p0
.end method

.method public setInitializationData(Ljava/util/List;)Landroidx/media3/common/Format$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)",
            "Landroidx/media3/common/Format$Builder;"
        }
    .end annotation

    .line 553
    .local p1, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    iput-object p1, p0, Landroidx/media3/common/Format$Builder;->initializationData:Ljava/util/List;

    .line 554
    return-object p0
.end method

.method public setLabel(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .line 337
    iput-object p1, p0, Landroidx/media3/common/Format$Builder;->label:Ljava/lang/String;

    .line 338
    return-object p0
.end method

.method public setLabels(Ljava/util/List;)Landroidx/media3/common/Format$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/Label;",
            ">;)",
            "Landroidx/media3/common/Format$Builder;"
        }
    .end annotation

    .line 352
    .local p1, "labels":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Label;>;"
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/Format$Builder;->labels:Ljava/util/List;

    .line 353
    return-object p0
.end method

.method public setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;
    .locals 0
    .param p1, "language"    # Ljava/lang/String;

    .line 364
    iput-object p1, p0, Landroidx/media3/common/Format$Builder;->language:Ljava/lang/String;

    .line 365
    return-object p0
.end method

.method public setMaxInputSize(I)Landroidx/media3/common/Format$Builder;
    .locals 0
    .param p1, "maxInputSize"    # I

    .line 529
    iput p1, p0, Landroidx/media3/common/Format$Builder;->maxInputSize:I

    .line 530
    return-object p0
.end method

.method public setMaxNumReorderSamples(I)Landroidx/media3/common/Format$Builder;
    .locals 0
    .param p1, "maxNumReorderSamples"    # I

    .line 541
    iput p1, p0, Landroidx/media3/common/Format$Builder;->maxNumReorderSamples:I

    .line 542
    return-object p0
.end method

.method public setMaxSubLayers(I)Landroidx/media3/common/Format$Builder;
    .locals 0
    .param p1, "maxSubLayers"    # I

    .line 723
    iput p1, p0, Landroidx/media3/common/Format$Builder;->maxSubLayers:I

    .line 724
    return-object p0
.end method

.method public setMetadata(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Format$Builder;
    .locals 0
    .param p1, "metadata"    # Landroidx/media3/common/Metadata;

    .line 455
    iput-object p1, p0, Landroidx/media3/common/Format$Builder;->metadata:Landroidx/media3/common/Metadata;

    .line 456
    return-object p0
.end method

.method public setPcmEncoding(I)Landroidx/media3/common/Format$Builder;
    .locals 0
    .param p1, "pcmEncoding"    # I

    .line 761
    iput p1, p0, Landroidx/media3/common/Format$Builder;->pcmEncoding:I

    .line 762
    return-object p0
.end method

.method public setPeakBitrate(I)Landroidx/media3/common/Format$Builder;
    .locals 0
    .param p1, "peakBitrate"    # I

    .line 431
    iput p1, p0, Landroidx/media3/common/Format$Builder;->peakBitrate:I

    .line 432
    return-object p0
.end method

.method public setPixelWidthHeightRatio(F)Landroidx/media3/common/Format$Builder;
    .locals 0
    .param p1, "pixelWidthHeightRatio"    # F

    .line 675
    iput p1, p0, Landroidx/media3/common/Format$Builder;->pixelWidthHeightRatio:F

    .line 676
    return-object p0
.end method

.method public setPrimaryTrackGroupId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;
    .locals 0
    .param p1, "primaryTrackGroupId"    # Ljava/lang/String;

    .line 489
    iput-object p1, p0, Landroidx/media3/common/Format$Builder;->primaryTrackGroupId:Ljava/lang/String;

    .line 490
    return-object p0
.end method

.method public setProjectionData([B)Landroidx/media3/common/Format$Builder;
    .locals 0
    .param p1, "projectionData"    # [B

    .line 687
    iput-object p1, p0, Landroidx/media3/common/Format$Builder;->projectionData:[B

    .line 688
    return-object p0
.end method

.method public setRoleFlags(I)Landroidx/media3/common/Format$Builder;
    .locals 0
    .param p1, "roleFlags"    # I

    .line 391
    iput p1, p0, Landroidx/media3/common/Format$Builder;->roleFlags:I

    .line 392
    return-object p0
.end method

.method public setRotationDegrees(I)Landroidx/media3/common/Format$Builder;
    .locals 0
    .param p1, "rotationDegrees"    # I

    .line 663
    iput p1, p0, Landroidx/media3/common/Format$Builder;->rotationDegrees:I

    .line 664
    return-object p0
.end method

.method public setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;
    .locals 1
    .param p1, "sampleMimeType"    # Ljava/lang/String;

    .line 517
    invoke-static {p1}, Landroidx/media3/common/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/Format$Builder;->sampleMimeType:Ljava/lang/String;

    .line 518
    return-object p0
.end method

.method public setSampleRate(I)Landroidx/media3/common/Format$Builder;
    .locals 0
    .param p1, "sampleRate"    # I

    .line 749
    iput p1, p0, Landroidx/media3/common/Format$Builder;->sampleRate:I

    .line 750
    return-object p0
.end method

.method public setSelectionFlags(I)Landroidx/media3/common/Format$Builder;
    .locals 0
    .param p1, "selectionFlags"    # I

    .line 376
    iput p1, p0, Landroidx/media3/common/Format$Builder;->selectionFlags:I

    .line 377
    return-object p0
.end method

.method public setStereoMode(I)Landroidx/media3/common/Format$Builder;
    .locals 0
    .param p1, "stereoMode"    # I

    .line 699
    iput p1, p0, Landroidx/media3/common/Format$Builder;->stereoMode:I

    .line 700
    return-object p0
.end method

.method public setSubsampleOffsetUs(J)Landroidx/media3/common/Format$Builder;
    .locals 0
    .param p1, "subsampleOffsetUs"    # J

    .line 577
    iput-wide p1, p0, Landroidx/media3/common/Format$Builder;->subsampleOffsetUs:J

    .line 578
    return-object p0
.end method

.method public setTileCountHorizontal(I)Landroidx/media3/common/Format$Builder;
    .locals 0
    .param p1, "tileCountHorizontal"    # I

    .line 826
    iput p1, p0, Landroidx/media3/common/Format$Builder;->tileCountHorizontal:I

    .line 827
    return-object p0
.end method

.method public setTileCountVertical(I)Landroidx/media3/common/Format$Builder;
    .locals 0
    .param p1, "tileCountVertical"    # I

    .line 838
    iput p1, p0, Landroidx/media3/common/Format$Builder;->tileCountVertical:I

    .line 839
    return-object p0
.end method

.method public setWidth(I)Landroidx/media3/common/Format$Builder;
    .locals 0
    .param p1, "width"    # I

    .line 603
    iput p1, p0, Landroidx/media3/common/Format$Builder;->width:I

    .line 604
    return-object p0
.end method
