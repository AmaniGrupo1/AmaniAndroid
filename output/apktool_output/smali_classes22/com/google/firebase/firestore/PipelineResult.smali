.class public final Lcom/google/firebase/firestore/PipelineResult;
.super Ljava/lang/Object;
.source "Pipeline.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001BC\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0007\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0004\u0008\r\u0010\u000eB!\u0008\u0010\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u0012\u0006\u0010\u0011\u001a\u00020\u0012\u0012\u0006\u0010\u0013\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\r\u0010\u0015J\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0008J\u0014\u0010\u001c\u001a\u0010\u0012\u0004\u0012\u00020\u0008\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0007J\u0012\u0010\u001d\u001a\u0004\u0018\u00010\t2\u0006\u0010\u001e\u001a\u00020\u001fH\u0002J\u0010\u0010 \u001a\u0004\u0018\u00010\u00012\u0006\u0010!\u001a\u00020\u0008J\u0010\u0010 \u001a\u0004\u0018\u00010\u00012\u0006\u0010\u001e\u001a\u00020\u001fJ\u0008\u0010\"\u001a\u00020\u0008H\u0016J\u0013\u0010#\u001a\u00020$2\u0008\u0010%\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010&\u001a\u00020\'H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0013\u0010\u000c\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0017R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\u00a8\u0006("
    }
    d2 = {
        "Lcom/google/firebase/firestore/PipelineResult;",
        "",
        "userDataWriter",
        "Lcom/google/firebase/firestore/UserDataWriter;",
        "ref",
        "Lcom/google/firebase/firestore/DocumentReference;",
        "fields",
        "",
        "",
        "Lcom/google/firestore/v1/Value;",
        "createTime",
        "Lcom/google/firebase/Timestamp;",
        "updateTime",
        "<init>",
        "(Lcom/google/firebase/firestore/UserDataWriter;Lcom/google/firebase/firestore/DocumentReference;Ljava/util/Map;Lcom/google/firebase/Timestamp;Lcom/google/firebase/Timestamp;)V",
        "document",
        "Lcom/google/firebase/firestore/model/Document;",
        "serverTimestampBehavior",
        "Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;",
        "firestore",
        "Lcom/google/firebase/firestore/FirebaseFirestore;",
        "(Lcom/google/firebase/firestore/model/Document;Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;Lcom/google/firebase/firestore/FirebaseFirestore;)V",
        "getCreateTime",
        "()Lcom/google/firebase/Timestamp;",
        "getUpdateTime",
        "getRef",
        "()Lcom/google/firebase/firestore/DocumentReference;",
        "getId",
        "getData",
        "extractNestedValue",
        "fieldPath",
        "Lcom/google/firebase/firestore/FieldPath;",
        "get",
        "field",
        "toString",
        "equals",
        "",
        "other",
        "hashCode",
        "",
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
.field private final createTime:Lcom/google/firebase/Timestamp;

.field private final fields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation
.end field

.field private final ref:Lcom/google/firebase/firestore/DocumentReference;

.field private final updateTime:Lcom/google/firebase/Timestamp;

.field private final userDataWriter:Lcom/google/firebase/firestore/UserDataWriter;


# direct methods
.method public constructor <init>(Lcom/google/firebase/firestore/UserDataWriter;Lcom/google/firebase/firestore/DocumentReference;Ljava/util/Map;Lcom/google/firebase/Timestamp;Lcom/google/firebase/Timestamp;)V
    .locals 1
    .param p1, "userDataWriter"    # Lcom/google/firebase/firestore/UserDataWriter;
    .param p2, "ref"    # Lcom/google/firebase/firestore/DocumentReference;
    .param p3, "fields"    # Ljava/util/Map;
    .param p4, "createTime"    # Lcom/google/firebase/Timestamp;
    .param p5, "updateTime"    # Lcom/google/firebase/Timestamp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/UserDataWriter;",
            "Lcom/google/firebase/firestore/DocumentReference;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firestore/v1/Value;",
            ">;",
            "Lcom/google/firebase/Timestamp;",
            "Lcom/google/firebase/Timestamp;",
            ")V"
        }
    .end annotation

    const-string v0, "userDataWriter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fields"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1056
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1057
    iput-object p1, p0, Lcom/google/firebase/firestore/PipelineResult;->userDataWriter:Lcom/google/firebase/firestore/UserDataWriter;

    .line 1059
    iput-object p3, p0, Lcom/google/firebase/firestore/PipelineResult;->fields:Ljava/util/Map;

    .line 1077
    iput-object p4, p0, Lcom/google/firebase/firestore/PipelineResult;->createTime:Lcom/google/firebase/Timestamp;

    .line 1083
    iput-object p5, p0, Lcom/google/firebase/firestore/PipelineResult;->updateTime:Lcom/google/firebase/Timestamp;

    .line 1094
    iput-object p2, p0, Lcom/google/firebase/firestore/PipelineResult;->ref:Lcom/google/firebase/firestore/DocumentReference;

    .line 1056
    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/firestore/model/Document;Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;Lcom/google/firebase/firestore/FirebaseFirestore;)V
    .locals 7
    .param p1, "document"    # Lcom/google/firebase/firestore/model/Document;
    .param p2, "serverTimestampBehavior"    # Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;
    .param p3, "firestore"    # Lcom/google/firebase/firestore/FirebaseFirestore;

    const-string v0, "document"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serverTimestampBehavior"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firestore"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1068
    nop

    .line 1069
    new-instance v2, Lcom/google/firebase/firestore/UserDataWriter;

    invoke-direct {v2, p3, p2}, Lcom/google/firebase/firestore/UserDataWriter;-><init>(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;)V

    .line 1070
    new-instance v3, Lcom/google/firebase/firestore/DocumentReference;

    invoke-interface {p1}, Lcom/google/firebase/firestore/model/Document;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v0

    invoke-direct {v3, v0, p3}, Lcom/google/firebase/firestore/DocumentReference;-><init>(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/FirebaseFirestore;)V

    .line 1071
    invoke-interface {p1}, Lcom/google/firebase/firestore/model/Document;->getData()Lcom/google/firebase/firestore/model/ObjectValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/ObjectValue;->getFieldsMap()Ljava/util/Map;

    move-result-object v4

    const-string v0, "getFieldsMap(...)"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1072
    invoke-interface {p1}, Lcom/google/firebase/firestore/model/Document;->getCreateTime()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/SnapshotVersion;->getTimestamp()Lcom/google/firebase/Timestamp;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v5, v0

    .line 1073
    invoke-interface {p1}, Lcom/google/firebase/firestore/model/Document;->getVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/SnapshotVersion;->getTimestamp()Lcom/google/firebase/Timestamp;

    move-result-object v6

    .line 1068
    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/firebase/firestore/PipelineResult;-><init>(Lcom/google/firebase/firestore/UserDataWriter;Lcom/google/firebase/firestore/DocumentReference;Ljava/util/Map;Lcom/google/firebase/Timestamp;Lcom/google/firebase/Timestamp;)V

    .line 1074
    return-void
