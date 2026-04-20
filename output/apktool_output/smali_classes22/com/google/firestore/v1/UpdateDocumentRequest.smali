.class public final Lcom/google/firestore/v1/UpdateDocumentRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "UpdateDocumentRequest.java"

# interfaces
.implements Lcom/google/firestore/v1/UpdateDocumentRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/UpdateDocumentRequest;",
        "Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;",
        ">;",
        "Lcom/google/firestore/v1/UpdateDocumentRequestOrBuilder;"
    }
.end annotation


# static fields
.field public static final CURRENT_DOCUMENT_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/UpdateDocumentRequest;

.field public static final DOCUMENT_FIELD_NUMBER:I = 0x1

.field public static final MASK_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/UpdateDocumentRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final UPDATE_MASK_FIELD_NUMBER:I = 0x2


# instance fields
.field private bitField0_:I

.field private currentDocument_:Lcom/google/firestore/v1/Precondition;

.field private document_:Lcom/google/firestore/v1/Document;

.field private mask_:Lcom/google/firestore/v1/DocumentMask;

.field private updateMask_:Lcom/google/firestore/v1/DocumentMask;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 854
    new-instance v0, Lcom/google/firestore/v1/UpdateDocumentRequest;

    invoke-direct {v0}, Lcom/google/firestore/v1/UpdateDocumentRequest;-><init>()V

    .line 857
    .local v0, "defaultInstance":Lcom/google/firestore/v1/UpdateDocumentRequest;
    sput-object v0, Lcom/google/firestore/v1/UpdateDocumentRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/UpdateDocumentRequest;

    .line 858
    const-class v1, Lcom/google/firestore/v1/UpdateDocumentRequest;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 860
    .end local v0    # "defaultInstance":Lcom/google/firestore/v1/UpdateDocumentRequest;
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 21
    return-void
.end method

.method static synthetic access$000()Lcom/google/firestore/v1/UpdateDocumentRequest;
    .locals 1

    .line 15
    sget-object v0, Lcom/google/firestore/v1/UpdateDocumentRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/UpdateDocumentRequest;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/firestore/v1/UpdateDocumentRequest;Lcom/google/firestore/v1/Document;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/UpdateDocumentRequest;
    .param p1, "x1"    # Lcom/google/firestore/v1/Document;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/UpdateDocumentRequest;->setDocument(Lcom/google/firestore/v1/Document;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/firestore/v1/UpdateDocumentRequest;Lcom/google/firestore/v1/Precondition;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/UpdateDocumentRequest;
    .param p1, "x1"    # Lcom/google/firestore/v1/Precondition;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/UpdateDocumentRequest;->setCurrentDocument(Lcom/google/firestore/v1/Precondition;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/firestore/v1/UpdateDocumentRequest;Lcom/google/firestore/v1/Precondition;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/UpdateDocumentRequest;
    .param p1, "x1"    # Lcom/google/firestore/v1/Precondition;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/UpdateDocumentRequest;->mergeCurrentDocument(Lcom/google/firestore/v1/Precondition;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/firestore/v1/UpdateDocumentRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/UpdateDocumentRequest;

    .line 15
    invoke-direct {p0}, Lcom/google/firestore/v1/UpdateDocumentRequest;->clearCurrentDocument()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/firestore/v1/UpdateDocumentRequest;Lcom/google/firestore/v1/Document;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/UpdateDocumentRequest;
    .param p1, "x1"    # Lcom/google/firestore/v1/Document;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/UpdateDocumentRequest;->mergeDocument(Lcom/google/firestore/v1/Document;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/firestore/v1/UpdateDocumentRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/UpdateDocumentRequest;

    .line 15
    invoke-direct {p0}, Lcom/google/firestore/v1/UpdateDocumentRequest;->clearDocument()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/firestore/v1/UpdateDocumentRequest;Lcom/google/firestore/v1/DocumentMask;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/UpdateDocumentRequest;
    .param p1, "x1"    # Lcom/google/firestore/v1/DocumentMask;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/UpdateDocumentRequest;->setUpdateMask(Lcom/google/firestore/v1/DocumentMask;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/firestore/v1/UpdateDocumentRequest;Lcom/google/firestore/v1/DocumentMask;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/UpdateDocumentRequest;
    .param p1, "x1"    # Lcom/google/firestore/v1/DocumentMask;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/UpdateDocumentRequest;->mergeUpdateMask(Lcom/google/firestore/v1/DocumentMask;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/firestore/v1/UpdateDocumentRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/UpdateDocumentRequest;

    .line 15
    invoke-direct {p0}, Lcom/google/firestore/v1/UpdateDocumentRequest;->clearUpdateMask()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/firestore/v1/UpdateDocumentRequest;Lcom/google/firestore/v1/DocumentMask;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/UpdateDocumentRequest;
    .param p1, "x1"    # Lcom/google/firestore/v1/DocumentMask;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/UpdateDocumentRequest;->setMask(Lcom/google/firestore/v1/DocumentMask;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/firestore/v1/UpdateDocumentRequest;Lcom/google/firestore/v1/DocumentMask;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/UpdateDocumentRequest;
    .param p1, "x1"    # Lcom/google/firestore/v1/DocumentMask;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/UpdateDocumentRequest;->mergeMask(Lcom/google/firestore/v1/DocumentMask;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/firestore/v1/UpdateDocumentRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/UpdateDocumentRequest;

    .line 15
    invoke-direct {p0}, Lcom/google/firestore/v1/UpdateDocumentRequest;->clearMask()V

    return-void
