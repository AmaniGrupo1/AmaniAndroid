.class public final Lcom/google/firebase/firestore/pipeline/Ordering;
.super Ljava/lang/Object;
.source "expressions.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/pipeline/Ordering$Companion;,
        Lcom/google/firebase/firestore/pipeline/Ordering$Direction;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000 \u00192\u00020\u0001:\u0002\u0019\u001aB\u0019\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\r\u0010\u000c\u001a\u00020\rH\u0000\u00a2\u0006\u0002\u0008\u000eJ\u0013\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010\u0012\u001a\u00020\u0013H\u0016J\u0015\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0000\u00a2\u0006\u0002\u0008\u0018R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/google/firebase/firestore/pipeline/Ordering;",
        "",
        "expr",
        "Lcom/google/firebase/firestore/pipeline/Expression;",
        "dir",
        "Lcom/google/firebase/firestore/pipeline/Ordering$Direction;",
        "<init>",
        "(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Ordering$Direction;)V",
        "getExpr",
        "()Lcom/google/firebase/firestore/pipeline/Expression;",
        "getDir",
        "()Lcom/google/firebase/firestore/pipeline/Ordering$Direction;",
        "canonicalId",
        "",
        "canonicalId$com_google_firebase_firebase_firestore",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toProto",
        "Lcom/google/firestore/v1/Value;",
        "userDataReader",
        "Lcom/google/firebase/firestore/UserDataReader;",
        "toProto$com_google_firebase_firebase_firestore",
        "Companion",
        "Direction",
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
.field public static final Companion:Lcom/google/firebase/firestore/pipeline/Ordering$Companion;


# instance fields
.field private final dir:Lcom/google/firebase/firestore/pipeline/Ordering$Direction;

.field private final expr:Lcom/google/firebase/firestore/pipeline/Expression;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/firebase/firestore/pipeline/Ordering$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/pipeline/Ordering$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/firebase/firestore/pipeline/Ordering;->Companion:Lcom/google/firebase/firestore/pipeline/Ordering$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Ordering$Direction;)V
    .locals 1
    .param p1, "expr"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p2, "dir"    # Lcom/google/firebase/firestore/pipeline/Ordering$Direction;

    const-string v0, "expr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dir"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7643
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/pipeline/Ordering;->expr:Lcom/google/firebase/firestore/pipeline/Expression;

    iput-object p2, p0, Lcom/google/firebase/firestore/pipeline/Ordering;->dir:Lcom/google/firebase/firestore/pipeline/Ordering$Direction;

    return-void
.end method

