.class public final Lorg/ies/tierno/applicationamani/data/remoto/FirebaseInstance;
.super Ljava/lang/Object;
.source "FirebaseInstance.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u0011\u001a\u00020\u0007J\u0006\u0010\u0012\u001a\u00020\rJ\u000e\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0005J\u000e\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0015\u001a\u00020\u0005R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0006\u001a\u00020\u00078BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0008\u0010\tR\u001b\u0010\u000c\u001a\u00020\r8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u000b\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0018"
    }
    d2 = {
        "Lorg/ies/tierno/applicationamani/data/remoto/FirebaseInstance;",
        "",
        "<init>",
        "()V",
        "RTDB_URL",
        "",
        "databaseInstance",
        "Lcom/google/firebase/database/FirebaseDatabase;",
        "getDatabaseInstance",
        "()Lcom/google/firebase/database/FirebaseDatabase;",
        "databaseInstance$delegate",
        "Lkotlin/Lazy;",
        "storageInstance",
        "Lcom/google/firebase/storage/FirebaseStorage;",
        "getStorageInstance",
        "()Lcom/google/firebase/storage/FirebaseStorage;",
        "storageInstance$delegate",
        "getDatabase",
        "getStorage",
        "getReference",
        "Lcom/google/firebase/database/DatabaseReference;",
        "path",
        "getStorageReference",
        "Lcom/google/firebase/storage/StorageReference;",
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


# static fields
.field public static final $stable:I

.field public static final INSTANCE:Lorg/ies/tierno/applicationamani/data/remoto/FirebaseInstance;

.field private static final RTDB_URL:Ljava/lang/String; = "https://amani-160bf-default-rtdb.europe-west1.firebasedatabase.app"

.field private static final databaseInstance$delegate:Lkotlin/Lazy;

.field private static final storageInstance$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ies/tierno/applicationamani/data/remoto/FirebaseInstance;

    invoke-direct {v0}, Lorg/ies/tierno/applicationamani/data/remoto/FirebaseInstance;-><init>()V

    sput-object v0, Lorg/ies/tierno/applicationamani/data/remoto/FirebaseInstance;->INSTANCE:Lorg/ies/tierno/applicationamani/data/remoto/FirebaseInstance;

    .line 9
    new-instance v0, Lorg/ies/tierno/applicationamani/data/remoto/FirebaseInstance$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/ies/tierno/applicationamani/data/remoto/FirebaseInstance$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lorg/ies/tierno/applicationamani/data/remoto/FirebaseInstance;->databaseInstance$delegate:Lkotlin/Lazy;

    .line 13
    new-instance v0, Lorg/ies/tierno/applicationamani/data/remoto/FirebaseInstance$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/ies/tierno/applicationamani/data/remoto/FirebaseInstance$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lorg/ies/tierno/applicationamani/data/remoto/FirebaseInstance;->storageInstance$delegate:Lkotlin/Lazy;

    const/16 v0, 0x8

    sput v0, Lorg/ies/tierno/applicationamani/data/remoto/FirebaseInstance;->$stable:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final databaseInstance_delegate$lambda$0()Lcom/google/firebase/database/FirebaseDatabase;
    .locals 2

    .line 10
    const-string v0, "https://amani-160bf-default-rtdb.europe-west1.firebasedatabase.app"

    invoke-static {v0}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance(Ljava/lang/String;)Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object v0

    const-string v1, "getInstance(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getDatabaseInstance()Lcom/google/firebase/database/FirebaseDatabase;
    .locals 1

    .line 9
    sget-object v0, Lorg/ies/tierno/applicationamani/data/remoto/FirebaseInstance;->databaseInstance$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/FirebaseDatabase;

    return-object v0
.end method

.method private final getStorageInstance()Lcom/google/firebase/storage/FirebaseStorage;
    .locals 1

    .line 13
    sget-object v0, Lorg/ies/tierno/applicationamani/data/remoto/FirebaseInstance;->storageInstance$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/storage/FirebaseStorage;

    return-object v0
.end method

.method static final storageInstance_delegate$lambda$1()Lcom/google/firebase/storage/FirebaseStorage;
    .locals 2

    .line 14
    invoke-static {}, Lcom/google/firebase/storage/FirebaseStorage;->getInstance()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object v0

    const-string v1, "getInstance(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final getDatabase()Lcom/google/firebase/database/FirebaseDatabase;
    .locals 1

    .line 17
    invoke-direct {p0}, Lorg/ies/tierno/applicationamani/data/remoto/FirebaseInstance;->getDatabaseInstance()Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object v0

    return-object v0
.end method

.method public final getReference(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Lorg/ies/tierno/applicationamani/data/remoto/FirebaseInstance;->getDatabaseInstance()Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/FirebaseDatabase;->getReference(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    const-string v1, "getReference(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getStorage()Lcom/google/firebase/storage/FirebaseStorage;
    .locals 1

    .line 19
    invoke-direct {p0}, Lorg/ies/tierno/applicationamani/data/remoto/FirebaseInstance;->getStorageInstance()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object v0

    return-object v0
.end method

.method public final getStorageReference(Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Lorg/ies/tierno/applicationamani/data/remoto/FirebaseInstance;->getStorageInstance()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/storage/FirebaseStorage;->getReference(Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;

    move-result-object v0

    const-string v1, "getReference(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
