.class final Landroidx/compose/material/TextFieldKt$TextField$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TextField.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/TextFieldKt;->TextField(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material/TextFieldColors;Landroidx/compose/runtime/Composer;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Lkotlin/jvm/functions/Function2<",
        "-",
        "Landroidx/compose/runtime/Composer;",
        "-",
        "Ljava/lang/Integer;",
        "+",
        "Lkotlin/Unit;",
        ">;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0011\u0010\u0002\u001a\r\u0012\u0004\u0012\u00020\u00010\u0003\u00a2\u0006\u0002\u0008\u0004H\u000b\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "innerTextField",
        "Lkotlin/Function0;",
        "Landroidx/compose/runtime/Composable;",
        "invoke",
        "(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $colors:Landroidx/compose/material/TextFieldColors;

.field final synthetic $enabled:Z

.field final synthetic $interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field final synthetic $isError:Z

.field final synthetic $label:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $leadingIcon:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $placeholder:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $shape:Landroidx/compose/ui/graphics/Shape;

.field final synthetic $singleLine:Z

.field final synthetic $trailingIcon:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $value:Ljava/lang/String;

.field final synthetic $visualTransformation:Landroidx/compose/ui/text/input/VisualTransformation;


# direct methods
.method constructor <init>(Ljava/lang/String;ZZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/interaction/MutableInteractionSource;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material/TextFieldColors;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ",
            "Landroidx/compose/ui/text/input/VisualTransformation;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Z",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/graphics/Shape;",
            "Landroidx/compose/material/TextFieldColors;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material/TextFieldKt$TextField$1;->$value:Ljava/lang/String;

    iput-boolean p2, p0, Landroidx/compose/material/TextFieldKt$TextField$1;->$enabled:Z

    iput-boolean p3, p0, Landroidx/compose/material/TextFieldKt$TextField$1;->$singleLine:Z

    iput-object p4, p0, Landroidx/compose/material/TextFieldKt$TextField$1;->$visualTransformation:Landroidx/compose/ui/text/input/VisualTransformation;

    iput-object p5, p0, Landroidx/compose/material/TextFieldKt$TextField$1;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-boolean p6, p0, Landroidx/compose/material/TextFieldKt$TextField$1;->$isError:Z

    iput-object p7, p0, Landroidx/compose/material/TextFieldKt$TextField$1;->$label:Lkotlin/jvm/functions/Function2;

    iput-object p8, p0, Landroidx/compose/material/TextFieldKt$TextField$1;->$placeholder:Lkotlin/jvm/functions/Function2;

    iput-object p9, p0, Landroidx/compose/material/TextFieldKt$TextField$1;->$leadingIcon:Lkotlin/jvm/functions/Function2;

    iput-object p10, p0, Landroidx/compose/material/TextFieldKt$TextField$1;->$trailingIcon:Lkotlin/jvm/functions/Function2;

    iput-object p11, p0, Landroidx/compose/material/TextFieldKt$TextField$1;->$shape:Landroidx/compose/ui/graphics/Shape;

    iput-object p12, p0, Landroidx/compose/material/TextFieldKt$TextField$1;->$colors:Landroidx/compose/material/TextFieldColors;

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;
    .param p3, "p3"    # Ljava/lang/Object;

    .line 212
    move-object v0, p1

    check-cast v0, Lkotlin/jvm/functions/Function2;

    move-object v1, p2

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object v2, p3

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroidx/compose/material/TextFieldKt$TextField$1;->invoke(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 21
    .param p1, "innerTextField"    # Lkotlin/jvm/functions/Function2;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "C213@10762L570:TextField.kt#jmzs0o"

    invoke-static {v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v2, p3

    .local v2, "$dirty":I
    and-int/lit8 v3, p3, 0x6

    if-nez v3, :cond_1

    move-object/from16 v3, p1

    invoke-interface {v1, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v2, v4

    goto :goto_1

    :cond_1
    move-object/from16 v3, p1

    .line 214
    :goto_1
    and-int/lit8 v4, v2, 0x13

    const/16 v5, 0x12

    if-ne v4, v5, :cond_3

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_2

    .line 228
    :cond_2
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v20, v2

    goto :goto_3

    .line 214
    :cond_3
    :goto_2
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, -0x1

    const-string/jumbo v5, "androidx.compose.material.TextField.<anonymous> (TextField.kt:213)"

    const v6, 0x3affac62

    invoke-static {v6, v2, v4, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_4
    sget-object v1, Landroidx/compose/material/TextFieldDefaults;->INSTANCE:Landroidx/compose/material/TextFieldDefaults;

    .line 215
    move v4, v2

    .end local v2    # "$dirty":I
    .local v4, "$dirty":I
    iget-object v2, v0, Landroidx/compose/material/TextFieldKt$TextField$1;->$value:Ljava/lang/String;

    .line 217
    nop

    .line 223
    move v5, v4

    .end local v4    # "$dirty":I
    .local v5, "$dirty":I
    iget-boolean v4, v0, Landroidx/compose/material/TextFieldKt$TextField$1;->$enabled:Z

    .line 222
    move v6, v5

    .end local v5    # "$dirty":I
    .local v6, "$dirty":I
    iget-boolean v5, v0, Landroidx/compose/material/TextFieldKt$TextField$1;->$singleLine:Z

    .line 216
    move v7, v6

    .end local v6    # "$dirty":I
    .local v7, "$dirty":I
    iget-object v6, v0, Landroidx/compose/material/TextFieldKt$TextField$1;->$visualTransformation:Landroidx/compose/ui/text/input/VisualTransformation;

    .line 225
    iget-object v8, v0, Landroidx/compose/material/TextFieldKt$TextField$1;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    check-cast v8, Landroidx/compose/foundation/interaction/InteractionSource;

    .line 224
    move v9, v7

    move-object v7, v8

    .end local v7    # "$dirty":I
    .local v9, "$dirty":I
    iget-boolean v8, v0, Landroidx/compose/material/TextFieldKt$TextField$1;->$isError:Z

    .line 219
    move v10, v9

    .end local v9    # "$dirty":I
    .local v10, "$dirty":I
    iget-object v9, v0, Landroidx/compose/material/TextFieldKt$TextField$1;->$label:Lkotlin/jvm/functions/Function2;

    .line 218
    move v11, v10

    .end local v10    # "$dirty":I
    .local v11, "$dirty":I
    iget-object v10, v0, Landroidx/compose/material/TextFieldKt$TextField$1;->$placeholder:Lkotlin/jvm/functions/Function2;

    .line 220
    move v12, v11

    .end local v11    # "$dirty":I
    .local v12, "$dirty":I
    iget-object v11, v0, Landroidx/compose/material/TextFieldKt$TextField$1;->$leadingIcon:Lkotlin/jvm/functions/Function2;

    .line 221
    move v13, v12

    .end local v12    # "$dirty":I
    .local v13, "$dirty":I
    iget-object v12, v0, Landroidx/compose/material/TextFieldKt$TextField$1;->$trailingIcon:Lkotlin/jvm/functions/Function2;

    .line 226
    move v14, v13

    .end local v13    # "$dirty":I
    .local v14, "$dirty":I
    iget-object v13, v0, Landroidx/compose/material/TextFieldKt$TextField$1;->$shape:Landroidx/compose/ui/graphics/Shape;

    .line 227
    move v15, v14

    .end local v14    # "$dirty":I
    .local v15, "$dirty":I
    iget-object v14, v0, Landroidx/compose/material/TextFieldKt$TextField$1;->$colors:Landroidx/compose/material/TextFieldColors;

    shl-int/lit8 v16, v15, 0x3

    and-int/lit8 v17, v16, 0x70

    .line 214
    move/from16 v16, v15

    .end local v15    # "$dirty":I
    .local v16, "$dirty":I
    const/4 v15, 0x0

    const/16 v18, 0x6000

    const/16 v19, 0x2000

    move/from16 v20, v16

    move-object/from16 v16, p2

    .end local v16    # "$dirty":I
    .local v20, "$dirty":I
    invoke-virtual/range {v1 .. v19}, Landroidx/compose/material/TextFieldDefaults;->TextFieldDecorationBox(Ljava/lang/String;Lkotlin/jvm/functions/Function2;ZZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/interaction/InteractionSource;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material/TextFieldColors;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 229
    :cond_5
    :goto_3
    return-void
.end method
