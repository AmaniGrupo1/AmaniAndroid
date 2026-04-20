.class public final Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;
.super Ljava/lang/Object;
.source "RealtimePipeline.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/RealtimePipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ListenOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B)\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0004\u0008\n\u0010\u000bB\t\u0008\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000cJ\u000e\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0003J\u000e\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\r\u0010\u0016\u001a\u00020\u0017H\u0000\u00a2\u0006\u0002\u0008\u0018R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0014\u0010\u0004\u001a\u00020\u0005X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0006\u001a\u00020\u0007X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;",
        "",
        "source",
        "Lcom/google/firebase/firestore/ListenSource;",
        "serverTimestampBehavior",
        "Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;",
        "metadataChanges",
        "Lcom/google/firebase/firestore/MetadataChanges;",
        "options",
        "Lcom/google/firebase/firestore/pipeline/InternalOptions;",
        "<init>",
        "(Lcom/google/firebase/firestore/ListenSource;Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;Lcom/google/firebase/firestore/MetadataChanges;Lcom/google/firebase/firestore/pipeline/InternalOptions;)V",
        "()V",
        "getSource$com_google_firebase_firebase_firestore",
        "()Lcom/google/firebase/firestore/ListenSource;",
        "getServerTimestampBehavior$com_google_firebase_firebase_firestore",
        "()Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;",
        "getMetadataChanges$com_google_firebase_firebase_firestore",
        "()Lcom/google/firebase/firestore/MetadataChanges;",
        "withSource",
        "withServerTimestampBehavior",
        "withMetadataChanges",
        "toListenOptions",
        "Lcom/google/firebase/firestore/core/EventManager$ListenOptions;",
        "toListenOptions$com_google_firebase_firebase_firestore",
        "Companion",
        "com.google.firebase-firebase-firestore"
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
.field public static final Companion:Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions$Companion;

.field public static final DEFAULT:Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;


# instance fields
.field private final metadataChanges:Lcom/google/firebase/firestore/MetadataChanges;

.field private final serverTimestampBehavior:Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;

.field private final source:Lcom/google/firebase/firestore/ListenSource;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;->Companion:Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions$Companion;

    .line 170
    new-instance v0, Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;

    .line 171
    sget-object v1, Lcom/google/firebase/firestore/ListenSource;->DEFAULT:Lcom/google/firebase/firestore/ListenSource;

    .line 172
    sget-object v2, Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;->NONE:Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;

    .line 173
    sget-object v3, Lcom/google/firebase/firestore/MetadataChanges;->EXCLUDE:Lcom/google/firebase/firestore/MetadataChanges;

    .line 174
    sget-object v4, Lcom/google/firebase/firestore/pipeline/InternalOptions;->EMPTY:Lcom/google/firebase/firestore/pipeline/InternalOptions;

    .line 170
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;-><init>(Lcom/google/firebase/firestore/ListenSource;Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;Lcom/google/firebase/firestore/MetadataChanges;Lcom/google/firebase/firestore/pipeline/InternalOptions;)V

    sput-object v0, Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;->DEFAULT:Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 159
    nop

    .line 160
    sget-object v0, Lcom/google/firebase/firestore/ListenSource;->DEFAULT:Lcom/google/firebase/firestore/ListenSource;

    .line 161
    sget-object v1, Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;->NONE:Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;

    .line 162
    sget-object v2, Lcom/google/firebase/firestore/MetadataChanges;->EXCLUDE:Lcom/google/firebase/firestore/MetadataChanges;

    .line 163
    sget-object v3, Lcom/google/firebase/firestore/pipeline/InternalOptions;->EMPTY:Lcom/google/firebase/firestore/pipeline/InternalOptions;

    .line 159
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;-><init>(Lcom/google/firebase/firestore/ListenSource;Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;Lcom/google/firebase/firestore/MetadataChanges;Lcom/google/firebase/firestore/pipeline/InternalOptions;)V

    .line 164
    return-void
.end method

.method private constructor <init>(Lcom/google/firebase/firestore/ListenSource;Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;Lcom/google/firebase/firestore/MetadataChanges;Lcom/google/firebase/firestore/pipeline/InternalOptions;)V
    .locals 0
    .param p1, "source"    # Lcom/google/firebase/firestore/ListenSource;
    .param p2, "serverTimestampBehavior"    # Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;
    .param p3, "metadataChanges"    # Lcom/google/firebase/firestore/MetadataChanges;
    .param p4, "options"    # Lcom/google/firebase/firestore/pipeline/InternalOptions;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput-object p1, p0, Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;->source:Lcom/google/firebase/firestore/ListenSource;

    .line 153
    iput-object p2, p0, Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;->serverTimestampBehavior:Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;

    .line 154
    iput-object p3, p0, Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;->metadataChanges:Lcom/google/firebase/firestore/MetadataChanges;

    .line 151
    return-void
.end method


