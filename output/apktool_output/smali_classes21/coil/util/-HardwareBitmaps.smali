.class public final Lcoil/util/-HardwareBitmaps;
.super Ljava/lang/Object;
.source "HardwareBitmaps.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u001a\u0012\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u0000\"\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0006"
    }
    d2 = {
        "HardwareBitmapService",
        "Lcoil/util/HardwareBitmapService;",
        "logger",
        "Lcoil/util/Logger;",
        "IS_DEVICE_BLOCKED",
        "",
        "coil-base_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final IS_DEVICE_BLOCKED:Z


# direct methods
.method static constructor <clinit>()V
    .locals 58

    .line 113
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 213
    goto/16 :goto_2

    .line 142
    :pswitch_0
    const/4 v0, 0x0

    .line 143
    .local v0, "$i$a$-run--HardwareBitmaps$IS_DEVICE_BLOCKED$2":I
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    if-nez v2, :cond_0

    goto/16 :goto_0

    .line 146
    .local v2, "device":Ljava/lang/String;
    :cond_0
    nop

    .line 147
    nop

    .line 146
    nop

    .line 148
    nop

    .line 146
    nop

    .line 149
    nop

    .line 146
    nop

    .line 151
    nop

    .line 146
    nop

    .line 152
    nop

    .line 146
    nop

    .line 154
    nop

    .line 146
    nop

    .line 155
    nop

    .line 146
    nop

    .line 156
    nop

    .line 146
    nop

    .line 157
    nop

    .line 146
    nop

    .line 158
    nop

    .line 146
    nop

    .line 159
    nop

    .line 146
    nop

    .line 160
    nop

    .line 146
    nop

    .line 161
    nop

    .line 146
    nop

    .line 162
    nop

    .line 146
    nop

    .line 164
    nop

    .line 146
    nop

    .line 165
    nop

    .line 146
    nop

    .line 166
    nop

    .line 146
    nop

    .line 167
    nop

    .line 146
    nop

    .line 168
    nop

    .line 146
    nop

    .line 169
    nop

    .line 146
    nop

    .line 171
    nop

    .line 146
    nop

    .line 172
    nop

    .line 146
    nop

    .line 173
    nop

    .line 146
    nop

    .line 174
    nop

    .line 146
    nop

    .line 175
    nop

    .line 146
    nop

    .line 176
    nop

    .line 146
    nop

    .line 178
    nop

    .line 146
    nop

    .line 179
    nop

    .line 146
    nop

    .line 181
    nop

    .line 146
    nop

    .line 182
    nop

    .line 146
    nop

    .line 183
    nop

    .line 146
    nop

    .line 185
    nop

    .line 146
    nop

    .line 186
    nop

    .line 146
    nop

    .line 187
    nop

    .line 146
    nop

    .line 189
    nop

    .line 146
    nop

    .line 190
    nop

    .line 146
    nop

    .line 191
    nop

    .line 146
    nop

    .line 193
    nop

    .line 146
    nop

    .line 194
    nop

    .line 146
    nop

    .line 196
    nop

    .line 146
    nop

    .line 197
    nop

    .line 146
    nop

    .line 198
    nop

    .line 146
    nop

    .line 199
    nop

    .line 146
    nop

    .line 200
    nop

    .line 146
    nop

    .line 201
    nop

    .line 146
    nop

    .line 202
    nop

    .line 146
    nop

    .line 203
    nop

    .line 146
    nop

    .line 204
    nop

    .line 146
    nop

    .line 205
    nop

    .line 146
    nop

    .line 206
    nop

    .line 146
    nop

    .line 207
    nop

    .line 146
    nop

    .line 208
    nop

    .line 146
    nop

    .line 209
    nop

    .line 146
    nop

    .line 210
    const-string v57, "SHIFT6m"

    const-string v3, "mcv1s"

    const-string v4, "mcv3"

    const-string v5, "mcv5a"

    const-string v6, "mcv7a"

    const-string v7, "A30ATMO"

    const-string v8, "A70AXLTMO"

    const-string v9, "A3A_8_4G_TMO"

    const-string v10, "Edison_CKT"

    const-string v11, "EDISON_TF"

    const-string v12, "FERMI_TF"

    const-string v13, "U50A_ATT"

    const-string v14, "U50A_PLUS_ATT"

    const-string v15, "U50A_PLUS_TF"

    const-string v16, "U50APLUSTMO"

    const-string v17, "U5A_PLUS_4G"

    const-string v18, "RCT6513W87DK5e"

    const-string v19, "RCT6873W42BMF9A"

    const-string v20, "RCT6A03W13"

    const-string v21, "RCT6B03W12"

    const-string v22, "RCT6B03W13"

    const-string v23, "RCT6T06E13"

    const-string v24, "A3_Pro"

    const-string v25, "One"

    const-string v26, "One_Max"

    const-string v27, "One_Pro"

    const-string v28, "Z2"

    const-string v29, "Z2_PRO"

    const-string v30, "Armor_3"

    const-string v31, "Armor_6"

    const-string v32, "Blackview"

    const-string v33, "BV9500"

    const-string v34, "BV9500Pro"

    const-string v35, "A6L-C"

    const-string v36, "N5002LA"

    const-string v37, "N5501LA"

    const-string v38, "Power_2_Pro"

    const-string v39, "Power_5"

    const-string v40, "Z9"

    const-string v41, "V0310WW"

    const-string v42, "V0330WW"

    const-string v43, "A3"

    const-string v44, "ASUS_X018_4"

    const-string v45, "C210AE"

    const-string v46, "fireball"

    const-string v47, "ILA_X1"

    const-string v48, "Infinix-X605_sprout"

    const-string v49, "j7maxlte"

    const-string v50, "KING_KONG_3"

    const-string v51, "M10500"

    const-string v52, "S70"

    const-string v53, "S80Lite"

    const-string v54, "SGINO6"

    const-string/jumbo v55, "st18c10bnn"

    const-string v56, "TECNO-CA8"

    filled-new-array/range {v3 .. v57}, [Ljava/lang/String;

    move-result-object v1

    .line 146
    nop

    .line 145
    invoke-static {v1, v2}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 142
    .end local v0    # "$i$a$-run--HardwareBitmaps$IS_DEVICE_BLOCKED$2":I
    .end local v2    # "device":Ljava/lang/String;
    :goto_0
    goto/16 :goto_2

    .line 114
    :pswitch_1
    const/4 v0, 0x0

    .line 115
    .local v0, "$i$a$-run--HardwareBitmaps$IS_DEVICE_BLOCKED$1":I
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-nez v2, :cond_1

    goto/16 :goto_1

    .line 118
    .local v2, "model":Ljava/lang/String;
    :cond_1
    const-string v3, "SAMSUNG-"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Lkotlin/text/StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-string v6, "SM-"

    invoke-static {v3, v6, v1, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    goto/16 :goto_1

    .line 120
    :cond_2
    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    if-nez v3, :cond_3

    goto/16 :goto_1

    .line 123
    .local v3, "device":Ljava/lang/String;
    :cond_3
    nop

    .line 124
    nop

    .line 123
    nop

    .line 124
    nop

    .line 123
    nop

    .line 124
    nop

    .line 123
    nop

    .line 124
    nop

    .line 123
    nop

    .line 125
    nop

    .line 123
    nop

    .line 125
    nop

    .line 123
    nop

    .line 125
    nop

    .line 123
    nop

    .line 127
    nop

    .line 123
    nop

    .line 127
    nop

    .line 123
    nop

    .line 128
    nop

    .line 123
    nop

    .line 128
    nop

    .line 123
    nop

    .line 128
    nop

    .line 123
    nop

    .line 129
    nop

    .line 123
    nop

    .line 129
    nop

    .line 123
    nop

    .line 129
    nop

    .line 123
    nop

    .line 131
    nop

    .line 123
    nop

    .line 131
    nop

    .line 123
    nop

    .line 131
    nop

    .line 123
    nop

    .line 131
    nop

    .line 123
    nop

    .line 131
    nop

    .line 123
    nop

    .line 132
    nop

    .line 123
    nop

    .line 132
    nop

    .line 123
    nop

    .line 132
    nop

    .line 123
    nop

    .line 132
    nop

    .line 123
    nop

    .line 132
    nop

    .line 123
    nop

    .line 133
    nop

    .line 123
    nop

    .line 133
    nop

    .line 123
    nop

    .line 133
    nop

    .line 123
    nop

    .line 133
    nop

    .line 123
    nop

    .line 135
    nop

    .line 123
    nop

    .line 136
    nop

    .line 123
    nop

    .line 137
    nop

    .line 123
    nop

    .line 138
    nop

    .line 123
    nop

    .line 139
    const-string v40, "N5702L"

    const-string/jumbo v4, "nora"

    const-string/jumbo v5, "nora_8917"

    const-string/jumbo v6, "nora_8917_n"

    const-string v7, "james"

    const-string/jumbo v8, "rjames_f"

    const-string/jumbo v9, "rjames_go"

    const-string/jumbo v10, "pettyl"

    const-string v11, "hannah"

    const-string v12, "ahannah"

    const-string/jumbo v13, "rhannah"

    const-string v14, "ali"

    const-string v15, "ali_n"

    const-string v16, "aljeter"

    const-string v17, "aljeter_n"

    const-string v18, "jeter"

    const-string v19, "evert"

    const-string v20, "evert_n"

    const-string v21, "evert_nt"

    const-string v22, "G3112"

    const-string v23, "G3116"

    const-string v24, "G3121"

    const-string v25, "G3123"

    const-string v26, "G3125"

    const-string v27, "G3412"

    const-string v28, "G3416"

    const-string v29, "G3421"

    const-string v30, "G3423"

    const-string v31, "G3426"

    const-string v32, "G3212"

    const-string v33, "G3221"

    const-string v34, "G3223"

    const-string v35, "G3226"

    const-string v36, "BV6800Pro"

    const-string v37, "CatS41"

    const-string v38, "Hi9Pro"

    const-string v39, "manning"

    filled-new-array/range {v4 .. v40}, [Ljava/lang/String;

    move-result-object v1

    .line 123
    nop

    .line 122
    invoke-static {v1, v3}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 114
    .end local v0    # "$i$a$-run--HardwareBitmaps$IS_DEVICE_BLOCKED$1":I
    .end local v2    # "model":Ljava/lang/String;
    .end local v3    # "device":Ljava/lang/String;
    :goto_1
    nop

    .line 113
    :goto_2
    sput-boolean v1, Lcoil/util/-HardwareBitmaps;->IS_DEVICE_BLOCKED:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final HardwareBitmapService(Lcoil/util/Logger;)Lcoil/util/HardwareBitmapService;
    .locals 2
    .param p0, "logger"    # Lcoil/util/Logger;

    .line 17
    nop

    .line 18
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_3

    sget-boolean v0, Lcoil/util/-HardwareBitmaps;->IS_DEVICE_BLOCKED:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 19
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-eq v0, v1, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 20
    :cond_1
    new-instance v0, Lcoil/util/ImmutableHardwareBitmapService;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcoil/util/ImmutableHardwareBitmapService;-><init>(Z)V

    check-cast v0, Lcoil/util/HardwareBitmapService;

    goto :goto_2

    .line 19
    :cond_2
    :goto_0
    new-instance v0, Lcoil/util/LimitedFileDescriptorHardwareBitmapService;

    invoke-direct {v0, p0}, Lcoil/util/LimitedFileDescriptorHardwareBitmapService;-><init>(Lcoil/util/Logger;)V

    check-cast v0, Lcoil/util/HardwareBitmapService;

    goto :goto_2

    .line 18
    :cond_3
    :goto_1
    new-instance v0, Lcoil/util/ImmutableHardwareBitmapService;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcoil/util/ImmutableHardwareBitmapService;-><init>(Z)V

    check-cast v0, Lcoil/util/HardwareBitmapService;

    .line 21
    :goto_2
    return-object v0
.end method
