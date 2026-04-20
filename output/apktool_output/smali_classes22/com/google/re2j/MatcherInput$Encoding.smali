.class final enum Lcom/google/re2j/MatcherInput$Encoding;
.super Ljava/lang/Enum;
.source "MatcherInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/re2j/MatcherInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Encoding"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/re2j/MatcherInput$Encoding;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/re2j/MatcherInput$Encoding;

.field public static final enum UTF_16:Lcom/google/re2j/MatcherInput$Encoding;

.field public static final enum UTF_8:Lcom/google/re2j/MatcherInput$Encoding;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 17
    new-instance v0, Lcom/google/re2j/MatcherInput$Encoding;

    const-string v1, "UTF_16"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/re2j/MatcherInput$Encoding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/re2j/MatcherInput$Encoding;->UTF_16:Lcom/google/re2j/MatcherInput$Encoding;

    .line 18
    new-instance v0, Lcom/google/re2j/MatcherInput$Encoding;

    const-string v1, "UTF_8"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/re2j/MatcherInput$Encoding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/re2j/MatcherInput$Encoding;->UTF_8:Lcom/google/re2j/MatcherInput$Encoding;

    .line 16
    sget-object v0, Lcom/google/re2j/MatcherInput$Encoding;->UTF_16:Lcom/google/re2j/MatcherInput$Encoding;

    sget-object v1, Lcom/google/re2j/MatcherInput$Encoding;->UTF_8:Lcom/google/re2j/MatcherInput$Encoding;

    filled-new-array {v0, v1}, [Lcom/google/re2j/MatcherInput$Encoding;

    move-result-object v0

    sput-object v0, Lcom/google/re2j/MatcherInput$Encoding;->$VALUES:[Lcom/google/re2j/MatcherInput$Encoding;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/re2j/MatcherInput$Encoding;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 16
    const-class v0, Lcom/google/re2j/MatcherInput$Encoding;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/re2j/MatcherInput$Encoding;

    return-object v0
.end method

.method public static values()[Lcom/google/re2j/MatcherInput$Encoding;
    .locals 1

    .line 16
    sget-object v0, Lcom/google/re2j/MatcherInput$Encoding;->$VALUES:[Lcom/google/re2j/MatcherInput$Encoding;

    invoke-virtual {v0}, [Lcom/google/re2j/MatcherInput$Encoding;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/re2j/MatcherInput$Encoding;

    return-object v0
.end method
