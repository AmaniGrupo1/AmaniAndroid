.class Lcom/google/android/gms/internal/common/zzaa;
.super Lcom/google/android/gms/internal/common/zzab;
.source "com.google.android.gms:play-services-basement@@18.9.0"


# instance fields
.field zza:[Ljava/lang/Object;

.field zzb:I

.field zzc:Z


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/common/zzab;-><init>()V

    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/common/zzaa;->zza:[Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/common/zzaa;->zzb:I

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/common/zzaa;
    .locals 3

    .line 1
    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/common/zzaa;->zza:[Ljava/lang/Object;

    array-length v0, v0

    iget v1, p0, Lcom/google/android/gms/internal/common/zzaa;->zzb:I

    add-int/lit8 v1, v1, 0x1

    if-ltz v1, :cond_5

    .line 2
    if-gt v1, v0, :cond_0

    move v2, v0

    goto :goto_1

    .line 5
    :cond_0
    shr-int/lit8 v2, v0, 0x1

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v1, :cond_1

    add-int/lit8 v1, v1, -0x1

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    add-int v2, v1, v1

    goto :goto_0

    .line 6
    :cond_1
    nop

    .line 3
    :goto_0
    if-gez v2, :cond_2

    const v2, 0x7fffffff

    .line 2
    :cond_2
    :goto_1
    if-gt v2, v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/common/zzaa;->zzc:Z

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/common/zzaa;->zza:[Ljava/lang/Object;

    .line 4
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/common/zzaa;->zza:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/common/zzaa;->zzc:Z

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/common/zzaa;->zza:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/common/zzaa;->zzb:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/common/zzaa;->zzb:I

    .line 5
    aput-object p1, v0, v1

    return-object p0

    .line 1
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 2
    const-string v0, "cannot store more than Integer.MAX_VALUE elements"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_6
    nop

    .line 6
    const/4 p1, 0x0

    throw p1
.end method
