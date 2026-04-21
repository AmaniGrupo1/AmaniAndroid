.class public final synthetic Lkotlin/text/StringsKt___StringsKt$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lkotlin/text/StringsKt___StringsKt;"
    method = "withIndex$lambda$0$StringsKt___StringsKt"
    proto = "(Ljava/lang/CharSequence;)Ljava/util/Iterator;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Ljava/lang/CharSequence;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/text/StringsKt___StringsKt$$ExternalSyntheticLambda3;->f$0:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lkotlin/text/StringsKt___StringsKt$$ExternalSyntheticLambda3;->f$0:Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt___StringsKt;->$r8$lambda$TpbVe85WogIiSft9KOv3SRKW29k(Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
