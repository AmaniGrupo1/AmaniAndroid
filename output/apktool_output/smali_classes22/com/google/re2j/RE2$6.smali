.class Lcom/google/re2j/RE2$6;
.super Ljava/lang/Object;
.source "RE2.java"

# interfaces
.implements Lcom/google/re2j/RE2$DeliverFunc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/re2j/RE2;->findAllIndex(Ljava/lang/String;I)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/re2j/RE2;

.field final synthetic val$result:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/re2j/RE2;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/re2j/RE2;

    .line 779
    iput-object p1, p0, Lcom/google/re2j/RE2$6;->this$0:Lcom/google/re2j/RE2;

    iput-object p2, p0, Lcom/google/re2j/RE2$6;->val$result:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deliver([I)V
    .locals 3
    .param p1, "match"    # [I

    .line 782
    iget-object v0, p0, Lcom/google/re2j/RE2$6;->val$result:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v1, v2}, Lcom/google/re2j/Utils;->subarray([III)[I

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 783
    return-void
.end method