.method public static final ascending(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Ordering;
    .locals 1
    .param p0, "expr"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Ordering;->Companion:Lcom/google/firebase/firestore/pipeline/Ordering$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Ordering$Companion;->ascending(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Ordering;

    move-result-object v0

    .line 7671
    return-object v0
.end method

.method public static final ascending(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Ordering;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Ordering;->Companion:Lcom/google/firebase/firestore/pipeline/Ordering$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Ordering$Companion;->ascending(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Ordering;

    move-result-object v0

    .line 7680
    return-object v0
.end method

.method public static final descending(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Ordering;
    .locals 1
    .param p0, "expr"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Ordering;->Companion:Lcom/google/firebase/firestore/pipeline/Ordering$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Ordering$Companion;->descending(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Ordering;

    move-result-object v0

    .line 7688
    return-object v0
.end method

.method public static final descending(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Ordering;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Ordering;->Companion:Lcom/google/firebase/firestore/pipeline/Ordering$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Ordering$Companion;->descending(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Ordering;

    move-result-object v0

    .line 7697
    return-object v0
.end method


# virtual methods
.method public final canonicalId$com_google_firebase_firebase_firestore()Ljava/lang/String;
    .locals 3

    .line 7645
    iget-object v0, p0, Lcom/google/firebase/firestore/pipeline/Ordering;->dir:Lcom/google/firebase/firestore/pipeline/Ordering$Direction;

    sget-object v1, Lcom/google/firebase/firestore/pipeline/Ordering$Direction;->ASCENDING:Lcom/google/firebase/firestore/pipeline/Ordering$Direction;

    if-ne v0, v1, :cond_0

    const-string v0, "asc"

    goto :goto_0

    :cond_0
    const-string v0, "desc"

    .line 7646
    .local v0, "direction":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/firebase/firestore/pipeline/Ordering;->expr:Lcom/google/firebase/firestore/pipeline/Expression;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/pipeline/Expression;->canonicalId$com_google_firebase_firebase_firestore()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 7650
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 7651
    :cond_0
    instance-of v1, p1, Lcom/google/firebase/firestore/pipeline/Ordering;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 7652
    :cond_1
    iget-object v1, p0, Lcom/google/firebase/firestore/pipeline/Ordering;->expr:Lcom/google/firebase/firestore/pipeline/Expression;

    move-object v3, p1

    check-cast v3, Lcom/google/firebase/firestore/pipeline/Ordering;

    iget-object v3, v3, Lcom/google/firebase/firestore/pipeline/Ordering;->expr:Lcom/google/firebase/firestore/pipeline/Expression;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 7653
    :cond_2
    iget-object v1, p0, Lcom/google/firebase/firestore/pipeline/Ordering;->dir:Lcom/google/firebase/firestore/pipeline/Ordering$Direction;

    move-object v3, p1

    check-cast v3, Lcom/google/firebase/firestore/pipeline/Ordering;

    iget-object v3, v3, Lcom/google/firebase/firestore/pipeline/Ordering;->dir:Lcom/google/firebase/firestore/pipeline/Ordering$Direction;

    if-eq v1, v3, :cond_3

    return v2

    .line 7654
    :cond_3
    return v0
.end method

.method public final getDir()Lcom/google/firebase/firestore/pipeline/Ordering$Direction;
    .locals 1

    .line 7643
    iget-object v0, p0, Lcom/google/firebase/firestore/pipeline/Ordering;->dir:Lcom/google/firebase/firestore/pipeline/Ordering$Direction;

    return-object v0
.end method

.method public final getExpr()Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 7643
    iget-object v0, p0, Lcom/google/firebase/firestore/pipeline/Ordering;->expr:Lcom/google/firebase/firestore/pipeline/Expression;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 7658
    iget-object v0, p0, Lcom/google/firebase/firestore/pipeline/Ordering;->expr:Lcom/google/firebase/firestore/pipeline/Expression;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/pipeline/Expression;->hashCode()I

    move-result v0

    .line 7659
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/firebase/firestore/pipeline/Ordering;->dir:Lcom/google/firebase/firestore/pipeline/Ordering$Direction;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/pipeline/Ordering$Direction;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 7660
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public final toProto$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/UserDataReader;)Lcom/google/firestore/v1/Value;
    .locals 4
    .param p1, "userDataReader"    # Lcom/google/firebase/firestore/UserDataReader;

    const-string v0, "userDataReader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7706
    invoke-static {}, Lcom/google/firestore/v1/Value;->newBuilder()Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    .line 7708
    invoke-static {}, Lcom/google/firestore/v1/MapValue;->newBuilder()Lcom/google/firestore/v1/MapValue$Builder;

    move-result-object v1

    .line 7709
    iget-object v2, p0, Lcom/google/firebase/firestore/pipeline/Ordering;->dir:Lcom/google/firebase/firestore/pipeline/Ordering$Direction;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/pipeline/Ordering$Direction;->getProto()Lcom/google/firestore/v1/Value;

    move-result-object v2

    const-string v3, "direction"

    invoke-virtual {v1, v3, v2}, Lcom/google/firestore/v1/MapValue$Builder;->putFields(Ljava/lang/String;Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/MapValue$Builder;

    move-result-object v1

    .line 7710
    iget-object v2, p0, Lcom/google/firebase/firestore/pipeline/Ordering;->expr:Lcom/google/firebase/firestore/pipeline/Expression;

    invoke-virtual {v2, p1}, Lcom/google/firebase/firestore/pipeline/Expression;->toProto$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/UserDataReader;)Lcom/google/firestore/v1/Value;

    move-result-object v2

    const-string v3, "expression"

    invoke-virtual {v1, v3, v2}, Lcom/google/firestore/v1/MapValue$Builder;->putFields(Ljava/lang/String;Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/MapValue$Builder;

    move-result-object v1

    .line 7707
    invoke-virtual {v0, v1}, Lcom/google/firestore/v1/Value$Builder;->setMapValue(Lcom/google/firestore/v1/MapValue$Builder;)Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    .line 7712
    invoke-virtual {v0}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/firestore/v1/Value;

    return-object v0
.end method
