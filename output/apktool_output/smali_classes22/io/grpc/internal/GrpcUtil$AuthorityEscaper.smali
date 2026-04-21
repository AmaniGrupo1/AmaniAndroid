.class public Lio/grpc/internal/GrpcUtil$AuthorityEscaper;
.super Ljava/lang/Object;
.source "GrpcUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/GrpcUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthorityEscaper"
.end annotation


# static fields
.field private static final AUTHORITY_DELIMS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final SUB_DELIMS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final UNRESERVED_CHARACTERS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final UPPER_HEX_DIGITS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 889
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lio/grpc/internal/GrpcUtil$AuthorityEscaper;->UPPER_HEX_DIGITS:[C

    .line 890
    new-instance v0, Ljava/util/HashSet;

    .line 891
    const/16 v1, 0x2d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x5f

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 v3, 0x2e

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const/16 v4, 0x7e

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/Character;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/GrpcUtil$AuthorityEscaper;->UNRESERVED_CHARACTERS:Ljava/util/Set;

    .line 892
    new-instance v0, Ljava/util/HashSet;

    .line 894
    const/16 v1, 0x21

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 v1, 0x24

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const/16 v1, 0x26

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    const/16 v1, 0x27

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    const/16 v1, 0x28

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    const/16 v1, 0x29

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    const/16 v1, 0x2a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    const/16 v1, 0x2b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    const/16 v1, 0x2c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v1, 0x3b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    const/16 v1, 0x3d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    filled-new-array/range {v2 .. v12}, [Ljava/lang/Character;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 893
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/GrpcUtil$AuthorityEscaper;->SUB_DELIMS:Ljava/util/Set;

    .line 895
    new-instance v0, Ljava/util/HashSet;

    .line 896
    const/16 v1, 0x3a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x5b

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const/16 v4, 0x40

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/Character;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/GrpcUtil$AuthorityEscaper;->AUTHORITY_DELIMS:Ljava/util/Set;

    .line 895
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 887
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encodeAuthority(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "authority"    # Ljava/lang/String;

    .line 921
    const-string v0, "authority"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 922
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 923
    .local v0, "authorityLength":I
    const/4 v1, 0x0

    .line 925
    .local v1, "hexCount":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 926
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 927
    .local v3, "c":C
    invoke-static {v3}, Lio/grpc/internal/GrpcUtil$AuthorityEscaper;->shouldEscape(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 928
    add-int/lit8 v1, v1, 0x1

    .line 925
    .end local v3    # "c":C
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 932
    .end local v2    # "index":I
    :cond_1
    if-nez v1, :cond_2

    .line 933
    return-object p0

    .line 937
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    mul-int/lit8 v3, v1, 0x2

    add-int/2addr v3, v0

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 938
    .local v2, "encoded_authority":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_1
    if-ge v3, v0, :cond_4

    .line 939
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 940
    .local v4, "c":C
    invoke-static {v4}, Lio/grpc/internal/GrpcUtil$AuthorityEscaper;->shouldEscape(C)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 941
    const/16 v5, 0x25

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 942
    sget-object v5, Lio/grpc/internal/GrpcUtil$AuthorityEscaper;->UPPER_HEX_DIGITS:[C

    ushr-int/lit8 v6, v4, 0x4

    aget-char v5, v5, v6

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 943
    sget-object v5, Lio/grpc/internal/GrpcUtil$AuthorityEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v6, v4, 0xf

    aget-char v5, v5, v6

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 945
    :cond_3
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 938
    .end local v4    # "c":C
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 948
    .end local v3    # "index":I
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static shouldEscape(C)Z
    .locals 3
    .param p0, "c"    # C

    .line 900
    const/16 v0, 0x7f

    const/4 v1, 0x0

    if-le p0, v0, :cond_0

    .line 901
    return v1

    .line 904
    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x7a

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_3

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_3

    .line 905
    :cond_2
    return v1

    .line 908
    :cond_3
    const/16 v0, 0x30

    if-lt p0, v0, :cond_4

    const/16 v0, 0x39

    if-gt p0, v0, :cond_4

    .line 909
    return v1

    .line 912
    :cond_4
    sget-object v0, Lio/grpc/internal/GrpcUtil$AuthorityEscaper;->UNRESERVED_CHARACTERS:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lio/grpc/internal/GrpcUtil$AuthorityEscaper;->SUB_DELIMS:Ljava/util/Set;

    .line 913
    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lio/grpc/internal/GrpcUtil$AuthorityEscaper;->AUTHORITY_DELIMS:Ljava/util/Set;

    .line 914
    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    .line 917
    :cond_5
    const/4 v0, 0x1

    return v0

    .line 915
    :cond_6
    :goto_0
    return v1
.end method
