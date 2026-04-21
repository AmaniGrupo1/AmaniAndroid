.class public final Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShapeKt;
.super Ljava/lang/Object;
.source "AbsoluteRoundedCornerShape.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAbsoluteRoundedCornerShape.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbsoluteRoundedCornerShape.kt\nandroidx/compose/foundation/shape/AbsoluteRoundedCornerShapeKt\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,222:1\n122#2:223\n122#2:224\n122#2:225\n122#2:226\n*S KotlinDebug\n*F\n+ 1 AbsoluteRoundedCornerShape.kt\nandroidx/compose/foundation/shape/AbsoluteRoundedCornerShapeKt\n*L\n172#1:223\n173#1:224\n174#1:225\n175#1:226\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u000b\u001a \u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0005H\u0000\u001a\u000e\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\u0008\u001a\u0015\u0010\u0006\u001a\u00020\u00012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u001a\u000e\u0010\u0006\u001a\u00020\u00012\u0006\u0010\t\u001a\u00020\u0005\u001a\u000e\u0010\u0006\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\u000e\u001a5\u0010\u0006\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\n2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\n2\u0008\u0008\u0002\u0010\u0011\u001a\u00020\n2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0013\u0010\u0014\u001a.\u0010\u0006\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0005\u001a.\u0010\u0006\u001a\u00020\u00012\u0008\u0008\u0003\u0010\u0015\u001a\u00020\u000e2\u0008\u0008\u0003\u0010\u0016\u001a\u00020\u000e2\u0008\u0008\u0003\u0010\u0017\u001a\u00020\u000e2\u0008\u0008\u0003\u0010\u0018\u001a\u00020\u000e\u00a8\u0006\u0019"
    }
    d2 = {
        "lerp",
        "Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShape;",
        "a",
        "b",
        "t",
        "",
        "AbsoluteRoundedCornerShape",
        "corner",
        "Landroidx/compose/foundation/shape/CornerSize;",
        "size",
        "Landroidx/compose/ui/unit/Dp;",
        "AbsoluteRoundedCornerShape-0680j_4",
        "(F)Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShape;",
        "percent",
        "",
        "topLeft",
        "topRight",
        "bottomRight",
        "bottomLeft",
        "AbsoluteRoundedCornerShape-a9UjIt4",
        "(FFFF)Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShape;",
        "topLeftPercent",
        "topRightPercent",
        "bottomRightPercent",
        "bottomLeftPercent",
        "foundation"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final AbsoluteRoundedCornerShape(F)Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShape;
    .locals 1
    .param p0, "size"    # F

    .line 161
    invoke-static {p0}, Landroidx/compose/foundation/shape/CornerSizeKt;->CornerSize(F)Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShapeKt;->AbsoluteRoundedCornerShape(Landroidx/compose/foundation/shape/CornerSize;)Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShape;

    move-result-object v0

    return-object v0
.end method

.method public static final AbsoluteRoundedCornerShape(FFFF)Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShape;
    .locals 5
    .param p0, "topLeft"    # F
    .param p1, "topRight"    # F
    .param p2, "bottomRight"    # F
    .param p3, "bottomLeft"    # F

    .line 191
    new-instance v0, Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShape;

    .line 192
    invoke-static {p0}, Landroidx/compose/foundation/shape/CornerSizeKt;->CornerSize(F)Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v1

    .line 193
    invoke-static {p1}, Landroidx/compose/foundation/shape/CornerSizeKt;->CornerSize(F)Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v2

    .line 194
    invoke-static {p2}, Landroidx/compose/foundation/shape/CornerSizeKt;->CornerSize(F)Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v3

    .line 195
    invoke-static {p3}, Landroidx/compose/foundation/shape/CornerSizeKt;->CornerSize(F)Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v4

    .line 191
    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShape;-><init>(Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;)V

    .line 196
    return-object v0
.end method

.method public static final AbsoluteRoundedCornerShape(I)Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShape;
    .locals 1
    .param p0, "percent"    # I

    .line 168
    invoke-static {p0}, Landroidx/compose/foundation/shape/CornerSizeKt;->CornerSize(I)Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShapeKt;->AbsoluteRoundedCornerShape(Landroidx/compose/foundation/shape/CornerSize;)Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShape;

    move-result-object v0

    return-object v0
.end method

.method public static final AbsoluteRoundedCornerShape(IIII)Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShape;
    .locals 5
    .param p0, "topLeftPercent"    # I
    .param p1, "topRightPercent"    # I
    .param p2, "bottomRightPercent"    # I
    .param p3, "bottomLeftPercent"    # I

    .line 216
    new-instance v0, Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShape;

    .line 217
    invoke-static {p0}, Landroidx/compose/foundation/shape/CornerSizeKt;->CornerSize(I)Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v1

    .line 218
    invoke-static {p1}, Landroidx/compose/foundation/shape/CornerSizeKt;->CornerSize(I)Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v2

    .line 219
    invoke-static {p2}, Landroidx/compose/foundation/shape/CornerSizeKt;->CornerSize(I)Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v3

    .line 220
    invoke-static {p3}, Landroidx/compose/foundation/shape/CornerSizeKt;->CornerSize(I)Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v4

    .line 216
    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShape;-><init>(Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;)V

    .line 221
    return-object v0
.end method

.method public static final AbsoluteRoundedCornerShape(Landroidx/compose/foundation/shape/CornerSize;)Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShape;
    .locals 1
    .param p0, "corner"    # Landroidx/compose/foundation/shape/CornerSize;

    .line 147
    new-instance v0, Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShape;

    invoke-direct {v0, p0, p0, p0, p0}, Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShape;-><init>(Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;)V

    return-object v0
.end method

.method public static synthetic AbsoluteRoundedCornerShape$default(FFFFILjava/lang/Object;)Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShape;
    .locals 1

    .line 185
    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    .line 186
    move p0, v0

    .line 185
    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    .line 187
    move p1, v0

    .line 185
    :cond_1
    and-int/lit8 p5, p4, 0x4

    if-eqz p5, :cond_2

    .line 188
    move p2, v0

    .line 185
    :cond_2
    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_3

    .line 189
    move p3, v0

    .line 185
    :cond_3
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShapeKt;->AbsoluteRoundedCornerShape(FFFF)Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShape;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic AbsoluteRoundedCornerShape$default(IIIIILjava/lang/Object;)Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShape;
    .locals 1

    .line 210
    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    .line 211
    move p0, v0

    .line 210
    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    .line 212
    move p1, v0

    .line 210
    :cond_1
    and-int/lit8 p5, p4, 0x4

    if-eqz p5, :cond_2

    .line 213
    move p2, v0

    .line 210
    :cond_2
    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_3

    .line 214
    move p3, v0

    .line 210
    :cond_3
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShapeKt;->AbsoluteRoundedCornerShape(IIII)Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShape;

    move-result-object p0

    return-object p0
.end method

.method public static final AbsoluteRoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShape;
    .locals 1
    .param p0, "$v$c$androidx-compose-ui-unit-Dp$-size$0"    # F

    .line 154
    invoke-static {p0}, Landroidx/compose/foundation/shape/CornerSizeKt;->CornerSize-0680j_4(F)Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShapeKt;->AbsoluteRoundedCornerShape(Landroidx/compose/foundation/shape/CornerSize;)Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShape;

    move-result-object v0

    return-object v0
.end method

.method public static final AbsoluteRoundedCornerShape-a9UjIt4(FFFF)Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShape;
    .locals 5
    .param p0, "$v$c$androidx-compose-ui-unit-Dp$-topLeft$0"    # F
    .param p1, "$v$c$androidx-compose-ui-unit-Dp$-topRight$0"    # F
    .param p2, "$v$c$androidx-compose-ui-unit-Dp$-bottomRight$0"    # F
    .param p3, "$v$c$androidx-compose-ui-unit-Dp$-bottomLeft$0"    # F

    .line 177
    new-instance v0, Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShape;

    .line 178
    invoke-static {p0}, Landroidx/compose/foundation/shape/CornerSizeKt;->CornerSize-0680j_4(F)Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v1

    .line 179
    invoke-static {p1}, Landroidx/compose/foundation/shape/CornerSizeKt;->CornerSize-0680j_4(F)Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v2

    .line 180
    invoke-static {p2}, Landroidx/compose/foundation/shape/CornerSizeKt;->CornerSize-0680j_4(F)Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v3

    .line 181
    invoke-static {p3}, Landroidx/compose/foundation/shape/CornerSizeKt;->CornerSize-0680j_4(F)Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v4

    .line 177
    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShape;-><init>(Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;)V

    .line 182
    return-object v0
.end method

.method public static synthetic AbsoluteRoundedCornerShape-a9UjIt4$default(FFFFILjava/lang/Object;)Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShape;
    .locals 1

    .line 171
    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 172
    const/4 p0, 0x0

    .local p0, "$this$dp$iv":I
    const/4 p5, 0x0

    .line 223
    .local p5, "$i$f$getDp":I
    int-to-float v0, p0

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p0

    .line 171
    .end local p0    # "$this$dp$iv":I
    .end local p5    # "$i$f$getDp":I
    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    .line 173
    const/4 p1, 0x0

    .local p1, "$this$dp$iv":I
    const/4 p5, 0x0

    .line 224
    .restart local p5    # "$i$f$getDp":I
    int-to-float v0, p1

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p1

    .line 171
    .end local p1    # "$this$dp$iv":I
    .end local p5    # "$i$f$getDp":I
    :cond_1
    and-int/lit8 p5, p4, 0x4

    if-eqz p5, :cond_2

    .line 174
    const/4 p2, 0x0

    .local p2, "$this$dp$iv":I
    const/4 p5, 0x0

    .line 225
    .restart local p5    # "$i$f$getDp":I
    int-to-float v0, p2

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p2

    .line 171
    .end local p2    # "$this$dp$iv":I
    .end local p5    # "$i$f$getDp":I
    :cond_2
    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_3

    .line 175
    const/4 p3, 0x0

    .local p3, "$this$dp$iv":I
    const/4 p4, 0x0

    .line 226
    .local p4, "$i$f$getDp":I
    int-to-float p5, p3

    invoke-static {p5}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p3

    .line 171
    .end local p3    # "$this$dp$iv":I
    .end local p4    # "$i$f$getDp":I
    :cond_3
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShapeKt;->AbsoluteRoundedCornerShape-a9UjIt4(FFFF)Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShape;

    move-result-object p0

    return-object p0
.end method

.method public static final lerp(Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShape;Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShape;F)Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShape;
    .locals 6
    .param p0, "a"    # Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShape;
    .param p1, "b"    # Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShape;
    .param p2, "t"    # F

    .line 133
    new-instance v0, Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShape;

    .line 134
    invoke-virtual {p0}, Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShape;->getTopStart()Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShape;->getTopStart()Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v2

    invoke-static {v1, v2, p2}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->lerp(Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;F)Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v1

    .line 135
    invoke-virtual {p0}, Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShape;->getTopEnd()Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v2

    invoke-virtual {p1}, Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShape;->getTopEnd()Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v3

    invoke-static {v2, v3, p2}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->lerp(Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;F)Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v2

    .line 136
    invoke-virtual {p0}, Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShape;->getBottomEnd()Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v3

    invoke-virtual {p1}, Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShape;->getBottomEnd()Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v4

    invoke-static {v3, v4, p2}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->lerp(Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;F)Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v3

    .line 137
    invoke-virtual {p0}, Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShape;->getBottomStart()Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v4

    invoke-virtual {p1}, Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShape;->getBottomStart()Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v5

    invoke-static {v4, v5, p2}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->lerp(Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;F)Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v4

    .line 133
    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShape;-><init>(Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;)V

    return-object v0
.end method
