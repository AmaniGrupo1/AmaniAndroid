.class public final synthetic Landroidx/emoji2/text/EmojiCompatInitializer$BackgroundDefaultLoader$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/emoji2/text/EmojiCompatInitializer$BackgroundDefaultLoader;"
    method = "lambda$load$0"
    proto = "(Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoaderCallback;Ljava/util/concurrent/ThreadPoolExecutor;)V"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/emoji2/text/EmojiCompatInitializer$BackgroundDefaultLoader;

.field public final synthetic f$1:Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoaderCallback;

.field public final synthetic f$2:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public synthetic constructor <init>(Landroidx/emoji2/text/EmojiCompatInitializer$BackgroundDefaultLoader;Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoaderCallback;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/emoji2/text/EmojiCompatInitializer$BackgroundDefaultLoader$$ExternalSyntheticLambda0;->f$0:Landroidx/emoji2/text/EmojiCompatInitializer$BackgroundDefaultLoader;

    iput-object p2, p0, Landroidx/emoji2/text/EmojiCompatInitializer$BackgroundDefaultLoader$$ExternalSyntheticLambda0;->f$1:Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoaderCallback;

    iput-object p3, p0, Landroidx/emoji2/text/EmojiCompatInitializer$BackgroundDefaultLoader$$ExternalSyntheticLambda0;->f$2:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompatInitializer$BackgroundDefaultLoader$$ExternalSyntheticLambda0;->f$0:Landroidx/emoji2/text/EmojiCompatInitializer$BackgroundDefaultLoader;

    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompatInitializer$BackgroundDefaultLoader$$ExternalSyntheticLambda0;->f$1:Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoaderCallback;

    iget-object v2, p0, Landroidx/emoji2/text/EmojiCompatInitializer$BackgroundDefaultLoader$$ExternalSyntheticLambda0;->f$2:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v1, v2}, Landroidx/emoji2/text/EmojiCompatInitializer$BackgroundDefaultLoader;->lambda$load$0$androidx-emoji2-text-EmojiCompatInitializer$BackgroundDefaultLoader(Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoaderCallback;Ljava/util/concurrent/ThreadPoolExecutor;)V

    return-void
.end method
