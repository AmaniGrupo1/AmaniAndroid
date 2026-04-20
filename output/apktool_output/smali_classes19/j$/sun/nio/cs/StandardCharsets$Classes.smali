.class final Lj$/sun/nio/cs/StandardCharsets$Classes;
.super Lj$/sun/util/PreHashedMap;
.source "StandardCharsets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/sun/nio/cs/StandardCharsets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Classes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj$/sun/util/PreHashedMap<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final MASK:I = 0x3f

.field private static final ROWS:I = 0x40

.field private static final SHIFT:I = 0x0

.field private static final SIZE:I = 0x3f


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 1062
    const/16 v0, 0x3f

    const/4 v1, 0x0

    const/16 v2, 0x40

    invoke-direct {p0, v2, v0, v1, v0}, Lj$/sun/util/PreHashedMap;-><init>(IIII)V

    .line 1063
    return-void
.end method

.method synthetic constructor <init>(Lj$/sun/nio/cs/StandardCharsets-IA;)V
    .locals 0

    invoke-direct {p0}, Lj$/sun/nio/cs/StandardCharsets$Classes;-><init>()V

    return-void
.end method


# virtual methods
.method protected init([Ljava/lang/Object;)V
    .locals 3
    .param p1, "ht"    # [Ljava/lang/Object;

    .line 1066
    const-string v0, "ibm862"

    const-string v1, "IBM862"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    .line 1067
    const-string v0, "euc-kr"

    const-string v1, "EUC_KR"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p1, v1

    .line 1068
    const-string v0, "windows-31j"

    const-string v1, "MS932"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, p1, v1

    .line 1069
    const-string v0, "x-pck"

    const-string v1, "PCK"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, p1, v1

    .line 1070
    const-string v0, "utf-16le"

    const-string v1, "UTF_16LE"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ibm866"

    const-string v2, "IBM866"

    filled-new-array {v1, v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, p1, v1

    .line 1072
    const-string v0, "utf-32"

    const-string v1, "UTF_32"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "tis-620"

    const-string v2, "TIS_620"

    filled-new-array {v1, v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x5

    aput-object v0, p1, v1

    .line 1074
    const-string v0, "windows-1250"

    const-string v1, "MS1250"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x6

    aput-object v0, p1, v1

    .line 1075
    const-string v0, "windows-1251"

    const-string v1, "MS1251"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x7

    aput-object v0, p1, v1

    .line 1076
    const-string v0, "utf-32be"

    const-string v1, "UTF_32BE"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "windows-1252"

    const-string v2, "MS1252"

    filled-new-array {v1, v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "x-big5-solaris"

    const-string v2, "Big5_Solaris"

    filled-new-array {v1, v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x8

    aput-object v0, p1, v1

    .line 1079
    const-string v0, "windows-1253"

    const-string v1, "MS1253"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "x-jis0208"

    const-string v2, "JIS_X_0208"

    filled-new-array {v1, v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x9

    aput-object v0, p1, v1

    .line 1081
    const-string v0, "windows-1254"

    const-string v1, "MS1254"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xa

    aput-object v0, p1, v1

    .line 1082
    const-string v0, "utf-16"

    const-string v1, "UTF_16"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "gb18030"

    const-string v2, "GB18030"

    filled-new-array {v1, v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xb

    aput-object v0, p1, v1

    .line 1084
    const-string v0, "x-iso-8859-11"

    const-string v1, "ISO_8859_11"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xc

    aput-object v0, p1, v1

    .line 1085
    const-string v0, "windows-1257"

    const-string v1, "MS1257"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xd

    aput-object v0, p1, v1

    .line 1086
    const-string v0, "utf-16be"

    const-string v1, "UTF_16BE"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xe

    aput-object v0, p1, v1

    .line 1087
    const-string v0, "x-johab"

    const-string v1, "Johab"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xf

    aput-object v0, p1, v1

    .line 1088
    const-string v0, "iso-8859-1"

    const-string v1, "ISO_8859_1"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "jis_x0201"

    const-string v2, "JIS_X_0201"

    filled-new-array {v1, v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x10

    aput-object v0, p1, v1

    .line 1090
    const-string v0, "iso-8859-2"

    const-string v1, "ISO_8859_2"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x11

    aput-object v0, p1, v1

    .line 1091
    const-string v0, "utf-8"

    const-string v1, "UTF_8"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "x-euc-tw"

    const-string v2, "EUC_TW"

    filled-new-array {v1, v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "iso-8859-3"

    const-string v2, "ISO_8859_3"

    filled-new-array {v1, v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x12

    aput-object v0, p1, v1

    .line 1094
    const-string v0, "iso-8859-4"

    const-string v1, "ISO_8859_4"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "x-eucjp-open"

    const-string v2, "EUC_JP_Open"

    filled-new-array {v1, v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x13

    aput-object v0, p1, v1

    .line 1096
    const-string v0, "iso-8859-5"

    const-string v1, "ISO_8859_5"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x14

    aput-object v0, p1, v1

    .line 1097
    const-string v0, "iso-8859-6"

    const-string v1, "ISO_8859_6"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x15

    aput-object v0, p1, v1

    .line 1098
    const-string v0, "iso-8859-7"

    const-string v1, "ISO_8859_7"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "x-ibm874"

    const-string v2, "IBM874"

    filled-new-array {v1, v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x16

    aput-object v0, p1, v1

    .line 1100
    const-string v0, "shift_jis"

    const-string v1, "SJIS"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "iso-8859-8"

    const-string v2, "ISO_8859_8"

    filled-new-array {v1, v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x17

    aput-object v0, p1, v1

    .line 1102
    const-string v0, "iso-8859-9"

    const-string v1, "ISO_8859_9"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x18

    aput-object v0, p1, v1

    .line 1103
    const-string v0, "x-ibm737"

    const-string v1, "IBM737"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x1c

    aput-object v0, p1, v1

    .line 1104
    const-string v0, "ibm850"

    const-string v1, "IBM850"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x1f

    aput-object v0, p1, v1

    .line 1105
    const-string v0, "euc-jp"

    const-string v1, "EUC_JP"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x20

    aput-object v0, p1, v1

    .line 1106
    const-string v0, "ibm775"

    const-string v1, "IBM775"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ibm852"

    const-string v2, "IBM852"

    filled-new-array {v1, v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x21

    aput-object v0, p1, v1

    .line 1108
    const-string v0, "us-ascii"

    const-string v1, "US_ASCII"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x22

    aput-object v0, p1, v1

    .line 1109
    const-string v0, "iso-8859-13"

    const-string v1, "ISO_8859_13"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x23

    aput-object v0, p1, v1

    .line 1110
    const-string v0, "ibm437"

    const-string v1, "IBM437"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ibm855"

    const-string v2, "IBM855"

    filled-new-array {v1, v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x24

    aput-object v0, p1, v1

    .line 1112
    const-string v0, "iso-8859-15"

    const-string v1, "ISO_8859_15"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x25

    aput-object v0, p1, v1

    .line 1113
    const-string v0, "x-utf-32le-bom"

    const-string v1, "UTF_32LE_BOM"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "iso-8859-16"

    const-string v2, "ISO_8859_16"

    filled-new-array {v1, v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ibm857"

    const-string v2, "IBM857"

    filled-new-array {v1, v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x26

    aput-object v0, p1, v1

    .line 1116
    const-string v0, "ibm00858"

    const-string v1, "IBM858"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x27

    aput-object v0, p1, v1

    .line 1117
    const-string v0, "big5-hkscs"

    const-string v1, "Big5_HKSCS"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x28

    aput-object v0, p1, v1

    .line 1118
    const-string v0, "x-utf-16le-bom"

    const-string v1, "UTF_16LE_BOM"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x2c

    aput-object v0, p1, v1

    .line 1119
    const-string v0, "cesu-8"

    const-string v1, "CESU_8"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x2f

    aput-object v0, p1, v1

    .line 1120
    const-string v0, "x-utf-32be-bom"

    const-string v1, "UTF_32BE_BOM"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "gbk"

    const-string v2, "GBK"

    filled-new-array {v1, v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x30

    aput-object v0, p1, v1

    .line 1122
    const-string v0, "big5"

    const-string v1, "Big5"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x35

    aput-object v0, p1, v1

    .line 1123
    const-string v0, "koi8-r"

    const-string v1, "KOI8_R"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x38

    aput-object v0, p1, v1

    .line 1124
    const-string v0, "koi8-u"

    const-string v1, "KOI8_U"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x3b

    aput-object v0, p1, v1

    .line 1125
    const-string v0, "jis_x0212-1990"

    const-string v1, "JIS_X_0212"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "x-euc-jp-linux"

    const-string v2, "EUC_JP_LINUX"

    filled-new-array {v1, v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x3c

    aput-object v0, p1, v1

    .line 1127
    const-string v0, "gb2312"

    const-string v1, "EUC_CN"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x3d

    aput-object v0, p1, v1

    .line 1128
    const-string v0, "utf-32le"

    const-string v1, "UTF_32LE"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x3e

    aput-object v0, p1, v1

    .line 1129
    return-void
.end method
