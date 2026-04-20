.class public final Lcom/google/firebase/firestore/pipeline/ReplaceStage$Mode;
.super Ljava/lang/Object;
.source "stage.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/pipeline/ReplaceStage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/pipeline/ReplaceStage$Mode$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u0011\u0008\u0012\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0008R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/google/firebase/firestore/pipeline/ReplaceStage$Mode;",
        "",
        "proto",
        "Lcom/google/firestore/v1/Value;",
        "<init>",
        "(Lcom/google/firestore/v1/Value;)V",
        "protoString",
        "",
        "(Ljava/lang/String;)V",
        "getProto$com_google_firebase_firebase_firestore",
        "()Lcom/google/firestore/v1/Value;",
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
.field public static final Companion:Lcom/google/firebase/firestore/pipeline/ReplaceStage$Mode$Companion;

.field private static final FULL_REPLACE:Lcom/google/firebase/firestore/pipeline/ReplaceStage$Mode;

.field private static final MERGE_PREFER_NEXT:Lcom/google/firebase/firestore/pipeline/ReplaceStage$Mode;

.field private static final MERGE_PREFER_PARENT:Lcom/google/firebase/firestore/pipeline/ReplaceStage$Mode;


# instance fields
.field private final proto:Lcom/google/firestore/v1/Value;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/firebase/firestore/pipeline/ReplaceStage$Mode$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/pipeline/ReplaceStage$Mode$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/firebase/firestore/pipeline/ReplaceStage$Mode;->Companion:Lcom/google/firebase/firestore/pipeline/ReplaceStage$Mode$Companion;

    .line 1093
    new-instance v0, Lcom/google/firebase/firestore/pipeline/ReplaceStage$Mode;

    const-string v1, "full_replace"

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/pipeline/ReplaceStage$Mode;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/firebase/firestore/pipeline/ReplaceStage$Mode;->FULL_REPLACE:Lcom/google/firebase/firestore/pipeline/ReplaceStage$Mode;

    .line 1094
    new-instance v0, Lcom/google/firebase/firestore/pipeline/ReplaceStage$Mode;

    const-string v1, "merge_prefer_nest"

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/pipeline/ReplaceStage$Mode;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/firebase/firestore/pipeline/ReplaceStage$Mode;->MERGE_PREFER_NEXT:Lcom/google/firebase/firestore/pipeline/ReplaceStage$Mode;

    .line 1095
    new-instance v0, Lcom/google/firebase/firestore/pipeline/ReplaceStage$Mode;

    const-string v1, "merge_prefer_parent"

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/pipeline/ReplaceStage$Mode;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/firebase/firestore/pipeline/ReplaceStage$Mode;->MERGE_PREFER_PARENT:Lcom/google/firebase/firestore/pipeline/ReplaceStage$Mode;

    return-void
.end method

.method private constructor <init>(Lcom/google/firestore/v1/Value;)V
    .locals 0
    .param p1, "proto"    # Lcom/google/firestore/v1/Value;

    .line 1090
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/pipeline/ReplaceStage$Mode;->proto:Lcom/google/firestore/v1/Value;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "protoString"    # Ljava/lang/String;

    .line 1091
    invoke-static {p1}, Lcom/google/firebase/firestore/model/Values;->encodeValue(Ljava/lang/String;)Lcom/google/firestore/v1/Value;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/pipeline/ReplaceStage$Mode;-><init>(Lcom/google/firestore/v1/Value;)V

    return-void
.end method

.method public static final synthetic access$getFULL_REPLACE$cp()Lcom/google/firebase/firestore/pipeline/ReplaceStage$Mode;
    .locals 1

    .line 1090
    sget-object v0, Lcom/google/firebase/firestore/pipeline/ReplaceStage$Mode;->FULL_REPLACE:Lcom/google/firebase/firestore/pipeline/ReplaceStage$Mode;

    return-object v0
.end method

.method public static final synthetic access$getMERGE_PREFER_NEXT$cp()Lcom/google/firebase/firestore/pipeline/ReplaceStage$Mode;
    .locals 1

    .line 1090
    sget-object v0, Lcom/google/firebase/firestore/pipeline/ReplaceStage$Mode;->MERGE_PREFER_NEXT:Lcom/google/firebase/firestore/pipeline/ReplaceStage$Mode;

    return-object v0
.end method

.method public static final synthetic access$getMERGE_PREFER_PARENT$cp()Lcom/google/firebase/firestore/pipeline/ReplaceStage$Mode;
    .locals 1

    .line 1090
    sget-object v0, Lcom/google/firebase/firestore/pipeline/ReplaceStage$Mode;->MERGE_PREFER_PARENT:Lcom/google/firebase/firestore/pipeline/ReplaceStage$Mode;

    return-object v0
.end method


# virtual methods
.method public final getProto$com_google_firebase_firebase_firestore()Lcom/google/firestore/v1/Value;
    .locals 1

    .line 1090
    iget-object v0, p0, Lcom/google/firebase/firestore/pipeline/ReplaceStage$Mode;->proto:Lcom/google/firestore/v1/Value;

    return-object v0
.end method
