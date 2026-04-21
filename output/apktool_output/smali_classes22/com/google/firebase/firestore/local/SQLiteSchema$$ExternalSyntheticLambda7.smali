.class public final synthetic Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/firebase/firestore/util/Consumer;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/google/firebase/firestore/local/SQLiteSchema;"
    method = "lambda$dropLastLimboFreeSnapshotVersion$6"
    proto = "(Landroid/database/Cursor;)V"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/firestore/local/SQLiteSchema;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/firestore/local/SQLiteSchema;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda7;->f$0:Lcom/google/firebase/firestore/local/SQLiteSchema;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda7;->f$0:Lcom/google/firebase/firestore/local/SQLiteSchema;

    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/local/SQLiteSchema;->lambda$dropLastLimboFreeSnapshotVersion$6$com-google-firebase-firestore-local-SQLiteSchema(Landroid/database/Cursor;)V

    return-void
.end method