.end method

.method private clearCurrentDocument()V
    .locals 1

    .line 338
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->currentDocument_:Lcom/google/firestore/v1/Precondition;

    .line 339
    iget v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->bitField0_:I

    .line 340
    return-void
.end method

.method private clearDocument()V
    .locals 1

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->document_:Lcom/google/firestore/v1/Document;

    .line 91
    iget v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->bitField0_:I

    .line 92
    return-void
.end method

.method private clearMask()V
    .locals 1

    .line 267
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->mask_:Lcom/google/firestore/v1/DocumentMask;

    .line 268
    iget v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->bitField0_:I

    .line 269
    return-void
.end method

.method private clearUpdateMask()V
    .locals 1

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->updateMask_:Lcom/google/firestore/v1/DocumentMask;

    .line 187
    iget v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->bitField0_:I

    .line 188
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/v1/UpdateDocumentRequest;
    .locals 1

    .line 863
    sget-object v0, Lcom/google/firestore/v1/UpdateDocumentRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/UpdateDocumentRequest;

    return-object v0
.end method

.method private mergeCurrentDocument(Lcom/google/firestore/v1/Precondition;)V
    .locals 2
    .param p1, "value"    # Lcom/google/firestore/v1/Precondition;

    .line 320
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 321
    iget-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->currentDocument_:Lcom/google/firestore/v1/Precondition;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->currentDocument_:Lcom/google/firestore/v1/Precondition;

    .line 322
    invoke-static {}, Lcom/google/firestore/v1/Precondition;->getDefaultInstance()Lcom/google/firestore/v1/Precondition;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 323
    iget-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->currentDocument_:Lcom/google/firestore/v1/Precondition;

    .line 324
    invoke-static {v0}, Lcom/google/firestore/v1/Precondition;->newBuilder(Lcom/google/firestore/v1/Precondition;)Lcom/google/firestore/v1/Precondition$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/Precondition$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Precondition$Builder;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Precondition$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Precondition;

    iput-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->currentDocument_:Lcom/google/firestore/v1/Precondition;

    goto :goto_0

    .line 326
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->currentDocument_:Lcom/google/firestore/v1/Precondition;

    .line 328
    :goto_0
    iget v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->bitField0_:I

    .line 329
    return-void
