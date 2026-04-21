.class public final Lcom/google/firebase/firestore/pipeline/ReplaceStage;
.super Lcom/google/firebase/firestore/pipeline/Stage;
.source "stage.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/pipeline/ReplaceStage$Mode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/firebase/firestore/pipeline/Stage<",
        "Lcom/google/firebase/firestore/pipeline/ReplaceStage;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u001bB#\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0015\u0010\n\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007H\u0010\u00a2\u0006\u0002\u0008\u000bJ\r\u0010\u000c\u001a\u00020\rH\u0010\u00a2\u0006\u0002\u0008\u000eJ\u001b\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u00102\u0006\u0010\u0012\u001a\u00020\u0013H\u0010\u00a2\u0006\u0002\u0008\u0014J\u0013\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0096\u0002J\u0008\u0010\u0019\u001a\u00020\u001aH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/google/firebase/firestore/pipeline/ReplaceStage;",
        "Lcom/google/firebase/firestore/pipeline/Stage;",
        "mapValue",
        "Lcom/google/firebase/firestore/pipeline/Expression;",
        "mode",
        "Lcom/google/firebase/firestore/pipeline/ReplaceStage$Mode;",
        "options",
        "Lcom/google/firebase/firestore/pipeline/InternalOptions;",
        "<init>",
        "(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/ReplaceStage$Mode;Lcom/google/firebase/firestore/pipeline/InternalOptions;)V",
        "self",
        "self$com_google_firebase_firebase_firestore",
        "canonicalId",
        "",
        "canonicalId$com_google_firebase_firebase_firestore",
        "args",
        "Lkotlin/sequences/Sequence;",
        "Lcom/google/firestore/v1/Value;",
        "userDataReader",
        "Lcom/google/firebase/firestore/UserDataReader;",
        "args$com_google_firebase_firebase_firestore",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "Mode",
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
.field private final mapValue:Lcom/google/firebase/firestore/pipeline/Expression;

.field private final mode:Lcom/google/firebase/firestore/pipeline/ReplaceStage$Mode;


