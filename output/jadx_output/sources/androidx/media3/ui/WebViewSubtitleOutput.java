package androidx.media3.ui;

import android.content.Context;
import android.text.Layout;
import android.util.AttributeSet;
import android.util.Base64;
import android.view.MotionEvent;
import android.webkit.WebView;
import android.widget.FrameLayout;
import androidx.media3.common.text.Cue;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.media3.ui.SpannedToHtmlConverter;
import androidx.media3.ui.SubtitleView;
import com.google.common.base.Preconditions;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes21.dex */
final class WebViewSubtitleOutput extends FrameLayout implements SubtitleView.Output {
    private static final float CSS_LINE_HEIGHT = 1.2f;
    private static final String DEFAULT_BACKGROUND_CSS_CLASS = "default_bg";
    private float bottomPaddingFraction;
    private final CanvasSubtitleOutput canvasSubtitleOutput;
    private float defaultTextSize;
    private int defaultTextSizeType;
    private CaptionStyleCompat style;
    private List<Cue> textCues;
    private final WebView webView;

    public WebViewSubtitleOutput(Context context) {
        this(context, null);
    }

    public WebViewSubtitleOutput(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.textCues = Collections.emptyList();
        this.style = CaptionStyleCompat.DEFAULT;
        this.defaultTextSize = 0.0533f;
        this.defaultTextSizeType = 0;
        this.bottomPaddingFraction = 0.08f;
        this.canvasSubtitleOutput = new CanvasSubtitleOutput(context, attrs);
        this.webView = new WebView(context, attrs) { // from class: androidx.media3.ui.WebViewSubtitleOutput.1
            @Override // android.webkit.WebView, android.view.View
            public boolean onTouchEvent(MotionEvent event) {
                super.onTouchEvent(event);
                return false;
            }

            @Override // android.view.View
            public boolean performClick() {
                super.performClick();
                return false;
            }
        };
        this.webView.setBackgroundColor(0);
        this.webView.getSettings().setAllowContentAccess(false);
        addView(this.canvasSubtitleOutput);
        addView(this.webView);
    }

    @Override // androidx.media3.ui.SubtitleView.Output
    public void update(List<Cue> cues, CaptionStyleCompat style, float textSize, int textSizeType, float bottomPaddingFraction) {
        this.style = style;
        this.defaultTextSize = textSize;
        this.defaultTextSizeType = textSizeType;
        this.bottomPaddingFraction = bottomPaddingFraction;
        List<Cue> bitmapCues = new ArrayList<>();
        List<Cue> textCues = new ArrayList<>();
        for (int i = 0; i < cues.size(); i++) {
            Cue cue = cues.get(i);
            if (cue.bitmap != null) {
                bitmapCues.add(cue);
            } else {
                textCues.add(cue);
            }
        }
        if (!this.textCues.isEmpty() || !textCues.isEmpty()) {
            this.textCues = textCues;
            updateWebView();
        }
        this.canvasSubtitleOutput.update(bitmapCues, style, textSize, textSizeType, bottomPaddingFraction);
        invalidate();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean changed, int left, int top, int right, int bottom) {
        super.onLayout(changed, left, top, right, bottom);
        if (changed && !this.textCues.isEmpty()) {
            updateWebView();
        }
    }

    public void destroy() {
        this.webView.destroy();
    }

