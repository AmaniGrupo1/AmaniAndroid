.class abstract Lcom/google/re2j/MachineInput;
.super Ljava/lang/Object;
.source "MachineInput.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/re2j/MachineInput$UTF16Input;,
        Lcom/google/re2j/MachineInput$UTF8Input;
    }
.end annotation


# static fields
.field static final EOF:I = -0x8


# direct methods
.method constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    return-void
.end method

.method static fromUTF16(Ljava/lang/CharSequence;)Lcom/google/re2j/MachineInput;
    .locals 3
    .param p0, "s"    # Ljava/lang/CharSequence;

    .line 29
    new-instance v0, Lcom/google/re2j/MachineInput$UTF16Input;

    const/4 v1, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/re2j/MachineInput$UTF16Input;-><init>(Ljava/lang/CharSequence;II)V

    return-object v0
.end method

.method static fromUTF16(Ljava/lang/CharSequence;II)Lcom/google/re2j/MachineInput;
    .locals 1
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 33
    new-instance v0, Lcom/google/re2j/MachineInput$UTF16Input;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/re2j/MachineInput$UTF16Input;-><init>(Ljava/lang/CharSequence;II)V

    return-object v0
.end method

.method static fromUTF8([B)Lcom/google/re2j/MachineInput;
    .locals 1
    .param p0, "b"    # [B

    .line 21
    new-instance v0, Lcom/google/re2j/MachineInput$UTF8Input;

    invoke-direct {v0, p0}, Lcom/google/re2j/MachineInput$UTF8Input;-><init>([B)V

    return-object v0
.end method

.method static fromUTF8([BII)Lcom/google/re2j/MachineInput;
    .locals 1
    .param p0, "b"    # [B
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 25
    new-instance v0, Lcom/google/re2j/MachineInput$UTF8Input;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/re2j/MachineInput$UTF8Input;-><init>([BII)V

    return-object v0
.end method


# virtual methods
.method abstract canCheckPrefix()Z
.end method

.method abstract context(I)I
.end method

.method abstract endPos()I
.end method

.method abstract index(Lcom/google/re2j/RE2;I)I
.end method

.method abstract step(I)I
.end method