# direct methods
.method public constructor <init>(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/ReplaceStage$Mode;Lcom/google/firebase/firestore/pipeline/InternalOptions;)V
    .locals 2
    .param p1, "mapValue"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p2, "mode"    # Lcom/google/firebase/firestore/pipeline/ReplaceStage$Mode;
    .param p3, "options"    # Lcom/google/firebase/firestore/pipeline/InternalOptions;

    const-string v0, "mapValue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1089
    const-string v0, "replace_with"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p3, v1}, Lcom/google/firebase/firestore/pipeline/Stage;-><init>(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/InternalOptions;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1086
    iput-object p1, p0, Lcom/google/firebase/firestore/pipeline/ReplaceStage;->mapValue:Lcom/google/firebase/firestore/pipeline/Expression;

    .line 1087
    iput-object p2, p0, Lcom/google/firebase/firestore/pipeline/ReplaceStage;->mode:Lcom/google/firebase/firestore/pipeline/ReplaceStage$Mode;

    .line 1085
    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/ReplaceStage$Mode;Lcom/google/firebase/firestore/pipeline/InternalOptions;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1085
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 1088
    sget-object p3, Lcom/google/firebase/firestore/pipeline/InternalOptions;->EMPTY:Lcom/google/firebase/firestore/pipeline/InternalOptions;

    .line 1085
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/firebase/firestore/pipeline/ReplaceStage;-><init>(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/ReplaceStage$Mode;Lcom/google/firebase/firestore/pipeline/InternalOptions;)V

    .line 1089
    return-void
.end method


# virtual methods
.method public args$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/UserDataReader;)Lkotlin/sequences/Sequence;
    .locals 3
    .param p1, "userDataReader"    # Lcom/google/firebase/firestore/UserDataReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/UserDataReader;",
            ")",
            "Lkotlin/sequences/Sequence<",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation

    const-string v0, "userDataReader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1104
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/firestore/v1/Value;

    iget-object v1, p0, Lcom/google/firebase/firestore/pipeline/ReplaceStage;->mapValue:Lcom/google/firebase/firestore/pipeline/Expression;

    invoke-virtual {v1, p1}, Lcom/google/firebase/firestore/pipeline/Expression;->toProto$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/UserDataReader;)Lcom/google/firestore/v1/Value;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/firebase/firestore/pipeline/ReplaceStage;->mode:Lcom/google/firebase/firestore/pipeline/ReplaceStage$Mode;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/pipeline/ReplaceStage$Mode;->getProto$com_google_firebase_firebase_firestore()Lcom/google/firestore/v1/Value;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->sequenceOf([Ljava/lang/Object;)Lkotlin/sequences/Sequence;

    move-result-object v0

    return-object v0
.end method

.method public canonicalId$com_google_firebase_firebase_firestore()Ljava/lang/String;
    .locals 3

    .line 1100
    new-instance v0, Lkotlin/NotImplementedError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "An operation is not implemented: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Not yet implemented"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 1107
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1108
    :cond_0
    instance-of v1, p1, Lcom/google/firebase/firestore/pipeline/ReplaceStage;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1109
    :cond_1
    iget-object v1, p0, Lcom/google/firebase/firestore/pipeline/ReplaceStage;->mapValue:Lcom/google/firebase/firestore/pipeline/Expression;

    move-object v3, p1

    check-cast v3, Lcom/google/firebase/firestore/pipeline/ReplaceStage;

    iget-object v3, v3, Lcom/google/firebase/firestore/pipeline/ReplaceStage;->mapValue:Lcom/google/firebase/firestore/pipeline/Expression;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 1110
    :cond_2
    iget-object v1, p0, Lcom/google/firebase/firestore/pipeline/ReplaceStage;->mode:Lcom/google/firebase/firestore/pipeline/ReplaceStage$Mode;

    move-object v3, p1

    check-cast v3, Lcom/google/firebase/firestore/pipeline/ReplaceStage;

    iget-object v3, v3, Lcom/google/firebase/firestore/pipeline/ReplaceStage;->mode:Lcom/google/firebase/firestore/pipeline/ReplaceStage$Mode;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 1111
    :cond_3
    invoke-virtual {p0}, Lcom/google/firebase/firestore/pipeline/ReplaceStage;->getOptions$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/pipeline/InternalOptions;

    move-result-object v1

    move-object v3, p1

    check-cast v3, Lcom/google/firebase/firestore/pipeline/ReplaceStage;

    invoke-virtual {v3}, Lcom/google/firebase/firestore/pipeline/ReplaceStage;->getOptions$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/pipeline/InternalOptions;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 1112
    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1116
    iget-object v0, p0, Lcom/google/firebase/firestore/pipeline/ReplaceStage;->mapValue:Lcom/google/firebase/firestore/pipeline/Expression;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/pipeline/Expression;->hashCode()I

    move-result v0

    .line 1117
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/firebase/firestore/pipeline/ReplaceStage;->mode:Lcom/google/firebase/firestore/pipeline/ReplaceStage$Mode;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/pipeline/ReplaceStage$Mode;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 1118
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    invoke-virtual {p0}, Lcom/google/firebase/firestore/pipeline/ReplaceStage;->getOptions$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/pipeline/InternalOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/firestore/pipeline/InternalOptions;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 1119
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public self$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/pipeline/InternalOptions;)Lcom/google/firebase/firestore/pipeline/ReplaceStage;
    .locals 3
    .param p1, "options"    # Lcom/google/firebase/firestore/pipeline/InternalOptions;

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1098
    new-instance v0, Lcom/google/firebase/firestore/pipeline/ReplaceStage;

    iget-object v1, p0, Lcom/google/firebase/firestore/pipeline/ReplaceStage;->mapValue:Lcom/google/firebase/firestore/pipeline/Expression;

    iget-object v2, p0, Lcom/google/firebase/firestore/pipeline/ReplaceStage;->mode:Lcom/google/firebase/firestore/pipeline/ReplaceStage$Mode;

    invoke-direct {v0, v1, v2, p1}, Lcom/google/firebase/firestore/pipeline/ReplaceStage;-><init>(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/ReplaceStage$Mode;Lcom/google/firebase/firestore/pipeline/InternalOptions;)V

    return-object v0
.end method

.method public bridge synthetic self$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/pipeline/InternalOptions;)Lcom/google/firebase/firestore/pipeline/Stage;
    .locals 1
    .param p1, "options"    # Lcom/google/firebase/firestore/pipeline/InternalOptions;

    .line 1084
    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/pipeline/ReplaceStage;->self$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/pipeline/InternalOptions;)Lcom/google/firebase/firestore/pipeline/ReplaceStage;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/pipeline/Stage;

    return-object v0
.end method
