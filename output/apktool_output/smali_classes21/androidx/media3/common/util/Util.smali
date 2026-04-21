.class public final Landroidx/media3/common/util/Util;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/util/Util$Api29;,
        Landroidx/media3/common/util/Util$Api24;,
        Landroidx/media3/common/util/Util$Api26;
    }
.end annotation


# static fields
.field private static final CRC16_BYTES_MSBF:[I

.field private static final CRC32_BYTES_MSBF:[I

.field private static final CRC8_BYTES_MSBF:[I

.field public static final DEVICE:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEVICE_DEBUG_INFO:Ljava/lang/String;

.field public static final EMPTY_BYTE_ARRAY:[B

.field public static final EMPTY_LONG_ARRAY:[J

.field private static final ESCAPED_CHARACTER_PATTERN:Ljava/util/regex/Pattern;

.field private static final ISM_DASH_FORMAT_EXTENSION:Ljava/lang/String; = "format=mpd-time-csf"

.field private static final ISM_HLS_FORMAT_EXTENSION:Ljava/lang/String; = "format=m3u8-aapl"

.field private static final ISM_PATH_PATTERN:Ljava/util/regex/Pattern;

.field public static final MANUFACTURER:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MODEL:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SDK_INT:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "Util"

.field private static final XS_DATE_TIME_PATTERN:Ljava/util/regex/Pattern;

.field private static final XS_DURATION_PATTERN:Ljava/util/regex/Pattern;

.field private static final ZLIB_INFLATE_HEADER:I = 0x78

.field private static final additionalIsoLanguageReplacements:[Ljava/lang/String;

.field private static final isoLegacyTagReplacements:[Ljava/lang/String;

.field private static languageTagReplacementMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 89

    .line 171
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    .line 176
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sput-object v0, Landroidx/media3/common/util/Util;->DEVICE:Ljava/lang/String;

    .line 181
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sput-object v0, Landroidx/media3/common/util/Util;->MANUFACTURER:Ljava/lang/String;

    .line 186
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Landroidx/media3/common/util/Util;->MODEL:Ljava/lang/String;

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/util/Util;->DEVICE_DEBUG_INFO:Ljava/lang/String;

    .line 194
    const/4 v0, 0x0

    new-array v1, v0, [B

    sput-object v1, Landroidx/media3/common/util/Util;->EMPTY_BYTE_ARRAY:[B

    .line 197
    new-array v0, v0, [J

    sput-object v0, Landroidx/media3/common/util/Util;->EMPTY_LONG_ARRAY:[J

    .line 200
    nop

    .line 201
    const-string v0, "(\\d\\d\\d\\d)\\-(\\d\\d)\\-(\\d\\d)[Tt ](\\d\\d):(\\d\\d):(\\d\\d)([\\.,](\\d+))?([Zz]|((\\+|\\-)(\\d?\\d):?(\\d\\d)?))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/util/Util;->XS_DATE_TIME_PATTERN:Ljava/util/regex/Pattern;

    .line 205
    nop

    .line 206
    const-string v0, "^(-)?P(([0-9]*)Y)?(([0-9]*)M)?(([0-9]*)D)?(T(([0-9]*)H)?(([0-9]*)M)?(([0-9.]*)S)?)?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/util/Util;->XS_DURATION_PATTERN:Ljava/util/regex/Pattern;

    .line 209
    const-string v0, "%([A-Fa-f0-9]{2})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/util/Util;->ESCAPED_CHARACTER_PATTERN:Ljava/util/regex/Pattern;

    .line 212
    nop

    .line 213
    const-string v0, "(?:.*\\.)?isml?(?:/(manifest(.*))?)?"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/util/Util;->ISM_PATH_PATTERN:Ljava/util/regex/Pattern;

    .line 4223
    const-string v87, "hsn"

    const-string/jumbo v88, "zh-hsn"

    const-string v1, "alb"

    const-string/jumbo v2, "sq"

    const-string v3, "arm"

    const-string v4, "hy"

    const-string v5, "baq"

    const-string v6, "eu"

    const-string v7, "bur"

    const-string/jumbo v8, "my"

    const-string/jumbo v9, "tib"

    const-string v10, "bo"

    const-string v11, "chi"

    const-string/jumbo v12, "zh"

    const-string v13, "cze"

    const-string v14, "cs"

    const-string v15, "dut"

    const-string/jumbo v16, "nl"

    const-string v17, "ger"

    const-string v18, "de"

    const-string v19, "gre"

    const-string v20, "el"

    const-string v21, "fre"

    const-string v22, "fr"

    const-string v23, "geo"

    const-string v24, "ka"

    const-string v25, "ice"

    const-string v26, "is"

    const-string v27, "mac"

    const-string/jumbo v28, "mk"

    const-string v29, "mao"

    const-string v30, "mi"

    const-string v31, "may"

    const-string/jumbo v32, "ms"

    const-string/jumbo v33, "per"

    const-string v34, "fa"

    const-string/jumbo v35, "rum"

    const-string/jumbo v36, "ro"

    const-string/jumbo v37, "scc"

    const-string v38, "hbs-srp"

    const-string/jumbo v39, "slo"

    const-string/jumbo v40, "sk"

    const-string/jumbo v41, "wel"

    const-string v42, "cy"

    const-string v43, "id"

    const-string/jumbo v44, "ms-ind"

    const-string v45, "iw"

    const-string v46, "he"

    const-string v47, "heb"

    const-string v48, "he"

    const-string v49, "ji"

    const-string/jumbo v50, "yi"

    const-string v51, "arb"

    const-string v52, "ar-arb"

    const-string v53, "in"

    const-string/jumbo v54, "ms-ind"

    const-string v55, "ind"

    const-string/jumbo v56, "ms-ind"

    const-string/jumbo v57, "nb"

    const-string/jumbo v58, "no-nob"

    const-string/jumbo v59, "nob"

    const-string/jumbo v60, "no-nob"

    const-string/jumbo v61, "nn"

    const-string/jumbo v62, "no-nno"

    const-string/jumbo v63, "nno"

    const-string/jumbo v64, "no-nno"

    const-string/jumbo v65, "tw"

    const-string v66, "ak-twi"

    const-string/jumbo v67, "twi"

    const-string v68, "ak-twi"

    const-string v69, "bs"

    const-string v70, "hbs-bos"

    const-string v71, "bos"

    const-string v72, "hbs-bos"

    const-string v73, "hr"

    const-string v74, "hbs-hrv"

    const-string v75, "hrv"

    const-string v76, "hbs-hrv"

    const-string/jumbo v77, "sr"

    const-string v78, "hbs-srp"

    const-string/jumbo v79, "srp"

    const-string v80, "hbs-srp"

    const-string v81, "cmn"

    const-string/jumbo v82, "zh-cmn"

    const-string v83, "hak"

    const-string/jumbo v84, "zh-hak"

    const-string/jumbo v85, "nan"

    const-string/jumbo v86, "zh-nan"

    filled-new-array/range {v1 .. v88}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/util/Util;->additionalIsoLanguageReplacements:[Ljava/lang/String;

    .line 4279
    const-string/jumbo v17, "zh-xiang"

    const-string/jumbo v18, "zh-hsn"

    const-string v1, "i-lux"

    const-string v2, "lb"

    const-string v3, "i-hak"

    const-string/jumbo v4, "zh-hak"

    const-string v5, "i-navajo"

    const-string/jumbo v6, "nv"

    const-string/jumbo v7, "no-bok"

    const-string/jumbo v8, "no-nob"

    const-string/jumbo v9, "no-nyn"

    const-string/jumbo v10, "no-nno"

    const-string/jumbo v11, "zh-guoyu"

    const-string/jumbo v12, "zh-cmn"

    const-string/jumbo v13, "zh-hakka"

    const-string/jumbo v14, "zh-hak"

    const-string/jumbo v15, "zh-min-nan"

    const-string/jumbo v16, "zh-nan"

    filled-new-array/range {v1 .. v18}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/util/Util;->isoLegacyTagReplacements:[Ljava/lang/String;

    .line 4296
    const/16 v0, 0x100

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Landroidx/media3/common/util/Util;->CRC32_BYTES_MSBF:[I

    .line 4340
    const/16 v1, 0x10

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    sput-object v1, Landroidx/media3/common/util/Util;->CRC16_BYTES_MSBF:[I

    .line 4350
    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Landroidx/media3/common/util/Util;->CRC8_BYTES_MSBF:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x4c11db7
        0x9823b6e
        0xd4326d9
        0x130476dc
        0x17c56b6b
        0x1a864db2
        0x1e475005
        0x2608edb8
        0x22c9f00f
        0x2f8ad6d6
        0x2b4bcb61
        0x350c9b64
        0x31cd86d3
        0x3c8ea00a
        0x384fbdbd
        0x4c11db70    # 3.8235584E7f
        0x48d0c6c7
        0x4593e01e
        0x4152fda9
        0x5f15adac
        0x5bd4b01b
        0x569796c2
        0x52568b75
        0x6a1936c8
        0x6ed82b7f
        0x639b0da6
        0x675a1011
        0x791d4014
        0x7ddc5da3
        0x709f7b7a
        0x745e66cd
        -0x67dc4920
        -0x631d54a9    # -1.4999716E-21f
        -0x6e5e7272
        -0x6a9f6fc7
        -0x74d83fc4
        -0x70192275
        -0x7d5a04ae
        -0x799b191b
        -0x41d4a4a8
        -0x4515b911
        -0x48569fca
        -0x4c97827f
        -0x52d0d27c
        -0x5611cfcd
        -0x5b52e916
        -0x5f93f4a3    # -1.9993737E-19f
        -0x2bcd9270
        -0x2f0c8fd9
        -0x224fa902
        -0x268eb4b7
        -0x38c9e4b4
        -0x3c08f905
        -0x314bdfde
        -0x358ac26b
        -0xdc57fd8
        -0x9046261
        -0x44744ba
        -0x86590f
        -0x1ec1090c
        -0x1a0014bd
        -0x17433266
        -0x13822fd3
        0x34867077
        0x30476dc0
        0x3d044b19
        0x39c556ae
        0x278206ab
        0x23431b1c
        0x2e003dc5
        0x2ac12072
        0x128e9dcf    # 9.000363E-28f
        0x164f8078
        0x1b0ca6a1
        0x1fcdbb16
        0x18aeb13
        0x54bf6a4
        0x808d07d
        0xcc9cdca
        0x7897ab07
        0x7c56b6b0
        0x71159069
        0x75d48dde
        0x6b93dddb
        0x6f52c06c
        0x6211e6b5
        0x66d0fb02
        0x5e9f46bf
        0x5a5e5b08
        0x571d7dd1
        0x53dc6066
        0x4d9b3063    # 3.25454944E8f
        0x495a2dd4    # 893661.25f
        0x44190b0d
        0x40d816ba
        -0x535a3969
        -0x579b24e0
        -0x5ad80207
        -0x5e191fb2
        -0x405e4fb5
        -0x449f5204
        -0x49dc74db
        -0x4d1d696e
        -0x7552d4d1
        -0x7193c968
        -0x7cd0efbf
        -0x7811f20a
        -0x6656a20d
        -0x6297bfbc
        -0x6fd49963
        -0x6b1584d6
        -0x1f4be219
        -0x1b8affb0
        -0x16c9d977
        -0x1208c4c2
        -0xc4f94c5
        -0x88e8974
        -0x5cdafab
        -0x10cb21e
        -0x39430fa1
        -0x3d821218
        -0x30c134cf
        -0x3400297a
        -0x2a47797d
        -0x2e8664cc
        -0x23c54213
        -0x27045fa6
        0x690ce0ee
        0x6dcdfd59
        0x608edb80
        0x644fc637
        0x7a089632
        0x7ec98b85
        0x738aad5c
        0x774bb0eb
        0x4f040d56
        0x4bc510e1    # 2.5829826E7f
        0x46863638
        0x42472b8f
        0x5c007b8a
        0x58c1663d
        0x558240e4
        0x51435d53
        0x251d3b9e
        0x21dc2629
        0x2c9f00f0
        0x285e1d47
        0x36194d42
        0x32d850f5
        0x3f9b762c
        0x3b5a6b9b
        0x315d626
        0x7d4cb91
        0xa97ed48
        0xe56f0ff
        0x1011a0fa
        0x14d0bd4d
        0x19939b94
        0x1d528623
        -0xed0a9f2
        -0xa11b447
        -0x75292a0
        -0x3938f29
        -0x1dd4df2e
        -0x1915c29b
        -0x1456e444
        -0x1097f9f5
        -0x28d8444a
        -0x2c1959ff
        -0x215a7f28
        -0x259b6291
        -0x3bdc3296
        -0x3f1d2f23
        -0x325e09fc
        -0x369f144d
        -0x42c17282
        -0x46006f37
        -0x4b4349f0
        -0x4f825459
        -0x51c5045e
        -0x550419eb
        -0x58473f34
        -0x5c862285
        -0x64c99f3a
        -0x6008828f
        -0x6d4ba458
        -0x698ab9e1
        -0x77cde9e6
        -0x730cf453
        -0x7e4fd28c
        -0x7a8ecf3d
        0x5d8a9099
        0x594b8d2e
        0x5408abf7
        0x50c9b640
        0x4e8ee645
        0x4a4ffbf2    # 3407612.5f
        0x470cdd2b
        0x43cdc09c
        0x7b827d21
        0x7f436096
        0x7200464f
        0x76c15bf8
        0x68860bfd
        0x6c47164a
        0x61043093
        0x65c52d24
        0x119b4be9
        0x155a565e
        0x18197087
        0x1cd86d30
        0x29f3d35
        0x65e2082
        0xb1d065b
        0xfdc1bec
        0x3793a651
        0x3352bbe6
        0x3e119d3f
        0x3ad08088
        0x2497d08d
        0x2056cd3a
        0x2d15ebe3
        0x29d4f654
        -0x3a56d987
        -0x3e97c432
        -0x33d4e2e9    # -4.4856412E7f
        -0x3715ff60    # -479237.0f
        -0x2952af5b
        -0x2d93b2ee
        -0x20d09435
        -0x24118984
        -0x1c5e343f
        -0x189f298a
        -0x15dc0f51
        -0x111d12e8
        -0xf5a42e3
        -0xb9b5f56
        -0x6d8798d
        -0x219643c
        -0x764702f7
        -0x72861f42    # -7.6999573E-31f
        -0x7fc53999
        -0x7b042430
        -0x6543742b
        -0x6182699e
        -0x6cc14f45
        -0x680052f4
        -0x504fef4f
        -0x548ef2fa
        -0x59cdd421
        -0x5d0cc998
        -0x434b9993
        -0x478a8426
        -0x4ac9a2fd
        -0x4e08bf4c
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1021
        0x2042
        0x3063
        0x4084
        0x50a5
        0x60c6
        0x70e7
        0x8108
        0x9129
        0xa14a
        0xb16b
        0xc18c
        0xd1ad
        0xe1ce
        0xf1ef
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x7
        0xe
        0x9
        0x1c
        0x1b
        0x12
        0x15
        0x38
        0x3f
        0x36
        0x31
        0x24
        0x23
        0x2a
        0x2d
        0x70
        0x77
        0x7e
        0x79
        0x6c
        0x6b
        0x62
        0x65
        0x48
        0x4f
        0x46
        0x41
        0x54
        0x53
        0x5a
        0x5d
        0xe0
        0xe7
        0xee
        0xe9
        0xfc
        0xfb
        0xf2
        0xf5
        0xd8
        0xdf
        0xd6
        0xd1
        0xc4
        0xc3
        0xca
        0xcd
        0x90
        0x97
        0x9e
        0x99
        0x8c
        0x8b
        0x82
        0x85
        0xa8
        0xaf
        0xa6
        0xa1
        0xb4
        0xb3
        0xba
        0xbd
        0xc7
        0xc0
        0xc9
        0xce
        0xdb
        0xdc
        0xd5
        0xd2
        0xff
        0xf8
        0xf1
        0xf6
        0xe3
        0xe4
        0xed
        0xea
        0xb7
        0xb0
        0xb9
        0xbe
        0xab
        0xac
        0xa5
        0xa2
        0x8f
        0x88
        0x81
        0x86
        0x93
        0x94
        0x9d
        0x9a
        0x27
        0x20
        0x29
        0x2e
        0x3b
        0x3c
        0x35
        0x32
        0x1f
        0x18
        0x11
        0x16
        0x3
        0x4
        0xd
        0xa
        0x57
        0x50
        0x59
        0x5e
        0x4b
        0x4c
        0x45
        0x42
        0x6f
        0x68
        0x61
        0x66
        0x73
        0x74
        0x7d
        0x7a
        0x89
        0x8e
        0x87
        0x80
        0x95
        0x92
        0x9b
        0x9c
        0xb1
        0xb6
        0xbf
        0xb8
        0xad
        0xaa
        0xa3
        0xa4
        0xf9
        0xfe
        0xf7
        0xf0
        0xe5
        0xe2
        0xeb
        0xec
        0xc1
        0xc6
        0xcf
        0xc8
        0xdd
        0xda
        0xd3
        0xd4
        0x69
        0x6e
        0x67
        0x60
        0x75
        0x72
        0x7b
        0x7c
        0x51
        0x56
        0x5f
        0x58
        0x4d
        0x4a
        0x43
        0x44
        0x19
        0x1e
        0x17
        0x10
        0x5
        0x2
        0xb
        0xc
        0x21
        0x26
        0x2f
        0x28
        0x3d
        0x3a
        0x33
        0x34
        0x4e
        0x49
        0x40
        0x47
        0x52
        0x55
        0x5c
        0x5b
        0x76
        0x71
        0x78
        0x7f
        0x6a
        0x6d
        0x64
        0x63
        0x3e
        0x39
        0x30
        0x37
        0x22
        0x25
        0x2c
        0x2b
        0x6
        0x1
        0x8
        0xf
        0x1a
        0x1d
        0x14
        0x13
        0xae
        0xa9
        0xa0
        0xa7
        0xb2
        0xb5
        0xbc
        0xbb
        0x96
        0x91
        0x98
        0x9f
        0x8a
        0x8d
        0x84
        0x83
        0xde
        0xd9
        0xd0
        0xd7
        0xc2
        0xc5
        0xcc
        0xcb
        0xe6
        0xe1
        0xe8
        0xef
        0xfa
        0xfd
        0xf4
        0xf3
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addWithOverflowDefault(JJJ)J
    .locals 6
    .param p0, "x"    # J
    .param p2, "y"    # J
    .param p4, "overflowResult"    # J

    .line 1296
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/math/LongMath;->saturatedAdd(JJ)J

    move-result-wide v0

    .line 1298
    .local v0, "result":J
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    add-long v4, p0, p2

    cmp-long v2, v4, v2

    if-nez v2, :cond_1

    :cond_0
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    add-long v4, p0, p2

    cmp-long v2, v4, v2

    if-eqz v2, :cond_2

    .line 1299
    :cond_1
    move-wide v2, p4

    goto :goto_0

    .line 1300
    :cond_2
    move-wide v2, v0

    .line 1297
    :goto_0
    return-wide v2
.end method

.method public static areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "o1"    # Ljava/lang/Object;
    .param p1, "o2"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 530
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static binarySearchCeil(Ljava/util/List;Ljava/lang/Comparable;ZZ)I
    .locals 3
    .param p2, "inclusive"    # Z
    .param p3, "stayInBounds"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Comparable<",
            "-TT;>;>;TT;ZZ)I"
        }
    .end annotation

    .line 1627
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Comparable<-TT;>;>;"
    .local p1, "value":Ljava/lang/Comparable;, "TT;"
    invoke-static {p0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 1628
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 1629
    not-int v0, v0

    goto :goto_1

    .line 1631
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 1632
    .local v1, "listSize":I
    :goto_0
    add-int/lit8 v0, v0, 0x1

    if-ge v0, v1, :cond_1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Comparable;

    invoke-interface {v2, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 1633
    :cond_1
    if-eqz p2, :cond_2

    .line 1634
    add-int/lit8 v0, v0, -0x1

    .line 1637
    .end local v1    # "listSize":I
    :cond_2
    :goto_1
    if-eqz p3, :cond_3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_2

    :cond_3
    move v1, v0

    :goto_2
    return v1
.end method

.method public static binarySearchCeil([IIZZ)I
    .locals 2
    .param p0, "array"    # [I
    .param p1, "value"    # I
    .param p2, "inclusive"    # Z
    .param p3, "stayInBounds"    # Z

    .line 1555
    invoke-static {p0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 1556
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 1557
    not-int v0, v0

    goto :goto_1

    .line 1559
    :cond_0
    :goto_0
    add-int/lit8 v0, v0, 0x1

    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget v1, p0, v0

    if-ne v1, p1, :cond_1

    goto :goto_0

    .line 1560
    :cond_1
    if-eqz p2, :cond_2

    .line 1561
    add-int/lit8 v0, v0, -0x1

    .line 1564
    :cond_2
    :goto_1
    if-eqz p3, :cond_3

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_2

    :cond_3
    move v1, v0

    :goto_2
    return v1
.end method

.method public static binarySearchCeil([JJZZ)I
    .locals 3
    .param p0, "array"    # [J
    .param p1, "value"    # J
    .param p3, "inclusive"    # Z
    .param p4, "stayInBounds"    # Z

    .line 1589
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    .line 1590
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 1591
    not-int v0, v0

    goto :goto_1

    .line 1593
    :cond_0
    :goto_0
    add-int/lit8 v0, v0, 0x1

    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget-wide v1, p0, v0

    cmp-long v1, v1, p1

    if-nez v1, :cond_1

    goto :goto_0

    .line 1594
    :cond_1
    if-eqz p3, :cond_2

    .line 1595
    add-int/lit8 v0, v0, -0x1

    .line 1598
    :cond_2
    :goto_1
    if-eqz p4, :cond_3

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_2

    :cond_3
    move v1, v0

    :goto_2
    return v1
.end method

.method public static binarySearchFloor(Landroidx/media3/common/util/LongArray;JZZ)I
    .locals 5
    .param p0, "longArray"    # Landroidx/media3/common/util/LongArray;
    .param p1, "value"    # J
    .param p3, "inclusive"    # Z
    .param p4, "stayInBounds"    # Z

    .line 1512
    const/4 v0, 0x0

    .line 1513
    .local v0, "lowIndex":I
    invoke-virtual {p0}, Landroidx/media3/common/util/LongArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 1515
    .local v1, "highIndex":I
    :goto_0
    if-gt v0, v1, :cond_1

    .line 1516
    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    .line 1517
    .local v2, "midIndex":I
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/LongArray;->get(I)J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-gez v3, :cond_0

    .line 1518
    add-int/lit8 v0, v2, 0x1

    goto :goto_1

    .line 1520
    :cond_0
    add-int/lit8 v1, v2, -0x1

    .line 1522
    .end local v2    # "midIndex":I
    :goto_1
    goto :goto_0

    .line 1524
    :cond_1
    if-eqz p3, :cond_2

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0}, Landroidx/media3/common/util/LongArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Landroidx/media3/common/util/LongArray;->get(I)J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_2

    .line 1525
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1526
    :cond_2
    if-eqz p4, :cond_3

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 1527
    const/4 v1, 0x0

    .line 1530
    :cond_3
    :goto_2
    return v1
.end method

.method public static binarySearchFloor(Ljava/util/List;Ljava/lang/Comparable;ZZ)I
    .locals 2
    .param p2, "inclusive"    # Z
    .param p3, "stayInBounds"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Comparable<",
            "-TT;>;>;TT;ZZ)I"
        }
    .end annotation

    .line 1479
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Comparable<-TT;>;>;"
    .local p1, "value":Ljava/lang/Comparable;, "TT;"
    invoke-static {p0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 1480
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 1481
    add-int/lit8 v1, v0, 0x2

    neg-int v0, v1

    goto :goto_1

    .line 1483
    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    invoke-interface {v1, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 1484
    :cond_1
    if-eqz p2, :cond_2

    .line 1485
    add-int/lit8 v0, v0, 0x1

    .line 1488
    :cond_2
    :goto_1
    if-eqz p3, :cond_3

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_2

    :cond_3
    move v1, v0

    :goto_2
    return v1
.end method

.method public static binarySearchFloor([IIZZ)I
    .locals 2
    .param p0, "array"    # [I
    .param p1, "value"    # I
    .param p2, "inclusive"    # Z
    .param p3, "stayInBounds"    # Z

    .line 1409
    invoke-static {p0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 1410
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 1411
    add-int/lit8 v1, v0, 0x2

    neg-int v0, v1

    goto :goto_1

    .line 1413
    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    aget v1, p0, v0

    if-ne v1, p1, :cond_1

    goto :goto_0

    .line 1414
    :cond_1
    if-eqz p2, :cond_2

    .line 1415
    add-int/lit8 v0, v0, 0x1

    .line 1418
    :cond_2
    :goto_1
    if-eqz p3, :cond_3

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_2

    :cond_3
    move v1, v0

    :goto_2
    return v1
.end method

.method public static binarySearchFloor([JJZZ)I
    .locals 3
    .param p0, "array"    # [J
    .param p1, "value"    # J
    .param p3, "inclusive"    # Z
    .param p4, "stayInBounds"    # Z

    .line 1442
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    .line 1443
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 1444
    add-int/lit8 v1, v0, 0x2

    neg-int v0, v1

    goto :goto_1

    .line 1446
    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    aget-wide v1, p0, v0

    cmp-long v1, v1, p1

    if-nez v1, :cond_1

    goto :goto_0

    .line 1447
    :cond_1
    if-eqz p3, :cond_2

    .line 1448
    add-int/lit8 v0, v0, 0x1

    .line 1451
    :cond_2
    :goto_1
    if-eqz p4, :cond_3

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_2

    :cond_3
    move v1, v0

    :goto_2
    return v1
.end method

.method public static castNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "#1"
        }
    .end annotation

    .line 651
    .local p0, "value":Ljava/lang/Object;, "TT;"
    return-object p0
.end method

.method public static castNonNullTypeArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "#1"
        }
    .end annotation

    .line 659
    .local p0, "value":[Ljava/lang/Object;, "[TT;"
    return-object p0
.end method

.method public static ceilDivide(II)I
    .locals 1
    .param p0, "numerator"    # I
    .param p1, "denominator"    # I

    .line 1219
    add-int v0, p0, p1

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, p1

    return v0
.end method

.method public static ceilDivide(JJ)J
    .locals 4
    .param p0, "numerator"    # J
    .param p2, "denominator"    # J

    .line 1231
    add-long v0, p0, p2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    div-long/2addr v0, p2

    return-wide v0
.end method

.method public static varargs checkCleartextTrafficPermitted([Landroidx/media3/common/MediaItem;)Z
    .locals 6
    .param p0, "mediaItems"    # [Landroidx/media3/common/MediaItem;

    .line 480
    nop

    .line 484
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_4

    aget-object v3, p0, v2

    .line 485
    .local v3, "mediaItem":Landroidx/media3/common/MediaItem;
    iget-object v4, v3, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    if-nez v4, :cond_0

    .line 486
    goto :goto_2

    .line 488
    :cond_0
    iget-object v4, v3, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object v4, v4, Landroidx/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    invoke-static {v4}, Landroidx/media3/common/util/Util;->isTrafficRestricted(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 489
    return v1

    .line 491
    :cond_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget-object v5, v3, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object v5, v5, Landroidx/media3/common/MediaItem$LocalConfiguration;->subtitleConfigurations:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 492
    iget-object v5, v3, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object v5, v5, Landroidx/media3/common/MediaItem$LocalConfiguration;->subtitleConfigurations:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v5, v4}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/common/MediaItem$SubtitleConfiguration;

    iget-object v5, v5, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->uri:Landroid/net/Uri;

    invoke-static {v5}, Landroidx/media3/common/util/Util;->isTrafficRestricted(Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 493
    return v1

    .line 491
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 484
    .end local v3    # "mediaItem":Landroidx/media3/common/MediaItem;
    .end local v4    # "i":I
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 497
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "closeable"    # Ljava/io/Closeable;

    .line 996
    if-eqz p0, :cond_0

    .line 997
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 999
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1001
    :cond_0
    :goto_0
    nop

    .line 1002
    :goto_1
    return-void
.end method

.method public static compareLong(JJ)I
    .locals 1
    .param p0, "left"    # J
    .param p2, "right"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1658
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public static constrainValue(DDD)D
    .locals 2
    .param p0, "value"    # D
    .param p2, "min"    # D
    .param p4, "max"    # D

    .line 1283
    invoke-static {p0, p1, p4, p5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static constrainValue(FFF)F
    .locals 1
    .param p0, "value"    # F
    .param p1, "min"    # F
    .param p2, "max"    # F

    .line 1270
    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public static constrainValue(III)I
    .locals 1
    .param p0, "value"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I

    .line 1244
    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static constrainValue(JJJ)J
    .locals 2
    .param p0, "value"    # J
    .param p2, "min"    # J
    .param p4, "max"    # J

    .line 1257
    invoke-static {p0, p1, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static contains(Landroid/util/SparseArray;I)Z
    .locals 1
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray<",
            "TT;>;I)Z"
        }
    .end annotation

    .line 618
    .local p0, "sparseArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TT;>;"
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .param p0, "items"    # [Ljava/lang/Object;
    .param p1, "item"    # Ljava/lang/Object;

    .line 603
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 604
    .local v3, "arrayItem":Ljava/lang/Object;
    invoke-static {v3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 605
    const/4 v0, 0x1

    return v0

    .line 603
    .end local v3    # "arrayItem":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 608
    :cond_1
    return v1
.end method

.method public static contentEquals(Landroid/util/SparseArray;Landroid/util/SparseArray;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray<",
            "TT;>;",
            "Landroid/util/SparseArray<",
            "TT;>;)Z"
        }
    .end annotation

    .line 545
    .local p0, "sparseArray1":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TT;>;"
    .local p1, "sparseArray2":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TT;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_1

    .line 546
    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    .line 547
    :cond_1
    if-nez p1, :cond_2

    .line 548
    return v1

    .line 551
    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    if-lt v2, v3, :cond_3

    .line 552
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->contentEquals(Landroid/util/SparseArray;)Z

    move-result v0

    return v0

    .line 555
    :cond_3
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 556
    .local v2, "size":I
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-eq v2, v3, :cond_4

    .line 557
    return v1

    .line 560
    :cond_4
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_1
    if-ge v3, v2, :cond_6

    .line 561
    invoke-virtual {p0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 562
    .local v4, "key":I
    invoke-virtual {p0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 563
    return v1

    .line 560
    .end local v4    # "key":I
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 567
    .end local v3    # "index":I
    :cond_6
    return v0
.end method

.method public static contentHashCode(Landroid/util/SparseArray;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray<",
            "TT;>;)I"
        }
    .end annotation

    .line 580
    .local p0, "sparseArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TT;>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    .line 581
    invoke-virtual {p0}, Landroid/util/SparseArray;->contentHashCode()I

    move-result v0

    return v0

    .line 583
    :cond_0
    const/16 v0, 0x11

    .line 584
    .local v0, "hash":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 585
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 586
    .end local v0    # "hash":I
    .local v2, "hash":I
    mul-int/lit8 v0, v2, 0x1f

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .line 584
    .end local v2    # "hash":I
    .restart local v0    # "hash":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 588
    .end local v1    # "index":I
    :cond_1
    return v0
.end method

.method public static convertToNullIfInvalid(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4
    .param p0, "bundle"    # Landroid/os/Bundle;
    .annotation runtime Lcom/google/errorprone/annotations/CheckReturnValue;
    .end annotation

    .line 4107
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 4108
    return-object v0

    .line 4111
    :cond_0
    const-class v1, Landroidx/media3/common/util/Util;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ClassLoader;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 4114
    :try_start_0
    invoke-virtual {p0}, Landroid/os/Bundle;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4115
    return-object p0

    .line 4116
    :catch_0
    move-exception v1

    .line 4117
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v2, "Util"

    const-string v3, "Ignoring invalid bundle"

    invoke-static {v2, v3, v1}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4118
    return-object v0
.end method

.method public static crc16([BIII)I
    .locals 3
    .param p0, "bytes"    # [B
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "initialValue"    # I

    .line 3183
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 3184
    aget-byte v1, p0, v0

    invoke-static {v1}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v1

    .line 3186
    .local v1, "value":I
    shr-int/lit8 v2, v1, 0x4

    invoke-static {v2, p3}, Landroidx/media3/common/util/Util;->crc16UpdateFourBits(II)I

    move-result p3

    .line 3187
    and-int/lit8 v2, v1, 0xf

    invoke-static {v2, p3}, Landroidx/media3/common/util/Util;->crc16UpdateFourBits(II)I

    move-result p3

    .line 3183
    .end local v1    # "value":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3189
    .end local v0    # "i":I
    :cond_0
    return p3
.end method

.method private static crc16UpdateFourBits(II)I
    .locals 3
    .param p0, "value"    # I
    .param p1, "crc16Register"    # I

    .line 3203
    shr-int/lit8 v0, p1, 0xc

    and-int/lit16 v0, v0, 0xff

    .line 3205
    .local v0, "mostSignificant4Bits":I
    xor-int v1, v0, p0

    and-int/lit16 v0, v1, 0xff

    .line 3207
    shl-int/lit8 v1, p1, 0x4

    const v2, 0xffff

    and-int p1, v1, v2

    .line 3209
    sget-object v1, Landroidx/media3/common/util/Util;->CRC16_BYTES_MSBF:[I

    aget v1, v1, v0

    xor-int/2addr v1, p1

    and-int p1, v1, v2

    .line 3211
    return p1
.end method

.method public static crc32([BIII)I
    .locals 5
    .param p0, "bytes"    # [B
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "initialValue"    # I

    .line 3162
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 3163
    shl-int/lit8 v1, p3, 0x8

    sget-object v2, Landroidx/media3/common/util/Util;->CRC32_BYTES_MSBF:[I

    ushr-int/lit8 v3, p3, 0x18

    aget-byte v4, p0, v0

    and-int/lit16 v4, v4, 0xff

    xor-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    aget v2, v2, v3

    xor-int p3, v1, v2

    .line 3162
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3167
    .end local v0    # "i":I
    :cond_0
    return p3
.end method

.method public static crc8([BIII)I
    .locals 3
    .param p0, "bytes"    # [B
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "initialValue"    # I

    .line 3226
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 3227
    sget-object v1, Landroidx/media3/common/util/Util;->CRC8_BYTES_MSBF:[I

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    xor-int/2addr v2, p3

    aget p3, v1, v2

    .line 3226
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3229
    .end local v0    # "i":I
    :cond_0
    return p3
.end method

.method public static createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;
    .locals 1
    .param p0, "looper"    # Landroid/os/Looper;
    .param p1, "callback"    # Landroid/os/Handler$Callback;

    .line 818
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    return-object v0
.end method

.method public static createHandlerForCurrentLooper()Landroid/os/Handler;
    .locals 1

    .line 750
    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/media3/common/util/Util;->createHandlerForCurrentLooper(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public static createHandlerForCurrentLooper(Landroid/os/Handler$Callback;)Landroid/os/Handler;
    .locals 1
    .param p0, "callback"    # Landroid/os/Handler$Callback;

    .line 768
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    invoke-static {v0, p0}, Landroidx/media3/common/util/Util;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public static createHandlerForCurrentOrMainLooper()Landroid/os/Handler;
    .locals 1

    .line 779
    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/media3/common/util/Util;->createHandlerForCurrentOrMainLooper(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public static createHandlerForCurrentOrMainLooper(Landroid/os/Handler$Callback;)Landroid/os/Handler;
    .locals 1
    .param p0, "callback"    # Landroid/os/Handler$Callback;

    .line 799
    invoke-static {}, Landroidx/media3/common/util/Util;->getCurrentOrMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0, p0}, Landroidx/media3/common/util/Util;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method private static createIsoLanguageReplacementMap()Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4154
    invoke-static {}, Ljava/util/Locale;->getISOLanguages()[Ljava/lang/String;

    move-result-object v0

    .line 4155
    .local v0, "iso2Languages":[Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    array-length v2, v0

    sget-object v3, Landroidx/media3/common/util/Util;->additionalIsoLanguageReplacements:[Ljava/lang/String;

    array-length v3, v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 4158
    .local v1, "replacedLanguages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 4161
    .local v4, "iso2":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/util/Locale;

    invoke-direct {v5, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v5

    .line 4162
    .local v5, "iso3":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 4163
    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4167
    .end local v5    # "iso3":Ljava/lang/String;
    :cond_0
    goto :goto_1

    .line 4165
    :catch_0
    move-exception v5

    .line 4158
    .end local v4    # "iso2":Ljava/lang/String;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4170
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    sget-object v3, Landroidx/media3/common/util/Util;->additionalIsoLanguageReplacements:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 4171
    sget-object v3, Landroidx/media3/common/util/Util;->additionalIsoLanguageReplacements:[Ljava/lang/String;

    aget-object v3, v3, v2

    sget-object v4, Landroidx/media3/common/util/Util;->additionalIsoLanguageReplacements:[Ljava/lang/String;

    add-int/lit8 v5, v2, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4170
    add-int/lit8 v2, v2, 0x2

    goto :goto_2

    .line 4174
    .end local v2    # "i":I
    :cond_2
    return-object v1
.end method

.method public static createReadOnlyByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 2
    .param p0, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 3270
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static createTempDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3138
    invoke-static {p0, p1}, Landroidx/media3/common/util/Util;->createTempFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 3139
    .local v0, "tempFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 3140
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 3141
    return-object v0
.end method

.method public static createTempFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3147
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static durationUsToSampleCount(JI)J
    .locals 7
    .param p0, "durationUs"    # J
    .param p2, "sampleRate"    # I

    .line 1754
    int-to-long v2, p2

    const-wide/32 v4, 0xf4240

    sget-object v6, Ljava/math/RoundingMode;->UP:Ljava/math/RoundingMode;

    move-wide v0, p0

    .end local p0    # "durationUs":J
    .local v0, "durationUs":J
    invoke-static/range {v0 .. v6}, Landroidx/media3/common/util/Util;->scaleLargeValue(JJJLjava/math/RoundingMode;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static ensureNotificationChannel(Landroid/app/NotificationManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "notificationManager"    # Landroid/app/NotificationManager;
    .param p1, "channelId"    # Ljava/lang/String;
    .param p2, "channelName"    # Ljava/lang/String;

    .line 359
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 360
    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 363
    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/media3/common/util/Util$Api26;->access$100(Landroid/app/NotificationManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    return-void

    .line 361
    :cond_1
    :goto_0
    return-void
.end method

.method public static escapeFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "fileName"    # Ljava/lang/String;

    .line 3014
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 3015
    .local v0, "length":I
    const/4 v1, 0x0

    .line 3016
    .local v1, "charactersToEscapeCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 3017
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroidx/media3/common/util/Util;->shouldEscapeCharacter(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3018
    add-int/lit8 v1, v1, 0x1

    .line 3016
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3021
    .end local v2    # "i":I
    :cond_1
    if-nez v1, :cond_2

    .line 3022
    return-object p0

    .line 3025
    :cond_2
    const/4 v2, 0x0

    .line 3026
    .restart local v2    # "i":I
    new-instance v3, Ljava/lang/StringBuilder;

    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v4, v0

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3027
    .local v3, "builder":Ljava/lang/StringBuilder;
    :goto_1
    if-lez v1, :cond_4

    .line 3028
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "i":I
    .local v4, "i":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 3029
    .local v2, "c":C
    invoke-static {v2}, Landroidx/media3/common/util/Util;->shouldEscapeCharacter(C)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3030
    const/16 v5, 0x25

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3031
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 3033
    :cond_3
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3035
    .end local v2    # "c":C
    :goto_2
    move v2, v4

    goto :goto_1

    .line 3036
    .end local v4    # "i":I
    .local v2, "i":I
    :cond_4
    if-ge v2, v0, :cond_5

    .line 3037
    invoke-virtual {v3, p0, v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 3039
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static fixSmoothStreamingIsmManifestUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;

    .line 2950
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 2951
    .local v0, "path":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 2952
    return-object p0

    .line 2954
    :cond_0
    sget-object v1, Landroidx/media3/common/util/Util;->ISM_PATH_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 2955
    .local v1, "ismMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 2957
    const-string v2, "Manifest"

    invoke-static {p0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    return-object v2

    .line 2959
    :cond_1
    return-object p0
.end method

.method public static varargs formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .line 1207
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static fromUtf8Bytes([B)Ljava/lang/String;
    .locals 2
    .param p0, "bytes"    # [B

    .line 1133
    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static fromUtf8Bytes([BII)Ljava/lang/String;
    .locals 2
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 1146
    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, p1, p2, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static generateAudioSessionIdV21(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 2740
    invoke-static {p0}, Landroidx/media3/common/audio/AudioManagerCompat;->getAudioManager(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->generateAudioSessionId()I

    move-result v0

    .line 2741
    .local v0, "audioSessionId":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static getAdaptiveMimeTypeForContentType(I)Ljava/lang/String;
    .locals 1
    .param p0, "contentType"    # I

    .line 2926
    packed-switch p0, :pswitch_data_0

    .line 2936
    const/4 v0, 0x0

    return-object v0

    .line 2930
    :pswitch_0
    const-string v0, "application/x-mpegURL"

    return-object v0

    .line 2932
    :pswitch_1
    const-string v0, "application/vnd.ms-sstr+xml"

    return-object v0

    .line 2928
    :pswitch_2
    const-string v0, "application/dash+xml"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getApiLevelThatAudioFormatIntroducedAudioEncoding(I)I
    .locals 1
    .param p0, "encoding"    # I

    .line 2571
    packed-switch p0, :pswitch_data_0

    .line 2602
    :pswitch_0
    const v0, 0x7fffffff

    return v0

    .line 2600
    :pswitch_1
    const/16 v0, 0x22

    return v0

    .line 2597
    :pswitch_2
    const/16 v0, 0x1f

    return v0

    .line 2594
    :pswitch_3
    const/16 v0, 0x1e

    return v0

    .line 2583
    :pswitch_4
    const/16 v0, 0x19

    return v0

    .line 2592
    :pswitch_5
    const/16 v0, 0x1c

    return v0

    .line 2581
    :pswitch_6
    const/16 v0, 0x17

    return v0

    .line 2578
    :pswitch_7
    const/16 v0, 0x15

    return v0

    .line 2574
    :pswitch_8
    const/4 v0, 0x3

    return v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static getAudioContentTypeForStreamType(I)I
    .locals 1
    .param p0, "streamType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2680
    packed-switch p0, :pswitch_data_0

    .line 2692
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 2686
    :pswitch_1
    const/4 v0, 0x4

    return v0

    .line 2689
    :pswitch_2
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getAudioFormat(III)Landroid/media/AudioFormat;
    .locals 1
    .param p0, "sampleRate"    # I
    .param p1, "channelConfig"    # I
    .param p2, "encoding"    # I

    .line 2555
    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 2556
    invoke-virtual {v0, p0}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 2557
    invoke-virtual {v0, p1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 2558
    invoke-virtual {v0, p2}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 2559
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v0

    .line 2555
    return-object v0
.end method

.method public static getAudioTrackChannelConfig(I)I
    .locals 3
    .param p0, "channelCount"    # I

    .line 2470
    const/16 v0, 0x18fc

    const/16 v1, 0x20

    const/4 v2, 0x0

    packed-switch p0, :pswitch_data_0

    .line 2548
    :pswitch_0
    return v2

    .line 2530
    :pswitch_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_0

    .line 2531
    const v0, 0x3fffffc

    return v0

    .line 2545
    :cond_0
    return v2

    .line 2524
    :pswitch_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_1

    .line 2525
    const v0, 0xc3b58fc

    return v0

    .line 2527
    :cond_1
    return v2

    .line 2518
    :pswitch_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_2

    .line 2519
    const v0, 0xc0b58fc

    return v0

    .line 2521
    :cond_2
    return v2

    .line 2498
    :pswitch_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_3

    .line 2501
    const v0, 0x1cbd81c

    return v0

    .line 2515
    :cond_3
    return v2

    .line 2496
    :pswitch_5
    const v0, 0xb58fc

    return v0

    .line 2488
    :pswitch_6
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v1, :cond_4

    .line 2489
    const v0, 0xb40fc

    return v0

    .line 2493
    :cond_4
    return v0

    .line 2486
    :pswitch_7
    return v0

    .line 2484
    :pswitch_8
    const/16 v0, 0x4fc

    return v0

    .line 2482
    :pswitch_9
    const/16 v0, 0xfc

    return v0

    .line 2480
    :pswitch_a
    const/16 v0, 0xdc

    return v0

    .line 2478
    :pswitch_b
    const/16 v0, 0xcc

    return v0

    .line 2476
    :pswitch_c
    const/16 v0, 0x1c

    return v0

    .line 2474
    :pswitch_d
    const/16 v0, 0xc

    return v0

    .line 2472
    :pswitch_e
    const/4 v0, 0x4

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getAudioUsageForStreamType(I)I
    .locals 1
    .param p0, "streamType"    # I

    .line 2651
    packed-switch p0, :pswitch_data_0

    .line 2668
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 2665
    :pswitch_1
    const/16 v0, 0xb

    return v0

    .line 2655
    :pswitch_2
    const/4 v0, 0x3

    return v0

    .line 2657
    :pswitch_3
    const/4 v0, 0x5

    return v0

    .line 2653
    :pswitch_4
    const/4 v0, 0x4

    return v0

    .line 2659
    :pswitch_5
    const/4 v0, 0x6

    return v0

    .line 2661
    :pswitch_6
    const/16 v0, 0xd

    return v0

    .line 2663
    :pswitch_7
    const/4 v0, 0x2

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getAuxiliaryTrackTypeString(I)Ljava/lang/String;
    .locals 2
    .param p0, "auxiliaryTrackType"    # I

    .line 3656
    packed-switch p0, :pswitch_data_0

    .line 3668
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unsupported auxiliary track type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3666
    :pswitch_0
    const-string v0, "depth metadata"

    return-object v0

    .line 3664
    :pswitch_1
    const-string v0, "depth-inverse"

    return-object v0

    .line 3662
    :pswitch_2
    const-string v0, "depth-linear"

    return-object v0

    .line 3660
    :pswitch_3
    const-string/jumbo v0, "original"

    return-object v0

    .line 3658
    :pswitch_4
    const-string/jumbo v0, "undefined"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getAvailableCommands(Landroidx/media3/common/Player;Landroidx/media3/common/Player$Commands;)Landroidx/media3/common/Player$Commands;
    .locals 12
    .param p0, "player"    # Landroidx/media3/common/Player;
    .param p1, "permanentAvailableCommands"    # Landroidx/media3/common/Player$Commands;

    .line 3879
    invoke-interface {p0}, Landroidx/media3/common/Player;->isPlayingAd()Z

    move-result v0

    .line 3880
    .local v0, "isPlayingAd":Z
    invoke-interface {p0}, Landroidx/media3/common/Player;->isCurrentMediaItemSeekable()Z

    move-result v1

    .line 3881
    .local v1, "isCurrentMediaItemSeekable":Z
    invoke-interface {p0}, Landroidx/media3/common/Player;->hasPreviousMediaItem()Z

    move-result v2

    .line 3882
    .local v2, "hasPreviousMediaItem":Z
    invoke-interface {p0}, Landroidx/media3/common/Player;->hasNextMediaItem()Z

    move-result v3

    .line 3883
    .local v3, "hasNextMediaItem":Z
    invoke-interface {p0}, Landroidx/media3/common/Player;->isCurrentMediaItemLive()Z

    move-result v4

    .line 3884
    .local v4, "isCurrentMediaItemLive":Z
    invoke-interface {p0}, Landroidx/media3/common/Player;->isCurrentMediaItemDynamic()Z

    move-result v5

    .line 3885
    .local v5, "isCurrentMediaItemDynamic":Z
    invoke-interface {p0}, Landroidx/media3/common/Player;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v6

    .line 3886
    .local v6, "isTimelineEmpty":Z
    new-instance v7, Landroidx/media3/common/Player$Commands$Builder;

    invoke-direct {v7}, Landroidx/media3/common/Player$Commands$Builder;-><init>()V

    .line 3887
    invoke-virtual {v7, p1}, Landroidx/media3/common/Player$Commands$Builder;->addAll(Landroidx/media3/common/Player$Commands;)Landroidx/media3/common/Player$Commands$Builder;

    move-result-object v7

    .line 3888
    xor-int/lit8 v8, v0, 0x1

    const/4 v9, 0x4

    invoke-virtual {v7, v9, v8}, Landroidx/media3/common/Player$Commands$Builder;->addIf(IZ)Landroidx/media3/common/Player$Commands$Builder;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    move v10, v9

    goto :goto_0

    :cond_0
    move v10, v8

    .line 3889
    :goto_0
    const/4 v11, 0x5

    invoke-virtual {v7, v11, v10}, Landroidx/media3/common/Player$Commands$Builder;->addIf(IZ)Landroidx/media3/common/Player$Commands$Builder;

    move-result-object v7

    if-eqz v2, :cond_1

    if-nez v0, :cond_1

    move v10, v9

    goto :goto_1

    :cond_1
    move v10, v8

    .line 3890
    :goto_1
    const/4 v11, 0x6

    invoke-virtual {v7, v11, v10}, Landroidx/media3/common/Player$Commands$Builder;->addIf(IZ)Landroidx/media3/common/Player$Commands$Builder;

    move-result-object v7

    if-nez v6, :cond_3

    if-nez v2, :cond_2

    if-eqz v4, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    if-nez v0, :cond_3

    move v10, v9

    goto :goto_2

    :cond_3
    move v10, v8

    .line 3891
    :goto_2
    const/4 v11, 0x7

    invoke-virtual {v7, v11, v10}, Landroidx/media3/common/Player$Commands$Builder;->addIf(IZ)Landroidx/media3/common/Player$Commands$Builder;

    move-result-object v7

    if-eqz v3, :cond_4

    if-nez v0, :cond_4

    move v10, v9

    goto :goto_3

    :cond_4
    move v10, v8

    .line 3896
    :goto_3
    const/16 v11, 0x8

    invoke-virtual {v7, v11, v10}, Landroidx/media3/common/Player$Commands$Builder;->addIf(IZ)Landroidx/media3/common/Player$Commands$Builder;

    move-result-object v7

    if-nez v6, :cond_6

    if-nez v3, :cond_5

    if-eqz v4, :cond_6

    if-eqz v5, :cond_6

    :cond_5
    if-nez v0, :cond_6

    move v10, v9

    goto :goto_4

    :cond_6
    move v10, v8

    .line 3897
    :goto_4
    const/16 v11, 0x9

    invoke-virtual {v7, v11, v10}, Landroidx/media3/common/Player$Commands$Builder;->addIf(IZ)Landroidx/media3/common/Player$Commands$Builder;

    move-result-object v7

    .line 3902
    xor-int/lit8 v10, v0, 0x1

    const/16 v11, 0xa

    invoke-virtual {v7, v11, v10}, Landroidx/media3/common/Player$Commands$Builder;->addIf(IZ)Landroidx/media3/common/Player$Commands$Builder;

    move-result-object v7

    if-eqz v1, :cond_7

    if-nez v0, :cond_7

    move v10, v9

    goto :goto_5

    :cond_7
    move v10, v8

    .line 3903
    :goto_5
    const/16 v11, 0xb

    invoke-virtual {v7, v11, v10}, Landroidx/media3/common/Player$Commands$Builder;->addIf(IZ)Landroidx/media3/common/Player$Commands$Builder;

    move-result-object v7

    if-eqz v1, :cond_8

    if-nez v0, :cond_8

    move v8, v9

    .line 3904
    :cond_8
    const/16 v9, 0xc

    invoke-virtual {v7, v9, v8}, Landroidx/media3/common/Player$Commands$Builder;->addIf(IZ)Landroidx/media3/common/Player$Commands$Builder;

    move-result-object v7

    .line 3905
    invoke-virtual {v7}, Landroidx/media3/common/Player$Commands$Builder;->build()Landroidx/media3/common/Player$Commands;

    move-result-object v7

    .line 3886
    return-object v7
.end method

.method public static getBigEndianInt(Ljava/nio/ByteBuffer;I)I
    .locals 3
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "index"    # I

    .line 3258
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    .line 3259
    .local v0, "value":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v1

    :goto_0
    return v1
.end method

.method public static getBufferFlagsFromMediaCodecFlags(I)I
    .locals 3
    .param p0, "mediaCodecFlags"    # I

    .line 3791
    const/4 v0, 0x0

    .line 3792
    .local v0, "flags":I
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 3793
    or-int/lit8 v0, v0, 0x1

    .line 3795
    :cond_0
    and-int/lit8 v1, p0, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 3797
    or-int/lit8 v0, v0, 0x4

    .line 3799
    :cond_1
    return v0
.end method

.method public static getByteDepth(I)I
    .locals 1
    .param p0, "pcmEncoding"    # I

    .line 2626
    sparse-switch p0, :sswitch_data_0

    .line 2644
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 2640
    :sswitch_0
    const/16 v0, 0x8

    return v0

    .line 2634
    :sswitch_1
    const/4 v0, 0x3

    return v0

    .line 2638
    :sswitch_2
    const/4 v0, 0x4

    return v0

    .line 2628
    :sswitch_3
    const/4 v0, 0x1

    return v0

    .line 2631
    :sswitch_4
    const/4 v0, 0x2

    return v0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_4
        0x3 -> :sswitch_3
        0x4 -> :sswitch_2
        0x15 -> :sswitch_1
        0x16 -> :sswitch_2
        0x10000000 -> :sswitch_4
        0x50000000 -> :sswitch_1
        0x60000000 -> :sswitch_2
        0x70000000 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getBytesFromHexString(Ljava/lang/String;)[B
    .locals 1
    .param p0, "hexString"    # Ljava/lang/String;

    .line 2166
    invoke-static {}, Lcom/google/common/io/BaseEncoding;->base16()Lcom/google/common/io/BaseEncoding;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/io/BaseEncoding;->ignoreCase()Lcom/google/common/io/BaseEncoding;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/common/io/BaseEncoding;->decode(Ljava/lang/CharSequence;)[B

    move-result-object v0

    return-object v0
.end method

.method public static getCodecCountOfType(Ljava/lang/String;I)I
    .locals 6
    .param p0, "codecs"    # Ljava/lang/String;
    .param p1, "trackType"    # I

    .line 2213
    invoke-static {p0}, Landroidx/media3/common/util/Util;->splitCodecs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2214
    .local v0, "codecArray":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 2215
    .local v1, "count":I
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 2216
    .local v4, "codec":Ljava/lang/String;
    invoke-static {v4}, Landroidx/media3/common/MimeTypes;->getTrackTypeOfCodec(Ljava/lang/String;)I

    move-result v5

    if-ne p1, v5, :cond_0

    .line 2217
    add-int/lit8 v1, v1, 0x1

    .line 2215
    .end local v4    # "codec":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2220
    :cond_1
    return v1
.end method

.method public static getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .param p0, "codecs"    # Ljava/lang/String;
    .param p1, "trackType"    # I

    .line 2235
    invoke-static {p0}, Landroidx/media3/common/util/Util;->splitCodecs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2236
    .local v0, "codecArray":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2237
    return-object v2

    .line 2239
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2240
    .local v1, "builder":Ljava/lang/StringBuilder;
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v0, v4

    .line 2241
    .local v5, "codec":Ljava/lang/String;
    invoke-static {v5}, Landroidx/media3/common/MimeTypes;->getTrackTypeOfCodec(Ljava/lang/String;)I

    move-result v6

    if-ne p1, v6, :cond_2

    .line 2242
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 2243
    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2245
    :cond_1
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2240
    .end local v5    # "codec":Ljava/lang/String;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2248
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_4
    return-object v2
.end method

.method public static getCodecsWithoutType(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .param p0, "codecs"    # Ljava/lang/String;
    .param p1, "trackType"    # I

    .line 2326
    invoke-static {p0}, Landroidx/media3/common/util/Util;->splitCodecs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2327
    .local v0, "codecArray":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2328
    return-object v2

    .line 2330
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2331
    .local v1, "builder":Ljava/lang/StringBuilder;
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v0, v4

    .line 2332
    .local v5, "codec":Ljava/lang/String;
    invoke-static {v5}, Landroidx/media3/common/MimeTypes;->getTrackTypeOfCodec(Ljava/lang/String;)I

    move-result v6

    if-eq p1, v6, :cond_2

    .line 2333
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 2334
    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2336
    :cond_1
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2331
    .end local v5    # "codec":Ljava/lang/String;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2339
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_4
    return-object v2
.end method

.method public static getColorInfoForDolbyVision(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/media3/common/ColorInfo;
    .locals 5
    .param p0, "codecs"    # Ljava/lang/String;
    .param p1, "supplementalCodecs"    # Ljava/lang/String;
    .param p2, "supplementalProfiles"    # Ljava/lang/String;

    .line 2273
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 2274
    return-object v0

    .line 2277
    :cond_0
    const/4 v1, -0x1

    .line 2278
    .local v1, "colorSpace":I
    const/4 v2, -0x1

    .line 2279
    .local v2, "colorRange":I
    const/4 v3, -0x1

    .line 2281
    .local v3, "colorTransfer":I
    invoke-static {p0, p1}, Landroidx/media3/common/MimeTypes;->isDolbyVisionCodec(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2282
    return-object v0

    .line 2285
    :cond_1
    const-string v4, "dvhe"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "dvh1"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "dav1"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 2290
    :cond_2
    if-eqz p2, :cond_5

    .line 2291
    const-string v4, "db1p"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2293
    const/4 v1, 0x6

    .line 2294
    const/4 v3, 0x6

    .line 2295
    const/4 v2, 0x2

    goto :goto_1

    .line 2296
    :cond_3
    const-string v4, "db4"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2298
    const/4 v1, 0x6

    .line 2299
    const/4 v3, 0x7

    .line 2300
    const/4 v2, 0x2

    goto :goto_1

    .line 2287
    :cond_4
    :goto_0
    const/4 v1, 0x6

    .line 2288
    const/4 v3, 0x6

    .line 2289
    const/4 v2, 0x1

    .line 2304
    :cond_5
    :goto_1
    const/4 v4, -0x1

    if-ne v1, v4, :cond_6

    .line 2305
    return-object v0

    .line 2308
    :cond_6
    new-instance v0, Landroidx/media3/common/ColorInfo$Builder;

    invoke-direct {v0}, Landroidx/media3/common/ColorInfo$Builder;-><init>()V

    .line 2309
    invoke-virtual {v0, v1}, Landroidx/media3/common/ColorInfo$Builder;->setColorSpace(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v0

    .line 2310
    invoke-virtual {v0, v2}, Landroidx/media3/common/ColorInfo$Builder;->setColorRange(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v0

    .line 2311
    invoke-virtual {v0, v3}, Landroidx/media3/common/ColorInfo$Builder;->setColorTransfer(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v0

    .line 2312
    invoke-virtual {v0}, Landroidx/media3/common/ColorInfo$Builder;->build()Landroidx/media3/common/ColorInfo;

    move-result-object v0

    .line 2308
    return-object v0
.end method

.method public static getCountryCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 3282
    if-eqz p0, :cond_0

    .line 3284
    nop

    .line 3285
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 3286
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    .line 3287
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 3288
    .local v1, "countryCode":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3289
    invoke-static {v1}, Lcom/google/common/base/Ascii;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 3293
    .end local v0    # "telephonyManager":Landroid/telephony/TelephonyManager;
    .end local v1    # "countryCode":Ljava/lang/String;
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Ascii;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentDisplayModeSize(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 3437
    const/4 v0, 0x0

    .line 3439
    .local v0, "defaultDisplay":Landroid/view/Display;
    nop

    .line 3440
    const-string v1, "display"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 3442
    .local v1, "displayManager":Landroid/hardware/display/DisplayManager;
    if-eqz v1, :cond_0

    .line 3443
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 3445
    :cond_0
    if-nez v0, :cond_1

    .line 3446
    nop

    .line 3447
    const-string/jumbo v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 3448
    .local v2, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 3450
    .end local v2    # "windowManager":Landroid/view/WindowManager;
    :cond_1
    invoke-static {p0, v0}, Landroidx/media3/common/util/Util;->getCurrentDisplayModeSize(Landroid/content/Context;Landroid/view/Display;)Landroid/graphics/Point;

    move-result-object v2

    return-object v2
.end method

.method public static getCurrentDisplayModeSize(Landroid/content/Context;Landroid/view/Display;)Landroid/graphics/Point;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "display"    # Landroid/view/Display;

    .line 3468
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p0}, Landroidx/media3/common/util/Util;->isTv(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3484
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_0

    .line 3485
    const-string/jumbo v0, "sys.display-size"

    invoke-static {v0}, Landroidx/media3/common/util/Util;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3486
    :cond_0
    const-string/jumbo v0, "vendor.display-size"

    invoke-static {v0}, Landroidx/media3/common/util/Util;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    nop

    .line 3488
    .local v0, "displaySize":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3490
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 3491
    .local v1, "displaySizeParts":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 3492
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 3493
    .local v2, "width":I
    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 3494
    .local v3, "height":I
    if-lez v2, :cond_1

    if-lez v3, :cond_1

    .line 3495
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, v2, v3}, Landroid/graphics/Point;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 3500
    .end local v1    # "displaySizeParts":[Ljava/lang/String;
    .end local v2    # "width":I
    .end local v3    # "height":I
    :cond_1
    goto :goto_1

    .line 3498
    :catch_0
    move-exception v1

    .line 3501
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid display size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Util"

    invoke-static {v2, v1}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3505
    :cond_2
    const-string v1, "Sony"

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 3506
    const-string v2, "BRAVIA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3507
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sony.dtv.hardware.panel.qfhd"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3508
    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0xf00

    const/16 v3, 0x870

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    return-object v1

    .line 3512
    .end local v0    # "displaySize":Ljava/lang/String;
    :cond_3
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 3513
    .local v0, "displaySize":Landroid/graphics/Point;
    invoke-static {p1, v0}, Landroidx/media3/common/util/Util;->getDisplaySize(Landroid/view/Display;Landroid/graphics/Point;)V

    .line 3514
    return-object v0
.end method

.method public static getCurrentOrMainLooper()Landroid/os/Looper;
    .locals 2

    .line 961
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 962
    .local v0, "myLooper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public static getDataUriForString(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "data"    # Ljava/lang/String;

    .line 3105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";base64,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3106
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3105
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultDisplayLocale()Ljava/util/Locale;
    .locals 1

    .line 3312
    nop

    .line 3313
    sget-object v0, Ljava/util/Locale$Category;->DISPLAY:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    .line 3312
    return-object v0
.end method

.method private static getDisplaySize(Landroid/view/Display;Landroid/graphics/Point;)V
    .locals 2
    .param p0, "display"    # Landroid/view/Display;
    .param p1, "outSize"    # Landroid/graphics/Point;

    .line 4136
    invoke-virtual {p0}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object v0

    .line 4137
    .local v0, "mode":Landroid/view/Display$Mode;
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v1

    iput v1, p1, Landroid/graphics/Point;->x:I

    .line 4138
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v1

    iput v1, p1, Landroid/graphics/Point;->y:I

    .line 4139
    return-void
.end method

.method public static getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "drawableRes"    # I

    .line 3935
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getDrmUuid(Ljava/lang/String;)Ljava/util/UUID;
    .locals 2
    .param p0, "drmScheme"    # Ljava/lang/String;

    .line 2753
    invoke-static {p0}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "clearkey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    const-string/jumbo v1, "widevine"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_2
    const-string/jumbo v1, "playready"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 2762
    :try_start_0
    invoke-static {p0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 2759
    :pswitch_0
    sget-object v0, Landroidx/media3/common/C;->CLEARKEY_UUID:Ljava/util/UUID;

    return-object v0

    .line 2757
    :pswitch_1
    sget-object v0, Landroidx/media3/common/C;->PLAYREADY_UUID:Ljava/util/UUID;

    return-object v0

    .line 2755
    :pswitch_2
    sget-object v0, Landroidx/media3/common/C;->WIDEVINE_UUID:Ljava/util/UUID;

    return-object v0

    .line 2762
    :goto_2
    return-object v0

    .line 2763
    :catch_0
    move-exception v0

    .line 2764
    .local v0, "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x0

    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x6ee3d111 -> :sswitch_2
        -0x537ab703 -> :sswitch_1
        0x2f1b28f2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getErrorCodeForMediaDrmErrorCode(I)I
    .locals 1
    .param p0, "mediaDrmErrorCode"    # I

    .line 2777
    packed-switch p0, :pswitch_data_0

    .line 2801
    :pswitch_0
    const/16 v0, 0x1776

    return v0

    .line 2783
    :pswitch_1
    const/16 v0, 0x1772

    return v0

    .line 2790
    :pswitch_2
    const/16 v0, 0x1774

    return v0

    .line 2799
    :pswitch_3
    const/16 v0, 0x1773

    return v0

    .line 2796
    :pswitch_4
    const/16 v0, 0x1775

    return v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static getErrorCodeFromPlatformDiagnosticsInfo(Ljava/lang/String;)I
    .locals 6
    .param p0, "diagnosticsInfo"    # Ljava/lang/String;

    .line 3770
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 3771
    return v0

    .line 3773
    :cond_0
    const-string v1, "_"

    invoke-static {p0, v1}, Landroidx/media3/common/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 3774
    .local v1, "strings":[Ljava/lang/String;
    array-length v2, v1

    .line 3775
    .local v2, "length":I
    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    .line 3776
    return v0

    .line 3778
    :cond_1
    add-int/lit8 v3, v2, -0x1

    aget-object v3, v1, v3

    .line 3779
    .local v3, "digitsSection":Ljava/lang/String;
    const/4 v4, 0x3

    if-lt v2, v4, :cond_2

    add-int/lit8 v4, v2, -0x2

    aget-object v4, v1, v4

    const-string/jumbo v5, "neg"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    move v4, v0

    .line 3781
    .local v4, "isNegative":Z
    :goto_0
    :try_start_0
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3782
    .local v0, "errorCode":I
    if-eqz v4, :cond_3

    neg-int v5, v0

    goto :goto_1

    :cond_3
    move v5, v0

    :goto_1
    return v5

    .line 3783
    .end local v0    # "errorCode":I
    :catch_0
    move-exception v5

    .line 3784
    .local v5, "e":Ljava/lang/NumberFormatException;
    return v0
.end method

.method public static getFormatSupportString(I)Ljava/lang/String;
    .locals 1
    .param p0, "formatSupport"    # I

    .line 3854
    packed-switch p0, :pswitch_data_0

    .line 3866
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 3856
    :pswitch_0
    const-string v0, "YES"

    return-object v0

    .line 3858
    :pswitch_1
    const-string v0, "NO_EXCEEDS_CAPABILITIES"

    return-object v0

    .line 3860
    :pswitch_2
    const-string v0, "NO_UNSUPPORTED_DRM"

    return-object v0

    .line 3862
    :pswitch_3
    const-string v0, "NO_UNSUPPORTED_SUBTYPE"

    return-object v0

    .line 3864
    :pswitch_4
    const-string v0, "NO"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getInt24(Ljava/nio/ByteBuffer;I)I
    .locals 6
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "index"    # I

    .line 3695
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p1, 0x2

    :goto_0
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    .line 3696
    .local v0, "component1":B
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    .line 3697
    .local v1, "component2":B
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, p1, 0x2

    goto :goto_1

    :cond_1
    move v2, p1

    :goto_1
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    .line 3698
    .local v2, "component3":B
    shl-int/lit8 v3, v0, 0x18

    const/high16 v4, -0x1000000

    and-int/2addr v3, v4

    shl-int/lit8 v4, v1, 0x10

    const/high16 v5, 0xff0000

    and-int/2addr v4, v5

    or-int/2addr v3, v4

    shl-int/lit8 v4, v2, 0x8

    const v5, 0xff00

    and-int/2addr v4, v5

    or-int/2addr v3, v4

    shr-int/lit8 v3, v3, 0x8

    return v3
.end method

.method public static getIntegerCodeForString(Ljava/lang/String;)I
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .line 2123
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2124
    .local v0, "length":I
    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 2125
    const/4 v1, 0x0

    .line 2126
    .local v1, "result":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 2127
    shl-int/lit8 v1, v1, 0x8

    .line 2128
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    or-int/2addr v1, v3

    .line 2126
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2130
    .end local v2    # "i":I
    :cond_1
    return v1
.end method

.method public static getLocaleLanguageTag(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;

    .line 1038
    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMaxPendingFramesCountForMediaCodecDecoders(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 3824
    invoke-static {p0}, Landroidx/media3/common/util/Util;->isFrameDropAllowedOnSurfaceInput(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3828
    const/4 v0, 0x1

    return v0

    .line 3843
    :cond_0
    const/4 v0, 0x5

    return v0
.end method

.method public static getMediaDurationForPlayoutDuration(JF)J
    .locals 4
    .param p0, "playoutDuration"    # J
    .param p2, "speed"    # F

    .line 2094
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    .line 2095
    return-wide p0

    .line 2097
    :cond_0
    long-to-double v0, p0

    float-to-double v2, p2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getNowUnixTimeMs(J)J
    .locals 2
    .param p0, "elapsedRealtimeEpochOffsetMs"    # J

    .line 3682
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 3683
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0

    .line 3684
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p0

    .line 3682
    :goto_0
    return-wide v0
.end method

.method public static getPcmEncoding(I)I
    .locals 1
    .param p0, "bitDepth"    # I

    .line 2390
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {p0, v0}, Landroidx/media3/common/util/Util;->getPcmEncoding(ILjava/nio/ByteOrder;)I

    move-result v0

    return v0
.end method

.method public static getPcmEncoding(ILjava/nio/ByteOrder;)I
    .locals 1
    .param p0, "bitDepth"    # I
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 2403
    sparse-switch p0, :sswitch_data_0

    .line 2420
    const/4 v0, 0x0

    return v0

    .line 2416
    :sswitch_0
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2417
    const/16 v0, 0x16

    goto :goto_0

    .line 2418
    :cond_0
    const/high16 v0, 0x60000000

    .line 2416
    :goto_0
    return v0

    .line 2412
    :sswitch_1
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2413
    const/16 v0, 0x15

    goto :goto_1

    .line 2414
    :cond_1
    const/high16 v0, 0x50000000

    .line 2412
    :goto_1
    return v0

    .line 2408
    :sswitch_2
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2409
    const/4 v0, 0x2

    goto :goto_2

    .line 2410
    :cond_2
    const/high16 v0, 0x10000000

    .line 2408
    :goto_2
    return v0

    .line 2406
    :sswitch_3
    const/4 v0, 0x3

    return v0

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_3
        0x10 -> :sswitch_2
        0x18 -> :sswitch_1
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getPcmFormat(III)Landroidx/media3/common/Format;
    .locals 2
    .param p0, "pcmEncoding"    # I
    .param p1, "channels"    # I
    .param p2, "sampleRate"    # I

    .line 2366
    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 2367
    const-string v1, "audio/raw"

    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 2368
    invoke-virtual {v0, p1}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 2369
    invoke-virtual {v0, p2}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 2370
    invoke-virtual {v0, p0}, Landroidx/media3/common/Format$Builder;->setPcmEncoding(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 2371
    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v0

    .line 2366
    return-object v0
.end method

.method public static getPcmFormat(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)Landroidx/media3/common/Format;
    .locals 3
    .param p0, "audioFormat"    # Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    .line 2377
    iget v0, p0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->encoding:I

    iget v1, p0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->channelCount:I

    iget v2, p0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->sampleRate:I

    invoke-static {v0, v1, v2}, Landroidx/media3/common/util/Util;->getPcmFormat(III)Landroidx/media3/common/Format;

    move-result-object v0

    return-object v0
.end method

.method public static getPcmFrameSize(II)I
    .locals 1
    .param p0, "pcmEncoding"    # I
    .param p1, "channelCount"    # I

    .line 2615
    invoke-static {p0}, Landroidx/media3/common/util/Util;->getByteDepth(I)I

    move-result v0

    mul-int/2addr v0, p1

    return v0
.end method

.method public static getPlayoutDurationForMediaDuration(JF)J
    .locals 4
    .param p0, "mediaDuration"    # J
    .param p2, "speed"    # F

    .line 2109
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    .line 2110
    return-wide p0

    .line 2112
    :cond_0
    long-to-double v0, p0

    float-to-double v2, p2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getRoleFlagStrings(I)Ljava/util/List;
    .locals 2
    .param p0, "roleFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3598
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3600
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    .line 3601
    const-string v1, "main"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3603
    :cond_0
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    .line 3604
    const-string v1, "alt"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3606
    :cond_1
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_2

    .line 3607
    const-string/jumbo v1, "supplementary"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3609
    :cond_2
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_3

    .line 3610
    const-string v1, "commentary"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3612
    :cond_3
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_4

    .line 3613
    const-string v1, "dub"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3615
    :cond_4
    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_5

    .line 3616
    const-string v1, "emergency"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3618
    :cond_5
    and-int/lit8 v1, p0, 0x40

    if-eqz v1, :cond_6

    .line 3619
    const-string v1, "caption"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3621
    :cond_6
    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_7

    .line 3622
    const-string/jumbo v1, "subtitle"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3624
    :cond_7
    and-int/lit16 v1, p0, 0x100

    if-eqz v1, :cond_8

    .line 3625
    const-string/jumbo v1, "sign"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3627
    :cond_8
    and-int/lit16 v1, p0, 0x200

    if-eqz v1, :cond_9

    .line 3628
    const-string v1, "describes-video"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3630
    :cond_9
    and-int/lit16 v1, p0, 0x400

    if-eqz v1, :cond_a

    .line 3631
    const-string v1, "describes-music"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3633
    :cond_a
    and-int/lit16 v1, p0, 0x800

    if-eqz v1, :cond_b

    .line 3634
    const-string v1, "enhanced-intelligibility"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3636
    :cond_b
    and-int/lit16 v1, p0, 0x1000

    if-eqz v1, :cond_c

    .line 3637
    const-string/jumbo v1, "transcribes-dialog"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3639
    :cond_c
    and-int/lit16 v1, p0, 0x2000

    if-eqz v1, :cond_d

    .line 3640
    const-string v1, "easy-read"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3642
    :cond_d
    and-int/lit16 v1, p0, 0x4000

    if-eqz v1, :cond_e

    .line 3643
    const-string/jumbo v1, "trick-play"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3645
    :cond_e
    const v1, 0x8000

    and-int/2addr v1, p0

    if-eqz v1, :cond_f

    .line 3646
    const-string v1, "auxiliary"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3649
    :cond_f
    return-object v0
.end method

.method public static getSelectionFlagStrings(I)Ljava/util/List;
    .locals 2
    .param p0, "selectionFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3577
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3579
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_0

    .line 3580
    const-string v1, "auto"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3582
    :cond_0
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_1

    .line 3583
    const-string v1, "default"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3585
    :cond_1
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_2

    .line 3586
    const-string v1, "forced"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3589
    :cond_2
    return-object v0
.end method

.method public static getStreamTypeForAudioUsage(I)I
    .locals 1
    .param p0, "usage"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2702
    const/4 v0, 0x3

    packed-switch p0, :pswitch_data_0

    .line 2728
    return v0

    .line 2708
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 2724
    :pswitch_1
    const/16 v0, 0xa

    return v0

    .line 2716
    :pswitch_2
    const/4 v0, 0x2

    return v0

    .line 2722
    :pswitch_3
    const/4 v0, 0x5

    return v0

    .line 2714
    :pswitch_4
    const/4 v0, 0x4

    return v0

    .line 2712
    :pswitch_5
    const/16 v0, 0x8

    return v0

    .line 2710
    :pswitch_6
    const/4 v0, 0x0

    return v0

    .line 2706
    :pswitch_7
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_7
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public static getStringForTime(J)Ljava/lang/String;
    .locals 3
    .param p0, "timeMs"    # J

    .line 2995
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2996
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/util/Formatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 2997
    .local v1, "formatter":Ljava/util/Formatter;
    invoke-static {v0, v1, p0, p1}, Landroidx/media3/common/util/Util;->getStringForTime(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getStringForTime(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;
    .locals 12
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .param p1, "formatter"    # Ljava/util/Formatter;
    .param p2, "timeMs"    # J

    .line 2972
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    .line 2973
    const-wide/16 p2, 0x0

    .line 2975
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_1

    const-string v2, "-"

    goto :goto_0

    :cond_1
    const-string v2, ""

    .line 2976
    .local v2, "prefix":Ljava/lang/String;
    :goto_0
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide p2

    .line 2977
    const-wide/16 v3, 0x1f4

    add-long/2addr v3, p2

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    .line 2978
    .local v3, "totalSeconds":J
    const-wide/16 v5, 0x3c

    rem-long v7, v3, v5

    .line 2979
    .local v7, "seconds":J
    div-long v9, v3, v5

    rem-long/2addr v9, v5

    .line 2980
    .local v9, "minutes":J
    const-wide/16 v5, 0xe10

    div-long v5, v3, v5

    .line 2981
    .local v5, "hours":J
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2982
    cmp-long v0, v5, v0

    if-lez v0, :cond_2

    .line 2983
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    filled-new-array {v2, v0, v1, v11}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s%d:%02d:%02d"

    invoke-virtual {p1, v1, v0}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2984
    :cond_2
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s%02d:%02d"

    invoke-virtual {p1, v1, v0}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2982
    :goto_1
    return-object v0
.end method

.method public static getSystemLanguageCodes()[Ljava/lang/String;
    .locals 3

    .line 3302
    invoke-static {}, Landroidx/media3/common/util/Util;->getSystemLocales()[Ljava/lang/String;

    move-result-object v0

    .line 3303
    .local v0, "systemLocales":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 3304
    aget-object v2, v0, v1

    invoke-static {v2}, Landroidx/media3/common/util/Util;->normalizeLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 3303
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3306
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private static getSystemLocales()[Ljava/lang/String;
    .locals 2

    .line 4142
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 4143
    .local v0, "config":Landroid/content/res/Configuration;
    nop

    .line 4144
    invoke-static {v0}, Landroidx/media3/common/util/Util;->getSystemLocalesV24(Landroid/content/res/Configuration;)[Ljava/lang/String;

    move-result-object v1

    .line 4143
    return-object v1
.end method

.method private static getSystemLocalesV24(Landroid/content/res/Configuration;)[Ljava/lang/String;
    .locals 2
    .param p0, "config"    # Landroid/content/res/Configuration;

    .line 4150
    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .line 4126
    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 4127
    .local v0, "systemProperties":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "get"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 4128
    .local v1, "getMethod":Ljava/lang/reflect/Method;
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 4129
    .end local v0    # "systemProperties":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "getMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 4130
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to read system property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Util"

    invoke-static {v2, v1, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4131
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getTrackTypeString(I)Ljava/lang/String;
    .locals 2
    .param p0, "trackType"    # I

    .line 3525
    packed-switch p0, :pswitch_data_0

    .line 3545
    const/16 v0, 0x2710

    if-lt p0, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "custom ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3539
    :pswitch_0
    const-string v0, "camera motion"

    return-object v0

    .line 3537
    :pswitch_1
    const-string v0, "metadata"

    return-object v0

    .line 3535
    :pswitch_2
    const-string v0, "image"

    return-object v0

    .line 3533
    :pswitch_3
    const-string/jumbo v0, "text"

    return-object v0

    .line 3531
    :pswitch_4
    const-string/jumbo v0, "video"

    return-object v0

    .line 3529
    :pswitch_5
    const-string v0, "audio"

    return-object v0

    .line 3527
    :pswitch_6
    const-string v0, "default"

    return-object v0

    .line 3543
    :pswitch_7
    const-string/jumbo v0, "unknown"

    return-object v0

    .line 3541
    :pswitch_8
    const-string/jumbo v0, "none"

    return-object v0

    .line 3545
    :cond_0
    const-string v0, "?"

    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getUserAgent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "applicationName"    # Ljava/lang/String;

    .line 2195
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2196
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 2197
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2200
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .local v2, "versionName":Ljava/lang/String;
    goto :goto_0

    .line 2198
    .end local v2    # "versionName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2199
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "?"

    .line 2201
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "versionName":Ljava/lang/String;
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (Linux;Android "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AndroidXMedia3/1.10.0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUtf8Bytes(Ljava/lang/String;)[B
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .line 1157
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public static gzip([B)[B
    .locals 4
    .param p0, "input"    # [B

    .line 3235
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3236
    .local v0, "output":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3237
    .local v1, "os":Ljava/util/zip/GZIPOutputStream;
    :try_start_1
    invoke-virtual {v1, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3238
    :try_start_2
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 3242
    .end local v1    # "os":Ljava/util/zip/GZIPOutputStream;
    nop

    .line 3243
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1

    .line 3236
    .restart local v1    # "os":Ljava/util/zip/GZIPOutputStream;
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "output":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "input":[B
    :goto_0
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 3238
    .end local v1    # "os":Ljava/util/zip/GZIPOutputStream;
    .restart local v0    # "output":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "input":[B
    :catch_0
    move-exception v1

    .line 3241
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static handlePauseButtonAction(Landroidx/media3/common/Player;)Z
    .locals 2
    .param p0, "player"    # Landroidx/media3/common/Player;

    .line 4052
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4053
    invoke-interface {p0}, Landroidx/media3/common/Player;->pause()V

    .line 4054
    return v0

    .line 4056
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static handlePlayButtonAction(Landroidx/media3/common/Player;)Z
    .locals 4
    .param p0, "player"    # Landroidx/media3/common/Player;

    .line 4022
    if-nez p0, :cond_0

    .line 4023
    const/4 v0, 0x0

    return v0

    .line 4025
    :cond_0
    invoke-interface {p0}, Landroidx/media3/common/Player;->getPlaybackState()I

    move-result v0

    .line 4026
    .local v0, "state":I
    const/4 v1, 0x0

    .line 4027
    .local v1, "methodTriggered":Z
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const/4 v3, 0x2

    invoke-interface {p0, v3}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4028
    invoke-interface {p0}, Landroidx/media3/common/Player;->prepare()V

    .line 4029
    const/4 v1, 0x1

    goto :goto_0

    .line 4030
    :cond_1
    const/4 v3, 0x4

    if-ne v0, v3, :cond_2

    .line 4031
    invoke-interface {p0, v3}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4032
    invoke-interface {p0}, Landroidx/media3/common/Player;->seekToDefaultPosition()V

    .line 4033
    const/4 v1, 0x1

    .line 4035
    :cond_2
    :goto_0
    invoke-interface {p0, v2}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4036
    invoke-interface {p0}, Landroidx/media3/common/Player;->play()V

    .line 4037
    const/4 v1, 0x1

    .line 4039
    :cond_3
    return v1
.end method

.method public static handlePlayPauseButtonAction(Landroidx/media3/common/Player;)Z
    .locals 1
    .param p0, "player"    # Landroidx/media3/common/Player;

    .line 4069
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroidx/media3/common/util/Util;->handlePlayPauseButtonAction(Landroidx/media3/common/Player;Z)Z

    move-result v0

    return v0
.end method

.method public static handlePlayPauseButtonAction(Landroidx/media3/common/Player;Z)Z
    .locals 1
    .param p0, "player"    # Landroidx/media3/common/Player;
    .param p1, "playIfSuppressed"    # Z

    .line 4086
    invoke-static {p0, p1}, Landroidx/media3/common/util/Util;->shouldShowPlayButton(Landroidx/media3/common/Player;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4087
    invoke-static {p0}, Landroidx/media3/common/util/Util;->handlePlayButtonAction(Landroidx/media3/common/Player;)Z

    move-result v0

    return v0

    .line 4089
    :cond_0
    invoke-static {p0}, Landroidx/media3/common/util/Util;->handlePauseButtonAction(Landroidx/media3/common/Player;)Z

    move-result v0

    return v0
.end method

.method public static inferContentType(Landroid/net/Uri;)I
    .locals 7
    .param p0, "uri"    # Landroid/net/Uri;

    .line 2824
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 2825
    .local v0, "scheme":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 2826
    const-string/jumbo v1, "rtsp"

    invoke-static {v1, v0}, Lcom/google/common/base/Ascii;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "rtspt"

    invoke-static {v1, v0}, Lcom/google/common/base/Ascii;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2827
    :cond_0
    const/4 v1, 0x3

    return v1

    .line 2830
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 2831
    .local v1, "lastPathSegment":Ljava/lang/String;
    const/4 v2, 0x4

    if-nez v1, :cond_2

    .line 2832
    return v2

    .line 2834
    :cond_2
    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 2835
    .local v3, "lastDotIndex":I
    if-ltz v3, :cond_3

    .line 2837
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroidx/media3/common/util/Util;->inferContentTypeForExtension(Ljava/lang/String;)I

    move-result v4

    .line 2838
    .local v4, "contentType":I
    if-eq v4, v2, :cond_3

    .line 2843
    return v4

    .line 2847
    .end local v4    # "contentType":I
    :cond_3
    sget-object v4, Landroidx/media3/common/util/Util;->ISM_PATH_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 2848
    .local v4, "ismMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2849
    const/4 v2, 0x2

    invoke-virtual {v4, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 2850
    .local v5, "extensions":Ljava/lang/String;
    if-eqz v5, :cond_5

    .line 2851
    const-string v6, "format=mpd-time-csf"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2852
    const/4 v2, 0x0

    return v2

    .line 2853
    :cond_4
    const-string v6, "format=m3u8-aapl"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2854
    return v2

    .line 2857
    :cond_5
    const/4 v2, 0x1

    return v2

    .line 2860
    .end local v5    # "extensions":Ljava/lang/String;
    :cond_6
    return v2
.end method

.method public static inferContentType(Landroid/net/Uri;Ljava/lang/String;)I
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "overrideExtension"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2812
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2813
    invoke-static {p0}, Landroidx/media3/common/util/Util;->inferContentType(Landroid/net/Uri;)I

    move-result v0

    goto :goto_0

    .line 2814
    :cond_0
    invoke-static {p1}, Landroidx/media3/common/util/Util;->inferContentTypeForExtension(Ljava/lang/String;)I

    move-result v0

    .line 2812
    :goto_0
    return v0
.end method

.method public static inferContentType(Ljava/lang/String;)I
    .locals 2
    .param p0, "fileName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2870
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file:///"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Util;->inferContentType(Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method public static inferContentTypeForExtension(Ljava/lang/String;)I
    .locals 4
    .param p0, "fileExtension"    # Ljava/lang/String;

    .line 2880
    invoke-static {p0}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2881
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "m3u8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_1
    const-string v0, "isml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_2
    const-string/jumbo v0, "mpd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_3
    const-string v0, "ism"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 2890
    const/4 v0, 0x4

    return v0

    .line 2888
    :pswitch_0
    return v1

    .line 2885
    :pswitch_1
    return v2

    .line 2883
    :pswitch_2
    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x19883 -> :sswitch_3
        0x1a721 -> :sswitch_2
        0x317849 -> :sswitch_1
        0x325a49 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static inferContentTypeForUriAndMimeType(Landroid/net/Uri;Ljava/lang/String;)I
    .locals 5
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "mimeType"    # Ljava/lang/String;

    .line 2903
    if-nez p1, :cond_0

    .line 2904
    invoke-static {p0}, Landroidx/media3/common/util/Util;->inferContentType(Landroid/net/Uri;)I

    move-result v0

    return v0

    .line 2906
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    sparse-switch v0, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v0, "application/x-rtsp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :sswitch_1
    const-string v0, "application/dash+xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v4

    goto :goto_1

    :sswitch_2
    const-string v0, "application/vnd.ms-sstr+xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_1

    :sswitch_3
    const-string v0, "application/x-mpegURL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 2916
    const/4 v0, 0x4

    return v0

    .line 2914
    :pswitch_0
    return v1

    .line 2912
    :pswitch_1
    return v2

    .line 2910
    :pswitch_2
    return v3

    .line 2908
    :pswitch_3
    return v4

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3a5c4caa -> :sswitch_3
        -0x957ced0 -> :sswitch_2
        0x3d3887d -> :sswitch_1
        0x44d481f3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static inflate(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/common/util/ParsableByteArray;Ljava/util/zip/Inflater;)Z
    .locals 4
    .param p0, "input"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "output"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p2, "inflater"    # Ljava/util/zip/Inflater;

    .line 3332
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3333
    return v1

    .line 3335
    :cond_0
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->capacity()I

    move-result v0

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 3336
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->ensureCapacity(I)V

    .line 3338
    :cond_1
    if-nez p2, :cond_2

    .line 3339
    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0}, Ljava/util/zip/Inflater;-><init>()V

    move-object p2, v0

    .line 3341
    :cond_2
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v2

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    invoke-virtual {p2, v0, v2, v3}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 3343
    const/4 v0, 0x0

    .line 3345
    .local v0, "outputSize":I
    :cond_3
    :goto_0
    nop

    .line 3346
    :try_start_0
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v2

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->capacity()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {p2, v2, v0, v3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v2

    add-int/2addr v0, v2

    .line 3347
    invoke-virtual {p2}, Ljava/util/zip/Inflater;->finished()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3348
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3349
    nop

    .line 3361
    invoke-virtual {p2}, Ljava/util/zip/Inflater;->reset()V

    .line 3349
    const/4 v1, 0x1

    return v1

    .line 3351
    :cond_4
    :try_start_1
    invoke-virtual {p2}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p2}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_1

    .line 3354
    :cond_5
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->capacity()I

    move-result v2

    if-ne v0, v2, :cond_3

    .line 3355
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->capacity()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {p1, v2}, Landroidx/media3/common/util/ParsableByteArray;->ensureCapacity(I)V
    :try_end_1
    .catch Ljava/util/zip/DataFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3352
    :cond_6
    :goto_1
    nop

    .line 3361
    invoke-virtual {p2}, Ljava/util/zip/Inflater;->reset()V

    .line 3352
    return v1

    .line 3361
    .end local v0    # "outputSize":I
    :catchall_0
    move-exception v0

    invoke-virtual {p2}, Ljava/util/zip/Inflater;->reset()V

    .line 3362
    throw v0

    .line 3358
    :catch_0
    move-exception v0

    .line 3359
    .local v0, "e":Ljava/util/zip/DataFormatException;
    nop

    .line 3361
    invoke-virtual {p2}, Ljava/util/zip/Inflater;->reset()V

    .line 3359
    return v1
.end method

.method public static intToStringMaxRadix(I)Ljava/lang/String;
    .locals 1
    .param p0, "i"    # I

    .line 3945
    const/16 v0, 0x24

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isAppSpecificStorageFileUri(Landroid/app/Activity;Landroid/net/Uri;)Z
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 440
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 441
    .local v1, "uriPath":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 442
    return v0

    .line 444
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    .line 445
    .local v2, "filePath":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    .line 446
    .local v3, "internalAppDirectoryPath":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 449
    .local v5, "externalAppDirectory":Ljava/io/File;
    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    .line 450
    .local v4, "externalAppDirectoryPath":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    if-eqz v4, :cond_2

    .line 451
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    .line 450
    :goto_2
    return v0

    .line 452
    .end local v1    # "uriPath":Ljava/lang/String;
    .end local v2    # "filePath":Ljava/lang/String;
    .end local v3    # "internalAppDirectoryPath":Ljava/lang/String;
    .end local v4    # "externalAppDirectoryPath":Ljava/lang/String;
    .end local v5    # "externalAppDirectory":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 454
    .local v1, "e":Ljava/io/IOException;
    return v0
.end method

.method public static isAutomotive(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 3409
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.automotive"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isBitmapFactorySupportedMimeType(Ljava/lang/String;)Z
    .locals 4
    .param p0, "mimeType"    # Ljava/lang/String;

    .line 3555
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "image/png"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_1
    const-string v0, "image/bmp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_2
    const-string v0, "image/webp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_3
    const-string v0, "image/jpeg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_4
    const-string v0, "image/heif"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_5
    const-string v0, "image/heic"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_6
    const-string v0, "image/avif"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 3567
    return v1

    .line 3565
    :pswitch_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x22

    if-lt v0, v3, :cond_1

    move v1, v2

    :cond_1
    return v1

    .line 3563
    :pswitch_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v0, v3, :cond_2

    move v1, v2

    :cond_2
    return v1

    .line 3560
    :pswitch_2
    return v2

    :sswitch_data_0
    .sparse-switch
        -0x58abd7ba -> :sswitch_6
        -0x58a8e8f5 -> :sswitch_5
        -0x58a8e8f2 -> :sswitch_4
        -0x58a7d764 -> :sswitch_3
        -0x58a21830 -> :sswitch_2
        -0x3468a12f -> :sswitch_1
        -0x34686c8b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isEncodingHighResolutionPcm(I)Z
    .locals 1
    .param p0, "encoding"    # I

    .line 2451
    const/16 v0, 0x15

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x50000000

    if-eq p0, v0, :cond_1

    const/16 v0, 0x16

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x60000000

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x70000000

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isEncodingLinearPcm(I)Z
    .locals 1
    .param p0, "encoding"    # I

    .line 2432
    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x10000000

    if-eq p0, v0, :cond_1

    const/16 v0, 0x15

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x50000000

    if-eq p0, v0, :cond_1

    const/16 v0, 0x16

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x60000000

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x70000000

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isFrameDropAllowedOnSurfaceInput(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 3810
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_2

    .line 3811
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v0, v1, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 3813
    const-string/jumbo v1, "moto g(20)"

    invoke-static {v0, v1}, Lcom/google/common/base/Ascii;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 3814
    const-string/jumbo v1, "rmx3231"

    invoke-static {v0, v1}, Lcom/google/common/base/Ascii;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-ne v0, v1, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 3815
    const-string/jumbo v1, "sm-x200"

    invoke-static {v0, v1}, Lcom/google/common/base/Ascii;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 3810
    :goto_1
    return v0
.end method

.method public static isLinebreak(I)Z
    .locals 1
    .param p0, "c"    # I

    .line 1197
    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isLocalFileUri(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .line 507
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 508
    .local v0, "scheme":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "file"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method private static isMediaStoreExternalContentUri(Landroid/net/Uri;)Z
    .locals 4
    .param p0, "uri"    # Landroid/net/Uri;

    .line 459
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 460
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v2, "media"

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 463
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 464
    .local v0, "pathSegments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 465
    return v1

    .line 467
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 468
    .local v2, "firstPathSegment":Ljava/lang/String;
    const-string v3, "external"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 469
    const-string v3, "external_primary"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const/4 v1, 0x1

    .line 468
    :cond_3
    return v1

    .line 461
    .end local v0    # "pathSegments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "firstPathSegment":Ljava/lang/String;
    :cond_4
    :goto_0
    return v1
.end method

.method private static isReadStoragePermissionRequestNeeded(Landroid/app/Activity;Landroid/net/Uri;)Z
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 429
    invoke-static {p1}, Landroidx/media3/common/util/Util;->isLocalFileUri(Landroid/net/Uri;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 430
    invoke-static {p0, p1}, Landroidx/media3/common/util/Util;->isAppSpecificStorageFileUri(Landroid/app/Activity;Landroid/net/Uri;)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    .line 432
    :cond_0
    invoke-static {p1}, Landroidx/media3/common/util/Util;->isMediaStoreExternalContentUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 433
    return v1

    .line 435
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static isRunningOnEmulator()Z
    .locals 2

    .line 514
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 515
    .local v0, "deviceName":Ljava/lang/String;
    const-string v1, "emulator"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 516
    const-string v1, "emu64a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 517
    const-string v1, "emu64x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 518
    const-string v1, "generic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 515
    :goto_1
    return v1
.end method

.method public static isSorted([J)Z
    .locals 5
    .param p0, "values"    # [J

    .line 1643
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    .line 1644
    aget-wide v1, p0, v0

    add-int/lit8 v3, v0, 0x1

    aget-wide v3, p0, v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 1645
    const/4 v1, 0x0

    return v1

    .line 1643
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1648
    .end local v0    # "i":I
    :cond_1
    return v2
.end method

.method private static isTrafficRestricted(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .line 4207
    const-string v0, "http"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4208
    invoke-static {}, Landroid/security/NetworkSecurityPolicy;->getInstance()Landroid/security/NetworkSecurityPolicy;

    move-result-object v0

    .line 4209
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/security/NetworkSecurityPolicy;->isCleartextTrafficPermitted(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4207
    :goto_0
    return v0
.end method

.method public static isTv(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 3395
    nop

    .line 3396
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "uimode"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    .line 3397
    .local v0, "uiModeManager":Landroid/app/UiModeManager;
    if-eqz v0, :cond_0

    .line 3398
    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3397
    :goto_0
    return v1
.end method

.method public static isWear(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 3420
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.watch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$newSingleThreadExecutor$3(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1
    .param p0, "threadName"    # Ljava/lang/String;
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 973
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$newSingleThreadScheduledExecutor$4(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1
    .param p0, "threadName"    # Ljava/lang/String;
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 984
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$postOrRunWithCompletion$0(Lcom/google/common/util/concurrent/SettableFuture;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 1
    .param p0, "outputFuture"    # Lcom/google/common/util/concurrent/SettableFuture;
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "successValue"    # Ljava/lang/Object;

    .line 887
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/SettableFuture;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 888
    return-void

    .line 890
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 891
    invoke-virtual {p0, p2}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 894
    goto :goto_0

    .line 892
    :catchall_0
    move-exception v0

    .line 893
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 895
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method static synthetic lambda$transformFutureAsync$1(Lcom/google/common/util/concurrent/SettableFuture;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 1
    .param p0, "outputFuture"    # Lcom/google/common/util/concurrent/SettableFuture;
    .param p1, "future"    # Lcom/google/common/util/concurrent/ListenableFuture;

    .line 924
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/SettableFuture;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 925
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    .line 927
    :cond_0
    return-void
.end method

.method static synthetic lambda$transformFutureAsync$2(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/SettableFuture;Lcom/google/common/util/concurrent/AsyncFunction;)V
    .locals 3
    .param p0, "future"    # Lcom/google/common/util/concurrent/ListenableFuture;
    .param p1, "outputFuture"    # Lcom/google/common/util/concurrent/SettableFuture;
    .param p2, "transformFunction"    # Lcom/google/common/util/concurrent/AsyncFunction;

    .line 933
    :try_start_0
    invoke-static {p0}, Lcom/google/common/util/concurrent/Futures;->getDone(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 944
    .local v0, "inputFutureResult":Ljava/lang/Object;, "TU;"
    nop

    .line 946
    :try_start_1
    invoke-interface {p2, v0}, Lcom/google/common/util/concurrent/AsyncFunction;->apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/common/util/concurrent/SettableFuture;->setFuture(Lcom/google/common/util/concurrent/ListenableFuture;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 949
    goto :goto_0

    .line 947
    :catchall_0
    move-exception v1

    .line 948
    .local v1, "exception":Ljava/lang/Throwable;
    invoke-virtual {p1, v1}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 950
    .end local v1    # "exception":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 941
    .end local v0    # "inputFutureResult":Ljava/lang/Object;, "TU;"
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 942
    .local v0, "error":Ljava/lang/Throwable;
    :goto_1
    invoke-virtual {p1, v0}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 943
    return-void

    .line 937
    .end local v0    # "error":Ljava/lang/Throwable;
    :catch_2
    move-exception v0

    .line 938
    .local v0, "exception":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 939
    .local v1, "cause":Ljava/lang/Throwable;
    if-nez v1, :cond_0

    move-object v2, v0

    goto :goto_2

    :cond_0
    move-object v2, v1

    :goto_2
    invoke-virtual {p1, v2}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 940
    return-void

    .line 934
    .end local v0    # "exception":Ljava/util/concurrent/ExecutionException;
    .end local v1    # "cause":Ljava/lang/Throwable;
    :catch_3
    move-exception v0

    .line 935
    .local v0, "cancellationException":Ljava/util/concurrent/CancellationException;
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/google/common/util/concurrent/SettableFuture;->cancel(Z)Z

    .line 936
    return-void
.end method

.method public static linearSearch([II)I
    .locals 2
    .param p0, "array"    # [I
    .param p1, "value"    # I

    .line 1361
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 1362
    aget v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 1363
    return v0

    .line 1361
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1366
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static linearSearch([JJ)I
    .locals 3
    .param p0, "array"    # [J
    .param p1, "value"    # J

    .line 1380
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 1381
    aget-wide v1, p0, v0

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    .line 1382
    return v0

    .line 1380
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1385
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static loadAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "assetPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1093
    const/4 v0, 0x0

    .line 1095
    .local v0, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    move-object v0, v1

    .line 1096
    invoke-static {v0}, Lcom/google/common/io/ByteStreams;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/common/util/Util;->fromUtf8Bytes([B)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1098
    invoke-static {v0}, Landroidx/media3/common/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 1096
    return-object v1

    .line 1098
    :catchall_0
    move-exception v1

    invoke-static {v0}, Landroidx/media3/common/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 1099
    throw v1
.end method

.method public static loadRawResource(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1116
    const/4 v0, 0x0

    .line 1118
    .local v0, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    move-object v0, v1

    .line 1119
    invoke-static {v0}, Lcom/google/common/io/ByteStreams;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/common/util/Util;->fromUtf8Bytes([B)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1121
    invoke-static {v0}, Landroidx/media3/common/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 1119
    return-object v1

    .line 1121
    :catchall_0
    move-exception v1

    invoke-static {v0}, Landroidx/media3/common/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 1122
    throw v1
.end method

.method public static maxValue(Landroid/util/SparseLongArray;)J
    .locals 5
    .param p0, "sparseLongArray"    # Landroid/util/SparseLongArray;

    .line 1689
    invoke-virtual {p0}, Landroid/util/SparseLongArray;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1692
    const-wide/high16 v0, -0x8000000000000000L

    .line 1693
    .local v0, "max":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseLongArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1694
    invoke-virtual {p0, v2}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v3

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 1693
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1696
    .end local v2    # "i":I
    :cond_0
    return-wide v0

    .line 1690
    .end local v0    # "max":J
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public static maybeInflate(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/common/util/ParsableByteArray;Ljava/util/zip/Inflater;)Z
    .locals 2
    .param p0, "input"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "output"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p2, "inflater"    # Ljava/util/zip/Inflater;

    .line 3380
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_0

    .line 3381
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->peekUnsignedByte()I

    move-result v0

    const/16 v1, 0x78

    if-ne v0, v1, :cond_0

    .line 3382
    invoke-static {p0, p1, p2}, Landroidx/media3/common/util/Util;->inflate(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/common/util/ParsableByteArray;Ljava/util/zip/Inflater;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3380
    :goto_0
    return v0
.end method

.method private static maybeReplaceLegacyLanguageTags(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "languageTag"    # Ljava/lang/String;

    .line 4213
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Landroidx/media3/common/util/Util;->isoLegacyTagReplacements:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 4214
    sget-object v1, Landroidx/media3/common/util/Util;->isoLegacyTagReplacements:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroidx/media3/common/util/Util;->isoLegacyTagReplacements:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroidx/media3/common/util/Util;->isoLegacyTagReplacements:[Ljava/lang/String;

    aget-object v2, v2, v0

    .line 4216
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4215
    return-object v1

    .line 4213
    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 4219
    .end local v0    # "i":I
    :cond_1
    return-object p0
.end method

.method public static varargs maybeRequestReadExternalStoragePermission(Landroid/app/Activity;[Landroid/net/Uri;)Z
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "uris"    # [Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 371
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 372
    .local v3, "uri":Landroid/net/Uri;
    invoke-static {p0, v3}, Landroidx/media3/common/util/Util;->maybeRequestReadStoragePermission(Landroid/app/Activity;Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 373
    const/4 v0, 0x1

    return v0

    .line 371
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 376
    :cond_1
    return v1
.end method

.method public static varargs maybeRequestReadExternalStoragePermission(Landroid/app/Activity;[Landroidx/media3/common/MediaItem;)Z
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "mediaItems"    # [Landroidx/media3/common/MediaItem;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 385
    invoke-static {p0, p1}, Landroidx/media3/common/util/Util;->maybeRequestReadStoragePermission(Landroid/app/Activity;[Landroidx/media3/common/MediaItem;)Z

    move-result v0

    return v0
.end method

.method private static maybeRequestReadStoragePermission(Landroid/app/Activity;Landroid/net/Uri;)Z
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 418
    invoke-static {p0, p1}, Landroidx/media3/common/util/Util;->isReadStoragePermissionRequestNeeded(Landroid/app/Activity;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 419
    const/4 v0, 0x0

    return v0

    .line 421
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-ge v0, v1, :cond_1

    .line 422
    invoke-static {p0}, Landroidx/media3/common/util/Util;->requestExternalStoragePermission(Landroid/app/Activity;)Z

    move-result v0

    return v0

    .line 424
    :cond_1
    invoke-static {p0}, Landroidx/media3/common/util/Util;->requestReadMediaPermissions(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public static varargs maybeRequestReadStoragePermission(Landroid/app/Activity;[Landroidx/media3/common/MediaItem;)Z
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "mediaItems"    # [Landroidx/media3/common/MediaItem;

    .line 399
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_4

    aget-object v3, p1, v2

    .line 400
    .local v3, "mediaItem":Landroidx/media3/common/MediaItem;
    iget-object v4, v3, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    if-nez v4, :cond_0

    .line 401
    goto :goto_2

    .line 403
    :cond_0
    iget-object v4, v3, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object v4, v4, Landroidx/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    invoke-static {p0, v4}, Landroidx/media3/common/util/Util;->maybeRequestReadStoragePermission(Landroid/app/Activity;Landroid/net/Uri;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    .line 404
    return v5

    .line 406
    :cond_1
    iget-object v4, v3, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object v4, v4, Landroidx/media3/common/MediaItem$LocalConfiguration;->subtitleConfigurations:Lcom/google/common/collect/ImmutableList;

    .line 408
    .local v4, "subtitleConfigs":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem$SubtitleConfiguration;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 409
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/common/MediaItem$SubtitleConfiguration;

    iget-object v7, v7, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->uri:Landroid/net/Uri;

    invoke-static {p0, v7}, Landroidx/media3/common/util/Util;->maybeRequestReadStoragePermission(Landroid/app/Activity;Landroid/net/Uri;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 410
    return v5

    .line 408
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 399
    .end local v3    # "mediaItem":Landroidx/media3/common/MediaItem;
    .end local v4    # "subtitleConfigs":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem$SubtitleConfiguration;>;"
    .end local v6    # "i":I
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 414
    :cond_4
    return v1
.end method

.method public static minValue(Landroid/util/SparseLongArray;)J
    .locals 5
    .param p0, "sparseLongArray"    # Landroid/util/SparseLongArray;

    .line 1670
    invoke-virtual {p0}, Landroid/util/SparseLongArray;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1673
    const-wide v0, 0x7fffffffffffffffL

    .line 1674
    .local v0, "min":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseLongArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1675
    invoke-virtual {p0, v2}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v3

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 1674
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1677
    .end local v2    # "i":I
    :cond_0
    return-wide v0

    .line 1671
    .end local v0    # "min":J
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public static moveItems(Ljava/util/List;III)V
    .locals 4
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "newFromIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;III)V"
        }
    .end annotation

    .line 3743
    .local p0, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 3744
    .local v0, "removedItems":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TT;>;"
    sub-int v1, p2, p1

    .line 3745
    .local v1, "removedItemsLength":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 3746
    add-int v3, p1, v2

    invoke-interface {p0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 3745
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 3748
    .end local v2    # "i":I
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-interface {p0, v2, v0}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 3749
    return-void
.end method

.method public static msToUs(J)J
    .locals 2
    .param p0, "timeMs"    # J

    .line 1720
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p0, v0

    if-eqz v0, :cond_1

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p0

    goto :goto_1

    :cond_1
    :goto_0
    move-wide v0, p0

    :goto_1
    return-wide v0
.end method

.method public static newSingleThreadExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .param p0, "threadName"    # Ljava/lang/String;

    .line 973
    new-instance v0, Landroidx/media3/common/util/Util$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Landroidx/media3/common/util/Util$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static newSingleThreadScheduledExecutor(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1
    .param p0, "threadName"    # Ljava/lang/String;

    .line 984
    new-instance v0, Landroidx/media3/common/util/Util$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Landroidx/media3/common/util/Util$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static normalizeLanguageCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "language"    # Ljava/lang/String;

    .line 1051
    if-nez p0, :cond_0

    .line 1052
    const/4 v0, 0x0

    return-object v0

    .line 1056
    :cond_0
    const/16 v0, 0x5f

    const/16 v1, 0x2d

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 1057
    .local v0, "normalizedTag":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "und"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1059
    :cond_1
    move-object v0, p0

    .line 1061
    :cond_2
    invoke-static {v0}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1062
    const-string v1, "-"

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->splitAtFirst(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 1063
    .local v1, "mainLanguage":Ljava/lang/String;
    sget-object v2, Landroidx/media3/common/util/Util;->languageTagReplacementMap:Ljava/util/HashMap;

    if-nez v2, :cond_3

    .line 1064
    invoke-static {}, Landroidx/media3/common/util/Util;->createIsoLanguageReplacementMap()Ljava/util/HashMap;

    move-result-object v2

    sput-object v2, Landroidx/media3/common/util/Util;->languageTagReplacementMap:Ljava/util/HashMap;

    .line 1066
    :cond_3
    sget-object v2, Landroidx/media3/common/util/Util;->languageTagReplacementMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1067
    .local v2, "replacedLanguage":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 1068
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1069
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1070
    move-object v1, v2

    .line 1072
    :cond_4
    const-string/jumbo v3, "no"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "i"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string/jumbo v3, "zh"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1073
    :cond_5
    invoke-static {v0}, Landroidx/media3/common/util/Util;->maybeReplaceLegacyLanguageTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1075
    :cond_6
    return-object v0
.end method

.method public static nullSafeArrayAppend([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)[TT;"
        }
    .end annotation

    .line 702
    .local p0, "original":[Ljava/lang/Object;, "[TT;"
    .local p1, "newElement":Ljava/lang/Object;, "TT;"
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 703
    .local v0, "result":[Ljava/lang/Object;, "[TT;"
    array-length v1, p0

    aput-object p1, v0, v1

    .line 704
    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNullTypeArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static nullSafeArrayConcatenation([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)[TT;"
        }
    .end annotation

    .line 717
    .local p0, "first":[Ljava/lang/Object;, "[TT;"
    .local p1, "second":[Ljava/lang/Object;, "[TT;"
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 718
    .local v0, "concatenation":[Ljava/lang/Object;, "[TT;"
    array-length v1, p0

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 724
    return-object v0
.end method

.method public static nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 1
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    .line 673
    .local p0, "input":[Ljava/lang/Object;, "[TT;"
    array-length v0, p0

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 674
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static nullSafeArrayCopyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;
    .locals 3
    .param p1, "from"    # I
    .param p2, "to"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)[TT;"
        }
    .end annotation

    .line 688
    .local p0, "input":[Ljava/lang/Object;, "[TT;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 689
    array-length v2, p0

    if-gt p2, v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 690
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static nullSafeListToArray(Ljava/util/List;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;[TT;)V"
        }
    .end annotation

    .line 739
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    array-length v1, p1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 740
    invoke-interface {p0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 741
    return-void
.end method

.method public static parseXsDateTime(Ljava/lang/String;)J
    .locals 11
    .param p0, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1806
    sget-object v0, Landroidx/media3/common/util/Util;->XS_DATE_TIME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1807
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1813
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1815
    const/4 v1, 0x0

    .local v1, "timezoneShift":I
    goto :goto_0

    .line 1816
    .end local v1    # "timezoneShift":I
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Z"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1817
    const/4 v1, 0x0

    .restart local v1    # "timezoneShift":I
    goto :goto_0

    .line 1819
    .end local v1    # "timezoneShift":I
    :cond_1
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    .line 1820
    .restart local v1    # "timezoneShift":I
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 1821
    .local v2, "timezoneOffsetMinutes":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 1822
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1824
    :cond_2
    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1825
    mul-int/lit8 v1, v1, -0x1

    .line 1829
    .end local v2    # "timezoneOffsetMinutes":Ljava/lang/String;
    :cond_3
    :goto_0
    new-instance v2, Ljava/util/GregorianCalendar;

    const-string v3, "GMT"

    invoke-static {v3}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    move-object v4, v2

    .line 1831
    .local v4, "dateTime":Ljava/util/Calendar;
    invoke-virtual {v4}, Ljava/util/Calendar;->clear()V

    .line 1833
    nop

    .line 1834
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1835
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v6, v3, -0x1

    .line 1836
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1837
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 1838
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 1839
    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 1833
    invoke-virtual/range {v4 .. v10}, Ljava/util/Calendar;->set(IIIIII)V

    .line 1840
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1841
    new-instance v5, Ljava/math/BigDecimal;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 1843
    .local v5, "bd":Ljava/math/BigDecimal;
    invoke-virtual {v5, v2}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->intValue()I

    move-result v2

    const/16 v3, 0xe

    invoke-virtual {v4, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 1846
    .end local v5    # "bd":Ljava/math/BigDecimal;
    :cond_4
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 1847
    .local v2, "time":J
    if-eqz v1, :cond_5

    .line 1848
    int-to-long v5, v1

    const-wide/32 v7, 0xea60

    mul-long/2addr v5, v7

    sub-long/2addr v2, v5

    .line 1851
    :cond_5
    return-wide v2

    .line 1808
    .end local v1    # "timezoneShift":I
    .end local v2    # "time":J
    .end local v4    # "dateTime":Ljava/util/Calendar;
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid date/time format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1
.end method

.method public static parseXsDuration(Ljava/lang/String;)J
    .locals 19
    .param p0, "value"    # Ljava/lang/String;

    .line 1765
    sget-object v0, Landroidx/media3/common/util/Util;->XS_DURATION_PATTERN:Ljava/util/regex/Pattern;

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1766
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    const-wide v3, 0x408f400000000000L    # 1000.0

    const-wide v5, 0x40ac200000000000L    # 3600.0

    if-eqz v2, :cond_7

    .line 1767
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    xor-int/2addr v2, v7

    .line 1770
    .local v2, "negated":Z
    const/4 v7, 0x3

    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 1771
    .local v7, "years":Ljava/lang/String;
    const-wide/16 v8, 0x0

    if-eqz v7, :cond_0

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    const-wide v12, 0x417e1852c0000000L    # 3.1556908E7

    mul-double/2addr v10, v12

    goto :goto_0

    :cond_0
    move-wide v10, v8

    .line 1772
    .local v10, "durationSeconds":D
    :goto_0
    const/4 v12, 0x5

    invoke-virtual {v0, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    .line 1773
    .local v12, "months":Ljava/lang/String;
    if-eqz v12, :cond_1

    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    const-wide v15, 0x4144103580000000L    # 2629739.0

    mul-double/2addr v13, v15

    goto :goto_1

    :cond_1
    move-wide v13, v8

    :goto_1
    add-double/2addr v10, v13

    .line 1774
    const/4 v13, 0x7

    invoke-virtual {v0, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    .line 1775
    .local v13, "days":Ljava/lang/String;
    if-eqz v13, :cond_2

    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    const-wide v16, 0x40f5180000000000L    # 86400.0

    mul-double v14, v14, v16

    goto :goto_2

    :cond_2
    move-wide v14, v8

    :goto_2
    add-double/2addr v10, v14

    .line 1776
    const/16 v14, 0xa

    invoke-virtual {v0, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    .line 1777
    .local v14, "hours":Ljava/lang/String;
    if-eqz v14, :cond_3

    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v15

    mul-double/2addr v15, v5

    goto :goto_3

    :cond_3
    move-wide v15, v8

    :goto_3
    add-double/2addr v10, v15

    .line 1778
    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 1779
    .local v5, "minutes":Ljava/lang/String;
    if-eqz v5, :cond_4

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v15

    const-wide/high16 v17, 0x404e000000000000L    # 60.0

    mul-double v15, v15, v17

    goto :goto_4

    :cond_4
    move-wide v15, v8

    :goto_4
    add-double/2addr v10, v15

    .line 1780
    const/16 v6, 0xe

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 1781
    .local v6, "seconds":Ljava/lang/String;
    if-eqz v6, :cond_5

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    :cond_5
    add-double/2addr v10, v8

    .line 1782
    mul-double/2addr v3, v10

    double-to-long v3, v3

    .line 1783
    .local v3, "durationMillis":J
    if-eqz v2, :cond_6

    neg-long v8, v3

    goto :goto_5

    :cond_6
    move-wide v8, v3

    :goto_5
    return-wide v8

    .line 1785
    .end local v2    # "negated":Z
    .end local v3    # "durationMillis":J
    .end local v5    # "minutes":Ljava/lang/String;
    .end local v6    # "seconds":Ljava/lang/String;
    .end local v7    # "years":Ljava/lang/String;
    .end local v10    # "durationSeconds":D
    .end local v12    # "months":Ljava/lang/String;
    .end local v13    # "days":Ljava/lang/String;
    .end local v14    # "hours":Ljava/lang/String;
    :cond_7
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    mul-double/2addr v7, v5

    mul-double/2addr v7, v3

    double-to-long v2, v7

    return-wide v2
.end method

.method public static percentFloat(JJ)F
    .locals 3
    .param p0, "numerator"    # J
    .param p2, "denominator"    # J

    .line 1344
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    const/high16 v1, 0x42c80000    # 100.0f

    if-eqz v0, :cond_0

    cmp-long v0, p0, p2

    if-nez v0, :cond_0

    .line 1345
    return v1

    .line 1347
    :cond_0
    long-to-float v0, p0

    long-to-float v2, p2

    div-float/2addr v0, v2

    mul-float/2addr v0, v1

    return v0
.end method

.method public static percentInt(JJ)I
    .locals 6
    .param p0, "numerator"    # J
    .param p2, "denominator"    # J

    .line 1329
    const-wide/16 v0, 0x64

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/math/LongMath;->saturatedMultiply(JJ)J

    move-result-wide v2

    .line 1331
    .local v2, "numeratorTimes100":J
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    .line 1332
    div-long v0, v2, p2

    goto :goto_0

    .line 1333
    :cond_0
    div-long v0, p2, v0

    div-long v0, p0, v0

    :goto_0
    nop

    .line 1334
    .local v0, "result":J
    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v4

    return v4
.end method

.method public static postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z
    .locals 2
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 832
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 833
    .local v0, "looper":Landroid/os/Looper;
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 834
    const/4 v1, 0x0

    return v1

    .line 836
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 837
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 838
    const/4 v1, 0x1

    return v1

    .line 840
    :cond_1
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v1

    return v1
.end method

.method public static postOrRun(Landroidx/media3/common/util/HandlerWrapper;Ljava/lang/Runnable;)Z
    .locals 2
    .param p0, "handler"    # Landroidx/media3/common/util/HandlerWrapper;
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 855
    invoke-interface {p0}, Landroidx/media3/common/util/HandlerWrapper;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 856
    .local v0, "looper":Landroid/os/Looper;
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 857
    const/4 v1, 0x0

    return v1

    .line 859
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 860
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 861
    const/4 v1, 0x1

    return v1

    .line 863
    :cond_1
    invoke-interface {p0, p1}, Landroidx/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    move-result v1

    return v1
.end method

.method public static postOrRunWithCompletion(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Handler;",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 882
    .local p2, "successValue":Ljava/lang/Object;, "TT;"
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 883
    .local v0, "outputFuture":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<TT;>;"
    new-instance v1, Landroidx/media3/common/util/Util$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0, p1, p2}, Landroidx/media3/common/util/Util$$ExternalSyntheticLambda3;-><init>(Lcom/google/common/util/concurrent/SettableFuture;Ljava/lang/Runnable;Ljava/lang/Object;)V

    invoke-static {p0, v1}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 896
    return-object v0
.end method

.method public static putInt24(Ljava/nio/ByteBuffer;I)V
    .locals 5
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "value"    # I

    .line 3715
    const/high16 v0, -0x1000000

    and-int/2addr v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    and-int v3, p1, v0

    if-ne v3, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 3718
    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 3715
    const-string v4, "Value out of range of 24-bit integer: %s"

    invoke-static {v0, v4, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 3719
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v3, 0x3

    if-lt v0, v3, :cond_2

    move v1, v2

    :cond_2
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 3721
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/high16 v2, 0xff0000

    if-ne v0, v1, :cond_3

    .line 3722
    and-int v0, p1, v2

    shr-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    goto :goto_2

    .line 3723
    :cond_3
    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    :goto_2
    nop

    .line 3724
    .local v0, "component1":B
    const v1, 0xff00

    and-int/2addr v1, p1

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    .line 3726
    .local v1, "component2":B
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v3

    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v3, v4, :cond_4

    .line 3727
    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    goto :goto_3

    .line 3728
    :cond_4
    and-int/2addr v2, p1

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    :goto_3
    nop

    .line 3729
    .local v2, "component3":B
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 3730
    return-void
.end method

.method public static readBoolean(Landroid/os/Parcel;)Z
    .locals 1
    .param p0, "parcel"    # Landroid/os/Parcel;

    .line 1013
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static recursiveDelete(Ljava/io/File;)V
    .locals 4
    .param p0, "fileOrDirectory"    # Ljava/io/File;

    .line 3126
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 3127
    .local v0, "directoryFiles":[Ljava/io/File;
    if-eqz v0, :cond_0

    .line 3128
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 3129
    .local v3, "child":Ljava/io/File;
    invoke-static {v3}, Landroidx/media3/common/util/Util;->recursiveDelete(Ljava/io/File;)V

    .line 3128
    .end local v3    # "child":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3132
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 3133
    return-void
.end method

.method public static registerReceiverNotExported(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;

    .line 277
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-ge v0, v1, :cond_0

    .line 278
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    .line 280
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static removeRange(Ljava/util/List;II)V
    .locals 1
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;II)V"
        }
    .end annotation

    .line 634
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-ltz p1, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-gt p2, v0, :cond_1

    if-gt p1, p2, :cond_1

    .line 636
    if-eq p1, p2, :cond_0

    .line 638
    invoke-interface {p0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 640
    :cond_0
    return-void

    .line 635
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private static requestExternalStoragePermission(Landroid/app/Activity;)Z
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .line 4178
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 4180
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 4182
    const/4 v0, 0x1

    return v0

    .line 4184
    :cond_0
    return v2
.end method

.method private static requestReadMediaPermissions(Landroid/app/Activity;)Z
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;

    .line 4189
    const-string v0, "android.permission.READ_MEDIA_AUDIO"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "android.permission.READ_MEDIA_VIDEO"

    const-string v4, "android.permission.READ_MEDIA_IMAGES"

    if-nez v1, :cond_1

    .line 4191
    invoke-virtual {p0, v3}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 4193
    invoke-virtual {p0, v4}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4202
    :cond_0
    return v2

    .line 4195
    :cond_1
    :goto_0
    filled-new-array {v0, v4, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 4200
    const/4 v0, 0x1

    return v0
.end method

.method public static sampleCountToDurationUs(JI)J
    .locals 7
    .param p0, "sampleCount"    # J
    .param p2, "sampleRate"    # I

    .line 1737
    int-to-long v4, p2

    sget-object v6, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v2, 0xf4240

    move-wide v0, p0

    .end local p0    # "sampleCount":J
    .local v0, "sampleCount":J
    invoke-static/range {v0 .. v6}, Landroidx/media3/common/util/Util;->scaleLargeValue(JJJLjava/math/RoundingMode;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static scaleLargeTimestamp(JJJ)J
    .locals 7
    .param p0, "timestamp"    # J
    .param p2, "multiplier"    # J
    .param p4, "divisor"    # J

    .line 2057
    sget-object v6, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-wide v0, p0

    move-wide v2, p2

    move-wide v4, p4

    .end local p0    # "timestamp":J
    .end local p2    # "multiplier":J
    .end local p4    # "divisor":J
    .local v0, "timestamp":J
    .local v2, "multiplier":J
    .local v4, "divisor":J
    invoke-static/range {v0 .. v6}, Landroidx/media3/common/util/Util;->scaleLargeValue(JJJLjava/math/RoundingMode;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static scaleLargeTimestamps(Ljava/util/List;JJ)[J
    .locals 6
    .param p1, "multiplier"    # J
    .param p3, "divisor"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;JJ)[J"
        }
    .end annotation

    .line 2070
    .local p0, "timestamps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    sget-object v5, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .end local p0    # "timestamps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local p1    # "multiplier":J
    .end local p3    # "divisor":J
    .local v0, "timestamps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local v1, "multiplier":J
    .local v3, "divisor":J
    invoke-static/range {v0 .. v5}, Landroidx/media3/common/util/Util;->scaleLargeValues(Ljava/util/List;JJLjava/math/RoundingMode;)[J

    move-result-object p0

    return-object p0
.end method

.method public static scaleLargeTimestampsInPlace([JJJ)V
    .locals 6
    .param p0, "timestamps"    # [J
    .param p1, "multiplier"    # J
    .param p3, "divisor"    # J

    .line 2082
    sget-object v5, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .end local p0    # "timestamps":[J
    .end local p1    # "multiplier":J
    .end local p3    # "divisor":J
    .local v0, "timestamps":[J
    .local v1, "multiplier":J
    .local v3, "divisor":J
    invoke-static/range {v0 .. v5}, Landroidx/media3/common/util/Util;->scaleLargeValuesInPlace([JJJLjava/math/RoundingMode;)V

    .line 2083
    return-void
.end method

.method public static scaleLargeValue(JJJLjava/math/RoundingMode;)J
    .locals 4
    .param p0, "value"    # J
    .param p2, "multiplier"    # J
    .param p4, "divisor"    # J
    .param p6, "roundingMode"    # Ljava/math/RoundingMode;

    .line 1874
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-eqz v2, :cond_5

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    goto :goto_0

    .line 1877
    :cond_0
    cmp-long v2, p4, p2

    if-ltz v2, :cond_1

    rem-long v2, p4, p2

    cmp-long v2, v2, v0

    if-nez v2, :cond_1

    .line 1878
    sget-object v0, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    invoke-static {p4, p5, p2, p3, v0}, Lcom/google/common/math/LongMath;->divide(JJLjava/math/RoundingMode;)J

    move-result-wide v0

    .line 1879
    .local v0, "divisionFactor":J
    invoke-static {p0, p1, v0, v1, p6}, Lcom/google/common/math/LongMath;->divide(JJLjava/math/RoundingMode;)J

    move-result-wide v2

    return-wide v2

    .line 1880
    .end local v0    # "divisionFactor":J
    :cond_1
    cmp-long v2, p4, p2

    if-gez v2, :cond_2

    rem-long v2, p2, p4

    cmp-long v2, v2, v0

    if-nez v2, :cond_2

    .line 1881
    sget-object v0, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    invoke-static {p2, p3, p4, p5, v0}, Lcom/google/common/math/LongMath;->divide(JJLjava/math/RoundingMode;)J

    move-result-wide v0

    .line 1882
    .local v0, "multiplicationFactor":J
    invoke-static {p0, p1, v0, v1}, Lcom/google/common/math/LongMath;->saturatedMultiply(JJ)J

    move-result-wide v2

    return-wide v2

    .line 1883
    .end local v0    # "multiplicationFactor":J
    :cond_2
    cmp-long v2, p4, p0

    if-ltz v2, :cond_3

    rem-long v2, p4, p0

    cmp-long v2, v2, v0

    if-nez v2, :cond_3

    .line 1884
    sget-object v0, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    invoke-static {p4, p5, p0, p1, v0}, Lcom/google/common/math/LongMath;->divide(JJLjava/math/RoundingMode;)J

    move-result-wide v0

    .line 1885
    .local v0, "divisionFactor":J
    invoke-static {p2, p3, v0, v1, p6}, Lcom/google/common/math/LongMath;->divide(JJLjava/math/RoundingMode;)J

    move-result-wide v2

    return-wide v2

    .line 1886
    .end local v0    # "divisionFactor":J
    :cond_3
    cmp-long v2, p4, p0

    if-gez v2, :cond_4

    rem-long v2, p0, p4

    cmp-long v0, v2, v0

    if-nez v0, :cond_4

    .line 1887
    sget-object v0, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    invoke-static {p0, p1, p4, p5, v0}, Lcom/google/common/math/LongMath;->divide(JJLjava/math/RoundingMode;)J

    move-result-wide v0

    .line 1888
    .local v0, "multiplicationFactor":J
    invoke-static {p2, p3, v0, v1}, Lcom/google/common/math/LongMath;->saturatedMultiply(JJ)J

    move-result-wide v2

    return-wide v2

    .line 1890
    .end local v0    # "multiplicationFactor":J
    :cond_4
    invoke-static/range {p0 .. p6}, Landroidx/media3/common/util/Util;->scaleLargeValueFallback(JJJLjava/math/RoundingMode;)J

    move-result-wide v0

    return-wide v0

    .line 1875
    :cond_5
    :goto_0
    return-wide v0
.end method

.method private static scaleLargeValueFallback(JJJLjava/math/RoundingMode;)J
    .locals 30
    .param p0, "value"    # J
    .param p2, "multiplier"    # J
    .param p4, "divisor"    # J
    .param p6, "roundingMode"    # Ljava/math/RoundingMode;

    .line 2004
    move-wide/from16 v0, p4

    move-object/from16 v2, p6

    invoke-static/range {p0 .. p3}, Lcom/google/common/math/LongMath;->saturatedMultiply(JJ)J

    move-result-wide v3

    .line 2005
    .local v3, "numerator":J
    const-wide v5, 0x7fffffffffffffffL

    cmp-long v7, v3, v5

    const-wide/high16 v8, -0x8000000000000000L

    if-eqz v7, :cond_0

    cmp-long v7, v3, v8

    if-eqz v7, :cond_0

    .line 2006
    invoke-static {v3, v4, v0, v1, v2}, Lcom/google/common/math/LongMath;->divide(JJLjava/math/RoundingMode;)J

    move-result-wide v5

    return-wide v5

    .line 2011
    :cond_0
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Lcom/google/common/math/LongMath;->gcd(JJ)J

    move-result-wide v10

    .line 2012
    .local v10, "gcdOfMultiplierAndDivisor":J
    sget-object v7, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    .line 2013
    move-wide/from16 v12, p2

    invoke-static {v12, v13, v10, v11, v7}, Lcom/google/common/math/LongMath;->divide(JJLjava/math/RoundingMode;)J

    move-result-wide v14

    .line 2014
    .local v14, "simplifiedMultiplier":J
    sget-object v7, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    .line 2015
    move-wide/from16 v16, v5

    invoke-static {v0, v1, v10, v11, v7}, Lcom/google/common/math/LongMath;->divide(JJLjava/math/RoundingMode;)J

    move-result-wide v5

    .line 2016
    .local v5, "simplifiedDivisor":J
    nop

    .line 2017
    move-wide/from16 v18, v8

    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    invoke-static {v8, v9, v0, v1}, Lcom/google/common/math/LongMath;->gcd(JJ)J

    move-result-wide v0

    .line 2018
    .local v0, "gcdOfValueAndSimplifiedDivisor":J
    sget-object v7, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    .line 2019
    move-wide/from16 v8, p0

    move-wide/from16 v20, v3

    .end local v3    # "numerator":J
    .local v20, "numerator":J
    invoke-static {v8, v9, v0, v1, v7}, Lcom/google/common/math/LongMath;->divide(JJLjava/math/RoundingMode;)J

    move-result-wide v3

    .line 2020
    .local v3, "simplifiedValue":J
    sget-object v7, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    .line 2021
    invoke-static {v5, v6, v0, v1, v7}, Lcom/google/common/math/LongMath;->divide(JJLjava/math/RoundingMode;)J

    move-result-wide v5

    .line 2023
    move-wide/from16 v22, v0

    .end local v0    # "gcdOfValueAndSimplifiedDivisor":J
    .local v22, "gcdOfValueAndSimplifiedDivisor":J
    invoke-static {v3, v4, v14, v15}, Lcom/google/common/math/LongMath;->saturatedMultiply(JJ)J

    move-result-wide v0

    .line 2024
    .local v0, "simplifiedNumerator":J
    cmp-long v7, v0, v16

    if-eqz v7, :cond_1

    cmp-long v7, v0, v18

    if-eqz v7, :cond_1

    .line 2025
    invoke-static {v0, v1, v5, v6, v2}, Lcom/google/common/math/LongMath;->divide(JJLjava/math/RoundingMode;)J

    move-result-wide v16

    return-wide v16

    .line 2027
    :cond_1
    move-wide/from16 v24, v0

    .end local v0    # "simplifiedNumerator":J
    .local v24, "simplifiedNumerator":J
    long-to-double v0, v14

    move-wide/from16 v26, v0

    long-to-double v0, v5

    div-double v0, v26, v0

    .line 2028
    .local v0, "multiplicationFactor":D
    move-wide/from16 v26, v0

    .end local v0    # "multiplicationFactor":D
    .local v26, "multiplicationFactor":D
    long-to-double v0, v3

    mul-double v0, v0, v26

    .line 2031
    .local v0, "result":D
    const-wide/high16 v28, 0x43e0000000000000L    # 9.223372036854776E18

    cmpl-double v7, v0, v28

    if-lez v7, :cond_2

    .line 2032
    return-wide v16

    .line 2033
    :cond_2
    const-wide/high16 v16, -0x3c20000000000000L    # -9.223372036854776E18

    cmpg-double v7, v0, v16

    if-gez v7, :cond_3

    .line 2034
    return-wide v18

    .line 2036
    :cond_3
    invoke-static {v0, v1, v2}, Lcom/google/common/math/DoubleMath;->roundToLong(DLjava/math/RoundingMode;)J

    move-result-wide v16

    return-wide v16
.end method

.method public static scaleLargeValues(Ljava/util/List;JJLjava/math/RoundingMode;)[J
    .locals 16
    .param p1, "multiplier"    # J
    .param p3, "divisor"    # J
    .param p5, "roundingMode"    # Ljava/math/RoundingMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;JJ",
            "Ljava/math/RoundingMode;",
            ")[J"
        }
    .end annotation

    .line 1906
    .local p0, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    move-object/from16 v7, p5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v8, v1, [J

    .line 1907
    .local v8, "result":[J
    const-wide/16 v9, 0x0

    cmp-long v1, v3, v9

    if-nez v1, :cond_0

    .line 1909
    return-object v8

    .line 1911
    :cond_0
    cmp-long v1, v5, v3

    if-ltz v1, :cond_2

    rem-long v1, v5, v3

    cmp-long v1, v1, v9

    if-nez v1, :cond_2

    .line 1912
    sget-object v1, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    invoke-static {v5, v6, v3, v4, v1}, Lcom/google/common/math/LongMath;->divide(JJLjava/math/RoundingMode;)J

    move-result-wide v1

    .line 1913
    .local v1, "divisionFactor":J
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v10, v8

    if-ge v9, v10, :cond_1

    .line 1914
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11, v1, v2, v7}, Lcom/google/common/math/LongMath;->divide(JJLjava/math/RoundingMode;)J

    move-result-wide v10

    aput-wide v10, v8, v9

    .line 1913
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1916
    .end local v9    # "i":I
    :cond_1
    return-object v8

    .line 1917
    .end local v1    # "divisionFactor":J
    :cond_2
    cmp-long v1, v5, v3

    if-gez v1, :cond_4

    rem-long v1, v3, v5

    cmp-long v1, v1, v9

    if-nez v1, :cond_4

    .line 1918
    sget-object v1, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    invoke-static {v3, v4, v5, v6, v1}, Lcom/google/common/math/LongMath;->divide(JJLjava/math/RoundingMode;)J

    move-result-wide v1

    .line 1919
    .local v1, "multiplicationFactor":J
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_1
    array-length v10, v8

    if-ge v9, v10, :cond_3

    .line 1920
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11, v1, v2}, Lcom/google/common/math/LongMath;->saturatedMultiply(JJ)J

    move-result-wide v10

    aput-wide v10, v8, v9

    .line 1919
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1922
    .end local v9    # "i":I
    :cond_3
    return-object v8

    .line 1924
    .end local v1    # "multiplicationFactor":J
    :cond_4
    const/4 v1, 0x0

    move v11, v1

    .local v11, "i":I
    :goto_2
    array-length v1, v8

    if-ge v11, v1, :cond_8

    .line 1925
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1926
    .local v1, "value":J
    cmp-long v12, v1, v9

    if-nez v12, :cond_5

    .line 1928
    goto :goto_3

    .line 1930
    :cond_5
    cmp-long v12, v5, v1

    if-ltz v12, :cond_6

    rem-long v12, v5, v1

    cmp-long v12, v12, v9

    if-nez v12, :cond_6

    .line 1931
    sget-object v12, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    invoke-static {v5, v6, v1, v2, v12}, Lcom/google/common/math/LongMath;->divide(JJLjava/math/RoundingMode;)J

    move-result-wide v12

    .line 1932
    .local v12, "divisionFactor":J
    invoke-static {v3, v4, v12, v13, v7}, Lcom/google/common/math/LongMath;->divide(JJLjava/math/RoundingMode;)J

    move-result-wide v14

    aput-wide v14, v8, v11

    .line 1933
    .end local v12    # "divisionFactor":J
    goto :goto_3

    :cond_6
    cmp-long v12, v5, v1

    if-gez v12, :cond_7

    rem-long v12, v1, v5

    cmp-long v12, v12, v9

    if-nez v12, :cond_7

    .line 1934
    sget-object v12, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    invoke-static {v1, v2, v5, v6, v12}, Lcom/google/common/math/LongMath;->divide(JJLjava/math/RoundingMode;)J

    move-result-wide v12

    .line 1935
    .local v12, "multiplicationFactor":J
    invoke-static {v3, v4, v12, v13}, Lcom/google/common/math/LongMath;->saturatedMultiply(JJ)J

    move-result-wide v14

    aput-wide v14, v8, v11

    .line 1936
    .end local v12    # "multiplicationFactor":J
    goto :goto_3

    .line 1937
    :cond_7
    invoke-static/range {v1 .. v7}, Landroidx/media3/common/util/Util;->scaleLargeValueFallback(JJJLjava/math/RoundingMode;)J

    move-result-wide v12

    aput-wide v12, v8, v11

    .line 1924
    .end local v1    # "value":J
    :goto_3
    add-int/lit8 v11, v11, 0x1

    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    move-object/from16 v7, p5

    goto :goto_2

    .line 1940
    .end local v11    # "i":I
    :cond_8
    return-object v8
.end method

.method public static scaleLargeValuesInPlace([JJJLjava/math/RoundingMode;)V
    .locals 10
    .param p0, "values"    # [J
    .param p1, "multiplier"    # J
    .param p3, "divisor"    # J
    .param p5, "roundingMode"    # Ljava/math/RoundingMode;

    .line 1956
    const-wide/16 v7, 0x0

    cmp-long v0, p1, v7

    if-nez v0, :cond_0

    .line 1957
    invoke-static {p0, v7, v8}, Ljava/util/Arrays;->fill([JJ)V

    .line 1958
    return-void

    .line 1960
    :cond_0
    cmp-long v0, p3, p1

    if-ltz v0, :cond_2

    rem-long v0, p3, p1

    cmp-long v0, v0, v7

    if-nez v0, :cond_2

    .line 1961
    sget-object v0, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    invoke-static {p3, p4, p1, p2, v0}, Lcom/google/common/math/LongMath;->divide(JJLjava/math/RoundingMode;)J

    move-result-wide v0

    .line 1962
    .local v0, "divisionFactor":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 1963
    aget-wide v7, p0, v2

    invoke-static {v7, v8, v0, v1, p5}, Lcom/google/common/math/LongMath;->divide(JJLjava/math/RoundingMode;)J

    move-result-wide v7

    aput-wide v7, p0, v2

    .line 1962
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1965
    .end local v0    # "divisionFactor":J
    .end local v2    # "i":I
    :cond_1
    goto/16 :goto_4

    :cond_2
    cmp-long v0, p3, p1

    if-gez v0, :cond_4

    rem-long v0, p1, p3

    cmp-long v0, v0, v7

    if-nez v0, :cond_4

    .line 1966
    sget-object v0, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    invoke-static {p1, p2, p3, p4, v0}, Lcom/google/common/math/LongMath;->divide(JJLjava/math/RoundingMode;)J

    move-result-wide v0

    .line 1967
    .local v0, "multiplicationFactor":J
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    array-length v3, p0

    if-ge v2, v3, :cond_3

    .line 1968
    aget-wide v7, p0, v2

    invoke-static {v7, v8, v0, v1}, Lcom/google/common/math/LongMath;->saturatedMultiply(JJ)J

    move-result-wide v7

    aput-wide v7, p0, v2

    .line 1967
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1970
    .end local v0    # "multiplicationFactor":J
    .end local v2    # "i":I
    :cond_3
    goto :goto_4

    .line 1971
    :cond_4
    const/4 v0, 0x0

    move v9, v0

    .local v9, "i":I
    :goto_2
    array-length v0, p0

    if-ge v9, v0, :cond_8

    .line 1972
    aget-wide v0, p0, v9

    cmp-long v0, v0, v7

    if-nez v0, :cond_5

    .line 1973
    goto :goto_3

    .line 1975
    :cond_5
    aget-wide v0, p0, v9

    cmp-long v0, p3, v0

    if-ltz v0, :cond_6

    aget-wide v0, p0, v9

    rem-long v0, p3, v0

    cmp-long v0, v0, v7

    if-nez v0, :cond_6

    .line 1976
    aget-wide v0, p0, v9

    sget-object v2, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    invoke-static {p3, p4, v0, v1, v2}, Lcom/google/common/math/LongMath;->divide(JJLjava/math/RoundingMode;)J

    move-result-wide v0

    .line 1977
    .local v0, "divisionFactor":J
    invoke-static {p1, p2, v0, v1, p5}, Lcom/google/common/math/LongMath;->divide(JJLjava/math/RoundingMode;)J

    move-result-wide v2

    aput-wide v2, p0, v9

    .line 1978
    .end local v0    # "divisionFactor":J
    goto :goto_3

    :cond_6
    aget-wide v0, p0, v9

    cmp-long v0, p3, v0

    if-gez v0, :cond_7

    aget-wide v0, p0, v9

    rem-long/2addr v0, p3

    cmp-long v0, v0, v7

    if-nez v0, :cond_7

    .line 1979
    aget-wide v0, p0, v9

    sget-object v2, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    invoke-static {v0, v1, p3, p4, v2}, Lcom/google/common/math/LongMath;->divide(JJLjava/math/RoundingMode;)J

    move-result-wide v0

    .line 1980
    .local v0, "multiplicationFactor":J
    invoke-static {p1, p2, v0, v1}, Lcom/google/common/math/LongMath;->saturatedMultiply(JJ)J

    move-result-wide v2

    aput-wide v2, p0, v9

    .line 1981
    .end local v0    # "multiplicationFactor":J
    goto :goto_3

    .line 1982
    :cond_7
    aget-wide v0, p0, v9

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Landroidx/media3/common/util/Util;->scaleLargeValueFallback(JJJLjava/math/RoundingMode;)J

    move-result-wide v0

    aput-wide v0, p0, v9

    .line 1971
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1986
    .end local v9    # "i":I
    :cond_8
    :goto_4
    return-void
.end method

.method public static setForegroundServiceNotification(Landroid/app/Service;ILandroid/app/Notification;ILjava/lang/String;)V
    .locals 2
    .param p0, "service"    # Landroid/app/Service;
    .param p1, "notificationId"    # I
    .param p2, "notification"    # Landroid/app/Notification;
    .param p3, "foregroundServiceType"    # I
    .param p4, "foregroundServiceManifestType"    # Ljava/lang/String;

    .line 320
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 321
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/media3/common/util/Util$Api29;->startForeground(Landroid/app/Service;ILandroid/app/Notification;ILjava/lang/String;)V

    goto :goto_0

    .line 328
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 330
    :goto_0
    return-void
.end method

.method public static shouldEnablePlayPauseButton(Landroidx/media3/common/Player;)Z
    .locals 7
    .param p0, "player"    # Landroidx/media3/common/Player;
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "#1"
        }
        result = true
    .end annotation

    .line 3956
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 3957
    return v0

    .line 3959
    :cond_0
    invoke-interface {p0}, Landroidx/media3/common/Player;->getPlaybackState()I

    move-result v1

    .line 3960
    .local v1, "playbackState":I
    nop

    .line 3961
    const/16 v2, 0x10

    invoke-interface {p0, v2}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 3962
    invoke-interface {p0}, Landroidx/media3/common/Player;->getCurrentMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v0

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v3

    .line 3963
    .local v2, "hasMediaItem":Z
    :goto_1
    invoke-interface {p0, v3}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v4

    .line 3964
    .local v4, "canPlayPause":Z
    if-ne v1, v3, :cond_3

    .line 3965
    const/4 v5, 0x2

    invoke-interface {p0, v5}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v3

    goto :goto_2

    :cond_3
    move v5, v0

    .line 3966
    .local v5, "canPrepare":Z
    :goto_2
    const/4 v6, 0x4

    if-ne v1, v6, :cond_4

    .line 3968
    invoke-interface {p0, v6}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v6

    if-eqz v6, :cond_4

    move v6, v3

    goto :goto_3

    :cond_4
    move v6, v0

    .line 3970
    .local v6, "canSeekToDefault":Z
    :goto_3
    if-eqz v2, :cond_6

    if-nez v4, :cond_5

    if-nez v5, :cond_5

    if-eqz v6, :cond_6

    :cond_5
    move v0, v3

    :cond_6
    return v0
.end method

.method private static shouldEscapeCharacter(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 3043
    sparse-switch p0, :sswitch_data_0

    .line 3056
    const/4 v0, 0x0

    return v0

    .line 3054
    :sswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x25 -> :sswitch_0
        0x2a -> :sswitch_0
        0x2f -> :sswitch_0
        0x3a -> :sswitch_0
        0x3c -> :sswitch_0
        0x3e -> :sswitch_0
        0x3f -> :sswitch_0
        0x5c -> :sswitch_0
        0x7c -> :sswitch_0
    .end sparse-switch
.end method

.method public static shouldShowPlayButton(Landroidx/media3/common/Player;)Z
    .locals 1
    .param p0, "player"    # Landroidx/media3/common/Player;
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "#1"
        }
        result = false
    .end annotation

    .line 3984
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroidx/media3/common/util/Util;->shouldShowPlayButton(Landroidx/media3/common/Player;Z)Z

    move-result v0

    return v0
.end method

.method public static shouldShowPlayButton(Landroidx/media3/common/Player;Z)Z
    .locals 3
    .param p0, "player"    # Landroidx/media3/common/Player;
    .param p1, "shouldShowPlayIfSuppressed"    # Z
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "#1"
        }
        result = false
    .end annotation

    .line 4002
    const/4 v0, 0x1

    if-eqz p0, :cond_1

    .line 4003
    invoke-interface {p0}, Landroidx/media3/common/Player;->getPlayWhenReady()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4004
    invoke-interface {p0}, Landroidx/media3/common/Player;->getPlaybackState()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 4005
    invoke-interface {p0}, Landroidx/media3/common/Player;->getPlaybackState()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    if-eqz p1, :cond_0

    .line 4007
    invoke-interface {p0}, Landroidx/media3/common/Player;->getPlaybackSuppressionReason()I

    move-result v1

    if-eqz v1, :cond_0

    .line 4008
    invoke-interface {p0}, Landroidx/media3/common/Player;->getPlaybackSuppressionReason()I

    move-result v1

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    nop

    .line 4002
    :goto_1
    return v0
.end method

.method public static sneakyThrow(Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "t"    # Ljava/lang/Throwable;

    .line 3115
    invoke-static {p0}, Landroidx/media3/common/util/Util;->sneakyThrowInternal(Ljava/lang/Throwable;)V

    .line 3116
    return-void
.end method

.method private static sneakyThrowInternal(Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Throwable;",
            ")V^TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 3120
    throw p0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "regex"    # Ljava/lang/String;

    .line 1171
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitAtFirst(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "regex"    # Ljava/lang/String;

    .line 1186
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitCodecs(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p0, "codecs"    # Ljava/lang/String;

    .line 2350
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2351
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    .line 2353
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "(\\s*,\\s*)"

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static startForegroundService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 295
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 296
    invoke-virtual {p0, p1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0

    .line 298
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public static stopForeground(Landroid/app/Service;Z)V
    .locals 0
    .param p0, "service"    # Landroid/app/Service;
    .param p1, "removeNotification"    # Z

    .line 341
    nop

    .line 342
    invoke-static {p0, p1}, Landroidx/media3/common/util/Util$Api24;->access$000(Landroid/app/Service;Z)V

    .line 346
    return-void
.end method

.method public static subtractWithOverflowDefault(JJJ)J
    .locals 6
    .param p0, "x"    # J
    .param p2, "y"    # J
    .param p4, "overflowResult"    # J

    .line 1313
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/math/LongMath;->saturatedSubtract(JJ)J

    move-result-wide v0

    .line 1315
    .local v0, "result":J
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    sub-long v4, p0, p2

    cmp-long v2, v4, v2

    if-nez v2, :cond_1

    :cond_0
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    sub-long v4, p0, p2

    cmp-long v2, v4, v2

    if-eqz v2, :cond_2

    .line 1316
    :cond_1
    move-wide v2, p4

    goto :goto_0

    .line 1317
    :cond_2
    move-wide v2, v0

    .line 1314
    :goto_0
    return-wide v2
.end method

.method public static varargs sum([J)J
    .locals 6
    .param p0, "summands"    # [J

    .line 3916
    const-wide/16 v0, 0x0

    .line 3917
    .local v0, "sum":J
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-wide v4, p0, v3

    .line 3918
    .local v4, "summand":J
    add-long/2addr v0, v4

    .line 3917
    .end local v4    # "summand":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3920
    :cond_0
    return-wide v0
.end method

.method public static tableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 4
    .param p0, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "tableName"    # Ljava/lang/String;

    .line 3754
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v0

    .line 3755
    const-string/jumbo v1, "sqlite_master"

    const-string/jumbo v2, "tbl_name = ?"

    invoke-static {p0, v1, v2, v0}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    .line 3757
    .local v0, "count":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public static toByteArray(F)[B
    .locals 1
    .param p0, "value"    # F

    .line 256
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {v0}, Lcom/google/common/primitives/Ints;->toByteArray(I)[B

    move-result-object v0

    return-object v0
.end method

.method public static toByteArray(Ljava/io/InputStream;)[B
    .locals 1
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 230
    invoke-static {p0}, Lcom/google/common/io/ByteStreams;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v0

    return-object v0
.end method

.method public static varargs toByteArray([I)[B
    .locals 7
    .param p0, "values"    # [I

    .line 242
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    .line 243
    .local v0, "array":[B
    const/4 v1, 0x0

    .line 244
    .local v1, "index":I
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, p0, v3

    .line 245
    .local v4, "value":I
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "index":I
    .local v5, "index":I
    shr-int/lit8 v6, v4, 0x18

    int-to-byte v6, v6

    aput-byte v6, v0, v1

    .line 246
    add-int/lit8 v1, v5, 0x1

    .end local v5    # "index":I
    .restart local v1    # "index":I
    shr-int/lit8 v6, v4, 0x10

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    .line 247
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "index":I
    .restart local v5    # "index":I
    shr-int/lit8 v6, v4, 0x8

    int-to-byte v6, v6

    aput-byte v6, v0, v1

    .line 248
    add-int/lit8 v1, v5, 0x1

    .end local v5    # "index":I
    .restart local v1    # "index":I
    int-to-byte v6, v4

    aput-byte v6, v0, v5

    .line 244
    .end local v4    # "value":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 250
    :cond_0
    return-object v0
.end method

.method public static toFourccString(I)Ljava/lang/String;
    .locals 3
    .param p0, "fourcc"    # I

    .line 2182
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/google/common/primitives/Ints;->toByteArray(I)[B

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 1
    .param p0, "bytes"    # [B

    .line 2177
    invoke-static {}, Lcom/google/common/io/BaseEncoding;->base16()Lcom/google/common/io/BaseEncoding;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/io/BaseEncoding;->lowerCase()Lcom/google/common/io/BaseEncoding;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/common/io/BaseEncoding;->encode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toLong(II)J
    .locals 4
    .param p0, "mostSignificantBits"    # I
    .param p1, "leastSignificantBits"    # I

    .line 2155
    invoke-static {p0}, Landroidx/media3/common/util/Util;->toUnsignedLong(I)J

    move-result-wide v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    invoke-static {p1}, Landroidx/media3/common/util/Util;->toUnsignedLong(I)J

    move-result-wide v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static toUnsignedLong(I)J
    .locals 4
    .param p0, "x"    # I

    .line 2142
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public static transformFutureAsync(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TU;>;",
            "Lcom/google/common/util/concurrent/AsyncFunction<",
            "TU;TT;>;)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 921
    .local p0, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<TU;>;"
    .local p1, "transformFunction":Lcom/google/common/util/concurrent/AsyncFunction;, "Lcom/google/common/util/concurrent/AsyncFunction<TU;TT;>;"
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 922
    .local v0, "outputFuture":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<TT;>;"
    new-instance v1, Landroidx/media3/common/util/Util$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p0}, Landroidx/media3/common/util/Util$$ExternalSyntheticLambda0;-><init>(Lcom/google/common/util/concurrent/SettableFuture;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 928
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 922
    invoke-virtual {v0, v1, v2}, Lcom/google/common/util/concurrent/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 929
    new-instance v1, Landroidx/media3/common/util/Util$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0, p1}, Landroidx/media3/common/util/Util$$ExternalSyntheticLambda1;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/SettableFuture;Lcom/google/common/util/concurrent/AsyncFunction;)V

    .line 951
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 929
    invoke-interface {p0, v1, v2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 952
    return-object v0
.end method

.method public static unescapeFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "fileName"    # Ljava/lang/String;

    .line 3072
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 3073
    .local v0, "length":I
    const/4 v1, 0x0

    .line 3074
    .local v1, "percentCharacterCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 3075
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x25

    if-ne v3, v4, :cond_0

    .line 3076
    add-int/lit8 v1, v1, 0x1

    .line 3074
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3079
    .end local v2    # "i":I
    :cond_1
    if-nez v1, :cond_2

    .line 3080
    return-object p0

    .line 3083
    :cond_2
    mul-int/lit8 v2, v1, 0x2

    sub-int v2, v0, v2

    .line 3084
    .local v2, "expectedLength":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3085
    .local v3, "builder":Ljava/lang/StringBuilder;
    sget-object v4, Landroidx/media3/common/util/Util;->ESCAPED_CHARACTER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 3086
    .local v4, "matcher":Ljava/util/regex/Matcher;
    const/4 v5, 0x0

    .line 3087
    .local v5, "startOfNotEscaped":I
    :goto_1
    if-lez v1, :cond_3

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3088
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    int-to-char v6, v6

    .line 3089
    .local v6, "unescapedCharacter":C
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v7

    invoke-virtual {v3, p0, v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3090
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    .line 3091
    nop

    .end local v6    # "unescapedCharacter":C
    add-int/lit8 v1, v1, -0x1

    .line 3092
    goto :goto_1

    .line 3093
    :cond_3
    if-ge v5, v0, :cond_4

    .line 3094
    invoke-virtual {v3, p0, v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 3096
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eq v6, v2, :cond_5

    .line 3097
    const/4 v6, 0x0

    return-object v6

    .line 3099
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static usToMs(J)J
    .locals 2
    .param p0, "timeUs"    # J

    .line 1708
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p0, v0

    if-eqz v0, :cond_1

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x3e8

    div-long v0, p0, v0

    goto :goto_1

    :cond_1
    :goto_0
    move-wide v0, p0

    :goto_1
    return-wide v0
.end method

.method public static writeBoolean(Landroid/os/Parcel;Z)V
    .locals 0
    .param p0, "parcel"    # Landroid/os/Parcel;
    .param p1, "value"    # Z

    .line 1025
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1026
    return-void
.end method
