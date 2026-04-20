.class public final Lcom/google/firebase/firestore/pipeline/SampleStage$Mode;
.super Ljava/lang/Object;
.source "stage.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/pipeline/SampleStage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/pipeline/SampleStage$Mode$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u0011\u0008\u0012\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0008R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/google/firebase/firestore/pipeline/SampleStage$Mode;",
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
.field public static final Companion:Lcom/google/firebase/firestore/pipeline/SampleStage$Mode$Companion;

.field private static final DOCUMENTS:Lcom/google/firebase/firestore/pipeline/SampleStage$Mode;

.field private static final PERCENT:Lcom/google/firebase/firestore/pipeline/SampleStage$Mode;


# instance fields
.field private final proto:Lcom/google/firestore/v1/Value;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/firebase/firestore/pipeline/SampleStage$Mode$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/pipeline/SampleStage$Mode$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/firebase/firestore/pipeline/SampleStage$Mode;->Companion:Lcom/google/firebase/firestore/pipeline/SampleStage$Mode$Companion;

    .line 1147
    new-instance v0, Lcom/google/firebase/firestore/pipeline/SampleStage$Mode;

    const-string v1, "documents"

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/pipeline/SampleStage$Mode;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/firebase/firestore/pipeline/SampleStage$Mode;->DOCUMENTS:Lcom/google/firebase/firestore/pipeline/SampleStage$Mode;

    .line 1149
    new-instance v0, Lcom/google/firebase/firestore/pipeline/SampleStage$Mode;

    const-string v1, "percent"

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/pipeline/SampleStage$Mode;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/firebase/firestore/pipeline/SampleStage$Mode;->PERCENT:Lcom/google/firebase/firestore/pipeline/SampleStage$Mode;

    return-void
.end method

.method private constructor <init>(Lcom/google/firestore/v1/Value;)V
    .locals 0
    .param p1, "proto"    # Lcom/google/firestore/v1/Value;

    .line 1143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/pipeline/SampleStage$Mode;->proto:Lcom/google/firestore/v1/Value;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "protoString"    # Ljava/lang/String;

    .line 1144
    invoke-static {p1}, Lcom/google/firebase/firestore/model/Values;->encodeValue(Ljava/lang/String;)Lcom/google/firestore/v1/Value;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/pipeline/SampleStage$Mode;-><init>(Lcom/google/firestore/v1/Value;)V

    return-void
.end method

.method public static final synthetic access$getDOCUMENTS$cp()Lcom/google/firebase/firestore/pipeline/SampleStage$Mode;
    .locals 1

    .line 1143
    sget-object v0, Lcom/google/firebase/firestore/pipeline/SampleStage$Mode;->DOCUMENTS:Lcom/google/firebase/firestore/pipeline/SampleStage$Mode;

    return-object v0
.end method

.method public static final synthetic access$getPERCENT$cp()Lcom/google/firebase/firestore/pipeline/SampleStage$Mode;
    .locals 1

    .line 1143
    sget-object v0, Lcom/google/firebase/firestore/pipeline/SampleStage$Mode;->PERCENT:Lcom/google/firebase/firestore/pipeline/SampleStage$Mode;

    return-object v0
.end method


# virtual methods
.method public final getProto$com_google_firebase_firebase_firestore()Lcom/google/firestore/v1/Value;
    .locals 1

    .line 1143
    iget-object v0, p0, Lcom/google/firebase/firestore/pipeline/SampleStage$Mode;->proto:Lcom/google/firestore/v1/Value;

    return-object v0
.end method
