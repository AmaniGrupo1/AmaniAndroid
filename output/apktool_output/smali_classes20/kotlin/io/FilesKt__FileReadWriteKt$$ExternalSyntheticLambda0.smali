.class public final synthetic Lkotlin/io/FilesKt__FileReadWriteKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lkotlin/io/FilesKt__FileReadWriteKt;"
    method = "readLines$lambda$0$FilesKt__FileReadWriteKt"
    proto = "(Ljava/util/ArrayList;Ljava/lang/String;)Lkotlin/Unit;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/io/FilesKt__FileReadWriteKt$$ExternalSyntheticLambda0;->f$0:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lkotlin/io/FilesKt__FileReadWriteKt$$ExternalSyntheticLambda0;->f$0:Ljava/util/ArrayList;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/io/FilesKt__FileReadWriteKt;->$r8$lambda$hPJfgTK5s9M7mflij1tos8f0N40(Ljava/util/ArrayList;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
