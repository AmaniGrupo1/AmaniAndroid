.class public final Landroidx/compose/ui/platform/DerivedSize$Companion;
.super Ljava/lang/Object;
.source "AndroidWindowInfo.android.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/platform/DerivedSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidWindowInfo.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidWindowInfo.android.kt\nandroidx/compose/ui/platform/DerivedSize$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,163:1\n1#2:164\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001d\u0010\u0008\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u001d\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u0012\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0013"
    }
    d2 = {
        "Landroidx/compose/ui/platform/DerivedSize$Companion;",
        "",
        "<init>",
        "()V",
        "Zero",
        "Landroidx/compose/ui/platform/DerivedSize;",
        "getZero",
        "()Landroidx/compose/ui/platform/DerivedSize;",
        "fromPxSize",
        "pxSize",
        "Landroidx/compose/ui/unit/IntSize;",
        "density",
        "Landroidx/compose/ui/unit/Density;",
        "fromPxSize-viCIZxY",
        "(JLandroidx/compose/ui/unit/Density;)Landroidx/compose/ui/platform/DerivedSize;",
        "fromDpSize",
        "dpSize",
        "Landroidx/compose/ui/unit/DpSize;",
        "fromDpSize-itqla9I",
        "ui"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/platform/DerivedSize$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromDpSize-itqla9I(JLandroidx/compose/ui/unit/Density;)Landroidx/compose/ui/platform/DerivedSize;
    .locals 10
    .param p1, "$v$c$androidx-compose-ui-unit-DpSize$-dpSize$0"    # J
    .param p3, "density"    # Landroidx/compose/ui/unit/Density;

    .line 116
    move-object v0, p3

    .line 164
    .local v0, "$this$fromDpSize_itqla9I_u24lambda_u240":Landroidx/compose/ui/unit/Density;
    const/4 v1, 0x0

    .line 116
    .local v1, "$i$a$-with-DerivedSize$Companion$fromDpSize$1":I
    invoke-interface {v0, p1, p2}, Landroidx/compose/ui/unit/Density;->toSize-XkaWNTQ(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntSizeKt;->toIntSize-uvyYCjk(J)J

    move-result-wide v5

    .end local v0    # "$this$fromDpSize_itqla9I_u24lambda_u240":Landroidx/compose/ui/unit/Density;
    .end local v1    # "$i$a$-with-DerivedSize$Companion$fromDpSize$1":I
    new-instance v4, Landroidx/compose/ui/platform/DerivedSize;

    const/4 v9, 0x0

    move-wide v7, p1

    .end local p1    # "$v$c$androidx-compose-ui-unit-DpSize$-dpSize$0":J
    .local v7, "$v$c$androidx-compose-ui-unit-DpSize$-dpSize$0":J
    invoke-direct/range {v4 .. v9}, Landroidx/compose/ui/platform/DerivedSize;-><init>(JJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v4
.end method

.method public final fromPxSize-viCIZxY(JLandroidx/compose/ui/unit/Density;)Landroidx/compose/ui/platform/DerivedSize;
    .locals 10
    .param p1, "$v$c$androidx-compose-ui-unit-IntSize$-pxSize$0"    # J
    .param p3, "density"    # Landroidx/compose/ui/unit/Density;

    .line 113
    nop

    .line 164
    move-object v0, p3

    .local v0, "$this$fromPxSize_viCIZxY_u24lambda_u240":Landroidx/compose/ui/unit/Density;
    const/4 v1, 0x0

    .line 113
    .local v1, "$i$a$-with-DerivedSize$Companion$fromPxSize$1":I
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntSizeKt;->toSize-ozmzZPI(J)J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Landroidx/compose/ui/unit/Density;->toDpSize-k-rfVVM(J)J

    move-result-wide v7

    .end local v0    # "$this$fromPxSize_viCIZxY_u24lambda_u240":Landroidx/compose/ui/unit/Density;
    .end local v1    # "$i$a$-with-DerivedSize$Companion$fromPxSize$1":I
    new-instance v4, Landroidx/compose/ui/platform/DerivedSize;

    const/4 v9, 0x0

    move-wide v5, p1

    .end local p1    # "$v$c$androidx-compose-ui-unit-IntSize$-pxSize$0":J
    .local v5, "$v$c$androidx-compose-ui-unit-IntSize$-pxSize$0":J
    invoke-direct/range {v4 .. v9}, Landroidx/compose/ui/platform/DerivedSize;-><init>(JJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v4
.end method

.method public final getZero()Landroidx/compose/ui/platform/DerivedSize;
    .locals 1

    .line 110
    invoke-static {}, Landroidx/compose/ui/platform/DerivedSize;->access$getZero$cp()Landroidx/compose/ui/platform/DerivedSize;

    move-result-object v0

    return-object v0
.end method
