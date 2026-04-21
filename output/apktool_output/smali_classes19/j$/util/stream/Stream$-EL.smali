.class public final synthetic Lj$/util/stream/Stream$-EL;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"


# direct methods
.method public static synthetic toList(Ljava/util/stream/Stream;)Ljava/util/List;
    .locals 1

    instance-of v0, p0, Lj$/util/stream/Stream;

    if-eqz v0, :cond_0

    check-cast p0, Lj$/util/stream/Stream;

    invoke-interface {p0}, Lj$/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lj$/util/stream/Stream$-CC;->$default$toList(Ljava/util/stream/Stream;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
