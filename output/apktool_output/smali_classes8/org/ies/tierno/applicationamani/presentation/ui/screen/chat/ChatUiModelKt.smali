.class public final Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatUiModelKt;
.super Ljava/lang/Object;
.source "ChatUiModel.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChatUiModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatUiModel.kt\norg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatUiModelKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,68:1\n1068#2:69\n*S KotlinDebug\n*F\n+ 1 ChatUiModel.kt\norg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatUiModelKt\n*L\n26#1:69\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u001a\"\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00012\u0006\u0010\u0005\u001a\u00020\u0006\u001a\u000e\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\t\u001a\u000e\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u000c\u00a8\u0006\r"
    }
    d2 = {
        "buildChatItems",
        "",
        "Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListItem;",
        "messages",
        "Lorg/ies/tierno/applicationamani/domain/models/Message;",
        "currentUserId",
        "",
        "formatTimestamp",
        "timestamp",
        "",
        "formatDuration",
        "seconds",
        "",
        "app"
    }
    k = 0x2
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final buildChatItems(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .param p0, "messages"    # Ljava/util/List;
    .param p1, "currentUserId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/domain/models/Message;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListItem;",
            ">;"
        }
    .end annotation

    const-string v0, "messages"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentUserId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 26
    :cond_0
    move-object v0, p0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$sortedBy\\1":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 69
    .local v1, "$i$f$sortedBy\\1\\26":I
    new-instance v2, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatUiModelKt$buildChatItems$$inlined$sortedBy$1;

    invoke-direct {v2}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatUiModelKt$buildChatItems$$inlined$sortedBy$1;-><init>()V

    check-cast v2, Ljava/util/Comparator;

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    .line 26
    .end local v0    # "$this$sortedBy\\1":Ljava/lang/Iterable;
    .end local v1    # "$i$f$sortedBy\\1\\26":I
    nop

    .line 27
    .local v0, "sortedAsc":Ljava/util/List;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 28
    .local v1, "items":Ljava/util/List;
    const/4 v2, 0x0

    .line 30
    .local v2, "lastDate":Lj$/time/LocalDate;
    const/4 v3, 0x0

    .local v3, "i":I
    move-object v4, v0

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    :goto_0
    if-ge v3, v4, :cond_8

    .line 31
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/ies/tierno/applicationamani/domain/models/Message;

    .line 32
    .local v5, "msg":Lorg/ies/tierno/applicationamani/domain/models/Message;
    invoke-virtual {v5}, Lorg/ies/tierno/applicationamani/domain/models/Message;->getTimestamp()J

    move-result-wide v6

    invoke-static {v6, v7}, Lj$/time/Instant;->ofEpochMilli(J)Lj$/time/Instant;

    move-result-object v6

    .line 33
    invoke-static {}, Lj$/time/ZoneId;->systemDefault()Lj$/time/ZoneId;

    move-result-object v7

    invoke-virtual {v6, v7}, Lj$/time/Instant;->atZone(Lj$/time/ZoneId;)Lj$/time/ZonedDateTime;

    move-result-object v6

    .line 34
    invoke-virtual {v6}, Lj$/time/ZonedDateTime;->toLocalDate()Lj$/time/LocalDate;

    move-result-object v6

    .line 32
    nop

    .line 36
    .local v6, "messageDate":Lj$/time/LocalDate;
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 37
    move-object v2, v6

    .line 38
    nop

    .line 39
    invoke-static {}, Lj$/time/LocalDate;->now()Lj$/time/LocalDate;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "Hoy"

    goto :goto_1

    .line 40
    :cond_1
    invoke-static {}, Lj$/time/LocalDate;->now()Lj$/time/LocalDate;

    move-result-object v7

    const-wide/16 v8, 0x1

    invoke-virtual {v7, v8, v9}, Lj$/time/LocalDate;->minusDays(J)Lj$/time/LocalDate;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "Ayer"

    goto :goto_1

    .line 41
    :cond_2
    nop

    .line 42
    const-string v7, "es"

    invoke-static {v7}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    const-string v8, "d MMM yyyy"

    invoke-static {v8, v7}, Lj$/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;Ljava/util/Locale;)Lj$/time/format/DateTimeFormatter;

    move-result-object v7

    .line 41
    invoke-virtual {v6, v7}, Lj$/time/LocalDate;->format(Lj$/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v7

    .line 38
    :goto_1
    nop

    .line 45
    .local v7, "label":Ljava/lang/String;
    new-instance v8, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListItem$DateSeparator;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v8, v7}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListItem$DateSeparator;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    .end local v7    # "label":Ljava/lang/String;
    :cond_3
    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v3, :cond_5

    add-int/lit8 v9, v3, -0x1

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/ies/tierno/applicationamani/domain/models/Message;

    invoke-virtual {v9}, Lorg/ies/tierno/applicationamani/domain/models/Message;->getSenderId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Lorg/ies/tierno/applicationamani/domain/models/Message;->getSenderId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    goto :goto_2

    :cond_4
    move v9, v7

    goto :goto_3

    :cond_5
    :goto_2
    move v9, v8

    .line 49
    .local v9, "isFirstInGroup":Z
    :goto_3
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v10

    if-eq v3, v10, :cond_6

    .line 50
    add-int/lit8 v10, v3, 0x1

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/ies/tierno/applicationamani/domain/models/Message;

    invoke-virtual {v10}, Lorg/ies/tierno/applicationamani/domain/models/Message;->getSenderId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5}, Lorg/ies/tierno/applicationamani/domain/models/Message;->getSenderId()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    :cond_6
    move v7, v8

    .line 49
    :cond_7
    nop

    .line 51
    .local v7, "isLastInGroup":Z
    new-instance v8, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListItem$MessageItem;

    invoke-direct {v8, v5, v9, v7}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListItem$MessageItem;-><init>(Lorg/ies/tierno/applicationamani/domain/models/Message;ZZ)V

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    .end local v5    # "msg":Lorg/ies/tierno/applicationamani/domain/models/Message;
    .end local v6    # "messageDate":Lj$/time/LocalDate;
    .end local v7    # "isLastInGroup":Z
    .end local v9    # "isFirstInGroup":Z
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 54
    .end local v3    # "i":I
    :cond_8
    move-object v3, v1

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->reversed(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method public static final formatDuration(I)Ljava/lang/String;
    .locals 4
    .param p0, "seconds"    # I

    .line 65
    div-int/lit8 v0, p0, 0x3c

    .line 66
    .local v0, "mins":I
    rem-int/lit8 v1, p0, 0x3c

    .line 67
    .local v1, "secs":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%d:%02d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "format(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2
.end method

.method public static final formatTimestamp(J)Ljava/lang/String;
    .locals 4
    .param p0, "timestamp"    # J

    .line 58
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 59
    :cond_0
    invoke-static {p0, p1}, Lj$/time/Instant;->ofEpochMilli(J)Lj$/time/Instant;

    move-result-object v0

    .line 60
    .local v0, "instant":Lj$/time/Instant;
    invoke-static {}, Lj$/time/ZoneId;->systemDefault()Lj$/time/ZoneId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj$/time/Instant;->atZone(Lj$/time/ZoneId;)Lj$/time/ZonedDateTime;

    move-result-object v1

    invoke-virtual {v1}, Lj$/time/ZonedDateTime;->toLocalTime()Lj$/time/LocalTime;

    move-result-object v1

    .line 61
    .local v1, "localTime":Lj$/time/LocalTime;
    const-string v2, "HH:mm"

    invoke-static {v2}, Lj$/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Lj$/time/format/DateTimeFormatter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lj$/time/LocalTime;->format(Lj$/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "format(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2
.end method
