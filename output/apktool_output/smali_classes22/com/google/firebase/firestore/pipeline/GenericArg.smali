.class public abstract Lcom/google/firebase/firestore/pipeline/GenericArg;
.super Ljava/lang/Object;
.source "stage.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/pipeline/GenericArg$AggregateArg;,
        Lcom/google/firebase/firestore/pipeline/GenericArg$Companion;,
        Lcom/google/firebase/firestore/pipeline/GenericArg$ExprArg;,
        Lcom/google/firebase/firestore/pipeline/GenericArg$ListArg;,
        Lcom/google/firebase/firestore/pipeline/GenericArg$MapArg;,
        Lcom/google/firebase/firestore/pipeline/GenericArg$OrderingArg;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00080\u0018\u0000 \u00082\u00020\u0001:\u0006\u0008\t\n\u000b\u000c\rB\t\u0008\u0004\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&\u0082\u0001\u0005\u000e\u000f\u0010\u0011\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/google/firebase/firestore/pipeline/GenericArg;",
        "",
        "<init>",
        "()V",
        "toProto",
        "Lcom/google/firestore/v1/Value;",
        "userDataReader",
        "Lcom/google/firebase/firestore/UserDataReader;",
        "Companion",
        "AggregateArg",
        "ExprArg",
        "OrderingArg",
        "MapArg",
        "ListArg",
        "Lcom/google/firebase/firestore/pipeline/GenericArg$AggregateArg;",
        "Lcom/google/firebase/firestore/pipeline/GenericArg$ExprArg;",
        "Lcom/google/firebase/firestore/pipeline/GenericArg$ListArg;",
        "Lcom/google/firebase/firestore/pipeline/GenericArg$MapArg;",
        "Lcom/google/firebase/firestore/pipeline/GenericArg$OrderingArg;",
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
.field public static final Companion:Lcom/google/firebase/firestore/pipeline/GenericArg$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/firebase/firestore/pipeline/GenericArg$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/pipeline/GenericArg$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/firebase/firestore/pipeline/GenericArg;->Companion:Lcom/google/firebase/firestore/pipeline/GenericArg$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/firestore/pipeline/GenericArg;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract toProto(Lcom/google/firebase/firestore/UserDataReader;)Lcom/google/firestore/v1/Value;
.end method
