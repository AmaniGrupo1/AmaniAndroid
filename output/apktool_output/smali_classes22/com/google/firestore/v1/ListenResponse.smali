.class public final Lcom/google/firestore/v1/ListenResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ListenResponse.java"

# interfaces
.implements Lcom/google/firestore/v1/ListenResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;,
        Lcom/google/firestore/v1/ListenResponse$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/ListenResponse;",
        "Lcom/google/firestore/v1/ListenResponse$Builder;",
        ">;",
        "Lcom/google/firestore/v1/ListenResponseOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenResponse;

.field public static final DOCUMENT_CHANGE_FIELD_NUMBER:I = 0x3

.field public static final DOCUMENT_DELETE_FIELD_NUMBER:I = 0x4

.field public static final DOCUMENT_REMOVE_FIELD_NUMBER:I = 0x6

.field public static final FILTER_FIELD_NUMBER:I = 0x5

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/ListenResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final TARGET_CHANGE_FIELD_NUMBER:I = 0x2


# instance fields
.field private responseTypeCase_:I

.field private responseType_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1010
    new-instance v0, Lcom/google/firestore/v1/ListenResponse;

    invoke-direct {v0}, Lcom/google/firestore/v1/ListenResponse;-><init>()V

    .line 1013
    .local v0, "defaultInstance":Lcom/google/firestore/v1/ListenResponse;
    sput-object v0, Lcom/google/firestore/v1/ListenResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenResponse;

    .line 1014
    const-class v1, Lcom/google/firestore/v1/ListenResponse;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1016
    .end local v0    # "defaultInstance":Lcom/google/firestore/v1/ListenResponse;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseTypeCase_:I

    .line 20
    return-void
.end method

