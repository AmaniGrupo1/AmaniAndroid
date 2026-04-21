.class public final Lorg/ies/tierno/applicationamani/utils/LogUtils;
.super Ljava/lang/Object;
.source "LogUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLogUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LogUtils.kt\norg/ies/tierno/applicationamani/utils/LogUtils\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,67:1\n1#2:68\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0008\u0005\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0015\u0010\n\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\n\u0010\u000bR\u0014\u0010\u000c\u001a\u00020\u00068\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\rR\u001c\u0010\u0010\u001a\n \u000f*\u0004\u0018\u00010\u000e0\u000e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lorg/ies/tierno/applicationamani/utils/LogUtils;",
        "",
        "<init>",
        "()V",
        "Landroid/content/Context;",
        "context",
        "",
        "obtenerLogs",
        "(Landroid/content/Context;)Ljava/lang/String;",
        "",
        "compartirLogs",
        "(Landroid/content/Context;)V",
        "LOG_FILE",
        "Ljava/lang/String;",
        "j$/time/format/DateTimeFormatter",
        "kotlin.jvm.PlatformType",
        "DATE_FORMAT",
        "Lj$/time/format/DateTimeFormatter;",
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

.field private static final DATE_FORMAT:Lj$/time/format/DateTimeFormatter;

.field public static final INSTANCE:Lorg/ies/tierno/applicationamani/utils/LogUtils;

.field private static final LOG_FILE:Ljava/lang/String; = "amani_logs.txt"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ies/tierno/applicationamani/utils/LogUtils;

    invoke-direct {v0}, Lorg/ies/tierno/applicationamani/utils/LogUtils;-><init>()V

    sput-object v0, Lorg/ies/tierno/applicationamani/utils/LogUtils;->INSTANCE:Lorg/ies/tierno/applicationamani/utils/LogUtils;

    .line 15
    const-string v0, "yyyy-MM-dd"

    invoke-static {v0}, Lj$/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Lj$/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/ies/tierno/applicationamani/utils/LogUtils;->DATE_FORMAT:Lj$/time/format/DateTimeFormatter;

    const/16 v0, 0x8

    sput v0, Lorg/ies/tierno/applicationamani/utils/LogUtils;->$stable:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compartirLogs(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "amani_logs.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 41
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    invoke-static {}, Lj$/time/LocalDate;->now()Lj$/time/LocalDate;

    move-result-object v1

    sget-object v2, Lorg/ies/tierno/applicationamani/utils/LogUtils;->DATE_FORMAT:Lj$/time/format/DateTimeFormatter;

    invoke-virtual {v1, v2}, Lj$/time/LocalDate;->format(Lj$/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, "fecha":Ljava/lang/String;
    nop

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".provider"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 49
    nop

    .line 46
    invoke-static {p1, v2, v0}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 52
    .local v2, "uri":Landroid/net/Uri;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v4, v3

    .local v4, "$this$compartirLogs_u24lambda_u241\\1":Landroid/content/Intent;
    const/4 v5, 0x0

    .line 53
    .local v5, "$i$a$-apply-LogUtils$compartirLogs$shareIntent$1\\1\\52\\0":I
    const-string v6, "text/plain"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Logs AMANI - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.intent.extra.SUBJECT"

    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    const-string v6, "android.intent.extra.STREAM"

    move-object v7, v2

    check-cast v7, Landroid/os/Parcelable;

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 56
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 57
    const/high16 v6, 0x10000000

    invoke-virtual {v4, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 58
    nop

    .line 52
    .end local v4    # "$this$compartirLogs_u24lambda_u241\\1":Landroid/content/Intent;
    .end local v5    # "$i$a$-apply-LogUtils$compartirLogs$shareIntent$1\\1\\52\\0":I
    nop

    .line 60
    .local v3, "shareIntent":Landroid/content/Intent;
    nop

    .line 61
    const-string v4, "Compartir logs"

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v4

    move-object v5, v4

    .local v5, "$this$compartirLogs_u24lambda_u242\\2":Landroid/content/Intent;
    const/4 v7, 0x0

    .line 62
    .local v7, "$i$a$-apply-LogUtils$compartirLogs$1\\2\\61\\0":I
    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 63
    nop

    .line 61
    .end local v5    # "$this$compartirLogs_u24lambda_u242\\2":Landroid/content/Intent;
    .end local v7    # "$i$a$-apply-LogUtils$compartirLogs$1\\2\\61\\0":I
    nop

    .line 60
    invoke-virtual {p1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 65
    return-void

    .line 42
    .end local v1    # "fecha":Ljava/lang/String;
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v3    # "shareIntent":Landroid/content/Intent;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No hay fichero de log disponible"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final obtenerLogs(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "amani_logs.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 25
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, "Sin logs disponibles"

    if-eqz v1, :cond_2

    .line 26
    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v1}, Lkotlin/io/FilesKt;->readText$default(Ljava/io/File;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    .line 68
    const/4 v1, 0x0

    .line 26
    .local v1, "$i$a$-ifEmpty-LogUtils$obtenerLogs$1\\1\\26\\0":I
    nop

    .end local v1    # "$i$a$-ifEmpty-LogUtils$obtenerLogs$1\\1\\26\\0":I
    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    check-cast v2, Ljava/lang/String;

    goto :goto_2

    .line 28
    :cond_2
    nop

    .line 25
    :goto_2
    return-object v2
.end method
