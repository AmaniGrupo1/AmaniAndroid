.class public final Lorg/ies/tierno/applicationamani/utils/CalendarUtilsKt;
.super Ljava/lang/Object;
.source "CalendarUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0008\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u001aE\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00062\u0008\u0008\u0002\u0010\t\u001a\u00020\u00082\u0008\u0008\u0002\u0010\n\u001a\u00020\u0008H\u0007\u00a2\u0006\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Landroid/content/Context;",
        "context",
        "j$/time/LocalDate",
        "fecha",
        "j$/time/LocalTime",
        "hora",
        "",
        "duracionMinutos",
        "",
        "titulo",
        "descripcion",
        "",
        "enviarCitaAlCalendario",
        "(Landroid/content/Context;Lj$/time/LocalDate;Lj$/time/LocalTime;ILjava/lang/String;Ljava/lang/String;)V",
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
.method public static final enviarCitaAlCalendario(Landroid/content/Context;Lj$/time/LocalDate;Lj$/time/LocalTime;ILjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fecha"    # Lj$/time/LocalDate;
    .param p2, "hora"    # Lj$/time/LocalTime;
    .param p3, "duracionMinutos"    # I
    .param p4, "titulo"    # Ljava/lang/String;
    .param p5, "descripcion"    # Ljava/lang/String;

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fecha"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hora"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "titulo"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "descripcion"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p1, p2}, Lj$/time/LocalDate;->atTime(Lj$/time/LocalTime;)Lj$/time/LocalDateTime;

    move-result-object v0

    .line 36
    invoke-static {}, Lj$/time/ZoneId;->systemDefault()Lj$/time/ZoneId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj$/time/LocalDateTime;->atZone(Lj$/time/ZoneId;)Lj$/time/ZonedDateTime;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lj$/time/ZonedDateTime;->toInstant()Lj$/time/Instant;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lj$/time/Instant;->toEpochMilli()J

    move-result-wide v0

    .line 35
    nop

    .line 40
    .local v0, "inicio":J
    int-to-long v2, p3

    invoke-virtual {p2, v2, v3}, Lj$/time/LocalTime;->plusMinutes(J)Lj$/time/LocalTime;

    move-result-object v2

    invoke-virtual {p1, v2}, Lj$/time/LocalDate;->atTime(Lj$/time/LocalTime;)Lj$/time/LocalDateTime;

    move-result-object v2

    .line 41
    invoke-static {}, Lj$/time/ZoneId;->systemDefault()Lj$/time/ZoneId;

    move-result-object v3

    invoke-virtual {v2, v3}, Lj$/time/LocalDateTime;->atZone(Lj$/time/ZoneId;)Lj$/time/ZonedDateTime;

    move-result-object v2

    .line 42
    invoke-virtual {v2}, Lj$/time/ZonedDateTime;->toInstant()Lj$/time/Instant;

    move-result-object v2

    .line 43
    invoke-virtual {v2}, Lj$/time/Instant;->toEpochMilli()J

    move-result-wide v2

    .line 40
    nop

    .line 45
    .local v2, "fin":J
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.INSERT"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v5, v4

    .local v5, "$this$enviarCitaAlCalendario_u24lambda_u240\\1":Landroid/content/Intent;
    const/4 v6, 0x0

    .line 46
    .local v6, "$i$a$-apply-CalendarUtilsKt$enviarCitaAlCalendario$intent$1\\1\\45\\0":I
    sget-object v7, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 47
    const-string v7, "title"

    invoke-virtual {v5, v7, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    const-string v7, "description"

    invoke-virtual {v5, v7, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    const-string v7, "beginTime"

    invoke-virtual {v5, v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 50
    const-string v7, "endTime"

    invoke-virtual {v5, v7, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 51
    const-string v7, "availability"

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 52
    nop

    .line 45
    .end local v5    # "$this$enviarCitaAlCalendario_u24lambda_u240\\1":Landroid/content/Intent;
    .end local v6    # "$i$a$-apply-CalendarUtilsKt$enviarCitaAlCalendario$intent$1\\1\\45\\0":I
    nop

    .line 53
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 54
    return-void
.end method

.method public static synthetic enviarCitaAlCalendario$default(Landroid/content/Context;Lj$/time/LocalDate;Lj$/time/LocalTime;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 6

    .line 26
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_0

    .line 31
    const/16 p3, 0x3c

    move v3, p3

    goto :goto_0

    .line 26
    :cond_0
    move v3, p3

    :goto_0
    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_1

    .line 32
    const-string p4, "Cita \u2013 Amani"

    move-object v4, p4

    goto :goto_1

    .line 26
    :cond_1
    move-object v4, p4

    :goto_1
    and-int/lit8 p3, p6, 0x20

    if-eqz p3, :cond_2

    .line 33
    const-string p5, ""

    move-object v5, p5

    goto :goto_2

    .line 26
    :cond_2
    move-object v5, p5

    :goto_2
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lorg/ies/tierno/applicationamani/utils/CalendarUtilsKt;->enviarCitaAlCalendario(Landroid/content/Context;Lj$/time/LocalDate;Lj$/time/LocalTime;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
