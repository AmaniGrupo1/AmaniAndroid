.class public Lcom/google/firebase/firestore/VectorValue;
.super Ljava/lang/Object;
.source "VectorValue.java"


# instance fields
.field private final values:[D


# direct methods
.method constructor <init>([D)V
    .locals 1
    .param p1, "values"    # [D

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    if-nez p1, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [D

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    :goto_0
    iput-object v0, p0, Lcom/google/firebase/firestore/VectorValue;->values:[D

    .line 30
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 50
    if-ne p0, p1, :cond_0

    .line 51
    const/4 v0, 0x1

    return v0

    .line 53
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 56
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/google/firebase/firestore/VectorValue;

    .line 57
    .local v0, "otherArray":Lcom/google/firebase/firestore/VectorValue;
    iget-object v1, p0, Lcom/google/firebase/firestore/VectorValue;->values:[D

    iget-object v2, v0, Lcom/google/firebase/firestore/VectorValue;->values:[D

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v1

    return v1

    .line 54
    .end local v0    # "otherArray":Lcom/google/firebase/firestore/VectorValue;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/google/firebase/firestore/VectorValue;->values:[D

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([D)I

    move-result v0

    return v0
.end method

.method public toArray()[D
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/google/firebase/firestore/VectorValue;->values:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method
