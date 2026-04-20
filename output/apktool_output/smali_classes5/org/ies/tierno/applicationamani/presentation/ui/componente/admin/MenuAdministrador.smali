.class public final Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/MenuAdministrador;
.super Ljava/lang/Object;
.source "MenuAdministrador.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0016\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0008H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0008H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0008H\u00c6\u0003JE\u0010\u001b\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\u00082\u0008\u0008\u0002\u0010\n\u001a\u00020\u0008H\u00c6\u0001J\u0013\u0010\u001c\u001a\u00020\u00082\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001e\u001a\u00020\u001fH\u00d6\u0001J\t\u0010 \u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000eR\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0012R\u0011\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0012R\u0011\u0010\n\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0012\u00a8\u0006!"
    }
    d2 = {
        "Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/MenuAdministrador;",
        "",
        "title",
        "",
        "icon",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "route",
        "isDanger",
        "",
        "dividerBefore",
        "dividerAfter",
        "<init>",
        "(Ljava/lang/String;Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;ZZZ)V",
        "getTitle",
        "()Ljava/lang/String;",
        "getIcon",
        "()Landroidx/compose/ui/graphics/vector/ImageVector;",
        "getRoute",
        "()Z",
        "getDividerBefore",
        "getDividerAfter",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "copy",
        "equals",
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
.field private final dividerAfter:Z

.field private final dividerBefore:Z

.field private final icon:Landroidx/compose/ui/graphics/vector/ImageVector;

.field private final isDanger:Z

.field private final route:Ljava/lang/String;

.field private final title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;ZZZ)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "icon"    # Landroidx/compose/ui/graphics/vector/ImageVector;
    .param p3, "route"    # Ljava/lang/String;
    .param p4, "isDanger"    # Z
    .param p5, "dividerBefore"    # Z
    .param p6, "dividerAfter"    # Z

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "icon"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "route"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/MenuAdministrador;->title:Ljava/lang/String;

    .line 82
    iput-object p2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/MenuAdministrador;->icon:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 83
    iput-object p3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/MenuAdministrador;->route:Ljava/lang/String;

    .line 84
    iput-boolean p4, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/MenuAdministrador;->isDanger:Z

    .line 85
    iput-boolean p5, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/MenuAdministrador;->dividerBefore:Z

    .line 86
    iput-boolean p6, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/MenuAdministrador;->dividerAfter:Z

    .line 80
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    .line 80
    and-int/lit8 p8, p7, 0x8

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    .line 84
    move p4, v0

    .line 80
    :cond_0
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_1

    .line 85
    move p5, v0

    .line 80
    :cond_1
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_2

    .line 86
    move p7, v0

    goto :goto_0

    .line 80
    :cond_2
    move p7, p6

    :goto_0
    move p6, p5

    move p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    invoke-direct/range {p1 .. p7}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/MenuAdministrador;-><init>(Ljava/lang/String;Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;ZZZ)V

    .line 87
    return-void
.end method

.method public static synthetic copy$default(Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/MenuAdministrador;Ljava/lang/String;Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;ZZZILjava/lang/Object;)Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/MenuAdministrador;
    .locals 0

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/MenuAdministrador;->title:Ljava/lang/String;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-object p2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/MenuAdministrador;->icon:Landroidx/compose/ui/graphics/vector/ImageVector;

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    iget-object p3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/MenuAdministrador;->route:Ljava/lang/String;

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    iget-boolean p4, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/MenuAdministrador;->isDanger:Z

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    iget-boolean p5, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/MenuAdministrador;->dividerBefore:Z

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    iget-boolean p6, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/MenuAdministrador;->dividerAfter:Z

    :cond_5
    move p7, p5

    move p8, p6

    move-object p5, p3

    move p6, p4

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p8}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/MenuAdministrador;->copy(Ljava/lang/String;Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;ZZZ)Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/MenuAdministrador;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/MenuAdministrador;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/MenuAdministrador;->icon:Landroidx/compose/ui/graphics/vector/ImageVector;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/MenuAdministrador;->route:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/MenuAdministrador;->isDanger:Z

    return v0
.end method

.method public final component5()Z
    .locals 1

    iget-boolean v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/MenuAdministrador;->dividerBefore:Z

    return v0
.end method

.method public final component6()Z
    .locals 1

    iget-boolean v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/MenuAdministrador;->dividerAfter:Z

    return v0
.end method

.method public final copy(Ljava/lang/String;Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;ZZZ)Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/MenuAdministrador;
    .locals 8

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "icon"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "route"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/MenuAdministrador;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/MenuAdministrador;-><init>(Ljava/lang/String;Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;ZZZ)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/MenuAdministrador;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/MenuAdministrador;

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/MenuAdministrador;->title:Ljava/lang/String;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/MenuAdministrador;->title:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/MenuAdministrador;->icon:Landroidx/compose/ui/graphics/vector/ImageVector;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/MenuAdministrador;->icon:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/MenuAdministrador;->route:Ljava/lang/String;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/MenuAdministrador;->route:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    :cond_4
    iget-boolean v3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/MenuAdministrador;->isDanger:Z

    iget-boolean v4, v1, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/MenuAdministrador;->isDanger:Z

    if-eq v3, v4, :cond_5

    return v2

    :cond_5
    iget-boolean v3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/MenuAdministrador;->dividerBefore:Z

    iget-boolean v4, v1, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/MenuAdministrador;->dividerBefore:Z

    if-eq v3, v4, :cond_6

    return v2

    :cond_6
    iget-boolean v3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/MenuAdministrador;->dividerAfter:Z

    iget-boolean v1, v1, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/MenuAdministrador;->dividerAfter:Z

    if-eq v3, v1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getDividerAfter()Z
    .locals 1

    .line 86
    iget-boolean v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/MenuAdministrador;->dividerAfter:Z

    return v0
.end method

.method public final getDividerBefore()Z
    .locals 1

    .line 85
    iget-boolean v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/MenuAdministrador;->dividerBefore:Z

    return v0
.end method

.method public final getIcon()Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/MenuAdministrador;->icon:Landroidx/compose/ui/graphics/vector/ImageVector;

    return-object v0
.end method

.method public final getRoute()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/MenuAdministrador;->route:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/MenuAdministrador;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/MenuAdministrador;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/MenuAdministrador;->icon:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/ImageVector;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/MenuAdministrador;->route:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/MenuAdministrador;->isDanger:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/MenuAdministrador;->dividerBefore:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/MenuAdministrador;->dividerAfter:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public final isDanger()Z
    .locals 1

    .line 84
    iget-boolean v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/MenuAdministrador;->isDanger:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/MenuAdministrador;->title:Ljava/lang/String;

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/MenuAdministrador;->icon:Landroidx/compose/ui/graphics/vector/ImageVector;

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/MenuAdministrador;->route:Ljava/lang/String;

    iget-boolean v3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/MenuAdministrador;->isDanger:Z

    iget-boolean v4, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/MenuAdministrador;->dividerBefore:Z

    iget-boolean v5, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/MenuAdministrador;->dividerAfter:Z

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MenuAdministrador(title="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", icon="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", route="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isDanger="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dividerBefore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dividerAfter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