.end method

.method private mergeDocument(Lcom/google/firestore/v1/Document;)V
    .locals 2
    .param p1, "value"    # Lcom/google/firestore/v1/Document;

    .line 72
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    iget-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->document_:Lcom/google/firestore/v1/Document;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->document_:Lcom/google/firestore/v1/Document;

    .line 74
    invoke-static {}, Lcom/google/firestore/v1/Document;->getDefaultInstance()Lcom/google/firestore/v1/Document;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 75
    iget-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->document_:Lcom/google/firestore/v1/Document;

    .line 76
    invoke-static {v0}, Lcom/google/firestore/v1/Document;->newBuilder(Lcom/google/firestore/v1/Document;)Lcom/google/firestore/v1/Document$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/Document$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Document$Builder;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Document$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Document;

    iput-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->document_:Lcom/google/firestore/v1/Document;

    goto :goto_0

    .line 78
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->document_:Lcom/google/firestore/v1/Document;

    .line 80
    :goto_0
    iget v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->bitField0_:I

    .line 81
    return-void
.end method

.method private mergeMask(Lcom/google/firestore/v1/DocumentMask;)V
    .locals 2
    .param p1, "value"    # Lcom/google/firestore/v1/DocumentMask;

    .line 247
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 248
    iget-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->mask_:Lcom/google/firestore/v1/DocumentMask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->mask_:Lcom/google/firestore/v1/DocumentMask;

    .line 249
    invoke-static {}, Lcom/google/firestore/v1/DocumentMask;->getDefaultInstance()Lcom/google/firestore/v1/DocumentMask;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 250
    iget-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->mask_:Lcom/google/firestore/v1/DocumentMask;

    .line 251
    invoke-static {v0}, Lcom/google/firestore/v1/DocumentMask;->newBuilder(Lcom/google/firestore/v1/DocumentMask;)Lcom/google/firestore/v1/DocumentMask$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/DocumentMask$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/DocumentMask$Builder;

    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentMask$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/DocumentMask;

    iput-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->mask_:Lcom/google/firestore/v1/DocumentMask;

    goto :goto_0

    .line 253
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->mask_:Lcom/google/firestore/v1/DocumentMask;

    .line 255
    :goto_0
    iget v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->bitField0_:I

    .line 256
    return-void
.end method

.method private mergeUpdateMask(Lcom/google/firestore/v1/DocumentMask;)V
    .locals 2
    .param p1, "value"    # Lcom/google/firestore/v1/DocumentMask;

    .line 163
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 164
    iget-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->updateMask_:Lcom/google/firestore/v1/DocumentMask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->updateMask_:Lcom/google/firestore/v1/DocumentMask;

    .line 165
    invoke-static {}, Lcom/google/firestore/v1/DocumentMask;->getDefaultInstance()Lcom/google/firestore/v1/DocumentMask;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 166
    iget-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->updateMask_:Lcom/google/firestore/v1/DocumentMask;

    .line 167
    invoke-static {v0}, Lcom/google/firestore/v1/DocumentMask;->newBuilder(Lcom/google/firestore/v1/DocumentMask;)Lcom/google/firestore/v1/DocumentMask$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/DocumentMask$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/DocumentMask$Builder;

    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentMask$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/DocumentMask;

    iput-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->updateMask_:Lcom/google/firestore/v1/DocumentMask;

    goto :goto_0

    .line 169
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->updateMask_:Lcom/google/firestore/v1/DocumentMask;

    .line 171
    :goto_0
    iget v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->bitField0_:I

    .line 172
    return-void
.end method

