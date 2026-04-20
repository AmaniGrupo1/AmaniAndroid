package androidx.compose.foundation.text;

import androidx.compose.foundation.text.modifiers.SelectableTextAnnotatedStringElement;
import androidx.compose.foundation.text.modifiers.SelectionController;
import androidx.compose.foundation.text.modifiers.TextAnnotatedStringElement;
import androidx.compose.foundation.text.modifiers.TextAnnotatedStringNode;
import androidx.compose.foundation.text.modifiers.TextAnnotatedStringNodeKt;
import androidx.compose.foundation.text.modifiers.TextStringSimpleElement;
import androidx.compose.foundation.text.selection.SelectionColors;
import androidx.compose.foundation.text.selection.SelectionRegistrar;
import androidx.compose.foundation.text.selection.SelectionRegistrarKt;
import androidx.compose.foundation.text.selection.TextSelectionColorsKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.runtime.saveable.SaverKt;
import androidx.compose.runtime.saveable.SaverScope;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.ColorProducer;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.Placeholder;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.IntOffset;
import androidx.media3.common.C;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.profileinstaller.ProfileVerifier;
import com.google.firebase.database.core.ValidationPath;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BasicText.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000ª\u0001\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u001a\u0083\u0001\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\u0016\b\u0002\u0010\b\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\t2\b\b\u0002\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u00102\b\b\u0002\u0010\u0011\u001a\u00020\u00102\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00132\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0007¢\u0006\u0004\b\u0016\u0010\u0017\u001a\u0099\u0001\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00182\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\u0016\b\u0002\u0010\b\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\t2\b\b\u0002\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u00102\b\b\u0002\u0010\u0011\u001a\u00020\u00102\u0014\b\u0002\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u001b0\u001a2\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00132\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0007¢\u0006\u0004\b\u001c\u0010\u001d\u001aw\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\u0016\b\u0002\u0010\b\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\t2\b\b\u0002\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u00102\b\b\u0002\u0010\u0011\u001a\u00020\u00102\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0007¢\u0006\u0004\b\u001e\u0010\u001f\u001a\u008d\u0001\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00182\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\u0016\b\u0002\u0010\b\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\t2\b\b\u0002\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u00102\b\b\u0002\u0010\u0011\u001a\u00020\u00102\u0014\b\u0002\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u001b0\u001a2\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0007¢\u0006\u0004\b\u0016\u0010 \u001aa\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\u0016\b\u0002\u0010\b\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\t2\b\b\u0002\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u0010H\u0007¢\u0006\u0004\b!\u0010\"\u001aw\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00182\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\u0016\b\u0002\u0010\b\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\t2\b\b\u0002\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u00102\u0014\b\u0002\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u001b0\u001aH\u0007¢\u0006\u0004\b#\u0010$\u001ak\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\u0016\b\u0002\u0010\b\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\t2\b\b\u0002\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u00102\b\b\u0002\u0010\u0011\u001a\u00020\u0010H\u0007¢\u0006\u0004\b#\u0010%\u001a\u0081\u0001\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00182\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\u0016\b\u0002\u0010\b\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\t2\b\b\u0002\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u00102\b\b\u0002\u0010\u0011\u001a\u00020\u00102\u0014\b\u0002\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u001b0\u001aH\u0007¢\u0006\u0004\b\u001e\u0010&\u001a\u001e\u0010'\u001a\u000e\u0012\u0004\u0012\u00020)\u0012\u0004\u0012\u00020)0(2\b\u0010*\u001a\u0004\u0018\u00010+H\u0002\u001a@\u0010,\u001a\u001e\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020/\u0012\f\u0012\n\u0012\u0004\u0012\u000201\u0018\u0001000.\u0018\u00010-2\f\u00102\u001a\b\u0012\u0004\u0012\u0002030-2\f\u00104\u001a\b\u0012\u0004\u0012\u00020\u000e00H\u0002\u001aÉ\u0001\u00105\u001a\u00020\u0005*\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u00182\u0006\u0010\u0006\u001a\u00020\u00072\u0014\u0010\b\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\t2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u00106\u001a\u0002072\u0014\u00108\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020:09\u0018\u00010-2\u001c\u0010;\u001a\u0018\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010<0-\u0012\u0004\u0012\u00020\u0001\u0018\u00010\t2\b\u0010=\u001a\u0004\u0018\u00010>2\b\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0014\u0010?\u001a\u0010\u0012\u0004\u0012\u00020@\u0012\u0004\u0012\u00020\u0001\u0018\u00010\t2\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0002¢\u0006\u0004\bA\u0010B\u001a·\u0001\u0010C\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u00182\u0014\u0010\b\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\t2\u0006\u0010D\u001a\u00020\u000e2\u0014\b\u0002\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u001b0\u001a2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u00106\u001a\u0002072\b\u0010=\u001a\u0004\u0018\u00010>2\b\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0014\u0010?\u001a\u0010\u0012\u0004\u0012\u00020@\u0012\u0004\u0012\u00020\u0001\u0018\u00010\t2\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0003¢\u0006\u0004\bE\u0010F¨\u0006G²\u0006\n\u0010H\u001a\u00020\u0018X\u008a\u008e\u0002"}, d2 = {"BasicText", "", "text", "", "modifier", "Landroidx/compose/ui/Modifier;", "style", "Landroidx/compose/ui/text/TextStyle;", "onTextLayout", "Lkotlin/Function1;", "Landroidx/compose/ui/text/TextLayoutResult;", "overflow", "Landroidx/compose/ui/text/style/TextOverflow;", "softWrap", "", "maxLines", "", "minLines", TtmlNode.ATTR_TTS_COLOR, "Landroidx/compose/ui/graphics/ColorProducer;", "autoSize", "Landroidx/compose/foundation/text/TextAutoSize;", "BasicText-RWo7tUw", "(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/foundation/text/TextAutoSize;Landroidx/compose/runtime/Composer;II)V", "Landroidx/compose/ui/text/AnnotatedString;", "inlineContent", "", "Landroidx/compose/foundation/text/InlineTextContent;", "BasicText-CL7eQgs", "(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILjava/util/Map;Landroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/foundation/text/TextAutoSize;Landroidx/compose/runtime/Composer;III)V", "BasicText-VhcvRP8", "(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V", "(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILjava/util/Map;Landroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V", "BasicText-BpD7jsM", "(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZILandroidx/compose/runtime/Composer;II)V", "BasicText-4YKlhWE", "(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZILjava/util/Map;Landroidx/compose/runtime/Composer;II)V", "(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILandroidx/compose/runtime/Composer;II)V", "(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILjava/util/Map;Landroidx/compose/runtime/Composer;II)V", "selectionIdSaver", "Landroidx/compose/runtime/saveable/Saver;", "", "selectionRegistrar", "Landroidx/compose/foundation/text/selection/SelectionRegistrar;", "measureWithTextRangeMeasureConstraints", "", "Lkotlin/Pair;", "Landroidx/compose/ui/layout/Placeable;", "Lkotlin/Function0;", "Landroidx/compose/ui/unit/IntOffset;", "measurables", "Landroidx/compose/ui/layout/Measurable;", "shouldMeasureLinks", "textModifier", "fontFamilyResolver", "Landroidx/compose/ui/text/font/FontFamily$Resolver;", "placeholders", "Landroidx/compose/ui/text/AnnotatedString$Range;", "Landroidx/compose/ui/text/Placeholder;", "onPlaceholderLayout", "Landroidx/compose/ui/geometry/Rect;", "selectionController", "Landroidx/compose/foundation/text/modifiers/SelectionController;", "onShowTranslation", "Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$TextSubstitutionValue;", "textModifier-CL7eQgs", "(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILandroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/modifiers/SelectionController;Landroidx/compose/ui/graphics/ColorProducer;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/TextAutoSize;)Landroidx/compose/ui/Modifier;", "LayoutWithLinksAndInlineContent", "hasInlineContent", "LayoutWithLinksAndInlineContent-11Od_4g", "(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/AnnotatedString;Lkotlin/jvm/functions/Function1;ZLjava/util/Map;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/text/font/FontFamily$Resolver;Landroidx/compose/foundation/text/modifiers/SelectionController;Landroidx/compose/ui/graphics/ColorProducer;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/TextAutoSize;Landroidx/compose/runtime/Composer;III)V", "foundation", "displayedText"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class BasicTextKt {
    static final Unit BasicText_4YKlhWE$lambda$0(AnnotatedString annotatedString, Modifier modifier, TextStyle textStyle, Function1 function1, int i, boolean z, int i2, Map map, int i3, int i4, Composer composer, int i5) {
        m1150BasicText4YKlhWE(annotatedString, modifier, textStyle, function1, i, z, i2, map, composer, RecomposeScopeImplKt.updateChangedFlags(i3 | 1), i4);
        return Unit.INSTANCE;
    }

    static final Unit BasicText_4YKlhWE$lambda$1(String str, Modifier modifier, TextStyle textStyle, Function1 function1, int i, boolean z, int i2, int i3, int i4, int i5, Composer composer, int i6) {
        m1151BasicText4YKlhWE(str, modifier, textStyle, function1, i, z, i2, i3, composer, RecomposeScopeImplKt.updateChangedFlags(i4 | 1), i5);
        return Unit.INSTANCE;
    }

    static final Unit BasicText_BpD7jsM$lambda$0(String str, Modifier modifier, TextStyle textStyle, Function1 function1, int i, boolean z, int i2, int i3, int i4, Composer composer, int i5) {
        m1152BasicTextBpD7jsM(str, modifier, textStyle, function1, i, z, i2, composer, RecomposeScopeImplKt.updateChangedFlags(i3 | 1), i4);
        return Unit.INSTANCE;
    }

    static final Unit BasicText_CL7eQgs$lambda$6(AnnotatedString annotatedString, Modifier modifier, TextStyle textStyle, Function1 function1, int i, boolean z, int i2, int i3, Map map, ColorProducer colorProducer, TextAutoSize textAutoSize, int i4, int i5, int i6, Composer composer, int i7) {
        m1153BasicTextCL7eQgs(annotatedString, modifier, textStyle, function1, i, z, i2, i3, map, colorProducer, textAutoSize, composer, RecomposeScopeImplKt.updateChangedFlags(i4 | 1), RecomposeScopeImplKt.updateChangedFlags(i5), i6);
        return Unit.INSTANCE;
    }

    static final Unit BasicText_RWo7tUw$lambda$2(String str, Modifier modifier, TextStyle textStyle, Function1 function1, int i, boolean z, int i2, int i3, ColorProducer colorProducer, TextAutoSize textAutoSize, int i4, int i5, Composer composer, int i6) {
        m1155BasicTextRWo7tUw(str, modifier, textStyle, (Function1<? super TextLayoutResult, Unit>) function1, i, z, i2, i3, colorProducer, textAutoSize, composer, RecomposeScopeImplKt.updateChangedFlags(i4 | 1), i5);
        return Unit.INSTANCE;
    }

    static final Unit BasicText_RWo7tUw$lambda$3(AnnotatedString annotatedString, Modifier modifier, TextStyle textStyle, Function1 function1, int i, boolean z, int i2, int i3, Map map, ColorProducer colorProducer, int i4, int i5, Composer composer, int i6) {
        m1154BasicTextRWo7tUw(annotatedString, modifier, textStyle, function1, i, z, i2, i3, map, colorProducer, composer, RecomposeScopeImplKt.updateChangedFlags(i4 | 1), i5);
        return Unit.INSTANCE;
    }

    static final Unit BasicText_VhcvRP8$lambda$0(String str, Modifier modifier, TextStyle textStyle, Function1 function1, int i, boolean z, int i2, int i3, ColorProducer colorProducer, int i4, int i5, Composer composer, int i6) {
        m1157BasicTextVhcvRP8(str, modifier, textStyle, function1, i, z, i2, i3, colorProducer, composer, RecomposeScopeImplKt.updateChangedFlags(i4 | 1), i5);
        return Unit.INSTANCE;
    }

    static final Unit BasicText_VhcvRP8$lambda$1(AnnotatedString annotatedString, Modifier modifier, TextStyle textStyle, Function1 function1, int i, boolean z, int i2, int i3, Map map, int i4, int i5, Composer composer, int i6) {
        m1156BasicTextVhcvRP8(annotatedString, modifier, textStyle, function1, i, z, i2, i3, map, composer, RecomposeScopeImplKt.updateChangedFlags(i4 | 1), i5);
        return Unit.INSTANCE;
    }

    static final Unit LayoutWithLinksAndInlineContent_11Od_4g$lambda$10(Modifier modifier, AnnotatedString annotatedString, Function1 function1, boolean z, Map map, TextStyle textStyle, int i, boolean z2, int i2, int i3, FontFamily.Resolver resolver, SelectionController selectionController, ColorProducer colorProducer, Function1 function12, TextAutoSize textAutoSize, int i4, int i5, int i6, Composer composer, int i7) {
        m1158LayoutWithLinksAndInlineContent11Od_4g(modifier, annotatedString, function1, z, map, textStyle, i, z2, i2, i3, resolver, selectionController, colorProducer, function12, textAutoSize, composer, RecomposeScopeImplKt.updateChangedFlags(i4 | 1), RecomposeScopeImplKt.updateChangedFlags(i5), i6);
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:155:0x0286  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x0295  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x03cc  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x03d8  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x03dc  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x042c  */
    /* JADX INFO: renamed from: BasicText-RWo7tUw, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void m1155BasicTextRWo7tUw(final String text, Modifier modifier, TextStyle style, Function1<? super TextLayoutResult, Unit> function1, int i, boolean softWrap, int maxLines, int minLines, ColorProducer color, TextAutoSize autoSize, Composer $composer, final int $changed, final int i2) {
        Modifier modifier2;
        TextStyle style2;
        Function1<? super TextLayoutResult, Unit> function12;
        int i3;
        boolean z;
        int i4;
        int i5;
        final int maxLines2;
        final ColorProducer color2;
        final Modifier modifier3;
        final TextStyle style3;
        final Function1<? super TextLayoutResult, Unit> function13;
        final int minLines2;
        final TextAutoSize autoSize2;
        final boolean softWrap2;
        final int i6;
        Function1<? super TextLayoutResult, Unit> function14;
        int iM7415getClipgIe3tQ8;
        boolean softWrap3;
        int maxLines3;
        int minLines3;
        ColorProducer color3;
        TextAutoSize autoSize3;
        int maxLines4;
        int minLines4;
        int $dirty;
        SelectionRegistrar selectionRegistrar;
        SelectionController selectionController;
        TextStyle style4;
        Modifier modifier4;
        Modifier finalModifier;
        boolean invalid$iv;
        long selectableId;
        Composer $composer2 = $composer.startRestartGroup(-1040751001);
        ComposerKt.sourceInformation($composer2, "C(BasicText)N(text,modifier,style,onTextLayout,overflow:c#ui.text.style.TextOverflow,softWrap,maxLines,minLines,color,autoSize)104@5458L7,119@6129L7,121@6142L94,154@7432L41:BasicText.kt#423gt5");
        int $dirty2 = $changed;
        if (($changed & 6) == 0) {
            $dirty2 |= $composer2.changed(text) ? 4 : 2;
        }
        int i7 = i2 & 2;
        if (i7 != 0) {
            $dirty2 |= 48;
            modifier2 = modifier;
        } else if (($changed & 48) == 0) {
            modifier2 = modifier;
            $dirty2 |= $composer2.changed(modifier2) ? 32 : 16;
        } else {
            modifier2 = modifier;
        }
        int i8 = i2 & 4;
        if (i8 != 0) {
            $dirty2 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            style2 = style;
        } else if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            style2 = style;
            $dirty2 |= $composer2.changed(style2) ? 256 : 128;
        } else {
            style2 = style;
        }
        int i9 = i2 & 8;
        if (i9 != 0) {
            $dirty2 |= 3072;
            function12 = function1;
        } else if (($changed & 3072) == 0) {
            function12 = function1;
            $dirty2 |= $composer2.changedInstance(function12) ? 2048 : 1024;
        } else {
            function12 = function1;
        }
        int i10 = i2 & 16;
        if (i10 != 0) {
            $dirty2 |= 24576;
            i3 = i;
        } else if (($changed & 24576) == 0) {
            i3 = i;
            $dirty2 |= $composer2.changed(i3) ? 16384 : 8192;
        } else {
            i3 = i;
        }
        int i11 = i2 & 32;
        if (i11 != 0) {
            $dirty2 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            z = softWrap;
        } else if (($changed & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            z = softWrap;
            $dirty2 |= $composer2.changed(z) ? 131072 : 65536;
        } else {
            z = softWrap;
        }
        int i12 = i2 & 64;
        if (i12 != 0) {
            $dirty2 |= 1572864;
        } else if (($changed & 1572864) == 0) {
            $dirty2 |= $composer2.changed(maxLines) ? 1048576 : 524288;
        }
        int i13 = i2 & 128;
        if (i13 != 0) {
            $dirty2 |= 12582912;
            i4 = i13;
        } else if (($changed & 12582912) == 0) {
            i4 = i13;
            $dirty2 |= $composer2.changed(minLines) ? 8388608 : 4194304;
        } else {
            i4 = i13;
        }
        int i14 = i2 & 256;
        if (i14 != 0) {
            $dirty2 |= 100663296;
            i5 = i14;
        } else if (($changed & 100663296) == 0) {
            i5 = i14;
            $dirty2 |= $composer2.changedInstance(color) ? 67108864 : 33554432;
        } else {
            i5 = i14;
        }
        int minLines5 = i2 & 512;
        int i15 = 805306368;
        if (minLines5 != 0) {
            $dirty2 |= i15;
        } else if (($changed & 805306368) == 0) {
            i15 = ($changed & 1073741824) == 0 ? $composer2.changed(autoSize) : $composer2.changedInstance(autoSize) ? C.BUFFER_FLAG_LAST_SAMPLE : 268435456;
            $dirty2 |= i15;
        }
        if ($composer2.shouldExecute(($dirty2 & 306783379) != 306783378, $dirty2 & 1)) {
            if (i7 != 0) {
                modifier2 = Modifier.INSTANCE;
            }
            if (i8 != 0) {
                style2 = TextStyle.INSTANCE.getDefault();
            }
            if (i9 == 0) {
                function14 = function12;
            } else {
                function14 = null;
            }
            if (i10 == 0) {
                iM7415getClipgIe3tQ8 = i3;
            } else {
                iM7415getClipgIe3tQ8 = TextOverflow.INSTANCE.m7415getClipgIe3tQ8();
            }
            if (i11 == 0) {
                softWrap3 = z;
            } else {
                softWrap3 = true;
            }
            if (i12 == 0) {
                maxLines3 = maxLines;
            } else {
                maxLines3 = Integer.MAX_VALUE;
            }
            if (i4 == 0) {
                minLines3 = minLines;
            } else {
                minLines3 = 1;
            }
            if (i5 == 0) {
                color3 = color;
            } else {
                color3 = null;
            }
            if (minLines5 == 0) {
                autoSize3 = autoSize;
            } else {
                autoSize3 = null;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1040751001, $dirty2, -1, "androidx.compose.foundation.text.BasicText (BasicText.kt:102)");
            }
            HeightInLinesModifierKt.validateMinMaxLines(minLines3, maxLines3);
            ProvidableCompositionLocal<SelectionRegistrar> localSelectionRegistrar = SelectionRegistrarKt.getLocalSelectionRegistrar();
            ComposerKt.sourceInformationMarkerStart($composer2, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
            Object objConsume = $composer2.consume(localSelectionRegistrar);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            final SelectionRegistrar selectionRegistrar2 = (SelectionRegistrar) objConsume;
            if (selectionRegistrar2 != null) {
                $composer2.startReplaceGroup(356423075);
                ComposerKt.sourceInformation($composer2, "107@5606L7,109@5760L77,109@5677L160,112@5850L180");
                ProvidableCompositionLocal<SelectionColors> localTextSelectionColors = TextSelectionColorsKt.getLocalTextSelectionColors();
                ComposerKt.sourceInformationMarkerStart($composer2, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
                Object objConsume2 = $composer2.consume(localTextSelectionColors);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                long backgroundSelectionColor = ((SelectionColors) objConsume2).getSelectionBackgroundColor();
                Object[] objArr = {selectionRegistrar2};
                Saver<Long, Long> saverSelectionIdSaver = selectionIdSaver(selectionRegistrar2);
                maxLines4 = maxLines3;
                ComposerKt.sourceInformationMarkerStart($composer2, 565693588, "CC(remember):BasicText.kt#9igjgp");
                boolean invalid$iv2 = $composer2.changedInstance(selectionRegistrar2);
                Object value$iv = $composer2.rememberedValue();
                if (!invalid$iv2) {
                    minLines4 = minLines3;
                    if (value$iv == Composer.INSTANCE.getEmpty()) {
                    }
                    ComposerKt.sourceInformationMarkerEnd($composer2);
                    long selectableId2 = ((Number) RememberSaveableKt.m4138rememberSaveable(objArr, (Saver) saverSelectionIdSaver, (Function0) value$iv, $composer2, 0)).longValue();
                    ComposerKt.sourceInformationMarkerStart($composer2, 565696571, "CC(remember):BasicText.kt#9igjgp");
                    invalid$iv = $composer2.changed(selectableId2) | $composer2.changed(selectionRegistrar2) | $composer2.changed(backgroundSelectionColor);
                    $dirty = $dirty2;
                    Object it$iv = $composer2.rememberedValue();
                    if (invalid$iv) {
                        selectableId = selectableId2;
                        if (it$iv != Composer.INSTANCE.getEmpty()) {
                            selectionRegistrar = selectionRegistrar2;
                        }
                        ComposerKt.sourceInformationMarkerEnd($composer2);
                        $composer2.endReplaceGroup();
                        selectionController = (SelectionController) it$iv;
                    } else {
                        selectableId = selectableId2;
                    }
                    Object value$iv2 = new SelectionController(selectableId, selectionRegistrar2, backgroundSelectionColor, null, 8, null);
                    selectionRegistrar = selectionRegistrar2;
                    $composer2.updateRememberedValue(value$iv2);
                    it$iv = value$iv2;
                    ComposerKt.sourceInformationMarkerEnd($composer2);
                    $composer2.endReplaceGroup();
                    selectionController = (SelectionController) it$iv;
                } else {
                    minLines4 = minLines3;
                }
                value$iv = new Function0() { // from class: androidx.compose.foundation.text.BasicTextKt$$ExternalSyntheticLambda3
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return Long.valueOf(selectionRegistrar2.nextSelectableId());
                    }
                };
                $composer2.updateRememberedValue(value$iv);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                long selectableId22 = ((Number) RememberSaveableKt.m4138rememberSaveable(objArr, (Saver) saverSelectionIdSaver, (Function0) value$iv, $composer2, 0)).longValue();
                ComposerKt.sourceInformationMarkerStart($composer2, 565696571, "CC(remember):BasicText.kt#9igjgp");
                invalid$iv = $composer2.changed(selectableId22) | $composer2.changed(selectionRegistrar2) | $composer2.changed(backgroundSelectionColor);
                $dirty = $dirty2;
                Object it$iv2 = $composer2.rememberedValue();
                if (invalid$iv) {
                }
                Object value$iv22 = new SelectionController(selectableId, selectionRegistrar2, backgroundSelectionColor, null, 8, null);
                selectionRegistrar = selectionRegistrar2;
                $composer2.updateRememberedValue(value$iv22);
                it$iv2 = value$iv22;
                ComposerKt.sourceInformationMarkerEnd($composer2);
                $composer2.endReplaceGroup();
                selectionController = (SelectionController) it$iv2;
            } else {
                maxLines4 = maxLines3;
                minLines4 = minLines3;
                $dirty = $dirty2;
                selectionRegistrar = selectionRegistrar2;
                $composer2.startReplaceGroup(356914239);
                $composer2.endReplaceGroup();
                selectionController = null;
            }
            ProvidableCompositionLocal<FontFamily.Resolver> localFontFamilyResolver = CompositionLocalsKt.getLocalFontFamilyResolver();
            ComposerKt.sourceInformationMarkerStart($composer2, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
            Object objConsume3 = $composer2.consume(localFontFamilyResolver);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            FontFamily.Resolver fontFamilyResolver = (FontFamily.Resolver) objConsume3;
            BasicText_androidKt.BackgroundTextMeasurement(text, style2, fontFamilyResolver, $composer2, ($dirty & 14) | (($dirty >> 3) & 112));
            if (selectionController != null || function14 != null || autoSize3 != null) {
                style4 = style2;
                $composer2.startReplaceGroup(357232113);
                ComposerKt.sourceInformation($composer2, "133@6715L7");
                AnnotatedString annotatedString = new AnnotatedString(text, null, 2, null);
                ProvidableCompositionLocal<FontFamily.Resolver> localFontFamilyResolver2 = CompositionLocalsKt.getLocalFontFamilyResolver();
                ComposerKt.sourceInformationMarkerStart($composer2, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
                Object objConsume4 = $composer2.consume(localFontFamilyResolver2);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                modifier4 = modifier2;
                finalModifier = m1159textModifierCL7eQgs(modifier4, annotatedString, style4, function14, iM7415getClipgIe3tQ8, softWrap3, maxLines4, minLines4, (FontFamily.Resolver) objConsume4, null, null, selectionController, color3, null, autoSize3);
                $composer2.endReplaceGroup();
                MeasurePolicy measurePolicy$iv = EmptyMeasurePolicy.INSTANCE;
                Modifier modifier$iv = finalModifier;
                ComposerKt.sourceInformationMarkerStart($composer2, 544976794, "CC(Layout)P(1)124@5019L27,127@5185L389:Layout.kt#80mrfh");
                int compositeKeyHash$iv = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer2, 0));
                Modifier materialized$iv = ComposedModifierKt.materializeModifier($composer2, modifier$iv);
                CompositionLocalMap localMap$iv = $composer2.getCurrentCompositionLocalMap();
                Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
                ComposerKt.sourceInformationMarkerStart($composer2, 1405779621, "CC(ReusableComposeNode)N(factory,update):Composables.kt#9igjgp");
                if (!($composer2.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                $composer2.startReusableNode();
                if (!$composer2.getInserting()) {
                    $composer2.createNode(constructor);
                } else {
                    $composer2.useNode();
                }
                Composer $this$Layout_u24lambda_u241$iv = Updater.m3967constructorimpl($composer2);
                Updater.m3975setimpl($this$Layout_u24lambda_u241$iv, measurePolicy$iv, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m3975setimpl($this$Layout_u24lambda_u241$iv, localMap$iv, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                Updater.m3973reconcileimpl($this$Layout_u24lambda_u241$iv, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
                Updater.m3975setimpl($this$Layout_u24lambda_u241$iv, materialized$iv, ComposeUiNode.INSTANCE.getSetModifier());
                Updater.m3971initimpl($this$Layout_u24lambda_u241$iv, Integer.valueOf(compositeKeyHash$iv), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
                $composer2.endNode();
                ComposerKt.sourceInformationMarkerEnd($composer2);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier3 = modifier4;
                style3 = style4;
                function13 = function14;
                i6 = iM7415getClipgIe3tQ8;
                softWrap2 = softWrap3;
                maxLines2 = maxLines4;
                minLines2 = minLines4;
                color2 = color3;
                autoSize2 = autoSize3;
            } else {
                $composer2.startReplaceGroup(357875859);
                $composer2.endReplaceGroup();
                TextStyle style5 = style2;
                style4 = style5;
                finalModifier = modifier2.then(new TextStringSimpleElement(text, style5, fontFamilyResolver, iM7415getClipgIe3tQ8, softWrap3, maxLines4, minLines4, color3, null));
                modifier4 = modifier2;
                MeasurePolicy measurePolicy$iv2 = EmptyMeasurePolicy.INSTANCE;
                Modifier modifier$iv2 = finalModifier;
                ComposerKt.sourceInformationMarkerStart($composer2, 544976794, "CC(Layout)P(1)124@5019L27,127@5185L389:Layout.kt#80mrfh");
                int compositeKeyHash$iv2 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer2, 0));
                Modifier materialized$iv2 = ComposedModifierKt.materializeModifier($composer2, modifier$iv2);
                CompositionLocalMap localMap$iv2 = $composer2.getCurrentCompositionLocalMap();
                Function0<ComposeUiNode> constructor2 = ComposeUiNode.INSTANCE.getConstructor();
                ComposerKt.sourceInformationMarkerStart($composer2, 1405779621, "CC(ReusableComposeNode)N(factory,update):Composables.kt#9igjgp");
                if (!($composer2.getApplier() instanceof Applier)) {
                }
                $composer2.startReusableNode();
                if (!$composer2.getInserting()) {
                }
                Composer $this$Layout_u24lambda_u241$iv2 = Updater.m3967constructorimpl($composer2);
                Updater.m3975setimpl($this$Layout_u24lambda_u241$iv2, measurePolicy$iv2, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m3975setimpl($this$Layout_u24lambda_u241$iv2, localMap$iv2, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                Updater.m3973reconcileimpl($this$Layout_u24lambda_u241$iv2, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
                Updater.m3975setimpl($this$Layout_u24lambda_u241$iv2, materialized$iv2, ComposeUiNode.INSTANCE.getSetModifier());
                Updater.m3971initimpl($this$Layout_u24lambda_u241$iv2, Integer.valueOf(compositeKeyHash$iv2), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
                $composer2.endNode();
                ComposerKt.sourceInformationMarkerEnd($composer2);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                if (ComposerKt.isTraceInProgress()) {
                }
                modifier3 = modifier4;
                style3 = style4;
                function13 = function14;
                i6 = iM7415getClipgIe3tQ8;
                softWrap2 = softWrap3;
                maxLines2 = maxLines4;
                minLines2 = minLines4;
                color2 = color3;
                autoSize2 = autoSize3;
            }
        } else {
            $composer2.skipToGroupEnd();
            maxLines2 = maxLines;
            color2 = color;
            modifier3 = modifier2;
            style3 = style2;
            function13 = function12;
            minLines2 = minLines;
            autoSize2 = autoSize;
            softWrap2 = z;
            i6 = i3;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: androidx.compose.foundation.text.BasicTextKt$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return BasicTextKt.BasicText_RWo7tUw$lambda$2(text, modifier3, style3, function13, i6, softWrap2, maxLines2, minLines2, color2, autoSize2, $changed, i2, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:175:0x02ca  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x02dd  */
    /* JADX INFO: renamed from: BasicText-CL7eQgs, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void m1153BasicTextCL7eQgs(AnnotatedString text, Modifier modifier, TextStyle style, Function1<? super TextLayoutResult, Unit> function1, int i, boolean softWrap, int maxLines, int minLines, Map<String, InlineTextContent> map, ColorProducer color, TextAutoSize autoSize, Composer $composer, final int $changed, final int $changed1, final int i2) {
        Modifier modifier2;
        TextStyle textStyle;
        Function1<? super TextLayoutResult, Unit> function12;
        int i3;
        int i4;
        int i5;
        int i6;
        final AnnotatedString annotatedString;
        Composer $composer2;
        final boolean softWrap2;
        final int minLines2;
        final Map<String, InlineTextContent> map2;
        final TextAutoSize autoSize2;
        final int i7;
        final Modifier modifier3;
        final TextStyle style2;
        final Function1<? super TextLayoutResult, Unit> function13;
        final int minLines3;
        final ColorProducer color2;
        Modifier.Companion modifier4;
        TextStyle style3;
        Function1<? super TextLayoutResult, Unit> function14;
        int iM7415getClipgIe3tQ8;
        boolean softWrap3;
        int maxLines2;
        int minLines4;
        int minLines5;
        Map<String, InlineTextContent> mapEmptyMap;
        ColorProducer color3;
        TextAutoSize autoSize3;
        Function1<? super TextLayoutResult, Unit> function15;
        int $dirty;
        int maxLines3;
        SelectionController selectionController;
        ColorProducer color4;
        Function1<? super TextLayoutResult, Unit> function16;
        int i8;
        boolean softWrap4;
        Function0<ComposeUiNode> function0;
        boolean invalid$iv;
        SelectionRegistrar selectionRegistrar;
        Composer $composer3 = $composer.startRestartGroup(-1343466571);
        ComposerKt.sourceInformation($composer3, "C(BasicText)N(text,modifier,style,onTextLayout,overflow:c#ui.text.style.TextOverflow,softWrap,maxLines,minLines,inlineContent,color,autoSize)202@10280L7,219@11037L7:BasicText.kt#423gt5");
        int $dirty2 = $changed;
        int $dirty1 = $changed1;
        if (($changed & 6) == 0) {
            $dirty2 |= $composer3.changed(text) ? 4 : 2;
        }
        int i9 = i2 & 2;
        if (i9 != 0) {
            $dirty2 |= 48;
            modifier2 = modifier;
        } else if (($changed & 48) == 0) {
            modifier2 = modifier;
            $dirty2 |= $composer3.changed(modifier2) ? 32 : 16;
        } else {
            modifier2 = modifier;
        }
        int i10 = i2 & 4;
        if (i10 != 0) {
            $dirty2 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            textStyle = style;
        } else if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            textStyle = style;
            $dirty2 |= $composer3.changed(textStyle) ? 256 : 128;
        } else {
            textStyle = style;
        }
        int i11 = i2 & 8;
        if (i11 != 0) {
            $dirty2 |= 3072;
            function12 = function1;
        } else if (($changed & 3072) == 0) {
            function12 = function1;
            $dirty2 |= $composer3.changedInstance(function12) ? 2048 : 1024;
        } else {
            function12 = function1;
        }
        int i12 = i2 & 16;
        if (i12 != 0) {
            $dirty2 |= 24576;
            i3 = i;
        } else if (($changed & 24576) == 0) {
            i3 = i;
            $dirty2 |= $composer3.changed(i3) ? 16384 : 8192;
        } else {
            i3 = i;
        }
        int i13 = i2 & 32;
        if (i13 != 0) {
            $dirty2 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        } else if (($changed & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            $dirty2 |= $composer3.changed(softWrap) ? 131072 : 65536;
        }
        int i14 = i2 & 64;
        if (i14 != 0) {
            $dirty2 |= 1572864;
        } else if (($changed & 1572864) == 0) {
            $dirty2 |= $composer3.changed(maxLines) ? 1048576 : 524288;
        }
        int i15 = i2 & 128;
        if (i15 != 0) {
            $dirty2 |= 12582912;
            i4 = i15;
        } else if (($changed & 12582912) == 0) {
            i4 = i15;
            $dirty2 |= $composer3.changed(minLines) ? 8388608 : 4194304;
        } else {
            i4 = i15;
        }
        int i16 = i2 & 256;
        if (i16 != 0) {
            $dirty2 |= 100663296;
            i5 = i16;
        } else if (($changed & 100663296) == 0) {
            i5 = i16;
            $dirty2 |= $composer3.changedInstance(map) ? 67108864 : 33554432;
        } else {
            i5 = i16;
        }
        int i17 = i2 & 512;
        if (i17 != 0) {
            $dirty2 |= 805306368;
            i6 = i17;
        } else if (($changed & 805306368) == 0) {
            i6 = i17;
            $dirty2 |= $composer3.changedInstance(color) ? C.BUFFER_FLAG_LAST_SAMPLE : 268435456;
        } else {
            i6 = i17;
        }
        int i18 = i2 & 1024;
        if (i18 != 0) {
            $dirty1 |= 6;
        } else if (($changed1 & 6) == 0) {
            $dirty1 |= ($changed1 & 8) == 0 ? $composer3.changed(autoSize) : $composer3.changedInstance(autoSize) ? 4 : 2;
        }
        if (!$composer3.shouldExecute((($dirty2 & 306783379) == 306783378 && ($dirty1 & 3) == 2) ? false : true, $dirty2 & 1)) {
            annotatedString = text;
            $composer2 = $composer3;
            $composer2.skipToGroupEnd();
            softWrap2 = softWrap;
            minLines2 = maxLines;
            map2 = map;
            autoSize2 = autoSize;
            i7 = i3;
            modifier3 = modifier2;
            style2 = textStyle;
            function13 = function12;
            minLines3 = minLines;
            color2 = color;
        } else {
            if (i9 != 0) {
                modifier4 = Modifier.INSTANCE;
            } else {
                modifier4 = modifier2;
            }
            if (i10 == 0) {
                style3 = textStyle;
            } else {
                style3 = TextStyle.INSTANCE.getDefault();
            }
            if (i11 == 0) {
                function14 = function12;
            } else {
                function14 = null;
            }
            if (i12 == 0) {
                iM7415getClipgIe3tQ8 = i3;
            } else {
                iM7415getClipgIe3tQ8 = TextOverflow.INSTANCE.m7415getClipgIe3tQ8();
            }
            if (i13 == 0) {
                softWrap3 = softWrap;
            } else {
                softWrap3 = true;
            }
            if (i14 == 0) {
                maxLines2 = maxLines;
            } else {
                maxLines2 = Integer.MAX_VALUE;
            }
            if (i4 == 0) {
                minLines4 = iM7415getClipgIe3tQ8;
                minLines5 = minLines;
            } else {
                minLines4 = iM7415getClipgIe3tQ8;
                minLines5 = 1;
            }
            if (i5 == 0) {
                mapEmptyMap = map;
            } else {
                mapEmptyMap = MapsKt.emptyMap();
            }
            if (i6 == 0) {
                color3 = color;
            } else {
                color3 = null;
            }
            if (i18 == 0) {
                autoSize3 = autoSize;
            } else {
                autoSize3 = null;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1343466571, $dirty2, $dirty1, "androidx.compose.foundation.text.BasicText (BasicText.kt:200)");
            }
            HeightInLinesModifierKt.validateMinMaxLines(minLines5, maxLines2);
            ProvidableCompositionLocal<SelectionRegistrar> localSelectionRegistrar = SelectionRegistrarKt.getLocalSelectionRegistrar();
            Modifier modifier5 = modifier4;
            TextStyle style4 = style3;
            ComposerKt.sourceInformationMarkerStart($composer3, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
            Object objConsume = $composer3.consume(localSelectionRegistrar);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            final SelectionRegistrar selectionRegistrar2 = (SelectionRegistrar) objConsume;
            if (selectionRegistrar2 != null) {
                $composer3.startReplaceGroup(1588268245);
                ComposerKt.sourceInformation($composer3, "205@10428L7,207@10582L77,207@10499L160,210@10672L180");
                ProvidableCompositionLocal<SelectionColors> localTextSelectionColors = TextSelectionColorsKt.getLocalTextSelectionColors();
                ComposerKt.sourceInformationMarkerStart($composer3, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
                Object objConsume2 = $composer3.consume(localTextSelectionColors);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                maxLines3 = maxLines2;
                long backgroundSelectionColor = ((SelectionColors) objConsume2).getSelectionBackgroundColor();
                Object[] objArr = {selectionRegistrar2};
                Saver<Long, Long> saverSelectionIdSaver = selectionIdSaver(selectionRegistrar2);
                function15 = function14;
                ComposerKt.sourceInformationMarkerStart($composer3, 1713809186, "CC(remember):BasicText.kt#9igjgp");
                boolean invalid$iv2 = $composer3.changedInstance(selectionRegistrar2);
                Object value$iv = $composer3.rememberedValue();
                if (!invalid$iv2) {
                    $dirty = $dirty2;
                    if (value$iv == Composer.INSTANCE.getEmpty()) {
                    }
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    long selectableId = ((Number) RememberSaveableKt.m4138rememberSaveable(objArr, (Saver) saverSelectionIdSaver, (Function0) value$iv, $composer3, 0)).longValue();
                    ComposerKt.sourceInformationMarkerStart($composer3, 1713812169, "CC(remember):BasicText.kt#9igjgp");
                    invalid$iv = $composer3.changed(selectableId) | $composer3.changed(selectionRegistrar2) | $composer3.changed(backgroundSelectionColor);
                    Object it$iv = $composer3.rememberedValue();
                    if (invalid$iv) {
                        selectionRegistrar = selectionRegistrar2;
                        if (it$iv == Composer.INSTANCE.getEmpty()) {
                        }
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        $composer3.endReplaceGroup();
                        selectionController = (SelectionController) it$iv;
                    } else {
                        selectionRegistrar = selectionRegistrar2;
                    }
                    Object value$iv2 = new SelectionController(selectableId, selectionRegistrar, backgroundSelectionColor, null, 8, null);
                    $composer3.updateRememberedValue(value$iv2);
                    it$iv = value$iv2;
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    $composer3.endReplaceGroup();
                    selectionController = (SelectionController) it$iv;
                } else {
                    $dirty = $dirty2;
                }
                value$iv = new Function0() { // from class: androidx.compose.foundation.text.BasicTextKt$$ExternalSyntheticLambda8
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return Long.valueOf(selectionRegistrar2.nextSelectableId());
                    }
                };
                $composer3.updateRememberedValue(value$iv);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                long selectableId2 = ((Number) RememberSaveableKt.m4138rememberSaveable(objArr, (Saver) saverSelectionIdSaver, (Function0) value$iv, $composer3, 0)).longValue();
                ComposerKt.sourceInformationMarkerStart($composer3, 1713812169, "CC(remember):BasicText.kt#9igjgp");
                invalid$iv = $composer3.changed(selectableId2) | $composer3.changed(selectionRegistrar2) | $composer3.changed(backgroundSelectionColor);
                Object it$iv2 = $composer3.rememberedValue();
                if (invalid$iv) {
                }
                Object value$iv22 = new SelectionController(selectableId2, selectionRegistrar, backgroundSelectionColor, null, 8, null);
                $composer3.updateRememberedValue(value$iv22);
                it$iv2 = value$iv22;
                ComposerKt.sourceInformationMarkerEnd($composer3);
                $composer3.endReplaceGroup();
                selectionController = (SelectionController) it$iv2;
            } else {
                function15 = function14;
                $dirty = $dirty2;
                maxLines3 = maxLines2;
                $composer3.startReplaceGroup(1588759409);
                $composer3.endReplaceGroup();
                selectionController = null;
            }
            boolean hasInlineContent = AnnotatedStringResolveInlineContentKt.hasInlineContent(text);
            boolean hasLinks = TextAnnotatedStringNodeKt.hasLinks(text);
            ProvidableCompositionLocal<FontFamily.Resolver> localFontFamilyResolver = CompositionLocalsKt.getLocalFontFamilyResolver();
            ComposerKt.sourceInformationMarkerStart($composer3, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
            Object objConsume3 = $composer3.consume(localFontFamilyResolver);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            FontFamily.Resolver fontFamilyResolver = (FontFamily.Resolver) objConsume3;
            if (!hasInlineContent && !hasLinks) {
                $composer3.startReplaceGroup(1589006262);
                ComposerKt.sourceInformation($composer3, "222@11096L174,230@11349L746");
                BasicText_androidKt.BackgroundTextMeasurement(text, style4, fontFamilyResolver, null, $composer3, ($dirty & 14) | 3072 | (($dirty >> 3) & 112));
                boolean softWrap5 = softWrap3;
                int i19 = minLines4;
                color4 = color3;
                annotatedString = text;
                Modifier modifier$iv = m1159textModifierCL7eQgs(modifier5, annotatedString, style4, function15, i19, softWrap5, maxLines3, minLines5, fontFamilyResolver, null, null, selectionController, color4, null, autoSize3);
                MeasurePolicy measurePolicy$iv = EmptyMeasurePolicy.INSTANCE;
                ComposerKt.sourceInformationMarkerStart($composer3, 544976794, "CC(Layout)P(1)124@5019L27,127@5185L389:Layout.kt#80mrfh");
                int compositeKeyHash$iv = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer3, 0));
                Modifier materialized$iv = ComposedModifierKt.materializeModifier($composer3, modifier$iv);
                CompositionLocalMap localMap$iv = $composer3.getCurrentCompositionLocalMap();
                Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
                ComposerKt.sourceInformationMarkerStart($composer3, 1405779621, "CC(ReusableComposeNode)N(factory,update):Composables.kt#9igjgp");
                if (!($composer3.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                $composer3.startReusableNode();
                if ($composer3.getInserting()) {
                    function0 = constructor;
                    $composer3.createNode(function0);
                } else {
                    function0 = constructor;
                    $composer3.useNode();
                }
                Composer $this$Layout_u24lambda_u241$iv = Updater.m3967constructorimpl($composer3);
                Updater.m3975setimpl($this$Layout_u24lambda_u241$iv, measurePolicy$iv, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m3975setimpl($this$Layout_u24lambda_u241$iv, localMap$iv, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                Updater.m3973reconcileimpl($this$Layout_u24lambda_u241$iv, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
                Updater.m3975setimpl($this$Layout_u24lambda_u241$iv, materialized$iv, ComposeUiNode.INSTANCE.getSetModifier());
                Updater.m3971initimpl($this$Layout_u24lambda_u241$iv, Integer.valueOf(compositeKeyHash$iv), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
                $composer3.endNode();
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                $composer3.endReplaceGroup();
                i8 = i19;
                $composer2 = $composer3;
                function16 = function15;
                softWrap4 = softWrap5;
            } else {
                annotatedString = text;
                int $dirty12 = $dirty1;
                boolean softWrap6 = softWrap3;
                int i20 = minLines4;
                SelectionController selectionController2 = selectionController;
                color4 = color3;
                int $dirty3 = $dirty;
                $composer3.startReplaceGroup(1590022070);
                ComposerKt.sourceInformation($composer3, "253@12268L39,269@12876L292,255@12317L895");
                ComposerKt.sourceInformationMarkerStart($composer3, 1713863100, "CC(remember):BasicText.kt#9igjgp");
                boolean invalid$iv3 = ($dirty3 & 14) == 4;
                Object it$iv3 = $composer3.rememberedValue();
                if (invalid$iv3 || it$iv3 == Composer.INSTANCE.getEmpty()) {
                    Object value$iv3 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(annotatedString, null, 2, null);
                    $composer3.updateRememberedValue(value$iv3);
                    it$iv3 = value$iv3;
                }
                final MutableState displayedText$delegate = (MutableState) it$iv3;
                ComposerKt.sourceInformationMarkerEnd($composer3);
                AnnotatedString annotatedStringBasicText_CL7eQgs$lambda$3 = BasicText_CL7eQgs$lambda$3(displayedText$delegate);
                ComposerKt.sourceInformationMarkerStart($composer3, 1713882809, "CC(remember):BasicText.kt#9igjgp");
                boolean invalid$iv4 = $composer3.changed(displayedText$delegate);
                Object it$iv4 = $composer3.rememberedValue();
                if (invalid$iv4 || it$iv4 == Composer.INSTANCE.getEmpty()) {
                    Object value$iv4 = new Function1() { // from class: androidx.compose.foundation.text.BasicTextKt$$ExternalSyntheticLambda9
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return BasicTextKt.BasicText_CL7eQgs$lambda$5$0(displayedText$delegate, (TextAnnotatedStringNode.TextSubstitutionValue) obj);
                        }
                    };
                    $composer3.updateRememberedValue(value$iv4);
                    it$iv4 = value$iv4;
                }
                ComposerKt.sourceInformationMarkerEnd($composer3);
                $composer2 = $composer3;
                Function1<? super TextLayoutResult, Unit> function17 = function15;
                m1158LayoutWithLinksAndInlineContent11Od_4g(modifier5, annotatedStringBasicText_CL7eQgs$lambda$3, function17, hasInlineContent, mapEmptyMap, style4, i20, softWrap6, maxLines3, minLines5, fontFamilyResolver, selectionController2, color4, (Function1) it$iv4, autoSize3, $composer2, (($dirty3 >> 3) & 14) | (($dirty3 >> 3) & 896) | (($dirty3 >> 12) & 57344) | (($dirty3 << 9) & 458752) | (($dirty3 << 6) & 3670016) | (($dirty3 << 6) & 29360128) | (($dirty3 << 6) & 234881024) | (($dirty3 << 6) & C.ENCODING_PCM_DOUBLE), (($dirty3 >> 21) & 896) | (($dirty12 << 12) & 57344), 0);
                function16 = function17;
                i8 = i20;
                softWrap4 = softWrap6;
                modifier5 = modifier5;
                $composer2.endReplaceGroup();
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            softWrap2 = softWrap4;
            minLines3 = minLines5;
            color2 = color4;
            autoSize2 = autoSize3;
            modifier3 = modifier5;
            map2 = mapEmptyMap;
            minLines2 = maxLines3;
            i7 = i8;
            function13 = function16;
            style2 = style4;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: androidx.compose.foundation.text.BasicTextKt$$ExternalSyntheticLambda10
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return BasicTextKt.BasicText_CL7eQgs$lambda$6(annotatedString, modifier3, style2, function13, i7, softWrap2, minLines2, minLines3, map2, color2, autoSize2, $changed, $changed1, i2, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    private static final AnnotatedString BasicText_CL7eQgs$lambda$3(MutableState<AnnotatedString> mutableState) {
        MutableState<AnnotatedString> $this$getValue$iv = mutableState;
        return $this$getValue$iv.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit BasicText_CL7eQgs$lambda$5$0(MutableState $displayedText$delegate, TextAnnotatedStringNode.TextSubstitutionValue substitutionValue) {
        AnnotatedString original;
        if (substitutionValue.isShowingSubstitution()) {
            original = substitutionValue.getSubstitution();
        } else {
            original = substitutionValue.getOriginal();
        }
        $displayedText$delegate.setValue(original);
        return Unit.INSTANCE;
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Maintained for binary compatibility")
    /* JADX INFO: renamed from: BasicText-VhcvRP8, reason: not valid java name */
    public static final /* synthetic */ void m1157BasicTextVhcvRP8(final String text, Modifier modifier, TextStyle style, Function1 onTextLayout, int i, boolean softWrap, int maxLines, int minLines, ColorProducer color, Composer $composer, final int $changed, final int i2) {
        String str;
        Modifier modifier2;
        TextStyle textStyle;
        Function1 onTextLayout2;
        int i3;
        int i4;
        Composer $composer2;
        final int i5;
        final int maxLines2;
        int minLines2;
        final ColorProducer color2;
        final TextStyle style2;
        final boolean softWrap2;
        Modifier modifier3;
        int i6;
        TextStyle style3;
        Function1 onTextLayout3;
        int i7;
        int iM7415getClipgIe3tQ8;
        boolean softWrap3;
        int i8;
        int maxLines3;
        int maxLines4;
        int minLines3;
        ColorProducer color3;
        Composer $composer3 = $composer.startRestartGroup(-1186827822);
        ComposerKt.sourceInformation($composer3, "C(BasicText)N(text,modifier,style,onTextLayout,overflow:c#ui.text.style.TextOverflow,softWrap,maxLines,minLines,color)318@15279L93:BasicText.kt#423gt5");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            str = text;
            $dirty |= $composer3.changed(str) ? 4 : 2;
        } else {
            str = text;
        }
        int i9 = i2 & 2;
        if (i9 != 0) {
            $dirty |= 48;
            modifier2 = modifier;
        } else if (($changed & 48) == 0) {
            modifier2 = modifier;
            $dirty |= $composer3.changed(modifier2) ? 32 : 16;
        } else {
            modifier2 = modifier;
        }
        int i10 = i2 & 4;
        if (i10 != 0) {
            $dirty |= RendererCapabilities.DECODER_SUPPORT_MASK;
            textStyle = style;
        } else if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            textStyle = style;
            $dirty |= $composer3.changed(textStyle) ? 256 : 128;
        } else {
            textStyle = style;
        }
        int i11 = i2 & 8;
        if (i11 != 0) {
            $dirty |= 3072;
            onTextLayout2 = onTextLayout;
        } else if (($changed & 3072) == 0) {
            onTextLayout2 = onTextLayout;
            $dirty |= $composer3.changedInstance(onTextLayout2) ? 2048 : 1024;
        } else {
            onTextLayout2 = onTextLayout;
        }
        int i12 = i2 & 16;
        if (i12 != 0) {
            $dirty |= 24576;
        } else if (($changed & 24576) == 0) {
            $dirty |= $composer3.changed(i) ? 16384 : 8192;
        }
        int i13 = i2 & 32;
        if (i13 != 0) {
            $dirty |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        } else if ((196608 & $changed) == 0) {
            $dirty |= $composer3.changed(softWrap) ? 131072 : 65536;
        }
        int i14 = i2 & 64;
        if (i14 != 0) {
            $dirty |= 1572864;
        } else if (($changed & 1572864) == 0) {
            $dirty |= $composer3.changed(maxLines) ? 1048576 : 524288;
        }
        int i15 = i2 & 128;
        if (i15 != 0) {
            $dirty |= 12582912;
            i3 = i15;
        } else if (($changed & 12582912) == 0) {
            i3 = i15;
            $dirty |= $composer3.changed(minLines) ? 8388608 : 4194304;
        } else {
            i3 = i15;
        }
        int i16 = i2 & 256;
        if (i16 != 0) {
            $dirty |= 100663296;
            i4 = i16;
        } else if (($changed & 100663296) == 0) {
            i4 = i16;
            $dirty |= $composer3.changedInstance(color) ? 67108864 : 33554432;
        } else {
            i4 = i16;
        }
        if (!$composer3.shouldExecute(($dirty & 38347923) != 38347922, $dirty & 1)) {
            $composer2 = $composer3;
            $composer2.skipToGroupEnd();
            i5 = i;
            maxLines2 = maxLines;
            minLines2 = minLines;
            color2 = color;
            style2 = textStyle;
            softWrap2 = softWrap;
        } else {
            if (i9 != 0) {
                modifier3 = Modifier.INSTANCE;
            } else {
                modifier3 = modifier2;
            }
            if (i10 == 0) {
                i6 = i13;
                style3 = textStyle;
            } else {
                style3 = TextStyle.INSTANCE.getDefault();
                i6 = i13;
            }
            if (i11 == 0) {
                onTextLayout3 = onTextLayout2;
            } else {
                onTextLayout3 = null;
            }
            if (i12 == 0) {
                i7 = i14;
                iM7415getClipgIe3tQ8 = i;
            } else {
                iM7415getClipgIe3tQ8 = TextOverflow.INSTANCE.m7415getClipgIe3tQ8();
                i7 = i14;
            }
            if (i6 == 0) {
                softWrap3 = softWrap;
                i8 = -1186827822;
            } else {
                softWrap3 = true;
                i8 = -1186827822;
            }
            if (i7 == 0) {
                maxLines3 = i3;
                maxLines4 = maxLines;
            } else {
                int i17 = i3;
                maxLines4 = Integer.MAX_VALUE;
                maxLines3 = i17;
            }
            if (maxLines3 == 0) {
                minLines3 = i4;
                minLines2 = minLines;
            } else {
                int i18 = i4;
                minLines2 = 1;
                minLines3 = i18;
            }
            if (minLines3 == 0) {
                color3 = color;
            } else {
                color3 = null;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(i8, $dirty, -1, "androidx.compose.foundation.text.BasicText (BasicText.kt:317)");
            }
            $composer2 = $composer3;
            m1155BasicTextRWo7tUw(str, modifier3, style3, (Function1<? super TextLayoutResult, Unit>) onTextLayout3, iM7415getClipgIe3tQ8, softWrap3, maxLines4, minLines2, color3, (TextAutoSize) null, $composer2, ($dirty & 14) | ($dirty & 112) | ($dirty & 896) | ($dirty & 7168) | (57344 & $dirty) | (458752 & $dirty) | (3670016 & $dirty) | (29360128 & $dirty) | (234881024 & $dirty), 512);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier2 = modifier3;
            style2 = style3;
            onTextLayout2 = onTextLayout3;
            i5 = iM7415getClipgIe3tQ8;
            softWrap2 = softWrap3;
            maxLines2 = maxLines4;
            color2 = color3;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            final Modifier modifier4 = modifier2;
            final Function1 onTextLayout4 = onTextLayout2;
            final int minLines4 = minLines2;
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: androidx.compose.foundation.text.BasicTextKt$$ExternalSyntheticLambda5
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return BasicTextKt.BasicText_VhcvRP8$lambda$0(text, modifier4, style2, onTextLayout4, i5, softWrap2, maxLines2, minLines4, color2, $changed, i2, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Maintained for binary compatibility")
    /* JADX INFO: renamed from: BasicText-RWo7tUw, reason: not valid java name */
    public static final /* synthetic */ void m1154BasicTextRWo7tUw(final AnnotatedString text, Modifier modifier, TextStyle style, Function1 onTextLayout, int i, boolean softWrap, int maxLines, int minLines, Map inlineContent, ColorProducer color, Composer $composer, final int $changed, final int i2) {
        AnnotatedString annotatedString;
        Modifier modifier2;
        TextStyle textStyle;
        Function1 onTextLayout2;
        int i3;
        int i4;
        int i5;
        int i6;
        Composer $composer2;
        final int maxLines2;
        int minLines2;
        final Map inlineContent2;
        final TextStyle style2;
        final int i7;
        final boolean softWrap2;
        final ColorProducer color2;
        int i8;
        Modifier modifier3;
        TextStyle style3;
        int i9;
        Function1 onTextLayout3;
        int iM7415getClipgIe3tQ8;
        int i10;
        int i11;
        boolean softWrap3;
        int maxLines3;
        int maxLines4;
        int minLines3;
        Map inlineContent3;
        ColorProducer color3;
        Composer $composer3 = $composer.startRestartGroup(-1064305212);
        ComposerKt.sourceInformation($composer3, "C(BasicText)N(text,modifier,style,onTextLayout,overflow:c#ui.text.style.TextOverflow,softWrap,maxLines,minLines,inlineContent,color)360@17696L195:BasicText.kt#423gt5");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            annotatedString = text;
            $dirty |= $composer3.changed(annotatedString) ? 4 : 2;
        } else {
            annotatedString = text;
        }
        int i12 = i2 & 2;
        if (i12 != 0) {
            $dirty |= 48;
            modifier2 = modifier;
        } else if (($changed & 48) == 0) {
            modifier2 = modifier;
            $dirty |= $composer3.changed(modifier2) ? 32 : 16;
        } else {
            modifier2 = modifier;
        }
        int i13 = i2 & 4;
        if (i13 != 0) {
            $dirty |= RendererCapabilities.DECODER_SUPPORT_MASK;
            textStyle = style;
        } else if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            textStyle = style;
            $dirty |= $composer3.changed(textStyle) ? 256 : 128;
        } else {
            textStyle = style;
        }
        int i14 = i2 & 8;
        if (i14 != 0) {
            $dirty |= 3072;
            onTextLayout2 = onTextLayout;
        } else if (($changed & 3072) == 0) {
            onTextLayout2 = onTextLayout;
            $dirty |= $composer3.changedInstance(onTextLayout2) ? 2048 : 1024;
        } else {
            onTextLayout2 = onTextLayout;
        }
        int i15 = i2 & 16;
        if (i15 != 0) {
            $dirty |= 24576;
            i3 = i;
        } else if (($changed & 24576) == 0) {
            i3 = i;
            $dirty |= $composer3.changed(i3) ? 16384 : 8192;
        } else {
            i3 = i;
        }
        int i16 = i2 & 32;
        if (i16 != 0) {
            $dirty |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        } else if ((196608 & $changed) == 0) {
            $dirty |= $composer3.changed(softWrap) ? 131072 : 65536;
        }
        int i17 = i2 & 64;
        if (i17 != 0) {
            $dirty |= 1572864;
        } else if (($changed & 1572864) == 0) {
            $dirty |= $composer3.changed(maxLines) ? 1048576 : 524288;
        }
        int i18 = i2 & 128;
        if (i18 != 0) {
            $dirty |= 12582912;
            i4 = i18;
        } else if (($changed & 12582912) == 0) {
            i4 = i18;
            $dirty |= $composer3.changed(minLines) ? 8388608 : 4194304;
        } else {
            i4 = i18;
        }
        int i19 = i2 & 256;
        if (i19 != 0) {
            $dirty |= 100663296;
            i5 = i19;
        } else if (($changed & 100663296) == 0) {
            i5 = i19;
            $dirty |= $composer3.changedInstance(inlineContent) ? 67108864 : 33554432;
        } else {
            i5 = i19;
        }
        int i20 = i2 & 512;
        if (i20 != 0) {
            $dirty |= 805306368;
            i6 = i20;
        } else if (($changed & 805306368) == 0) {
            i6 = i20;
            $dirty |= $composer3.changedInstance(color) ? C.BUFFER_FLAG_LAST_SAMPLE : 268435456;
        } else {
            i6 = i20;
        }
        if (!$composer3.shouldExecute(($dirty & 306783379) != 306783378, $dirty & 1)) {
            $composer2 = $composer3;
            $composer2.skipToGroupEnd();
            maxLines2 = maxLines;
            minLines2 = minLines;
            inlineContent2 = inlineContent;
            style2 = textStyle;
            i7 = i3;
            softWrap2 = softWrap;
            color2 = color;
        } else {
            if (i12 != 0) {
                modifier3 = Modifier.INSTANCE;
                i8 = i16;
            } else {
                i8 = i16;
                modifier3 = modifier2;
            }
            if (i13 == 0) {
                style3 = textStyle;
            } else {
                style3 = TextStyle.INSTANCE.getDefault();
            }
            if (i14 == 0) {
                i9 = i17;
                onTextLayout3 = onTextLayout2;
            } else {
                onTextLayout3 = null;
                i9 = i17;
            }
            if (i15 == 0) {
                iM7415getClipgIe3tQ8 = i3;
                i10 = -1064305212;
            } else {
                iM7415getClipgIe3tQ8 = TextOverflow.INSTANCE.m7415getClipgIe3tQ8();
                i10 = -1064305212;
            }
            if (i8 == 0) {
                i11 = i4;
                softWrap3 = softWrap;
            } else {
                int i21 = i4;
                softWrap3 = true;
                i11 = i21;
            }
            if (i9 == 0) {
                maxLines3 = i5;
                maxLines4 = maxLines;
            } else {
                int i22 = i5;
                maxLines4 = Integer.MAX_VALUE;
                maxLines3 = i22;
            }
            if (i11 == 0) {
                minLines3 = i6;
                minLines2 = minLines;
            } else {
                int i23 = i6;
                minLines2 = 1;
                minLines3 = i23;
            }
            if (maxLines3 == 0) {
                inlineContent3 = inlineContent;
            } else {
                inlineContent3 = MapsKt.emptyMap();
            }
            if (minLines3 == 0) {
                color3 = color;
            } else {
                color3 = null;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(i10, $dirty, -1, "androidx.compose.foundation.text.BasicText (BasicText.kt:359)");
            }
            $composer2 = $composer3;
            m1153BasicTextCL7eQgs(annotatedString, modifier3, style3, onTextLayout3, iM7415getClipgIe3tQ8, softWrap3, maxLines4, minLines2, inlineContent3, color3, null, $composer2, ($dirty & 14) | ($dirty & 112) | ($dirty & 896) | ($dirty & 7168) | (57344 & $dirty) | (458752 & $dirty) | (3670016 & $dirty) | (29360128 & $dirty) | (234881024 & $dirty) | (1879048192 & $dirty), 0, 1024);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier2 = modifier3;
            style2 = style3;
            onTextLayout2 = onTextLayout3;
            i7 = iM7415getClipgIe3tQ8;
            softWrap2 = softWrap3;
            maxLines2 = maxLines4;
            inlineContent2 = inlineContent3;
            color2 = color3;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            final Modifier modifier4 = modifier2;
            final Function1 onTextLayout4 = onTextLayout2;
            final int minLines4 = minLines2;
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: androidx.compose.foundation.text.BasicTextKt$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return BasicTextKt.BasicText_RWo7tUw$lambda$3(text, modifier4, style2, onTextLayout4, i7, softWrap2, maxLines2, minLines4, inlineContent2, color2, $changed, i2, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Maintained for binary compatibility")
    /* JADX INFO: renamed from: BasicText-BpD7jsM, reason: not valid java name */
    public static final /* synthetic */ void m1152BasicTextBpD7jsM(final String text, Modifier modifier, TextStyle style, Function1 onTextLayout, int i, boolean softWrap, int maxLines, Composer $composer, final int $changed, final int i2) {
        String str;
        Modifier modifier2;
        TextStyle textStyle;
        boolean softWrap2;
        Composer $composer2;
        final int i3;
        final int maxLines2;
        Modifier modifier3;
        final TextStyle style2;
        final Function1 onTextLayout2;
        final boolean softWrap3;
        int i4;
        TextStyle style3;
        Function1 onTextLayout3;
        int i5;
        int iM7415getClipgIe3tQ8;
        int maxLines3;
        Composer $composer3 = $composer.startRestartGroup(1022429478);
        ComposerKt.sourceInformation($composer3, "C(BasicText)N(text,modifier,style,onTextLayout,overflow:c#ui.text.style.TextOverflow,softWrap,maxLines)385@18278L235:BasicText.kt#423gt5");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            str = text;
            $dirty |= $composer3.changed(str) ? 4 : 2;
        } else {
            str = text;
        }
        int i6 = i2 & 2;
        if (i6 != 0) {
            $dirty |= 48;
            modifier2 = modifier;
        } else if (($changed & 48) == 0) {
            modifier2 = modifier;
            $dirty |= $composer3.changed(modifier2) ? 32 : 16;
        } else {
            modifier2 = modifier;
        }
        int i7 = i2 & 4;
        if (i7 != 0) {
            $dirty |= RendererCapabilities.DECODER_SUPPORT_MASK;
            textStyle = style;
        } else if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            textStyle = style;
            $dirty |= $composer3.changed(textStyle) ? 256 : 128;
        } else {
            textStyle = style;
        }
        int i8 = i2 & 8;
        if (i8 != 0) {
            $dirty |= 3072;
        } else if (($changed & 3072) == 0) {
            $dirty |= $composer3.changedInstance(onTextLayout) ? 2048 : 1024;
        }
        int i9 = i2 & 16;
        if (i9 != 0) {
            $dirty |= 24576;
        } else if (($changed & 24576) == 0) {
            $dirty |= $composer3.changed(i) ? 16384 : 8192;
        }
        int i10 = i2 & 32;
        if (i10 != 0) {
            $dirty |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            softWrap2 = softWrap;
        } else if ((196608 & $changed) == 0) {
            softWrap2 = softWrap;
            $dirty |= $composer3.changed(softWrap2) ? 131072 : 65536;
        } else {
            softWrap2 = softWrap;
        }
        int i11 = i2 & 64;
        if (i11 != 0) {
            $dirty |= 1572864;
        } else if (($changed & 1572864) == 0) {
            $dirty |= $composer3.changed(maxLines) ? 1048576 : 524288;
        }
        if (!$composer3.shouldExecute(($dirty & 599187) != 599186, $dirty & 1)) {
            $composer2 = $composer3;
            $composer2.skipToGroupEnd();
            i3 = i;
            maxLines2 = maxLines;
            modifier3 = modifier2;
            style2 = textStyle;
            onTextLayout2 = onTextLayout;
            softWrap3 = softWrap2;
        } else {
            if (i6 != 0) {
                modifier3 = Modifier.INSTANCE;
            } else {
                modifier3 = modifier2;
            }
            if (i7 == 0) {
                i4 = i9;
                style3 = textStyle;
            } else {
                style3 = TextStyle.INSTANCE.getDefault();
                i4 = i9;
            }
            if (i8 == 0) {
                onTextLayout3 = onTextLayout;
            } else {
                onTextLayout3 = null;
            }
            if (i4 == 0) {
                i5 = i10;
                iM7415getClipgIe3tQ8 = i;
            } else {
                iM7415getClipgIe3tQ8 = TextOverflow.INSTANCE.m7415getClipgIe3tQ8();
                i5 = i10;
            }
            if (i5 != 0) {
                softWrap2 = true;
            }
            if (i11 == 0) {
                maxLines3 = maxLines;
            } else {
                maxLines3 = Integer.MAX_VALUE;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1022429478, $dirty, -1, "androidx.compose.foundation.text.BasicText (BasicText.kt:384)");
            }
            $composer2 = $composer3;
            m1155BasicTextRWo7tUw(str, modifier3, style3, (Function1<? super TextLayoutResult, Unit>) onTextLayout3, iM7415getClipgIe3tQ8, softWrap2, maxLines3, 1, (ColorProducer) null, (TextAutoSize) null, $composer2, ($dirty & 14) | 12582912 | ($dirty & 112) | ($dirty & 896) | ($dirty & 7168) | (57344 & $dirty) | (458752 & $dirty) | (3670016 & $dirty), ValidationPath.MAX_PATH_LENGTH_BYTES);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            style2 = style3;
            onTextLayout2 = onTextLayout3;
            i3 = iM7415getClipgIe3tQ8;
            maxLines2 = maxLines3;
            softWrap3 = softWrap2;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            final Modifier modifier4 = modifier3;
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: androidx.compose.foundation.text.BasicTextKt$$ExternalSyntheticLambda19
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return BasicTextKt.BasicText_BpD7jsM$lambda$0(text, modifier4, style2, onTextLayout2, i3, softWrap3, maxLines2, $changed, i2, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Maintained for binary compatibility")
    /* JADX INFO: renamed from: BasicText-4YKlhWE, reason: not valid java name */
    public static final /* synthetic */ void m1150BasicText4YKlhWE(final AnnotatedString text, Modifier modifier, TextStyle style, Function1 onTextLayout, int i, boolean softWrap, int maxLines, Map inlineContent, Composer $composer, final int $changed, final int i2) {
        AnnotatedString annotatedString;
        Modifier modifier2;
        TextStyle textStyle;
        Function1 function1;
        int i3;
        Composer $composer2;
        final int i4;
        final int maxLines2;
        Modifier modifier3;
        final TextStyle style2;
        final Function1 onTextLayout2;
        final boolean softWrap2;
        final Map inlineContent2;
        int i5;
        TextStyle style3;
        int i6;
        Function1 onTextLayout3;
        int iM7415getClipgIe3tQ8;
        int i7;
        boolean softWrap3;
        int maxLines3;
        int i8;
        Map inlineContent3;
        Composer $composer3 = $composer.startRestartGroup(-648605928);
        ComposerKt.sourceInformation($composer3, "C(BasicText)N(text,modifier,style,onTextLayout,overflow:c#ui.text.style.TextOverflow,softWrap,maxLines,inlineContent)409@18970L274:BasicText.kt#423gt5");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            annotatedString = text;
            $dirty |= $composer3.changed(annotatedString) ? 4 : 2;
        } else {
            annotatedString = text;
        }
        int i9 = i2 & 2;
        if (i9 != 0) {
            $dirty |= 48;
            modifier2 = modifier;
        } else if (($changed & 48) == 0) {
            modifier2 = modifier;
            $dirty |= $composer3.changed(modifier2) ? 32 : 16;
        } else {
            modifier2 = modifier;
        }
        int i10 = i2 & 4;
        if (i10 != 0) {
            $dirty |= RendererCapabilities.DECODER_SUPPORT_MASK;
            textStyle = style;
        } else if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            textStyle = style;
            $dirty |= $composer3.changed(textStyle) ? 256 : 128;
        } else {
            textStyle = style;
        }
        int i11 = i2 & 8;
        if (i11 != 0) {
            $dirty |= 3072;
            function1 = onTextLayout;
        } else if (($changed & 3072) == 0) {
            function1 = onTextLayout;
            $dirty |= $composer3.changedInstance(function1) ? 2048 : 1024;
        } else {
            function1 = onTextLayout;
        }
        int i12 = i2 & 16;
        if (i12 != 0) {
            $dirty |= 24576;
        } else if (($changed & 24576) == 0) {
            $dirty |= $composer3.changed(i) ? 16384 : 8192;
        }
        int i13 = i2 & 32;
        if (i13 != 0) {
            $dirty |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        } else if ((196608 & $changed) == 0) {
            $dirty |= $composer3.changed(softWrap) ? 131072 : 65536;
        }
        int i14 = i2 & 64;
        if (i14 != 0) {
            $dirty |= 1572864;
        } else if (($changed & 1572864) == 0) {
            $dirty |= $composer3.changed(maxLines) ? 1048576 : 524288;
        }
        int i15 = i2 & 128;
        if (i15 != 0) {
            $dirty |= 12582912;
            i3 = i15;
        } else if (($changed & 12582912) == 0) {
            i3 = i15;
            $dirty |= $composer3.changedInstance(inlineContent) ? 8388608 : 4194304;
        } else {
            i3 = i15;
        }
        if (!$composer3.shouldExecute(($dirty & 4793491) != 4793490, $dirty & 1)) {
            $composer2 = $composer3;
            $composer2.skipToGroupEnd();
            i4 = i;
            maxLines2 = maxLines;
            modifier3 = modifier2;
            style2 = textStyle;
            onTextLayout2 = function1;
            softWrap2 = softWrap;
            inlineContent2 = inlineContent;
        } else {
            if (i9 != 0) {
                modifier3 = Modifier.INSTANCE;
                i5 = i12;
            } else {
                i5 = i12;
                modifier3 = modifier2;
            }
            if (i10 == 0) {
                style3 = textStyle;
            } else {
                style3 = TextStyle.INSTANCE.getDefault();
            }
            if (i11 == 0) {
                i6 = i13;
                onTextLayout3 = function1;
            } else {
                onTextLayout3 = null;
                i6 = i13;
            }
            if (i5 == 0) {
                iM7415getClipgIe3tQ8 = i;
            } else {
                iM7415getClipgIe3tQ8 = TextOverflow.INSTANCE.m7415getClipgIe3tQ8();
            }
            if (i6 == 0) {
                i7 = i14;
                softWrap3 = softWrap;
            } else {
                softWrap3 = true;
                i7 = i14;
            }
            if (i7 == 0) {
                maxLines3 = maxLines;
                i8 = -648605928;
            } else {
                maxLines3 = Integer.MAX_VALUE;
                i8 = -648605928;
            }
            if (i3 == 0) {
                inlineContent3 = inlineContent;
            } else {
                inlineContent3 = MapsKt.emptyMap();
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(i8, $dirty, -1, "androidx.compose.foundation.text.BasicText (BasicText.kt:408)");
            }
            $composer2 = $composer3;
            m1153BasicTextCL7eQgs(annotatedString, modifier3, style3, onTextLayout3, iM7415getClipgIe3tQ8, softWrap3, maxLines3, 1, inlineContent3, null, null, $composer2, ($dirty & 14) | 12582912 | ($dirty & 112) | ($dirty & 896) | ($dirty & 7168) | (57344 & $dirty) | (458752 & $dirty) | (3670016 & $dirty) | (($dirty << 3) & 234881024), 0, 1536);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            style2 = style3;
            onTextLayout2 = onTextLayout3;
            i4 = iM7415getClipgIe3tQ8;
            softWrap2 = softWrap3;
            maxLines2 = maxLines3;
            inlineContent2 = inlineContent3;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            final Modifier modifier4 = modifier3;
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: androidx.compose.foundation.text.BasicTextKt$$ExternalSyntheticLambda20
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return BasicTextKt.BasicText_4YKlhWE$lambda$0(text, modifier4, style2, onTextLayout2, i4, softWrap2, maxLines2, inlineContent2, $changed, i2, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Maintained for binary compat")
    /* JADX INFO: renamed from: BasicText-4YKlhWE, reason: not valid java name */
    public static final /* synthetic */ void m1151BasicText4YKlhWE(final String text, Modifier modifier, TextStyle style, Function1 onTextLayout, int i, boolean softWrap, int maxLines, int minLines, Composer $composer, final int $changed, final int i2) {
        String str;
        Modifier modifier2;
        TextStyle textStyle;
        Function1 function1;
        int i3;
        Composer $composer2;
        final int i4;
        final int maxLines2;
        Modifier modifier3;
        final TextStyle style2;
        final Function1 onTextLayout2;
        final boolean softWrap2;
        final int minLines2;
        int i5;
        int i6;
        Function1 onTextLayout3;
        int i7;
        boolean softWrap3;
        int maxLines3;
        int i8;
        Composer $composer3 = $composer.startRestartGroup(1542716361);
        ComposerKt.sourceInformation($composer3, "C(BasicText)N(text,modifier,style,onTextLayout,overflow:c#ui.text.style.TextOverflow,softWrap,maxLines,minLines)433@19643L86:BasicText.kt#423gt5");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            str = text;
            $dirty |= $composer3.changed(str) ? 4 : 2;
        } else {
            str = text;
        }
        int i9 = i2 & 2;
        if (i9 != 0) {
            $dirty |= 48;
            modifier2 = modifier;
        } else if (($changed & 48) == 0) {
            modifier2 = modifier;
            $dirty |= $composer3.changed(modifier2) ? 32 : 16;
        } else {
            modifier2 = modifier;
        }
        int i10 = i2 & 4;
        if (i10 != 0) {
            $dirty |= RendererCapabilities.DECODER_SUPPORT_MASK;
            textStyle = style;
        } else if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            textStyle = style;
            $dirty |= $composer3.changed(textStyle) ? 256 : 128;
        } else {
            textStyle = style;
        }
        int i11 = i2 & 8;
        if (i11 != 0) {
            $dirty |= 3072;
            function1 = onTextLayout;
        } else if (($changed & 3072) == 0) {
            function1 = onTextLayout;
            $dirty |= $composer3.changedInstance(function1) ? 2048 : 1024;
        } else {
            function1 = onTextLayout;
        }
        int i12 = i2 & 16;
        if (i12 != 0) {
            $dirty |= 24576;
        } else if (($changed & 24576) == 0) {
            $dirty |= $composer3.changed(i) ? 16384 : 8192;
        }
        int i13 = i2 & 32;
        if (i13 != 0) {
            $dirty |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        } else if ((196608 & $changed) == 0) {
            $dirty |= $composer3.changed(softWrap) ? 131072 : 65536;
        }
        int i14 = i2 & 64;
        if (i14 != 0) {
            $dirty |= 1572864;
        } else if (($changed & 1572864) == 0) {
            $dirty |= $composer3.changed(maxLines) ? 1048576 : 524288;
        }
        int i15 = i2 & 128;
        if (i15 != 0) {
            $dirty |= 12582912;
            i3 = i15;
        } else if (($changed & 12582912) == 0) {
            i3 = i15;
            $dirty |= $composer3.changed(minLines) ? 8388608 : 4194304;
        } else {
            i3 = i15;
        }
        if ($composer3.shouldExecute(($dirty & 4793491) != 4793490, $dirty & 1)) {
            if (i9 != 0) {
                modifier3 = Modifier.INSTANCE;
                i5 = i12;
            } else {
                i5 = i12;
                modifier3 = modifier2;
            }
            TextStyle style3 = i10 != 0 ? TextStyle.INSTANCE.getDefault() : textStyle;
            if (i11 != 0) {
                onTextLayout3 = null;
                i6 = i13;
            } else {
                i6 = i13;
                onTextLayout3 = function1;
            }
            int iM7415getClipgIe3tQ8 = i5 != 0 ? TextOverflow.INSTANCE.m7415getClipgIe3tQ8() : i;
            if (i6 != 0) {
                softWrap3 = true;
                i7 = i14;
            } else {
                i7 = i14;
                softWrap3 = softWrap;
            }
            if (i7 != 0) {
                maxLines3 = Integer.MAX_VALUE;
                i8 = 1542716361;
            } else {
                maxLines3 = maxLines;
                i8 = 1542716361;
            }
            int minLines3 = i3 != 0 ? 1 : minLines;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(i8, $dirty, -1, "androidx.compose.foundation.text.BasicText (BasicText.kt:433)");
            }
            $composer2 = $composer3;
            m1155BasicTextRWo7tUw(str, modifier3, style3, (Function1<? super TextLayoutResult, Unit>) onTextLayout3, iM7415getClipgIe3tQ8, softWrap3, maxLines3, minLines3, (ColorProducer) null, (TextAutoSize) null, $composer2, ($dirty & 14) | ($dirty & 112) | ($dirty & 896) | ($dirty & 7168) | (57344 & $dirty) | (458752 & $dirty) | (3670016 & $dirty) | (29360128 & $dirty), ValidationPath.MAX_PATH_LENGTH_BYTES);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            style2 = style3;
            onTextLayout2 = onTextLayout3;
            i4 = iM7415getClipgIe3tQ8;
            softWrap2 = softWrap3;
            maxLines2 = maxLines3;
            minLines2 = minLines3;
        } else {
            $composer2 = $composer3;
            $composer2.skipToGroupEnd();
            i4 = i;
            maxLines2 = maxLines;
            modifier3 = modifier2;
            style2 = textStyle;
            onTextLayout2 = function1;
            softWrap2 = softWrap;
            minLines2 = minLines;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            final Modifier modifier4 = modifier3;
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: androidx.compose.foundation.text.BasicTextKt$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return BasicTextKt.BasicText_4YKlhWE$lambda$1(text, modifier4, style2, onTextLayout2, i4, softWrap2, maxLines2, minLines2, $changed, i2, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Maintained for binary compat")
    /* JADX INFO: renamed from: BasicText-VhcvRP8, reason: not valid java name */
    public static final /* synthetic */ void m1156BasicTextVhcvRP8(final AnnotatedString text, Modifier modifier, TextStyle style, Function1 onTextLayout, int i, boolean softWrap, int maxLines, int minLines, Map inlineContent, Composer $composer, final int $changed, final int i2) {
        AnnotatedString annotatedString;
        Modifier modifier2;
        TextStyle textStyle;
        Function1 onTextLayout2;
        int i3;
        int i4;
        Composer $composer2;
        final int i5;
        final int maxLines2;
        int minLines2;
        final Map inlineContent2;
        final TextStyle style2;
        final boolean softWrap2;
        Modifier modifier3;
        int i6;
        TextStyle style3;
        Function1 onTextLayout3;
        int i7;
        int iM7415getClipgIe3tQ8;
        boolean softWrap3;
        int i8;
        int maxLines3;
        int maxLines4;
        int minLines3;
        Map inlineContent3;
        Composer $composer3 = $composer.startRestartGroup(851408699);
        ComposerKt.sourceInformation($composer3, "C(BasicText)N(text,modifier,style,onTextLayout,overflow:c#ui.text.style.TextOverflow,softWrap,maxLines,minLines,inlineContent)448@20200L281:BasicText.kt#423gt5");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            annotatedString = text;
            $dirty |= $composer3.changed(annotatedString) ? 4 : 2;
        } else {
            annotatedString = text;
        }
        int i9 = i2 & 2;
        if (i9 != 0) {
            $dirty |= 48;
            modifier2 = modifier;
        } else if (($changed & 48) == 0) {
            modifier2 = modifier;
            $dirty |= $composer3.changed(modifier2) ? 32 : 16;
        } else {
            modifier2 = modifier;
        }
        int i10 = i2 & 4;
        if (i10 != 0) {
            $dirty |= RendererCapabilities.DECODER_SUPPORT_MASK;
            textStyle = style;
        } else if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            textStyle = style;
            $dirty |= $composer3.changed(textStyle) ? 256 : 128;
        } else {
            textStyle = style;
        }
        int i11 = i2 & 8;
        if (i11 != 0) {
            $dirty |= 3072;
            onTextLayout2 = onTextLayout;
        } else if (($changed & 3072) == 0) {
            onTextLayout2 = onTextLayout;
            $dirty |= $composer3.changedInstance(onTextLayout2) ? 2048 : 1024;
        } else {
            onTextLayout2 = onTextLayout;
        }
        int i12 = i2 & 16;
        if (i12 != 0) {
            $dirty |= 24576;
        } else if (($changed & 24576) == 0) {
            $dirty |= $composer3.changed(i) ? 16384 : 8192;
        }
        int i13 = i2 & 32;
        if (i13 != 0) {
            $dirty |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        } else if ((196608 & $changed) == 0) {
            $dirty |= $composer3.changed(softWrap) ? 131072 : 65536;
        }
        int i14 = i2 & 64;
        if (i14 != 0) {
            $dirty |= 1572864;
        } else if (($changed & 1572864) == 0) {
            $dirty |= $composer3.changed(maxLines) ? 1048576 : 524288;
        }
        int i15 = i2 & 128;
        if (i15 != 0) {
            $dirty |= 12582912;
            i3 = i15;
        } else if (($changed & 12582912) == 0) {
            i3 = i15;
            $dirty |= $composer3.changed(minLines) ? 8388608 : 4194304;
        } else {
            i3 = i15;
        }
        int i16 = i2 & 256;
        if (i16 != 0) {
            $dirty |= 100663296;
            i4 = i16;
        } else if (($changed & 100663296) == 0) {
            i4 = i16;
            $dirty |= $composer3.changedInstance(inlineContent) ? 67108864 : 33554432;
        } else {
            i4 = i16;
        }
        if (!$composer3.shouldExecute(($dirty & 38347923) != 38347922, $dirty & 1)) {
            $composer2 = $composer3;
            $composer2.skipToGroupEnd();
            i5 = i;
            maxLines2 = maxLines;
            minLines2 = minLines;
            inlineContent2 = inlineContent;
            style2 = textStyle;
            softWrap2 = softWrap;
        } else {
            if (i9 != 0) {
                modifier3 = Modifier.INSTANCE;
            } else {
                modifier3 = modifier2;
            }
            if (i10 == 0) {
                i6 = i13;
                style3 = textStyle;
            } else {
                style3 = TextStyle.INSTANCE.getDefault();
                i6 = i13;
            }
            if (i11 == 0) {
                onTextLayout3 = onTextLayout2;
            } else {
                onTextLayout3 = null;
            }
            if (i12 == 0) {
                i7 = i14;
                iM7415getClipgIe3tQ8 = i;
            } else {
                iM7415getClipgIe3tQ8 = TextOverflow.INSTANCE.m7415getClipgIe3tQ8();
                i7 = i14;
            }
            if (i6 == 0) {
                softWrap3 = softWrap;
                i8 = 851408699;
            } else {
                softWrap3 = true;
                i8 = 851408699;
            }
            if (i7 == 0) {
                maxLines3 = i3;
                maxLines4 = maxLines;
            } else {
                int i17 = i3;
                maxLines4 = Integer.MAX_VALUE;
                maxLines3 = i17;
            }
            if (maxLines3 == 0) {
                minLines3 = i4;
                minLines2 = minLines;
            } else {
                int i18 = i4;
                minLines2 = 1;
                minLines3 = i18;
            }
            if (minLines3 == 0) {
                inlineContent3 = inlineContent;
            } else {
                inlineContent3 = MapsKt.emptyMap();
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(i8, $dirty, -1, "androidx.compose.foundation.text.BasicText (BasicText.kt:448)");
            }
            $composer2 = $composer3;
            m1153BasicTextCL7eQgs(annotatedString, modifier3, style3, onTextLayout3, iM7415getClipgIe3tQ8, softWrap3, maxLines4, minLines2, inlineContent3, null, null, $composer2, ($dirty & 14) | ($dirty & 112) | ($dirty & 896) | ($dirty & 7168) | (57344 & $dirty) | (458752 & $dirty) | (3670016 & $dirty) | (29360128 & $dirty) | (234881024 & $dirty), 0, 1536);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier2 = modifier3;
            style2 = style3;
            onTextLayout2 = onTextLayout3;
            i5 = iM7415getClipgIe3tQ8;
            softWrap2 = softWrap3;
            maxLines2 = maxLines4;
            inlineContent2 = inlineContent3;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            final Modifier modifier4 = modifier2;
            final Function1 onTextLayout4 = onTextLayout2;
            final int minLines4 = minLines2;
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: androidx.compose.foundation.text.BasicTextKt$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return BasicTextKt.BasicText_VhcvRP8$lambda$1(text, modifier4, style2, onTextLayout4, i5, softWrap2, maxLines2, minLines4, inlineContent2, $changed, i2, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    private static final Saver<Long, Long> selectionIdSaver(final SelectionRegistrar selectionRegistrar) {
        return SaverKt.Saver(new Function2() { // from class: androidx.compose.foundation.text.BasicTextKt$$ExternalSyntheticLambda6
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return BasicTextKt.selectionIdSaver$lambda$0(selectionRegistrar, (SaverScope) obj, ((Long) obj2).longValue());
            }
        }, new Function1() { // from class: androidx.compose.foundation.text.BasicTextKt$$ExternalSyntheticLambda7
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Long.valueOf(((Long) obj).longValue());
            }
        });
    }

    static final Long selectionIdSaver$lambda$0(SelectionRegistrar $selectionRegistrar, SaverScope $this$Saver, long it) {
        if (SelectionRegistrarKt.hasSelection($selectionRegistrar, it)) {
            return Long.valueOf(it);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List<Pair<Placeable, Function0<IntOffset>>> measureWithTextRangeMeasureConstraints(List<? extends Measurable> list, Function0<Boolean> function0) {
        if (!function0.invoke().booleanValue()) {
            return null;
        }
        TextRangeLayoutMeasureScope textRangeLayoutMeasureScope = new TextRangeLayoutMeasureScope();
        List<? extends Measurable> list2 = list;
        int $i$f$fastMapIndexedNotNull = 0;
        ArrayList target$iv = new ArrayList(list2.size());
        List<? extends Measurable> list3 = list2;
        int index$iv$iv = 0;
        int size = list3.size();
        while (index$iv$iv < size) {
            Object item$iv$iv = list3.get(index$iv$iv);
            Measurable measurable = (Measurable) item$iv$iv;
            Object parentData = measurable.getParentData();
            Intrinsics.checkNotNull(parentData, "null cannot be cast to non-null type androidx.compose.foundation.text.TextRangeLayoutModifier");
            TextRangeScopeMeasurePolicy rangeMeasurePolicy = ((TextRangeLayoutModifier) parentData).getMeasurePolicy();
            TextRangeLayoutMeasureResult rangeMeasureResult = rangeMeasurePolicy.measure(textRangeLayoutMeasureScope);
            TextRangeLayoutMeasureScope textRangeLayoutMeasureScope2 = textRangeLayoutMeasureScope;
            Constraints.Companion companion = Constraints.INSTANCE;
            List<? extends Measurable> list4 = list2;
            int width = rangeMeasureResult.getWidth();
            int $i$f$fastMapIndexedNotNull2 = $i$f$fastMapIndexedNotNull;
            int $i$f$fastMapIndexedNotNull3 = rangeMeasureResult.getWidth();
            ArrayList target$iv2 = target$iv;
            Placeable placeable = measurable.mo6141measureBRTryo0(companion.m7467fitPrioritizingWidthZbe2FdA(width, $i$f$fastMapIndexedNotNull3, rangeMeasureResult.getHeight(), rangeMeasureResult.getHeight()));
            target$iv2.add(new Pair(placeable, rangeMeasureResult.getPlace()));
            index$iv$iv++;
            textRangeLayoutMeasureScope = textRangeLayoutMeasureScope2;
            list2 = list4;
            $i$f$fastMapIndexedNotNull = $i$f$fastMapIndexedNotNull2;
            target$iv = target$iv2;
            list3 = list3;
        }
        return target$iv;
    }

    /* JADX INFO: renamed from: textModifier-CL7eQgs, reason: not valid java name */
    private static final Modifier m1159textModifierCL7eQgs(Modifier $this$textModifier_u2dCL7eQgs, AnnotatedString text, TextStyle style, Function1<? super TextLayoutResult, Unit> function1, int i, boolean softWrap, int maxLines, int minLines, FontFamily.Resolver fontFamilyResolver, List<AnnotatedString.Range<Placeholder>> list, Function1<? super List<Rect>, Unit> function12, SelectionController selectionController, ColorProducer color, Function1<? super TextAnnotatedStringNode.TextSubstitutionValue, Unit> function13, TextAutoSize autoSize) {
        if (selectionController == null) {
            TextAnnotatedStringElement staticTextModifier = new TextAnnotatedStringElement(text, style, fontFamilyResolver, function1, i, softWrap, maxLines, minLines, list, function12, null, color, autoSize, function13, null);
            return $this$textModifier_u2dCL7eQgs.then(Modifier.INSTANCE).then(staticTextModifier);
        }
        SelectableTextAnnotatedStringElement selectableTextModifier = new SelectableTextAnnotatedStringElement(text, style, fontFamilyResolver, function1, i, softWrap, maxLines, minLines, list, function12, selectionController, color, autoSize, null);
        return $this$textModifier_u2dCL7eQgs.then(selectionController.getModifier()).then(selectableTextModifier);
    }

    /* JADX INFO: renamed from: LayoutWithLinksAndInlineContent-11Od_4g, reason: not valid java name */
    private static final void m1158LayoutWithLinksAndInlineContent11Od_4g(final Modifier modifier, final AnnotatedString annotatedString, final Function1<? super TextLayoutResult, Unit> function1, final boolean z, Map<String, InlineTextContent> map, final TextStyle textStyle, final int i, final boolean z2, final int i2, final int i3, final FontFamily.Resolver resolver, final SelectionController selectionController, final ColorProducer colorProducer, final Function1<? super TextAnnotatedStringNode.TextSubstitutionValue, Unit> function12, final TextAutoSize textAutoSize, Composer composer, final int i4, final int i5, final int i6) {
        Modifier modifier2;
        Map<String, InlineTextContent> mapEmptyMap;
        TextStyle textStyle2;
        int i7;
        boolean z3;
        final Map<String, InlineTextContent> map2;
        Composer composer2;
        int i8;
        int i9;
        final TextLinkScope textLinkScope;
        TextLinkScope textLinkScope2;
        Function0 function0;
        Pair<List<AnnotatedString.Range<Placeholder>>, List<AnnotatedString.Range<Function3<String, Composer, Integer, Unit>>>> pair;
        Function1 function13;
        MutableState mutableState;
        List<AnnotatedString.Range<Placeholder>> list;
        Function1 function14;
        TextMeasurePolicy textMeasurePolicy;
        Object objMutableStateOf$default;
        Composer composerStartRestartGroup = composer.startRestartGroup(-2118572703);
        ComposerKt.sourceInformation(composerStartRestartGroup, "C(LayoutWithLinksAndInlineContent)N(modifier,text,onTextLayout,hasInlineContent,inlineContent,style,overflow:c#ui.text.style.TextOverflow,softWrap,maxLines,minLines,fontFamilyResolver,selectionController,color,onShowTranslation,autoSize)678@28236L162,694@28726L117,685@28404L1429:BasicText.kt#423gt5");
        int i10 = i4;
        int i11 = i5;
        if ((i4 & 6) == 0) {
            modifier2 = modifier;
            i10 |= composerStartRestartGroup.changed(modifier2) ? 4 : 2;
        } else {
            modifier2 = modifier;
        }
        if ((i4 & 48) == 0) {
            i10 |= composerStartRestartGroup.changed(annotatedString) ? 32 : 16;
        }
        if ((i4 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i10 |= composerStartRestartGroup.changedInstance(function1) ? 256 : 128;
        }
        if ((i4 & 3072) == 0) {
            i10 |= composerStartRestartGroup.changed(z) ? 2048 : 1024;
        }
        int i12 = i6 & 16;
        if (i12 != 0) {
            i10 |= 24576;
            mapEmptyMap = map;
        } else if ((i4 & 24576) == 0) {
            mapEmptyMap = map;
            i10 |= composerStartRestartGroup.changedInstance(mapEmptyMap) ? 16384 : 8192;
        } else {
            mapEmptyMap = map;
        }
        if ((i4 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            textStyle2 = textStyle;
            i10 |= composerStartRestartGroup.changed(textStyle2) ? 131072 : 65536;
        } else {
            textStyle2 = textStyle;
        }
        if ((i4 & 1572864) == 0) {
            i7 = i;
            i10 |= composerStartRestartGroup.changed(i7) ? 1048576 : 524288;
        } else {
            i7 = i;
        }
        if ((i4 & 12582912) == 0) {
            z3 = z2;
            i10 |= composerStartRestartGroup.changed(z3) ? 8388608 : 4194304;
        } else {
            z3 = z2;
        }
        if ((i4 & 100663296) == 0) {
            i10 |= composerStartRestartGroup.changed(i2) ? 67108864 : 33554432;
        }
        if ((i4 & 805306368) == 0) {
            i10 |= composerStartRestartGroup.changed(i3) ? C.BUFFER_FLAG_LAST_SAMPLE : 268435456;
        }
        if ((i5 & 6) == 0) {
            i11 |= composerStartRestartGroup.changedInstance(resolver) ? 4 : 2;
        }
        if ((i5 & 48) == 0) {
            i11 |= composerStartRestartGroup.changedInstance(selectionController) ? 32 : 16;
        }
        if ((i5 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i11 |= composerStartRestartGroup.changedInstance(colorProducer) ? 256 : 128;
        }
        if ((i5 & 3072) == 0) {
            i11 |= composerStartRestartGroup.changedInstance(function12) ? 2048 : 1024;
        }
        if ((i5 & 24576) == 0) {
            i11 |= (32768 & i5) == 0 ? composerStartRestartGroup.changed(textAutoSize) : composerStartRestartGroup.changedInstance(textAutoSize) ? 16384 : 8192;
        }
        int i13 = i11;
        if (composerStartRestartGroup.shouldExecute(((306783379 & i10) == 306783378 && (i13 & 9363) == 9362) ? false : true, i10 & 1)) {
            if (i12 != 0) {
                mapEmptyMap = MapsKt.emptyMap();
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-2118572703, i10, i13, "androidx.compose.foundation.text.LayoutWithLinksAndInlineContent (BasicText.kt:646)");
            }
            if (TextAnnotatedStringNodeKt.hasLinks(annotatedString)) {
                composerStartRestartGroup.startReplaceGroup(145641571);
                ComposerKt.sourceInformation(composerStartRestartGroup, "650@27301L38");
                ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -133848793, "CC(remember):BasicText.kt#9igjgp");
                boolean z4 = (i10 & 112) == 32;
                i8 = i13;
                Object objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (!z4) {
                    i9 = i10;
                    if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
                    }
                    textLinkScope = (TextLinkScope) objRememberedValue;
                    ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    i9 = i10;
                }
                objRememberedValue = new TextLinkScope(annotatedString);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                textLinkScope = (TextLinkScope) objRememberedValue;
                ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                composerStartRestartGroup.endReplaceGroup();
            } else {
                i8 = i13;
                i9 = i10;
                composerStartRestartGroup.startReplaceGroup(145707228);
                composerStartRestartGroup.endReplaceGroup();
                textLinkScope = null;
            }
            if (TextAnnotatedStringNodeKt.hasLinks(annotatedString)) {
                composerStartRestartGroup.startReplaceGroup(145905443);
                ComposerKt.sourceInformation(composerStartRestartGroup, "657@27566L70");
                ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -133840281, "CC(remember):BasicText.kt#9igjgp");
                boolean zChanged = ((i9 & 112) == 32) | composerStartRestartGroup.changed(textLinkScope);
                Object objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (zChanged || objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                    objRememberedValue2 = new Function0() { // from class: androidx.compose.foundation.text.BasicTextKt$$ExternalSyntheticLambda11
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return BasicTextKt.LayoutWithLinksAndInlineContent_11Od_4g$lambda$1$0(textLinkScope, annotatedString);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                }
                function0 = (Function0) objRememberedValue2;
                ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                composerStartRestartGroup.endReplaceGroup();
                textLinkScope2 = textLinkScope;
            } else {
                composerStartRestartGroup.startReplaceGroup(146002721);
                ComposerKt.sourceInformation(composerStartRestartGroup, "659@27666L8");
                ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -133837143, "CC(remember):BasicText.kt#9igjgp");
                boolean z5 = (i9 & 112) == 32;
                textLinkScope2 = textLinkScope;
                Object objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                if (z5 || objRememberedValue3 == Composer.INSTANCE.getEmpty()) {
                    objRememberedValue3 = new Function0() { // from class: androidx.compose.foundation.text.BasicTextKt$$ExternalSyntheticLambda12
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return BasicTextKt.LayoutWithLinksAndInlineContent_11Od_4g$lambda$2$0(annotatedString);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                }
                function0 = (Function0) objRememberedValue3;
                ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                composerStartRestartGroup.endReplaceGroup();
            }
            Function0 function02 = function0;
            if (z) {
                pair = AnnotatedStringResolveInlineContentKt.resolveInlineContent(annotatedString, mapEmptyMap);
            } else {
                pair = new Pair<>(null, null);
            }
            List<AnnotatedString.Range<Placeholder>> listComponent1 = pair.component1();
            List<AnnotatedString.Range<Function3<String, Composer, Integer, Unit>>> listComponent2 = pair.component2();
            if (z) {
                composerStartRestartGroup.startReplaceGroup(146318828);
                ComposerKt.sourceInformation(composerStartRestartGroup, "670@27983L61");
                ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -133826946, "CC(remember):BasicText.kt#9igjgp");
                Object objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue4 == Composer.INSTANCE.getEmpty()) {
                    function13 = null;
                    objMutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
                    composerStartRestartGroup.updateRememberedValue(objMutableStateOf$default);
                } else {
                    function13 = null;
                    objMutableStateOf$default = objRememberedValue4;
                }
                mutableState = (MutableState) objMutableStateOf$default;
                ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                composerStartRestartGroup.endReplaceGroup();
            } else {
                function13 = null;
                composerStartRestartGroup.startReplaceGroup(146406588);
                composerStartRestartGroup.endReplaceGroup();
                mutableState = null;
            }
            final MutableState mutableState2 = mutableState;
            if (z) {
                composerStartRestartGroup.startReplaceGroup(146499837);
                ComposerKt.sourceInformation(composerStartRestartGroup, "675@28166L44");
                ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -133821107, "CC(remember):BasicText.kt#9igjgp");
                boolean zChanged2 = composerStartRestartGroup.changed(mutableState2);
                Object objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                if (!zChanged2) {
                    list = listComponent1;
                    if (objRememberedValue5 == Composer.INSTANCE.getEmpty()) {
                    }
                    function14 = (Function1) objRememberedValue5;
                    ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    list = listComponent1;
                }
                objRememberedValue5 = new Function1() { // from class: androidx.compose.foundation.text.BasicTextKt$$ExternalSyntheticLambda13
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return BasicTextKt.LayoutWithLinksAndInlineContent_11Od_4g$lambda$4$0(mutableState2, (List) obj);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                function14 = (Function1) objRememberedValue5;
                ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                composerStartRestartGroup.endReplaceGroup();
            } else {
                list = listComponent1;
                composerStartRestartGroup.startReplaceGroup(146571260);
                composerStartRestartGroup.endReplaceGroup();
                function14 = function13;
            }
            Function1 function15 = function14;
            TextStyle textStyle3 = textStyle2;
            final TextLinkScope textLinkScope3 = textLinkScope2;
            List<AnnotatedString.Range<Placeholder>> list2 = list;
            int i14 = i9;
            BasicText_androidKt.BackgroundTextMeasurement(annotatedString, textStyle3, resolver, list2, composerStartRestartGroup, ((i9 >> 3) & 14) | ((i9 >> 12) & 112) | ((i8 << 6) & 896));
            AnnotatedString annotatedString2 = (AnnotatedString) function02.invoke();
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -133803114, "CC(remember):BasicText.kt#9igjgp");
            boolean zChangedInstance = composerStartRestartGroup.changedInstance(textLinkScope3) | ((i14 & 896) == 256);
            Object objRememberedValue6 = composerStartRestartGroup.rememberedValue();
            if (zChangedInstance || objRememberedValue6 == Composer.INSTANCE.getEmpty()) {
                objRememberedValue6 = new Function1() { // from class: androidx.compose.foundation.text.BasicTextKt$$ExternalSyntheticLambda14
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return BasicTextKt.LayoutWithLinksAndInlineContent_11Od_4g$lambda$6$0(textLinkScope3, function1, (TextLayoutResult) obj);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
            }
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            Map<String, InlineTextContent> map3 = mapEmptyMap;
            Modifier modifierM1159textModifierCL7eQgs = m1159textModifierCL7eQgs(modifier2, annotatedString2, textStyle, (Function1) objRememberedValue6, i7, z3, i2, i3, resolver, list2, function15, selectionController, colorProducer, function12, textAutoSize);
            if (!z) {
                composerStartRestartGroup.startReplaceGroup(147750935);
                ComposerKt.sourceInformation(composerStartRestartGroup, "713@29493L55");
                ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -133778632, "CC(remember):BasicText.kt#9igjgp");
                boolean zChangedInstance2 = composerStartRestartGroup.changedInstance(textLinkScope3);
                Object objRememberedValue7 = composerStartRestartGroup.rememberedValue();
                if (zChangedInstance2 || objRememberedValue7 == Composer.INSTANCE.getEmpty()) {
                    Object obj = new Function0() { // from class: androidx.compose.foundation.text.BasicTextKt$$ExternalSyntheticLambda15
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return Boolean.valueOf(BasicTextKt.LayoutWithLinksAndInlineContent_11Od_4g$lambda$7$0(textLinkScope3));
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(obj);
                    objRememberedValue7 = obj;
                }
                ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                LinksTextMeasurePolicy linksTextMeasurePolicy = new LinksTextMeasurePolicy((Function0) objRememberedValue7);
                composerStartRestartGroup.endReplaceGroup();
                textMeasurePolicy = linksTextMeasurePolicy;
            } else {
                composerStartRestartGroup.startReplaceGroup(147927697);
                ComposerKt.sourceInformation(composerStartRestartGroup, "717@29664L55,718@29754L39");
                ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -133773160, "CC(remember):BasicText.kt#9igjgp");
                boolean zChangedInstance3 = composerStartRestartGroup.changedInstance(textLinkScope3);
                Object objRememberedValue8 = composerStartRestartGroup.rememberedValue();
                if (zChangedInstance3 || objRememberedValue8 == Composer.INSTANCE.getEmpty()) {
                    Object obj2 = new Function0() { // from class: androidx.compose.foundation.text.BasicTextKt$$ExternalSyntheticLambda16
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return Boolean.valueOf(BasicTextKt.LayoutWithLinksAndInlineContent_11Od_4g$lambda$8$0(textLinkScope3));
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(obj2);
                    objRememberedValue8 = obj2;
                }
                Function0 function03 = (Function0) objRememberedValue8;
                ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -133770296, "CC(remember):BasicText.kt#9igjgp");
                boolean zChanged3 = composerStartRestartGroup.changed(mutableState2);
                Object objRememberedValue9 = composerStartRestartGroup.rememberedValue();
                if (zChanged3 || objRememberedValue9 == Composer.INSTANCE.getEmpty()) {
                    Object obj3 = new Function0() { // from class: androidx.compose.foundation.text.BasicTextKt$$ExternalSyntheticLambda17
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return BasicTextKt.LayoutWithLinksAndInlineContent_11Od_4g$lambda$9$0(mutableState2);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(obj3);
                    objRememberedValue9 = obj3;
                }
                ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                TextMeasurePolicy textMeasurePolicy2 = new TextMeasurePolicy(function03, (Function0) objRememberedValue9);
                composerStartRestartGroup.endReplaceGroup();
                textMeasurePolicy = textMeasurePolicy2;
            }
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
            CompositionLocalMap currentCompositionLocalMap = composerStartRestartGroup.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierM1159textModifierCL7eQgs);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            int i15 = ((0 << 6) & 896) | 6;
            composer2 = composerStartRestartGroup;
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!(composerStartRestartGroup.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            composerStartRestartGroup.startReusableNode();
            if (composerStartRestartGroup.getInserting()) {
                composerStartRestartGroup.createNode(constructor);
            } else {
                composerStartRestartGroup.useNode();
            }
            Composer composerM3967constructorimpl = Updater.m3967constructorimpl(composerStartRestartGroup);
            Updater.m3975setimpl(composerM3967constructorimpl, textMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl, currentCompositionLocalMap, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl, Integer.valueOf(iHashCode), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl, modifierMaterializeModifier, ComposeUiNode.INSTANCE.getSetModifier());
            int i16 = (i15 >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -433564842, "C:BasicText.kt#423gt5");
            if (textLinkScope3 == null) {
                composerStartRestartGroup.startReplaceGroup(-433557001);
                composerStartRestartGroup.endReplaceGroup();
            } else {
                composerStartRestartGroup.startReplaceGroup(-291080374);
                ComposerKt.sourceInformation(composerStartRestartGroup, "687@28455L18");
                textLinkScope3.LinksComposables(composerStartRestartGroup, 0);
                composerStartRestartGroup.endReplaceGroup();
                Unit unit = Unit.INSTANCE;
            }
            if (listComponent2 == null) {
                composerStartRestartGroup.startReplaceGroup(-433506223);
                composerStartRestartGroup.endReplaceGroup();
            } else {
                composerStartRestartGroup.startReplaceGroup(-433506222);
                ComposerKt.sourceInformation(composerStartRestartGroup, "*688@28511L48");
                AnnotatedStringResolveInlineContentKt.InlineChildren(annotatedString, listComponent2, composerStartRestartGroup, (i14 >> 3) & 14);
                Unit unit2 = Unit.INSTANCE;
                composerStartRestartGroup.endReplaceGroup();
                Unit unit3 = Unit.INSTANCE;
            }
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            composerStartRestartGroup.endNode();
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            map2 = map3;
        } else {
            Composer composer3 = composerStartRestartGroup;
            composer3.skipToGroupEnd();
            map2 = mapEmptyMap;
            composer2 = composer3;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: androidx.compose.foundation.text.BasicTextKt$$ExternalSyntheticLambda18
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj4, Object obj5) {
                    return BasicTextKt.LayoutWithLinksAndInlineContent_11Od_4g$lambda$10(modifier, annotatedString, function1, z, map2, textStyle, i, z2, i2, i3, resolver, selectionController, colorProducer, function12, textAutoSize, i4, i5, i6, (Composer) obj4, ((Integer) obj5).intValue());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final AnnotatedString LayoutWithLinksAndInlineContent_11Od_4g$lambda$1$0(TextLinkScope $textScope, AnnotatedString $text) {
        AnnotatedString annotatedStringApplyAnnotators$foundation;
        return ($textScope == null || (annotatedStringApplyAnnotators$foundation = $textScope.applyAnnotators$foundation()) == null) ? $text : annotatedStringApplyAnnotators$foundation;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final AnnotatedString LayoutWithLinksAndInlineContent_11Od_4g$lambda$2$0(AnnotatedString $text) {
        return $text;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit LayoutWithLinksAndInlineContent_11Od_4g$lambda$4$0(MutableState $measuredPlaceholderPositions, List it) {
        if ($measuredPlaceholderPositions != null) {
            $measuredPlaceholderPositions.setValue(it);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit LayoutWithLinksAndInlineContent_11Od_4g$lambda$6$0(TextLinkScope $textScope, Function1 $onTextLayout, TextLayoutResult it) {
        if ($textScope != null) {
            $textScope.setTextLayoutResult(it);
        }
        if ($onTextLayout != null) {
            $onTextLayout.invoke(it);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean LayoutWithLinksAndInlineContent_11Od_4g$lambda$7$0(TextLinkScope $textScope) {
        if ($textScope != null) {
            return $textScope.getShouldMeasureLinks().invoke().booleanValue();
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean LayoutWithLinksAndInlineContent_11Od_4g$lambda$8$0(TextLinkScope $textScope) {
        if ($textScope != null) {
            return $textScope.getShouldMeasureLinks().invoke().booleanValue();
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List LayoutWithLinksAndInlineContent_11Od_4g$lambda$9$0(MutableState $measuredPlaceholderPositions) {
        if ($measuredPlaceholderPositions != null) {
            return (List) $measuredPlaceholderPositions.getValue();
        }
        return null;
    }
}
