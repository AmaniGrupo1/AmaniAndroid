.class public final Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$observeMessages$1$listener$1;
.super Ljava/lang/Object;
.source "ChatFirebaseService.kt"

# interfaces
.implements Lcom/google/firebase/database/ValueEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$observeMessages$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChatFirebaseService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatFirebaseService.kt\norg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$observeMessages$1$listener$1\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,305:1\n508#2:306\n454#2:307\n1266#3,4:308\n1068#3:312\n*S KotlinDebug\n*F\n+ 1 ChatFirebaseService.kt\norg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$observeMessages$1$listener$1\n*L\n51#1:306\n51#1:307\n51#1:308,4\n72#1:312\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "org/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$observeMessages$1$listener$1",
        "Lcom/google/firebase/database/ValueEventListener;",
        "onDataChange",
        "",
        "snapshot",
        "Lcom/google/firebase/database/DataSnapshot;",
        "onCancelled",
        "error",
        "Lcom/google/firebase/database/DatabaseError;",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/ProducerScope<",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/domain/models/Message;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $userId1:J


# direct methods
.method constructor <init>(JLkotlinx/coroutines/channels/ProducerScope;)V
    .locals 0
    .param p1, "$userId1"    # J
    .param p3, "$$this$callbackFlow"    # Lkotlinx/coroutines/channels/ProducerScope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlinx/coroutines/channels/ProducerScope<",
            "-",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/domain/models/Message;",
            ">;>;)V"
        }
    .end annotation

    iput-wide p1, p0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$observeMessages$1$listener$1;->$userId1:J

    iput-object p3, p0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$observeMessages$1$listener$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled(Lcom/google/firebase/database/DatabaseError;)V
    .locals 2
    .param p1, "error"    # Lcom/google/firebase/database/DatabaseError;

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$observeMessages$1$listener$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    invoke-virtual {p1}, Lcom/google/firebase/database/DatabaseError;->toException()Lcom/google/firebase/database/DatabaseException;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/channels/ProducerScope;->close(Ljava/lang/Throwable;)Z

    .line 77
    return-void
.end method

