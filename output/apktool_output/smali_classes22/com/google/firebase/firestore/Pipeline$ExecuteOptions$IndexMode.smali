.class public final Lcom/google/firebase/firestore/Pipeline$ExecuteOptions$IndexMode;
.super Ljava/lang/Object;
.source "Pipeline.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/Pipeline$ExecuteOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IndexMode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/Pipeline$ExecuteOptions$IndexMode$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0018\u0000 \u00082\u00020\u0001:\u0001\u0008B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/google/firebase/firestore/Pipeline$ExecuteOptions$IndexMode;",
        "",
        "value",
        "",
        "<init>",
        "(Ljava/lang/String;)V",
        "getValue$com_google_firebase_firebase_firestore",
        "()Ljava/lang/String;",
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
.field public static final Companion:Lcom/google/firebase/firestore/Pipeline$ExecuteOptions$IndexMode$Companion;

.field public static final RECOMMENDED:Lcom/google/firebase/firestore/Pipeline$ExecuteOptions$IndexMode;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/firebase/firestore/Pipeline$ExecuteOptions$IndexMode$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/Pipeline$ExecuteOptions$IndexMode$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/firebase/firestore/Pipeline$ExecuteOptions$IndexMode;->Companion:Lcom/google/firebase/firestore/Pipeline$ExecuteOptions$IndexMode$Companion;

    .line 100
    new-instance v0, Lcom/google/firebase/firestore/Pipeline$ExecuteOptions$IndexMode;

    const-string v1, "recommended"

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/Pipeline$ExecuteOptions$IndexMode;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/firebase/firestore/Pipeline$ExecuteOptions$IndexMode;->RECOMMENDED:Lcom/google/firebase/firestore/Pipeline$ExecuteOptions$IndexMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/Pipeline$ExecuteOptions$IndexMode;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getValue$com_google_firebase_firebase_firestore()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/google/firebase/firestore/Pipeline$ExecuteOptions$IndexMode;->value:Ljava/lang/String;

    return-object v0
.end method
