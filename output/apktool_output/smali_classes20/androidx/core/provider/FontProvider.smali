.class Landroidx/core/provider/FontProvider;
.super Ljava/lang/Object;
.source "FontProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/provider/FontProvider$ProviderCacheKey;,
        Landroidx/core/provider/FontProvider$ContentQueryWrapper;,
        Landroidx/core/provider/FontProvider$ContentQueryWrapperApi24Impl;,
        Landroidx/core/provider/FontProvider$ContentQueryWrapperApi16Impl;
    }
.end annotation


# static fields
.field private static final sByteArrayComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "[B>;"
        }
    .end annotation
.end field

.field private static final sProviderCache:Landroidx/collection/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LruCache<",
            "Landroidx/core/provider/FontProvider$ProviderCacheKey;",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 141
    new-instance v0, Landroidx/collection/LruCache;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroidx/collection/LruCache;-><init>(I)V

    sput-object v0, Landroidx/core/provider/FontProvider;->sProviderCache:Landroidx/collection/LruCache;

    .line 311
    new-instance v0, Landroidx/core/provider/FontProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/core/provider/FontProvider$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/core/provider/FontProvider;->sByteArrayComparator:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static clearProviderCache()V
    .locals 1

    .line 149
    sget-object v0, Landroidx/core/provider/FontProvider;->sProviderCache:Landroidx/collection/LruCache;

    invoke-virtual {v0}, Landroidx/collection/LruCache;->evictAll()V

    .line 150
    return-void
.end method

