.class public final Lorg/ies/tierno/applicationamani/presentation/viewmodels/PrincipalClienteViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "PrincipalClienteViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lorg/ies/tierno/applicationamani/presentation/viewmodels/PrincipalClienteViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "<init>",
        "()V",
        "especialidades",
        "",
        "",
        "getEspecialidades",
        "()Ljava/util/List;",
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
.field private final especialidades:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PrincipalClienteViewModel;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 14
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 21
    nop

    .line 22
    nop

    .line 23
    nop

    .line 22
    nop

    .line 24
    nop

    .line 22
    nop

    .line 25
    const-string v0, "Especialidad 4"

    const-string v1, "Especialidad 1"

    const-string v2, "Especialidad 2"

    const-string v3, "Especialidad 3"

    filled-new-array {v1, v2, v3, v0}, [Ljava/lang/String;

    move-result-object v0

    .line 22
    nop

    .line 21
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PrincipalClienteViewModel;->especialidades:Ljava/util/List;

    .line 14
    return-void
.end method


# virtual methods
.method public final getEspecialidades()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PrincipalClienteViewModel;->especialidades:Ljava/util/List;

    return-object v0
.end method
