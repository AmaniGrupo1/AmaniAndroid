.class public interface abstract Landroidx/datastore/core/SharedCounter;
.super Ljava/lang/Object;
.source "SharedCounter.android.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/datastore/core/SharedCounter$Factory;,
        Landroidx/datastore/core/SharedCounter$RealSharedCounter;,
        Landroidx/datastore/core/SharedCounter$ShadowSharedCounter;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008`\u0018\u0000 \u00072\u00020\u0001:\u0003\u0005\u0006\u0007J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0008\u0010\u0004\u001a\u00020\u0003H&\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u0008\u00c0\u0006\u0001"
    }
    d2 = {
        "Landroidx/datastore/core/SharedCounter;",
        "",
        "getValue",
        "",
        "incrementAndGetValue",
        "RealSharedCounter",
        "ShadowSharedCounter",
        "Factory",
        "datastore-core"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Factory:Landroidx/datastore/core/SharedCounter$Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/datastore/core/SharedCounter$Factory;->$$INSTANCE:Landroidx/datastore/core/SharedCounter$Factory;

    sput-object v0, Landroidx/datastore/core/SharedCounter;->Factory:Landroidx/datastore/core/SharedCounter$Factory;

    return-void
.end method


# virtual methods
.method public abstract getValue()I
.end method

.method public abstract incrementAndGetValue()I
.end method
