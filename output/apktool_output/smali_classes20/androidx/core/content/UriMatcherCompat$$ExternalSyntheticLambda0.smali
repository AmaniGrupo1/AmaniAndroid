.class public final synthetic Landroidx/core/content/UriMatcherCompat$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/core/util/Predicate;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/core/content/UriMatcherCompat;"
    method = "lambda$asPredicate$0"
    proto = "(Landroid/content/UriMatcher;Landroid/net/Uri;)Z"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroid/content/UriMatcher;


# direct methods
.method public synthetic constructor <init>(Landroid/content/UriMatcher;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/content/UriMatcherCompat$$ExternalSyntheticLambda0;->f$0:Landroid/content/UriMatcher;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/core/content/UriMatcherCompat$$ExternalSyntheticLambda0;->f$0:Landroid/content/UriMatcher;

    check-cast p1, Landroid/net/Uri;

    invoke-static {v0, p1}, Landroidx/core/content/UriMatcherCompat;->lambda$asPredicate$0(Landroid/content/UriMatcher;Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method
