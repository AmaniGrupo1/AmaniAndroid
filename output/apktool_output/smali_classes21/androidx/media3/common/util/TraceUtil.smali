.class public final Landroidx/media3/common/util/TraceUtil;
.super Ljava/lang/Object;
.source "TraceUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beginSection(Ljava/lang/String;)V
    .locals 0
    .param p0, "sectionName"    # Ljava/lang/String;

    .line 38
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public static endSection()V
    .locals 0

    .line 49
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 51
    return-void
.end method
