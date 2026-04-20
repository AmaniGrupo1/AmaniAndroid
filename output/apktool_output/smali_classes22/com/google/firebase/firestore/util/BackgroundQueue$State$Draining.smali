.class public final Lcom/google/firebase/firestore/util/BackgroundQueue$State$Draining;
.super Ljava/lang/Object;
.source "BackgroundQueue.kt"

# interfaces
.implements Lcom/google/firebase/firestore/util/BackgroundQueue$State;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/util/BackgroundQueue$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Draining"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/google/firebase/firestore/util/BackgroundQueue$State$Draining;",
        "Lcom/google/firebase/firestore/util/BackgroundQueue$State;",
        "<init>",
        "()V",
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
.field public static final INSTANCE:Lcom/google/firebase/firestore/util/BackgroundQueue$State$Draining;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/firestore/util/BackgroundQueue$State$Draining;

    invoke-direct {v0}, Lcom/google/firebase/firestore/util/BackgroundQueue$State$Draining;-><init>()V

    sput-object v0, Lcom/google/firebase/firestore/util/BackgroundQueue$State$Draining;->INSTANCE:Lcom/google/firebase/firestore/util/BackgroundQueue$State$Draining;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
