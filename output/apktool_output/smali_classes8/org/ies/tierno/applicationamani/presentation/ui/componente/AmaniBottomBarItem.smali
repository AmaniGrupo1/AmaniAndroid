.class public final Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;
.super Ljava/lang/Object;
.source "AmaniBottomBar.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B+\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0006H\u00c6\u0003J3\u0010\u0014\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006H\u00c6\u0001J\u0013\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001J\t\u0010\u001a\u001a\u00020\u0003H\u00d6\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u000bR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000e\u00a8\u0006\u001b"
    }
    d2 = {
        "Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;",
        "",
        "route",
        "",
        "label",
        "selectedIcon",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "unselectedIcon",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/graphics/vector/ImageVector;)V",
        "getRoute",
        "()Ljava/lang/String;",
        "getLabel",
        "getSelectedIcon",
        "()Landroidx/compose/ui/graphics/vector/ImageVector;",
        "getUnselectedIcon",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private final label:Ljava/lang/String;

.field private final route:Ljava/lang/String;

.field private final selectedIcon:Landroidx/compose/ui/graphics/vector/ImageVector;

.field private final unselectedIcon:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/graphics/vector/ImageVector;)V
    .locals 1
    .param p1, "route"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "selectedIcon"    # Landroidx/compose/ui/graphics/vector/ImageVector;
    .param p4, "unselectedIcon"    # Landroidx/compose/ui/graphics/vector/ImageVector;

    const-string v0, "label"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectedIcon"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unselectedIcon"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;->route:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;->label:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;->selectedIcon:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 51
    iput-object p4, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;->unselectedIcon:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 47
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/graphics/vector/ImageVector;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 47
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    .line 51
    move-object p4, p3

    .line 47
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/graphics/vector/ImageVector;)V

    .line 52
    return-void
.end method

.method public static synthetic copy$default(Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/graphics/vector/ImageVector;ILjava/lang/Object;)Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;->route:Ljava/lang/String;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;->label:Ljava/lang/String;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;->selectedIcon:Landroidx/compose/ui/graphics/vector/ImageVector;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;->unselectedIcon:Landroidx/compose/ui/graphics/vector/ImageVector;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;->copy(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/graphics/vector/ImageVector;)Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;->route:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;->label:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;->selectedIcon:Landroidx/compose/ui/graphics/vector/ImageVector;

    return-object v0
.end method

.method public final component4()Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;->unselectedIcon:Landroidx/compose/ui/graphics/vector/ImageVector;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/graphics/vector/ImageVector;)Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;
    .locals 1

    const-string v0, "label"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectedIcon"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unselectedIcon"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/graphics/vector/ImageVector;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;->route:Ljava/lang/String;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;->route:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;->label:Ljava/lang/String;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;->label:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;->selectedIcon:Landroidx/compose/ui/graphics/vector/ImageVector;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;->selectedIcon:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    :cond_4
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;->unselectedIcon:Landroidx/compose/ui/graphics/vector/ImageVector;

    iget-object v1, v1, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;->unselectedIcon:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getLabel()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;->label:Ljava/lang/String;

    return-object v0
.end method

.method public final getRoute()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;->route:Ljava/lang/String;

    return-object v0
.end method

.method public final getSelectedIcon()Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;->selectedIcon:Landroidx/compose/ui/graphics/vector/ImageVector;

    return-object v0
.end method

.method public final getUnselectedIcon()Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;->unselectedIcon:Landroidx/compose/ui/graphics/vector/ImageVector;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;->route:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;->route:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;->label:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;->selectedIcon:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/ImageVector;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;->unselectedIcon:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/ImageVector;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;->route:Ljava/lang/String;

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;->label:Ljava/lang/String;

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;->selectedIcon:Landroidx/compose/ui/graphics/vector/ImageVector;

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/AmaniBottomBarItem;->unselectedIcon:Landroidx/compose/ui/graphics/vector/ImageVector;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AmaniBottomBarItem(route="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", label="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", selectedIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", unselectedIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
