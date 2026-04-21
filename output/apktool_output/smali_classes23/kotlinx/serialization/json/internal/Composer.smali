.class public Lkotlinx/serialization/json/internal/Composer;
.super Ljava/lang/Object;
.source "Composers.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000c\n\u0002\u0010\u000e\n\u0002\u0010\u0007\n\u0002\u0010\u0006\n\u0002\u0010\u0005\n\u0002\u0010\n\n\u0002\u0010\u0008\n\u0002\u0010\t\n\u0002\u0008\u0002\u0008\u0010\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\r\u001a\u00020\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\u000eH\u0016J\u0008\u0010\u0010\u001a\u00020\u000eH\u0016J\u0008\u0010\u0011\u001a\u00020\u000eH\u0016J\u0008\u0010\u0012\u001a\u00020\u000eH\u0016J\u000e\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u0015J\u000e\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u0016J\u0010\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u0017H\u0016J\u0010\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u0018H\u0016J\u0010\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u0019H\u0016J\u0010\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u001aH\u0016J\u0010\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u001bH\u0016J\u0010\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u001cH\u0016J\u0010\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u0007H\u0016J\u0010\u0010\u001d\u001a\u00020\u000e2\u0006\u0010\u0006\u001a\u00020\u0016H\u0016R\u0010\u0010\u0002\u001a\u00020\u00038\u0000X\u0081\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0007@DX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u001e"
    }
    d2 = {
        "Lkotlinx/serialization/json/internal/Composer;",
        "",
        "writer",
        "Lkotlinx/serialization/json/internal/InternalJsonWriter;",
        "<init>",
        "(Lkotlinx/serialization/json/internal/InternalJsonWriter;)V",
        "value",
        "",
        "writingFirst",
        "getWritingFirst",
        "()Z",
        "setWritingFirst",
        "(Z)V",
        "indent",
        "",
        "unIndent",
        "nextItem",
        "nextItemIfNotFirst",
        "space",
        "print",
        "v",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "printQuoted",
        "kotlinx-serialization-json"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final writer:Lkotlinx/serialization/json/internal/InternalJsonWriter;

.field private writingFirst:Z


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/internal/InternalJsonWriter;)V
    .locals 1
    .param p1, "writer"    # Lkotlinx/serialization/json/internal/InternalJsonWriter;

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/json/internal/Composer;->writer:Lkotlinx/serialization/json/internal/InternalJsonWriter;

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lkotlinx/serialization/json/internal/Composer;->writingFirst:Z

    .line 16
    return-void
.end method


# virtual methods
.method public final getWritingFirst()Z
    .locals 1

    .line 17
    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/Composer;->writingFirst:Z

    return v0
.end method

.method public indent()V
    .locals 1

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lkotlinx/serialization/json/internal/Composer;->writingFirst:Z

    .line 22
    return-void
.end method

.method public nextItem()V
    .locals 1

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lkotlinx/serialization/json/internal/Composer;->writingFirst:Z

    .line 28
    return-void
.end method

.method public nextItemIfNotFirst()V
    .locals 1

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lkotlinx/serialization/json/internal/Composer;->writingFirst:Z

    .line 32
    return-void
.end method

.method public print(B)V
    .locals 3
    .param p1, "v"    # B

    .line 40
    iget-object v0, p0, Lkotlinx/serialization/json/internal/Composer;->writer:Lkotlinx/serialization/json/internal/InternalJsonWriter;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lkotlinx/serialization/json/internal/InternalJsonWriter;->writeLong(J)V

    return-void
.end method

.method public final print(C)V
    .locals 1
    .param p1, "v"    # C

    .line 36
    iget-object v0, p0, Lkotlinx/serialization/json/internal/Composer;->writer:Lkotlinx/serialization/json/internal/InternalJsonWriter;

    invoke-interface {v0, p1}, Lkotlinx/serialization/json/internal/InternalJsonWriter;->writeChar(C)V

    return-void
.end method

.method public print(D)V
    .locals 2
    .param p1, "v"    # D

    .line 39
    iget-object v0, p0, Lkotlinx/serialization/json/internal/Composer;->writer:Lkotlinx/serialization/json/internal/InternalJsonWriter;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/serialization/json/internal/InternalJsonWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method public print(F)V
    .locals 2
    .param p1, "v"    # F

    .line 38
    iget-object v0, p0, Lkotlinx/serialization/json/internal/Composer;->writer:Lkotlinx/serialization/json/internal/InternalJsonWriter;

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/serialization/json/internal/InternalJsonWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method public print(I)V
    .locals 3
    .param p1, "v"    # I

    .line 42
    iget-object v0, p0, Lkotlinx/serialization/json/internal/Composer;->writer:Lkotlinx/serialization/json/internal/InternalJsonWriter;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lkotlinx/serialization/json/internal/InternalJsonWriter;->writeLong(J)V

    return-void
.end method

.method public print(J)V
    .locals 1
    .param p1, "v"    # J

    .line 43
    iget-object v0, p0, Lkotlinx/serialization/json/internal/Composer;->writer:Lkotlinx/serialization/json/internal/InternalJsonWriter;

    invoke-interface {v0, p1, p2}, Lkotlinx/serialization/json/internal/InternalJsonWriter;->writeLong(J)V

    return-void
.end method

.method public final print(Ljava/lang/String;)V
    .locals 1
    .param p1, "v"    # Ljava/lang/String;

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lkotlinx/serialization/json/internal/Composer;->writer:Lkotlinx/serialization/json/internal/InternalJsonWriter;

    invoke-interface {v0, p1}, Lkotlinx/serialization/json/internal/InternalJsonWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method public print(S)V
    .locals 3
    .param p1, "v"    # S

    .line 41
    iget-object v0, p0, Lkotlinx/serialization/json/internal/Composer;->writer:Lkotlinx/serialization/json/internal/InternalJsonWriter;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lkotlinx/serialization/json/internal/InternalJsonWriter;->writeLong(J)V

    return-void
.end method

.method public print(Z)V
    .locals 2
    .param p1, "v"    # Z

    .line 44
    iget-object v0, p0, Lkotlinx/serialization/json/internal/Composer;->writer:Lkotlinx/serialization/json/internal/InternalJsonWriter;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/serialization/json/internal/InternalJsonWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method public printQuoted(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lkotlinx/serialization/json/internal/Composer;->writer:Lkotlinx/serialization/json/internal/InternalJsonWriter;

    invoke-interface {v0, p1}, Lkotlinx/serialization/json/internal/InternalJsonWriter;->writeQuoted(Ljava/lang/String;)V

    return-void
.end method

.method protected final setWritingFirst(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 18
    iput-boolean p1, p0, Lkotlinx/serialization/json/internal/Composer;->writingFirst:Z

    return-void
.end method

.method public space()V
    .locals 0

    .line 34
    return-void
.end method

.method public unIndent()V
    .locals 0

    .line 24
    return-void
.end method