.method public static newBuilder()Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;
    .locals 1

    .line 419
    sget-object v0, Lcom/google/firestore/v1/UpdateDocumentRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/UpdateDocumentRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/UpdateDocumentRequest;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firestore/v1/UpdateDocumentRequest;)Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/firestore/v1/UpdateDocumentRequest;

    .line 422
    sget-object v0, Lcom/google/firestore/v1/UpdateDocumentRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/UpdateDocumentRequest;

    invoke-virtual {v0, p0}, Lcom/google/firestore/v1/UpdateDocumentRequest;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/UpdateDocumentRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 395
    sget-object v0, Lcom/google/firestore/v1/UpdateDocumentRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/UpdateDocumentRequest;

    invoke-static {v0, p0}, Lcom/google/firestore/v1/UpdateDocumentRequest;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/UpdateDocumentRequest;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/UpdateDocumentRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 402
    sget-object v0, Lcom/google/firestore/v1/UpdateDocumentRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/UpdateDocumentRequest;

    invoke-static {v0, p0, p1}, Lcom/google/firestore/v1/UpdateDocumentRequest;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/UpdateDocumentRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/UpdateDocumentRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 358
    sget-object v0, Lcom/google/firestore/v1/UpdateDocumentRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/UpdateDocumentRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/UpdateDocumentRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/UpdateDocumentRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 365
    sget-object v0, Lcom/google/firestore/v1/UpdateDocumentRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/UpdateDocumentRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/UpdateDocumentRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firestore/v1/UpdateDocumentRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 407
    sget-object v0, Lcom/google/firestore/v1/UpdateDocumentRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/UpdateDocumentRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/UpdateDocumentRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/UpdateDocumentRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 414
    sget-object v0, Lcom/google/firestore/v1/UpdateDocumentRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/UpdateDocumentRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/UpdateDocumentRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/UpdateDocumentRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 382
    sget-object v0, Lcom/google/firestore/v1/UpdateDocumentRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/UpdateDocumentRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/UpdateDocumentRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/UpdateDocumentRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 389
    sget-object v0, Lcom/google/firestore/v1/UpdateDocumentRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/UpdateDocumentRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/UpdateDocumentRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firestore/v1/UpdateDocumentRequest;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 345
    sget-object v0, Lcom/google/firestore/v1/UpdateDocumentRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/UpdateDocumentRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/UpdateDocumentRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/UpdateDocumentRequest;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 352
    sget-object v0, Lcom/google/firestore/v1/UpdateDocumentRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/UpdateDocumentRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/UpdateDocumentRequest;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/firestore/v1/UpdateDocumentRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 370
    sget-object v0, Lcom/google/firestore/v1/UpdateDocumentRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/UpdateDocumentRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/UpdateDocumentRequest;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/UpdateDocumentRequest;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 377
    sget-object v0, Lcom/google/firestore/v1/UpdateDocumentRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/UpdateDocumentRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/UpdateDocumentRequest;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/UpdateDocumentRequest;",
            ">;"
        }
    .end annotation

    .line 869
    sget-object v0, Lcom/google/firestore/v1/UpdateDocumentRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/UpdateDocumentRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/UpdateDocumentRequest;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setCurrentDocument(Lcom/google/firestore/v1/Precondition;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Precondition;

    .line 306
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 307
    iput-object p1, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->currentDocument_:Lcom/google/firestore/v1/Precondition;

    .line 308
    iget v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->bitField0_:I

    .line 309
    return-void
.end method

.method private setDocument(Lcom/google/firestore/v1/Document;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Document;

    .line 58
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    iput-object p1, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->document_:Lcom/google/firestore/v1/Document;

    .line 60
    iget v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->bitField0_:I

    .line 61
    return-void
.end method

.method private setMask(Lcom/google/firestore/v1/DocumentMask;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/DocumentMask;

    .line 231
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 232
    iput-object p1, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->mask_:Lcom/google/firestore/v1/DocumentMask;

    .line 233
    iget v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->bitField0_:I

    .line 234
    return-void
.end method

.method private setUpdateMask(Lcom/google/firestore/v1/DocumentMask;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/DocumentMask;

    .line 144
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    iput-object p1, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->updateMask_:Lcom/google/firestore/v1/DocumentMask;

    .line 146
    iget v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->bitField0_:I

    .line 147
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 801
    sget-object v0, Lcom/google/firestore/v1/UpdateDocumentRequest$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 847
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 844
    :pswitch_0
    return-object v1

    .line 841
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 826
    :pswitch_2
    sget-object v0, Lcom/google/firestore/v1/UpdateDocumentRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 827
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/UpdateDocumentRequest;>;"
    if-nez v0, :cond_1

    .line 828
    const-class v1, Lcom/google/firestore/v1/UpdateDocumentRequest;

    monitor-enter v1

    .line 829
    :try_start_0
    sget-object v2, Lcom/google/firestore/v1/UpdateDocumentRequest;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 830
    if-nez v0, :cond_0

    .line 831
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/firestore/v1/UpdateDocumentRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/UpdateDocumentRequest;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 834
    sput-object v0, Lcom/google/firestore/v1/UpdateDocumentRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 836
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 838
    :cond_1
    :goto_0
    return-object v0

    .line 823
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/UpdateDocumentRequest;>;"
    :pswitch_3
    sget-object v0, Lcom/google/firestore/v1/UpdateDocumentRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/UpdateDocumentRequest;

    return-object v0

    .line 809
    :pswitch_4
    const-string v0, "bitField0_"

    const-string v1, "document_"

    const-string v2, "updateMask_"

    const-string v3, "mask_"

    const-string v4, "currentDocument_"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 816
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u1009\u0001\u0003\u1009\u0002\u0004\u1009\u0003"

    .line 819
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/firestore/v1/UpdateDocumentRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/UpdateDocumentRequest;

    invoke-static {v2, v1, v0}, Lcom/google/firestore/v1/UpdateDocumentRequest;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 806
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;

    invoke-direct {v0, v1}, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;-><init>(Lcom/google/firestore/v1/UpdateDocumentRequest$1;)V

    return-object v0

    .line 803
    :pswitch_6
    new-instance v0, Lcom/google/firestore/v1/UpdateDocumentRequest;

    invoke-direct {v0}, Lcom/google/firestore/v1/UpdateDocumentRequest;-><init>()V

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

.method public getCurrentDocument()Lcom/google/firestore/v1/Precondition;
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->currentDocument_:Lcom/google/firestore/v1/Precondition;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firestore/v1/Precondition;->getDefaultInstance()Lcom/google/firestore/v1/Precondition;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->currentDocument_:Lcom/google/firestore/v1/Precondition;

    :goto_0
    return-object v0
.end method

.method public getDocument()Lcom/google/firestore/v1/Document;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->document_:Lcom/google/firestore/v1/Document;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firestore/v1/Document;->getDefaultInstance()Lcom/google/firestore/v1/Document;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->document_:Lcom/google/firestore/v1/Document;

    :goto_0
    return-object v0
.end method

.method public getMask()Lcom/google/firestore/v1/DocumentMask;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->mask_:Lcom/google/firestore/v1/DocumentMask;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firestore/v1/DocumentMask;->getDefaultInstance()Lcom/google/firestore/v1/DocumentMask;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->mask_:Lcom/google/firestore/v1/DocumentMask;

    :goto_0
    return-object v0
.end method

.method public getUpdateMask()Lcom/google/firestore/v1/DocumentMask;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->updateMask_:Lcom/google/firestore/v1/DocumentMask;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firestore/v1/DocumentMask;->getDefaultInstance()Lcom/google/firestore/v1/DocumentMask;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->updateMask_:Lcom/google/firestore/v1/DocumentMask;

    :goto_0
    return-object v0
.end method

.method public hasCurrentDocument()Z
    .locals 1

    .line 283
    iget v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDocument()Z
    .locals 2

    .line 35
    iget v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasMask()Z
    .locals 1

    .line 204
    iget v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasUpdateMask()Z
    .locals 1

    .line 111
    iget v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
