.class public final synthetic Lj$/util/stream/DesugarCollectors$13;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/HashMap;

    invoke-static {p1}, Lj$/util/stream/DesugarCollectors;->lambda$toUnmodifiableMap$6(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method
