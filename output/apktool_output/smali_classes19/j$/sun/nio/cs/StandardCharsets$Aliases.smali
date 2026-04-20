.class final Lj$/sun/nio/cs/StandardCharsets$Aliases;
.super Lj$/sun/util/PreHashedMap;
.source "StandardCharsets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/sun/nio/cs/StandardCharsets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Aliases"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj$/sun/util/PreHashedMap<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final MASK:I = 0x3ff

.field private static final ROWS:I = 0x400

.field private static final SHIFT:I = 0x0

.field private static final SIZE:I = 0x150


# direct methods
.method private constructor <init>()V
    .locals 4

    .line 708
    const/4 v0, 0x0

    const/16 v1, 0x3ff

    const/16 v2, 0x400

    const/16 v3, 0x150

    invoke-direct {p0, v2, v3, v0, v1}, Lj$/sun/util/PreHashedMap;-><init>(IIII)V

    .line 709
    return-void
.end method

.method synthetic constructor <init>(Lj$/sun/nio/cs/StandardCharsets-IA;)V
    .locals 0

    invoke-direct {p0}, Lj$/sun/nio/cs/StandardCharsets$Aliases;-><init>()V

    return-void
.end method


# virtual methods
.method protected init([Ljava/lang/Object;)V
    .locals 25
    .param p1, "ht"    # [Ljava/lang/Object;

    .line 712
    const-string v0, "csisolatin0"

    const-string v1, "iso-8859-15"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, p1, v2

    .line 713
    const-string v0, "csisolatin1"

    const-string v2, "iso-8859-1"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "x0208"

    const-string v4, "x-jis0208"

    filled-new-array {v3, v4, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x2

    aput-object v0, p1, v3

    .line 715
    const-string v0, "csisolatin2"

    const-string v3, "iso-8859-2"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v5, 0x3

    aput-object v0, p1, v5

    .line 716
    const-string v0, "csisolatin3"

    const-string v5, "iso-8859-3"

    filled-new-array {v0, v5}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v6, 0x4

    aput-object v0, p1, v6

    .line 717
    const-string v0, "csisolatin4"

    const-string v6, "iso-8859-4"

    filled-new-array {v0, v6}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v7, 0x5

    aput-object v0, p1, v7

    .line 718
    const-string v0, "csisolatin5"

    const-string v7, "iso-8859-9"

    filled-new-array {v0, v7}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v8, 0x6

    aput-object v0, p1, v8

    .line 719
    const-string v0, "csisolatin9"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v8, 0xa

    aput-object v0, p1, v8

    .line 720
    const-string v0, "unicodelittle"

    const-string v8, "x-utf-16le-bom"

    filled-new-array {v0, v8}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v8, 0x13

    aput-object v0, p1, v8

    .line 721
    const-string v0, "ksc5601-1987"

    const-string v8, "euc-kr"

    filled-new-array {v0, v8}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v9, 0x17

    aput-object v0, p1, v9

    .line 722
    const-string v0, "iso646-us"

    const-string v9, "us-ascii"

    filled-new-array {v0, v9}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v10, 0x18

    aput-object v0, p1, v10

    .line 723
    const-string v0, "iso_8859-7:1987"

    const-string v10, "iso-8859-7"

    filled-new-array {v0, v10}, [Ljava/lang/Object;

    move-result-object v0

    const-string v11, "jis_x0208-1983"

    filled-new-array {v11, v4, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v11, 0x19

    aput-object v0, p1, v11

    .line 725
    const-string v0, "912"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v11, 0x1a

    aput-object v0, p1, v11

    .line 726
    const-string v0, "x0212"

    const-string v11, "jis_x0212-1990"

    filled-new-array {v0, v11}, [Ljava/lang/Object;

    move-result-object v0

    const-string v12, "913"

    filled-new-array {v12, v5, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v12, 0x1b

    aput-object v0, p1, v12

    .line 728
    const-string v0, "914"

    filled-new-array {v0, v6}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v12, 0x1c

    aput-object v0, p1, v12

    .line 729
    const-string v0, "915"

    const-string v12, "iso-8859-5"

    filled-new-array {v0, v12}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v13, 0x1d

    aput-object v0, p1, v13

    .line 730
    const-string v0, "916"

    const-string v13, "iso-8859-8"

    filled-new-array {v0, v13}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v14, 0x1e

    aput-object v0, p1, v14

    .line 731
    const-string v0, "latin10"

    const-string v14, "iso-8859-16"

    filled-new-array {v0, v14}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v15, 0x23

    aput-object v0, p1, v15

    .line 732
    const-string v0, "ksc5601-1992"

    const-string v15, "x-johab"

    filled-new-array {v0, v15}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v15, 0x31

    aput-object v0, p1, v15

    .line 733
    const-string v0, "920"

    filled-new-array {v0, v7}, [Ljava/lang/Object;

    move-result-object v0

    const-string v15, "ibm-1252"

    move-object/from16 v16, v14

    const-string v14, "windows-1252"

    filled-new-array {v15, v14, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v14, 0x37

    aput-object v0, p1, v14

    .line 735
    const-string v0, "923"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v14, 0x3a

    aput-object v0, p1, v14

    .line 736
    const-string v0, "8859_1"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v14, "csisolatincyrillic"

    filled-new-array {v14, v12, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v14, 0x56

    aput-object v0, p1, v14

    .line 738
    const-string v0, "8859_2"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v14, 0x57

    aput-object v0, p1, v14

    .line 739
    const-string v0, "8859_3"

    filled-new-array {v0, v5}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v14, 0x58

    aput-object v0, p1, v14

    .line 740
    const-string v0, "8859_4"

    filled-new-array {v0, v6}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v14, 0x59

    aput-object v0, p1, v14

    .line 741
    const-string v0, "8859_5"

    filled-new-array {v0, v12}, [Ljava/lang/Object;

    move-result-object v0

    const-string v14, "813"

    filled-new-array {v14, v10, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v14, 0x5a

    aput-object v0, p1, v14

    .line 743
    const-string v0, "8859_6"

    const-string v14, "iso-8859-6"

    filled-new-array {v0, v14}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v15, 0x5b

    aput-object v0, p1, v15

    .line 744
    const-string v0, "8859_7"

    filled-new-array {v0, v10}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v15, 0x5c

    aput-object v0, p1, v15

    .line 745
    const-string v0, "8859_8"

    filled-new-array {v0, v13}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v15, 0x5d

    aput-object v0, p1, v15

    .line 746
    const-string v0, "8859_9"

    filled-new-array {v0, v7}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v15, 0x5e

    aput-object v0, p1, v15

    .line 747
    const-string v0, "iso_8859-1:1987"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v15, 0x5f

    aput-object v0, p1, v15

    .line 748
    const-string v0, "819"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v15, 0x60

    aput-object v0, p1, v15

    .line 749
    const-string v0, "5601"

    filled-new-array {v0, v8}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v15, 0x62

    aput-object v0, p1, v15

    .line 750
    const-string v0, "unicode-1-1-utf-8"

    const-string v15, "utf-8"

    filled-new-array {v0, v15}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v15, 0x6a

    aput-object v0, p1, v15

    .line 751
    const-string v0, "x-utf-16le"

    const-string v15, "utf-16le"

    filled-new-array {v0, v15}, [Ljava/lang/Object;

    move-result-object v0

    const-string v15, "ecma-114"

    filled-new-array {v15, v14, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v15, 0x79

    aput-object v0, p1, v15

    .line 753
    const-string v0, "ecma-118"

    filled-new-array {v0, v10}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v15, 0x7d

    aput-object v0, p1, v15

    .line 754
    const-string v0, "ks_c_5601-1987"

    filled-new-array {v0, v8}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v15, 0x7f

    aput-object v0, p1, v15

    .line 755
    const-string v0, "eucjis"

    const-string v15, "euc-jp"

    filled-new-array {v0, v15}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v17, 0x81

    aput-object v0, p1, v17

    .line 756
    const-string v0, "koi8_r"

    move-object/from16 v17, v8

    const-string v8, "koi8-r"

    filled-new-array {v0, v8}, [Ljava/lang/Object;

    move-result-object v0

    const-string v8, "asmo-708"

    filled-new-array {v8, v14, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v8, 0x86

    aput-object v0, p1, v8

    .line 758
    const-string v0, "euc-jp-linux"

    const-string v8, "x-euc-jp-linux"

    filled-new-array {v0, v8}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v8, 0x87

    aput-object v0, p1, v8

    .line 759
    const-string v0, "koi8_u"

    const-string v8, "koi8-u"

    filled-new-array {v0, v8}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v8, 0x89

    aput-object v0, p1, v8

    .line 760
    const-string v0, "cp912"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v8, 0x8d

    aput-object v0, p1, v8

    .line 761
    const-string v0, "cp913"

    filled-new-array {v0, v5}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v8, 0x8e

    aput-object v0, p1, v8

    .line 762
    const-string v0, "cp914"

    filled-new-array {v0, v6}, [Ljava/lang/Object;

    move-result-object v0

    const-string v8, "euc_tw"

    move-object/from16 v18, v6

    const-string v6, "x-euc-tw"

    filled-new-array {v8, v6, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v6, 0x8f

    aput-object v0, p1, v6

    .line 764
    const-string v0, "cp915"

    filled-new-array {v0, v12}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v6, 0x90

    aput-object v0, p1, v6

    .line 765
    const-string v0, "cp916"

    filled-new-array {v0, v13}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v6, 0x91

    aput-object v0, p1, v6

    .line 766
    const-string v0, "jis0201"

    const-string v6, "jis_x0201"

    filled-new-array {v0, v6}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v6, 0x97

    aput-object v0, p1, v6

    .line 767
    const-string v0, "jis0208"

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v6, 0x9e

    aput-object v0, p1, v6

    .line 768
    const-string v0, "x-eucjp"

    filled-new-array {v0, v15}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v6, 0xa4

    aput-object v0, p1, v6

    .line 769
    const-string v0, "cp920"

    filled-new-array {v0, v7}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v6, 0xaa

    aput-object v0, p1, v6

    .line 770
    const-string v0, "arabic"

    filled-new-array {v0, v14}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v6, 0xac

    aput-object v0, p1, v6

    .line 771
    const-string v0, "cp923"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v6, 0xad

    aput-object v0, p1, v6

    .line 772
    const-string v0, "utf_32le_bom"

    const-string v6, "x-utf-32le-bom"

    filled-new-array {v0, v6}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v6, 0xb1

    aput-object v0, p1, v6

    .line 773
    const-string v0, "jis0212"

    filled-new-array {v0, v11}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v6, 0xb7

    aput-object v0, p1, v6

    .line 774
    const-string v0, "iso_8859-8:1988"

    filled-new-array {v0, v13}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v6, 0xb9

    aput-object v0, p1, v6

    .line 775
    const-string v0, "utf_16be"

    const-string v6, "utf-16be"

    filled-new-array {v0, v6}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v6, 0xc0

    aput-object v0, p1, v6

    .line 776
    const-string v0, "ansi-1251"

    const-string v6, "windows-1251"

    filled-new-array {v0, v6}, [Ljava/lang/Object;

    move-result-object v0

    const-string v6, "cspc8codepage437"

    const-string v8, "ibm437"

    filled-new-array {v6, v8, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v6, 0xc7

    aput-object v0, p1, v6

    .line 778
    const-string v0, "cp813"

    filled-new-array {v0, v10}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v6, 0xcd

    aput-object v0, p1, v6

    .line 779
    const-string v0, "cp936"

    const-string v6, "gbk"

    filled-new-array {v0, v6}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v6, 0xcf

    aput-object v0, p1, v6

    .line 780
    const-string v0, "cp819"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v6, "850"

    move-object/from16 v19, v11

    const-string v11, "ibm850"

    filled-new-array {v6, v11, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v6, 0xd3

    aput-object v0, p1, v6

    .line 782
    const-string v0, "852"

    const-string v6, "ibm852"

    filled-new-array {v0, v6}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v6, 0xd5

    aput-object v0, p1, v6

    .line 783
    const-string v0, "855"

    const-string v6, "ibm855"

    filled-new-array {v0, v6}, [Ljava/lang/Object;

    move-result-object v0

    const-string v6, "pck"

    move-object/from16 v20, v8

    const-string v8, "x-pck"

    filled-new-array {v6, v8, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v6, 0xd8

    aput-object v0, p1, v6

    .line 785
    const-string v0, "cswindows31j"

    const-string v6, "windows-31j"

    filled-new-array {v0, v6}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v6, 0xd9

    aput-object v0, p1, v6

    .line 786
    const-string v0, "iso-ir-6"

    filled-new-array {v0, v9}, [Ljava/lang/Object;

    move-result-object v0

    const-string v6, "857"

    const-string v8, "ibm857"

    filled-new-array {v6, v8, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v6, 0xda

    aput-object v0, p1, v6

    .line 788
    const-string v0, "737"

    const-string v6, "x-ibm737"

    filled-new-array {v0, v6}, [Ljava/lang/Object;

    move-result-object v0

    const-string v6, "858"

    const-string v8, "ibm00858"

    filled-new-array {v6, v8, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v6, 0xdb

    aput-object v0, p1, v6

    .line 790
    const-string v0, "euc-tw"

    const-string v6, "x-euc-tw"

    filled-new-array {v0, v6}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v6, 0xdd

    aput-object v0, p1, v6

    .line 791
    const-string v0, "csascii"

    filled-new-array {v0, v9}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v6, 0xe1

    aput-object v0, p1, v6

    .line 792
    const-string v0, "ibm1252"

    const-string v6, "windows-1252"

    filled-new-array {v0, v6}, [Ljava/lang/Object;

    move-result-object v0

    const-string v6, "ms932"

    move-object/from16 v21, v15

    const-string v15, "windows-31j"

    filled-new-array {v6, v15, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v6, 0xf2

    aput-object v0, p1, v6

    .line 794
    const-string v0, "862"

    const-string v6, "ibm862"

    filled-new-array {v0, v6}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v15, 0xf4

    aput-object v0, p1, v15

    .line 795
    const-string v0, "866"

    const-string v15, "ibm866"

    filled-new-array {v0, v15}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v15, 0xf8

    aput-object v0, p1, v15

    .line 796
    const-string v0, "x-utf-32be"

    const-string v15, "utf-32be"

    filled-new-array {v0, v15}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v15, 0xfd

    aput-object v0, p1, v15

    .line 797
    const-string v0, "iso_8859-2:1987"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v15, 0xfe

    aput-object v0, p1, v15

    .line 798
    const-string v0, "unicodebig"

    const-string v15, "utf-16"

    filled-new-array {v0, v15}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v15, 0x103

    aput-object v0, p1, v15

    .line 799
    const-string v0, "iso8859_15_fdis"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v15, 0x10d

    aput-object v0, p1, v15

    .line 800
    const-string v0, "874"

    const-string v15, "x-ibm874"

    filled-new-array {v0, v15}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v15, 0x115

    aput-object v0, p1, v15

    .line 801
    const-string v0, "unicodelittleunmarked"

    const-string v15, "utf-16le"

    filled-new-array {v0, v15}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v15, 0x118

    aput-object v0, p1, v15

    .line 802
    const-string v0, "ibm-1089"

    filled-new-array {v0, v14}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v15, 0x119

    aput-object v0, p1, v15

    .line 803
    const-string v0, "iso8859_1"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v15, 0x11b

    aput-object v0, p1, v15

    .line 804
    const-string v0, "iso8859_2"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v15, 0x11c

    aput-object v0, p1, v15

    .line 805
    const-string v0, "csiso885915"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v15, "iso8859_3"

    filled-new-array {v15, v5, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v15, 0x11d

    aput-object v0, p1, v15

    .line 807
    const-string v0, "iso8859_4"

    move-object/from16 v15, v18

    filled-new-array {v0, v15}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v6

    const-string v6, "csiso885916"

    move-object/from16 v22, v8

    move-object/from16 v8, v16

    filled-new-array {v6, v8, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v6, 0x11e

    aput-object v0, p1, v6

    .line 809
    const-string v0, "iso8859_5"

    filled-new-array {v0, v12}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v6, 0x11f

    aput-object v0, p1, v6

    .line 810
    const-string v0, "iso8859_6"

    filled-new-array {v0, v14}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v6, 0x120

    aput-object v0, p1, v6

    .line 811
    const-string v0, "iso8859_7"

    filled-new-array {v0, v10}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v6, 0x121

    aput-object v0, p1, v6

    .line 812
    const-string v0, "iso8859_8"

    filled-new-array {v0, v13}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v6, 0x122

    aput-object v0, p1, v6

    .line 813
    const-string v0, "iso8859_9"

    filled-new-array {v0, v7}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v6, 0x123

    aput-object v0, p1, v6

    .line 814
    const-string v0, "ibm912"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v6, 0x126

    aput-object v0, p1, v6

    .line 815
    const-string v0, "ibm913"

    filled-new-array {v0, v5}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v6, 0x127

    aput-object v0, p1, v6

    .line 816
    const-string v0, "ibm914"

    filled-new-array {v0, v15}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v6, 0x128

    aput-object v0, p1, v6

    .line 817
    const-string v0, "ibm915"

    filled-new-array {v0, v12}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v6, 0x129

    aput-object v0, p1, v6

    .line 818
    const-string v0, "ibm916"

    filled-new-array {v0, v13}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v6, 0x12a

    aput-object v0, p1, v6

    .line 819
    const-string v0, "iso_8859-13"

    const-string v6, "iso-8859-13"

    filled-new-array {v0, v6}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v6, 0x131

    aput-object v0, p1, v6

    .line 820
    const-string v0, "iso_8859-15"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v6, 0x133

    aput-object v0, p1, v6

    .line 821
    const-string v0, "iso_8859-16"

    filled-new-array {v0, v8}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v6, 0x134

    aput-object v0, p1, v6

    .line 822
    const-string v0, "646"

    filled-new-array {v0, v9}, [Ljava/lang/Object;

    move-result-object v0

    const-string v6, "greek8"

    filled-new-array {v6, v10, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v6, 0x138

    aput-object v0, p1, v6

    .line 824
    const-string v0, "ms_kanji"

    const-string v6, "shift_jis"

    filled-new-array {v0, v6}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v16, 0x13e

    aput-object v0, p1, v16

    .line 825
    const-string v0, "ibm-912"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v16, 0x141

    aput-object v0, p1, v16

    .line 826
    const-string v0, "csiso87jisx0208"

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v4

    const-string v4, "ibm-913"

    filled-new-array {v4, v5, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x142

    aput-object v0, p1, v4

    .line 828
    const-string v0, "ibm-914"

    filled-new-array {v0, v15}, [Ljava/lang/Object;

    move-result-object v0

    const-string v4, "ibm920"

    filled-new-array {v4, v7, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x143

    aput-object v0, p1, v4

    .line 830
    const-string v0, "ibm-915"

    filled-new-array {v0, v12}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x144

    aput-object v0, p1, v4

    .line 831
    const-string v0, "l1"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v4, "ibm-916"

    filled-new-array {v4, v13, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x145

    aput-object v0, p1, v4

    .line 833
    const-string v0, "l2"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v4, "ibm923"

    filled-new-array {v4, v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v4, "cp850"

    filled-new-array {v4, v11, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x146

    aput-object v0, p1, v4

    .line 836
    const-string v0, "cyrillic"

    filled-new-array {v0, v12}, [Ljava/lang/Object;

    move-result-object v0

    const-string v4, "l3"

    filled-new-array {v4, v5, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x147

    aput-object v0, p1, v4

    .line 838
    const-string v0, "l4"

    filled-new-array {v0, v15}, [Ljava/lang/Object;

    move-result-object v0

    const-string v4, "cp852"

    move-object/from16 v23, v12

    const-string v12, "ibm852"

    filled-new-array {v4, v12, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x148

    aput-object v0, p1, v4

    .line 840
    const-string v0, "l5"

    filled-new-array {v0, v7}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x149

    aput-object v0, p1, v4

    .line 841
    const-string v0, "cp855"

    const-string v4, "ibm855"

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x14b

    aput-object v0, p1, v4

    .line 842
    const-string v0, "l9"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v4, "cp857"

    const-string v12, "ibm857"

    filled-new-array {v4, v12, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x14d

    aput-object v0, p1, v4

    .line 844
    const-string v0, "cp737"

    const-string v4, "x-ibm737"

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const-string v4, "cp858"

    move-object/from16 v12, v22

    filled-new-array {v4, v12, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x14e

    aput-object v0, p1, v4

    .line 846
    const-string v0, "iso_8859_1"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x150

    aput-object v0, p1, v4

    .line 847
    const-string v0, "koi8"

    const-string v4, "koi8-r"

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x153

    aput-object v0, p1, v4

    .line 848
    const-string v0, "775"

    const-string v4, "ibm775"

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x155

    aput-object v0, p1, v4

    .line 849
    const-string v0, "iso_8859-9:1989"

    filled-new-array {v0, v7}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x159

    aput-object v0, p1, v4

    .line 850
    const-string v0, "ibm-920"

    filled-new-array {v0, v7}, [Ljava/lang/Object;

    move-result-object v0

    const-string v4, "euccn"

    move-object/from16 v22, v13

    const-string v13, "gb2312"

    filled-new-array {v4, v13, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v4, "eucjp-open"

    move-object/from16 v24, v12

    const-string v12, "x-eucjp-open"

    filled-new-array {v4, v12, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x15e

    aput-object v0, p1, v4

    .line 853
    const-string v0, "1089"

    filled-new-array {v0, v14}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x160

    aput-object v0, p1, v4

    .line 854
    const-string v0, "ibm-923"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x161

    aput-object v0, p1, v4

    .line 855
    const-string v0, "ibm813"

    filled-new-array {v0, v10}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x166

    aput-object v0, p1, v4

    .line 856
    const-string v0, "cp862"

    move-object/from16 v4, v18

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v12, 0x167

    aput-object v0, p1, v12

    .line 857
    const-string v0, "cp866"

    const-string v12, "ibm866"

    filled-new-array {v0, v12}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v12, 0x16b

    aput-object v0, p1, v12

    .line 858
    const-string v0, "ibm819"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v12, 0x16c

    aput-object v0, p1, v12

    .line 859
    const-string v0, "ansi_x3.4-1968"

    filled-new-array {v0, v9}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v12, 0x17a

    aput-object v0, p1, v12

    .line 860
    const-string v0, "ibm-813"

    filled-new-array {v0, v10}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v12, 0x181

    aput-object v0, p1, v12

    .line 861
    const-string v0, "ibm-819"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v12, 0x187

    aput-object v0, p1, v12

    .line 862
    const-string v0, "cp874"

    const-string v12, "x-ibm874"

    filled-new-array {v0, v12}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v12, 0x188

    aput-object v0, p1, v12

    .line 863
    const-string v0, "extended_unix_code_packed_format_for_japanese"

    move-object/from16 v12, v21

    filled-new-array {v0, v12}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v18, 0x189

    aput-object v0, p1, v18

    .line 864
    const-string v0, "iso-ir-100"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v18, 0x195

    aput-object v0, p1, v18

    .line 865
    const-string v0, "iso-ir-101"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v18, 0x196

    aput-object v0, p1, v18

    .line 866
    const-string v0, "437"

    move-object/from16 v12, v20

    filled-new-array {v0, v12}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v18, 0x198

    aput-object v0, p1, v18

    .line 867
    const-string v0, "iso-ir-226"

    filled-new-array {v0, v8}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v18, 0x19a

    aput-object v0, p1, v18

    .line 868
    const-string v0, "iso_8859-3:1988"

    filled-new-array {v0, v5}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v8

    const-string v8, "iso-ir-109"

    filled-new-array {v8, v5, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v8, 0x19e

    aput-object v0, p1, v8

    .line 870
    const-string v0, "iso-8859-11"

    const-string v8, "x-iso-8859-11"

    filled-new-array {v0, v8}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v8, 0x1a1

    aput-object v0, p1, v8

    .line 871
    const/16 v0, 0x1a5

    filled-new-array {v1, v1}, [Ljava/lang/Object;

    move-result-object v8

    aput-object v8, p1, v0

    .line 872
    const-string v0, "csiso159jisx02121990"

    move-object/from16 v8, v19

    filled-new-array {v0, v8}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v19, 0x1a6

    aput-object v0, p1, v19

    .line 873
    const-string v0, "latin0"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v19, 0x1ac

    aput-object v0, p1, v19

    .line 874
    const-string v0, "latin1"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v19, 0x1ad

    aput-object v0, p1, v19

    .line 875
    const-string v0, "latin2"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v19, 0x1ae

    aput-object v0, p1, v19

    .line 876
    const-string v0, "latin3"

    filled-new-array {v0, v5}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v19, 0x1af

    aput-object v0, p1, v19

    .line 877
    const-string v0, "latin4"

    filled-new-array {v0, v15}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v19, 0x1b0

    aput-object v0, p1, v19

    .line 878
    const-string v0, "latin5"

    filled-new-array {v0, v7}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v19, 0x1b1

    aput-object v0, p1, v19

    .line 879
    const-string v0, "iso-ir-110"

    filled-new-array {v0, v15}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v19, 0x1b4

    aput-object v0, p1, v19

    .line 880
    const-string v0, "latin9"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v19, 0x1b5

    aput-object v0, p1, v19

    .line 881
    const-string v0, "ansi_x3.4-1986"

    filled-new-array {v0, v9}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v19, 0x1b6

    aput-object v0, p1, v19

    .line 882
    const-string v0, "x-euc-cn"

    filled-new-array {v0, v13}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v19, 0x1ba

    aput-object v0, p1, v19

    .line 883
    const-string v0, "utf-32be-bom"

    move-object/from16 v19, v5

    const-string v5, "x-utf-32be-bom"

    filled-new-array {v0, v5}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v5, 0x1bb

    aput-object v0, p1, v5

    .line 884
    const-string v0, "sjis"

    filled-new-array {v0, v6}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v5, 0x1c1

    aput-object v0, p1, v5

    .line 885
    const-string v0, "euc_jp_linux"

    const-string v5, "x-euc-jp-linux"

    filled-new-array {v0, v5}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v5, 0x1c7

    aput-object v0, p1, v5

    .line 886
    const-string v0, "cp775"

    const-string v5, "ibm775"

    filled-new-array {v0, v5}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v5, 0x1c8

    aput-object v0, p1, v5

    .line 887
    const-string v0, "ibm1089"

    filled-new-array {v0, v14}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v5, 0x1d4

    aput-object v0, p1, v5

    .line 888
    const/16 v0, 0x1d7

    filled-new-array {v6, v6}, [Ljava/lang/Object;

    move-result-object v5

    aput-object v5, p1, v0

    .line 889
    const-string v0, "iso-ir-126"

    filled-new-array {v0, v10}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v5, 0x1d9

    aput-object v0, p1, v5

    .line 890
    const-string v0, "iso-ir-127"

    filled-new-array {v0, v14}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v5, 0x1da

    aput-object v0, p1, v5

    .line 891
    const/16 v0, 0x1df

    filled-new-array {v11, v11}, [Ljava/lang/Object;

    move-result-object v5

    aput-object v5, p1, v0

    .line 892
    const-string v0, "ibm852"

    const-string v5, "ibm852"

    filled-new-array {v0, v5}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v5, 0x1e1

    aput-object v0, p1, v5

    .line 893
    const-string v0, "ibm855"

    const-string v5, "ibm855"

    filled-new-array {v0, v5}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v5, 0x1e4

    aput-object v0, p1, v5

    .line 894
    const-string v0, "ibm857"

    const-string v5, "ibm857"

    filled-new-array {v0, v5}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v5, 0x1e6

    aput-object v0, p1, v5

    .line 895
    const-string v0, "ibm737"

    const-string v5, "x-ibm737"

    filled-new-array {v0, v5}, [Ljava/lang/Object;

    move-result-object v0

    const-string v5, "ibm858"

    move-object/from16 v20, v14

    move-object/from16 v14, v24

    filled-new-array {v5, v14, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v5, 0x1e7

    aput-object v0, p1, v5

    .line 897
    const-string v0, "utf_16le"

    const-string v5, "utf-16le"

    filled-new-array {v0, v5}, [Ljava/lang/Object;

    move-result-object v0

    const-string v5, "x-sjis"

    filled-new-array {v5, v6, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v5, 0x1f6

    aput-object v0, p1, v5

    .line 899
    const-string v0, "ibm-850"

    filled-new-array {v0, v11}, [Ljava/lang/Object;

    move-result-object v0

    const-string v5, "iso-ir-138"

    move-object/from16 v24, v11

    move-object/from16 v11, v22

    filled-new-array {v5, v11, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v5, 0x1fa

    aput-object v0, p1, v5

    .line 901
    const-string v0, "ibm-852"

    const-string v5, "ibm852"

    filled-new-array {v0, v5}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v5, 0x1fc

    aput-object v0, p1, v5

    .line 902
    const-string v0, "ibm-855"

    const-string v5, "ibm855"

    filled-new-array {v0, v5}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v5, 0x1ff

    aput-object v0, p1, v5

    .line 903
    const/16 v0, 0x200

    filled-new-array {v4, v4}, [Ljava/lang/Object;

    move-result-object v5

    aput-object v5, p1, v0

    .line 904
    const-string v0, "ibm-857"

    const-string v5, "ibm857"

    filled-new-array {v0, v5}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v5, 0x201

    aput-object v0, p1, v5

    .line 905
    const-string v0, "ibm-737"

    const-string v5, "x-ibm737"

    filled-new-array {v0, v5}, [Ljava/lang/Object;

    move-result-object v0

    const-string v5, "ibm-858"

    filled-new-array {v5, v14, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v5, 0x202

    aput-object v0, p1, v5

    .line 907
    const-string v0, "ibm866"

    const-string v5, "ibm866"

    filled-new-array {v0, v5}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v5, 0x204

    aput-object v0, p1, v5

    .line 908
    const-string v0, "unicodebigunmarked"

    const-string v5, "utf-16be"

    filled-new-array {v0, v5}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v5, 0x208

    aput-object v0, p1, v5

    .line 909
    const-string v0, "cp437"

    filled-new-array {v0, v12}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v5, 0x20b

    aput-object v0, p1, v5

    .line 910
    const-string v0, "utf16"

    const-string v5, "utf-16"

    filled-new-array {v0, v5}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v5, 0x20c

    aput-object v0, p1, v5

    .line 911
    const-string v0, "windows-932"

    const-string v5, "windows-31j"

    filled-new-array {v0, v5}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v5, 0x20e

    aput-object v0, p1, v5

    .line 912
    const-string v0, "windows-936"

    const-string v5, "gbk"

    filled-new-array {v0, v5}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v5, 0x212

    aput-object v0, p1, v5

    .line 913
    const-string v0, "iso-ir-144"

    move-object/from16 v5, v23

    filled-new-array {v0, v5}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v22, 0x215

    aput-object v0, p1, v22

    .line 914
    const-string v0, "iso-ir-148"

    filled-new-array {v0, v7}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v22, 0x219

    aput-object v0, p1, v22

    .line 915
    const-string v0, "ibm-862"

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v22, 0x21b

    aput-object v0, p1, v22

    .line 916
    const-string v0, "ibm-866"

    move-object/from16 v22, v6

    const-string v6, "ibm866"

    filled-new-array {v0, v6}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v6, 0x21f

    aput-object v0, p1, v6

    .line 917
    const-string v0, "ibm874"

    const-string v6, "x-ibm874"

    filled-new-array {v0, v6}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v6, 0x221

    aput-object v0, p1, v6

    .line 918
    const-string v0, "ksc_5601"

    move-object/from16 v6, v17

    filled-new-array {v0, v6}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v17, 0x226

    aput-object v0, p1, v17

    .line 919
    const-string v0, "big5hkscs"

    move-object/from16 v17, v7

    const-string v7, "big5-hkscs"

    filled-new-array {v0, v7}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v7, 0x22b

    aput-object v0, p1, v7

    .line 920
    const-string v0, "x-utf-32le"

    const-string v7, "utf-32le"

    filled-new-array {v0, v7}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v7, 0x233

    aput-object v0, p1, v7

    .line 921
    const-string v0, "iso-ir-159"

    filled-new-array {v0, v8}, [Ljava/lang/Object;

    move-result-object v0

    const-string v7, "eucjp"

    move-object/from16 v23, v8

    move-object/from16 v8, v21

    filled-new-array {v7, v8, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v7, 0x239

    aput-object v0, p1, v7

    .line 923
    const-string v0, "ibm-874"

    const-string v7, "x-ibm874"

    filled-new-array {v0, v7}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v7, 0x23c

    aput-object v0, p1, v7

    .line 924
    const-string v0, "iso_8859-4:1988"

    filled-new-array {v0, v15}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v7, 0x23d

    aput-object v0, p1, v7

    .line 925
    const-string v0, "gb18030-2000"

    const-string v7, "gb18030"

    filled-new-array {v0, v7}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v7, 0x240

    aput-object v0, p1, v7

    .line 926
    const-string v0, "default"

    filled-new-array {v0, v9}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v7, 0x241

    aput-object v0, p1, v7

    .line 927
    const-string v0, "utf32"

    const-string v7, "utf-32"

    filled-new-array {v0, v7}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v7, 0x246

    aput-object v0, p1, v7

    .line 928
    const-string v0, "pc-multilingual-850+euro"

    filled-new-array {v0, v14}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v7, 0x247

    aput-object v0, p1, v7

    .line 929
    const-string v0, "elot_928"

    filled-new-array {v0, v10}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v7, 0x24c

    aput-object v0, p1, v7

    .line 930
    const-string v0, "csisolatinhebrew"

    filled-new-array {v0, v11}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v7, 0x24e

    aput-object v0, p1, v7

    .line 931
    const-string v0, "cshalfwidthkatakana"

    const-string v7, "jis_x0201"

    filled-new-array {v0, v7}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v7, 0x24f

    aput-object v0, p1, v7

    .line 932
    const-string v0, "csisolatingreek"

    filled-new-array {v0, v10}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v7, 0x251

    aput-object v0, p1, v7

    .line 933
    const-string v0, "csibm857"

    const-string v7, "ibm857"

    filled-new-array {v0, v7}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v7, 0x256

    aput-object v0, p1, v7

    .line 934
    const-string v0, "euckr"

    filled-new-array {v0, v6}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v7, 0x25a

    aput-object v0, p1, v7

    .line 935
    const-string v0, "ibm775"

    const-string v7, "ibm775"

    filled-new-array {v0, v7}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v7, 0x261

    aput-object v0, p1, v7

    .line 936
    const-string v0, "cp1250"

    const-string v7, "windows-1250"

    filled-new-array {v0, v7}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v7, 0x269

    aput-object v0, p1, v7

    .line 937
    const-string v0, "cp1251"

    const-string v7, "windows-1251"

    filled-new-array {v0, v7}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v7, 0x26a

    aput-object v0, p1, v7

    .line 938
    const-string v0, "cp1252"

    const-string v7, "windows-1252"

    filled-new-array {v0, v7}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v7, 0x26b

    aput-object v0, p1, v7

    .line 939
    const-string v0, "cp1253"

    const-string v7, "windows-1253"

    filled-new-array {v0, v7}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v7, 0x26c

    aput-object v0, p1, v7

    .line 940
    const-string v0, "cp1254"

    const-string v7, "windows-1254"

    filled-new-array {v0, v7}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v7, 0x26d

    aput-object v0, p1, v7

    .line 941
    const-string v0, "cp1257"

    const-string v7, "windows-1257"

    filled-new-array {v0, v7}, [Ljava/lang/Object;

    move-result-object v0

    const-string v7, "csibm862"

    filled-new-array {v7, v4, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v7, 0x270

    aput-object v0, p1, v7

    .line 943
    const-string v0, "cesu8"

    const-string v7, "cesu-8"

    filled-new-array {v0, v7}, [Ljava/lang/Object;

    move-result-object v0

    const-string v7, "csibm866"

    move-object/from16 v21, v4

    const-string v4, "ibm866"

    filled-new-array {v7, v4, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x274

    aput-object v0, p1, v4

    .line 945
    const-string v0, "iso8859_11"

    const-string v4, "x-iso-8859-11"

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x276

    aput-object v0, p1, v4

    .line 946
    const-string v0, "euc_cn"

    filled-new-array {v0, v13}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x277

    aput-object v0, p1, v4

    .line 947
    const-string v0, "iso8859_13"

    const-string v4, "iso-8859-13"

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x278

    aput-object v0, p1, v4

    .line 948
    const-string v0, "utf_32be"

    const-string v4, "utf-32be"

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const-string v4, "iso8859_15"

    filled-new-array {v4, v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x27a

    aput-object v0, p1, v4

    .line 950
    const-string v0, "utf_32be_bom"

    const-string v4, "x-utf-32be-bom"

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const-string v4, "iso8859_16"

    move-object/from16 v7, v18

    filled-new-array {v4, v7, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x27b

    aput-object v0, p1, v4

    .line 952
    const-string v0, "ibm-775"

    const-string v4, "ibm775"

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x27c

    aput-object v0, p1, v4

    .line 953
    const-string v0, "cp00858"

    filled-new-array {v0, v14}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x28e

    aput-object v0, p1, v4

    .line 954
    const-string v0, "x-euc-jp"

    filled-new-array {v0, v8}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x295

    aput-object v0, p1, v4

    .line 955
    const-string v0, "8859_13"

    const-string v4, "iso-8859-13"

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x29d

    aput-object v0, p1, v4

    .line 956
    const-string v0, "us"

    filled-new-array {v0, v9}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x29e

    aput-object v0, p1, v4

    .line 957
    const-string v0, "8859_15"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x29f

    aput-object v0, p1, v4

    .line 958
    const/16 v0, 0x2a4

    filled-new-array {v12, v12}, [Ljava/lang/Object;

    move-result-object v4

    aput-object v4, p1, v0

    .line 959
    const-string v0, "cp367"

    filled-new-array {v0, v9}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x2a7

    aput-object v0, p1, v4

    .line 960
    const-string v0, "cns11643"

    const-string v4, "x-euc-tw"

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x2ad

    aput-object v0, p1, v4

    .line 961
    const-string v0, "iso-10646-ucs-2"

    const-string v4, "utf-16be"

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x2ae

    aput-object v0, p1, v4

    .line 962
    const-string v0, "big5_hkscs"

    const-string v4, "big5-hkscs"

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x2b6

    aput-object v0, p1, v4

    .line 963
    const-string v0, "euc_jp_solaris"

    const-string v4, "x-eucjp-open"

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x2be

    aput-object v0, p1, v4

    .line 964
    const-string v0, "ibm-437"

    filled-new-array {v0, v12}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x2bf

    aput-object v0, p1, v4

    .line 965
    const-string v0, "euc-cn"

    filled-new-array {v0, v13}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x2c5

    aput-object v0, p1, v4

    .line 966
    const-string v0, "iso8859-13"

    const-string v4, "iso-8859-13"

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x2c6

    aput-object v0, p1, v4

    .line 967
    const-string v0, "iso8859-15"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x2c8

    aput-object v0, p1, v4

    .line 968
    const-string v0, "iso-ir-87"

    move-object/from16 v4, v16

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v16, 0x2db

    aput-object v0, p1, v16

    .line 969
    const-string v0, "iso_8859-5:1988"

    filled-new-array {v0, v5}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v16, 0x2dc

    aput-object v0, p1, v16

    .line 970
    const-string v0, "unicode"

    move-object/from16 v16, v4

    const-string v4, "utf-16"

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const-string v4, "ksc5601"

    filled-new-array {v4, v6, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x2dd

    aput-object v0, p1, v4

    .line 972
    const-string v0, "big5hk"

    const-string v4, "big5-hkscs"

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x2f8

    aput-object v0, p1, v4

    .line 973
    const-string v0, "greek"

    filled-new-array {v0, v10}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x300

    aput-object v0, p1, v4

    .line 974
    const-string v0, "ms1361"

    const-string v4, "x-johab"

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x303

    aput-object v0, p1, v4

    .line 975
    const-string v0, "ascii7"

    filled-new-array {v0, v9}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x306

    aput-object v0, p1, v4

    .line 976
    const-string v0, "iso8859-1"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x30d

    aput-object v0, p1, v4

    .line 977
    const-string v0, "iso8859-2"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x30e

    aput-object v0, p1, v4

    .line 978
    const-string v0, "cskoi8r"

    const-string v4, "koi8-r"

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const-string v4, "iso8859-3"

    move-object/from16 v18, v1

    move-object/from16 v1, v19

    filled-new-array {v4, v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x30f

    aput-object v0, p1, v4

    .line 980
    const-string v0, "iso8859-4"

    filled-new-array {v0, v15}, [Ljava/lang/Object;

    move-result-object v0

    const-string v4, "jis_x0201"

    move-object/from16 v19, v8

    const-string v8, "jis_x0201"

    filled-new-array {v4, v8, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x310

    aput-object v0, p1, v4

    .line 982
    const-string v0, "iso8859-5"

    filled-new-array {v0, v5}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x311

    aput-object v0, p1, v4

    .line 983
    const-string v0, "iso8859-6"

    move-object/from16 v4, v20

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v8, 0x312

    aput-object v0, p1, v8

    .line 984
    const-string v0, "iso8859-7"

    filled-new-array {v0, v10}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v8, 0x313

    aput-object v0, p1, v8

    .line 985
    const-string v0, "iso8859-8"

    filled-new-array {v0, v11}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v8, 0x314

    aput-object v0, p1, v8

    .line 986
    const-string v0, "iso8859-9"

    move-object/from16 v8, v17

    filled-new-array {v0, v8}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v17, 0x315

    aput-object v0, p1, v17

    .line 987
    const-string v0, "johab"

    move-object/from16 v20, v12

    const-string v12, "x-johab"

    filled-new-array {v0, v12}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v12, 0x324

    aput-object v0, p1, v12

    .line 988
    const-string v0, "ccsid00858"

    filled-new-array {v0, v14}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v12, 0x32d

    aput-object v0, p1, v12

    .line 989
    const-string v0, "cspc862latinhebrew"

    move-object/from16 v12, v21

    filled-new-array {v0, v12}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v12, 0x332

    aput-object v0, p1, v12

    .line 990
    const-string v0, "tis620.2533"

    const-string v12, "tis-620"

    filled-new-array {v0, v12}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v12, 0x33b

    aput-object v0, p1, v12

    .line 991
    const-string v0, "ibm367"

    filled-new-array {v0, v9}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v12, 0x340

    aput-object v0, p1, v12

    .line 992
    const-string v0, "iso_8859-1"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x342

    aput-object v0, p1, v2

    .line 993
    const-string v0, "x-utf-16be"

    const-string v2, "utf-16be"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "iso_8859-2"

    filled-new-array {v2, v3, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x343

    aput-object v0, p1, v2

    .line 995
    const-string v0, "sun_eu_greek"

    filled-new-array {v0, v10}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "iso_8859-3"

    filled-new-array {v2, v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x344

    aput-object v0, p1, v1

    .line 997
    const-string v0, "iso_8859-4"

    filled-new-array {v0, v15}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "iso_8859-16:2001"

    filled-new-array {v1, v7, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x345

    aput-object v0, p1, v1

    .line 999
    const-string v0, "iso_8859-5"

    filled-new-array {v0, v5}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x346

    aput-object v0, p1, v1

    .line 1000
    const-string v0, "iso_8859-6"

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x347

    aput-object v0, p1, v1

    .line 1001
    const-string v0, "iso_8859-7"

    filled-new-array {v0, v10}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "cspcp852"

    const-string v2, "ibm852"

    filled-new-array {v1, v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "gb2312-80"

    filled-new-array {v1, v13, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x348

    aput-object v0, p1, v1

    .line 1004
    const-string v0, "shift-jis"

    move-object/from16 v1, v22

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "ksc5601_1987"

    filled-new-array {v2, v6, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "iso_8859-8"

    filled-new-array {v2, v11, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x349

    aput-object v0, p1, v2

    .line 1007
    const-string v0, "iso_8859-9"

    filled-new-array {v0, v8}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x34a

    aput-object v0, p1, v2

    .line 1008
    const-string v0, "cspcp855"

    const-string v2, "ibm855"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x34b

    aput-object v0, p1, v2

    .line 1009
    const-string v0, "cp1089"

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x34d

    aput-object v0, p1, v2

    .line 1010
    const-string v0, "windows-437"

    move-object/from16 v12, v20

    filled-new-array {v0, v12}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x34e

    aput-object v0, p1, v2

    .line 1011
    const-string v0, "ascii"

    filled-new-array {v0, v9}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x351

    aput-object v0, p1, v2

    .line 1012
    const-string v0, "euc_jp"

    move-object/from16 v8, v19

    filled-new-array {v0, v8}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x352

    aput-object v0, p1, v2

    .line 1013
    const-string v0, "cscesu-8"

    const-string v2, "cesu-8"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x35f

    aput-object v0, p1, v2

    .line 1014
    const-string v0, "ksc5601_1992"

    const-string v2, "x-johab"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x363

    aput-object v0, p1, v2

    .line 1015
    const-string v0, "gb2312-1980"

    filled-new-array {v0, v13}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x370

    aput-object v0, p1, v2

    .line 1016
    const-string v0, "utf8"

    const-string v2, "utf-8"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x371

    aput-object v0, p1, v2

    .line 1017
    const-string v0, "euc_kr"

    filled-new-array {v0, v6}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x373

    aput-object v0, p1, v2

    .line 1018
    const-string v0, "euctw"

    const-string v2, "x-euc-tw"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x376

    aput-object v0, p1, v2

    .line 1019
    const-string v0, "iso_8859-6:1987"

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x37a

    aput-object v0, p1, v2

    .line 1020
    const-string v0, "csisolatinarabic"

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x37b

    aput-object v0, p1, v2

    .line 1021
    const/16 v0, 0x37d

    filled-new-array {v13, v13}, [Ljava/lang/Object;

    move-result-object v2

    aput-object v2, p1, v0

    .line 1022
    const-string v0, "hebrew"

    filled-new-array {v0, v11}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x37f

    aput-object v0, p1, v2

    .line 1023
    const-string v0, "iso_646.irv:1983"

    filled-new-array {v0, v9}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x380

    aput-object v0, p1, v2

    .line 1024
    const-string v0, "l10"

    filled-new-array {v0, v7}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x38b

    aput-object v0, p1, v2

    .line 1025
    const-string v0, "cp5346"

    const-string v2, "windows-1250"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x38d

    aput-object v0, p1, v2

    .line 1026
    const-string v0, "cp5347"

    const-string v2, "windows-1251"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x38e

    aput-object v0, p1, v2

    .line 1027
    const-string v0, "cp5348"

    const-string v2, "windows-1252"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x38f

    aput-object v0, p1, v2

    .line 1028
    const-string v0, "cp5349"

    const-string v2, "windows-1253"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x390

    aput-object v0, p1, v2

    .line 1029
    const-string v0, "tis620"

    const-string v2, "tis-620"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x396

    aput-object v0, p1, v2

    .line 1030
    const-string v0, "iso_646.irv:1991"

    filled-new-array {v0, v9}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x39d

    aput-object v0, p1, v2

    .line 1031
    const-string v0, "big5_solaris"

    const-string v2, "x-big5-solaris"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x3a1

    aput-object v0, p1, v2

    .line 1032
    const-string v0, "csbig5"

    const-string v2, "big5"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x3a5

    aput-object v0, p1, v2

    .line 1033
    const-string v0, "cp5350"

    const-string v2, "windows-1254"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x3a6

    aput-object v0, p1, v2

    .line 1034
    const-string v0, "big5-hkscs"

    const-string v2, "big5-hkscs"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x3a8

    aput-object v0, p1, v2

    .line 1035
    const-string v0, "cp5353"

    const-string v2, "windows-1257"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x3a9

    aput-object v0, p1, v2

    .line 1036
    const-string v0, "utf_32le"

    const-string v2, "utf-32le"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "latin-9"

    move-object/from16 v3, v18

    filled-new-array {v2, v3, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x3b0

    aput-object v0, p1, v2

    .line 1038
    const/16 v0, 0x3bc

    move-object/from16 v2, v23

    filled-new-array {v2, v2}, [Ljava/lang/Object;

    move-result-object v2

    aput-object v2, p1, v0

    .line 1039
    const-string v0, "utf_16"

    const-string v2, "utf-16"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x3bd

    aput-object v0, p1, v2

    .line 1040
    const-string v0, "csshiftjis"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x3c2

    aput-object v0, p1, v1

    .line 1041
    const-string v0, "jis_c6226-1983"

    move-object/from16 v4, v16

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "cseucpkdfmtjapanese"

    filled-new-array {v1, v8, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x3d8

    aput-object v0, p1, v1

    .line 1043
    const-string v0, "cspc850multilingual"

    move-object/from16 v1, v24

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x3e1

    aput-object v0, p1, v1

    .line 1044
    const-string v0, "cseuckr"

    filled-new-array {v0, v6}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x3ea

    aput-object v0, p1, v1

    .line 1045
    const-string v0, "utf-32le-bom"

    const-string v1, "x-utf-32le-bom"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x3f1

    aput-object v0, p1, v1

    .line 1046
    const-string v0, "utf_32"

    const-string v1, "utf-32"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x3f7

    aput-object v0, p1, v1

    .line 1047
    const-string v0, "x0201"

    const-string v1, "jis_x0201"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x3fb

    aput-object v0, p1, v1

    .line 1048
    return-void
.end method
