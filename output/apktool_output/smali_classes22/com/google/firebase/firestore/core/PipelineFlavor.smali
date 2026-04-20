.class public final enum Lcom/google/firebase/firestore/core/PipelineFlavor;
.super Ljava/lang/Enum;
.source "PipelineUtil.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/firestore/core/PipelineFlavor;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/google/firebase/firestore/core/PipelineFlavor;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "EXACT",
        "AUGMENTED",
        "KEYLESS",
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
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/google/firebase/firestore/core/PipelineFlavor;

.field public static final enum AUGMENTED:Lcom/google/firebase/firestore/core/PipelineFlavor;

.field public static final enum EXACT:Lcom/google/firebase/firestore/core/PipelineFlavor;

.field public static final enum KEYLESS:Lcom/google/firebase/firestore/core/PipelineFlavor;


# direct methods
.method private static final synthetic $values()[Lcom/google/firebase/firestore/core/PipelineFlavor;
    .locals 3

    sget-object v0, Lcom/google/firebase/firestore/core/PipelineFlavor;->EXACT:Lcom/google/firebase/firestore/core/PipelineFlavor;

    sget-object v1, Lcom/google/firebase/firestore/core/PipelineFlavor;->AUGMENTED:Lcom/google/firebase/firestore/core/PipelineFlavor;

    sget-object v2, Lcom/google/firebase/firestore/core/PipelineFlavor;->KEYLESS:Lcom/google/firebase/firestore/core/PipelineFlavor;

    filled-new-array {v0, v1, v2}, [Lcom/google/firebase/firestore/core/PipelineFlavor;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 160
    new-instance v0, Lcom/google/firebase/firestore/core/PipelineFlavor;

    const-string v1, "EXACT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/firestore/core/PipelineFlavor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/firestore/core/PipelineFlavor;->EXACT:Lcom/google/firebase/firestore/core/PipelineFlavor;

    .line 164
    new-instance v0, Lcom/google/firebase/firestore/core/PipelineFlavor;

    const-string v1, "AUGMENTED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/firestore/core/PipelineFlavor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/firestore/core/PipelineFlavor;->AUGMENTED:Lcom/google/firebase/firestore/core/PipelineFlavor;

    .line 168
    new-instance v0, Lcom/google/firebase/firestore/core/PipelineFlavor;

    const-string v1, "KEYLESS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/firestore/core/PipelineFlavor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/firestore/core/PipelineFlavor;->KEYLESS:Lcom/google/firebase/firestore/core/PipelineFlavor;

    invoke-static {}, Lcom/google/firebase/firestore/core/PipelineFlavor;->$values()[Lcom/google/firebase/firestore/core/PipelineFlavor;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/firestore/core/PipelineFlavor;->$VALUES:[Lcom/google/firebase/firestore/core/PipelineFlavor;

    sget-object v0, Lcom/google/firebase/firestore/core/PipelineFlavor;->$VALUES:[Lcom/google/firebase/firestore/core/PipelineFlavor;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/firestore/core/PipelineFlavor;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "$enum$name"    # Ljava/lang/String;
    .param p2, "$enum$ordinal"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 158
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/google/firebase/firestore/core/PipelineFlavor;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/core/PipelineFlavor;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 169
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/firestore/core/PipelineFlavor;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    const-class v0, Lcom/google/firebase/firestore/core/PipelineFlavor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    .line 169
    check-cast v0, Lcom/google/firebase/firestore/core/PipelineFlavor;

    return-object v0
.end method

.method public static values()[Lcom/google/firebase/firestore/core/PipelineFlavor;
    .locals 1

    sget-object v0, Lcom/google/firebase/firestore/core/PipelineFlavor;->$VALUES:[Lcom/google/firebase/firestore/core/PipelineFlavor;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 169
    check-cast v0, [Lcom/google/firebase/firestore/core/PipelineFlavor;

    return-object v0
.end method
