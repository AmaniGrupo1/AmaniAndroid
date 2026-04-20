.class public Lcom/google/firebase/appcheck/internal/util/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field static final DEFAULT_LOGGER:Lcom/google/firebase/appcheck/internal/util/Logger;

.field public static final TAG:Ljava/lang/String; = "FirebaseAppCheck"


# instance fields
.field private logLevel:I

.field private final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lcom/google/firebase/appcheck/internal/util/Logger;

    const-string v1, "FirebaseAppCheck"

    invoke-direct {v0, v1}, Lcom/google/firebase/appcheck/internal/util/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/firebase/appcheck/internal/util/Logger;->DEFAULT_LOGGER:Lcom/google/firebase/appcheck/internal/util/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/google/firebase/appcheck/internal/util/Logger;->tag:Ljava/lang/String;

    .line 32
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/firebase/appcheck/internal/util/Logger;->logLevel:I

    .line 33
    return-void
.end method

.method private canLog(I)Z
    .locals 1
    .param p1, "level"    # I

    .line 42
    iget v0, p0, Lcom/google/firebase/appcheck/internal/util/Logger;->logLevel:I

    if-le v0, p1, :cond_1

    iget-object v0, p0, Lcom/google/firebase/appcheck/internal/util/Logger;->tag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static getLogger()Lcom/google/firebase/appcheck/internal/util/Logger;
    .locals 1

    .line 38
    sget-object v0, Lcom/google/firebase/appcheck/internal/util/Logger;->DEFAULT_LOGGER:Lcom/google/firebase/appcheck/internal/util/Logger;

    return-object v0
.end method


# virtual methods
.method public d(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 76
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/appcheck/internal/util/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .line 46
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/firebase/appcheck/internal/util/Logger;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/google/firebase/appcheck/internal/util/Logger;->tag:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 49
    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 92
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/appcheck/internal/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .line 70
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/google/firebase/appcheck/internal/util/Logger;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/google/firebase/appcheck/internal/util/Logger;->tag:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    :cond_0
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 84
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/appcheck/internal/util/Logger;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .line 58
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/firebase/appcheck/internal/util/Logger;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/google/firebase/appcheck/internal/util/Logger;->tag:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    :cond_0
    return-void
.end method

.method public log(ILjava/lang/String;)V
    .locals 1
    .param p1, "priority"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .line 96
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/firebase/appcheck/internal/util/Logger;->log(ILjava/lang/String;Z)V

    .line 97
    return-void
.end method

.method public log(ILjava/lang/String;Z)V
    .locals 1
    .param p1, "priority"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "forceLog"    # Z

    .line 100
    if-nez p3, :cond_0

    invoke-direct {p0, p1}, Lcom/google/firebase/appcheck/internal/util/Logger;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/appcheck/internal/util/Logger;->tag:Ljava/lang/String;

    invoke-static {p1, v0, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_1
    return-void
.end method

.method public v(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 80
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/appcheck/internal/util/Logger;->v(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    return-void
.end method

.method public v(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .line 52
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/firebase/appcheck/internal/util/Logger;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/google/firebase/appcheck/internal/util/Logger;->tag:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    :cond_0
    return-void
.end method

.method public w(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 88
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/appcheck/internal/util/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .line 64
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/firebase/appcheck/internal/util/Logger;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/google/firebase/appcheck/internal/util/Logger;->tag:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    :cond_0
    return-void
.end method
