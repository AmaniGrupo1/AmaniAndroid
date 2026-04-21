.class public final Lcom/google/firebase/firestore/FirestoreKt;
.super Ljava/lang/Object;
.source "Firestore.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFirestore.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Firestore.kt\ncom/google/firebase/firestore/FirestoreKt\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 4 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,297:1\n49#2:298\n51#2:302\n49#2:303\n51#2:307\n49#2:308\n51#2:315\n46#3:299\n51#3:301\n46#3:304\n51#3:306\n46#3,6:309\n105#4:300\n105#4:305\n*S KotlinDebug\n*F\n+ 1 Firestore.kt\ncom/google/firebase/firestore/FirestoreKt\n*L\n282#1:298\n282#1:302\n296#1:303\n296#1:307\n296#1:308\n296#1:315\n282#1:299\n282#1:301\n296#1:304\n296#1:306\n296#1:309,6\n282#1:300\n296#1:305\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a0\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006\u001a\u001a\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0008\u001a\u001c\u0010\t\u001a\u0004\u0018\u0001H\n\"\u0006\u0008\u0000\u0010\n\u0018\u0001*\u00020\u000bH\u0086\u0008\u00a2\u0006\u0002\u0010\u000c\u001a$\u0010\t\u001a\u0004\u0018\u0001H\n\"\u0006\u0008\u0000\u0010\n\u0018\u0001*\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000eH\u0086\u0008\u00a2\u0006\u0002\u0010\u000f\u001a$\u0010\u0010\u001a\u0004\u0018\u0001H\n\"\u0006\u0008\u0000\u0010\n\u0018\u0001*\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u0008H\u0086\u0008\u00a2\u0006\u0002\u0010\u0012\u001a,\u0010\u0010\u001a\u0004\u0018\u0001H\n\"\u0006\u0008\u0000\u0010\n\u0018\u0001*\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u000eH\u0086\u0008\u00a2\u0006\u0002\u0010\u0013\u001a$\u0010\u0010\u001a\u0004\u0018\u0001H\n\"\u0006\u0008\u0000\u0010\n\u0018\u0001*\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u0015H\u0086\u0008\u00a2\u0006\u0002\u0010\u0016\u001a,\u0010\u0010\u001a\u0004\u0018\u0001H\n\"\u0006\u0008\u0000\u0010\n\u0018\u0001*\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\r\u001a\u00020\u000eH\u0086\u0008\u00a2\u0006\u0002\u0010\u0017\u001a\u001e\u0010\t\u001a\u0002H\n\"\n\u0008\u0000\u0010\n\u0018\u0001*\u00020\u0018*\u00020\u0019H\u0086\u0008\u00a2\u0006\u0002\u0010\u001a\u001a&\u0010\t\u001a\u0002H\n\"\n\u0008\u0000\u0010\n\u0018\u0001*\u00020\u0018*\u00020\u00192\u0006\u0010\r\u001a\u00020\u000eH\u0086\u0008\u00a2\u0006\u0002\u0010\u001b\u001a\u001f\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u0002H\n0\u001d\"\n\u0008\u0000\u0010\n\u0018\u0001*\u00020\u0018*\u00020\u001eH\u0086\u0008\u001a\'\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u0002H\n0\u001d\"\n\u0008\u0000\u0010\n\u0018\u0001*\u00020\u0018*\u00020\u001e2\u0006\u0010\r\u001a\u00020\u000eH\u0086\u0008\u001a\u001f\u0010\u001f\u001a\u00020 2\u0017\u0010!\u001a\u0013\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020$0\"\u00a2\u0006\u0002\u0008%\u001a\u001f\u0010&\u001a\u00020\'2\u0017\u0010!\u001a\u0013\u0012\u0004\u0012\u00020(\u0012\u0004\u0012\u00020$0\"\u00a2\u0006\u0002\u0008%\u001a\u001f\u0010)\u001a\u00020*2\u0017\u0010!\u001a\u0013\u0012\u0004\u0012\u00020+\u0012\u0004\u0012\u00020$0\"\u00a2\u0006\u0002\u0008%\u001a\u001f\u0010,\u001a\u00020-2\u0017\u0010!\u001a\u0013\u0012\u0004\u0012\u00020.\u0012\u0004\u0012\u00020$0\"\u00a2\u0006\u0002\u0008%\u001a\u001f\u0010/\u001a\u0002002\u0017\u0010!\u001a\u0013\u0012\u0004\u0012\u000201\u0012\u0004\u0012\u00020$0\"\u00a2\u0006\u0002\u0008%\u001a\u001a\u00102\u001a\u0008\u0012\u0004\u0012\u00020\u000b03*\u0002042\u0008\u0008\u0002\u00105\u001a\u000206\u001a\u001a\u00102\u001a\u0008\u0012\u0004\u0012\u00020\u001e03*\u0002072\u0008\u0008\u0002\u00105\u001a\u000206\u001a/\u00108\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\n0\u001d03\"\n\u0008\u0000\u0010\n\u0018\u0001*\u00020\u0018*\u0002072\u0008\u0008\u0002\u00105\u001a\u000206H\u0086\u0008\u001a+\u00108\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H\n03\"\n\u0008\u0000\u0010\n\u0018\u0001*\u00020\u0018*\u0002042\u0008\u0008\u0002\u00105\u001a\u000206H\u0086\u0008\"\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004\u00a8\u00069"
    }
    d2 = {
        "firestore",
        "Lcom/google/firebase/firestore/FirebaseFirestore;",
        "Lcom/google/firebase/Firebase;",
        "getFirestore",
        "(Lcom/google/firebase/Firebase;)Lcom/google/firebase/firestore/FirebaseFirestore;",
        "app",
        "Lcom/google/firebase/FirebaseApp;",
        "database",
        "",
        "toObject",
        "T",
        "Lcom/google/firebase/firestore/DocumentSnapshot;",
        "(Lcom/google/firebase/firestore/DocumentSnapshot;)Ljava/lang/Object;",
        "serverTimestampBehavior",
        "Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;",
        "(Lcom/google/firebase/firestore/DocumentSnapshot;Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;)Ljava/lang/Object;",
        "getField",
        "field",
        "(Lcom/google/firebase/firestore/DocumentSnapshot;Ljava/lang/String;)Ljava/lang/Object;",
        "(Lcom/google/firebase/firestore/DocumentSnapshot;Ljava/lang/String;Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;)Ljava/lang/Object;",
        "fieldPath",
        "Lcom/google/firebase/firestore/FieldPath;",
        "(Lcom/google/firebase/firestore/DocumentSnapshot;Lcom/google/firebase/firestore/FieldPath;)Ljava/lang/Object;",
        "(Lcom/google/firebase/firestore/DocumentSnapshot;Lcom/google/firebase/firestore/FieldPath;Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;)Ljava/lang/Object;",
        "",
        "Lcom/google/firebase/firestore/QueryDocumentSnapshot;",
        "(Lcom/google/firebase/firestore/QueryDocumentSnapshot;)Ljava/lang/Object;",
        "(Lcom/google/firebase/firestore/QueryDocumentSnapshot;Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;)Ljava/lang/Object;",
        "toObjects",
        "",
        "Lcom/google/firebase/firestore/QuerySnapshot;",
        "firestoreSettings",
        "Lcom/google/firebase/firestore/FirebaseFirestoreSettings;",
        "init",
        "Lkotlin/Function1;",
        "Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "memoryCacheSettings",
        "Lcom/google/firebase/firestore/MemoryCacheSettings;",
        "Lcom/google/firebase/firestore/MemoryCacheSettings$Builder;",
        "memoryEagerGcSettings",
        "Lcom/google/firebase/firestore/MemoryEagerGcSettings;",
        "Lcom/google/firebase/firestore/MemoryEagerGcSettings$Builder;",
        "memoryLruGcSettings",
        "Lcom/google/firebase/firestore/MemoryLruGcSettings;",
        "Lcom/google/firebase/firestore/MemoryLruGcSettings$Builder;",
        "persistentCacheSettings",
        "Lcom/google/firebase/firestore/PersistentCacheSettings;",
        "Lcom/google/firebase/firestore/PersistentCacheSettings$Builder;",
        "snapshots",
        "Lkotlinx/coroutines/flow/Flow;",
        "Lcom/google/firebase/firestore/DocumentReference;",
        "metadataChanges",
        "Lcom/google/firebase/firestore/MetadataChanges;",
        "Lcom/google/firebase/firestore/Query;",
        "dataObjects",
        "com.google.firebase-firebase-firestore"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final synthetic dataObjects(Lcom/google/firebase/firestore/DocumentReference;Lcom/google/firebase/firestore/MetadataChanges;)Lkotlinx/coroutines/flow/Flow;
    .locals 7
    .param p0, "$this$dataObjects"    # Lcom/google/firebase/firestore/DocumentReference;
    .param p1, "metadataChanges"    # Lcom/google/firebase/firestore/MetadataChanges;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/firebase/firestore/DocumentReference;",
            "Lcom/google/firebase/firestore/MetadataChanges;",
            ")",
            "Lkotlinx/coroutines/flow/Flow<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metadataChanges"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 296
    .local v0, "$i$f$dataObjects":I
    invoke-static {p0, p1}, Lcom/google/firebase/firestore/FirestoreKt;->snapshots(Lcom/google/firebase/firestore/DocumentReference;Lcom/google/firebase/firestore/MetadataChanges;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    .local v1, "$this$map$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v2, 0x0

    .line 303
    .local v2, "$i$f$map":I
    move-object v3, v1

    .local v3, "$this$unsafeTransform$iv$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v4, 0x0

    .line 304
    .local v4, "$i$f$unsafeTransform":I
    const/4 v5, 0x0

    .line 305
    .local v5, "$i$f$unsafeFlow":I
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v6, Lcom/google/firebase/firestore/FirestoreKt$dataObjects$$inlined$map$2;

    invoke-direct {v6, v3}, Lcom/google/firebase/firestore/FirestoreKt$dataObjects$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    check-cast v6, Lkotlinx/coroutines/flow/Flow;

    .line 306
    .end local v5    # "$i$f$unsafeFlow":I
    nop

    .line 307
    .end local v3    # "$this$unsafeTransform$iv$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v4    # "$i$f$unsafeTransform":I
    nop

    .line 296
    .end local v1    # "$this$map$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v2    # "$i$f$map":I
    return-object v6
.end method

.method public static final synthetic dataObjects(Lcom/google/firebase/firestore/Query;Lcom/google/firebase/firestore/MetadataChanges;)Lkotlinx/coroutines/flow/Flow;
    .locals 7
    .param p0, "$this$dataObjects"    # Lcom/google/firebase/firestore/Query;
    .param p1, "metadataChanges"    # Lcom/google/firebase/firestore/MetadataChanges;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/firebase/firestore/Query;",
            "Lcom/google/firebase/firestore/MetadataChanges;",
            ")",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metadataChanges"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 282
    .local v0, "$i$f$dataObjects":I
    invoke-static {p0, p1}, Lcom/google/firebase/firestore/FirestoreKt;->snapshots(Lcom/google/firebase/firestore/Query;Lcom/google/firebase/firestore/MetadataChanges;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    .local v1, "$this$map$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v2, 0x0

    .line 298
    .local v2, "$i$f$map":I
    move-object v3, v1

    .local v3, "$this$unsafeTransform$iv$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v4, 0x0

    .line 299
    .local v4, "$i$f$unsafeTransform":I
    const/4 v5, 0x0

    .line 300
    .local v5, "$i$f$unsafeFlow":I
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v6, Lcom/google/firebase/firestore/FirestoreKt$dataObjects$$inlined$map$1;

    invoke-direct {v6, v3}, Lcom/google/firebase/firestore/FirestoreKt$dataObjects$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    check-cast v6, Lkotlinx/coroutines/flow/Flow;

    .line 301
    .end local v5    # "$i$f$unsafeFlow":I
    nop

    .line 302
    .end local v3    # "$this$unsafeTransform$iv$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v4    # "$i$f$unsafeTransform":I
    nop

    .line 282
    .end local v1    # "$this$map$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v2    # "$i$f$map":I
    return-object v6
.end method

.method public static synthetic dataObjects$default(Lcom/google/firebase/firestore/DocumentReference;Lcom/google/firebase/firestore/MetadataChanges;ILjava/lang/Object;)Lkotlinx/coroutines/flow/Flow;
    .locals 5
    .param p0, "$this$dataObjects_u24default"    # Lcom/google/firebase/firestore/DocumentReference;
    .param p1, "metadataChanges"    # Lcom/google/firebase/firestore/MetadataChanges;

    .line 294
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 295
    sget-object p1, Lcom/google/firebase/firestore/MetadataChanges;->EXCLUDE:Lcom/google/firebase/firestore/MetadataChanges;

    .line 294
    :cond_0
    const-string p2, "<this>"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "metadataChanges"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 296
    .local p2, "$i$f$dataObjects":I
    invoke-static {p0, p1}, Lcom/google/firebase/firestore/FirestoreKt;->snapshots(Lcom/google/firebase/firestore/DocumentReference;Lcom/google/firebase/firestore/MetadataChanges;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p3

    .local p3, "$this$map$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v0, 0x0

    .line 308
    .local v0, "$i$f$map":I
    move-object v1, p3

    .local v1, "$this$unsafeTransform$iv$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v2, 0x0

    .line 309
    .local v2, "$i$f$unsafeTransform":I
    const/4 v3, 0x0

    .line 305
    .local v3, "$i$f$unsafeFlow":I
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v4, Lcom/google/firebase/firestore/FirestoreKt$dataObjects$$inlined$map$2;

    invoke-direct {v4, v1}, Lcom/google/firebase/firestore/FirestoreKt$dataObjects$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    check-cast v4, Lkotlinx/coroutines/flow/Flow;

    .line 314
    .end local v3    # "$i$f$unsafeFlow":I
    nop

    .line 315
    .end local v1    # "$this$unsafeTransform$iv$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v2    # "$i$f$unsafeTransform":I
    nop

    .line 296
    .end local v0    # "$i$f$map":I
    .end local p3    # "$this$map$iv":Lkotlinx/coroutines/flow/Flow;
    return-object v4
.end method

.method public static synthetic dataObjects$default(Lcom/google/firebase/firestore/Query;Lcom/google/firebase/firestore/MetadataChanges;ILjava/lang/Object;)Lkotlinx/coroutines/flow/Flow;
    .locals 5
    .param p0, "$this$dataObjects_u24default"    # Lcom/google/firebase/firestore/Query;
    .param p1, "metadataChanges"    # Lcom/google/firebase/firestore/MetadataChanges;

    .line 280
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 281
    sget-object p1, Lcom/google/firebase/firestore/MetadataChanges;->EXCLUDE:Lcom/google/firebase/firestore/MetadataChanges;

    .line 280
    :cond_0
    const-string p2, "<this>"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "metadataChanges"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 282
    .local p2, "$i$f$dataObjects":I
    invoke-static {p0, p1}, Lcom/google/firebase/firestore/FirestoreKt;->snapshots(Lcom/google/firebase/firestore/Query;Lcom/google/firebase/firestore/MetadataChanges;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p3

    .local p3, "$this$map$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v0, 0x0

    .line 298
    .local v0, "$i$f$map":I
    move-object v1, p3

    .local v1, "$this$unsafeTransform$iv$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v2, 0x0

    .line 299
    .local v2, "$i$f$unsafeTransform":I
    const/4 v3, 0x0

    .line 300
    .local v3, "$i$f$unsafeFlow":I
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v4, Lcom/google/firebase/firestore/FirestoreKt$dataObjects$$inlined$map$1;

    invoke-direct {v4, v1}, Lcom/google/firebase/firestore/FirestoreKt$dataObjects$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    check-cast v4, Lkotlinx/coroutines/flow/Flow;

    .line 301
    .end local v3    # "$i$f$unsafeFlow":I
    nop

    .line 302
    .end local v1    # "$this$unsafeTransform$iv$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v2    # "$i$f$unsafeTransform":I
    nop

    .line 282
    .end local v0    # "$i$f$map":I
    .end local p3    # "$this$map$iv":Lkotlinx/coroutines/flow/Flow;
    return-object v4
.end method

.method public static final firestore(Lcom/google/firebase/Firebase;Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/firestore/FirebaseFirestore;
    .locals 2
    .param p0, "$this$firestore"    # Lcom/google/firebase/Firebase;
    .param p1, "app"    # Lcom/google/firebase/FirebaseApp;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "app"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-static {p1}, Lcom/google/firebase/firestore/FirebaseFirestore;->getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object v0

    const-string v1, "getInstance(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final firestore(Lcom/google/firebase/Firebase;Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)Lcom/google/firebase/firestore/FirebaseFirestore;
    .locals 2
    .param p0, "$this$firestore"    # Lcom/google/firebase/Firebase;
    .param p1, "app"    # Lcom/google/firebase/FirebaseApp;
    .param p2, "database"    # Ljava/lang/String;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "app"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "database"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-static {p1, p2}, Lcom/google/firebase/firestore/FirebaseFirestore;->getInstance(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object v0

    const-string v1, "getInstance(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final firestore(Lcom/google/firebase/Firebase;Ljava/lang/String;)Lcom/google/firebase/firestore/FirebaseFirestore;
    .locals 2
    .param p0, "$this$firestore"    # Lcom/google/firebase/Firebase;
    .param p1, "database"    # Ljava/lang/String;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "database"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-static {p1}, Lcom/google/firebase/firestore/FirebaseFirestore;->getInstance(Ljava/lang/String;)Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object v0

    const-string v1, "getInstance(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final firestoreSettings(Lkotlin/jvm/functions/Function1;)Lcom/google/firebase/firestore/FirebaseFirestoreSettings;
    .locals 3
    .param p0, "init"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/google/firebase/firestore/FirebaseFirestoreSettings;"
        }
    .end annotation

    const-string v0, "init"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    new-instance v0, Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;

    invoke-direct {v0}, Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;-><init>()V

    .line 185
    .local v0, "builder":Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    invoke-virtual {v0}, Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;->build()Lcom/google/firebase/firestore/FirebaseFirestoreSettings;

    move-result-object v1

    const-string v2, "build(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public static final synthetic getField(Lcom/google/firebase/firestore/DocumentSnapshot;Lcom/google/firebase/firestore/FieldPath;)Ljava/lang/Object;
    .locals 3
    .param p0, "$this$getField"    # Lcom/google/firebase/firestore/DocumentSnapshot;
    .param p1, "fieldPath"    # Lcom/google/firebase/firestore/FieldPath;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/firebase/firestore/DocumentSnapshot;",
            "Lcom/google/firebase/firestore/FieldPath;",
            ")TT;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fieldPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 115
    .local v0, "$i$f$getField":I
    const/4 v1, 0x4

    const-string v2, "T"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v1, Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {p0, p1, v1}, Lcom/google/firebase/firestore/DocumentSnapshot;->get(Lcom/google/firebase/firestore/FieldPath;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static final synthetic getField(Lcom/google/firebase/firestore/DocumentSnapshot;Lcom/google/firebase/firestore/FieldPath;Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;)Ljava/lang/Object;
    .locals 3
    .param p0, "$this$getField"    # Lcom/google/firebase/firestore/DocumentSnapshot;
    .param p1, "fieldPath"    # Lcom/google/firebase/firestore/FieldPath;
    .param p2, "serverTimestampBehavior"    # Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/firebase/firestore/DocumentSnapshot;",
            "Lcom/google/firebase/firestore/FieldPath;",
            "Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;",
            ")TT;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fieldPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serverTimestampBehavior"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 133
    .local v0, "$i$f$getField":I
    const/4 v1, 0x4

    const-string v2, "T"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v1, Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {p0, p1, v1, p2}, Lcom/google/firebase/firestore/DocumentSnapshot;->get(Lcom/google/firebase/firestore/FieldPath;Ljava/lang/Class;Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static final synthetic getField(Lcom/google/firebase/firestore/DocumentSnapshot;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p0, "$this$getField"    # Lcom/google/firebase/firestore/DocumentSnapshot;
    .param p1, "field"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/firebase/firestore/DocumentSnapshot;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "field"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 86
    .local v0, "$i$f$getField":I
    const/4 v1, 0x4

    const-string v2, "T"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v1, Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {p0, p1, v1}, Lcom/google/firebase/firestore/DocumentSnapshot;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static final synthetic getField(Lcom/google/firebase/firestore/DocumentSnapshot;Ljava/lang/String;Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;)Ljava/lang/Object;
    .locals 3
    .param p0, "$this$getField"    # Lcom/google/firebase/firestore/DocumentSnapshot;
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "serverTimestampBehavior"    # Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/firebase/firestore/DocumentSnapshot;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;",
            ")TT;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "field"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serverTimestampBehavior"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 104
    .local v0, "$i$f$getField":I
    const/4 v1, 0x4

    const-string v2, "T"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v1, Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {p0, p1, v1, p2}, Lcom/google/firebase/firestore/DocumentSnapshot;->get(Ljava/lang/String;Ljava/lang/Class;Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static final getFirestore(Lcom/google/firebase/Firebase;)Lcom/google/firebase/firestore/FirebaseFirestore;
    .locals 2
    .param p0, "$this$firestore"    # Lcom/google/firebase/Firebase;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-static {}, Lcom/google/firebase/firestore/FirebaseFirestore;->getInstance()Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object v0

    const-string v1, "getInstance(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final memoryCacheSettings(Lkotlin/jvm/functions/Function1;)Lcom/google/firebase/firestore/MemoryCacheSettings;
    .locals 3
    .param p0, "init"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/firestore/MemoryCacheSettings$Builder;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/google/firebase/firestore/MemoryCacheSettings;"
        }
    .end annotation

    const-string v0, "init"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    invoke-static {}, Lcom/google/firebase/firestore/MemoryCacheSettings;->newBuilder()Lcom/google/firebase/firestore/MemoryCacheSettings$Builder;

    move-result-object v0

    const-string v1, "newBuilder(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    .local v0, "builder":Lcom/google/firebase/firestore/MemoryCacheSettings$Builder;
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    invoke-virtual {v0}, Lcom/google/firebase/firestore/MemoryCacheSettings$Builder;->build()Lcom/google/firebase/firestore/MemoryCacheSettings;

    move-result-object v1

    const-string v2, "build(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public static final memoryEagerGcSettings(Lkotlin/jvm/functions/Function1;)Lcom/google/firebase/firestore/MemoryEagerGcSettings;
    .locals 3
    .param p0, "init"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/firestore/MemoryEagerGcSettings$Builder;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/google/firebase/firestore/MemoryEagerGcSettings;"
        }
    .end annotation

    const-string v0, "init"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    invoke-static {}, Lcom/google/firebase/firestore/MemoryEagerGcSettings;->newBuilder()Lcom/google/firebase/firestore/MemoryEagerGcSettings$Builder;

    move-result-object v0

    const-string v1, "newBuilder(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    .local v0, "builder":Lcom/google/firebase/firestore/MemoryEagerGcSettings$Builder;
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    invoke-virtual {v0}, Lcom/google/firebase/firestore/MemoryEagerGcSettings$Builder;->build()Lcom/google/firebase/firestore/MemoryEagerGcSettings;

    move-result-object v1

    const-string v2, "build(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public static final memoryLruGcSettings(Lkotlin/jvm/functions/Function1;)Lcom/google/firebase/firestore/MemoryLruGcSettings;
    .locals 3
    .param p0, "init"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/firestore/MemoryLruGcSettings$Builder;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/google/firebase/firestore/MemoryLruGcSettings;"
        }
    .end annotation

    const-string v0, "init"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    invoke-static {}, Lcom/google/firebase/firestore/MemoryLruGcSettings;->newBuilder()Lcom/google/firebase/firestore/MemoryLruGcSettings$Builder;

    move-result-object v0

    const-string v1, "newBuilder(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    .local v0, "builder":Lcom/google/firebase/firestore/MemoryLruGcSettings$Builder;
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    invoke-virtual {v0}, Lcom/google/firebase/firestore/MemoryLruGcSettings$Builder;->build()Lcom/google/firebase/firestore/MemoryLruGcSettings;

    move-result-object v1

    const-string v2, "build(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public static final persistentCacheSettings(Lkotlin/jvm/functions/Function1;)Lcom/google/firebase/firestore/PersistentCacheSettings;
    .locals 3
    .param p0, "init"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/firestore/PersistentCacheSettings$Builder;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/google/firebase/firestore/PersistentCacheSettings;"
        }
    .end annotation

    const-string v0, "init"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    invoke-static {}, Lcom/google/firebase/firestore/PersistentCacheSettings;->newBuilder()Lcom/google/firebase/firestore/PersistentCacheSettings$Builder;

    move-result-object v0

    const-string v1, "newBuilder(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    .local v0, "builder":Lcom/google/firebase/firestore/PersistentCacheSettings$Builder;
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    invoke-virtual {v0}, Lcom/google/firebase/firestore/PersistentCacheSettings$Builder;->build()Lcom/google/firebase/firestore/PersistentCacheSettings;

    move-result-object v1

    const-string v2, "build(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public static final snapshots(Lcom/google/firebase/firestore/DocumentReference;Lcom/google/firebase/firestore/MetadataChanges;)Lkotlinx/coroutines/flow/Flow;
    .locals 2
    .param p0, "$this$snapshots"    # Lcom/google/firebase/firestore/DocumentReference;
    .param p1, "metadataChanges"    # Lcom/google/firebase/firestore/MetadataChanges;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/DocumentReference;",
            "Lcom/google/firebase/firestore/MetadataChanges;",
            ")",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/google/firebase/firestore/DocumentSnapshot;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metadataChanges"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    new-instance v0, Lcom/google/firebase/firestore/FirestoreKt$snapshots$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/firebase/firestore/FirestoreKt$snapshots$1;-><init>(Lcom/google/firebase/firestore/DocumentReference;Lcom/google/firebase/firestore/MetadataChanges;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    return-object v0
.end method

.method public static final snapshots(Lcom/google/firebase/firestore/Query;Lcom/google/firebase/firestore/MetadataChanges;)Lkotlinx/coroutines/flow/Flow;
    .locals 2
    .param p0, "$this$snapshots"    # Lcom/google/firebase/firestore/Query;
    .param p1, "metadataChanges"    # Lcom/google/firebase/firestore/MetadataChanges;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/Query;",
            "Lcom/google/firebase/firestore/MetadataChanges;",
            ")",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/google/firebase/firestore/QuerySnapshot;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metadataChanges"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    new-instance v0, Lcom/google/firebase/firestore/FirestoreKt$snapshots$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/firebase/firestore/FirestoreKt$snapshots$2;-><init>(Lcom/google/firebase/firestore/Query;Lcom/google/firebase/firestore/MetadataChanges;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic snapshots$default(Lcom/google/firebase/firestore/DocumentReference;Lcom/google/firebase/firestore/MetadataChanges;ILjava/lang/Object;)Lkotlinx/coroutines/flow/Flow;
    .locals 0

    .line 230
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 231
    sget-object p1, Lcom/google/firebase/firestore/MetadataChanges;->EXCLUDE:Lcom/google/firebase/firestore/MetadataChanges;

    .line 230
    :cond_0
    invoke-static {p0, p1}, Lcom/google/firebase/firestore/FirestoreKt;->snapshots(Lcom/google/firebase/firestore/DocumentReference;Lcom/google/firebase/firestore/MetadataChanges;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic snapshots$default(Lcom/google/firebase/firestore/Query;Lcom/google/firebase/firestore/MetadataChanges;ILjava/lang/Object;)Lkotlinx/coroutines/flow/Flow;
    .locals 0

    .line 254
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 255
    sget-object p1, Lcom/google/firebase/firestore/MetadataChanges;->EXCLUDE:Lcom/google/firebase/firestore/MetadataChanges;

    .line 254
    :cond_0
    invoke-static {p0, p1}, Lcom/google/firebase/firestore/FirestoreKt;->snapshots(Lcom/google/firebase/firestore/Query;Lcom/google/firebase/firestore/MetadataChanges;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic toObject(Lcom/google/firebase/firestore/DocumentSnapshot;)Ljava/lang/Object;
    .locals 3
    .param p0, "$this$toObject"    # Lcom/google/firebase/firestore/DocumentSnapshot;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/firebase/firestore/DocumentSnapshot;",
            ")TT;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 58
    .local v0, "$i$f$toObject":I
    const/4 v1, 0x4

    const-string v2, "T"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v1, Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {p0, v1}, Lcom/google/firebase/firestore/DocumentSnapshot;->toObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static final synthetic toObject(Lcom/google/firebase/firestore/DocumentSnapshot;Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;)Ljava/lang/Object;
    .locals 3
    .param p0, "$this$toObject"    # Lcom/google/firebase/firestore/DocumentSnapshot;
    .param p1, "serverTimestampBehavior"    # Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/firebase/firestore/DocumentSnapshot;",
            "Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;",
            ")TT;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serverTimestampBehavior"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 76
    .local v0, "$i$f$toObject":I
    const/4 v1, 0x4

    const-string v2, "T"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v1, Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {p0, v1, p1}, Lcom/google/firebase/firestore/DocumentSnapshot;->toObject(Ljava/lang/Class;Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static final synthetic toObject(Lcom/google/firebase/firestore/QueryDocumentSnapshot;)Ljava/lang/Object;
    .locals 3
    .param p0, "$this$toObject"    # Lcom/google/firebase/firestore/QueryDocumentSnapshot;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/firebase/firestore/QueryDocumentSnapshot;",
            ")TT;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 141
    .local v0, "$i$f$toObject":I
    const/4 v1, 0x4

    const-string v2, "T"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v1, Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {p0, v1}, Lcom/google/firebase/firestore/QueryDocumentSnapshot;->toObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static final synthetic toObject(Lcom/google/firebase/firestore/QueryDocumentSnapshot;Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;)Ljava/lang/Object;
    .locals 3
    .param p0, "$this$toObject"    # Lcom/google/firebase/firestore/QueryDocumentSnapshot;
    .param p1, "serverTimestampBehavior"    # Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/firebase/firestore/QueryDocumentSnapshot;",
            "Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;",
            ")TT;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serverTimestampBehavior"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 156
    .local v0, "$i$f$toObject":I
    const/4 v1, 0x4

    const-string v2, "T"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v1, Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {p0, v1, p1}, Lcom/google/firebase/firestore/QueryDocumentSnapshot;->toObject(Ljava/lang/Class;Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static final synthetic toObjects(Lcom/google/firebase/firestore/QuerySnapshot;)Ljava/util/List;
    .locals 3
    .param p0, "$this$toObjects"    # Lcom/google/firebase/firestore/QuerySnapshot;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/firebase/firestore/QuerySnapshot;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 164
    .local v0, "$i$f$toObjects":I
    const/4 v1, 0x4

    const-string v2, "T"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v1, Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {p0, v1}, Lcom/google/firebase/firestore/QuerySnapshot;->toObjects(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    const-string v2, "toObjects(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v1

    check-cast v2, Ljava/util/List;

    return-object v1
.end method

.method public static final synthetic toObjects(Lcom/google/firebase/firestore/QuerySnapshot;Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;)Ljava/util/List;
    .locals 3
    .param p0, "$this$toObjects"    # Lcom/google/firebase/firestore/QuerySnapshot;
    .param p1, "serverTimestampBehavior"    # Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/firebase/firestore/QuerySnapshot;",
            "Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serverTimestampBehavior"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 178
    .local v0, "$i$f$toObjects":I
    const/4 v1, 0x4

    const-string v2, "T"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v1, Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {p0, v1, p1}, Lcom/google/firebase/firestore/QuerySnapshot;->toObjects(Ljava/lang/Class;Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;)Ljava/util/List;

    move-result-object v1

    const-string v2, "toObjects(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v1

    check-cast v2, Ljava/util/List;

    return-object v1
.end method
