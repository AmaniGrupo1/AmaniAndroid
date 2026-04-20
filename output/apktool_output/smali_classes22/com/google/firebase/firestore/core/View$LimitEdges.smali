.class Lcom/google/firebase/firestore/core/View$LimitEdges;
.super Ljava/lang/Object;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/core/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LimitEdges"
.end annotation


# instance fields
.field final first:Lcom/google/firebase/firestore/model/Document;

.field final second:Lcom/google/firebase/firestore/model/Document;


# direct methods
.method constructor <init>(Lcom/google/firebase/firestore/model/Document;Lcom/google/firebase/firestore/model/Document;)V
    .locals 0
    .param p1, "first"    # Lcom/google/firebase/firestore/model/Document;
    .param p2, "second"    # Lcom/google/firebase/firestore/model/Document;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/google/firebase/firestore/core/View$LimitEdges;->first:Lcom/google/firebase/firestore/model/Document;

    .line 85
    iput-object p2, p0, Lcom/google/firebase/firestore/core/View$LimitEdges;->second:Lcom/google/firebase/firestore/model/Document;

    .line 86
    return-void
.end method
