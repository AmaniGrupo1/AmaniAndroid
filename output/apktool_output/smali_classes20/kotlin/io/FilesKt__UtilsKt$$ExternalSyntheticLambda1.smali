.class public final synthetic Lkotlin/io/FilesKt__UtilsKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lkotlin/io/FilesKt__UtilsKt;"
    method = "copyRecursively$lambda$0$FilesKt__UtilsKt"
    proto = "(Ljava/io/File;Ljava/io/IOException;)Lkotlin/io/OnErrorAction;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/IOException;

    invoke-static {p1, p2}, Lkotlin/io/FilesKt__UtilsKt;->$r8$lambda$PN4W4m_bMsOvVN4PKSOdmJGtU3Q(Ljava/io/File;Ljava/io/IOException;)Lkotlin/io/OnErrorAction;

    move-result-object p1

    return-object p1
.end method
