.class public final Lorg/ies/tierno/applicationamani/utils/FileLoggingTree;
.super Ltimber/log/Timber$Tree;
.source "FileLoggingTree.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ies/tierno/applicationamani/utils/FileLoggingTree$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0006\u0008\u0007\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J,\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0014J\u0008\u0010\u0013\u001a\u00020\u000bH\u0002J\u0018\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u000fH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u00020\u00078BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0018"
    }
    d2 = {
        "Lorg/ies/tierno/applicationamani/utils/FileLoggingTree;",
        "Ltimber/log/Timber$Tree;",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "logFile",
        "Ljava/io/File;",
        "getLogFile",
        "()Ljava/io/File;",
        "log",
        "",
        "priority",
        "",
        "tag",
        "",
        "message",
        "t",
        "",
        "rotateIfNeeded",
        "appendText",
        "file",
        "text",
        "Companion",
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

.field public static final Companion:Lorg/ies/tierno/applicationamani/utils/FileLoggingTree$Companion;

.field private static final DATE_FORMAT:Lj$/time/format/DateTimeFormatter;

.field private static final LOG_FILE:Ljava/lang/String; = "amani_logs.txt"

.field private static final MAX_SIZE_BYTES:J = 0x100000L

.field private static final OLD_LOG_FILE:Ljava/lang/String; = "amani_logs_old.txt"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/ies/tierno/applicationamani/utils/FileLoggingTree$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ies/tierno/applicationamani/utils/FileLoggingTree$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ies/tierno/applicationamani/utils/FileLoggingTree;->Companion:Lorg/ies/tierno/applicationamani/utils/FileLoggingTree$Companion;

    const/16 v0, 0x8

    sput v0, Lorg/ies/tierno/applicationamani/utils/FileLoggingTree;->$stable:I

    .line 27
    const-string v0, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v0}, Lj$/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Lj$/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/ies/tierno/applicationamani/utils/FileLoggingTree;->DATE_FORMAT:Lj$/time/format/DateTimeFormatter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ltimber/log/Timber$Tree;-><init>()V

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/utils/FileLoggingTree;->context:Landroid/content/Context;

    return-void
.end method

.method private final appendText(Ljava/io/File;Ljava/lang/String;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .param p2, "text"    # Ljava/lang/String;

    .line 71
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p1, p2, v0, v1, v0}, Lkotlin/io/FilesKt;->appendText$default(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)V

    .line 72
    return-void
.end method

.method private final getLogFile()Ljava/io/File;
    .locals 3

    .line 31
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/utils/FileLoggingTree;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "amani_logs.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private final rotateIfNeeded()V
    .locals 5

    .line 61
    invoke-direct {p0}, Lorg/ies/tierno/applicationamani/utils/FileLoggingTree;->getLogFile()Ljava/io/File;

    move-result-object v0

    .line 62
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/32 v3, 0x100000

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 63
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/utils/FileLoggingTree;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "amani_logs_old.txt"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 64
    .local v1, "oldFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 65
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 66
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 68
    .end local v1    # "oldFile":Ljava/io/File;
    :cond_0
    return-void
.end method


# virtual methods
.method protected log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 18
    .param p1, "priority"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "t"    # Ljava/lang/Throwable;

    move/from16 v1, p1

    move-object/from16 v2, p3

    const-string v0, "message"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    const/4 v0, 0x5

    if-ge v1, v0, :cond_0

    return-void

    .line 36
    :cond_0
    invoke-static {}, Lj$/time/LocalDateTime;->now()Lj$/time/LocalDateTime;

    move-result-object v0

    sget-object v3, Lorg/ies/tierno/applicationamani/utils/FileLoggingTree;->DATE_FORMAT:Lj$/time/format/DateTimeFormatter;

    invoke-virtual {v0, v3}, Lj$/time/LocalDateTime;->format(Lj$/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v3

    .line 37
    .local v3, "timestamp":Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 40
    const-string v0, "?"

    goto :goto_0

    .line 39
    :pswitch_0
    const-string v0, "E"

    goto :goto_0

    .line 38
    :pswitch_1
    const-string v0, "W"

    .line 37
    :goto_0
    move-object v4, v0

    .line 43
    .local v4, "level":Ljava/lang/String;
    if-nez p2, :cond_1

    const-string v0, "null"

    goto :goto_1

    :cond_1
    move-object/from16 v0, p2

    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ": "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 45
    .local v5, "prefix":Ljava/lang/String;
    invoke-static {}, Lkotlin/collections/CollectionsKt;->createListBuilder()Ljava/util/List;

    move-result-object v0

    move-object v6, v0

    .local v6, "$this$log_u24lambda_u240\\1":Ljava/util/List;
    const/4 v7, 0x0

    .line 46
    .local v7, "$i$a$-buildList-FileLoggingTree$log$linesToWrite$1\\1\\45\\0":I
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    if-eqz p4, :cond_2

    .line 48
    invoke-static/range {p4 .. p4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "getStackTraceString(...)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_2
    nop

    .line 45
    .end local v6    # "$this$log_u24lambda_u240\\1":Ljava/util/List;
    .end local v7    # "$i$a$-buildList-FileLoggingTree$log$linesToWrite$1\\1\\45\\0":I
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->build(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 52
    .local v6, "linesToWrite":Ljava/util/List;
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object/from16 v0, p0

    check-cast v0, Lorg/ies/tierno/applicationamani/utils/FileLoggingTree;

    .local v0, "$this$log_u24lambda_u241\\2":Lorg/ies/tierno/applicationamani/utils/FileLoggingTree;
    const/4 v7, 0x0

    .line 53
    .local v7, "$i$a$-runCatching-FileLoggingTree$log$1\\2\\52\\0":I
    invoke-direct {v0}, Lorg/ies/tierno/applicationamani/utils/FileLoggingTree;->rotateIfNeeded()V

    .line 54
    invoke-direct {v0}, Lorg/ies/tierno/applicationamani/utils/FileLoggingTree;->getLogFile()Ljava/io/File;

    move-result-object v8

    move-object v9, v6

    check-cast v9, Ljava/lang/Iterable;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v10

    const-string v11, "lineSeparator(...)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Ljava/lang/CharSequence;

    const/16 v16, 0x3e

    const/16 v17, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v9 .. v17}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v8, v9}, Lorg/ies/tierno/applicationamani/utils/FileLoggingTree;->appendText(Ljava/io/File;Ljava/lang/String;)V

    .line 55
    nop

    .end local v0    # "$this$log_u24lambda_u241\\2":Lorg/ies/tierno/applicationamani/utils/FileLoggingTree;
    .end local v7    # "$i$a$-runCatching-FileLoggingTree$log$1\\2\\52\\0":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 52
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    sget-object v7, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 55
    :goto_2
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_3

    .local v0, "e\\4":Ljava/lang/Throwable;
    const/4 v7, 0x0

    .line 56
    .local v7, "$i$a$-onFailure-FileLoggingTree$log$2\\4\\55\\0":I
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error al escribir en log: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "FileLoggingTree"

    invoke-static {v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    nop

    .line 55
    .end local v0    # "e\\4":Ljava/lang/Throwable;
    .end local v7    # "$i$a$-onFailure-FileLoggingTree$log$2\\4\\55\\0":I
    nop

    .line 58
    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
