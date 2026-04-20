.class public final enum Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$ChangeType;
.super Ljava/lang/Enum;
.source "RealtimePipeline.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ChangeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$ChangeType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$ChangeType;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "ADDED",
        "MODIFIED",
        "REMOVED",
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

.field private static final synthetic $VALUES:[Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$ChangeType;

.field public static final enum ADDED:Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$ChangeType;

.field public static final enum MODIFIED:Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$ChangeType;

.field public static final enum REMOVED:Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$ChangeType;


# direct methods
.method private static final synthetic $values()[Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$ChangeType;
    .locals 3

    sget-object v0, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$ChangeType;->ADDED:Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$ChangeType;

    sget-object v1, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$ChangeType;->MODIFIED:Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$ChangeType;

    sget-object v2, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$ChangeType;->REMOVED:Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$ChangeType;

    filled-new-array {v0, v1, v2}, [Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$ChangeType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 261
    new-instance v0, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$ChangeType;

    const-string v1, "ADDED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$ChangeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$ChangeType;->ADDED:Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$ChangeType;

    .line 262
    new-instance v0, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$ChangeType;

    const-string v1, "MODIFIED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$ChangeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$ChangeType;->MODIFIED:Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$ChangeType;

    .line 263
    new-instance v0, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$ChangeType;

    const-string v1, "REMOVED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$ChangeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$ChangeType;->REMOVED:Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$ChangeType;

    invoke-static {}, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$ChangeType;->$values()[Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$ChangeType;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$ChangeType;->$VALUES:[Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$ChangeType;

    sget-object v0, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$ChangeType;->$VALUES:[Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$ChangeType;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$ChangeType;->$ENTRIES:Lkotlin/enums/EnumEntries;

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

    .line 260
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$ChangeType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$ChangeType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 264
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$ChangeType;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    const-class v0, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$ChangeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    .line 264
    check-cast v0, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$ChangeType;

    return-object v0
.end method

.method public static values()[Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$ChangeType;
    .locals 1

    sget-object v0, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$ChangeType;->$VALUES:[Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$ChangeType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 264
    check-cast v0, [Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$ChangeType;

    return-object v0
.end method
