.class public final Landroidx/media3/common/DrmInitData$SchemeData;
.super Ljava/lang/Object;
.source "DrmInitData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/DrmInitData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SchemeData"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/media3/common/DrmInitData$SchemeData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final data:[B

.field private hashCode:I

.field public final licenseServerUrl:Ljava/lang/String;

.field public final mimeType:Ljava/lang/String;

.field public final uuid:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 392
    new-instance v0, Landroidx/media3/common/DrmInitData$SchemeData$1;

    invoke-direct {v0}, Landroidx/media3/common/DrmInitData$SchemeData$1;-><init>()V

    sput-object v0, Landroidx/media3/common/DrmInitData$SchemeData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    new-instance v0, Ljava/util/UUID;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    iput-object v0, p0, Landroidx/media3/common/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    .line 308
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    .line 309
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/common/DrmInitData$SchemeData;->mimeType:Ljava/lang/String;

    .line 310
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/DrmInitData$SchemeData;->data:[B

    .line 311
    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 1
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "licenseServerUrl"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "data"    # [B

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 300
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/UUID;

    iput-object v0, p0, Landroidx/media3/common/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    .line 301
    iput-object p2, p0, Landroidx/media3/common/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    .line 302
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroidx/media3/common/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/DrmInitData$SchemeData;->mimeType:Ljava/lang/String;

    .line 303
    iput-object p4, p0, Landroidx/media3/common/DrmInitData$SchemeData;->data:[B

    .line 304
    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Ljava/lang/String;[B)V
    .locals 1
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "data"    # [B

    .line 288
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Landroidx/media3/common/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 289
    return-void
.end method


# virtual methods
.method public canReplace(Landroidx/media3/common/DrmInitData$SchemeData;)Z
    .locals 1
    .param p1, "other"    # Landroidx/media3/common/DrmInitData$SchemeData;

    .line 330
    invoke-virtual {p0}, Landroidx/media3/common/DrmInitData$SchemeData;->hasData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/media3/common/DrmInitData$SchemeData;->hasData()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Landroidx/media3/common/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    invoke-virtual {p0, v0}, Landroidx/media3/common/DrmInitData$SchemeData;->matches(Ljava/util/UUID;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public copyWithData([B)Landroidx/media3/common/DrmInitData$SchemeData;
    .locals 4
    .param p1, "data"    # [B

    .line 346
    new-instance v0, Landroidx/media3/common/DrmInitData$SchemeData;

    iget-object v1, p0, Landroidx/media3/common/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    iget-object v2, p0, Landroidx/media3/common/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    iget-object v3, p0, Landroidx/media3/common/DrmInitData$SchemeData;->mimeType:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p1}, Landroidx/media3/common/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .line 380
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 351
    instance-of v0, p1, Landroidx/media3/common/DrmInitData$SchemeData;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 352
    return v1

    .line 354
    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    .line 355
    return v0

    .line 357
    :cond_1
    move-object v2, p1

    check-cast v2, Landroidx/media3/common/DrmInitData$SchemeData;

    .line 358
    .local v2, "other":Landroidx/media3/common/DrmInitData$SchemeData;
    iget-object v3, p0, Landroidx/media3/common/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    iget-object v4, v2, Landroidx/media3/common/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/media3/common/DrmInitData$SchemeData;->mimeType:Ljava/lang/String;

    iget-object v4, v2, Landroidx/media3/common/DrmInitData$SchemeData;->mimeType:Ljava/lang/String;

    .line 359
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/media3/common/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    iget-object v4, v2, Landroidx/media3/common/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    .line 360
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/media3/common/DrmInitData$SchemeData;->data:[B

    iget-object v4, v2, Landroidx/media3/common/DrmInitData$SchemeData;->data:[B

    .line 361
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    nop

    .line 358
    :goto_0
    return v1
.end method

.method public hasData()Z
    .locals 1

    .line 335
    iget-object v0, p0, Landroidx/media3/common/DrmInitData$SchemeData;->data:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 366
    iget v0, p0, Landroidx/media3/common/DrmInitData$SchemeData;->hashCode:I

    if-nez v0, :cond_1

    .line 367
    iget-object v0, p0, Landroidx/media3/common/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    move-result v0

    .line 368
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroidx/media3/common/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroidx/media3/common/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v1, v2

    .line 369
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroidx/media3/common/DrmInitData$SchemeData;->mimeType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 370
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroidx/media3/common/DrmInitData$SchemeData;->data:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v1, v2

    .line 371
    .end local v0    # "result":I
    .restart local v1    # "result":I
    iput v1, p0, Landroidx/media3/common/DrmInitData$SchemeData;->hashCode:I

    .line 373
    .end local v1    # "result":I
    :cond_1
    iget v0, p0, Landroidx/media3/common/DrmInitData$SchemeData;->hashCode:I

    return v0
.end method

.method public matches(Ljava/util/UUID;)Z
    .locals 2
    .param p1, "schemeUuid"    # Ljava/util/UUID;

    .line 320
    sget-object v0, Landroidx/media3/common/C;->UUID_NIL:Ljava/util/UUID;

    iget-object v1, p0, Landroidx/media3/common/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media3/common/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 385
    iget-object v0, p0, Landroidx/media3/common/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 386
    iget-object v0, p0, Landroidx/media3/common/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 387
    iget-object v0, p0, Landroidx/media3/common/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 388
    iget-object v0, p0, Landroidx/media3/common/DrmInitData$SchemeData;->mimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Landroidx/media3/common/DrmInitData$SchemeData;->data:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 390
    return-void
.end method
