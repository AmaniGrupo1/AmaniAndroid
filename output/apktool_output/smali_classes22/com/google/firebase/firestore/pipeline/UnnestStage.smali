.class public final Lcom/google/firebase/firestore/pipeline/UnnestStage;
.super Lcom/google/firebase/firestore/pipeline/Stage;
.source "stage.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/pipeline/UnnestStage$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/firebase/firestore/pipeline/Stage<",
        "Lcom/google/firebase/firestore/pipeline/UnnestStage;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000 \u001b2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u001bB\u001b\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0015\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005H\u0010\u00a2\u0006\u0002\u0008\tJ\r\u0010\n\u001a\u00020\u000bH\u0010\u00a2\u0006\u0002\u0008\u000cJ\u001b\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e2\u0006\u0010\u0010\u001a\u00020\u0011H\u0010\u00a2\u0006\u0002\u0008\u0012J\u0013\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0096\u0002J\u0008\u0010\u0017\u001a\u00020\u0018H\u0016J\u000e\u0010\u0019\u001a\u00020\u00002\u0006\u0010\u001a\u001a\u00020\u000bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/google/firebase/firestore/pipeline/UnnestStage;",
        "Lcom/google/firebase/firestore/pipeline/Stage;",
        "selectable",
        "Lcom/google/firebase/firestore/pipeline/Selectable;",
        "options",
        "Lcom/google/firebase/firestore/pipeline/InternalOptions;",
        "<init>",
        "(Lcom/google/firebase/firestore/pipeline/Selectable;Lcom/google/firebase/firestore/pipeline/InternalOptions;)V",
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
        "withIndexField",
        "indexField",
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
.field public static final Companion:Lcom/google/firebase/firestore/pipeline/UnnestStage$Companion;


