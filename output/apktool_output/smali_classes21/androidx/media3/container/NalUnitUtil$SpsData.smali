.class public final Landroidx/media3/container/NalUnitUtil$SpsData;
.super Ljava/lang/Object;
.source "NalUnitUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/container/NalUnitUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SpsData"
.end annotation


# instance fields
.field public final bitDepthChromaMinus8:I

.field public final bitDepthLumaMinus8:I

.field public final colorRange:I

.field public final colorSpace:I

.field public final colorTransfer:I

.field public final constraintsFlagsAndReservedZero2Bits:I

.field public final deltaPicOrderAlwaysZeroFlag:Z

.field public final frameMbsOnlyFlag:Z

.field public final frameNumLength:I

.field public final height:I

.field public final levelIdc:I

.field public final maxNumRefFrames:I

.field public final maxNumReorderFrames:I

.field public final picOrderCntLsbLength:I

.field public final picOrderCountType:I

.field public final pixelWidthHeightRatio:F

.field public final profileIdc:I

.field public final separateColorPlaneFlag:Z

.field public final seqParameterSetId:I

.field public final width:I


# direct methods
.method public constructor <init>(IIIIIIIFIIZZIIIZIIII)V
    .locals 16
    .param p1, "profileIdc"    # I
    .param p2, "constraintsFlagsAndReservedZero2Bits"    # I
    .param p3, "levelIdc"    # I
    .param p4, "seqParameterSetId"    # I
    .param p5, "maxNumRefFrames"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "pixelWidthHeightRatio"    # F
    .param p9, "bitDepthLumaMinus8"    # I
    .param p10, "bitDepthChromaMinus8"    # I
    .param p11, "separateColorPlaneFlag"    # Z
    .param p12, "frameMbsOnlyFlag"    # Z
    .param p13, "frameNumLength"    # I
    .param p14, "picOrderCountType"    # I
    .param p15, "picOrderCntLsbLength"    # I
    .param p16, "deltaPicOrderAlwaysZeroFlag"    # Z
    .param p17, "colorSpace"    # I
    .param p18, "colorRange"    # I
    .param p19, "colorTransfer"    # I
    .param p20, "maxNumReorderFrames"    # I

    .line 197
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 198
    move/from16 v1, p1

    iput v1, v0, Landroidx/media3/container/NalUnitUtil$SpsData;->profileIdc:I

    .line 199
    move/from16 v2, p2

    iput v2, v0, Landroidx/media3/container/NalUnitUtil$SpsData;->constraintsFlagsAndReservedZero2Bits:I

    .line 200
    move/from16 v3, p3

    iput v3, v0, Landroidx/media3/container/NalUnitUtil$SpsData;->levelIdc:I

    .line 201
    move/from16 v4, p4

    iput v4, v0, Landroidx/media3/container/NalUnitUtil$SpsData;->seqParameterSetId:I

    .line 202
    move/from16 v5, p5

    iput v5, v0, Landroidx/media3/container/NalUnitUtil$SpsData;->maxNumRefFrames:I

    .line 203
    move/from16 v6, p6

    iput v6, v0, Landroidx/media3/container/NalUnitUtil$SpsData;->width:I

    .line 204
    move/from16 v7, p7

    iput v7, v0, Landroidx/media3/container/NalUnitUtil$SpsData;->height:I

    .line 205
    move/from16 v8, p8

    iput v8, v0, Landroidx/media3/container/NalUnitUtil$SpsData;->pixelWidthHeightRatio:F

    .line 206
    move/from16 v9, p9

    iput v9, v0, Landroidx/media3/container/NalUnitUtil$SpsData;->bitDepthLumaMinus8:I

    .line 207
    move/from16 v10, p10

    iput v10, v0, Landroidx/media3/container/NalUnitUtil$SpsData;->bitDepthChromaMinus8:I

    .line 208
    move/from16 v11, p11

    iput-boolean v11, v0, Landroidx/media3/container/NalUnitUtil$SpsData;->separateColorPlaneFlag:Z

    .line 209
    move/from16 v12, p12

    iput-boolean v12, v0, Landroidx/media3/container/NalUnitUtil$SpsData;->frameMbsOnlyFlag:Z

    .line 210
    move/from16 v13, p13

    iput v13, v0, Landroidx/media3/container/NalUnitUtil$SpsData;->frameNumLength:I

    .line 211
    move/from16 v14, p14

    iput v14, v0, Landroidx/media3/container/NalUnitUtil$SpsData;->picOrderCountType:I

    .line 212
    move/from16 v15, p15

    iput v15, v0, Landroidx/media3/container/NalUnitUtil$SpsData;->picOrderCntLsbLength:I

    .line 213
    move/from16 v1, p16

    iput-boolean v1, v0, Landroidx/media3/container/NalUnitUtil$SpsData;->deltaPicOrderAlwaysZeroFlag:Z

    .line 214
    move/from16 v1, p17

    iput v1, v0, Landroidx/media3/container/NalUnitUtil$SpsData;->colorSpace:I

    .line 215
    move/from16 v1, p18

    iput v1, v0, Landroidx/media3/container/NalUnitUtil$SpsData;->colorRange:I

    .line 216
    move/from16 v1, p19

    iput v1, v0, Landroidx/media3/container/NalUnitUtil$SpsData;->colorTransfer:I

    .line 217
    move/from16 v1, p20

    iput v1, v0, Landroidx/media3/container/NalUnitUtil$SpsData;->maxNumReorderFrames:I

    .line 218
    return-void
.end method
