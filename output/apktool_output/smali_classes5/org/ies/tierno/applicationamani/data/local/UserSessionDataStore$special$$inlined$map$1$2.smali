.class public final Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore$special$$inlined$map$1$2;
.super Ljava/lang/Object;
.source "Emitters.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore$special$$inlined$map$1;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 UserSessionDataStore.kt\norg/ies/tierno/applicationamani/data/local/UserSessionDataStore\n*L\n1#1,49:1\n50#2:50\n38#3,25:51\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;)V
    .locals 0

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore$special$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 23
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore$special$$inlined$map$1$2$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore$special$$inlined$map$1$2$1;

    iget v3, v2, Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore$special$$inlined$map$1$2$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v3, v2, Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore$special$$inlined$map$1$2$1;->label:I

    sub-int/2addr v3, v4

    iput v3, v2, Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore$special$$inlined$map$1$2$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore$special$$inlined$map$1$2$1;

    invoke-direct {v2, v0, v1}, Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore$special$$inlined$map$1$2$1;-><init>(Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore$special$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    .local v2, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v3, v2, Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore$special$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    .local v3, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 36
    iget v5, v2, Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore$special$$inlined$map$1$2$1;->label:I

    packed-switch v5, :pswitch_data_0

    .end local v2    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v3    # "$result":Ljava/lang/Object;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .restart local v2    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v3    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget v4, v2, Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore$special$$inlined$map$1$2$1;->I$0:I

    .local v4, "$i$a$-unsafeTransform-FlowKt__TransformKt$map$1\\1\\49\\0":I
    iget-object v5, v2, Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore$special$$inlined$map$1$2$1;->L$3:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/flow/FlowCollector;

    .local v5, "$this$map_u24lambda_u245":Lkotlinx/coroutines/flow/FlowCollector;
    iget-object v6, v2, Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore$special$$inlined$map$1$2$1;->L$2:Ljava/lang/Object;

    .local v6, "value":Ljava/lang/Object;
    iget-object v7, v2, Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore$special$$inlined$map$1$2$1;->L$1:Ljava/lang/Object;

    check-cast v7, Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore$special$$inlined$map$1$2$1;

    .local v7, "$completion":Lkotlin/coroutines/Continuation;
    iget-object v8, v2, Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore$special$$inlined$map$1$2$1;->L$0:Ljava/lang/Object;

    .end local p1    # "value":Ljava/lang/Object;
    .local v8, "value":Ljava/lang/Object;
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    .end local v4    # "$i$a$-unsafeTransform-FlowKt__TransformKt$map$1\\1\\49\\0":I
    .end local v5    # "$this$map_u24lambda_u245":Lkotlinx/coroutines/flow/FlowCollector;
    .end local v6    # "value":Ljava/lang/Object;
    .end local v7    # "$completion":Lkotlin/coroutines/Continuation;
    .end local v8    # "value":Ljava/lang/Object;
    .restart local p1    # "value":Ljava/lang/Object;
    :pswitch_1
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 49
    iget-object v5, v0, Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore$special$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    .restart local v5    # "$this$map_u24lambda_u245":Lkotlinx/coroutines/flow/FlowCollector;
    move-object v7, v2

    .restart local v7    # "$completion":Lkotlin/coroutines/Continuation;
    move-object/from16 v6, p1

    .restart local v6    # "value":Ljava/lang/Object;
    const/4 v8, 0x0

    .line 50
    .local v8, "$i$a$-unsafeTransform-FlowKt__TransformKt$map$1\\1\\49\\0":I
    move-object v9, v2

    check-cast v9, Lkotlin/coroutines/Continuation;

    .local v9, "$completion\\1":Lkotlin/coroutines/Continuation;
    move-object v10, v6

    check-cast v10, Landroidx/datastore/preferences/core/Preferences;

    .local v10, "preferences\\1":Landroidx/datastore/preferences/core/Preferences;
    const/4 v11, 0x0

    .line 51
    .local v11, "$i$a$-map-UserSessionDataStore$sessionFlow$1\\1\\50\\0":I
    invoke-static {}, Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;->access$getUSER_ID_KEY$cp()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroidx/datastore/preferences/core/Preferences;->get(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    .line 52
    .local v12, "idUsuario\\1":Ljava/lang/Long;
    invoke-static {}, Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;->access$getUSER_NAME_KEY$cp()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroidx/datastore/preferences/core/Preferences;->get(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v17, v13

    check-cast v17, Ljava/lang/String;

    .line 53
    .local v17, "nombre\\1":Ljava/lang/String;
    invoke-static {}, Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;->access$getUSER_ROLE_KEY$cp()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroidx/datastore/preferences/core/Preferences;->get(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v18, v13

    check-cast v18, Ljava/lang/String;

    .line 54
    .local v18, "rol\\1":Ljava/lang/String;
    invoke-static {}, Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;->access$getPSYCHOLOGIST_ID_KEY$cp()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroidx/datastore/preferences/core/Preferences;->get(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    .line 55
    .local v13, "idPsicologo\\1":Ljava/lang/Long;
    invoke-static {}, Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;->access$getPATIENT_ID_KEY$cp()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroidx/datastore/preferences/core/Preferences;->get(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v20, v14

    check-cast v20, Ljava/lang/Long;

    .line 58
    .local v20, "idPaciente\\1":Ljava/lang/Long;
    nop

    .line 59
    const/4 v14, 0x0

    if-nez v13, :cond_1

    move-object/from16 v19, v14

    goto :goto_1

    .line 60
    :cond_1
    const-wide/16 v15, 0x0

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    cmp-long v15, v21, v15

    if-nez v15, :cond_2

    move-object/from16 v19, v14

    goto :goto_1

    .line 61
    :cond_2
    move-object/from16 v19, v13

    .line 58
    :goto_1
    nop

    .line 65
    .local v19, "normalizedPsychologistId\\1":Ljava/lang/Long;
    if-eqz v12, :cond_3

    if-eqz v18, :cond_3

    .line 66
    new-instance v14, Lorg/ies/tierno/applicationamani/data/local/UserSession;

    .line 67
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    .line 68
    nop

    .line 69
    nop

    .line 70
    nop

    .line 71
    nop

    .line 66
    invoke-direct/range {v14 .. v20}, Lorg/ies/tierno/applicationamani/data/local/UserSession;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    goto :goto_2

    .line 74
    :cond_3
    nop

    .line 75
    :goto_2
    nop

    .line 50
    .end local v9    # "$completion\\1":Lkotlin/coroutines/Continuation;
    .end local v10    # "preferences\\1":Landroidx/datastore/preferences/core/Preferences;
    .end local v11    # "$i$a$-map-UserSessionDataStore$sessionFlow$1\\1\\50\\0":I
    .end local v12    # "idUsuario\\1":Ljava/lang/Long;
    .end local v13    # "idPsicologo\\1":Ljava/lang/Long;
    .end local v17    # "nombre\\1":Ljava/lang/String;
    .end local v18    # "rol\\1":Ljava/lang/String;
    .end local v19    # "normalizedPsychologistId\\1":Ljava/lang/Long;
    .end local v20    # "idPaciente\\1":Ljava/lang/Long;
    invoke-static/range {p1 .. p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    iput-object v9, v2, Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore$special$$inlined$map$1$2$1;->L$0:Ljava/lang/Object;

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    iput-object v9, v2, Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore$special$$inlined$map$1$2$1;->L$1:Ljava/lang/Object;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    iput-object v9, v2, Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore$special$$inlined$map$1$2$1;->L$2:Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    iput-object v9, v2, Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore$special$$inlined$map$1$2$1;->L$3:Ljava/lang/Object;

    iput v8, v2, Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore$special$$inlined$map$1$2$1;->I$0:I

    const/4 v9, 0x1

    iput v9, v2, Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore$special$$inlined$map$1$2$1;->label:I

    invoke-interface {v5, v14, v2}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v4, :cond_4

    .line 36
    return-object v4

    .line 50
    :cond_4
    move v4, v8

    move-object/from16 v8, p1

    .line 49
    .end local p1    # "value":Ljava/lang/Object;
    .restart local v4    # "$i$a$-unsafeTransform-FlowKt__TransformKt$map$1\\1\\49\\0":I
    .local v8, "value":Ljava/lang/Object;
    :goto_3
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .end local v4    # "$i$a$-unsafeTransform-FlowKt__TransformKt$map$1\\1\\49\\0":I
    .end local v5    # "$this$map_u24lambda_u245":Lkotlinx/coroutines/flow/FlowCollector;
    .end local v6    # "value":Ljava/lang/Object;
    .end local v7    # "$completion":Lkotlin/coroutines/Continuation;
    return-object v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
