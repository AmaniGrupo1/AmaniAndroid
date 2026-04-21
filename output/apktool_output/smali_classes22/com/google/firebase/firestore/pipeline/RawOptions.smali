.class public final Lcom/google/firebase/firestore/pipeline/RawOptions;
.super Lcom/google/firebase/firestore/pipeline/AbstractOptions;
.source "options.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/pipeline/RawOptions$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/firebase/firestore/pipeline/AbstractOptions<",
        "Lcom/google/firebase/firestore/pipeline/RawOptions;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \u00082\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0008B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0015\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0003H\u0010\u00a2\u0006\u0002\u0008\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/google/firebase/firestore/pipeline/RawOptions;",
        "Lcom/google/firebase/firestore/pipeline/AbstractOptions;",
        "options",
        "Lcom/google/firebase/firestore/pipeline/InternalOptions;",
        "<init>",
        "(Lcom/google/firebase/firestore/pipeline/InternalOptions;)V",
        "self",
        "self$com_google_firebase_firebase_firestore",
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
.field public static final Companion:Lcom/google/firebase/firestore/pipeline/RawOptions$Companion;

.field public static final DEFAULT:Lcom/google/firebase/firestore/pipeline/RawOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/firebase/firestore/pipeline/RawOptions$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/pipeline/RawOptions$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/firebase/firestore/pipeline/RawOptions;->Companion:Lcom/google/firebase/firestore/pipeline/RawOptions$Companion;

    .line 162
    new-instance v0, Lcom/google/firebase/firestore/pipeline/RawOptions;

    sget-object v1, Lcom/google/firebase/firestore/pipeline/InternalOptions;->EMPTY:Lcom/google/firebase/firestore/pipeline/InternalOptions;

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/pipeline/RawOptions;-><init>(Lcom/google/firebase/firestore/pipeline/InternalOptions;)V

    sput-object v0, Lcom/google/firebase/firestore/pipeline/RawOptions;->DEFAULT:Lcom/google/firebase/firestore/pipeline/RawOptions;

    return-void
.end method

.method private constructor <init>(Lcom/google/firebase/firestore/pipeline/InternalOptions;)V
    .locals 0
    .param p1, "options"    # Lcom/google/firebase/firestore/pipeline/InternalOptions;

    .line 158
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/pipeline/AbstractOptions;-><init>(Lcom/google/firebase/firestore/pipeline/InternalOptions;)V

    .line 157
    return-void
.end method


# virtual methods
.method public bridge synthetic self$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/pipeline/InternalOptions;)Lcom/google/firebase/firestore/pipeline/AbstractOptions;
    .locals 1
    .param p1, "options"    # Lcom/google/firebase/firestore/pipeline/InternalOptions;

    .line 157
    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/pipeline/RawOptions;->self$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/pipeline/InternalOptions;)Lcom/google/firebase/firestore/pipeline/RawOptions;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/pipeline/AbstractOptions;

    return-object v0
.end method

.method public self$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/pipeline/InternalOptions;)Lcom/google/firebase/firestore/pipeline/RawOptions;
    .locals 1
    .param p1, "options"    # Lcom/google/firebase/firestore/pipeline/InternalOptions;

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    new-instance v0, Lcom/google/firebase/firestore/pipeline/RawOptions;

    invoke-direct {v0, p1}, Lcom/google/firebase/firestore/pipeline/RawOptions;-><init>(Lcom/google/firebase/firestore/pipeline/InternalOptions;)V

    return-object v0
.end method
