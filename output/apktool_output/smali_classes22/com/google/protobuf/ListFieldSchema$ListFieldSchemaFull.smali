.class final Lcom/google/protobuf/ListFieldSchema$ListFieldSchemaFull;
.super Lcom/google/protobuf/ListFieldSchema;
.source "ListFieldSchema.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/ListFieldSchema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ListFieldSchemaFull"
.end annotation


# static fields
.field private static final UNMODIFIABLE_LIST_CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/ListFieldSchema$ListFieldSchemaFull;->UNMODIFIABLE_LIST_CLASS:Ljava/lang/Class;

    .line 43
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/ListFieldSchema;-><init>(Lcom/google/protobuf/ListFieldSchema$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/ListFieldSchema$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/ListFieldSchema$1;

    .line 41
    invoke-direct {p0}, Lcom/google/protobuf/ListFieldSchema$ListFieldSchemaFull;-><init>()V

    return-void
.end method

.method static getList(Ljava/lang/Object;J)Ljava/util/List;
    .locals 1
    .param p0, "message"    # Ljava/lang/Object;
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "offset"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 119
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private static mutableListAt(Ljava/lang/Object;JI)Ljava/util/List;
    .locals 3
    .param p0, "message"    # Ljava/lang/Object;
    .param p1, "offset"    # J
    .param p3, "additionalCapacity"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "offset",
            "additionalCapacity"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "JI)",
            "Ljava/util/List<",
            "T",
            "L;",
            ">;"
        }
    .end annotation

    .line 73
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/ListFieldSchema$ListFieldSchemaFull;->getList(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 74
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<TL;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 75
    instance-of v1, v0, Lcom/google/protobuf/LazyStringList;

    if-eqz v1, :cond_0

    .line 76
    new-instance v1, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v1, p3}, Lcom/google/protobuf/LazyStringArrayList;-><init>(I)V

    move-object v0, v1

    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<TL;>;"
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<TL;>;"
    goto :goto_0

    .line 77
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<TL;>;"
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<TL;>;"
    :cond_0
    instance-of v1, v0, Lcom/google/protobuf/PrimitiveNonBoxingCollection;

    if-eqz v1, :cond_1

    instance-of v1, v0, Lcom/google/protobuf/Internal$ProtobufList;

    if-eqz v1, :cond_1

    .line 78
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v1, p3}, Lcom/google/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    goto :goto_0

    .line 80
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p3}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v1

    .line 82
    :goto_0
    invoke-static {p0, p1, p2, v0}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    .line 83
    :cond_2
    sget-object v1, Lcom/google/protobuf/ListFieldSchema$ListFieldSchemaFull;->UNMODIFIABLE_LIST_CLASS:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 84
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, p3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 85
    .local v1, "newList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TL;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 86
    move-object v0, v1

    .line 87
    invoke-static {p0, p1, p2, v0}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 88
    .end local v1    # "newList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TL;>;"
    goto :goto_1

    :cond_3
    instance-of v1, v0, Lcom/google/protobuf/UnmodifiableLazyStringList;

    if-eqz v1, :cond_5

    .line 89
    new-instance v1, Lcom/google/protobuf/LazyStringArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, p3

    invoke-direct {v1, v2}, Lcom/google/protobuf/LazyStringArrayList;-><init>(I)V

    .line 90
    .local v1, "newList":Lcom/google/protobuf/LazyStringArrayList;
    move-object v2, v0

    check-cast v2, Lcom/google/protobuf/UnmodifiableLazyStringList;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/LazyStringArrayList;->addAll(Ljava/util/Collection;)Z

    .line 91
    move-object v0, v1

    .line 92
    invoke-static {p0, p1, p2, v0}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 93
    .end local v1    # "newList":Lcom/google/protobuf/LazyStringArrayList;
    :cond_4
    goto :goto_1

    :cond_5
    instance-of v1, v0, Lcom/google/protobuf/PrimitiveNonBoxingCollection;

    if-eqz v1, :cond_4

    instance-of v1, v0, Lcom/google/protobuf/Internal$ProtobufList;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/Internal$ProtobufList;

    .line 95
    invoke-interface {v1}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_6

    .line 96
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, p3

    invoke-interface {v1, v2}, Lcom/google/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    .line 97
    invoke-static {p0, p1, p2, v0}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 99
    :cond_6
    :goto_1
    return-object v0
.end method


# virtual methods
.method makeImmutableListAt(Ljava/lang/Object;J)V
    .locals 4
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "offset"
        }
    .end annotation

    .line 53
    invoke-static {p1, p2, p3}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 54
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    const/4 v1, 0x0

    .line 55
    .local v1, "immutable":Ljava/lang/Object;
    instance-of v2, v0, Lcom/google/protobuf/LazyStringList;

    if-eqz v2, :cond_0

    .line 56
    move-object v2, v0

    check-cast v2, Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    goto :goto_0

    .line 57
    :cond_0
    sget-object v2, Lcom/google/protobuf/ListFieldSchema$ListFieldSchemaFull;->UNMODIFIABLE_LIST_CLASS:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 59
    return-void

    .line 60
    :cond_1
    instance-of v2, v0, Lcom/google/protobuf/PrimitiveNonBoxingCollection;

    if-eqz v2, :cond_3

    instance-of v2, v0, Lcom/google/protobuf/Internal$ProtobufList;

    if-eqz v2, :cond_3

    .line 61
    move-object v2, v0

    check-cast v2, Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 62
    move-object v2, v0

    check-cast v2, Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/google/protobuf/Internal$ProtobufList;->makeImmutable()V

    .line 64
    :cond_2
    return-void

    .line 66
    :cond_3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 68
    :goto_0
    invoke-static {p1, p2, p3, v1}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 69
    return-void
.end method

.method mergeListsAt(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 5
    .param p1, "msg"    # Ljava/lang/Object;
    .param p2, "otherMsg"    # Ljava/lang/Object;
    .param p3, "offset"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "msg",
            "otherMsg",
            "offset"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation

    .line 104
    invoke-static {p2, p3, p4}, Lcom/google/protobuf/ListFieldSchema$ListFieldSchemaFull;->getList(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 105
    .local v0, "other":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {p1, p3, p4, v1}, Lcom/google/protobuf/ListFieldSchema$ListFieldSchemaFull;->mutableListAt(Ljava/lang/Object;JI)Ljava/util/List;

    move-result-object v1

    .line 107
    .local v1, "mine":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 108
    .local v2, "size":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 109
    .local v3, "otherSize":I
    if-lez v2, :cond_0

    if-lez v3, :cond_0

    .line 110
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 113
    :cond_0
    if-lez v2, :cond_1

    move-object v4, v1

    goto :goto_0

    :cond_1
    move-object v4, v0

    .line 114
    .local v4, "merged":Ljava/util/List;, "Ljava/util/List<TE;>;"
    :goto_0
    invoke-static {p1, p3, p4, v4}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 115
    return-void
.end method

.method mutableListAt(Ljava/lang/Object;J)Ljava/util/List;
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "offset"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "T",
            "L;",
            ">;"
        }
    .end annotation

    .line 48
    const/16 v0, 0xa

    invoke-static {p1, p2, p3, v0}, Lcom/google/protobuf/ListFieldSchema$ListFieldSchemaFull;->mutableListAt(Ljava/lang/Object;JI)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