.method static synthetic access$000()Lcom/google/firestore/v1/ListenResponse;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/firestore/v1/ListenResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenResponse;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/firestore/v1/ListenResponse;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListenResponse;

    .line 14
    invoke-direct {p0}, Lcom/google/firestore/v1/ListenResponse;->clearResponseType()V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/firestore/v1/ListenResponse;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListenResponse;

    .line 14
    invoke-direct {p0}, Lcom/google/firestore/v1/ListenResponse;->clearDocumentDelete()V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/firestore/v1/ListenResponse;Lcom/google/firestore/v1/DocumentRemove;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListenResponse;
    .param p1, "x1"    # Lcom/google/firestore/v1/DocumentRemove;

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ListenResponse;->setDocumentRemove(Lcom/google/firestore/v1/DocumentRemove;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/firestore/v1/ListenResponse;Lcom/google/firestore/v1/DocumentRemove;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListenResponse;
    .param p1, "x1"    # Lcom/google/firestore/v1/DocumentRemove;

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ListenResponse;->mergeDocumentRemove(Lcom/google/firestore/v1/DocumentRemove;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/firestore/v1/ListenResponse;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListenResponse;

    .line 14
    invoke-direct {p0}, Lcom/google/firestore/v1/ListenResponse;->clearDocumentRemove()V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/firestore/v1/ListenResponse;Lcom/google/firestore/v1/ExistenceFilter;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListenResponse;
    .param p1, "x1"    # Lcom/google/firestore/v1/ExistenceFilter;

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ListenResponse;->setFilter(Lcom/google/firestore/v1/ExistenceFilter;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/firestore/v1/ListenResponse;Lcom/google/firestore/v1/ExistenceFilter;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListenResponse;
    .param p1, "x1"    # Lcom/google/firestore/v1/ExistenceFilter;

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ListenResponse;->mergeFilter(Lcom/google/firestore/v1/ExistenceFilter;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/firestore/v1/ListenResponse;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListenResponse;

    .line 14
    invoke-direct {p0}, Lcom/google/firestore/v1/ListenResponse;->clearFilter()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/firestore/v1/ListenResponse;Lcom/google/firestore/v1/TargetChange;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListenResponse;
    .param p1, "x1"    # Lcom/google/firestore/v1/TargetChange;

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ListenResponse;->setTargetChange(Lcom/google/firestore/v1/TargetChange;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/firestore/v1/ListenResponse;Lcom/google/firestore/v1/TargetChange;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListenResponse;
    .param p1, "x1"    # Lcom/google/firestore/v1/TargetChange;

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ListenResponse;->mergeTargetChange(Lcom/google/firestore/v1/TargetChange;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/firestore/v1/ListenResponse;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListenResponse;

    .line 14
    invoke-direct {p0}, Lcom/google/firestore/v1/ListenResponse;->clearTargetChange()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/firestore/v1/ListenResponse;Lcom/google/firestore/v1/DocumentChange;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListenResponse;
    .param p1, "x1"    # Lcom/google/firestore/v1/DocumentChange;

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ListenResponse;->setDocumentChange(Lcom/google/firestore/v1/DocumentChange;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/firestore/v1/ListenResponse;Lcom/google/firestore/v1/DocumentChange;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListenResponse;
    .param p1, "x1"    # Lcom/google/firestore/v1/DocumentChange;

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ListenResponse;->mergeDocumentChange(Lcom/google/firestore/v1/DocumentChange;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/firestore/v1/ListenResponse;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListenResponse;

    .line 14
    invoke-direct {p0}, Lcom/google/firestore/v1/ListenResponse;->clearDocumentChange()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/firestore/v1/ListenResponse;Lcom/google/firestore/v1/DocumentDelete;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListenResponse;
    .param p1, "x1"    # Lcom/google/firestore/v1/DocumentDelete;

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ListenResponse;->setDocumentDelete(Lcom/google/firestore/v1/DocumentDelete;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/firestore/v1/ListenResponse;Lcom/google/firestore/v1/DocumentDelete;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListenResponse;
    .param p1, "x1"    # Lcom/google/firestore/v1/DocumentDelete;

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ListenResponse;->mergeDocumentDelete(Lcom/google/firestore/v1/DocumentDelete;)V

    return-void
.end method

.method private clearDocumentChange()V
    .locals 2

    .line 204
    iget v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseTypeCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 205
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseTypeCase_:I

    .line 206
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseType_:Ljava/lang/Object;

    .line 208
    :cond_0
    return-void
.end method

.method private clearDocumentDelete()V
    .locals 2

    .line 274
    iget v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseTypeCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 275
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseTypeCase_:I

    .line 276
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseType_:Ljava/lang/Object;

    .line 278
    :cond_0
    return-void
.end method

.method private clearDocumentRemove()V
    .locals 2

    .line 349
    iget v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseTypeCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 350
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseTypeCase_:I

    .line 351
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseType_:Ljava/lang/Object;

    .line 353
    :cond_0
    return-void
.end method

.method private clearFilter()V
    .locals 2

    .line 439
    iget v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseTypeCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 440
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseTypeCase_:I

    .line 441
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseType_:Ljava/lang/Object;

    .line 443
    :cond_0
    return-void
.end method

.method private clearResponseType()V
    .locals 1

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseTypeCase_:I

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseType_:Ljava/lang/Object;

    .line 68
    return-void
.end method

.method private clearTargetChange()V
    .locals 2

    .line 134
    iget v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 135
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseTypeCase_:I

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseType_:Ljava/lang/Object;

    .line 138
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/v1/ListenResponse;
    .locals 1

    .line 1019
    sget-object v0, Lcom/google/firestore/v1/ListenResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenResponse;

    return-object v0
.end method

.method private mergeDocumentChange(Lcom/google/firestore/v1/DocumentChange;)V
    .locals 3
    .param p1, "value"    # Lcom/google/firestore/v1/DocumentChange;

    .line 186
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 187
    iget v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseTypeCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseType_:Ljava/lang/Object;

    .line 188
    invoke-static {}, Lcom/google/firestore/v1/DocumentChange;->getDefaultInstance()Lcom/google/firestore/v1/DocumentChange;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 189
    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/DocumentChange;

    invoke-static {v0}, Lcom/google/firestore/v1/DocumentChange;->newBuilder(Lcom/google/firestore/v1/DocumentChange;)Lcom/google/firestore/v1/DocumentChange$Builder;

    move-result-object v0

    .line 190
    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/DocumentChange$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/DocumentChange$Builder;

    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentChange$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseType_:Ljava/lang/Object;

    goto :goto_0

    .line 192
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/ListenResponse;->responseType_:Ljava/lang/Object;

    .line 194
    :goto_0
    iput v1, p0, Lcom/google/firestore/v1/ListenResponse;->responseTypeCase_:I

    .line 195
    return-void
.end method

.method private mergeDocumentDelete(Lcom/google/firestore/v1/DocumentDelete;)V
    .locals 3
    .param p1, "value"    # Lcom/google/firestore/v1/DocumentDelete;

    .line 256
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 257
    iget v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseTypeCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseType_:Ljava/lang/Object;

    .line 258
    invoke-static {}, Lcom/google/firestore/v1/DocumentDelete;->getDefaultInstance()Lcom/google/firestore/v1/DocumentDelete;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 259
    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/DocumentDelete;

    invoke-static {v0}, Lcom/google/firestore/v1/DocumentDelete;->newBuilder(Lcom/google/firestore/v1/DocumentDelete;)Lcom/google/firestore/v1/DocumentDelete$Builder;

    move-result-object v0

    .line 260
    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/DocumentDelete$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/DocumentDelete$Builder;

    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentDelete$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseType_:Ljava/lang/Object;

    goto :goto_0

    .line 262
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/ListenResponse;->responseType_:Ljava/lang/Object;

    .line 264
    :goto_0
    iput v1, p0, Lcom/google/firestore/v1/ListenResponse;->responseTypeCase_:I

    .line 265
    return-void
.end method

.method private mergeDocumentRemove(Lcom/google/firestore/v1/DocumentRemove;)V
    .locals 3
    .param p1, "value"    # Lcom/google/firestore/v1/DocumentRemove;

    .line 330
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 331
    iget v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseTypeCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseType_:Ljava/lang/Object;

    .line 332
    invoke-static {}, Lcom/google/firestore/v1/DocumentRemove;->getDefaultInstance()Lcom/google/firestore/v1/DocumentRemove;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 333
    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/DocumentRemove;

    invoke-static {v0}, Lcom/google/firestore/v1/DocumentRemove;->newBuilder(Lcom/google/firestore/v1/DocumentRemove;)Lcom/google/firestore/v1/DocumentRemove$Builder;

    move-result-object v0

    .line 334
    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/DocumentRemove$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/DocumentRemove$Builder;

    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentRemove$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseType_:Ljava/lang/Object;

    goto :goto_0

    .line 336
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/ListenResponse;->responseType_:Ljava/lang/Object;

    .line 338
    :goto_0
    iput v1, p0, Lcom/google/firestore/v1/ListenResponse;->responseTypeCase_:I

    .line 339
    return-void
.end method

.method private mergeFilter(Lcom/google/firestore/v1/ExistenceFilter;)V
    .locals 3
    .param p1, "value"    # Lcom/google/firestore/v1/ExistenceFilter;

    .line 417
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 418
    iget v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseTypeCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseType_:Ljava/lang/Object;

    .line 419
    invoke-static {}, Lcom/google/firestore/v1/ExistenceFilter;->getDefaultInstance()Lcom/google/firestore/v1/ExistenceFilter;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 420
    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/ExistenceFilter;

    invoke-static {v0}, Lcom/google/firestore/v1/ExistenceFilter;->newBuilder(Lcom/google/firestore/v1/ExistenceFilter;)Lcom/google/firestore/v1/ExistenceFilter$Builder;

    move-result-object v0

    .line 421
    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/ExistenceFilter$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ExistenceFilter$Builder;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ExistenceFilter$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseType_:Ljava/lang/Object;

    goto :goto_0

    .line 423
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/ListenResponse;->responseType_:Ljava/lang/Object;

    .line 425
    :goto_0
    iput v1, p0, Lcom/google/firestore/v1/ListenResponse;->responseTypeCase_:I

    .line 426
    return-void
.end method

.method private mergeTargetChange(Lcom/google/firestore/v1/TargetChange;)V
    .locals 3
    .param p1, "value"    # Lcom/google/firestore/v1/TargetChange;

    .line 116
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    iget v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseType_:Ljava/lang/Object;

    .line 118
    invoke-static {}, Lcom/google/firestore/v1/TargetChange;->getDefaultInstance()Lcom/google/firestore/v1/TargetChange;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 119
    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/TargetChange;

    invoke-static {v0}, Lcom/google/firestore/v1/TargetChange;->newBuilder(Lcom/google/firestore/v1/TargetChange;)Lcom/google/firestore/v1/TargetChange$Builder;

    move-result-object v0

    .line 120
    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/TargetChange$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/TargetChange$Builder;

    invoke-virtual {v0}, Lcom/google/firestore/v1/TargetChange$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseType_:Ljava/lang/Object;

    goto :goto_0

    .line 122
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/ListenResponse;->responseType_:Ljava/lang/Object;

    .line 124
    :goto_0
    iput v1, p0, Lcom/google/firestore/v1/ListenResponse;->responseTypeCase_:I

    .line 125
    return-void
.end method

.method public static newBuilder()Lcom/google/firestore/v1/ListenResponse$Builder;
    .locals 1

    .line 522
    sget-object v0, Lcom/google/firestore/v1/ListenResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListenResponse;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListenResponse$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firestore/v1/ListenResponse;)Lcom/google/firestore/v1/ListenResponse$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/firestore/v1/ListenResponse;

    .line 525
    sget-object v0, Lcom/google/firestore/v1/ListenResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenResponse;

    invoke-virtual {v0, p0}, Lcom/google/firestore/v1/ListenResponse;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListenResponse$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/ListenResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 498
    sget-object v0, Lcom/google/firestore/v1/ListenResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenResponse;

    invoke-static {v0, p0}, Lcom/google/firestore/v1/ListenResponse;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListenResponse;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/ListenResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 505
    sget-object v0, Lcom/google/firestore/v1/ListenResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenResponse;

    invoke-static {v0, p0, p1}, Lcom/google/firestore/v1/ListenResponse;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListenResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/ListenResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 461
    sget-object v0, Lcom/google/firestore/v1/ListenResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListenResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/ListenResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 468
    sget-object v0, Lcom/google/firestore/v1/ListenResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListenResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firestore/v1/ListenResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 510
    sget-object v0, Lcom/google/firestore/v1/ListenResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListenResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/ListenResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 517
    sget-object v0, Lcom/google/firestore/v1/ListenResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListenResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/ListenResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 485
    sget-object v0, Lcom/google/firestore/v1/ListenResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListenResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/ListenResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 492
    sget-object v0, Lcom/google/firestore/v1/ListenResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListenResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firestore/v1/ListenResponse;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 448
    sget-object v0, Lcom/google/firestore/v1/ListenResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListenResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/ListenResponse;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 455
    sget-object v0, Lcom/google/firestore/v1/ListenResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListenResponse;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/firestore/v1/ListenResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 473
    sget-object v0, Lcom/google/firestore/v1/ListenResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListenResponse;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/ListenResponse;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 480
    sget-object v0, Lcom/google/firestore/v1/ListenResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListenResponse;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/ListenResponse;",
            ">;"
        }
    .end annotation

    .line 1025
    sget-object v0, Lcom/google/firestore/v1/ListenResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListenResponse;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setDocumentChange(Lcom/google/firestore/v1/DocumentChange;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/DocumentChange;

    .line 174
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 175
    iput-object p1, p0, Lcom/google/firestore/v1/ListenResponse;->responseType_:Ljava/lang/Object;

    .line 176
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseTypeCase_:I

    .line 177
    return-void
.end method

.method private setDocumentDelete(Lcom/google/firestore/v1/DocumentDelete;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/DocumentDelete;

    .line 244
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 245
    iput-object p1, p0, Lcom/google/firestore/v1/ListenResponse;->responseType_:Ljava/lang/Object;

    .line 246
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseTypeCase_:I

    .line 247
    return-void
.end method

.method private setDocumentRemove(Lcom/google/firestore/v1/DocumentRemove;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/DocumentRemove;

    .line 317
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 318
    iput-object p1, p0, Lcom/google/firestore/v1/ListenResponse;->responseType_:Ljava/lang/Object;

    .line 319
    const/4 v0, 0x6

    iput v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseTypeCase_:I

    .line 320
    return-void
.end method

.method private setFilter(Lcom/google/firestore/v1/ExistenceFilter;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/ExistenceFilter;

    .line 401
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 402
    iput-object p1, p0, Lcom/google/firestore/v1/ListenResponse;->responseType_:Ljava/lang/Object;

    .line 403
    const/4 v0, 0x5

    iput v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseTypeCase_:I

    .line 404
    return-void
.end method

.method private setTargetChange(Lcom/google/firestore/v1/TargetChange;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/TargetChange;

    .line 104
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    iput-object p1, p0, Lcom/google/firestore/v1/ListenResponse;->responseType_:Ljava/lang/Object;

    .line 106
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseTypeCase_:I

    .line 107
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 955
    sget-object v0, Lcom/google/firestore/v1/ListenResponse$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1003
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1000
    :pswitch_0
    return-object v1

    .line 997
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 982
    :pswitch_2
    sget-object v1, Lcom/google/firestore/v1/ListenResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 983
    .local v1, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/ListenResponse;>;"
    if-nez v1, :cond_1

    .line 984
    const-class v2, Lcom/google/firestore/v1/ListenResponse;

    monitor-enter v2

    .line 985
    :try_start_0
    sget-object v0, Lcom/google/firestore/v1/ListenResponse;->PARSER:Lcom/google/protobuf/Parser;

    move-object v1, v0

    .line 986
    if-nez v1, :cond_0

    .line 987
    new-instance v0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/firestore/v1/ListenResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenResponse;

    invoke-direct {v0, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v1, v0

    .line 990
    sput-object v1, Lcom/google/firestore/v1/ListenResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 992
    :cond_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 994
    :cond_1
    :goto_0
    return-object v1

    .line 979
    .end local v1    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/ListenResponse;>;"
    :pswitch_3
    sget-object v0, Lcom/google/firestore/v1/ListenResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenResponse;

    return-object v0

    .line 963
    :pswitch_4
    const-string v1, "responseType_"

    const-string v2, "responseTypeCase_"

    const-class v3, Lcom/google/firestore/v1/TargetChange;

    const-class v4, Lcom/google/firestore/v1/DocumentChange;

    const-class v5, Lcom/google/firestore/v1/DocumentDelete;

    const-class v6, Lcom/google/firestore/v1/ExistenceFilter;

    const-class v7, Lcom/google/firestore/v1/DocumentRemove;

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    .line 972
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0005\u0001\u0000\u0002\u0006\u0005\u0000\u0000\u0000\u0002<\u0000\u0003<\u0000\u0004<\u0000\u0005<\u0000\u0006<\u0000"

    .line 975
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/firestore/v1/ListenResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenResponse;

    invoke-static {v2, v1, v0}, Lcom/google/firestore/v1/ListenResponse;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 960
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/firestore/v1/ListenResponse$Builder;

    invoke-direct {v0, v1}, Lcom/google/firestore/v1/ListenResponse$Builder;-><init>(Lcom/google/firestore/v1/ListenResponse$1;)V

    return-object v0

    .line 957
    :pswitch_6
    new-instance v0, Lcom/google/firestore/v1/ListenResponse;

    invoke-direct {v0}, Lcom/google/firestore/v1/ListenResponse;-><init>()V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getDocumentChange()Lcom/google/firestore/v1/DocumentChange;
    .locals 2

    .line 161
    iget v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseTypeCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 162
    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/DocumentChange;

    return-object v0

    .line 164
    :cond_0
    invoke-static {}, Lcom/google/firestore/v1/DocumentChange;->getDefaultInstance()Lcom/google/firestore/v1/DocumentChange;

    move-result-object v0

    return-object v0
.end method

.method public getDocumentDelete()Lcom/google/firestore/v1/DocumentDelete;
    .locals 2

    .line 231
    iget v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseTypeCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 232
    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/DocumentDelete;

    return-object v0

    .line 234
    :cond_0
    invoke-static {}, Lcom/google/firestore/v1/DocumentDelete;->getDefaultInstance()Lcom/google/firestore/v1/DocumentDelete;

    move-result-object v0

    return-object v0
.end method

.method public getDocumentRemove()Lcom/google/firestore/v1/DocumentRemove;
    .locals 2

    .line 303
    iget v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseTypeCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 304
    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/DocumentRemove;

    return-object v0

    .line 306
    :cond_0
    invoke-static {}, Lcom/google/firestore/v1/DocumentRemove;->getDefaultInstance()Lcom/google/firestore/v1/DocumentRemove;

    move-result-object v0

    return-object v0
.end method

.method public getFilter()Lcom/google/firestore/v1/ExistenceFilter;
    .locals 2

    .line 384
    iget v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseTypeCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 385
    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/ExistenceFilter;

    return-object v0

    .line 387
    :cond_0
    invoke-static {}, Lcom/google/firestore/v1/ExistenceFilter;->getDefaultInstance()Lcom/google/firestore/v1/ExistenceFilter;

    move-result-object v0

    return-object v0
.end method

.method public getResponseTypeCase()Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;
    .locals 1

    .line 61
    iget v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseTypeCase_:I

    invoke-static {v0}, Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;->forNumber(I)Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;

    move-result-object v0

    return-object v0
.end method

.method public getTargetChange()Lcom/google/firestore/v1/TargetChange;
    .locals 2

    .line 91
    iget v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 92
    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/TargetChange;

    return-object v0

    .line 94
    :cond_0
    invoke-static {}, Lcom/google/firestore/v1/TargetChange;->getDefaultInstance()Lcom/google/firestore/v1/TargetChange;

    move-result-object v0

    return-object v0
.end method

.method public hasDocumentChange()Z
    .locals 2

    .line 150
    iget v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseTypeCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDocumentDelete()Z
    .locals 2

    .line 220
    iget v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseTypeCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDocumentRemove()Z
    .locals 2

    .line 291
    iget v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseTypeCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasFilter()Z
    .locals 2

    .line 369
    iget v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseTypeCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTargetChange()Z
    .locals 2

    .line 80
    iget v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
