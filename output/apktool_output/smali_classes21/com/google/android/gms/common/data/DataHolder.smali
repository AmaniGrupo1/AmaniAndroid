.class public final Lcom/google/android/gms/common/data/DataHolder;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-base@@18.9.0"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/data/DataHolder$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/common/data/DataHolder;",
            ">;"
        }
    .end annotation
.end field

.field private static final zak:Lcom/google/android/gms/common/data/DataHolder$Builder;


# instance fields
.field final zaa:I

.field zab:Landroid/os/Bundle;

.field zac:[I

.field zad:I

.field zae:Z

.field private final zaf:[Ljava/lang/String;

.field private final zag:[Landroid/database/CursorWindow;

.field private final zah:I

.field private final zai:Landroid/os/Bundle;

.field private zaj:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/common/data/zad;

    invoke-direct {v0}, Lcom/google/android/gms/common/data/zad;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Lcom/google/android/gms/common/data/zab;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/data/zab;-><init>([Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/common/data/DataHolder;->zak:Lcom/google/android/gms/common/data/DataHolder$Builder;

    return-void
.end method

.method constructor <init>(I[Ljava/lang/String;[Landroid/database/CursorWindow;ILandroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zae:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zaj:Z

    iput p1, p0, Lcom/google/android/gms/common/data/DataHolder;->zaa:I

    iput-object p2, p0, Lcom/google/android/gms/common/data/DataHolder;->zaf:[Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/common/data/DataHolder;->zag:[Landroid/database/CursorWindow;

    iput p4, p0, Lcom/google/android/gms/common/data/DataHolder;->zah:I

    iput-object p5, p0, Lcom/google/android/gms/common/data/DataHolder;->zai:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;ILandroid/os/Bundle;)V
    .locals 7
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "statusCode"    # I
    .param p3, "metadata"    # Landroid/os/Bundle;

    .line 2
    new-instance v0, Lcom/google/android/gms/common/sqlite/CursorWrapper;

    .end local p0    # "this":Lcom/google/android/gms/common/data/DataHolder;
    .end local p1    # "cursor":Landroid/database/Cursor;
    .end local p2    # "statusCode":I
    .end local p3    # "metadata":Landroid/os/Bundle;
    invoke-direct {v0, p1}, Lcom/google/android/gms/common/sqlite/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/common/sqlite/CursorWrapper;->getColumnNames()[Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/util/ArrayList;

    .line 4
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/common/sqlite/CursorWrapper;->getCount()I

    move-result v2

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/common/sqlite/CursorWrapper;->getWindow()Landroid/database/CursorWindow;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    .line 7
    invoke-virtual {v3}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v6

    if-nez v6, :cond_0

    .line 8
    invoke-virtual {v3}, Landroid/database/CursorWindow;->acquireReference()V

    .line 9
    invoke-virtual {v0, v4}, Lcom/google/android/gms/common/sqlite/CursorWrapper;->setWindow(Landroid/database/CursorWindow;)V

    .line 10
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-virtual {v3}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v3

    goto :goto_0

    .line 18
    :cond_0
    move v3, v5

    goto :goto_0

    .line 24
    :cond_1
    move v3, v5

    .line 11
    :goto_0
    if-ge v3, v2, :cond_4

    .line 12
    invoke-virtual {v0, v3}, Lcom/google/android/gms/common/sqlite/CursorWrapper;->moveToPosition(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/common/sqlite/CursorWrapper;->getWindow()Landroid/database/CursorWindow;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 14
    invoke-virtual {v6}, Landroid/database/CursorWindow;->acquireReference()V

    .line 15
    invoke-virtual {v0, v4}, Lcom/google/android/gms/common/sqlite/CursorWrapper;->setWindow(Landroid/database/CursorWindow;)V

    goto :goto_1

    .line 21
    :cond_2
    new-instance v6, Landroid/database/CursorWindow;

    .line 16
    invoke-direct {v6, v5}, Landroid/database/CursorWindow;-><init>(Z)V

    .line 17
    invoke-virtual {v6, v3}, Landroid/database/CursorWindow;->setStartPosition(I)V

    .line 18
    invoke-virtual {v0, v3, v6}, Lcom/google/android/gms/common/sqlite/CursorWrapper;->fillWindow(ILandroid/database/CursorWindow;)V

    .line 19
    :goto_1
    invoke-virtual {v6}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v3

    if-nez v3, :cond_3

    goto :goto_2

    .line 20
    :cond_3
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    invoke-virtual {v6}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v3

    invoke-virtual {v6}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v3, v6

    goto :goto_0

    .line 22
    :cond_4
    :goto_2
    invoke-virtual {v0}, Lcom/google/android/gms/common/sqlite/CursorWrapper;->close()V

    .line 23
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/database/CursorWindow;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/database/CursorWindow;

    .line 3
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/android/gms/common/data/DataHolder;-><init>([Ljava/lang/String;[Landroid/database/CursorWindow;ILandroid/os/Bundle;)V

    return-void

    .line 18
    :catchall_0
    move-exception p1

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/common/sqlite/CursorWrapper;->close()V

    .line 24
    throw p1
.end method

.method private constructor <init>(Lcom/google/android/gms/common/data/DataHolder$Builder;ILandroid/os/Bundle;)V
    .locals 1

    .line 25
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder$Builder;->zab()[Ljava/lang/String;

    move-result-object p3

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/google/android/gms/common/data/DataHolder;->zae(Lcom/google/android/gms/common/data/DataHolder$Builder;I)[Landroid/database/CursorWindow;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p3, p1, p2, v0}, Lcom/google/android/gms/common/data/DataHolder;-><init>([Ljava/lang/String;[Landroid/database/CursorWindow;ILandroid/os/Bundle;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/data/DataHolder$Builder;ILandroid/os/Bundle;I[B)V
    .locals 0

    .line 26
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder$Builder;->zab()[Ljava/lang/String;

    move-result-object p4

    const/4 p5, -0x1

    invoke-static {p1, p5}, Lcom/google/android/gms/common/data/DataHolder;->zae(Lcom/google/android/gms/common/data/DataHolder$Builder;I)[Landroid/database/CursorWindow;

    move-result-object p1

    invoke-direct {p0, p4, p1, p2, p3}, Lcom/google/android/gms/common/data/DataHolder;-><init>([Ljava/lang/String;[Landroid/database/CursorWindow;ILandroid/os/Bundle;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/data/DataHolder$Builder;ILandroid/os/Bundle;[B)V
    .locals 0

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/common/data/DataHolder;-><init>(Lcom/google/android/gms/common/data/DataHolder$Builder;ILandroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Landroid/database/CursorWindow;ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "columns"    # [Ljava/lang/String;
    .param p2, "windows"    # [Landroid/database/CursorWindow;
    .param p3, "statusCode"    # I
    .param p4, "metadata"    # Landroid/os/Bundle;

    .line 1
    nop

    .end local p0    # "this":Lcom/google/android/gms/common/data/DataHolder;
    .end local p1    # "columns":[Ljava/lang/String;
    .end local p2    # "windows":[Landroid/database/CursorWindow;
    .end local p3    # "statusCode":I
    .end local p4    # "metadata":Landroid/os/Bundle;
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zae:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zaj:Z

    iput v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zaa:I

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/common/data/DataHolder;->zaf:[Ljava/lang/String;

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/database/CursorWindow;

    iput-object p1, p0, Lcom/google/android/gms/common/data/DataHolder;->zag:[Landroid/database/CursorWindow;

    iput p3, p0, Lcom/google/android/gms/common/data/DataHolder;->zah:I

    iput-object p4, p0, Lcom/google/android/gms/common/data/DataHolder;->zai:Landroid/os/Bundle;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->zaa()V

    return-void
.end method

.method public static builder([Ljava/lang/String;)Lcom/google/android/gms/common/data/DataHolder$Builder;
    .locals 2
    .param p0, "columns"    # [Ljava/lang/String;

    .line 1
    new-instance v0, Lcom/google/android/gms/common/data/DataHolder$Builder;

    .end local p0    # "columns":[Ljava/lang/String;
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/google/android/gms/common/data/DataHolder$Builder;-><init>([Ljava/lang/String;Ljava/lang/String;[B)V

    return-object v0
.end method

.method public static empty(I)Lcom/google/android/gms/common/data/DataHolder;
    .locals 3
    .param p0, "statusCode"    # I

    .line 1
    new-instance v0, Lcom/google/android/gms/common/data/DataHolder;

    .end local p0    # "statusCode":I
    sget-object v1, Lcom/google/android/gms/common/data/DataHolder;->zak:Lcom/google/android/gms/common/data/DataHolder$Builder;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/google/android/gms/common/data/DataHolder;-><init>(Lcom/google/android/gms/common/data/DataHolder$Builder;ILandroid/os/Bundle;)V

    return-object v0
.end method

.method private static zae(Lcom/google/android/gms/common/data/DataHolder$Builder;I)[Landroid/database/CursorWindow;
    .locals 21

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/common/data/DataHolder$Builder;->zab()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const-string v1, " - allocating new window."

    const-string v2, "Couldn\'t populate window data for row "

    const-string v3, ": "

    const-string v4, "Unsupported object for column "

    const-string v5, ")"

    const-string v6, "Allocating additional cursor window for large data set (row "

    const/4 v7, 0x0

    if-nez v0, :cond_0

    new-array v0, v7, [Landroid/database/CursorWindow;

    return-object v0

    .line 2
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/common/data/DataHolder$Builder;->zac()Ljava/util/ArrayList;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    new-instance v9, Landroid/database/CursorWindow;

    .line 4
    invoke-direct {v9, v7}, Landroid/database/CursorWindow;-><init>(Z)V

    new-instance v10, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/common/data/DataHolder$Builder;->zab()[Ljava/lang/String;

    move-result-object v11

    array-length v11, v11

    invoke-virtual {v9, v11}, Landroid/database/CursorWindow;->setNumColumns(I)Z

    move v11, v7

    move v12, v11

    :goto_0
    if-ge v11, v8, :cond_10

    .line 8
    :try_start_0
    invoke-virtual {v9}, Landroid/database/CursorWindow;->allocRow()Z

    move-result v13
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    const-string v14, "DataHolder"

    if-nez v13, :cond_1

    .line 9
    :try_start_1
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x3d

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v14, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Landroid/database/CursorWindow;

    .line 10
    invoke-direct {v9, v7}, Landroid/database/CursorWindow;-><init>(Z)V

    .line 11
    invoke-virtual {v9, v11}, Landroid/database/CursorWindow;->setStartPosition(I)V

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/common/data/DataHolder$Builder;->zab()[Ljava/lang/String;

    move-result-object v13

    array-length v13, v13

    invoke-virtual {v9, v13}, Landroid/database/CursorWindow;->setNumColumns(I)Z

    .line 13
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-virtual {v9}, Landroid/database/CursorWindow;->allocRow()Z

    move-result v13

    if-nez v13, :cond_1

    const-string v0, "Unable to allocate row to hold data."

    .line 44
    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 46
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/database/CursorWindow;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/database/CursorWindow;

    return-object v0

    .line 15
    :cond_1
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    const/16 v16, 0x1

    .line 16
    :goto_1
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/common/data/DataHolder$Builder;->zab()[Ljava/lang/String;

    move-result-object v15

    array-length v15, v15

    if-ge v7, v15, :cond_c

    if-eqz v16, :cond_b

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/common/data/DataHolder$Builder;->zab()[Ljava/lang/String;

    move-result-object v15

    aget-object v15, v15, v7

    .line 18
    move-object/from16 v18, v0

    invoke-interface {v13, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 19
    invoke-virtual {v9, v11, v7}, Landroid/database/CursorWindow;->putNull(II)Z

    move-result v0

    move/from16 v16, v0

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    goto/16 :goto_3

    .line 20
    :cond_2
    move-object/from16 v19, v5

    instance-of v5, v0, Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 21
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v9, v0, v11, v7}, Landroid/database/CursorWindow;->putString(Ljava/lang/String;II)Z

    move-result v0

    move/from16 v16, v0

    move-object/from16 v20, v6

    goto/16 :goto_3

    .line 22
    :cond_3
    instance-of v5, v0, Ljava/lang/Long;

    if-eqz v5, :cond_4

    .line 23
    check-cast v0, Ljava/lang/Long;

    move-object/from16 v20, v6

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v9, v5, v6, v11, v7}, Landroid/database/CursorWindow;->putLong(JII)Z

    move-result v0

    move/from16 v16, v0

    goto :goto_3

    .line 24
    :cond_4
    move-object/from16 v20, v6

    instance-of v5, v0, Ljava/lang/Integer;

    if-eqz v5, :cond_5

    .line 25
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v5, v0

    invoke-virtual {v9, v5, v6, v11, v7}, Landroid/database/CursorWindow;->putLong(JII)Z

    move-result v0

    move/from16 v16, v0

    goto :goto_3

    .line 26
    :cond_5
    instance-of v5, v0, Ljava/lang/Boolean;

    if-eqz v5, :cond_7

    .line 27
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v5, 0x1

    if-eq v5, v0, :cond_6

    const-wide/16 v5, 0x0

    goto :goto_2

    .line 28
    :cond_6
    const-wide/16 v5, 0x1

    :goto_2
    invoke-virtual {v9, v5, v6, v11, v7}, Landroid/database/CursorWindow;->putLong(JII)Z

    move-result v0

    move/from16 v16, v0

    goto :goto_3

    .line 29
    :cond_7
    instance-of v5, v0, [B

    if-eqz v5, :cond_8

    .line 30
    check-cast v0, [B

    invoke-virtual {v9, v0, v11, v7}, Landroid/database/CursorWindow;->putBlob([BII)Z

    move-result v0

    move/from16 v16, v0

    goto :goto_3

    .line 31
    :cond_8
    instance-of v5, v0, Ljava/lang/Double;

    if-eqz v5, :cond_9

    .line 32
    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-virtual {v9, v5, v6, v11, v7}, Landroid/database/CursorWindow;->putDouble(DII)Z

    move-result v0

    move/from16 v16, v0

    goto :goto_3

    .line 33
    :cond_9
    instance-of v5, v0, Ljava/lang/Float;

    if-eqz v5, :cond_a

    .line 34
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v5, v0

    invoke-virtual {v9, v5, v6, v11, v7}, Landroid/database/CursorWindow;->putDouble(DII)Z

    move-result v0

    move/from16 v16, v0

    .line 19
    :goto_3
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, v18

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    goto/16 :goto_1

    .line 48
    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 43
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x20

    .line 49
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v2, v5

    new-instance v5, Ljava/lang/StringBuilder;

    .line 43
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 16
    :cond_b
    move-object/from16 v18, v0

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    goto :goto_4

    .line 40
    :cond_c
    move-object/from16 v18, v0

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    if-eqz v16, :cond_d

    const/4 v5, 0x0

    const/4 v12, 0x0

    goto :goto_5

    .line 34
    :cond_d
    :goto_4
    if-nez v12, :cond_e

    .line 42
    nop

    .line 35
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3f

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-virtual {v9}, Landroid/database/CursorWindow;->freeLastRow()V

    new-instance v0, Landroid/database/CursorWindow;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 37
    const/4 v5, 0x0

    :try_start_3
    invoke-direct {v0, v5}, Landroid/database/CursorWindow;-><init>(Z)V

    .line 38
    invoke-virtual {v0, v11}, Landroid/database/CursorWindow;->setStartPosition(I)V

    .line 39
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/common/data/DataHolder$Builder;->zab()[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    invoke-virtual {v0, v6}, Landroid/database/CursorWindow;->setNumColumns(I)Z

    .line 40
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, -0x1

    move-object v9, v0

    const/4 v12, 0x1

    :goto_5
    const/16 v17, 0x1

    add-int/lit8 v11, v11, 0x1

    move v7, v5

    move-object/from16 v0, v18

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    goto/16 :goto_0

    .line 34
    :cond_e
    const/4 v5, 0x0

    const-string v0, "Could not add the value to a new CursorWindow. The size of value may be larger than what a CursorWindow can handle."

    new-instance v1, Lcom/google/android/gms/common/data/zac;

    .line 42
    invoke-direct {v1, v0}, Lcom/google/android/gms/common/data/zac;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    .line 41
    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    const/4 v5, 0x0

    goto :goto_6

    :catch_2
    move-exception v0

    move v5, v7

    .line 47
    :goto_6
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v7, v5

    :goto_7
    if-ge v7, v1, :cond_f

    .line 48
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/CursorWindow;

    invoke-virtual {v2}, Landroid/database/CursorWindow;->close()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 49
    :cond_f
    throw v0

    .line 41
    :cond_10
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/database/CursorWindow;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/database/CursorWindow;

    return-object v0
.end method

.method private final zaf(Ljava/lang/String;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zab:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->isClosed()Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    if-ltz p2, :cond_0

    iget p1, p0, Lcom/google/android/gms/common/data/DataHolder;->zad:I

    if-ge p2, p1, :cond_0

    .line 5
    return-void

    :cond_0
    new-instance p1, Landroid/database/CursorIndexOutOfBoundsException;

    iget v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zad:I

    invoke-direct {p1, p2, v0}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(II)V

    throw p1

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 4
    const-string p2, "Buffer is closed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "No such column: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 1
    nop

    .end local p0    # "this":Lcom/google/android/gms/common/data/DataHolder;
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zae:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zae:Z

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->zag:[Landroid/database/CursorWindow;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 2
    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/database/CursorWindow;->close()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final finalize()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    const-string v0, ")"

    const-string v1, "Internal data leak within a DataBuffer object detected!  Be sure to explicitly call release() on all DataBuffer extending objects when you are done with them. (internal object: "

    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/gms/common/data/DataHolder;->zaj:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/common/data/DataHolder;->zag:[Landroid/database/CursorWindow;

    array-length v2, v2

    if-lez v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    const-string v2, "DataBuffer"

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit16 v4, v4, 0xb2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    .line 4
    :catchall_0
    move-exception v0

    .line 5
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 6
    throw v0
.end method

.method public getBoolean(Ljava/lang/String;II)Z
    .locals 2
    .param p1, "column"    # Ljava/lang/String;
    .param p2, "row"    # I
    .param p3, "windowIndex"    # I

    .line 1
    nop

    .end local p0    # "this":Lcom/google/android/gms/common/data/DataHolder;
    .end local p1    # "column":Ljava/lang/String;
    .end local p2    # "row":I
    .end local p3    # "windowIndex":I
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->zaf(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zag:[Landroid/database/CursorWindow;

    .line 2
    aget-object p3, v0, p3

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zab:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p3, p2, p1}, Landroid/database/CursorWindow;->getLong(II)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    const-wide/16 v0, 0x1

    cmp-long p1, p1, v0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getByteArray(Ljava/lang/String;II)[B
    .locals 1
    .param p1, "column"    # Ljava/lang/String;
    .param p2, "row"    # I
    .param p3, "windowIndex"    # I

    .line 1
    nop

    .end local p0    # "this":Lcom/google/android/gms/common/data/DataHolder;
    .end local p1    # "column":Ljava/lang/String;
    .end local p2    # "row":I
    .end local p3    # "windowIndex":I
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->zaf(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zag:[Landroid/database/CursorWindow;

    .line 2
    aget-object p3, v0, p3

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zab:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p3, p2, p1}, Landroid/database/CursorWindow;->getBlob(II)[B

    move-result-object p1

    return-object p1
.end method

.method public getCount()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zad:I

    return v0
.end method

.method public getInteger(Ljava/lang/String;II)I
    .locals 1
    .param p1, "column"    # Ljava/lang/String;
    .param p2, "row"    # I
    .param p3, "windowIndex"    # I

    .line 1
    nop

    .end local p0    # "this":Lcom/google/android/gms/common/data/DataHolder;
    .end local p1    # "column":Ljava/lang/String;
    .end local p2    # "row":I
    .end local p3    # "windowIndex":I
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->zaf(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zag:[Landroid/database/CursorWindow;

    .line 2
    aget-object p3, v0, p3

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zab:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p3, p2, p1}, Landroid/database/CursorWindow;->getInt(II)I

    move-result p1

    return p1
.end method

.method public getLong(Ljava/lang/String;II)J
    .locals 1
    .param p1, "column"    # Ljava/lang/String;
    .param p2, "row"    # I
    .param p3, "windowIndex"    # I

    .line 1
    nop

    .end local p0    # "this":Lcom/google/android/gms/common/data/DataHolder;
    .end local p1    # "column":Ljava/lang/String;
    .end local p2    # "row":I
    .end local p3    # "windowIndex":I
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->zaf(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zag:[Landroid/database/CursorWindow;

    .line 2
    aget-object p3, v0, p3

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zab:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p3, p2, p1}, Landroid/database/CursorWindow;->getLong(II)J

    move-result-wide p1

    return-wide p1
.end method

.method public getMetadata()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zai:Landroid/os/Bundle;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zah:I

    return v0
.end method

.method public getString(Ljava/lang/String;II)Ljava/lang/String;
    .locals 1
    .param p1, "column"    # Ljava/lang/String;
    .param p2, "row"    # I
    .param p3, "windowIndex"    # I

    .line 1
    nop

    .end local p0    # "this":Lcom/google/android/gms/common/data/DataHolder;
    .end local p1    # "column":Ljava/lang/String;
    .end local p2    # "row":I
    .end local p3    # "windowIndex":I
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->zaf(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zag:[Landroid/database/CursorWindow;

    .line 2
    aget-object p3, v0, p3

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zab:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p3, p2, p1}, Landroid/database/CursorWindow;->getString(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getWindowIndex(I)I
    .locals 3
    .param p1, "row"    # I

    .line 1
    nop

    .end local p0    # "this":Lcom/google/android/gms/common/data/DataHolder;
    .end local p1    # "row":I
    const/4 v0, 0x0

    if-ltz p1, :cond_0

    iget v1, p0, Lcom/google/android/gms/common/data/DataHolder;->zad:I

    if-ge p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 3
    :cond_0
    move v1, v0

    .line 1
    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->zac:[I

    .line 2
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 3
    aget v1, v1, v0

    if-ge p1, v1, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-ne v0, v2, :cond_3

    add-int/lit8 v0, v0, -0x1

    :cond_3
    return v0
.end method

.method public hasColumn(Ljava/lang/String;)Z
    .locals 1
    .param p1, "column"    # Ljava/lang/String;

    .line 1
    nop

    .end local p0    # "this":Lcom/google/android/gms/common/data/DataHolder;
    .end local p1    # "column":Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zab:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public hasNull(Ljava/lang/String;II)Z
    .locals 1
    .param p1, "column"    # Ljava/lang/String;
    .param p2, "row"    # I
    .param p3, "windowIndex"    # I

    .line 1
    nop

    .end local p0    # "this":Lcom/google/android/gms/common/data/DataHolder;
    .end local p1    # "column":Ljava/lang/String;
    .end local p2    # "row":I
    .end local p3    # "windowIndex":I
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->zaf(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zag:[Landroid/database/CursorWindow;

    .line 2
    aget-object p3, v0, p3

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zab:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p3, p2, p1}, Landroid/database/CursorWindow;->isNull(II)Z

    move-result p1

    return p1
.end method

.method public isClosed()Z
    .locals 1

    .line 1
    nop

    .end local p0    # "this":Lcom/google/android/gms/common/data/DataHolder;
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zae:Z

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zaf:[Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v1

    .line 2
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v2, v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeStringArray(Landroid/os/Parcel;I[Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zag:[Landroid/database/CursorWindow;

    .line 3
    const/4 v4, 0x2

    invoke-static {p1, v4, v0, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedArray(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->getStatusCode()I

    move-result v0

    .line 4
    const/4 v4, 0x3

    invoke-static {p1, v4, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->getMetadata()Landroid/os/Bundle;

    move-result-object v0

    .line 5
    const/4 v4, 0x4

    invoke-static {p1, v4, v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBundle(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    iget v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zaa:I

    .line 6
    const/16 v3, 0x3e8

    invoke-static {p1, v3, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 7
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    and-int/lit8 p1, p2, 0x1

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    :cond_0
    return-void
.end method

.method public final zaa()V
    .locals 5

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zab:Landroid/os/Bundle;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/common/data/DataHolder;->zaf:[Ljava/lang/String;

    .line 2
    array-length v3, v2

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/common/data/DataHolder;->zab:Landroid/os/Bundle;

    .line 3
    aget-object v2, v2, v1

    invoke-virtual {v3, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->zag:[Landroid/database/CursorWindow;

    .line 4
    array-length v2, v1

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/google/android/gms/common/data/DataHolder;->zac:[I

    move v2, v0

    .line 5
    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/common/data/DataHolder;->zac:[I

    .line 6
    aput v2, v3, v0

    .line 7
    aget-object v3, v1, v0

    invoke-virtual {v3}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v3

    sub-int v3, v2, v3

    .line 8
    aget-object v4, v1, v0

    invoke-virtual {v4}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v4

    sub-int/2addr v4, v3

    add-int/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iput v2, p0, Lcom/google/android/gms/common/data/DataHolder;->zad:I

    return-void
.end method

.method public final zab(Ljava/lang/String;II)F
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->zaf(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zag:[Landroid/database/CursorWindow;

    .line 2
    aget-object p3, v0, p3

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zab:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p3, p2, p1}, Landroid/database/CursorWindow;->getFloat(II)F

    move-result p1

    return p1
.end method

.method public final zac(Ljava/lang/String;II)D
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->zaf(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zag:[Landroid/database/CursorWindow;

    .line 2
    aget-object p3, v0, p3

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zab:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p3, p2, p1}, Landroid/database/CursorWindow;->getDouble(II)D

    move-result-wide p1

    return-wide p1
.end method

.method public final zad(Ljava/lang/String;IILandroid/database/CharArrayBuffer;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->zaf(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zag:[Landroid/database/CursorWindow;

    .line 2
    aget-object p3, v0, p3

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zab:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p3, p2, p1, p4}, Landroid/database/CursorWindow;->copyStringToBuffer(IILandroid/database/CharArrayBuffer;)V

    return-void
.end method