    private void updateWebView() {
        float f;
        String lineValue;
        String size;
        String positionProperty;
        String lineProperty;
        int horizontalTranslatePercent;
        int verticalTranslatePercent;
        String sizeProperty;
        String str;
        boolean z;
        int iAnchorTypeToTranslatePercent;
        StringBuilder html = new StringBuilder();
        String cssRgba = HtmlUtils.toCssRgba(this.style.foregroundColor);
        String strConvertTextSizeToCss = convertTextSizeToCss(this.defaultTextSizeType, this.defaultTextSize);
        float f2 = CSS_LINE_HEIGHT;
        html.append(Util.formatInvariant("<body><div style='-webkit-user-select:none;position:fixed;top:0;bottom:0;left:0;right:0;color:%s;font-size:%s;line-height:%.2f;text-shadow:%s;'>", cssRgba, strConvertTextSizeToCss, Float.valueOf(CSS_LINE_HEIGHT), convertCaptionStyleToCssTextShadow(this.style)));
        Map<String, String> cssRuleSets = new HashMap<>();
        String str2 = DEFAULT_BACKGROUND_CSS_CLASS;
        cssRuleSets.put(HtmlUtils.cssAllClassDescendantsSelector(DEFAULT_BACKGROUND_CSS_CLASS), Util.formatInvariant("background-color:%s;", HtmlUtils.toCssRgba(this.style.backgroundColor)));
        int i = 0;
        while (i < this.textCues.size()) {
            Cue cue = this.textCues.get(i);
            float positionPercent = cue.position != -3.4028235E38f ? cue.position * 100.0f : 50.0f;
            int positionAnchorTranslatePercent = anchorTypeToTranslatePercent(cue.positionAnchor);
            boolean lineMeasuredFromEnd = false;
            int lineAnchorTranslatePercent = 0;
            float f3 = f2;
            if (cue.line != -3.4028235E38f) {
                switch (cue.lineType) {
                    case 1:
                        f = -3.4028235E38f;
                        if (cue.line >= 0.0f) {
                            lineValue = Util.formatInvariant("%.2fem", Float.valueOf(cue.line * f3));
                        } else {
                            String lineValue2 = Util.formatInvariant("%.2fem", Float.valueOf(((-cue.line) - 1.0f) * f3));
                            lineMeasuredFromEnd = true;
                            lineValue = lineValue2;
                        }
                        break;
                    default:
                        f = -3.4028235E38f;
                        String lineValue3 = Util.formatInvariant("%.2f%%", Float.valueOf(cue.line * 100.0f));
                        if (cue.verticalType == 1) {
                            iAnchorTypeToTranslatePercent = -anchorTypeToTranslatePercent(cue.lineAnchor);
                        } else {
                            iAnchorTypeToTranslatePercent = anchorTypeToTranslatePercent(cue.lineAnchor);
                        }
                        lineAnchorTranslatePercent = iAnchorTypeToTranslatePercent;
                        lineValue = lineValue3;
                        break;
                }
            } else {
                f = -3.4028235E38f;
                String lineValue4 = Util.formatInvariant("%.2f%%", Float.valueOf((1.0f - this.bottomPaddingFraction) * 100.0f));
                lineAnchorTranslatePercent = -100;
                lineValue = lineValue4;
            }
            if (cue.size != f) {
                size = Util.formatInvariant("%.2f%%", Float.valueOf(cue.size * 100.0f));
            } else {
                size = "fit-content";
            }
            String textAlign = convertAlignmentToCss(cue.textAlignment);
            String writingMode = convertVerticalTypeToCss(cue.verticalType);
            String cueTextSizeCssPx = convertTextSizeToCss(cue.textSizeType, cue.textSize);
            String windowCssColor = HtmlUtils.toCssRgba(cue.windowColorSet ? cue.windowColor : this.style.windowColor);
            int i2 = cue.verticalType;
            String lineProperty2 = TtmlNode.LEFT;
            switch (i2) {
                case 1:
                    if (!lineMeasuredFromEnd) {
                        lineProperty2 = TtmlNode.RIGHT;
                    }
                    positionProperty = "top";
                    lineProperty = lineProperty2;
                    break;
                case 2:
                    if (lineMeasuredFromEnd) {
                        lineProperty2 = TtmlNode.RIGHT;
                    }
                    positionProperty = "top";
                    lineProperty = lineProperty2;
                    break;
                default:
                    String positionProperty2 = lineMeasuredFromEnd ? "bottom" : "top";
                    positionProperty = TtmlNode.LEFT;
                    lineProperty = positionProperty2;
                    break;
            }
            if (cue.verticalType == 2 || cue.verticalType == 1) {
                horizontalTranslatePercent = lineAnchorTranslatePercent;
                verticalTranslatePercent = positionAnchorTranslatePercent;
                sizeProperty = "height";
            } else {
                horizontalTranslatePercent = positionAnchorTranslatePercent;
                verticalTranslatePercent = lineAnchorTranslatePercent;
                sizeProperty = "width";
            }
            SpannedToHtmlConverter.HtmlAndCss htmlAndCss = SpannedToHtmlConverter.convert(cue.text, getContext().getResources().getDisplayMetrics().density);
            for (String cssSelector : cssRuleSets.keySet()) {
                String previousCssDeclarationBlock = cssRuleSets.put(cssSelector, cssRuleSets.get(cssSelector));
                if (previousCssDeclarationBlock == null) {
                    str = str2;
                } else {
                    str = str2;
                    if (!previousCssDeclarationBlock.equals(cssRuleSets.get(cssSelector))) {
                        z = false;
                    }
                    Preconditions.checkState(z);
                    str2 = str;
                }
                z = true;
                Preconditions.checkState(z);
                str2 = str;
            }
            String str3 = str2;
            html.append(Util.formatInvariant("<div style='position:absolute;z-index:%s;%s:%.2f%%;%s:%s;%s:%s;text-align:%s;writing-mode:%s;font-size:%s;background-color:%s;transform:translate(%s%%,%s%%)%s;'>", Integer.valueOf(i), positionProperty, Float.valueOf(positionPercent), lineProperty, lineValue, sizeProperty, size, textAlign, writingMode, cueTextSizeCssPx, windowCssColor, Integer.valueOf(horizontalTranslatePercent), Integer.valueOf(verticalTranslatePercent), getBlockShearTransformFunction(cue))).append(Util.formatInvariant("<span class='%s'>", str3));
            if (cue.multiRowAlignment != null) {
                html.append(Util.formatInvariant("<span style='display:inline-block; text-align:%s;'>", convertAlignmentToCss(cue.multiRowAlignment))).append(htmlAndCss.html).append("</span>");
            } else {
                html.append(htmlAndCss.html);
            }
            html.append("</span>").append("</div>");
            i++;
            str2 = str3;
            f2 = f3;
        }
        html.append("</div></body></html>");
        StringBuilder htmlHead = new StringBuilder();
        htmlHead.append("<html><head><style>");
        for (String cssSelector2 : cssRuleSets.keySet()) {
            htmlHead.append(cssSelector2).append("{").append(cssRuleSets.get(cssSelector2)).append("}");
        }
        htmlHead.append("</style></head>");
        html.insert(0, (CharSequence) htmlHead);
        this.webView.loadData(Base64.encodeToString(html.toString().getBytes(StandardCharsets.UTF_8), 1), "text/html", "base64");
    }

