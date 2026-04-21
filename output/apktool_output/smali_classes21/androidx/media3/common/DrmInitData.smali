.class public final Landroidx/media3/common/DrmInitData;
.super Ljava/lang/Object;
.source "DrmInitData.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/DrmInitData$SchemeData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroidx/media3/common/DrmInitData$SchemeData;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/media3/common/DrmInitData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private hashCode:I

.field public final schemeDataCount:I

.field private final schemeDatas:[Landroidx/media3/common/DrmInitData$SchemeData;

.field public final schemeType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 234
    new-instance v0, Landroidx/media3/common/DrmInitData$1;

    invoke-direct {v0}, Landroidx/media3/common/DrmInitData$1;-><init>()V

    sput-object v0, Landroidx/media3/common/DrmInitData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/DrmInitData;->schemeType:Ljava/lang/String;

    .line 144
    sget-object v0, Landroidx/media3/common/DrmInitData$SchemeData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/media3/common/DrmInitData$SchemeData;

    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/media3/common/DrmInitData$SchemeData;

    iput-object v0, p0, Landroidx/media3/common/DrmInitData;->schemeDatas:[Landroidx/media3/common/DrmInitData$SchemeData;

    .line 145
    iget-object v0, p0, Landroidx/media3/common/DrmInitData;->schemeDatas:[Landroidx/media3/common/DrmInitData$SchemeData;

    array-length v0, v0

    iput v0, p0, Landroidx/media3/common/DrmInitData;->schemeDataCount:I

    .line 146
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p1, "schemeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroidx/media3/common/DrmInitData$SchemeData;",
            ">;)V"
        }
    .end annotation

    .line 111
    .local p2, "schemeDatas":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/DrmInitData$SchemeData;>;"
    const/4 v0, 0x0

    new-array v1, v0, [Landroidx/media3/common/DrmInitData$SchemeData;

    invoke-interface {p2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/media3/common/DrmInitData$SchemeData;

    invoke-direct {p0, p1, v0, v1}, Landroidx/media3/common/DrmInitData;-><init>(Ljava/lang/String;Z[Landroidx/media3/common/DrmInitData$SchemeData;)V

    .line 112
    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;Z[Landroidx/media3/common/DrmInitData$SchemeData;)V
    .locals 1
    .param p1, "schemeType"    # Ljava/lang/String;
    .param p2, "cloneSchemeDatas"    # Z
    .param p3, "schemeDatas"    # [Landroidx/media3/common/DrmInitData$SchemeData;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Landroidx/media3/common/DrmInitData;->schemeType:Ljava/lang/String;

    .line 132
    if-eqz p2, :cond_0

    .line 133
    invoke-virtual {p3}, [Landroidx/media3/common/DrmInitData$SchemeData;->clone()Ljava/lang/Object;

    move-result-object v0

    move-object p3, v0

    check-cast p3, [Landroidx/media3/common/DrmInitData$SchemeData;

    .line 135
    :cond_0
    iput-object p3, p0, Landroidx/media3/common/DrmInitData;->schemeDatas:[Landroidx/media3/common/DrmInitData$SchemeData;

    .line 136
    array-length v0, p3

    iput v0, p0, Landroidx/media3/common/DrmInitData;->schemeDataCount:I

    .line 139
    iget-object v0, p0, Landroidx/media3/common/DrmInitData;->schemeDatas:[Landroidx/media3/common/DrmInitData$SchemeData;

    invoke-static {v0, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 140
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Landroidx/media3/common/DrmInitData$SchemeData;)V
    .locals 1
    .param p1, "schemeType"    # Ljava/lang/String;
    .param p2, "schemeDatas"    # [Landroidx/media3/common/DrmInitData$SchemeData;

    .line 126
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroidx/media3/common/DrmInitData;-><init>(Ljava/lang/String;Z[Landroidx/media3/common/DrmInitData$SchemeData;)V

    .line 127
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/DrmInitData$SchemeData;",
            ">;)V"
        }
    .end annotation

    .line 103
    .local p1, "schemeDatas":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/DrmInitData$SchemeData;>;"
    const/4 v0, 0x0

    new-array v1, v0, [Landroidx/media3/common/DrmInitData$SchemeData;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/media3/common/DrmInitData$SchemeData;

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Landroidx/media3/common/DrmInitData;-><init>(Ljava/lang/String;Z[Landroidx/media3/common/DrmInitData$SchemeData;)V

    .line 104
    return-void
.end method

.method public varargs constructor <init>([Landroidx/media3/common/DrmInitData$SchemeData;)V
    .locals 1
    .param p1, "schemeDatas"    # [Landroidx/media3/common/DrmInitData$SchemeData;

    .line 118
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroidx/media3/common/DrmInitData;-><init>(Ljava/lang/String;[Landroidx/media3/common/DrmInitData$SchemeData;)V

    .line 119
    return-void
.end method

.method private static containsSchemeDataWithUuid(Ljava/util/ArrayList;ILjava/util/UUID;)Z
    .locals 2
    .param p1, "limit"    # I
    .param p2, "uuid"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/media3/common/DrmInitData$SchemeData;",
            ">;I",
            "Ljava/util/UUID;",
            ")Z"
        }
    .end annotation

    .line 252
    .local p0, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/common/DrmInitData$SchemeData;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 253
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/DrmInitData$SchemeData;

    iget-object v1, v1, Landroidx/media3/common/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    invoke-virtual {v1, p2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 254
    const/4 v1, 0x1

    return v1

    .line 252
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 257
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static createSessionCreationData(Landroidx/media3/common/DrmInitData;Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/DrmInitData;
    .locals 8
    .param p0, "manifestData"    # Landroidx/media3/common/DrmInitData;
    .param p1, "mediaData"    # Landroidx/media3/common/DrmInitData;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/common/DrmInitData$SchemeData;>;"
    const/4 v1, 0x0

    .line 64
    .local v1, "schemeType":Ljava/lang/String;
    const/4 v2, 0x0

    if-eqz p0, :cond_1

    .line 65
    iget-object v1, p0, Landroidx/media3/common/DrmInitData;->schemeType:Ljava/lang/String;

    .line 66
    iget-object v3, p0, Landroidx/media3/common/DrmInitData;->schemeDatas:[Landroidx/media3/common/DrmInitData$SchemeData;

    array-length v4, v3

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 67
    .local v6, "data":Landroidx/media3/common/DrmInitData$SchemeData;
    invoke-virtual {v6}, Landroidx/media3/common/DrmInitData$SchemeData;->hasData()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 68
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .end local v6    # "data":Landroidx/media3/common/DrmInitData$SchemeData;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 73
    :cond_1
    if-eqz p1, :cond_4

    .line 74
    if-nez v1, :cond_2

    .line 75
    iget-object v1, p1, Landroidx/media3/common/DrmInitData;->schemeType:Ljava/lang/String;

    .line 77
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 78
    .local v3, "manifestDatasCount":I
    iget-object v4, p1, Landroidx/media3/common/DrmInitData;->schemeDatas:[Landroidx/media3/common/DrmInitData$SchemeData;

    array-length v5, v4

    :goto_1
    if-ge v2, v5, :cond_4

    aget-object v6, v4, v2

    .line 79
    .restart local v6    # "data":Landroidx/media3/common/DrmInitData$SchemeData;
    invoke-virtual {v6}, Landroidx/media3/common/DrmInitData$SchemeData;->hasData()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, v6, Landroidx/media3/common/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    invoke-static {v0, v3, v7}, Landroidx/media3/common/DrmInitData;->containsSchemeDataWithUuid(Ljava/util/ArrayList;ILjava/util/UUID;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 80
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    .end local v6    # "data":Landroidx/media3/common/DrmInitData$SchemeData;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 85
    .end local v3    # "manifestDatasCount":I
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    goto :goto_2

    :cond_5
    new-instance v2, Landroidx/media3/common/DrmInitData;

    invoke-direct {v2, v1, v0}, Landroidx/media3/common/DrmInitData;-><init>(Ljava/lang/String;Ljava/util/List;)V

    :goto_2
    return-object v2
.end method


# virtual methods
.method public compare(Landroidx/media3/common/DrmInitData$SchemeData;Landroidx/media3/common/DrmInitData$SchemeData;)I
    .locals 2
    .param p1, "first"    # Landroidx/media3/common/DrmInitData$SchemeData;
    .param p2, "second"    # Landroidx/media3/common/DrmInitData$SchemeData;

    .line 216
    sget-object v0, Landroidx/media3/common/C;->UUID_NIL:Ljava/util/UUID;

    iget-object v1, p1, Landroidx/media3/common/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    sget-object v0, Landroidx/media3/common/C;->UUID_NIL:Ljava/util/UUID;

    iget-object v1, p2, Landroidx/media3/common/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 218
    :cond_1
    iget-object v0, p1, Landroidx/media3/common/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    iget-object v1, p2, Landroidx/media3/common/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->compareTo(Ljava/util/UUID;)I

    move-result v0

    .line 216
    :goto_0
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 37
    check-cast p1, Landroidx/media3/common/DrmInitData$SchemeData;

    check-cast p2, Landroidx/media3/common/DrmInitData$SchemeData;

    invoke-virtual {p0, p1, p2}, Landroidx/media3/common/DrmInitData;->compare(Landroidx/media3/common/DrmInitData$SchemeData;Landroidx/media3/common/DrmInitData$SchemeData;)I

    move-result p1

    return p1
.end method

.method public copyWithSchemeType(Ljava/lang/String;)Landroidx/media3/common/DrmInitData;
    .locals 3
    .param p1, "schemeType"    # Ljava/lang/String;

    .line 166
    iget-object v0, p0, Landroidx/media3/common/DrmInitData;->schemeType:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    return-object p0

    .line 169
    :cond_0
    new-instance v0, Landroidx/media3/common/DrmInitData;

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/media3/common/DrmInitData;->schemeDatas:[Landroidx/media3/common/DrmInitData$SchemeData;

    invoke-direct {v0, p1, v1, v2}, Landroidx/media3/common/DrmInitData;-><init>(Ljava/lang/String;Z[Landroidx/media3/common/DrmInitData$SchemeData;)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .line 225
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 203
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 204
    return v0

    .line 206
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 209
    :cond_1
    move-object v2, p1

    check-cast v2, Landroidx/media3/common/DrmInitData;

    .line 210
    .local v2, "other":Landroidx/media3/common/DrmInitData;
    iget-object v3, p0, Landroidx/media3/common/DrmInitData;->schemeType:Ljava/lang/String;

    iget-object v4, v2, Landroidx/media3/common/DrmInitData;->schemeType:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/media3/common/DrmInitData;->schemeDatas:[Landroidx/media3/common/DrmInitData$SchemeData;

    iget-object v4, v2, Landroidx/media3/common/DrmInitData;->schemeDatas:[Landroidx/media3/common/DrmInitData$SchemeData;

    .line 211
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 210
    :goto_0
    return v0

    .line 207
    .end local v2    # "other":Landroidx/media3/common/DrmInitData;
    :cond_3
    :goto_1
    return v1
.end method

.method public get(I)Landroidx/media3/common/DrmInitData$SchemeData;
    .locals 1
    .param p1, "index"    # I

    .line 155
    iget-object v0, p0, Landroidx/media3/common/DrmInitData;->schemeDatas:[Landroidx/media3/common/DrmInitData$SchemeData;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 193
    iget v0, p0, Landroidx/media3/common/DrmInitData;->hashCode:I

    if-nez v0, :cond_1

    .line 194
    iget-object v0, p0, Landroidx/media3/common/DrmInitData;->schemeType:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/common/DrmInitData;->schemeType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 195
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroidx/media3/common/DrmInitData;->schemeDatas:[Landroidx/media3/common/DrmInitData$SchemeData;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 196
    .end local v0    # "result":I
    .local v1, "result":I
    iput v1, p0, Landroidx/media3/common/DrmInitData;->hashCode:I

    .line 198
    .end local v1    # "result":I
    :cond_1
    iget v0, p0, Landroidx/media3/common/DrmInitData;->hashCode:I

    return v0
.end method

.method public merge(Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/DrmInitData;
    .locals 3
    .param p1, "drmInitData"    # Landroidx/media3/common/DrmInitData;

    .line 181
    iget-object v0, p0, Landroidx/media3/common/DrmInitData;->schemeType:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroidx/media3/common/DrmInitData;->schemeType:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/common/DrmInitData;->schemeType:Ljava/lang/String;

    iget-object v1, p1, Landroidx/media3/common/DrmInitData;->schemeType:Ljava/lang/String;

    .line 184
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 181
    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 185
    iget-object v0, p0, Landroidx/media3/common/DrmInitData;->schemeType:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media3/common/DrmInitData;->schemeType:Ljava/lang/String;

    goto :goto_2

    :cond_2
    iget-object v0, p1, Landroidx/media3/common/DrmInitData;->schemeType:Ljava/lang/String;

    .line 186
    .local v0, "mergedSchemeType":Ljava/lang/String;
    :goto_2
    iget-object v1, p0, Landroidx/media3/common/DrmInitData;->schemeDatas:[Landroidx/media3/common/DrmInitData$SchemeData;

    iget-object v2, p1, Landroidx/media3/common/DrmInitData;->schemeDatas:[Landroidx/media3/common/DrmInitData$SchemeData;

    .line 187
    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->nullSafeArrayConcatenation([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/media3/common/DrmInitData$SchemeData;

    .line 188
    .local v1, "mergedSchemeDatas":[Landroidx/media3/common/DrmInitData$SchemeData;
    new-instance v2, Landroidx/media3/common/DrmInitData;

    invoke-direct {v2, v0, v1}, Landroidx/media3/common/DrmInitData;-><init>(Ljava/lang/String;[Landroidx/media3/common/DrmInitData$SchemeData;)V

    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 230
    iget-object v0, p0, Landroidx/media3/common/DrmInitData;->schemeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Landroidx/media3/common/DrmInitData;->schemeDatas:[Landroidx/media3/common/DrmInitData$SchemeData;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 232
    return-void
.end method
