.class synthetic Lcom/google/firebase/firestore/core/CompositeFilter$1;
.super Ljava/lang/Object;
.source "CompositeFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/core/CompositeFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$firebase$firestore$core$CompositeFilter$Operator:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 178
    invoke-static {}, Lcom/google/firebase/firestore/core/CompositeFilter$Operator;->values()[Lcom/google/firebase/firestore/core/CompositeFilter$Operator;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/firebase/firestore/core/CompositeFilter$1;->$SwitchMap$com$google$firebase$firestore$core$CompositeFilter$Operator:[I

    :try_start_0
    sget-object v0, Lcom/google/firebase/firestore/core/CompositeFilter$1;->$SwitchMap$com$google$firebase$firestore$core$CompositeFilter$Operator:[I

    sget-object v1, Lcom/google/firebase/firestore/core/CompositeFilter$Operator;->AND:Lcom/google/firebase/firestore/core/CompositeFilter$Operator;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/CompositeFilter$Operator;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    sget-object v0, Lcom/google/firebase/firestore/core/CompositeFilter$1;->$SwitchMap$com$google$firebase$firestore$core$CompositeFilter$Operator:[I

    sget-object v1, Lcom/google/firebase/firestore/core/CompositeFilter$Operator;->OR:Lcom/google/firebase/firestore/core/CompositeFilter$Operator;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/CompositeFilter$Operator;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    return-void
.end method
