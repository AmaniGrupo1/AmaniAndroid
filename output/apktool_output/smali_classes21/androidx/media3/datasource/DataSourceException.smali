.class public Landroidx/media3/datasource/DataSourceException;
.super Ljava/io/IOException;
.source "DataSourceException.java"


# static fields
.field public static final POSITION_OUT_OF_RANGE:I = 0x7d8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field public final reason:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "reason"    # I

    .line 69
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 70
    iput p1, p0, Landroidx/media3/datasource/DataSourceException;->reason:I

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .line 95
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 96
    iput p2, p0, Landroidx/media3/datasource/DataSourceException;->reason:I

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;I)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .param p3, "reason"    # I

    .line 112
    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 113
    iput p3, p0, Landroidx/media3/datasource/DataSourceException;->reason:I

    .line 114
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;I)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;
    .param p2, "reason"    # I

    .line 82
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 83
    iput p2, p0, Landroidx/media3/datasource/DataSourceException;->reason:I

    .line 84
    return-void
.end method

.method public static isCausedByPositionOutOfRange(Ljava/io/IOException;)Z
    .locals 3
    .param p0, "e"    # Ljava/io/IOException;

    .line 33
    move-object v0, p0

    .line 34
    .local v0, "cause":Ljava/lang/Throwable;
    :goto_0
    if-eqz v0, :cond_1

    .line 35
    instance-of v1, v0, Landroidx/media3/datasource/DataSourceException;

    if-eqz v1, :cond_0

    .line 36
    move-object v1, v0

    check-cast v1, Landroidx/media3/datasource/DataSourceException;

    iget v1, v1, Landroidx/media3/datasource/DataSourceException;->reason:I

    .line 37
    .local v1, "reason":I
    const/16 v2, 0x7d8

    if-ne v1, v2, :cond_0

    .line 38
    const/4 v2, 0x1

    return v2

    .line 41
    .end local v1    # "reason":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    .line 43
    :cond_1
    const/4 v1, 0x0

    return v1
.end method
