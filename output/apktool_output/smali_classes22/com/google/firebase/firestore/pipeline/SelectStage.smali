.class public final Lcom/google/firebase/firestore/pipeline/SelectStage;
.super Lcom/google/firebase/firestore/pipeline/Stage;
.source "stage.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/pipeline/SelectStage$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/firebase/firestore/pipeline/Stage<",
        "Lcom/google/firebase/firestore/pipeline/SelectStage;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000 \u001d2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u001dB!\u0008\u0002\u0012\u000e\u0010\u0002\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0015\u0010\u000c\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0006H\u0010\u00a2\u0006\u0002\u0008\rJ\r\u0010\u000e\u001a\u00020\u000fH\u0010\u00a2\u0006\u0002\u0008\u0010J\u001b\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00122\u0006\u0010\u0014\u001a\u00020\u0015H\u0010\u00a2\u0006\u0002\u0008\u0016J\u0013\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0096\u0002J\u0008\u0010\u001b\u001a\u00020\u001cH\u0016R\u001e\u0010\u0002\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00040\u0003X\u0080\u0004\u00a2\u0006\n\n\u0002\u0010\u000b\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/google/firebase/firestore/pipeline/SelectStage;",
        "Lcom/google/firebase/firestore/pipeline/Stage;",
        "fields",
        "",
        "Lcom/google/firebase/firestore/pipeline/Selectable;",
        "options",
        "Lcom/google/firebase/firestore/pipeline/InternalOptions;",
        "<init>",
        "([Lcom/google/firebase/firestore/pipeline/Selectable;Lcom/google/firebase/firestore/pipeline/InternalOptions;)V",
        "getFields$com_google_firebase_firebase_firestore",
        "()[Lcom/google/firebase/firestore/pipeline/Selectable;",
        "[Lcom/google/firebase/firestore/pipeline/Selectable;",
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
.field public static final Companion:Lcom/google/firebase/firestore/pipeline/SelectStage$Companion;


