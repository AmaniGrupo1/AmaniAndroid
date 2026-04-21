.class public final synthetic Lcom/google/firebase/firestore/local/SQLiteOverlayMigrationManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/firebase/firestore/util/Consumer;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/google/firebase/firestore/local/SQLiteOverlayMigrationManager;"
    method = "lambda$hasPendingOverlayMigration$2"
    proto = "([Ljava/lang/Boolean;Landroid/database/Cursor;)V"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:[Ljava/lang/Boolean;


# direct methods
.method public synthetic constructor <init>([Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/local/SQLiteOverlayMigrationManager$$ExternalSyntheticLambda1;->f$0:[Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteOverlayMigrationManager$$ExternalSyntheticLambda1;->f$0:[Ljava/lang/Boolean;

    check-cast p1, Landroid/database/Cursor;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/local/SQLiteOverlayMigrationManager;->lambda$hasPendingOverlayMigration$2([Ljava/lang/Boolean;Landroid/database/Cursor;)V

    return-void
.end method