.method private static convertToByteArrayList([Landroid/content/pm/Signature;)Ljava/util/List;
    .locals 5
    .param p0, "signatures"    # [Landroid/content/pm/Signature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/pm/Signature;",
            ")",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 337
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 338
    .local v0, "shaList":Ljava/util/List;, "Ljava/util/List<[B>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 339
    .local v3, "signature":Landroid/content/pm/Signature;
    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    .end local v3    # "signature":Landroid/content/pm/Signature;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 341
    :cond_0
    return-object v0
.end method

.method private static equalsByteArrayList(Ljava/util/List;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;",
            "Ljava/util/List<",
            "[B>;)Z"
        }
    .end annotation

    .line 325
    .local p0, "signatures":Ljava/util/List;, "Ljava/util/List<[B>;"
    .local p1, "requestSignatures":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 326
    return v2

    .line 328
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 329
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_1

    .line 330
    return v2

    .line 328
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 333
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private static getCertificates(Landroidx/core/provider/FontRequest;Landroid/content/res/Resources;)Ljava/util/List;
    .locals 2
    .param p0, "request"    # Landroidx/core/provider/FontRequest;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/provider/FontRequest;",
            "Landroid/content/res/Resources;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "[B>;>;"
        }
    .end annotation

    .line 304
    invoke-virtual {p0}, Landroidx/core/provider/FontRequest;->getCertificates()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {p0}, Landroidx/core/provider/FontRequest;->getCertificates()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 307
    :cond_0
    invoke-virtual {p0}, Landroidx/core/provider/FontRequest;->getCertificatesArrayResId()I

    move-result v0

    .line 308
    .local v0, "resourceId":I
    invoke-static {p1, v0}, Landroidx/core/content/res/FontResourcesParserCompat;->readCerts(Landroid/content/res/Resources;I)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method static getFontFamilyResult(Landroid/content/Context;Ljava/util/List;Landroid/os/CancellationSignal;)Landroidx/core/provider/FontsContractCompat$FontFamilyResult;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroidx/core/provider/FontRequest;",
            ">;",
            "Landroid/os/CancellationSignal;",
            ")",
            "Landroidx/core/provider/FontsContractCompat$FontFamilyResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 64
    .local p1, "requests":Ljava/util/List;, "Ljava/util/List<Landroidx/core/provider/FontRequest;>;"
    const-string v0, "FontProvider.getFontFamilyResult"

    invoke-static {v0}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 67
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .local v0, "queryResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Landroidx/core/provider/FontsContractCompat$FontInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_2

    .line 69
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/core/provider/FontRequest;

    .line 71
    .local v2, "request":Landroidx/core/provider/FontRequest;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1f

    const/4 v6, 0x1

    if-lt v4, v5, :cond_0

    .line 72
    invoke-virtual {v2}, Landroidx/core/provider/FontRequest;->getSystemFont()Ljava/lang/String;

    move-result-object v4

    .line 73
    .local v4, "systemFont":Ljava/lang/String;
    invoke-static {v4}, Landroidx/core/graphics/TypefaceCompat;->getSystemFontFamily(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    .line 74
    .local v5, "typeface":Landroid/graphics/Typeface;
    if-eqz v5, :cond_0

    .line 75
    invoke-static {v5}, Landroidx/core/graphics/TypefaceCompat;->guessPrimaryFont(Landroid/graphics/Typeface;)Landroid/graphics/fonts/Font;

    move-result-object v7

    .line 76
    .local v7, "font":Landroid/graphics/fonts/Font;
    if-eqz v7, :cond_0

    .line 81
    new-array v6, v6, [Landroidx/core/provider/FontsContractCompat$FontInfo;

    new-instance v8, Landroidx/core/provider/FontsContractCompat$FontInfo;

    .line 82
    invoke-virtual {v2}, Landroidx/core/provider/FontRequest;->getVariationSettings()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v4, v9}, Landroidx/core/provider/FontsContractCompat$FontInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v8, v6, v3

    .line 81
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    goto :goto_1

    .line 89
    .end local v4    # "systemFont":Ljava/lang/String;
    .end local v5    # "typeface":Landroid/graphics/Typeface;
    .end local v7    # "font":Landroid/graphics/fonts/Font;
    :cond_0
    nop

    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 89
    invoke-static {v3, v2, v4}, Landroidx/core/provider/FontProvider;->getProvider(Landroid/content/pm/PackageManager;Landroidx/core/provider/FontRequest;Landroid/content/res/Resources;)Landroid/content/pm/ProviderInfo;

    move-result-object v3

    .line 91
    .local v3, "providerInfo":Landroid/content/pm/ProviderInfo;
    if-nez v3, :cond_1

    .line 92
    const/4 v4, 0x0

    move-object v5, v4

    check-cast v5, [Landroidx/core/provider/FontsContractCompat$FontInfo;

    invoke-static {v6, v4}, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->create(I[Landroidx/core/provider/FontsContractCompat$FontInfo;)Landroidx/core/provider/FontsContractCompat$FontFamilyResult;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 92
    return-object v4

    .line 96
    :cond_1
    :try_start_1
    iget-object v4, v3, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-static {p0, v2, v4, p2}, Landroidx/core/provider/FontProvider;->query(Landroid/content/Context;Landroidx/core/provider/FontRequest;Ljava/lang/String;Landroid/os/CancellationSignal;)[Landroidx/core/provider/FontsContractCompat$FontInfo;

    move-result-object v4

    .line 98
    .local v4, "fonts":[Landroidx/core/provider/FontsContractCompat$FontInfo;
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    .end local v2    # "request":Landroidx/core/provider/FontRequest;
    .end local v3    # "providerInfo":Landroid/content/pm/ProviderInfo;
    .end local v4    # "fonts":[Landroidx/core/provider/FontsContractCompat$FontInfo;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101
    .end local v1    # "i":I
    :cond_2
    invoke-static {v3, v0}, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->create(ILjava/util/List;)Landroidx/core/provider/FontsContractCompat$FontFamilyResult;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 101
    return-object v1

    .line 103
    .end local v0    # "queryResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Landroidx/core/provider/FontsContractCompat$FontInfo;>;"
    :catchall_0
    move-exception v0

    .line 104
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 106
    throw v0
.end method

.method static getProvider(Landroid/content/pm/PackageManager;Landroidx/core/provider/FontRequest;Landroid/content/res/Resources;)Landroid/content/pm/ProviderInfo;
    .locals 10
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "request"    # Landroidx/core/provider/FontRequest;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 163
    const-string v0, "FontProvider.getProvider"

    invoke-static {v0}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 166
    :try_start_0
    invoke-static {p1, p2}, Landroidx/core/provider/FontProvider;->getCertificates(Landroidx/core/provider/FontRequest;Landroid/content/res/Resources;)Ljava/util/List;

    move-result-object v0

    .line 167
    .local v0, "requestCertificatesList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<[B>;>;"
    new-instance v1, Landroidx/core/provider/FontProvider$ProviderCacheKey;

    invoke-virtual {p1}, Landroidx/core/provider/FontRequest;->getProviderAuthority()Ljava/lang/String;

    move-result-object v2

    .line 168
    invoke-virtual {p1}, Landroidx/core/provider/FontRequest;->getProviderPackage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Landroidx/core/provider/FontProvider$ProviderCacheKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 169
    .local v1, "cacheKey":Landroidx/core/provider/FontProvider$ProviderCacheKey;
    sget-object v2, Landroidx/core/provider/FontProvider;->sProviderCache:Landroidx/collection/LruCache;

    invoke-virtual {v2, v1}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ProviderInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    .local v2, "cachedPackageInfo":Landroid/content/pm/ProviderInfo;
    if-eqz v2, :cond_0

    .line 171
    nop

    .line 205
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 171
    return-object v2

    .line 173
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroidx/core/provider/FontRequest;->getProviderAuthority()Ljava/lang/String;

    move-result-object v3

    .line 174
    .local v3, "providerAuthority":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v4

    .line 175
    .local v4, "info":Landroid/content/pm/ProviderInfo;
    if-eqz v4, :cond_4

    .line 180
    iget-object v5, v4, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroidx/core/provider/FontRequest;->getProviderPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 189
    iget-object v5, v4, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    const/16 v6, 0x40

    invoke-virtual {p0, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 191
    .local v5, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v6}, Landroidx/core/provider/FontProvider;->convertToByteArrayList([Landroid/content/pm/Signature;)Ljava/util/List;

    move-result-object v6

    .line 192
    .local v6, "signatures":Ljava/util/List;, "Ljava/util/List<[B>;"
    sget-object v7, Landroidx/core/provider/FontProvider;->sByteArrayComparator:Ljava/util/Comparator;

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 193
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 195
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Collection;

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 196
    .local v8, "requestSignatures":Ljava/util/List;, "Ljava/util/List<[B>;"
    sget-object v9, Landroidx/core/provider/FontProvider;->sByteArrayComparator:Ljava/util/Comparator;

    invoke-static {v8, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 197
    invoke-static {v6, v8}, Landroidx/core/provider/FontProvider;->equalsByteArrayList(Ljava/util/List;Ljava/util/List;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 198
    sget-object v9, Landroidx/core/provider/FontProvider;->sProviderCache:Landroidx/collection/LruCache;

    invoke-virtual {v9, v1, v4}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    nop

    .line 205
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 199
    return-object v4

    .line 193
    .end local v8    # "requestSignatures":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 202
    .end local v7    # "i":I
    :cond_2
    nop

    .line 205
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 202
    const/4 v7, 0x0

    return-object v7

    .line 181
    .end local v5    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v6    # "signatures":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_3
    :try_start_2
    new-instance v5, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found content provider "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", but package was not "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 183
    invoke-virtual {p1}, Landroidx/core/provider/FontRequest;->getProviderPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    .end local p0    # "packageManager":Landroid/content/pm/PackageManager;
    .end local p1    # "request":Landroidx/core/provider/FontRequest;
    .end local p2    # "resources":Landroid/content/res/Resources;
    throw v5

    .line 176
    .restart local p0    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local p1    # "request":Landroidx/core/provider/FontRequest;
    .restart local p2    # "resources":Landroid/content/res/Resources;
    :cond_4
    new-instance v5, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No package found for authority: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    .end local p0    # "packageManager":Landroid/content/pm/PackageManager;
    .end local p1    # "request":Landroidx/core/provider/FontRequest;
    .end local p2    # "resources":Landroid/content/res/Resources;
    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 204
    .end local v0    # "requestCertificatesList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<[B>;>;"
    .end local v1    # "cacheKey":Landroidx/core/provider/FontProvider$ProviderCacheKey;
    .end local v2    # "cachedPackageInfo":Landroid/content/pm/ProviderInfo;
    .end local v3    # "providerAuthority":Ljava/lang/String;
    .end local v4    # "info":Landroid/content/pm/ProviderInfo;
    .restart local p0    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local p1    # "request":Landroidx/core/provider/FontRequest;
    .restart local p2    # "resources":Landroid/content/res/Resources;
    :catchall_0
    move-exception v0

    .line 205
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 207
    throw v0
.end method

.method static synthetic lambda$static$0([B[B)I
    .locals 3
    .param p0, "l"    # [B
    .param p1, "r"    # [B

    .line 312
    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_0

    .line 313
    array-length v0, p0

    array-length v1, p1

    sub-int/2addr v0, v1

    return v0

    .line 315
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 316
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    if-eq v1, v2, :cond_1

    .line 317
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    sub-int/2addr v1, v2

    return v1

    .line 315
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 320
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method static query(Landroid/content/Context;Landroidx/core/provider/FontRequest;Ljava/lang/String;Landroid/os/CancellationSignal;)[Landroidx/core/provider/FontsContractCompat$FontInfo;
    .locals 23
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "request"    # Landroidx/core/provider/FontRequest;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 221
    move-object/from16 v1, p2

    const-string v0, "content"

    const-string v2, "FontProvider.query"

    invoke-static {v2}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 224
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 225
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/core/provider/FontsContractCompat$FontInfo;>;"
    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v3, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 226
    invoke-virtual {v3, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 227
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    move-object v5, v3

    .line 228
    .local v5, "uri":Landroid/net/Uri;
    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v3, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 229
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v3, "file"

    .line 230
    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 231
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    move-object v3, v0

    .line 232
    .local v3, "fileBaseUri":Landroid/net/Uri;
    const/4 v11, 0x0

    .line 233
    .local v11, "cursor":Landroid/database/Cursor;
    move-object/from16 v12, p0

    :try_start_1
    invoke-static {v12, v5}, Landroidx/core/provider/FontProvider$ContentQueryWrapper;->make(Landroid/content/Context;Landroid/net/Uri;)Landroidx/core/provider/FontProvider$ContentQueryWrapper;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 235
    .local v4, "queryWrapper":Landroidx/core/provider/FontProvider$ContentQueryWrapper;
    :try_start_2
    const-string v13, "_id"

    const-string v14, "file_id"

    const-string v15, "font_ttc_index"

    const-string v16, "font_variation_settings"

    const-string v17, "font_weight"

    const-string v18, "font_italic"

    const-string/jumbo v19, "result_code"

    filled-new-array/range {v13 .. v19}, [Ljava/lang/String;

    move-result-object v6

    .line 242
    .local v6, "projection":[Ljava/lang/String;
    const-string v0, "ContentQueryWrapper.query"

    invoke-static {v0}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 245
    :try_start_3
    const-string/jumbo v7, "query = ?"

    .line 246
    invoke-virtual/range {p1 .. p1}, Landroidx/core/provider/FontRequest;->getQuery()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v8

    .line 245
    const/4 v9, 0x0

    move-object/from16 v10, p3

    invoke-interface/range {v4 .. v10}, Landroidx/core/provider/FontProvider$ContentQueryWrapper;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v11, v0

    .line 249
    :try_start_4
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 251
    nop

    .line 253
    if-eqz v11, :cond_7

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-lez v7, :cond_7

    .line 254
    const-string/jumbo v7, "result_code"

    invoke-interface {v11, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 256
    .local v7, "resultCodeColumnIndex":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v8

    .line 257
    const-string v8, "_id"

    invoke-interface {v11, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 259
    .local v8, "idColumnIndex":I
    const-string v9, "file_id"

    invoke-interface {v11, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 261
    .local v9, "fileIdColumnIndex":I
    const-string v10, "font_ttc_index"

    invoke-interface {v11, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 263
    .local v10, "ttcIndexColumnIndex":I
    const-string v13, "font_weight"

    invoke-interface {v11, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 265
    .local v13, "weightColumnIndex":I
    const-string v14, "font_italic"

    invoke-interface {v11, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 267
    .local v14, "italicColumnIndex":I
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-eqz v15, :cond_6

    .line 268
    const/4 v15, -0x1

    if-eq v7, v15, :cond_0

    .line 269
    :try_start_5
    invoke-interface {v11, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    goto :goto_1

    .line 290
    .end local v6    # "projection":[Ljava/lang/String;
    .end local v7    # "resultCodeColumnIndex":I
    .end local v8    # "idColumnIndex":I
    .end local v9    # "fileIdColumnIndex":I
    .end local v10    # "ttcIndexColumnIndex":I
    .end local v13    # "weightColumnIndex":I
    .end local v14    # "italicColumnIndex":I
    :catchall_0
    move-exception v0

    move-object/from16 v19, v3

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    goto/16 :goto_7

    .line 270
    .restart local v6    # "projection":[Ljava/lang/String;
    .restart local v7    # "resultCodeColumnIndex":I
    .restart local v8    # "idColumnIndex":I
    .restart local v9    # "fileIdColumnIndex":I
    .restart local v10    # "ttcIndexColumnIndex":I
    .restart local v13    # "weightColumnIndex":I
    .restart local v14    # "italicColumnIndex":I
    :cond_0
    const/16 v16, 0x0

    :goto_1
    move/from16 v17, v16

    .line 271
    .local v17, "resultCode":I
    if-eq v10, v15, :cond_1

    .line 272
    invoke-interface {v11, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    goto :goto_2

    :cond_1
    const/16 v16, 0x0

    :goto_2
    move/from16 v18, v16

    .line 274
    .local v18, "ttcIndex":I
    if-ne v9, v15, :cond_2

    .line 275
    invoke-interface {v11, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    move-wide/from16 v21, v19

    .line 276
    .local v21, "id":J
    move-wide/from16 v0, v21

    .end local v21    # "id":J
    .local v0, "id":J
    invoke-static {v5, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 277
    .end local v0    # "id":J
    .local v19, "fileUri":Landroid/net/Uri;
    move-object/from16 v0, v19

    goto :goto_3

    .line 278
    .end local v19    # "fileUri":Landroid/net/Uri;
    :cond_2
    :try_start_6
    invoke-interface {v11, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 279
    .restart local v0    # "id":J
    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move-object/from16 v0, v19

    .line 282
    .local v0, "fileUri":Landroid/net/Uri;
    :goto_3
    if-eq v13, v15, :cond_3

    :try_start_7
    invoke-interface {v11, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    .line 283
    :cond_3
    const/16 v1, 0x190

    :goto_4
    nop

    .line 284
    .local v1, "weight":I
    if-eq v14, v15, :cond_4

    :try_start_8
    invoke-interface {v11, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v15
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-object/from16 v19, v3

    .end local v3    # "fileBaseUri":Landroid/net/Uri;
    .local v19, "fileBaseUri":Landroid/net/Uri;
    const/4 v3, 0x1

    if-ne v15, v3, :cond_5

    goto :goto_5

    .line 290
    .end local v0    # "fileUri":Landroid/net/Uri;
    .end local v1    # "weight":I
    .end local v6    # "projection":[Ljava/lang/String;
    .end local v7    # "resultCodeColumnIndex":I
    .end local v8    # "idColumnIndex":I
    .end local v9    # "fileIdColumnIndex":I
    .end local v10    # "ttcIndexColumnIndex":I
    .end local v13    # "weightColumnIndex":I
    .end local v14    # "italicColumnIndex":I
    .end local v17    # "resultCode":I
    .end local v18    # "ttcIndex":I
    .end local v19    # "fileBaseUri":Landroid/net/Uri;
    .restart local v3    # "fileBaseUri":Landroid/net/Uri;
    :catchall_1
    move-exception v0

    move-object/from16 v19, v3

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    .end local v3    # "fileBaseUri":Landroid/net/Uri;
    .restart local v19    # "fileBaseUri":Landroid/net/Uri;
    goto :goto_7

    .line 284
    .end local v19    # "fileBaseUri":Landroid/net/Uri;
    .restart local v0    # "fileUri":Landroid/net/Uri;
    .restart local v1    # "weight":I
    .restart local v3    # "fileBaseUri":Landroid/net/Uri;
    .restart local v6    # "projection":[Ljava/lang/String;
    .restart local v7    # "resultCodeColumnIndex":I
    .restart local v8    # "idColumnIndex":I
    .restart local v9    # "fileIdColumnIndex":I
    .restart local v10    # "ttcIndexColumnIndex":I
    .restart local v13    # "weightColumnIndex":I
    .restart local v14    # "italicColumnIndex":I
    .restart local v17    # "resultCode":I
    .restart local v18    # "ttcIndex":I
    :cond_4
    move-object/from16 v19, v3

    .end local v3    # "fileBaseUri":Landroid/net/Uri;
    .restart local v19    # "fileBaseUri":Landroid/net/Uri;
    :cond_5
    const/4 v3, 0x0

    .line 286
    .local v3, "italic":Z
    :goto_5
    move/from16 v15, v17

    move-object/from16 v17, v4

    move/from16 v4, v18

    move-object/from16 v18, v5

    .end local v5    # "uri":Landroid/net/Uri;
    .local v4, "ttcIndex":I
    .local v15, "resultCode":I
    .local v17, "queryWrapper":Landroidx/core/provider/FontProvider$ContentQueryWrapper;
    .local v18, "uri":Landroid/net/Uri;
    :try_start_9
    invoke-static {v0, v4, v1, v3, v15}, Landroidx/core/provider/FontsContractCompat$FontInfo;->create(Landroid/net/Uri;IIZI)Landroidx/core/provider/FontsContractCompat$FontInfo;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 287
    move-object/from16 v1, p2

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v3, v19

    .end local v0    # "fileUri":Landroid/net/Uri;
    .end local v1    # "weight":I
    .end local v3    # "italic":Z
    .end local v4    # "ttcIndex":I
    .end local v15    # "resultCode":I
    goto :goto_0

    .line 267
    .end local v17    # "queryWrapper":Landroidx/core/provider/FontProvider$ContentQueryWrapper;
    .end local v18    # "uri":Landroid/net/Uri;
    .end local v19    # "fileBaseUri":Landroid/net/Uri;
    .local v3, "fileBaseUri":Landroid/net/Uri;
    .local v4, "queryWrapper":Landroidx/core/provider/FontProvider$ContentQueryWrapper;
    .restart local v5    # "uri":Landroid/net/Uri;
    :cond_6
    move-object/from16 v19, v3

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    .end local v3    # "fileBaseUri":Landroid/net/Uri;
    .end local v4    # "queryWrapper":Landroidx/core/provider/FontProvider$ContentQueryWrapper;
    .end local v5    # "uri":Landroid/net/Uri;
    .restart local v17    # "queryWrapper":Landroidx/core/provider/FontProvider$ContentQueryWrapper;
    .restart local v18    # "uri":Landroid/net/Uri;
    .restart local v19    # "fileBaseUri":Landroid/net/Uri;
    goto :goto_6

    .line 253
    .end local v7    # "resultCodeColumnIndex":I
    .end local v8    # "idColumnIndex":I
    .end local v9    # "fileIdColumnIndex":I
    .end local v10    # "ttcIndexColumnIndex":I
    .end local v13    # "weightColumnIndex":I
    .end local v14    # "italicColumnIndex":I
    .end local v17    # "queryWrapper":Landroidx/core/provider/FontProvider$ContentQueryWrapper;
    .end local v18    # "uri":Landroid/net/Uri;
    .end local v19    # "fileBaseUri":Landroid/net/Uri;
    .restart local v3    # "fileBaseUri":Landroid/net/Uri;
    .restart local v4    # "queryWrapper":Landroidx/core/provider/FontProvider$ContentQueryWrapper;
    .restart local v5    # "uri":Landroid/net/Uri;
    :cond_7
    move-object/from16 v19, v3

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    .line 290
    .end local v3    # "fileBaseUri":Landroid/net/Uri;
    .end local v4    # "queryWrapper":Landroidx/core/provider/FontProvider$ContentQueryWrapper;
    .end local v5    # "uri":Landroid/net/Uri;
    .end local v6    # "projection":[Ljava/lang/String;
    .restart local v17    # "queryWrapper":Landroidx/core/provider/FontProvider$ContentQueryWrapper;
    .restart local v18    # "uri":Landroid/net/Uri;
    .restart local v19    # "fileBaseUri":Landroid/net/Uri;
    :goto_6
    if-eqz v11, :cond_8

    .line 291
    :try_start_a
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 293
    :cond_8
    invoke-interface/range {v17 .. v17}, Landroidx/core/provider/FontProvider$ContentQueryWrapper;->close()V

    .line 294
    nop

    .line 295
    const/4 v0, 0x0

    new-array v0, v0, [Landroidx/core/provider/FontsContractCompat$FontInfo;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/core/provider/FontsContractCompat$FontInfo;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 298
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 295
    return-object v0

    .line 248
    .end local v17    # "queryWrapper":Landroidx/core/provider/FontProvider$ContentQueryWrapper;
    .end local v18    # "uri":Landroid/net/Uri;
    .end local v19    # "fileBaseUri":Landroid/net/Uri;
    .restart local v3    # "fileBaseUri":Landroid/net/Uri;
    .restart local v4    # "queryWrapper":Landroidx/core/provider/FontProvider$ContentQueryWrapper;
    .restart local v5    # "uri":Landroid/net/Uri;
    .restart local v6    # "projection":[Ljava/lang/String;
    :catchall_2
    move-exception v0

    move-object/from16 v19, v3

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    .line 249
    .end local v3    # "fileBaseUri":Landroid/net/Uri;
    .end local v4    # "queryWrapper":Landroidx/core/provider/FontProvider$ContentQueryWrapper;
    .end local v5    # "uri":Landroid/net/Uri;
    .restart local v17    # "queryWrapper":Landroidx/core/provider/FontProvider$ContentQueryWrapper;
    .restart local v18    # "uri":Landroid/net/Uri;
    .restart local v19    # "fileBaseUri":Landroid/net/Uri;
    :try_start_b
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 251
    nop

    .end local v2    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/core/provider/FontsContractCompat$FontInfo;>;"
    .end local v11    # "cursor":Landroid/database/Cursor;
    .end local v17    # "queryWrapper":Landroidx/core/provider/FontProvider$ContentQueryWrapper;
    .end local v18    # "uri":Landroid/net/Uri;
    .end local v19    # "fileBaseUri":Landroid/net/Uri;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "request":Landroidx/core/provider/FontRequest;
    .end local p2    # "authority":Ljava/lang/String;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 290
    .end local v6    # "projection":[Ljava/lang/String;
    .restart local v2    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/core/provider/FontsContractCompat$FontInfo;>;"
    .restart local v11    # "cursor":Landroid/database/Cursor;
    .restart local v17    # "queryWrapper":Landroidx/core/provider/FontProvider$ContentQueryWrapper;
    .restart local v18    # "uri":Landroid/net/Uri;
    .restart local v19    # "fileBaseUri":Landroid/net/Uri;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "request":Landroidx/core/provider/FontRequest;
    .restart local p2    # "authority":Ljava/lang/String;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catchall_3
    move-exception v0

    goto :goto_7

    .end local v17    # "queryWrapper":Landroidx/core/provider/FontProvider$ContentQueryWrapper;
    .end local v18    # "uri":Landroid/net/Uri;
    .end local v19    # "fileBaseUri":Landroid/net/Uri;
    .restart local v3    # "fileBaseUri":Landroid/net/Uri;
    .restart local v4    # "queryWrapper":Landroidx/core/provider/FontProvider$ContentQueryWrapper;
    .restart local v5    # "uri":Landroid/net/Uri;
    :catchall_4
    move-exception v0

    move-object/from16 v19, v3

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    .end local v3    # "fileBaseUri":Landroid/net/Uri;
    .end local v4    # "queryWrapper":Landroidx/core/provider/FontProvider$ContentQueryWrapper;
    .end local v5    # "uri":Landroid/net/Uri;
    .restart local v17    # "queryWrapper":Landroidx/core/provider/FontProvider$ContentQueryWrapper;
    .restart local v18    # "uri":Landroid/net/Uri;
    .restart local v19    # "fileBaseUri":Landroid/net/Uri;
    :goto_7
    if-eqz v11, :cond_9

    .line 291
    :try_start_c
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 293
    :cond_9
    invoke-interface/range {v17 .. v17}, Landroidx/core/provider/FontProvider$ContentQueryWrapper;->close()V

    .line 294
    nop

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "request":Landroidx/core/provider/FontRequest;
    .end local p2    # "authority":Ljava/lang/String;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 297
    .end local v2    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/core/provider/FontsContractCompat$FontInfo;>;"
    .end local v11    # "cursor":Landroid/database/Cursor;
    .end local v17    # "queryWrapper":Landroidx/core/provider/FontProvider$ContentQueryWrapper;
    .end local v18    # "uri":Landroid/net/Uri;
    .end local v19    # "fileBaseUri":Landroid/net/Uri;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "request":Landroidx/core/provider/FontRequest;
    .restart local p2    # "authority":Ljava/lang/String;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catchall_5
    move-exception v0

    goto :goto_8

    :catchall_6
    move-exception v0

    move-object/from16 v12, p0

    .line 298
    :goto_8
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 300
    throw v0
.end method