# instance fields
.field private final selectable:Lcom/google/firebase/firestore/pipeline/Selectable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/firebase/firestore/pipeline/UnnestStage$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/pipeline/UnnestStage$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/firebase/firestore/pipeline/UnnestStage;->Companion:Lcom/google/firebase/firestore/pipeline/UnnestStage$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/firestore/pipeline/Selectable;Lcom/google/firebase/firestore/pipeline/InternalOptions;)V
    .locals 2
    .param p1, "selectable"    # Lcom/google/firebase/firestore/pipeline/Selectable;
    .param p2, "options"    # Lcom/google/firebase/firestore/pipeline/InternalOptions;

    const-string v0, "selectable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1236
    const-string v0, "unnest"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lcom/google/firebase/firestore/pipeline/Stage;-><init>(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/InternalOptions;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1234
    iput-object p1, p0, Lcom/google/firebase/firestore/pipeline/UnnestStage;->selectable:Lcom/google/firebase/firestore/pipeline/Selectable;

    .line 1233
    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/firebase/firestore/pipeline/Selectable;Lcom/google/firebase/firestore/pipeline/InternalOptions;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1233
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 1235
    sget-object p2, Lcom/google/firebase/firestore/pipeline/InternalOptions;->EMPTY:Lcom/google/firebase/firestore/pipeline/InternalOptions;

    .line 1233
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/UnnestStage;-><init>(Lcom/google/firebase/firestore/pipeline/Selectable;Lcom/google/firebase/firestore/pipeline/InternalOptions;)V

    .line 1236
    return-void
.end method

.method public static final withField(Lcom/google/firebase/firestore/pipeline/Selectable;)Lcom/google/firebase/firestore/pipeline/UnnestStage;
    .locals 1
    .param p0, "arrayWithAlias"    # Lcom/google/firebase/firestore/pipeline/Selectable;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/UnnestStage;->Companion:Lcom/google/firebase/firestore/pipeline/UnnestStage$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/UnnestStage$Companion;->withField(Lcom/google/firebase/firestore/pipeline/Selectable;)Lcom/google/firebase/firestore/pipeline/UnnestStage;

    move-result-object v0

    .line 1253
    return-object v0
.end method

.method public static final withField(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/UnnestStage;
    .locals 1
    .param p0, "arrayField"    # Ljava/lang/String;
    .param p1, "alias"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/UnnestStage;->Companion:Lcom/google/firebase/firestore/pipeline/UnnestStage$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/UnnestStage$Companion;->withField(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/UnnestStage;

    move-result-object v0

    .line 1268
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

    .line 1276
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/firestore/v1/Value;

    iget-object v1, p0, Lcom/google/firebase/firestore/pipeline/UnnestStage;->selectable:Lcom/google/firebase/firestore/pipeline/Selectable;

    invoke-virtual {v1, p1}, Lcom/google/firebase/firestore/pipeline/Selectable;->toProto$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/UserDataReader;)Lcom/google/firestore/v1/Value;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    iget-object v2, p0, Lcom/google/firebase/firestore/pipeline/UnnestStage;->selectable:Lcom/google/firebase/firestore/pipeline/Selectable;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/pipeline/Selectable;->getAlias$com_google_firebase_firebase_firestore()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->field(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Field;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/firestore/pipeline/Field;->toProto$com_google_firebase_firebase_firestore()Lcom/google/firestore/v1/Value;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->sequenceOf([Ljava/lang/Object;)Lkotlin/sequences/Sequence;

    move-result-object v0

    return-object v0
.end method

.method public canonicalId$com_google_firebase_firebase_firestore()Ljava/lang/String;
    .locals 3

    .line 1272
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

    .line 1279
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1280
    :cond_0
    instance-of v1, p1, Lcom/google/firebase/firestore/pipeline/UnnestStage;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1281
    :cond_1
    iget-object v1, p0, Lcom/google/firebase/firestore/pipeline/UnnestStage;->selectable:Lcom/google/firebase/firestore/pipeline/Selectable;

    move-object v3, p1

    check-cast v3, Lcom/google/firebase/firestore/pipeline/UnnestStage;

    iget-object v3, v3, Lcom/google/firebase/firestore/pipeline/UnnestStage;->selectable:Lcom/google/firebase/firestore/pipeline/Selectable;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 1282
    :cond_2
    invoke-virtual {p0}, Lcom/google/firebase/firestore/pipeline/UnnestStage;->getOptions$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/pipeline/InternalOptions;

    move-result-object v1

    move-object v3, p1

    check-cast v3, Lcom/google/firebase/firestore/pipeline/UnnestStage;

    invoke-virtual {v3}, Lcom/google/firebase/firestore/pipeline/UnnestStage;->getOptions$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/pipeline/InternalOptions;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 1283
    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1287
    iget-object v0, p0, Lcom/google/firebase/firestore/pipeline/UnnestStage;->selectable:Lcom/google/firebase/firestore/pipeline/Selectable;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/pipeline/Selectable;->hashCode()I

    move-result v0

    .line 1288
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/firebase/firestore/pipeline/UnnestStage;->getOptions$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/pipeline/InternalOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/firestore/pipeline/InternalOptions;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 1289
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public bridge synthetic self$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/pipeline/InternalOptions;)Lcom/google/firebase/firestore/pipeline/Stage;
    .locals 1
    .param p1, "options"    # Lcom/google/firebase/firestore/pipeline/InternalOptions;

    .line 1231
    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/pipeline/UnnestStage;->self$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/pipeline/InternalOptions;)Lcom/google/firebase/firestore/pipeline/UnnestStage;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/pipeline/Stage;

    return-object v0
.end method

.method public self$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/pipeline/InternalOptions;)Lcom/google/firebase/firestore/pipeline/UnnestStage;
    .locals 2
    .param p1, "options"    # Lcom/google/firebase/firestore/pipeline/InternalOptions;

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1270
    new-instance v0, Lcom/google/firebase/firestore/pipeline/UnnestStage;

    iget-object v1, p0, Lcom/google/firebase/firestore/pipeline/UnnestStage;->selectable:Lcom/google/firebase/firestore/pipeline/Selectable;

    invoke-direct {v0, v1, p1}, Lcom/google/firebase/firestore/pipeline/UnnestStage;-><init>(Lcom/google/firebase/firestore/pipeline/Selectable;Lcom/google/firebase/firestore/pipeline/InternalOptions;)V

    return-object v0
.end method

.method public final withIndexField(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/UnnestStage;
    .locals 1
    .param p1, "indexField"    # Ljava/lang/String;

    const-string v0, "indexField"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1302
    const-string v0, "index_field"

    invoke-virtual {p0, v0, p1}, Lcom/google/firebase/firestore/pipeline/UnnestStage;->withOption(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Stage;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/pipeline/UnnestStage;

    return-object v0
.end method
