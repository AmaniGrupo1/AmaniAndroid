.class Lcom/google/re2j/RE2$2;
.super Ljava/lang/Object;
.source "RE2.java"

# interfaces
.implements Lcom/google/re2j/RE2$ReplaceFunc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/re2j/RE2;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/re2j/RE2;

.field final synthetic val$repl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/re2j/RE2;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/re2j/RE2;

    .line 360
    iput-object p1, p0, Lcom/google/re2j/RE2$2;->this$0:Lcom/google/re2j/RE2;

    iput-object p2, p0, Lcom/google/re2j/RE2$2;->val$repl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public replace(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "orig"    # Ljava/lang/String;

    .line 363
    iget-object v0, p0, Lcom/google/re2j/RE2$2;->val$repl:Ljava/lang/String;

    return-object v0
.end method