.end method

.method private final extractNestedValue(Lcom/google/firebase/firestore/FieldPath;)Lcom/google/firestore/v1/Value;
    .locals 6
    .param p1, "fieldPath"    # Lcom/google/firebase/firestore/FieldPath;

    .line 1112
    invoke-virtual {p1}, Lcom/google/firebase/firestore/FieldPath;->getInternalPath()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/FieldPath;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "iterator(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1113
    .local v0, "segments":Ljava/util/Iterator;
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1114
    iget-object v1, p0, Lcom/google/firebase/firestore/PipelineResult;->fields:Ljava/util/Map;

    invoke-static {v1}, Lcom/google/firebase/firestore/model/Values;->encodeValue(Ljava/util/Map;)Lcom/google/firestore/v1/Value;

    move-result-object v1

    return-object v1

    .line 1116
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1117
    .local v1, "firstSegment":Ljava/lang/String;
    iget-object v2, p0, Lcom/google/firebase/firestore/PipelineResult;->fields:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 1118
    return-object v3

    .line 1120
    :cond_1
    iget-object v2, p0, Lcom/google/firebase/firestore/PipelineResult;->fields:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firestore/v1/Value;

    .line 1121
    .local v2, "value":Lcom/google/firestore/v1/Value;
    nop

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1122
    .local v4, "segment":Ljava/lang/String;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/google/firestore/v1/Value;->hasMapValue()Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    .line 1125
    :cond_2
    invoke-virtual {v2}, Lcom/google/firestore/v1/Value;->getMapValue()Lcom/google/firestore/v1/MapValue;

    move-result-object v5

    invoke-virtual {v5, v4, v3}, Lcom/google/firestore/v1/MapValue;->getFieldsOrDefault(Ljava/lang/String;Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/Value;

    move-result-object v2

    .end local v4    # "segment":Ljava/lang/String;
    goto :goto_0

    .line 1123
    .restart local v4    # "segment":Ljava/lang/String;
    :cond_3
    :goto_1
    return-object v3

    .line 1127
    .end local v4    # "segment":Ljava/lang/String;
    :cond_4
    return-object v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 1148
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1149
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 1150
    :cond_2
    const-string v1, "null cannot be cast to non-null type com.google.firebase.firestore.PipelineResult"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Lcom/google/firebase/firestore/PipelineResult;

    .line 1151
    iget-object v1, p0, Lcom/google/firebase/firestore/PipelineResult;->ref:Lcom/google/firebase/firestore/DocumentReference;

    move-object v3, p1

    check-cast v3, Lcom/google/firebase/firestore/PipelineResult;

    iget-object v3, v3, Lcom/google/firebase/firestore/PipelineResult;->ref:Lcom/google/firebase/firestore/DocumentReference;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 1152
    :cond_3
    iget-object v1, p0, Lcom/google/firebase/firestore/PipelineResult;->fields:Ljava/util/Map;

    move-object v3, p1

    check-cast v3, Lcom/google/firebase/firestore/PipelineResult;

    iget-object v3, v3, Lcom/google/firebase/firestore/PipelineResult;->fields:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 1153
    :cond_4
    return v0
.end method

.method public final get(Lcom/google/firebase/firestore/FieldPath;)Ljava/lang/Object;
    .locals 2
    .param p1, "fieldPath"    # Lcom/google/firebase/firestore/FieldPath;

    const-string v0, "fieldPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1144
    iget-object v0, p0, Lcom/google/firebase/firestore/PipelineResult;->userDataWriter:Lcom/google/firebase/firestore/UserDataWriter;

    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/PipelineResult;->extractNestedValue(Lcom/google/firebase/firestore/FieldPath;)Lcom/google/firestore/v1/Value;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/UserDataWriter;->convertValue(Lcom/google/firestore/v1/Value;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "field"    # Ljava/lang/String;

    const-string v0, "field"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1136
    invoke-static {p1}, Lcom/google/firebase/firestore/FieldPath;->fromDotSeparatedPath(Ljava/lang/String;)Lcom/google/firebase/firestore/FieldPath;

    move-result-object v0

    const-string v1, "fromDotSeparatedPath(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/PipelineResult;->get(Lcom/google/firebase/firestore/FieldPath;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getCreateTime()Lcom/google/firebase/Timestamp;
    .locals 1

    .line 1077
    iget-object v0, p0, Lcom/google/firebase/firestore/PipelineResult;->createTime:Lcom/google/firebase/Timestamp;

    return-object v0
.end method

.method public final getData()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1109
    iget-object v0, p0, Lcom/google/firebase/firestore/PipelineResult;->userDataWriter:Lcom/google/firebase/firestore/UserDataWriter;

    iget-object v1, p0, Lcom/google/firebase/firestore/PipelineResult;->fields:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/UserDataWriter;->convertObject(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "convertObject(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 1102
    iget-object v0, p0, Lcom/google/firebase/firestore/PipelineResult;->ref:Lcom/google/firebase/firestore/DocumentReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/DocumentReference;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getRef()Lcom/google/firebase/firestore/DocumentReference;
    .locals 1

    .line 1094
    iget-object v0, p0, Lcom/google/firebase/firestore/PipelineResult;->ref:Lcom/google/firebase/firestore/DocumentReference;

    return-object v0
.end method

.method public final getUpdateTime()Lcom/google/firebase/Timestamp;
    .locals 1

    .line 1083
    iget-object v0, p0, Lcom/google/firebase/firestore/PipelineResult;->updateTime:Lcom/google/firebase/Timestamp;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1157
    iget-object v0, p0, Lcom/google/firebase/firestore/PipelineResult;->ref:Lcom/google/firebase/firestore/DocumentReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/DocumentReference;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1158
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/firebase/firestore/PipelineResult;->fields:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 1159
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PipelineResult{ref="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/PipelineResult;->ref:Lcom/google/firebase/firestore/DocumentReference;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", updateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/PipelineResult;->updateTime:Lcom/google/firebase/Timestamp;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}, data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/firestore/PipelineResult;->getData()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
