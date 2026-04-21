.class public final synthetic Lj$/util/DesugarLinkedHashSet;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static spliterator(Ljava/util/LinkedHashSet;)Ljava/util/Spliterator;
    .locals 1

    .line 196
    .local p0, "this":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<TE;>;"
    const/16 v0, 0x11

    invoke-static {p0, v0}, Ljava/util/Spliterators;->spliterator(Ljava/util/Collection;I)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
