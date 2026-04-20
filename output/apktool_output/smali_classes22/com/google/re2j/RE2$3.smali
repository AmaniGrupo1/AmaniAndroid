.class Lcom/google/re2j/RE2$3;
.super Ljava/lang/Object;
.source "RE2.java"

# interfaces
.implements Lcom/google/re2j/RE2$DeliverFunc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/re2j/RE2;->findAllUTF8([BI)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/re2j/RE2;

.field final synthetic val$b:[B

.field final synthetic val$result:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/re2j/RE2;Ljava/util/List;[B)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/re2j/RE2;

    .line 701
    iput-object p1, p0, Lcom/google/re2j/RE2$3;->this$0:Lcom/google/re2j/RE2;

    iput-object p2, p0, Lcom/google/re2j/RE2$3;->val$result:Ljava/util/List;

    iput-object p3, p0, Lcom/google/re2j/RE2$3;->val$b:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deliver([I)V
    .locals 4
    .param p1, "match"    # [I

    .line 704
    iget-object v0, p0, Lcom/google/re2j/RE2$3;->val$result:Ljava/util/List;

    iget-object v1, p0, Lcom/google/re2j/RE2$3;->val$b:[B

    const/4 v2, 0x0

    aget v2, p1, v2

    const/4 v3, 0x1

    aget v3, p1, v3

    invoke-static {v1, v2, v3}, Lcom/google/re2j/Utils;->subarray([BII)[B

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 705
    return-void
.end method