# virtual methods
.method public final getMetadataChanges$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/MetadataChanges;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;->metadataChanges:Lcom/google/firebase/firestore/MetadataChanges;

    return-object v0
.end method

.method public final getServerTimestampBehavior$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;->serverTimestampBehavior:Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;

    return-object v0
.end method

.method public final getSource$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/ListenSource;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;->source:Lcom/google/firebase/firestore/ListenSource;

    return-object v0
.end method

.method public final toListenOptions$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/core/EventManager$ListenOptions;
    .locals 5

    .line 211
    new-instance v0, Lcom/google/firebase/firestore/core/EventManager$ListenOptions;

    invoke-direct {v0}, Lcom/google/firebase/firestore/core/EventManager$ListenOptions;-><init>()V

    .line 212
    .local v0, "result":Lcom/google/firebase/firestore/core/EventManager$ListenOptions;
    iget-object v1, p0, Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;->source:Lcom/google/firebase/firestore/ListenSource;

    iput-object v1, v0, Lcom/google/firebase/firestore/core/EventManager$ListenOptions;->source:Lcom/google/firebase/firestore/ListenSource;

    .line 213
    iget-object v1, p0, Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;->metadataChanges:Lcom/google/firebase/firestore/MetadataChanges;

    sget-object v2, Lcom/google/firebase/firestore/MetadataChanges;->INCLUDE:Lcom/google/firebase/firestore/MetadataChanges;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    iput-boolean v1, v0, Lcom/google/firebase/firestore/core/EventManager$ListenOptions;->includeQueryMetadataChanges:Z

    .line 214
    iget-object v1, p0, Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;->metadataChanges:Lcom/google/firebase/firestore/MetadataChanges;

    sget-object v2, Lcom/google/firebase/firestore/MetadataChanges;->INCLUDE:Lcom/google/firebase/firestore/MetadataChanges;

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    iput-boolean v3, v0, Lcom/google/firebase/firestore/core/EventManager$ListenOptions;->includeDocumentMetadataChanges:Z

    .line 215
    iput-boolean v4, v0, Lcom/google/firebase/firestore/core/EventManager$ListenOptions;->waitForSyncWhenOnline:Z

    .line 216
    iget-object v1, p0, Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;->serverTimestampBehavior:Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;

    iput-object v1, v0, Lcom/google/firebase/firestore/core/EventManager$ListenOptions;->serverTimestampBehavior:Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;

    .line 217
    return-object v0
.end method

.method public final withMetadataChanges(Lcom/google/firebase/firestore/MetadataChanges;)Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;
    .locals 4
    .param p1, "metadataChanges"    # Lcom/google/firebase/firestore/MetadataChanges;

    const-string v0, "metadataChanges"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    new-instance v0, Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;

    iget-object v1, p0, Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;->source:Lcom/google/firebase/firestore/ListenSource;

    iget-object v2, p0, Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;->serverTimestampBehavior:Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;

    sget-object v3, Lcom/google/firebase/firestore/pipeline/InternalOptions;->EMPTY:Lcom/google/firebase/firestore/pipeline/InternalOptions;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;-><init>(Lcom/google/firebase/firestore/ListenSource;Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;Lcom/google/firebase/firestore/MetadataChanges;Lcom/google/firebase/firestore/pipeline/InternalOptions;)V

    return-object v0
.end method

.method public final withServerTimestampBehavior(Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;)Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;
    .locals 4
    .param p1, "serverTimestampBehavior"    # Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;

    const-string v0, "serverTimestampBehavior"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    new-instance v0, Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;

    iget-object v1, p0, Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;->source:Lcom/google/firebase/firestore/ListenSource;

    iget-object v2, p0, Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;->metadataChanges:Lcom/google/firebase/firestore/MetadataChanges;

    sget-object v3, Lcom/google/firebase/firestore/pipeline/InternalOptions;->EMPTY:Lcom/google/firebase/firestore/pipeline/InternalOptions;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;-><init>(Lcom/google/firebase/firestore/ListenSource;Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;Lcom/google/firebase/firestore/MetadataChanges;Lcom/google/firebase/firestore/pipeline/InternalOptions;)V

    return-object v0
.end method

.method public final withSource(Lcom/google/firebase/firestore/ListenSource;)Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;
    .locals 4
    .param p1, "source"    # Lcom/google/firebase/firestore/ListenSource;

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    new-instance v0, Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;

    iget-object v1, p0, Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;->serverTimestampBehavior:Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;

    iget-object v2, p0, Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;->metadataChanges:Lcom/google/firebase/firestore/MetadataChanges;

    sget-object v3, Lcom/google/firebase/firestore/pipeline/InternalOptions;->EMPTY:Lcom/google/firebase/firestore/pipeline/InternalOptions;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;-><init>(Lcom/google/firebase/firestore/ListenSource;Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;Lcom/google/firebase/firestore/MetadataChanges;Lcom/google/firebase/firestore/pipeline/InternalOptions;)V

    return-object v0
.end method
