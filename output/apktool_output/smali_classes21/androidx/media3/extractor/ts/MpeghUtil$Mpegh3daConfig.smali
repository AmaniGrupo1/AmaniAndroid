.class public Landroidx/media3/extractor/ts/MpeghUtil$Mpegh3daConfig;
.super Ljava/lang/Object;
.source "MpeghUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/ts/MpeghUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mpegh3daConfig"
.end annotation


# instance fields
.field public final compatibleProfileLevelSet:[B

.field public final profileLevelIndication:I

.field public final samplingFrequency:I

.field public final standardFrameLength:I


# direct methods
.method private constructor <init>(III[B)V
    .locals 0
    .param p1, "profileLevelIndication"    # I
    .param p2, "samplingFrequency"    # I
    .param p3, "standardFrameLength"    # I
    .param p4, "compatibleProfileLevelSet"    # [B

    .line 732
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 733
    iput p1, p0, Landroidx/media3/extractor/ts/MpeghUtil$Mpegh3daConfig;->profileLevelIndication:I

    .line 734
    iput p2, p0, Landroidx/media3/extractor/ts/MpeghUtil$Mpegh3daConfig;->samplingFrequency:I

    .line 735
    iput p3, p0, Landroidx/media3/extractor/ts/MpeghUtil$Mpegh3daConfig;->standardFrameLength:I

    .line 736
    iput-object p4, p0, Landroidx/media3/extractor/ts/MpeghUtil$Mpegh3daConfig;->compatibleProfileLevelSet:[B

    .line 737
    return-void
.end method

.method synthetic constructor <init>(III[BLandroidx/media3/extractor/ts/MpeghUtil$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # [B
    .param p5, "x4"    # Landroidx/media3/extractor/ts/MpeghUtil$1;

    .line 711
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media3/extractor/ts/MpeghUtil$Mpegh3daConfig;-><init>(III[B)V

    return-void
.end method
