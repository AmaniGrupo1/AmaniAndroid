.class public final synthetic Lj$/time/DesugarLocalTime$0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"


# direct methods
.method public static synthetic m(JI)I
    .locals 2

    int-to-long v0, p2

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method
