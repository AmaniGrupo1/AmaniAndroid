.class public final Lcom/google/firebase/firestore/pipeline/AliasedAggregate;
.super Ljava/lang/Object;
.source "aggregates.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0019\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0014\u0010\u0004\u001a\u00020\u0005X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/google/firebase/firestore/pipeline/AliasedAggregate;",
        "",
        "alias",
        "",
        "expr",
        "Lcom/google/firebase/firestore/pipeline/AggregateFunction;",
        "<init>",
        "(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/AggregateFunction;)V",
        "getAlias$com_google_firebase_firebase_firestore",
        "()Ljava/lang/String;",
        "getExpr$com_google_firebase_firebase_firestore",
        "()Lcom/google/firebase/firestore/pipeline/AggregateFunction;",
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


# instance fields
.field private final alias:Ljava/lang/String;

.field private final expr:Lcom/google/firebase/firestore/pipeline/AggregateFunction;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/AggregateFunction;)V
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "expr"    # Lcom/google/firebase/firestore/pipeline/AggregateFunction;

    const-string v0, "alias"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expr"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/pipeline/AliasedAggregate;->alias:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/firebase/firestore/pipeline/AliasedAggregate;->expr:Lcom/google/firebase/firestore/pipeline/AggregateFunction;

    return-void
.end method


# virtual methods
.method public final getAlias$com_google_firebase_firebase_firestore()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/google/firebase/firestore/pipeline/AliasedAggregate;->alias:Ljava/lang/String;

    return-object v0
.end method

.method public final getExpr$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/pipeline/AggregateFunction;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/google/firebase/firestore/pipeline/AliasedAggregate;->expr:Lcom/google/firebase/firestore/pipeline/AggregateFunction;

    return-object v0
.end method
