.class public final Landroidx/media3/exoplayer/drm/ExoMediaDrm$AppManagedProvider;
.super Ljava/lang/Object;
.source "ExoMediaDrm.java"

# interfaces
.implements Landroidx/media3/exoplayer/drm/ExoMediaDrm$Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/drm/ExoMediaDrm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AppManagedProvider"
.end annotation


# instance fields
.field private final exoMediaDrm:Landroidx/media3/exoplayer/drm/ExoMediaDrm;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/drm/ExoMediaDrm;)V
    .locals 0
    .param p1, "exoMediaDrm"    # Landroidx/media3/exoplayer/drm/ExoMediaDrm;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Landroidx/media3/exoplayer/drm/ExoMediaDrm$AppManagedProvider;->exoMediaDrm:Landroidx/media3/exoplayer/drm/ExoMediaDrm;

    .line 87
    return-void
.end method


# virtual methods
.method public acquireExoMediaDrm(Ljava/util/UUID;)Landroidx/media3/exoplayer/drm/ExoMediaDrm;
    .locals 1
    .param p1, "uuid"    # Ljava/util/UUID;

    .line 91
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/ExoMediaDrm$AppManagedProvider;->exoMediaDrm:Landroidx/media3/exoplayer/drm/ExoMediaDrm;

    invoke-interface {v0}, Landroidx/media3/exoplayer/drm/ExoMediaDrm;->acquire()V

    .line 92
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/ExoMediaDrm$AppManagedProvider;->exoMediaDrm:Landroidx/media3/exoplayer/drm/ExoMediaDrm;

    return-object v0
.end method
