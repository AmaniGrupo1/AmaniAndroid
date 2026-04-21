.class Lcom/google/re2j/CharGroup;
.super Ljava/lang/Object;
.source "CharGroup.java"


# static fields
.field static final PERL_GROUPS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/re2j/CharGroup;",
            ">;"
        }
    .end annotation
.end field

.field static final POSIX_GROUPS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/re2j/CharGroup;",
            ">;"
        }
    .end annotation
.end field

.field private static final code1:[I

.field private static final code10:[I

.field private static final code11:[I

.field private static final code12:[I

.field private static final code13:[I

.field private static final code14:[I

.field private static final code15:[I

.field private static final code16:[I

.field private static final code17:[I

.field private static final code2:[I

.field private static final code3:[I

.field private static final code4:[I

.field private static final code5:[I

.field private static final code6:[I

.field private static final code7:[I

.field private static final code8:[I

.field private static final code9:[I


# instance fields
.field final cls:[I

.field final sign:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 24
    const/16 v0, 0x30

    const/16 v1, 0x39

    filled-new-array {v0, v1}, [I

    move-result-object v2

    sput-object v2, Lcom/google/re2j/CharGroup;->code1:[I

    .line 29
    const/4 v2, 0x6

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    sput-object v3, Lcom/google/re2j/CharGroup;->code2:[I

    .line 34
    const/16 v3, 0x8

    new-array v4, v3, [I

    fill-array-data v4, :array_1

    sput-object v4, Lcom/google/re2j/CharGroup;->code3:[I

    .line 39
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/google/re2j/CharGroup;->PERL_GROUPS:Ljava/util/HashMap;

    .line 42
    sget-object v4, Lcom/google/re2j/CharGroup;->PERL_GROUPS:Ljava/util/HashMap;

    new-instance v5, Lcom/google/re2j/CharGroup;

    sget-object v6, Lcom/google/re2j/CharGroup;->code1:[I

    const/4 v7, 0x1

    invoke-direct {v5, v7, v6}, Lcom/google/re2j/CharGroup;-><init>(I[I)V

    const-string v6, "\\d"

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v4, Lcom/google/re2j/CharGroup;->PERL_GROUPS:Ljava/util/HashMap;

    new-instance v5, Lcom/google/re2j/CharGroup;

    sget-object v6, Lcom/google/re2j/CharGroup;->code1:[I

    const/4 v8, -0x1

    invoke-direct {v5, v8, v6}, Lcom/google/re2j/CharGroup;-><init>(I[I)V

    const-string v6, "\\D"

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v4, Lcom/google/re2j/CharGroup;->PERL_GROUPS:Ljava/util/HashMap;

    new-instance v5, Lcom/google/re2j/CharGroup;

    sget-object v6, Lcom/google/re2j/CharGroup;->code2:[I

    invoke-direct {v5, v7, v6}, Lcom/google/re2j/CharGroup;-><init>(I[I)V

    const-string v6, "\\s"

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v4, Lcom/google/re2j/CharGroup;->PERL_GROUPS:Ljava/util/HashMap;

    new-instance v5, Lcom/google/re2j/CharGroup;

    sget-object v6, Lcom/google/re2j/CharGroup;->code2:[I

    invoke-direct {v5, v8, v6}, Lcom/google/re2j/CharGroup;-><init>(I[I)V

    const-string v6, "\\S"

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v4, Lcom/google/re2j/CharGroup;->PERL_GROUPS:Ljava/util/HashMap;

    new-instance v5, Lcom/google/re2j/CharGroup;

    sget-object v6, Lcom/google/re2j/CharGroup;->code3:[I

    invoke-direct {v5, v7, v6}, Lcom/google/re2j/CharGroup;-><init>(I[I)V

    const-string v6, "\\w"

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v4, Lcom/google/re2j/CharGroup;->PERL_GROUPS:Ljava/util/HashMap;

    new-instance v5, Lcom/google/re2j/CharGroup;

    sget-object v6, Lcom/google/re2j/CharGroup;->code3:[I

    invoke-direct {v5, v8, v6}, Lcom/google/re2j/CharGroup;-><init>(I[I)V

    const-string v6, "\\W"

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    new-array v4, v2, [I

    fill-array-data v4, :array_2

    sput-object v4, Lcom/google/re2j/CharGroup;->code4:[I

    .line 55
    const/16 v4, 0x41

    const/16 v5, 0x5a

    const/16 v6, 0x61

    const/16 v9, 0x7a

    filled-new-array {v4, v5, v6, v9}, [I

    move-result-object v10

    sput-object v10, Lcom/google/re2j/CharGroup;->code5:[I

    .line 60
    const/4 v10, 0x0

    const/16 v11, 0x7f

    filled-new-array {v10, v11}, [I

    move-result-object v12

    sput-object v12, Lcom/google/re2j/CharGroup;->code6:[I

    .line 65
    const/16 v12, 0x9

    const/16 v13, 0x20

    filled-new-array {v12, v12, v13, v13}, [I

    move-result-object v14

    sput-object v14, Lcom/google/re2j/CharGroup;->code7:[I

    .line 70
    const/16 v14, 0x1f

    filled-new-array {v10, v14, v11, v11}, [I

    move-result-object v10

    sput-object v10, Lcom/google/re2j/CharGroup;->code8:[I

    .line 75
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/re2j/CharGroup;->code9:[I

    .line 80
    const/16 v0, 0x21

    const/16 v1, 0x7e

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/re2j/CharGroup;->code10:[I

    .line 85
    filled-new-array {v6, v9}, [I

    move-result-object v0

    sput-object v0, Lcom/google/re2j/CharGroup;->code11:[I

    .line 90
    filled-new-array {v13, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/re2j/CharGroup;->code12:[I

    .line 95
    new-array v0, v3, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/re2j/CharGroup;->code13:[I

    .line 100
    const/16 v0, 0xd

    filled-new-array {v12, v0, v13, v13}, [I

    move-result-object v0

    sput-object v0, Lcom/google/re2j/CharGroup;->code14:[I

    .line 105
    filled-new-array {v4, v5}, [I

    move-result-object v0

    sput-object v0, Lcom/google/re2j/CharGroup;->code15:[I

    .line 110
    new-array v0, v3, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/google/re2j/CharGroup;->code16:[I

    .line 115
    new-array v0, v2, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/google/re2j/CharGroup;->code17:[I

    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/re2j/CharGroup;->POSIX_GROUPS:Ljava/util/HashMap;

    .line 123
    sget-object v0, Lcom/google/re2j/CharGroup;->POSIX_GROUPS:Ljava/util/HashMap;

    new-instance v1, Lcom/google/re2j/CharGroup;

    sget-object v2, Lcom/google/re2j/CharGroup;->code4:[I

    invoke-direct {v1, v7, v2}, Lcom/google/re2j/CharGroup;-><init>(I[I)V

    const-string v2, "[:alnum:]"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/google/re2j/CharGroup;->POSIX_GROUPS:Ljava/util/HashMap;

    new-instance v1, Lcom/google/re2j/CharGroup;

    sget-object v2, Lcom/google/re2j/CharGroup;->code4:[I

    invoke-direct {v1, v8, v2}, Lcom/google/re2j/CharGroup;-><init>(I[I)V

    const-string v2, "[:^alnum:]"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/google/re2j/CharGroup;->POSIX_GROUPS:Ljava/util/HashMap;

    new-instance v1, Lcom/google/re2j/CharGroup;

    sget-object v2, Lcom/google/re2j/CharGroup;->code5:[I

    invoke-direct {v1, v7, v2}, Lcom/google/re2j/CharGroup;-><init>(I[I)V

    const-string v2, "[:alpha:]"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/google/re2j/CharGroup;->POSIX_GROUPS:Ljava/util/HashMap;

    new-instance v1, Lcom/google/re2j/CharGroup;

    sget-object v2, Lcom/google/re2j/CharGroup;->code5:[I

    invoke-direct {v1, v8, v2}, Lcom/google/re2j/CharGroup;-><init>(I[I)V

    const-string v2, "[:^alpha:]"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/google/re2j/CharGroup;->POSIX_GROUPS:Ljava/util/HashMap;

    new-instance v1, Lcom/google/re2j/CharGroup;

    sget-object v2, Lcom/google/re2j/CharGroup;->code6:[I

    invoke-direct {v1, v7, v2}, Lcom/google/re2j/CharGroup;-><init>(I[I)V

    const-string v2, "[:ascii:]"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/google/re2j/CharGroup;->POSIX_GROUPS:Ljava/util/HashMap;

    new-instance v1, Lcom/google/re2j/CharGroup;

    sget-object v2, Lcom/google/re2j/CharGroup;->code6:[I

    invoke-direct {v1, v8, v2}, Lcom/google/re2j/CharGroup;-><init>(I[I)V

    const-string v2, "[:^ascii:]"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lcom/google/re2j/CharGroup;->POSIX_GROUPS:Ljava/util/HashMap;

    new-instance v1, Lcom/google/re2j/CharGroup;

    sget-object v2, Lcom/google/re2j/CharGroup;->code7:[I

    invoke-direct {v1, v7, v2}, Lcom/google/re2j/CharGroup;-><init>(I[I)V

    const-string v2, "[:blank:]"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/google/re2j/CharGroup;->POSIX_GROUPS:Ljava/util/HashMap;

    new-instance v1, Lcom/google/re2j/CharGroup;

    sget-object v2, Lcom/google/re2j/CharGroup;->code7:[I

    invoke-direct {v1, v8, v2}, Lcom/google/re2j/CharGroup;-><init>(I[I)V

    const-string v2, "[:^blank:]"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/google/re2j/CharGroup;->POSIX_GROUPS:Ljava/util/HashMap;

    new-instance v1, Lcom/google/re2j/CharGroup;

    sget-object v2, Lcom/google/re2j/CharGroup;->code8:[I

    invoke-direct {v1, v7, v2}, Lcom/google/re2j/CharGroup;-><init>(I[I)V

    const-string v2, "[:cntrl:]"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/google/re2j/CharGroup;->POSIX_GROUPS:Ljava/util/HashMap;

    new-instance v1, Lcom/google/re2j/CharGroup;

    sget-object v2, Lcom/google/re2j/CharGroup;->code8:[I

    invoke-direct {v1, v8, v2}, Lcom/google/re2j/CharGroup;-><init>(I[I)V

    const-string v2, "[:^cntrl:]"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/google/re2j/CharGroup;->POSIX_GROUPS:Ljava/util/HashMap;

    new-instance v1, Lcom/google/re2j/CharGroup;

    sget-object v2, Lcom/google/re2j/CharGroup;->code9:[I

    invoke-direct {v1, v7, v2}, Lcom/google/re2j/CharGroup;-><init>(I[I)V

    const-string v2, "[:digit:]"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/google/re2j/CharGroup;->POSIX_GROUPS:Ljava/util/HashMap;

    new-instance v1, Lcom/google/re2j/CharGroup;

    sget-object v2, Lcom/google/re2j/CharGroup;->code9:[I

    invoke-direct {v1, v8, v2}, Lcom/google/re2j/CharGroup;-><init>(I[I)V

    const-string v2, "[:^digit:]"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/google/re2j/CharGroup;->POSIX_GROUPS:Ljava/util/HashMap;

    new-instance v1, Lcom/google/re2j/CharGroup;

    sget-object v2, Lcom/google/re2j/CharGroup;->code10:[I

    invoke-direct {v1, v7, v2}, Lcom/google/re2j/CharGroup;-><init>(I[I)V

    const-string v2, "[:graph:]"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcom/google/re2j/CharGroup;->POSIX_GROUPS:Ljava/util/HashMap;

    new-instance v1, Lcom/google/re2j/CharGroup;

    sget-object v2, Lcom/google/re2j/CharGroup;->code10:[I

    invoke-direct {v1, v8, v2}, Lcom/google/re2j/CharGroup;-><init>(I[I)V

    const-string v2, "[:^graph:]"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/google/re2j/CharGroup;->POSIX_GROUPS:Ljava/util/HashMap;

    new-instance v1, Lcom/google/re2j/CharGroup;

    sget-object v2, Lcom/google/re2j/CharGroup;->code11:[I

    invoke-direct {v1, v7, v2}, Lcom/google/re2j/CharGroup;-><init>(I[I)V

    const-string v2, "[:lower:]"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lcom/google/re2j/CharGroup;->POSIX_GROUPS:Ljava/util/HashMap;

    new-instance v1, Lcom/google/re2j/CharGroup;

    sget-object v2, Lcom/google/re2j/CharGroup;->code11:[I

    invoke-direct {v1, v8, v2}, Lcom/google/re2j/CharGroup;-><init>(I[I)V

    const-string v2, "[:^lower:]"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lcom/google/re2j/CharGroup;->POSIX_GROUPS:Ljava/util/HashMap;

    new-instance v1, Lcom/google/re2j/CharGroup;

    sget-object v2, Lcom/google/re2j/CharGroup;->code12:[I

    invoke-direct {v1, v7, v2}, Lcom/google/re2j/CharGroup;-><init>(I[I)V

    const-string v2, "[:print:]"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lcom/google/re2j/CharGroup;->POSIX_GROUPS:Ljava/util/HashMap;

    new-instance v1, Lcom/google/re2j/CharGroup;

    sget-object v2, Lcom/google/re2j/CharGroup;->code12:[I

    invoke-direct {v1, v8, v2}, Lcom/google/re2j/CharGroup;-><init>(I[I)V

    const-string v2, "[:^print:]"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lcom/google/re2j/CharGroup;->POSIX_GROUPS:Ljava/util/HashMap;

    new-instance v1, Lcom/google/re2j/CharGroup;

    sget-object v2, Lcom/google/re2j/CharGroup;->code13:[I

    invoke-direct {v1, v7, v2}, Lcom/google/re2j/CharGroup;-><init>(I[I)V

    const-string v2, "[:punct:]"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lcom/google/re2j/CharGroup;->POSIX_GROUPS:Ljava/util/HashMap;

    new-instance v1, Lcom/google/re2j/CharGroup;

    sget-object v2, Lcom/google/re2j/CharGroup;->code13:[I

    invoke-direct {v1, v8, v2}, Lcom/google/re2j/CharGroup;-><init>(I[I)V

    const-string v2, "[:^punct:]"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcom/google/re2j/CharGroup;->POSIX_GROUPS:Ljava/util/HashMap;

    new-instance v1, Lcom/google/re2j/CharGroup;

    sget-object v2, Lcom/google/re2j/CharGroup;->code14:[I

    invoke-direct {v1, v7, v2}, Lcom/google/re2j/CharGroup;-><init>(I[I)V

    const-string v2, "[:space:]"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lcom/google/re2j/CharGroup;->POSIX_GROUPS:Ljava/util/HashMap;

    new-instance v1, Lcom/google/re2j/CharGroup;

    sget-object v2, Lcom/google/re2j/CharGroup;->code14:[I

    invoke-direct {v1, v8, v2}, Lcom/google/re2j/CharGroup;-><init>(I[I)V

    const-string v2, "[:^space:]"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lcom/google/re2j/CharGroup;->POSIX_GROUPS:Ljava/util/HashMap;

    new-instance v1, Lcom/google/re2j/CharGroup;

    sget-object v2, Lcom/google/re2j/CharGroup;->code15:[I

    invoke-direct {v1, v7, v2}, Lcom/google/re2j/CharGroup;-><init>(I[I)V

    const-string v2, "[:upper:]"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lcom/google/re2j/CharGroup;->POSIX_GROUPS:Ljava/util/HashMap;

    new-instance v1, Lcom/google/re2j/CharGroup;

    sget-object v2, Lcom/google/re2j/CharGroup;->code15:[I

    invoke-direct {v1, v8, v2}, Lcom/google/re2j/CharGroup;-><init>(I[I)V

    const-string v2, "[:^upper:]"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lcom/google/re2j/CharGroup;->POSIX_GROUPS:Ljava/util/HashMap;

    new-instance v1, Lcom/google/re2j/CharGroup;

    sget-object v2, Lcom/google/re2j/CharGroup;->code16:[I

    invoke-direct {v1, v7, v2}, Lcom/google/re2j/CharGroup;-><init>(I[I)V

    const-string v2, "[:word:]"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lcom/google/re2j/CharGroup;->POSIX_GROUPS:Ljava/util/HashMap;

    new-instance v1, Lcom/google/re2j/CharGroup;

    sget-object v2, Lcom/google/re2j/CharGroup;->code16:[I

    invoke-direct {v1, v8, v2}, Lcom/google/re2j/CharGroup;-><init>(I[I)V

    const-string v2, "[:^word:]"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lcom/google/re2j/CharGroup;->POSIX_GROUPS:Ljava/util/HashMap;

    new-instance v1, Lcom/google/re2j/CharGroup;

    sget-object v2, Lcom/google/re2j/CharGroup;->code17:[I

    invoke-direct {v1, v7, v2}, Lcom/google/re2j/CharGroup;-><init>(I[I)V

    const-string v2, "[:xdigit:]"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lcom/google/re2j/CharGroup;->POSIX_GROUPS:Ljava/util/HashMap;

    new-instance v1, Lcom/google/re2j/CharGroup;

    sget-object v2, Lcom/google/re2j/CharGroup;->code17:[I

    invoke-direct {v1, v8, v2}, Lcom/google/re2j/CharGroup;-><init>(I[I)V

    const-string v2, "[:^xdigit:]"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    return-void

    nop

    :array_0
    .array-data 4
        0x9
        0xa
        0xc
        0xd
        0x20
        0x20
    .end array-data

    :array_1
    .array-data 4
        0x30
        0x39
        0x41
        0x5a
        0x5f
        0x5f
        0x61
        0x7a
    .end array-data

    :array_2
    .array-data 4
        0x30
        0x39
        0x41
        0x5a
        0x61
        0x7a
    .end array-data

    :array_3
    .array-data 4
        0x21
        0x2f
        0x3a
        0x40
        0x5b
        0x60
        0x7b
        0x7e
    .end array-data

    :array_4
    .array-data 4
        0x30
        0x39
        0x41
        0x5a
        0x5f
        0x5f
        0x61
        0x7a
    .end array-data

    :array_5
    .array-data 4
        0x30
        0x39
        0x41
        0x46
        0x61
        0x66
    .end array-data
.end method

.method private constructor <init>(I[I)V
    .locals 0
    .param p1, "sign"    # I
    .param p2, "cls"    # [I

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/google/re2j/CharGroup;->sign:I

    .line 21
    iput-object p2, p0, Lcom/google/re2j/CharGroup;->cls:[I

    .line 22
    return-void
.end method