    private static String getBlockShearTransformFunction(Cue cue) {
        String direction;
        if (cue.shearDegrees != 0.0f) {
            if (cue.verticalType == 2 || cue.verticalType == 1) {
                direction = "skewY";
            } else {
                direction = "skewX";
            }
            return Util.formatInvariant("%s(%.2fdeg)", direction, Float.valueOf(cue.shearDegrees));
        }
        return "";
    }

    private String convertTextSizeToCss(int type, float size) {
        float sizePx = SubtitleViewUtils.resolveTextSize(type, size, getHeight(), (getHeight() - getPaddingTop()) - getPaddingBottom());
        if (sizePx == -3.4028235E38f) {
            return "unset";
        }
        float sizeDp = sizePx / getContext().getResources().getDisplayMetrics().density;
        return Util.formatInvariant("%.2fpx", Float.valueOf(sizeDp));
    }

    private static String convertCaptionStyleToCssTextShadow(CaptionStyleCompat style) {
        switch (style.edgeType) {
            case 1:
                return Util.formatInvariant("1px 1px 0 %1$s, 1px -1px 0 %1$s, -1px 1px 0 %1$s, -1px -1px 0 %1$s", HtmlUtils.toCssRgba(style.edgeColor));
            case 2:
                return Util.formatInvariant("0.1em 0.12em 0.15em %s", HtmlUtils.toCssRgba(style.edgeColor));
            case 3:
                return Util.formatInvariant("0.06em 0.08em 0.15em %s", HtmlUtils.toCssRgba(style.edgeColor));
            case 4:
                return Util.formatInvariant("-0.05em -0.05em 0.15em %s", HtmlUtils.toCssRgba(style.edgeColor));
            default:
                return "unset";
        }
    }

    private static String convertVerticalTypeToCss(int verticalType) {
        switch (verticalType) {
            case 1:
                return "vertical-rl";
            case 2:
                return "vertical-lr";
            default:
                return "horizontal-tb";
        }
    }

    private static String convertAlignmentToCss(Layout.Alignment alignment) {
        if (alignment == null) {
            return TtmlNode.CENTER;
        }
        switch (AnonymousClass2.$SwitchMap$android$text$Layout$Alignment[alignment.ordinal()]) {
        }
        return TtmlNode.CENTER;
    }

    /* JADX INFO: renamed from: androidx.media3.ui.WebViewSubtitleOutput$2, reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$android$text$Layout$Alignment = new int[Layout.Alignment.values().length];

        static {
            try {
                $SwitchMap$android$text$Layout$Alignment[Layout.Alignment.ALIGN_NORMAL.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$android$text$Layout$Alignment[Layout.Alignment.ALIGN_OPPOSITE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$android$text$Layout$Alignment[Layout.Alignment.ALIGN_CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    private static int anchorTypeToTranslatePercent(int anchorType) {
        switch (anchorType) {
            case 1:
                return -50;
            case 2:
                return -100;
            default:
                return 0;
        }
    }
}
