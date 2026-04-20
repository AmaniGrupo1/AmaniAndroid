.class final Lj$/sun/nio/cs/StandardCharsets$Cache;
.super Lj$/sun/util/PreHashedMap;
.source "StandardCharsets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/sun/nio/cs/StandardCharsets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Cache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj$/sun/util/PreHashedMap<",
        "Ljava/nio/charset/Charset;",
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

    .line 1143
    const/16 v0, 0x3f

    const/4 v1, 0x0

    const/16 v2, 0x40

    invoke-direct {p0, v2, v0, v1, v0}, Lj$/sun/util/PreHashedMap;-><init>(IIII)V

    .line 1144
    return-void
.end method

.method synthetic constructor <init>(Lj$/sun/nio/cs/StandardCharsets-IA;)V
    .locals 0

    invoke-direct {p0}, Lj$/sun/nio/cs/StandardCharsets$Cache;-><init>()V

    return-void
.end method


# virtual methods
.method protected init([Ljava/lang/Object;)V
    .locals 3
    .param p1, "ht"    # [Ljava/lang/Object;

    .line 1147
    const-string v0, "ibm862"

    const/4 v1, 0x0

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, p1, v2

    .line 1148
    const-string v0, "euc-kr"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, p1, v2

    .line 1149
    const-string v0, "windows-31j"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, p1, v2

    .line 1150
    const-string v0, "x-pck"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x3

    aput-object v0, p1, v2

    .line 1151
    const-string v0, "utf-16le"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "ibm866"

    filled-new-array {v2, v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x4

    aput-object v0, p1, v2

    .line 1153
    const-string v0, "utf-32"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "tis-620"

    filled-new-array {v2, v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x5

    aput-object v0, p1, v2

    .line 1155
    const-string v0, "windows-1250"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x6

    aput-object v0, p1, v2

    .line 1156
    const-string v0, "windows-1251"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x7

    aput-object v0, p1, v2

    .line 1157
    const-string v0, "utf-32be"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "windows-1252"

    filled-new-array {v2, v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "x-big5-solaris"

    filled-new-array {v2, v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x8

    aput-object v0, p1, v2

    .line 1160
    const-string v0, "windows-1253"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "x-jis0208"

    filled-new-array {v2, v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x9

    aput-object v0, p1, v2

    .line 1162
    const-string v0, "windows-1254"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xa

    aput-object v0, p1, v2

    .line 1163
    const-string v0, "utf-16"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "gb18030"

    filled-new-array {v2, v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xb

    aput-object v0, p1, v2

    .line 1165
    const-string v0, "x-iso-8859-11"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xc

    aput-object v0, p1, v2

    .line 1166
    const-string v0, "windows-1257"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xd

    aput-object v0, p1, v2

    .line 1167
    const-string v0, "utf-16be"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xe

    aput-object v0, p1, v2

    .line 1168
    const-string v0, "x-johab"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xf

    aput-object v0, p1, v2

    .line 1169
    const-string v0, "iso-8859-1"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "jis_x0201"

    filled-new-array {v2, v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x10

    aput-object v0, p1, v2

    .line 1171
    const-string v0, "iso-8859-2"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x11

    aput-object v0, p1, v2

    .line 1172
    const-string v0, "utf-8"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "x-euc-tw"

    filled-new-array {v2, v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "iso-8859-3"

    filled-new-array {v2, v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x12

    aput-object v0, p1, v2

    .line 1175
    const-string v0, "iso-8859-4"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "x-eucjp-open"

    filled-new-array {v2, v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x13

    aput-object v0, p1, v2

    .line 1177
    const-string v0, "iso-8859-5"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x14

    aput-object v0, p1, v2

    .line 1178
    const-string v0, "iso-8859-6"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x15

    aput-object v0, p1, v2

    .line 1179
    const-string v0, "iso-8859-7"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "x-ibm874"

    filled-new-array {v2, v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x16

    aput-object v0, p1, v2

    .line 1181
    const-string v0, "shift_jis"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "iso-8859-8"

    filled-new-array {v2, v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x17

    aput-object v0, p1, v2

    .line 1183
    const-string v0, "iso-8859-9"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x18

    aput-object v0, p1, v2

    .line 1184
    const-string v0, "x-ibm737"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x1c

    aput-object v0, p1, v2

    .line 1185
    const-string v0, "ibm850"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x1f

    aput-object v0, p1, v2

    .line 1186
    const-string v0, "euc-jp"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x20

    aput-object v0, p1, v2

    .line 1187
    const-string v0, "ibm775"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "ibm852"

    filled-new-array {v2, v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x21

    aput-object v0, p1, v2

    .line 1189
    const-string v0, "us-ascii"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x22

    aput-object v0, p1, v2

    .line 1190
    const-string v0, "iso-8859-13"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x23

    aput-object v0, p1, v2

    .line 1191
    const-string v0, "ibm437"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "ibm855"

    filled-new-array {v2, v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x24

    aput-object v0, p1, v2

    .line 1193
    const-string v0, "iso-8859-15"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x25

    aput-object v0, p1, v2

    .line 1194
    const-string v0, "x-utf-32le-bom"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "iso-8859-16"

    filled-new-array {v2, v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "ibm857"

    filled-new-array {v2, v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x26

    aput-object v0, p1, v2

    .line 1197
    const-string v0, "ibm00858"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x27

    aput-object v0, p1, v2

    .line 1198
    const-string v0, "big5-hkscs"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x28

    aput-object v0, p1, v2

    .line 1199
    const-string v0, "x-utf-16le-bom"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x2c

    aput-object v0, p1, v2

    .line 1200
    const-string v0, "cesu-8"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x2f

    aput-object v0, p1, v2

    .line 1201
    const-string v0, "x-utf-32be-bom"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "gbk"

    filled-new-array {v2, v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x30

    aput-object v0, p1, v2

    .line 1203
    const-string v0, "big5"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x35

    aput-object v0, p1, v2

    .line 1204
    const-string v0, "koi8-r"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x38

    aput-object v0, p1, v2

    .line 1205
    const-string v0, "koi8-u"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x3b

    aput-object v0, p1, v2

    .line 1206
    const-string v0, "jis_x0212-1990"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "x-euc-jp-linux"

    filled-new-array {v2, v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x3c

    aput-object v0, p1, v2

    .line 1208
    const-string v0, "gb2312"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x3d

    aput-object v0, p1, v2

    .line 1209
    const-string v0, "utf-32le"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x3e

    aput-object v0, p1, v1

    .line 1210
    return-void
.end method