.method public onDataChange(Lcom/google/firebase/database/DataSnapshot;)V
    .locals 31
    .param p1, "snapshot"    # Lcom/google/firebase/database/DataSnapshot;

    move-object/from16 v1, p0

    const-string v0, "snapshot"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    check-cast v3, Ljava/util/List;

    .line 33
    .local v3, "messages":Ljava/util/List;
    invoke-virtual {v2}, Lcom/google/firebase/database/DataSnapshot;->getChildren()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/google/firebase/database/DataSnapshot;

    .line 34
    .local v5, "child":Lcom/google/firebase/database/DataSnapshot;
    const-string v0, "idMensaje"

    invoke-virtual {v5, v0}, Lcom/google/firebase/database/DataSnapshot;->child(Ljava/lang/String;)Lcom/google/firebase/database/DataSnapshot;

    move-result-object v0

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v6}, Lcom/google/firebase/database/DataSnapshot;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    const-wide/16 v6, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    goto :goto_1

    :cond_0
    move-wide v8, v6

    .line 35
    .local v8, "idMensaje":J
    :goto_1
    const-string v0, "idSender"

    invoke-virtual {v5, v0}, Lcom/google/firebase/database/DataSnapshot;->child(Ljava/lang/String;)Lcom/google/firebase/database/DataSnapshot;

    move-result-object v0

    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v10}, Lcom/google/firebase/database/DataSnapshot;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 36
    .local v6, "senderId":J
    :cond_1
    const-string v0, "mensaje"

    invoke-virtual {v5, v0}, Lcom/google/firebase/database/DataSnapshot;->child(Ljava/lang/String;)Lcom/google/firebase/database/DataSnapshot;

    move-result-object v0

    const-class v10, Ljava/lang/String;

    invoke-virtual {v0, v10}, Lcom/google/firebase/database/DataSnapshot;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    :cond_2
    move-object v14, v0

    .line 37
    .local v14, "mensaje":Ljava/lang/String;
    const-string v0, "enviadoEn"

    invoke-virtual {v5, v0}, Lcom/google/firebase/database/DataSnapshot;->child(Ljava/lang/String;)Lcom/google/firebase/database/DataSnapshot;

    move-result-object v0

    const-class v10, Ljava/lang/String;

    invoke-virtual {v0, v10}, Lcom/google/firebase/database/DataSnapshot;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Ljava/lang/String;

    .line 38
    .local v25, "enviadoEn":Ljava/lang/String;
    const-string v0, "leido"

    invoke-virtual {v5, v0}, Lcom/google/firebase/database/DataSnapshot;->child(Ljava/lang/String;)Lcom/google/firebase/database/DataSnapshot;

    move-result-object v0

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v10}, Lcom/google/firebase/database/DataSnapshot;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    move/from16 v20, v0

    .line 39
    .local v20, "leido":Z
    const-string v0, "attachmentUrl"

    invoke-virtual {v5, v0}, Lcom/google/firebase/database/DataSnapshot;->child(Ljava/lang/String;)Lcom/google/firebase/database/DataSnapshot;

    move-result-object v0

    const-class v10, Ljava/lang/String;

    invoke-virtual {v0, v10}, Lcom/google/firebase/database/DataSnapshot;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Ljava/lang/String;

    .line 40
    .local v15, "attachmentUrl":Ljava/lang/String;
    const-string v0, "attachmentType"

    invoke-virtual {v5, v0}, Lcom/google/firebase/database/DataSnapshot;->child(Ljava/lang/String;)Lcom/google/firebase/database/DataSnapshot;

    move-result-object v0

    const-class v10, Ljava/lang/String;

    invoke-virtual {v0, v10}, Lcom/google/firebase/database/DataSnapshot;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_4

    move-object v11, v0

    .local v11, "it\\1":Ljava/lang/String;
    const/4 v12, 0x0

    .line 41
    .local v12, "$i$a$-let-ChatFirebaseService$observeMessages$1$listener$1$onDataChange$attachmentType$1\\1\\40\\0":I
    nop

    .line 42
    :try_start_0
    invoke-static {v11}, Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;->valueOf(Ljava/lang/String;)Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e\\1":Ljava/lang/IllegalArgumentException;
    const/4 v0, 0x0

    .line 45
    .end local v0    # "e\\1":Ljava/lang/IllegalArgumentException;
    :goto_3
    nop

    .line 40
    .end local v11    # "it\\1":Ljava/lang/String;
    .end local v12    # "$i$a$-let-ChatFirebaseService$observeMessages$1$listener$1$onDataChange$attachmentType$1\\1\\40\\0":I
    move-object/from16 v16, v0

    goto :goto_4

    :cond_4
    const/16 v16, 0x0

    .line 47
    .local v16, "attachmentType":Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;
    :goto_4
    const-string v0, "attachmentName"

    invoke-virtual {v5, v0}, Lcom/google/firebase/database/DataSnapshot;->child(Ljava/lang/String;)Lcom/google/firebase/database/DataSnapshot;

    move-result-object v0

    const-class v11, Ljava/lang/String;

    invoke-virtual {v0, v11}, Lcom/google/firebase/database/DataSnapshot;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/String;

    .line 50
    .local v17, "attachmentName":Ljava/lang/String;
    const-string v0, "readBy"

    invoke-virtual {v5, v0}, Lcom/google/firebase/database/DataSnapshot;->child(Ljava/lang/String;)Lcom/google/firebase/database/DataSnapshot;

    move-result-object v0

    const-class v11, Ljava/util/Map;

    invoke-virtual {v0, v11}, Lcom/google/firebase/database/DataSnapshot;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    instance-of v11, v0, Ljava/util/Map;

    if-eqz v11, :cond_5

    check-cast v0, Ljava/util/Map;

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    .line 51
    .local v0, "readByData":Ljava/util/Map;
    :goto_5
    if-eqz v0, :cond_7

    move-object v11, v0

    .local v11, "$this$mapKeys\\2":Ljava/util/Map;
    const/4 v12, 0x0

    .line 306
    .local v12, "$i$f$mapKeys\\2\\51":I
    new-instance v13, Ljava/util/LinkedHashMap;

    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v18

    invoke-static/range {v18 .. v18}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v10

    invoke-direct {v13, v10}, Ljava/util/LinkedHashMap;-><init>(I)V

    move-object v10, v13

    check-cast v10, Ljava/util/Map;

    .local v10, "destination\\3":Ljava/util/Map;
    move-object v13, v11

    .local v13, "$this$mapKeysTo\\3":Ljava/util/Map;
    const/16 v18, 0x0

    .line 307
    .local v18, "$i$f$mapKeysTo\\3\\306":I
    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v21

    check-cast v21, Ljava/lang/Iterable;

    .local v21, "$this$associateByTo\\4":Ljava/lang/Iterable;
    move-object/from16 v22, v10

    .local v22, "destination\\4":Ljava/util/Map;
    const/16 v23, 0x0

    .line 308
    .local v23, "$i$f$associateByTo\\4\\307":I
    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :goto_6
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_6

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    .line 309
    .local v26, "element\\4":Ljava/lang/Object;
    move-object/from16 v27, v26

    check-cast v27, Ljava/util/Map$Entry;

    .local v27, "it\\6":Ljava/util/Map$Entry;
    const/16 v28, 0x0

    .line 51
    .local v28, "$i$a$-mapKeys-ChatFirebaseService$observeMessages$1$listener$1$onDataChange$readBy$1\\6\\309\\0":I
    invoke-interface/range {v27 .. v27}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v29

    move-object/from16 v30, v0

    .end local v0    # "readByData":Ljava/util/Map;
    .local v30, "readByData":Ljava/util/Map;
    move-object/from16 v0, v29

    check-cast v0, Ljava/lang/String;

    .line 309
    .end local v27    # "it\\6":Ljava/util/Map$Entry;
    .end local v28    # "$i$a$-mapKeys-ChatFirebaseService$observeMessages$1$listener$1$onDataChange$readBy$1\\6\\309\\0":I
    move-object/from16 v27, v26

    check-cast v27, Ljava/util/Map$Entry;

    .local v27, "it\\5":Ljava/util/Map$Entry;
    const/16 v28, 0x0

    .line 307
    .local v28, "$i$a$-associateByTo-MapsKt__MapsKt$mapKeysTo$1\\5\\309\\3":I
    invoke-interface/range {v27 .. v27}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 309
    .end local v27    # "it\\5":Ljava/util/Map$Entry;
    .end local v28    # "$i$a$-associateByTo-MapsKt__MapsKt$mapKeysTo$1\\5\\309\\3":I
    move-object/from16 v27, v4

    move-object/from16 v4, v22

    .end local v22    # "destination\\4":Ljava/util/Map;
    .local v4, "destination\\4":Ljava/util/Map;
    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v2, p1

    move-object/from16 v4, v27

    move-object/from16 v0, v30

    goto :goto_6

    .line 311
    .end local v4    # "destination\\4":Ljava/util/Map;
    .end local v26    # "element\\4":Ljava/lang/Object;
    .end local v30    # "readByData":Ljava/util/Map;
    .restart local v0    # "readByData":Ljava/util/Map;
    .restart local v22    # "destination\\4":Ljava/util/Map;
    :cond_6
    move-object/from16 v30, v0

    move-object/from16 v27, v4

    move-object/from16 v4, v22

    .line 307
    .end local v0    # "readByData":Ljava/util/Map;
    .end local v21    # "$this$associateByTo\\4":Ljava/lang/Iterable;
    .end local v22    # "destination\\4":Ljava/util/Map;
    .end local v23    # "$i$f$associateByTo\\4\\307":I
    .restart local v30    # "readByData":Ljava/util/Map;
    nop

    .line 306
    .end local v10    # "destination\\3":Ljava/util/Map;
    .end local v13    # "$this$mapKeysTo\\3":Ljava/util/Map;
    .end local v18    # "$i$f$mapKeysTo\\3\\306":I
    nop

    .end local v11    # "$this$mapKeys\\2":Ljava/util/Map;
    .end local v12    # "$i$f$mapKeys\\2\\51":I
    goto :goto_7

    .line 51
    .end local v30    # "readByData":Ljava/util/Map;
    .restart local v0    # "readByData":Ljava/util/Map;
    :cond_7
    move-object/from16 v30, v0

    move-object/from16 v27, v4

    .end local v0    # "readByData":Ljava/util/Map;
    .restart local v30    # "readByData":Ljava/util/Map;
    const/4 v4, 0x0

    :goto_7
    instance-of v0, v4, Ljava/util/Map;

    if-eqz v0, :cond_8

    move-object/from16 v22, v4

    goto :goto_8

    :cond_8
    const/16 v22, 0x0

    .line 54
    .local v22, "readBy":Ljava/util/Map;
    :goto_8
    const-string v0, "deliveredTo"

    invoke-virtual {v5, v0}, Lcom/google/firebase/database/DataSnapshot;->child(Ljava/lang/String;)Lcom/google/firebase/database/DataSnapshot;

    move-result-object v0

    const-class v2, Ljava/util/Map;

    invoke-virtual {v0, v2}, Lcom/google/firebase/database/DataSnapshot;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/util/Map;

    if-eqz v2, :cond_9

    check-cast v0, Ljava/util/Map;

    goto :goto_9

    :cond_9
    const/4 v0, 0x0

    .line 55
    .local v0, "deliveredToData":Ljava/util/Map;
    :goto_9
    if-eqz v0, :cond_a

    iget-wide v10, v1, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$observeMessages$1$listener$1;->$userId1:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_a

    :cond_a
    const/4 v2, 0x0

    :goto_a
    instance-of v4, v2, Ljava/lang/Long;

    if-eqz v4, :cond_b

    move-object v10, v2

    check-cast v10, Ljava/lang/Long;

    move-object/from16 v21, v10

    goto :goto_b

    :cond_b
    const/16 v21, 0x0

    .line 57
    .local v21, "deliveredAt":Ljava/lang/Long;
    :goto_b
    nop

    .line 59
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    .line 60
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    .line 62
    if-eqz v25, :cond_c

    invoke-static/range {v25 .. v25}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    goto :goto_c

    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 58
    :goto_c
    new-instance v10, Lorg/ies/tierno/applicationamani/domain/models/Message;

    .line 59
    nop

    .line 58
    nop

    .line 60
    nop

    .line 61
    nop

    .line 64
    nop

    .line 65
    nop

    .line 66
    nop

    .line 62
    nop

    .line 63
    nop

    .line 67
    nop

    .line 68
    nop

    .line 58
    const/16 v23, 0x2

    const/16 v24, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v10 .. v24}, Lorg/ies/tierno/applicationamani/domain/models/Message;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;Ljava/lang/String;JZLjava/lang/Long;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 57
    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, p1

    move-object/from16 v4, v27

    .end local v0    # "deliveredToData":Ljava/util/Map;
    .end local v6    # "senderId":J
    .end local v8    # "idMensaje":J
    .end local v14    # "mensaje":Ljava/lang/String;
    .end local v15    # "attachmentUrl":Ljava/lang/String;
    .end local v16    # "attachmentType":Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;
    .end local v17    # "attachmentName":Ljava/lang/String;
    .end local v20    # "leido":Z
    .end local v21    # "deliveredAt":Ljava/lang/Long;
    .end local v22    # "readBy":Ljava/util/Map;
    .end local v25    # "enviadoEn":Ljava/lang/String;
    .end local v30    # "readByData":Ljava/util/Map;
    goto/16 :goto_0

    .line 72
    .end local v5    # "child":Lcom/google/firebase/database/DataSnapshot;
    :cond_d
    iget-object v0, v1, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$observeMessages$1$listener$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    move-object v2, v3

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$sortedBy\\7":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 312
    .local v4, "$i$f$sortedBy\\7\\72":I
    new-instance v5, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$observeMessages$1$listener$1$onDataChange$$inlined$sortedBy$1;

    invoke-direct {v5}, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$observeMessages$1$listener$1$onDataChange$$inlined$sortedBy$1;-><init>()V

    check-cast v5, Ljava/util/Comparator;

    invoke-static {v2, v5}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v2

    .line 72
    .end local v2    # "$this$sortedBy\\7":Ljava/lang/Iterable;
    .end local v4    # "$i$f$sortedBy\\7\\72":I
    invoke-interface {v0, v2}, Lkotlinx/coroutines/channels/ProducerScope;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    return-void
.end method
