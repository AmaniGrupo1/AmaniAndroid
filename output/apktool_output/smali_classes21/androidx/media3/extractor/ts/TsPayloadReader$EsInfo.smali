.class public final Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;
.super Ljava/lang/Object;
.source "TsPayloadReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/ts/TsPayloadReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EsInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo$AudioType;
    }
.end annotation


# static fields
.field public static final AUDIO_TYPE_CLEAN_EFFECTS:I = 0x1

.field public static final AUDIO_TYPE_HEARING_IMPAIRED:I = 0x2

.field public static final AUDIO_TYPE_UNDEFINED:I = 0x0

.field public static final AUDIO_TYPE_VISUAL_IMPAIRED_COMMENTARY:I = 0x3


# instance fields
.field public final audioType:I

.field public final descriptorBytes:[B

.field public final dvbSubtitleInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/extractor/ts/TsPayloadReader$DvbSubtitleInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final language:Ljava/lang/String;

.field public final streamType:I


# direct methods
.method public constructor <init>(ILjava/lang/String;ILjava/util/List;[B)V
    .locals 1
    .param p1, "streamType"    # I
    .param p2, "language"    # Ljava/lang/String;
    .param p3, "audioType"    # I
    .param p5, "descriptorBytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Landroidx/media3/extractor/ts/TsPayloadReader$DvbSubtitleInfo;",
            ">;[B)V"
        }
    .end annotation

    .line 128
    .local p4, "dvbSubtitleInfos":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/ts/TsPayloadReader$DvbSubtitleInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput p1, p0, Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;->streamType:I

    .line 130
    iput-object p2, p0, Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    .line 131
    iput p3, p0, Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;->audioType:I

    .line 132
    nop

    .line 133
    if-nez p4, :cond_0

    .line 134
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 135
    :cond_0
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;->dvbSubtitleInfos:Ljava/util/List;

    .line 136
    iput-object p5, p0, Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;->descriptorBytes:[B

    .line 137
    return-void
.end method


# virtual methods
.method public getRoleFlags()I
    .locals 1

    .line 99
    iget v0, p0, Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;->audioType:I

    packed-switch v0, :pswitch_data_0

    .line 105
    const/4 v0, 0x0

    return v0

    .line 103
    :pswitch_0
    const/16 v0, 0x200

    return v0

    .line 101
    :pswitch_1
    const/16 v0, 0x800

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
