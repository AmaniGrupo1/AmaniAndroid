.class public final Landroidx/datastore/core/FileDiagnostics;
.super Ljava/lang/Object;
.source "FileDiagnostics.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0005J\u0018\u0010\t\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0005H\u0002J\u0018\u0010\n\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u0005H\u0002\u00a8\u0006\u000c"
    }
    d2 = {
        "Landroidx/datastore/core/FileDiagnostics;",
        "",
        "<init>",
        "()V",
        "attachFileDebugInfo",
        "Ljava/io/IOException;",
        "file",
        "Ljava/io/File;",
        "cause",
        "attachParentStacktrace",
        "attachFileSystemMessage",
        "origException",
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
.field public static final INSTANCE:Landroidx/datastore/core/FileDiagnostics;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/datastore/core/FileDiagnostics;

    invoke-direct {v0}, Landroidx/datastore/core/FileDiagnostics;-><init>()V

    sput-object v0, Landroidx/datastore/core/FileDiagnostics;->INSTANCE:Landroidx/datastore/core/FileDiagnostics;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final attachFileSystemMessage(Ljava/io/File;Ljava/io/IOException;)Ljava/io/IOException;
    .locals 6
    .param p1, "file"    # Ljava/io/File;
    .param p2, "origException"    # Ljava/io/IOException;

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v0

    .local v1, "$this$attachFileSystemMessage_u24lambda_u240":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 117
    .local v2, "$i$a$-buildString-FileDiagnostics$attachFileSystemMessage$message$1":I
    const-string v3, "Inoperable file:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    nop

    .line 119
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " canonical["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] freeSpace["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 120
    :catch_0
    move-exception v3

    .line 121
    .local v3, "ignored":Ljava/io/IOException;
    const-string v4, " failed to attach additional metadata"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .end local v3    # "ignored":Ljava/io/IOException;
    :goto_0
    nop

    .line 116
    .end local v1    # "$this$attachFileSystemMessage_u24lambda_u240":Ljava/lang/StringBuilder;
    .end local v2    # "$i$a$-buildString-FileDiagnostics$attachFileSystemMessage$message$1":I
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Ljava/io/IOException;

    move-object v2, p2

    check-cast v2, Ljava/lang/Throwable;

    invoke-direct {v1, v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method private final attachParentStacktrace(Ljava/io/File;Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .param p2, "cause"    # Ljava/io/IOException;

    .line 74
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 75
    .local v0, "parent":Ljava/io/File;
    if-nez v0, :cond_0

    .line 76
    invoke-direct {p0, p1, p2}, Landroidx/datastore/core/FileDiagnostics;->attachFileSystemMessage(Ljava/io/File;Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v1

    return-object v1

    .line 79
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 80
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 81
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 82
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    invoke-direct {p0, p1, p2}, Landroidx/datastore/core/FileDiagnostics;->attachFileSystemMessage(Ljava/io/File;Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v1

    goto :goto_0

    .line 85
    :cond_1
    invoke-direct {p0, p1, p2}, Landroidx/datastore/core/FileDiagnostics;->attachFileSystemMessage(Ljava/io/File;Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v1

    goto :goto_0

    .line 88
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 89
    invoke-direct {p0, p1, p2}, Landroidx/datastore/core/FileDiagnostics;->attachFileSystemMessage(Ljava/io/File;Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v1

    goto :goto_0

    .line 91
    :cond_3
    invoke-direct {p0, p1, p2}, Landroidx/datastore/core/FileDiagnostics;->attachFileSystemMessage(Ljava/io/File;Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v1

    goto :goto_0

    .line 95
    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 96
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 97
    invoke-direct {p0, p1, p2}, Landroidx/datastore/core/FileDiagnostics;->attachFileSystemMessage(Ljava/io/File;Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v1

    goto :goto_0

    .line 99
    :cond_5
    invoke-direct {p0, p1, p2}, Landroidx/datastore/core/FileDiagnostics;->attachFileSystemMessage(Ljava/io/File;Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v1

    goto :goto_0

    .line 102
    :cond_6
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 103
    invoke-direct {p0, p1, p2}, Landroidx/datastore/core/FileDiagnostics;->attachFileSystemMessage(Ljava/io/File;Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v1

    goto :goto_0

    .line 105
    :cond_7
    invoke-direct {p0, p1, p2}, Landroidx/datastore/core/FileDiagnostics;->attachFileSystemMessage(Ljava/io/File;Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v1

    goto :goto_0

    .line 111
    :cond_8
    invoke-direct {p0, p1, p2}, Landroidx/datastore/core/FileDiagnostics;->attachFileSystemMessage(Ljava/io/File;Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v1

    .line 79
    :goto_0
    return-object v1
.end method


# virtual methods
.method public final attachFileDebugInfo(Ljava/io/File;Ljava/io/IOException;)Ljava/io/IOException;
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "cause"    # Ljava/io/IOException;

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cause"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 38
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 39
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-direct {p0, p1, p2}, Landroidx/datastore/core/FileDiagnostics;->attachParentStacktrace(Ljava/io/File;Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    goto :goto_0

    .line 43
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/datastore/core/FileDiagnostics;->attachParentStacktrace(Ljava/io/File;Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47
    invoke-direct {p0, p1, p2}, Landroidx/datastore/core/FileDiagnostics;->attachParentStacktrace(Ljava/io/File;Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    goto :goto_0

    .line 49
    :cond_2
    invoke-direct {p0, p1, p2}, Landroidx/datastore/core/FileDiagnostics;->attachParentStacktrace(Ljava/io/File;Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    goto :goto_0

    .line 53
    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 54
    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 55
    invoke-direct {p0, p1, p2}, Landroidx/datastore/core/FileDiagnostics;->attachParentStacktrace(Ljava/io/File;Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    goto :goto_0

    .line 57
    :cond_4
    invoke-direct {p0, p1, p2}, Landroidx/datastore/core/FileDiagnostics;->attachParentStacktrace(Ljava/io/File;Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    goto :goto_0

    .line 60
    :cond_5
    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 61
    invoke-direct {p0, p1, p2}, Landroidx/datastore/core/FileDiagnostics;->attachParentStacktrace(Ljava/io/File;Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    goto :goto_0

    .line 63
    :cond_6
    invoke-direct {p0, p1, p2}, Landroidx/datastore/core/FileDiagnostics;->attachParentStacktrace(Ljava/io/File;Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    goto :goto_0

    .line 69
    :cond_7
    invoke-direct {p0, p1, p2}, Landroidx/datastore/core/FileDiagnostics;->attachParentStacktrace(Ljava/io/File;Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    .line 37
    :goto_0
    return-object v0
.end method
