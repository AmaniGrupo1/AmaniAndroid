.class final Landroidx/media3/common/MimeTypes$Mp4aObjectType;
.super Ljava/lang/Object;
.source "MimeTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/MimeTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Mp4aObjectType"
.end annotation


# instance fields
.field public final audioObjectTypeIndication:I

.field public final objectTypeIndication:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "objectTypeIndication"    # I
    .param p2, "audioObjectTypeIndication"    # I

    .line 879
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 880
    iput p1, p0, Landroidx/media3/common/MimeTypes$Mp4aObjectType;->objectTypeIndication:I

    .line 881
    iput p2, p0, Landroidx/media3/common/MimeTypes$Mp4aObjectType;->audioObjectTypeIndication:I

    .line 882
    return-void
.end method


# virtual methods
.method public getEncoding()I
    .locals 1

    .line 887
    iget v0, p0, Landroidx/media3/common/MimeTypes$Mp4aObjectType;->audioObjectTypeIndication:I

    sparse-switch v0, :sswitch_data_0

    .line 901
    const/4 v0, 0x0

    return v0

    .line 895
    :sswitch_0
    const/16 v0, 0x10

    return v0

    .line 893
    :sswitch_1
    const/16 v0, 0xc

    return v0

    .line 897
    :sswitch_2
    const/16 v0, 0xf

    return v0

    .line 899
    :sswitch_3
    const/high16 v0, 0x40000000    # 2.0f

    return v0

    .line 891
    :sswitch_4
    const/16 v0, 0xb

    return v0

    .line 889
    :sswitch_5
    const/16 v0, 0xa

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_5
        0x5 -> :sswitch_4
        0x16 -> :sswitch_3
        0x17 -> :sswitch_2
        0x1d -> :sswitch_1
        0x2a -> :sswitch_0
    .end sparse-switch
.end method
