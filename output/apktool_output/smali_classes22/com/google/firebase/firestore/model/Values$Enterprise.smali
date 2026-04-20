.class public final Lcom/google/firebase/firestore/model/Values$Enterprise;
.super Ljava/lang/Object;
.source "Values.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/model/Values;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Enterprise"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/model/Values$Enterprise$CompareResult;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c0\u0002\u0018\u00002\u00020\u0001:\u0001\u0012B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J!\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0000\u00a2\u0006\u0002\u0008\tJ!\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0000\u00a2\u0006\u0002\u0008\u0011R*\u0010\n\u001a\u0018\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0004\u0012\u00020\u000c0\u000bX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/google/firebase/firestore/model/Values$Enterprise;",
        "",
        "<init>",
        "()V",
        "equals",
        "",
        "left",
        "Lcom/google/firestore/v1/Value;",
        "right",
        "equals$com_google_firebase_firebase_firestore",
        "compare",
        "Lkotlin/reflect/KFunction2;",
        "",
        "getCompare$com_google_firebase_firebase_firestore",
        "()Lkotlin/reflect/KFunction;",
        "strictCompare",
        "Lcom/google/firebase/firestore/model/Values$Enterprise$CompareResult;",
        "strictCompare$com_google_firebase_firebase_firestore",
        "CompareResult",
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
.field public static final INSTANCE:Lcom/google/firebase/firestore/model/Values$Enterprise;

.field private static final compare:Lkotlin/reflect/KFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/KFunction<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/firebase/firestore/model/Values$Enterprise;

    invoke-direct {v0}, Lcom/google/firebase/firestore/model/Values$Enterprise;-><init>()V

    sput-object v0, Lcom/google/firebase/firestore/model/Values$Enterprise;->INSTANCE:Lcom/google/firebase/firestore/model/Values$Enterprise;

    .line 211
    new-instance v0, Lcom/google/firebase/firestore/model/Values$Enterprise$compare$1;

    sget-object v1, Lcom/google/firebase/firestore/model/Values;->INSTANCE:Lcom/google/firebase/firestore/model/Values;

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/model/Values$Enterprise$compare$1;-><init>(Ljava/lang/Object;)V

    check-cast v0, Lkotlin/reflect/KFunction;

    sput-object v0, Lcom/google/firebase/firestore/model/Values$Enterprise;->compare:Lkotlin/reflect/KFunction;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals$com_google_firebase_firebase_firestore(Lcom/google/firestore/v1/Value;Lcom/google/firestore/v1/Value;)Z
    .locals 1
    .param p1, "left"    # Lcom/google/firestore/v1/Value;
    .param p2, "right"    # Lcom/google/firestore/v1/Value;

    .line 208
    invoke-static {p1, p2}, Lcom/google/firebase/firestore/model/Values;->equals(Lcom/google/firestore/v1/Value;Lcom/google/firestore/v1/Value;)Z

    move-result v0

    return v0
.end method

.method public final getCompare$com_google_firebase_firebase_firestore()Lkotlin/reflect/KFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/KFunction<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 211
    sget-object v0, Lcom/google/firebase/firestore/model/Values$Enterprise;->compare:Lkotlin/reflect/KFunction;

    return-object v0
.end method

.method public final strictCompare$com_google_firebase_firebase_firestore(Lcom/google/firestore/v1/Value;Lcom/google/firestore/v1/Value;)Lcom/google/firebase/firestore/model/Values$Enterprise$CompareResult;
    .locals 4
    .param p1, "left"    # Lcom/google/firestore/v1/Value;
    .param p2, "right"    # Lcom/google/firestore/v1/Value;

    .line 222
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 223
    sget-object v0, Lcom/google/firebase/firestore/model/Values$Enterprise$CompareResult;->EQUAL:Lcom/google/firebase/firestore/model/Values$Enterprise$CompareResult;

    return-object v0

    .line 227
    :cond_0
    if-eqz p1, :cond_5

    if-nez p2, :cond_1

    goto :goto_0

    .line 231
    :cond_1
    invoke-static {p1}, Lcom/google/firebase/firestore/model/Values;->typeOrder(Lcom/google/firestore/v1/Value;)I

    move-result v0

    .line 232
    .local v0, "leftType":I
    invoke-static {p2}, Lcom/google/firebase/firestore/model/Values;->typeOrder(Lcom/google/firestore/v1/Value;)I

    move-result v1

    .line 233
    .local v1, "rightType":I
    if-eq v0, v1, :cond_2

    .line 234
    sget-object v2, Lcom/google/firebase/firestore/model/Values$Enterprise$CompareResult;->TYPE_MISMATCH:Lcom/google/firebase/firestore/model/Values$Enterprise$CompareResult;

    return-object v2

    .line 238
    :cond_2
    sget-object v2, Lcom/google/firebase/firestore/model/Values;->INSTANCE:Lcom/google/firebase/firestore/model/Values;

    invoke-static {v2, v0, p1, p2}, Lcom/google/firebase/firestore/model/Values;->access$compareInternal(Lcom/google/firebase/firestore/model/Values;ILcom/google/firestore/v1/Value;Lcom/google/firestore/v1/Value;)I

    move-result v2

    .line 239
    .local v2, "cmp":I
    if-gez v2, :cond_3

    .line 240
    sget-object v3, Lcom/google/firebase/firestore/model/Values$Enterprise$CompareResult;->LESS_THAN:Lcom/google/firebase/firestore/model/Values$Enterprise$CompareResult;

    return-object v3

    .line 241
    :cond_3
    if-lez v2, :cond_4

    .line 242
    sget-object v3, Lcom/google/firebase/firestore/model/Values$Enterprise$CompareResult;->GREATER_THAN:Lcom/google/firebase/firestore/model/Values$Enterprise$CompareResult;

    return-object v3

    .line 244
    :cond_4
    sget-object v3, Lcom/google/firebase/firestore/model/Values$Enterprise$CompareResult;->EQUAL:Lcom/google/firebase/firestore/model/Values$Enterprise$CompareResult;

    return-object v3

    .line 228
    .end local v0    # "leftType":I
    .end local v1    # "rightType":I
    .end local v2    # "cmp":I
    :cond_5
    :goto_0
    sget-object v0, Lcom/google/firebase/firestore/model/Values$Enterprise$CompareResult;->TYPE_MISMATCH:Lcom/google/firebase/firestore/model/Values$Enterprise$CompareResult;

    return-object v0
.end method
