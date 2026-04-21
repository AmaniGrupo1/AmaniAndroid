.class public final Landroidx/compose/ui/autofill/FillableData_androidKt;
.super Ljava/lang/Object;
.source "FillableData.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u0014\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004\u001a\u0014\u0010\u0005\u001a\u0004\u0018\u00010\u0001*\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0007\u001a\u0014\u0010\u0008\u001a\u0004\u0018\u00010\u0001*\u00020\u00022\u0006\u0010\t\u001a\u00020\n\u001a\u0014\u0010\u000b\u001a\u0004\u0018\u00010\u0001*\u00020\u00022\u0006\u0010\u000c\u001a\u00020\r\u001a\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u0001*\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u0010\u001a\u000c\u0010\u0011\u001a\u0004\u0018\u00010\u0010*\u00020\u0001\u00a8\u0006\u0012"
    }
    d2 = {
        "createFromText",
        "Landroidx/compose/ui/autofill/FillableData;",
        "Landroidx/compose/ui/autofill/FillableData$Companion;",
        "textValue",
        "",
        "createFromBoolean",
        "booleanValue",
        "",
        "createFromListIndex",
        "listIndexValue",
        "",
        "createFromDateMillis",
        "dateMillisValue",
        "",
        "createFromAutofillValue",
        "autofillValue",
        "Landroid/view/autofill/AutofillValue;",
        "toAutofillValue",
        "ui"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final createFromAutofillValue(Landroidx/compose/ui/autofill/FillableData$Companion;Landroid/view/autofill/AutofillValue;)Landroidx/compose/ui/autofill/FillableData;
    .locals 2
    .param p0, "$this$createFromAutofillValue"    # Landroidx/compose/ui/autofill/FillableData$Companion;
    .param p1, "autofillValue"    # Landroid/view/autofill/AutofillValue;

    .line 133
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 134
    new-instance v0, Landroidx/compose/ui/autofill/AndroidFillableData;

    invoke-direct {v0, p1}, Landroidx/compose/ui/autofill/AndroidFillableData;-><init>(Landroid/view/autofill/AutofillValue;)V

    check-cast v0, Landroidx/compose/ui/autofill/FillableData;

    goto :goto_0

    .line 135
    :cond_0
    const/4 v0, 0x0

    .line 133
    :goto_0
    return-object v0
.end method

.method public static final createFromBoolean(Landroidx/compose/ui/autofill/FillableData$Companion;Z)Landroidx/compose/ui/autofill/FillableData;
    .locals 2
    .param p0, "$this$createFromBoolean"    # Landroidx/compose/ui/autofill/FillableData$Companion;
    .param p1, "booleanValue"    # Z

    .line 85
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 86
    new-instance v0, Landroidx/compose/ui/autofill/AndroidFillableData;

    invoke-static {p1}, Landroid/view/autofill/AutofillValue;->forToggle(Z)Landroid/view/autofill/AutofillValue;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/compose/ui/autofill/AndroidFillableData;-><init>(Landroid/view/autofill/AutofillValue;)V

    check-cast v0, Landroidx/compose/ui/autofill/FillableData;

    goto :goto_0

    .line 87
    :cond_0
    const/4 v0, 0x0

    .line 85
    :goto_0
    return-object v0
.end method

.method public static final createFromDateMillis(Landroidx/compose/ui/autofill/FillableData$Companion;J)Landroidx/compose/ui/autofill/FillableData;
    .locals 2
    .param p0, "$this$createFromDateMillis"    # Landroidx/compose/ui/autofill/FillableData$Companion;
    .param p1, "dateMillisValue"    # J

    .line 120
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 121
    new-instance v0, Landroidx/compose/ui/autofill/AndroidFillableData;

    invoke-static {p1, p2}, Landroid/view/autofill/AutofillValue;->forDate(J)Landroid/view/autofill/AutofillValue;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/compose/ui/autofill/AndroidFillableData;-><init>(Landroid/view/autofill/AutofillValue;)V

    check-cast v0, Landroidx/compose/ui/autofill/FillableData;

    goto :goto_0

    .line 122
    :cond_0
    const/4 v0, 0x0

    .line 120
    :goto_0
    return-object v0
.end method

.method public static final createFromListIndex(Landroidx/compose/ui/autofill/FillableData$Companion;I)Landroidx/compose/ui/autofill/FillableData;
    .locals 2
    .param p0, "$this$createFromListIndex"    # Landroidx/compose/ui/autofill/FillableData$Companion;
    .param p1, "listIndexValue"    # I

    .line 103
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 104
    new-instance v0, Landroidx/compose/ui/autofill/AndroidFillableData;

    invoke-static {p1}, Landroid/view/autofill/AutofillValue;->forList(I)Landroid/view/autofill/AutofillValue;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/compose/ui/autofill/AndroidFillableData;-><init>(Landroid/view/autofill/AutofillValue;)V

    check-cast v0, Landroidx/compose/ui/autofill/FillableData;

    goto :goto_0

    .line 105
    :cond_0
    const/4 v0, 0x0

    .line 103
    :goto_0
    return-object v0
.end method

.method public static final createFromText(Landroidx/compose/ui/autofill/FillableData$Companion;Ljava/lang/CharSequence;)Landroidx/compose/ui/autofill/FillableData;
    .locals 2
    .param p0, "$this$createFromText"    # Landroidx/compose/ui/autofill/FillableData$Companion;
    .param p1, "textValue"    # Ljava/lang/CharSequence;

    .line 69
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 70
    new-instance v0, Landroidx/compose/ui/autofill/AndroidFillableData;

    invoke-static {p1}, Landroid/view/autofill/AutofillValue;->forText(Ljava/lang/CharSequence;)Landroid/view/autofill/AutofillValue;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/compose/ui/autofill/AndroidFillableData;-><init>(Landroid/view/autofill/AutofillValue;)V

    check-cast v0, Landroidx/compose/ui/autofill/FillableData;

    goto :goto_0

    .line 71
    :cond_0
    const/4 v0, 0x0

    .line 69
    :goto_0
    return-object v0
.end method

.method public static final toAutofillValue(Landroidx/compose/ui/autofill/FillableData;)Landroid/view/autofill/AutofillValue;
    .locals 3
    .param p0, "$this$toAutofillValue"    # Landroidx/compose/ui/autofill/FillableData;

    .line 145
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    .line 146
    instance-of v0, p0, Landroidx/compose/ui/autofill/AndroidFillableData;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/autofill/AndroidFillableData;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/compose/ui/autofill/AndroidFillableData;->getAutofillValue$ui()Landroid/view/autofill/AutofillValue;

    move-result-object v2

    goto :goto_1

    .line 147
    :cond_1
    nop

    .line 145
    :cond_2
    :goto_1
    return-object v2
.end method
