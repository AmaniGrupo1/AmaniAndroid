.class public final Lcom/google/firebase/firestore/pipeline/GenericArg$MapArg;
.super Lcom/google/firebase/firestore/pipeline/GenericArg;
.source "stage.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/pipeline/GenericArg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MapArg"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nstage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 stage.kt\ncom/google/firebase/firestore/pipeline/GenericArg$MapArg\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1328:1\n462#2:1329\n412#2:1330\n1246#3,4:1331\n*S KotlinDebug\n*F\n+ 1 stage.kt\ncom/google/firebase/firestore/pipeline/GenericArg$MapArg\n*L\n177#1:1329\n177#1:1330\n177#1:1331,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001b\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0015\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u0003H\u00c6\u0003J\u001f\u0010\u000e\u001a\u00020\u00002\u0014\u0008\u0002\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u0003H\u00c6\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u00d6\u0003J\t\u0010\u0013\u001a\u00020\u0014H\u00d6\u0001J\t\u0010\u0015\u001a\u00020\u0004H\u00d6\u0001R\u001d\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/google/firebase/firestore/pipeline/GenericArg$MapArg;",
        "Lcom/google/firebase/firestore/pipeline/GenericArg;",
        "args",
        "",
        "",
        "<init>",
        "(Ljava/util/Map;)V",
        "getArgs",
        "()Ljava/util/Map;",
        "toProto",
        "Lcom/google/firestore/v1/Value;",
        "userDataReader",
        "Lcom/google/firebase/firestore/UserDataReader;",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
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
.field private final args:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/firestore/pipeline/GenericArg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .param p1, "args"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/google/firebase/firestore/pipeline/GenericArg;",
            ">;)V"
        }
    .end annotation

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/pipeline/GenericArg;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/google/firebase/firestore/pipeline/GenericArg$MapArg;->args:Ljava/util/Map;

    return-void
.end method

.method public static synthetic copy$default(Lcom/google/firebase/firestore/pipeline/GenericArg$MapArg;Ljava/util/Map;ILjava/lang/Object;)Lcom/google/firebase/firestore/pipeline/GenericArg$MapArg;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/google/firebase/firestore/pipeline/GenericArg$MapArg;->args:Ljava/util/Map;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/pipeline/GenericArg$MapArg;->copy(Ljava/util/Map;)Lcom/google/firebase/firestore/pipeline/GenericArg$MapArg;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/firestore/pipeline/GenericArg;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/firestore/pipeline/GenericArg$MapArg;->args:Ljava/util/Map;

    return-object v0
.end method

.method public final copy(Ljava/util/Map;)Lcom/google/firebase/firestore/pipeline/GenericArg$MapArg;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/google/firebase/firestore/pipeline/GenericArg;",
            ">;)",
            "Lcom/google/firebase/firestore/pipeline/GenericArg$MapArg;"
        }
    .end annotation

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/google/firebase/firestore/pipeline/GenericArg$MapArg;

    invoke-direct {v0, p1}, Lcom/google/firebase/firestore/pipeline/GenericArg$MapArg;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/firebase/firestore/pipeline/GenericArg$MapArg;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/firebase/firestore/pipeline/GenericArg$MapArg;

    iget-object v3, p0, Lcom/google/firebase/firestore/pipeline/GenericArg$MapArg;->args:Ljava/util/Map;

    iget-object v1, v1, Lcom/google/firebase/firestore/pipeline/GenericArg$MapArg;->args:Ljava/util/Map;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getArgs()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/firestore/pipeline/GenericArg;",
            ">;"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/google/firebase/firestore/pipeline/GenericArg$MapArg;->args:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/firestore/pipeline/GenericArg$MapArg;->args:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toProto(Lcom/google/firebase/firestore/UserDataReader;)Lcom/google/firestore/v1/Value;
    .locals 13
    .param p1, "userDataReader"    # Lcom/google/firebase/firestore/UserDataReader;

    const-string v0, "userDataReader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/google/firebase/firestore/pipeline/GenericArg$MapArg;->args:Ljava/util/Map;

    .local v0, "$this$mapValues$iv":Ljava/util/Map;
    const/4 v1, 0x0

    .line 1329
    .local v1, "$i$f$mapValues":I
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    invoke-static {v3}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v2, Ljava/util/Map;

    .local v2, "destination$iv$iv":Ljava/util/Map;
    move-object v3, v0

    .local v3, "$this$mapValuesTo$iv$iv":Ljava/util/Map;
    const/4 v4, 0x0

    .line 1330
    .local v4, "$i$f$mapValuesTo":I
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    .local v5, "$this$associateByTo$iv$iv$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 1331
    .local v6, "$i$f$associateByTo":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 1332
    .local v8, "element$iv$iv$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Ljava/util/Map$Entry;

    .local v9, "it$iv$iv":Ljava/util/Map$Entry;
    const/4 v10, 0x0

    .line 1330
    .local v10, "$i$a$-associateByTo-MapsKt__MapsKt$mapValuesTo$1$iv$iv":I
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    .line 1332
    .end local v9    # "it$iv$iv":Ljava/util/Map$Entry;
    .end local v10    # "$i$a$-associateByTo-MapsKt__MapsKt$mapValuesTo$1$iv$iv":I
    move-object v10, v8

    check-cast v10, Ljava/util/Map$Entry;

    .local v10, "it":Ljava/util/Map$Entry;
    const/4 v11, 0x0

    .line 177
    .local v11, "$i$a$-mapValues-GenericArg$MapArg$toProto$1":I
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/firebase/firestore/pipeline/GenericArg;

    invoke-virtual {v12, p1}, Lcom/google/firebase/firestore/pipeline/GenericArg;->toProto(Lcom/google/firebase/firestore/UserDataReader;)Lcom/google/firestore/v1/Value;

    move-result-object v10

    .line 1332
    .end local v10    # "it":Ljava/util/Map$Entry;
    .end local v11    # "$i$a$-mapValues-GenericArg$MapArg$toProto$1":I
    invoke-interface {v2, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1334
    .end local v8    # "element$iv$iv$iv":Ljava/lang/Object;
    :cond_0
    nop

    .line 1330
    .end local v5    # "$this$associateByTo$iv$iv$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$associateByTo":I
    nop

    .line 1329
    .end local v2    # "destination$iv$iv":Ljava/util/Map;
    .end local v3    # "$this$mapValuesTo$iv$iv":Ljava/util/Map;
    .end local v4    # "$i$f$mapValuesTo":I
    nop

    .line 177
    .end local v0    # "$this$mapValues$iv":Ljava/util/Map;
    .end local v1    # "$i$f$mapValues":I
    invoke-static {v2}, Lcom/google/firebase/firestore/model/Values;->encodeValue(Ljava/util/Map;)Lcom/google/firestore/v1/Value;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MapArg(args="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/pipeline/GenericArg$MapArg;->args:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
