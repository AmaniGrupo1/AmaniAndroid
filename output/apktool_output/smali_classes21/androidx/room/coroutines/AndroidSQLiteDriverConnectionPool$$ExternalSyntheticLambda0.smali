.class public final synthetic Landroidx/room/coroutines/AndroidSQLiteDriverConnectionPool$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/room/coroutines/AndroidSQLiteDriverConnectionPool;"
    method = "androidConnection_delegate$lambda$0"
    proto = "(Landroidx/room/coroutines/AndroidSQLiteDriverConnectionPool;)Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/room/coroutines/AndroidSQLiteDriverConnectionPool;


# direct methods
.method public synthetic constructor <init>(Landroidx/room/coroutines/AndroidSQLiteDriverConnectionPool;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/coroutines/AndroidSQLiteDriverConnectionPool$$ExternalSyntheticLambda0;->f$0:Landroidx/room/coroutines/AndroidSQLiteDriverConnectionPool;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/room/coroutines/AndroidSQLiteDriverConnectionPool$$ExternalSyntheticLambda0;->f$0:Landroidx/room/coroutines/AndroidSQLiteDriverConnectionPool;

    invoke-static {v0}, Landroidx/room/coroutines/AndroidSQLiteDriverConnectionPool;->androidConnection_delegate$lambda$0(Landroidx/room/coroutines/AndroidSQLiteDriverConnectionPool;)Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection;

    move-result-object v0

    return-object v0
.end method
