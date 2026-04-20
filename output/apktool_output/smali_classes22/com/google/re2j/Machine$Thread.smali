.class Lcom/google/re2j/Machine$Thread;
.super Ljava/lang/Object;
.source "Machine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/re2j/Machine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Thread"
.end annotation


# instance fields
.field cap:[I

.field inst:Lcom/google/re2j/Inst;


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "n"    # I

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/google/re2j/Machine$Thread;->cap:[I

    .line 24
    return-void
.end method