# instance fields
.field private final fields:[Lcom/google/firebase/firestore/pipeline/Selectable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/firebase/firestore/pipeline/SelectStage$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/pipeline/SelectStage$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/firebase/firestore/pipeline/SelectStage;->Companion:Lcom/google/firebase/firestore/pipeline/SelectStage$Companion;

    return-void
.end method

.method private constructor <init>([Lcom/google/firebase/firestore/pipeline/Selectable;Lcom/google/firebase/firestore/pipeline/InternalOptions;)V
    .locals 2
    .param p1, "fields"    # [Lcom/google/firebase/firestore/pipeline/Selectable;
    .param p2, "options"    # Lcom/google/firebase/firestore/pipeline/InternalOptions;

    .line 902
    const-string v0, "select"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lcom/google/firebase/firestore/pipeline/Stage;-><init>(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/InternalOptions;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 901
    iput-object p1, p0, Lcom/google/firebase/firestore/pipeline/SelectStage;->fields:[Lcom/google/firebase/firestore/pipeline/Selectable;

    return-void
.end method

.method public synthetic constructor <init>([Lcom/google/firebase/firestore/pipeline/Selectable;Lcom/google/firebase/firestore/pipeline/InternalOptions;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/SelectStage;-><init>([Lcom/google/firebase/firestore/pipeline/Selectable;Lcom/google/firebase/firestore/pipeline/InternalOptions;)V

    return-void
.end method

.method public static final varargs of(Lcom/google/firebase/firestore/pipeline/Selectable;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/SelectStage;
    .locals 1
    .param p0, "selection"    # Lcom/google/firebase/firestore/pipeline/Selectable;
    .param p1, "additionalSelections"    # [Ljava/lang/Object;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/SelectStage;->Companion:Lcom/google/firebase/firestore/pipeline/SelectStage$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/SelectStage$Companion;->of(Lcom/google/firebase/firestore/pipeline/Selectable;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/SelectStage;

    move-result-object v0

    .line 909
    return-object v0
.end method

.method public static final varargs of(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/SelectStage;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .param p1, "additionalSelections"    # [Ljava/lang/Object;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/SelectStage;->Companion:Lcom/google/firebase/firestore/pipeline/SelectStage$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/SelectStage$Companion;->of(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/SelectStage;

    move-result-object v0

    .line 913
    return-object v0
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

    .line 921
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/firestore/v1/Value;

    iget-object v1, p0, Lcom/google/firebase/firestore/pipeline/SelectStage;->fields:[Lcom/google/firebase/firestore/pipeline/Selectable;

    invoke-static {v1, p1}, Lcom/google/firebase/firestore/pipeline/StageKt;->access$associateWithoutDuplications([Lcom/google/firebase/firestore/pipeline/Selectable;Lcom/google/firebase/firestore/UserDataReader;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/firestore/model/Values;->encodeValue(Ljava/util/Map;)Lcom/google/firestore/v1/Value;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->sequenceOf([Ljava/lang/Object;)Lkotlin/sequences/Sequence;

    move-result-object v0

    return-object v0
.end method

.method public canonicalId$com_google_firebase_firebase_firestore()Ljava/lang/String;
    .locals 3

    .line 917
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

    .line 924
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 925
    :cond_0
    instance-of v1, p1, Lcom/google/firebase/firestore/pipeline/SelectStage;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 926
    :cond_1
    iget-object v1, p0, Lcom/google/firebase/firestore/pipeline/SelectStage;->fields:[Lcom/google/firebase/firestore/pipeline/Selectable;

    move-object v3, p1

    check-cast v3, Lcom/google/firebase/firestore/pipeline/SelectStage;

    iget-object v3, v3, Lcom/google/firebase/firestore/pipeline/SelectStage;->fields:[Lcom/google/firebase/firestore/pipeline/Selectable;

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 927
    :cond_2
    invoke-virtual {p0}, Lcom/google/firebase/firestore/pipeline/SelectStage;->getOptions$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/pipeline/InternalOptions;

    move-result-object v1

    move-object v3, p1

    check-cast v3, Lcom/google/firebase/firestore/pipeline/SelectStage;

    invoke-virtual {v3}, Lcom/google/firebase/firestore/pipeline/SelectStage;->getOptions$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/pipeline/InternalOptions;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 928
    :cond_3
    return v0
.end method

.method public final getFields$com_google_firebase_firebase_firestore()[Lcom/google/firebase/firestore/pipeline/Selectable;
    .locals 1

    .line 901
    iget-object v0, p0, Lcom/google/firebase/firestore/pipeline/SelectStage;->fields:[Lcom/google/firebase/firestore/pipeline/Selectable;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 932
    iget-object v0, p0, Lcom/google/firebase/firestore/pipeline/SelectStage;->fields:[Lcom/google/firebase/firestore/pipeline/Selectable;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 933
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/firebase/firestore/pipeline/SelectStage;->getOptions$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/pipeline/InternalOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/firestore/pipeline/InternalOptions;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 934
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public self$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/pipeline/InternalOptions;)Lcom/google/firebase/firestore/pipeline/SelectStage;
    .locals 2
    .param p1, "options"    # Lcom/google/firebase/firestore/pipeline/InternalOptions;

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 915
    new-instance v0, Lcom/google/firebase/firestore/pipeline/SelectStage;

    iget-object v1, p0, Lcom/google/firebase/firestore/pipeline/SelectStage;->fields:[Lcom/google/firebase/firestore/pipeline/Selectable;

    invoke-direct {v0, v1, p1}, Lcom/google/firebase/firestore/pipeline/SelectStage;-><init>([Lcom/google/firebase/firestore/pipeline/Selectable;Lcom/google/firebase/firestore/pipeline/InternalOptions;)V

    return-object v0
.end method

.method public bridge synthetic self$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/pipeline/InternalOptions;)Lcom/google/firebase/firestore/pipeline/Stage;
    .locals 1
    .param p1, "options"    # Lcom/google/firebase/firestore/pipeline/InternalOptions;

    .line 900
    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/pipeline/SelectStage;->self$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/pipeline/InternalOptions;)Lcom/google/firebase/firestore/pipeline/SelectStage;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/pipeline/Stage;

    return-object v0
.end method
