.class Lcom/google/re2j/RE2$9;
.super Ljava/lang/Object;
.source "RE2.java"

# interfaces
.implements Lcom/google/re2j/RE2$DeliverFunc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/re2j/RE2;->findAllSubmatch(Ljava/lang/String;I)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/re2j/RE2;

.field final synthetic val$result:Ljava/util/List;

.field final synthetic val$s:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/re2j/RE2;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/re2j/RE2;

    .line 863
    iput-object p1, p0, Lcom/google/re2j/RE2$9;->this$0:Lcom/google/re2j/RE2;

    iput-object p2, p0, Lcom/google/re2j/RE2$9;->val$s:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/re2j/RE2$9;->val$result:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deliver([I)V
    .locals 5
    .param p1, "match"    # [I

    .line 866
    array-length v0, p1

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 867
    .local v0, "slice":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 868
    mul-int/lit8 v2, v1, 0x2

    aget v2, p1, v2

    if-ltz v2, :cond_0

    .line 869
    iget-object v2, p0, Lcom/google/re2j/RE2$9;->val$s:Ljava/lang/String;

    mul-int/lit8 v3, v1, 0x2

    aget v3, p1, v3

    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x1

    aget v4, p1, v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 867
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 872
    .end local v1    # "j":I
    :cond_1
    iget-object v1, p0, Lcom/google/re2j/RE2$9;->val$result:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 873
    return-void
.end method
