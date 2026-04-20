package androidx.compose.ui.graphics;

import androidx.compose.runtime.ComposerKt;
import androidx.compose.ui.graphics.colorspace.ColorModel;
import androidx.compose.ui.graphics.colorspace.ColorSpace;
import androidx.compose.ui.graphics.colorspace.ColorSpaces;
import androidx.compose.ui.graphics.colorspace.DoubleFunction;
import androidx.compose.ui.graphics.colorspace.Rgb;
import androidx.compose.ui.util.MathHelpersKt;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import kotlin.Metadata;
import kotlin.ULong;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.ws.WebSocketProtocol;

/* JADX INFO: compiled from: Color.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000F\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0013\n\u0002\u0010\u0014\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a9\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\b2\b\b\u0002\u0010\u000b\u001a\u00020\b2\b\b\u0002\u0010\f\u001a\u00020\rH\u0007¢\u0006\u0002\u0010\u000e\u001a9\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\b2\b\b\u0002\u0010\u000b\u001a\u00020\b2\b\b\u0002\u0010\f\u001a\u00020\rH\u0001¢\u0006\u0002\u0010\u000e\u001a\u0017\u0010\u0005\u001a\u00020\u00062\b\b\u0001\u0010\u0010\u001a\u00020\u0011H\u0007¢\u0006\u0002\u0010\u0012\u001a\u0015\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u0013H\u0007¢\u0006\u0002\u0010\u0014\u001a5\u0010\u0005\u001a\u00020\u00062\b\b\u0001\u0010\u0007\u001a\u00020\u00112\b\b\u0001\u0010\t\u001a\u00020\u00112\b\b\u0001\u0010\n\u001a\u00020\u00112\b\b\u0003\u0010\u000b\u001a\u00020\u0011H\u0007¢\u0006\u0002\u0010\u0015\u001a)\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u00062\b\b\u0001\u0010\u0019\u001a\u00020\bH\u0007¢\u0006\u0004\b\u001a\u0010\u001b\u001a\u001b\u0010\u001c\u001a\u00020\u0006*\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\u001e\u0010\u001f\u001a1\u0010 \u001a\u00020\b2\u0006\u0010!\u001a\u00020\b2\u0006\u0010\"\u001a\u00020\b2\u0006\u0010#\u001a\u00020\b2\u0006\u0010$\u001a\u00020\b2\u0006\u0010%\u001a\u00020\bH\u0082\b\u001a\u0013\u0010&\u001a\u00020'*\u00020\u0006H\u0003¢\u0006\u0004\b(\u0010)\u001a\u0013\u0010*\u001a\u00020\b*\u00020\u0006H\u0007¢\u0006\u0004\b+\u0010,\u001a\u0013\u0010-\u001a\u00020\u0011*\u00020\u0006H\u0007¢\u0006\u0004\b.\u0010/\u001a\"\u00109\u001a\u00020\u0006*\u00020\u00062\f\u0010:\u001a\b\u0012\u0004\u0012\u00020\u00060;H\u0086\b¢\u0006\u0004\b<\u0010=\"\u0018\u0010\u0000\u001a\u00020\u00018\u0000X\u0081T¢\u0006\n\n\u0002\u0010\u0004\u0012\u0004\b\u0002\u0010\u0003\"\u001f\u00100\u001a\u000201*\u00020\u00068Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b2\u00103\u001a\u0004\b4\u00105\"\u001f\u00106\u001a\u000201*\u00020\u00068Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b7\u00103\u001a\u0004\b8\u00105¨\u0006>"}, d2 = {"UnspecifiedColor", "Lkotlin/ULong;", "getUnspecifiedColor$annotations", "()V", "J", "Color", "Landroidx/compose/ui/graphics/Color;", "red", "", "green", "blue", "alpha", "colorSpace", "Landroidx/compose/ui/graphics/colorspace/ColorSpace;", "(FFFFLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J", "UncheckedColor", TtmlNode.ATTR_TTS_COLOR, "", "(I)J", "", "(J)J", "(IIII)J", "lerp", TtmlNode.START, "stop", "fraction", "lerp-jxsXWHM", "(JJF)J", "compositeOver", "background", "compositeOver--OWjLjI", "(JJ)J", "compositeComponent", "fgC", "bgC", "fgA", "bgA", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "getComponents", "", "getComponents-8_81llA", "(J)[F", "luminance", "luminance-8_81llA", "(J)F", "toArgb", "toArgb-8_81llA", "(J)I", "isSpecified", "", "isSpecified-8_81llA$annotations", "(J)V", "isSpecified-8_81llA", "(J)Z", "isUnspecified", "isUnspecified-8_81llA$annotations", "isUnspecified-8_81llA", "takeOrElse", "block", "Lkotlin/Function0;", "takeOrElse-DxMtmZc", "(JLkotlin/jvm/functions/Function0;)J", "ui-graphics"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class ColorKt {
    public static final long UnspecifiedColor = 16;

    public static /* synthetic */ void getUnspecifiedColor$annotations() {
    }

    /* JADX INFO: renamed from: isSpecified-8_81llA$annotations, reason: not valid java name */
    public static /* synthetic */ void m4745isSpecified8_81llA$annotations(long j) {
    }

    /* JADX INFO: renamed from: isUnspecified-8_81llA$annotations, reason: not valid java name */
    public static /* synthetic */ void m4747isUnspecified8_81llA$annotations(long j) {
    }

    public static /* synthetic */ long Color$default(float f, float f2, float f3, float f4, ColorSpace colorSpace, int i, Object obj) {
        if ((i & 8) != 0) {
            f4 = 1.0f;
        }
        if ((i & 16) != 0) {
            colorSpace = ColorSpaces.INSTANCE.getSrgb();
        }
        return Color(f, f2, f3, f4, colorSpace);
    }

    /* JADX WARN: Removed duplicated region for block: B:112:0x01e9  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x01f1  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0204  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x020e  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x0251  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x0259  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0162  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0169  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x017c  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x018c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final long Color(float red, float green, float blue, float alpha, ColorSpace colorSpace) {
        float f;
        short r;
        float minimumValue$iv;
        float maximumValue$iv;
        float $this$fastCoerceAtLeast$iv$iv;
        int e$iv;
        int i;
        short g;
        float minimumValue$iv$iv;
        float maximumValue$iv$iv;
        int e$iv2;
        short b;
        float minimumValue$iv$iv2;
        if (colorSpace.getIsSrgb()) {
            float minimumValue$iv$iv3 = 0.0f;
            if (alpha >= 0.0f) {
                minimumValue$iv$iv3 = alpha;
            }
            float maximumValue$iv$iv2 = 1.0f;
            if (minimumValue$iv$iv3 <= 1.0f) {
                maximumValue$iv$iv2 = minimumValue$iv$iv3;
            }
            int i2 = ((int) ((maximumValue$iv$iv2 * 255.0f) + 0.5f)) << 24;
            float minimumValue$iv$iv4 = 0.0f;
            if (red >= 0.0f) {
                minimumValue$iv$iv4 = red;
            }
            float maximumValue$iv$iv3 = 1.0f;
            if (minimumValue$iv$iv4 <= 1.0f) {
                maximumValue$iv$iv3 = minimumValue$iv$iv4;
            }
            int i3 = (((int) ((maximumValue$iv$iv3 * 255.0f) + 0.5f)) << 16) | i2;
            float minimumValue$iv$iv5 = 0.0f;
            if (green >= 0.0f) {
                minimumValue$iv$iv5 = green;
            }
            float maximumValue$iv$iv4 = 1.0f;
            if (minimumValue$iv$iv5 <= 1.0f) {
                maximumValue$iv$iv4 = minimumValue$iv$iv5;
            }
            int i4 = i3 | (((int) ((maximumValue$iv$iv4 * 255.0f) + 0.5f)) << 8);
            float minimumValue$iv$iv6 = 0.0f;
            if (blue >= 0.0f) {
                minimumValue$iv$iv6 = blue;
            }
            float maximumValue$iv$iv5 = 1.0f;
            if (minimumValue$iv$iv6 <= 1.0f) {
                maximumValue$iv$iv5 = minimumValue$iv$iv6;
            }
            int argb = ((int) ((maximumValue$iv$iv5 * 255.0f) + 0.5f)) | i4;
            return Color.m4693constructorimpl(ULong.m8716constructorimpl(ULong.m8716constructorimpl(argb) << 32));
        }
        int argb2 = colorSpace.getComponentCount();
        boolean value$iv = argb2 == 3;
        if (!value$iv) {
            InlineClassHelperKt.throwIllegalArgumentException("Color only works with ColorSpaces with 3 components");
        }
        int id = colorSpace.getId();
        boolean value$iv2 = id != -1;
        if (!value$iv2) {
            InlineClassHelperKt.throwIllegalArgumentException("Unknown color space, please use a color space in ColorSpaces");
        }
        float minimumValue$iv2 = colorSpace.getMinValue(0);
        float maximumValue$iv2 = colorSpace.getMaxValue(0);
        float minimumValue$iv$iv7 = minimumValue$iv2;
        if (red >= minimumValue$iv$iv7) {
            minimumValue$iv$iv7 = red;
        }
        float maximumValue$iv$iv6 = maximumValue$iv2;
        if (minimumValue$iv$iv7 <= maximumValue$iv$iv6) {
            maximumValue$iv$iv6 = minimumValue$iv$iv7;
        }
        int bits$iv = Float.floatToRawIntBits(maximumValue$iv$iv6);
        int s$iv = bits$iv >>> 31;
        int e$iv3 = (bits$iv >>> 23) & 255;
        int m$iv = bits$iv & 8388607;
        int outE$iv = 0;
        int outM$iv = 0;
        if (e$iv3 == 255) {
            outE$iv = 31;
            outM$iv = m$iv != 0 ? 512 : 0;
            f = 0.5f;
        } else {
            int e$iv4 = e$iv3 + ComposerKt.defaultsKey + 15;
            if (e$iv4 >= 31) {
                outE$iv = 49;
                f = 0.5f;
            } else {
                if (e$iv4 > 0) {
                    f = 0.5f;
                    outE$iv = e$iv4;
                    outM$iv = m$iv >> 13;
                    if ((m$iv & 4096) != 0) {
                        int out$iv = (outE$iv << 10) | outM$iv;
                        r = (short) ((out$iv + 1) | (s$iv << 15));
                    }
                    minimumValue$iv = colorSpace.getMinValue(1);
                    maximumValue$iv = colorSpace.getMaxValue(1);
                    $this$fastCoerceAtLeast$iv$iv = green;
                    if ($this$fastCoerceAtLeast$iv$iv < minimumValue$iv) {
                        $this$fastCoerceAtLeast$iv$iv = minimumValue$iv;
                    }
                    if ($this$fastCoerceAtLeast$iv$iv > maximumValue$iv) {
                        $this$fastCoerceAtLeast$iv$iv = maximumValue$iv;
                    }
                    int bits$iv2 = Float.floatToRawIntBits($this$fastCoerceAtLeast$iv$iv);
                    int s$iv2 = bits$iv2 >>> 31;
                    e$iv = (bits$iv2 >>> 23) & 255;
                    int m$iv2 = bits$iv2 & 8388607;
                    int outE$iv2 = 0;
                    int outM$iv2 = 0;
                    if (e$iv != 255) {
                        outE$iv2 = 31;
                        outM$iv2 = m$iv2 != 0 ? 512 : 0;
                        i = 8388607;
                    } else {
                        int e$iv5 = e$iv + ComposerKt.defaultsKey + 15;
                        if (e$iv5 >= 31) {
                            outE$iv2 = 49;
                            i = 8388607;
                        } else if (e$iv5 > 0) {
                            outE$iv2 = e$iv5;
                            outM$iv2 = m$iv2 >> 13;
                            if ((m$iv2 & 4096) != 0) {
                                int out$iv2 = (outE$iv2 << 10) | outM$iv2;
                                i = 8388607;
                                g = (short) ((out$iv2 + 1) | (s$iv2 << 15));
                                float minimumValue$iv3 = colorSpace.getMinValue(2);
                                float maximumValue$iv3 = colorSpace.getMaxValue(2);
                                minimumValue$iv$iv = minimumValue$iv3;
                                if (blue >= minimumValue$iv$iv) {
                                    minimumValue$iv$iv = blue;
                                }
                                maximumValue$iv$iv = maximumValue$iv3;
                                if (minimumValue$iv$iv <= maximumValue$iv$iv) {
                                    maximumValue$iv$iv = minimumValue$iv$iv;
                                }
                                int bits$iv3 = Float.floatToRawIntBits(maximumValue$iv$iv);
                                int s$iv3 = bits$iv3 >>> 31;
                                e$iv2 = (bits$iv3 >>> 23) & 255;
                                int m$iv3 = bits$iv3 & i;
                                int outE$iv3 = 0;
                                int outM$iv3 = 0;
                                if (e$iv2 == 255) {
                                    outE$iv3 = 31;
                                    outM$iv3 = m$iv3 == 0 ? 0 : 512;
                                } else {
                                    int e$iv6 = e$iv2 + ComposerKt.defaultsKey + 15;
                                    if (e$iv6 >= 31) {
                                        outE$iv3 = 49;
                                    } else {
                                        if (e$iv6 > 0) {
                                            outE$iv3 = e$iv6;
                                            outM$iv3 = m$iv3 >> 13;
                                            if ((m$iv3 & 4096) != 0) {
                                                int out$iv3 = (outE$iv3 << 10) | outM$iv3;
                                                b = (short) ((s$iv3 << 15) | (out$iv3 + 1));
                                            }
                                            minimumValue$iv$iv2 = 0.0f;
                                            if (alpha >= 0.0f) {
                                                minimumValue$iv$iv2 = alpha;
                                            }
                                            float maximumValue$iv$iv7 = 1.0f;
                                            if (minimumValue$iv$iv2 <= 1.0f) {
                                                maximumValue$iv$iv7 = minimumValue$iv$iv2;
                                            }
                                            int a = (int) ((maximumValue$iv$iv7 * 1023.0f) + f);
                                            return Color.m4693constructorimpl(ULong.m8716constructorimpl(((((long) r) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 48) | ((((long) g) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 32) | ((WebSocketProtocol.PAYLOAD_SHORT_MAX & ((long) b)) << 16) | ((((long) a) & 1023) << 6) | (((long) id) & 63)));
                                        }
                                        if (e$iv6 >= -10) {
                                            int m$iv4 = (m$iv3 | 8388608) >> (1 - e$iv6);
                                            if ((m$iv4 & 4096) != 0) {
                                                m$iv4 += 8192;
                                            }
                                            outM$iv3 = m$iv4 >> 13;
                                        }
                                    }
                                }
                                int out$iv4 = s$iv3 << 15;
                                b = (short) (out$iv4 | (outE$iv3 << 10) | outM$iv3);
                                minimumValue$iv$iv2 = 0.0f;
                                if (alpha >= 0.0f) {
                                }
                                float maximumValue$iv$iv72 = 1.0f;
                                if (minimumValue$iv$iv2 <= 1.0f) {
                                }
                                int a2 = (int) ((maximumValue$iv$iv72 * 1023.0f) + f);
                                return Color.m4693constructorimpl(ULong.m8716constructorimpl(((((long) r) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 48) | ((((long) g) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 32) | ((WebSocketProtocol.PAYLOAD_SHORT_MAX & ((long) b)) << 16) | ((((long) a2) & 1023) << 6) | (((long) id) & 63)));
                            }
                            i = 8388607;
                        } else if (e$iv5 >= -10) {
                            int m$iv5 = (m$iv2 | 8388608) >> (1 - e$iv5);
                            if ((m$iv5 & 4096) != 0) {
                                m$iv5 += 8192;
                            }
                            outM$iv2 = m$iv5 >> 13;
                            i = 8388607;
                        } else {
                            i = 8388607;
                        }
                    }
                    g = (short) ((s$iv2 << 15) | (outE$iv2 << 10) | outM$iv2);
                    float minimumValue$iv32 = colorSpace.getMinValue(2);
                    float maximumValue$iv32 = colorSpace.getMaxValue(2);
                    minimumValue$iv$iv = minimumValue$iv32;
                    if (blue >= minimumValue$iv$iv) {
                    }
                    maximumValue$iv$iv = maximumValue$iv32;
                    if (minimumValue$iv$iv <= maximumValue$iv$iv) {
                    }
                    int bits$iv32 = Float.floatToRawIntBits(maximumValue$iv$iv);
                    int s$iv32 = bits$iv32 >>> 31;
                    e$iv2 = (bits$iv32 >>> 23) & 255;
                    int m$iv32 = bits$iv32 & i;
                    int outE$iv32 = 0;
                    int outM$iv32 = 0;
                    if (e$iv2 == 255) {
                    }
                    int out$iv42 = s$iv32 << 15;
                    b = (short) (out$iv42 | (outE$iv32 << 10) | outM$iv32);
                    minimumValue$iv$iv2 = 0.0f;
                    if (alpha >= 0.0f) {
                    }
                    float maximumValue$iv$iv722 = 1.0f;
                    if (minimumValue$iv$iv2 <= 1.0f) {
                    }
                    int a22 = (int) ((maximumValue$iv$iv722 * 1023.0f) + f);
                    return Color.m4693constructorimpl(ULong.m8716constructorimpl(((((long) r) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 48) | ((((long) g) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 32) | ((WebSocketProtocol.PAYLOAD_SHORT_MAX & ((long) b)) << 16) | ((((long) a22) & 1023) << 6) | (((long) id) & 63)));
                }
                if (e$iv4 >= -10) {
                    int m$iv6 = (m$iv | 8388608) >> (1 - e$iv4);
                    f = 0.5f;
                    if ((m$iv6 & 4096) != 0) {
                        m$iv6 += 8192;
                    }
                    outM$iv = m$iv6 >> 13;
                } else {
                    f = 0.5f;
                }
            }
        }
        int out$iv5 = s$iv << 15;
        r = (short) (out$iv5 | (outE$iv << 10) | outM$iv);
        minimumValue$iv = colorSpace.getMinValue(1);
        maximumValue$iv = colorSpace.getMaxValue(1);
        $this$fastCoerceAtLeast$iv$iv = green;
        if ($this$fastCoerceAtLeast$iv$iv < minimumValue$iv) {
        }
        if ($this$fastCoerceAtLeast$iv$iv > maximumValue$iv) {
        }
        int bits$iv22 = Float.floatToRawIntBits($this$fastCoerceAtLeast$iv$iv);
        int s$iv22 = bits$iv22 >>> 31;
        e$iv = (bits$iv22 >>> 23) & 255;
        int m$iv22 = bits$iv22 & 8388607;
        int outE$iv22 = 0;
        int outM$iv22 = 0;
        if (e$iv != 255) {
        }
        g = (short) ((s$iv22 << 15) | (outE$iv22 << 10) | outM$iv22);
        float minimumValue$iv322 = colorSpace.getMinValue(2);
        float maximumValue$iv322 = colorSpace.getMaxValue(2);
        minimumValue$iv$iv = minimumValue$iv322;
        if (blue >= minimumValue$iv$iv) {
        }
        maximumValue$iv$iv = maximumValue$iv322;
        if (minimumValue$iv$iv <= maximumValue$iv$iv) {
        }
        int bits$iv322 = Float.floatToRawIntBits(maximumValue$iv$iv);
        int s$iv322 = bits$iv322 >>> 31;
        e$iv2 = (bits$iv322 >>> 23) & 255;
        int m$iv322 = bits$iv322 & i;
        int outE$iv322 = 0;
        int outM$iv322 = 0;
        if (e$iv2 == 255) {
        }
        int out$iv422 = s$iv322 << 15;
        b = (short) (out$iv422 | (outE$iv322 << 10) | outM$iv322);
        minimumValue$iv$iv2 = 0.0f;
        if (alpha >= 0.0f) {
        }
        float maximumValue$iv$iv7222 = 1.0f;
        if (minimumValue$iv$iv2 <= 1.0f) {
        }
        int a222 = (int) ((maximumValue$iv$iv7222 * 1023.0f) + f);
        return Color.m4693constructorimpl(ULong.m8716constructorimpl(((((long) r) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 48) | ((((long) g) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 32) | ((WebSocketProtocol.PAYLOAD_SHORT_MAX & ((long) b)) << 16) | ((((long) a222) & 1023) << 6) | (((long) id) & 63)));
    }

    public static /* synthetic */ long UncheckedColor$default(float f, float f2, float f3, float f4, ColorSpace colorSpace, int i, Object obj) {
        if ((i & 8) != 0) {
            f4 = 1.0f;
        }
        if ((i & 16) != 0) {
            colorSpace = ColorSpaces.INSTANCE.getSrgb();
        }
        return UncheckedColor(f, f2, f3, f4, colorSpace);
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0132  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final long UncheckedColor(float red, float green, float blue, float alpha, ColorSpace colorSpace) {
        char c;
        float f;
        short r;
        int e$iv;
        int i;
        short g;
        int e$iv2;
        short b;
        if (colorSpace.getIsSrgb()) {
            int argb = ((int) ((255.0f * blue) + 0.5f)) | (((int) ((red * 255.0f) + 0.5f)) << 16) | (((int) ((alpha * 255.0f) + 0.5f)) << 24) | (((int) ((green * 255.0f) + 0.5f)) << 8);
            return Color.m4693constructorimpl(ULong.m8716constructorimpl(ULong.m8716constructorimpl(argb) << 32));
        }
        int bits$iv = Float.floatToRawIntBits(red);
        int s$iv = bits$iv >>> 31;
        int e$iv3 = (bits$iv >>> 23) & 255;
        int m$iv = bits$iv & 8388607;
        int outE$iv = 0;
        int outM$iv = 0;
        if (e$iv3 == 255) {
            outE$iv = 31;
            outM$iv = m$iv != 0 ? 512 : 0;
            c = 16;
            f = 0.5f;
        } else {
            int e$iv4 = e$iv3 + ComposerKt.defaultsKey + 15;
            if (e$iv4 >= 31) {
                outE$iv = 49;
                c = 16;
                f = 0.5f;
            } else if (e$iv4 > 0) {
                c = 16;
                outE$iv = e$iv4;
                outM$iv = m$iv >> 13;
                if ((m$iv & 4096) != 0) {
                    int out$iv = (outE$iv << 10) | outM$iv;
                    f = 0.5f;
                    r = (short) ((out$iv + 1) | (s$iv << 15));
                    int bits$iv2 = Float.floatToRawIntBits(green);
                    int s$iv2 = bits$iv2 >>> 31;
                    e$iv = (bits$iv2 >>> 23) & 255;
                    int m$iv2 = bits$iv2 & 8388607;
                    int outE$iv2 = 0;
                    int outM$iv2 = 0;
                    if (e$iv != 255) {
                        outE$iv2 = 31;
                        outM$iv2 = m$iv2 != 0 ? 512 : 0;
                        i = 8388607;
                    } else {
                        int e$iv5 = e$iv + ComposerKt.defaultsKey + 15;
                        if (e$iv5 >= 31) {
                            outE$iv2 = 49;
                            i = 8388607;
                        } else if (e$iv5 > 0) {
                            outE$iv2 = e$iv5;
                            outM$iv2 = m$iv2 >> 13;
                            if ((m$iv2 & 4096) != 0) {
                                int out$iv2 = (outE$iv2 << 10) | outM$iv2;
                                i = 8388607;
                                g = (short) ((out$iv2 + 1) | (s$iv2 << 15));
                                int bits$iv3 = Float.floatToRawIntBits(blue);
                                int s$iv3 = bits$iv3 >>> 31;
                                e$iv2 = (bits$iv3 >>> 23) & 255;
                                int m$iv3 = bits$iv3 & i;
                                int outE$iv3 = 0;
                                int outM$iv3 = 0;
                                if (e$iv2 == 255) {
                                    outE$iv3 = 31;
                                    outM$iv3 = m$iv3 == 0 ? 0 : 512;
                                } else {
                                    int e$iv6 = e$iv2 + ComposerKt.defaultsKey + 15;
                                    if (e$iv6 >= 31) {
                                        outE$iv3 = 49;
                                    } else {
                                        if (e$iv6 > 0) {
                                            outE$iv3 = e$iv6;
                                            outM$iv3 = m$iv3 >> 13;
                                            if ((m$iv3 & 4096) != 0) {
                                                int out$iv3 = (outE$iv3 << 10) | outM$iv3;
                                                b = (short) ((s$iv3 << 15) | (out$iv3 + 1));
                                            }
                                            int a = (int) ((Math.max(0.0f, Math.min(alpha, 1.0f)) * 1023.0f) + f);
                                            int id = colorSpace.getId();
                                            return Color.m4693constructorimpl(ULong.m8716constructorimpl(((((long) r) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 48) | ((((long) g) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 32) | ((WebSocketProtocol.PAYLOAD_SHORT_MAX & ((long) b)) << c) | ((((long) a) & 1023) << 6) | (((long) id) & 63)));
                                        }
                                        if (e$iv6 >= -10) {
                                            int m$iv4 = (m$iv3 | 8388608) >> (1 - e$iv6);
                                            if ((m$iv4 & 4096) != 0) {
                                                m$iv4 += 8192;
                                            }
                                            outM$iv3 = m$iv4 >> 13;
                                        }
                                    }
                                }
                                int out$iv4 = s$iv3 << 15;
                                b = (short) (out$iv4 | (outE$iv3 << 10) | outM$iv3);
                                int a2 = (int) ((Math.max(0.0f, Math.min(alpha, 1.0f)) * 1023.0f) + f);
                                int id2 = colorSpace.getId();
                                return Color.m4693constructorimpl(ULong.m8716constructorimpl(((((long) r) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 48) | ((((long) g) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 32) | ((WebSocketProtocol.PAYLOAD_SHORT_MAX & ((long) b)) << c) | ((((long) a2) & 1023) << 6) | (((long) id2) & 63)));
                            }
                            i = 8388607;
                        } else if (e$iv5 >= -10) {
                            int m$iv5 = (m$iv2 | 8388608) >> (1 - e$iv5);
                            if ((m$iv5 & 4096) != 0) {
                                m$iv5 += 8192;
                            }
                            outM$iv2 = m$iv5 >> 13;
                            i = 8388607;
                        } else {
                            i = 8388607;
                        }
                    }
                    g = (short) ((s$iv2 << 15) | (outE$iv2 << 10) | outM$iv2);
                    int bits$iv32 = Float.floatToRawIntBits(blue);
                    int s$iv32 = bits$iv32 >>> 31;
                    e$iv2 = (bits$iv32 >>> 23) & 255;
                    int m$iv32 = bits$iv32 & i;
                    int outE$iv32 = 0;
                    int outM$iv32 = 0;
                    if (e$iv2 == 255) {
                    }
                    int out$iv42 = s$iv32 << 15;
                    b = (short) (out$iv42 | (outE$iv32 << 10) | outM$iv32);
                    int a22 = (int) ((Math.max(0.0f, Math.min(alpha, 1.0f)) * 1023.0f) + f);
                    int id22 = colorSpace.getId();
                    return Color.m4693constructorimpl(ULong.m8716constructorimpl(((((long) r) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 48) | ((((long) g) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 32) | ((WebSocketProtocol.PAYLOAD_SHORT_MAX & ((long) b)) << c) | ((((long) a22) & 1023) << 6) | (((long) id22) & 63)));
                }
                f = 0.5f;
            } else if (e$iv4 >= -10) {
                int m$iv6 = (m$iv | 8388608) >> (1 - e$iv4);
                c = 16;
                if ((m$iv6 & 4096) != 0) {
                    m$iv6 += 8192;
                }
                outM$iv = m$iv6 >> 13;
                f = 0.5f;
            } else {
                c = 16;
                f = 0.5f;
            }
        }
        r = (short) ((s$iv << 15) | (outE$iv << 10) | outM$iv);
        int bits$iv22 = Float.floatToRawIntBits(green);
        int s$iv22 = bits$iv22 >>> 31;
        e$iv = (bits$iv22 >>> 23) & 255;
        int m$iv22 = bits$iv22 & 8388607;
        int outE$iv22 = 0;
        int outM$iv22 = 0;
        if (e$iv != 255) {
        }
        g = (short) ((s$iv22 << 15) | (outE$iv22 << 10) | outM$iv22);
        int bits$iv322 = Float.floatToRawIntBits(blue);
        int s$iv322 = bits$iv322 >>> 31;
        e$iv2 = (bits$iv322 >>> 23) & 255;
        int m$iv322 = bits$iv322 & i;
        int outE$iv322 = 0;
        int outM$iv322 = 0;
        if (e$iv2 == 255) {
        }
        int out$iv422 = s$iv322 << 15;
        b = (short) (out$iv422 | (outE$iv322 << 10) | outM$iv322);
        int a222 = (int) ((Math.max(0.0f, Math.min(alpha, 1.0f)) * 1023.0f) + f);
        int id222 = colorSpace.getId();
        return Color.m4693constructorimpl(ULong.m8716constructorimpl(((((long) r) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 48) | ((((long) g) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 32) | ((WebSocketProtocol.PAYLOAD_SHORT_MAX & ((long) b)) << c) | ((((long) a222) & 1023) << 6) | (((long) id222) & 63)));
    }

    public static final long Color(int color) {
        return Color.m4693constructorimpl(ULong.m8716constructorimpl(ULong.m8716constructorimpl(color) << 32));
    }

    public static final long Color(long color) {
        return Color.m4693constructorimpl(ULong.m8716constructorimpl(color << 32));
    }

    public static /* synthetic */ long Color$default(int i, int i2, int i3, int i4, int i5, Object obj) {
        if ((i5 & 8) != 0) {
            i4 = 255;
        }
        return Color(i, i2, i3, i4);
    }

    public static final long Color(int red, int green, int blue, int alpha) {
        int color = ((alpha & 255) << 24) | ((red & 255) << 16) | ((green & 255) << 8) | (blue & 255);
        return Color(color);
    }

    /* JADX INFO: renamed from: lerp-jxsXWHM, reason: not valid java name */
    public static final long m4748lerpjxsXWHM(long j, long j2, float fraction) {
        ColorSpace colorSpace = ColorSpaces.INSTANCE.getOklab();
        long startColor = Color.m4694convertvNxB06k(j, colorSpace);
        long endColor = Color.m4694convertvNxB06k(j2, colorSpace);
        float startAlpha = Color.m4699getAlphaimpl(startColor);
        float startL = Color.m4703getRedimpl(startColor);
        float startA = Color.m4702getGreenimpl(startColor);
        float startB = Color.m4700getBlueimpl(startColor);
        float endAlpha = Color.m4699getAlphaimpl(endColor);
        float endL = Color.m4703getRedimpl(endColor);
        float endA = Color.m4702getGreenimpl(endColor);
        float endB = Color.m4700getBlueimpl(endColor);
        float minimumValue$iv$iv = 0.0f;
        if (fraction >= 0.0f) {
            minimumValue$iv$iv = fraction;
        }
        float maximumValue$iv$iv = 1.0f;
        if (minimumValue$iv$iv <= 1.0f) {
            maximumValue$iv$iv = minimumValue$iv$iv;
        }
        float minimumValue$iv = maximumValue$iv$iv;
        long interpolated = UncheckedColor(MathHelpersKt.lerp(startL, endL, minimumValue$iv), MathHelpersKt.lerp(startA, endA, minimumValue$iv), MathHelpersKt.lerp(startB, endB, minimumValue$iv), MathHelpersKt.lerp(startAlpha, endAlpha, minimumValue$iv), colorSpace);
        return Color.m4694convertvNxB06k(interpolated, Color.m4701getColorSpaceimpl(j2));
    }

    /* JADX INFO: renamed from: compositeOver--OWjLjI, reason: not valid java name */
    public static final long m4742compositeOverOWjLjI(long j, long j2) {
        float r;
        float f;
        long fg = Color.m4694convertvNxB06k(j, Color.m4701getColorSpaceimpl(j2));
        float bgA = Color.m4699getAlphaimpl(j2);
        float fgA = Color.m4699getAlphaimpl(fg);
        float a = ((1.0f - fgA) * bgA) + fgA;
        float fgC$iv = Color.m4703getRedimpl(fg);
        float bgC$iv = Color.m4703getRedimpl(j2);
        float b = 0.0f;
        if (!(a == 0.0f)) {
            r = ((fgC$iv * fgA) + ((bgC$iv * bgA) * (1.0f - fgA))) / a;
        } else {
            r = 0.0f;
        }
        float fgC$iv2 = Color.m4702getGreenimpl(fg);
        float bgC$iv2 = Color.m4702getGreenimpl(j2);
        if (!(a == 0.0f)) {
            f = ((fgC$iv2 * fgA) + ((bgC$iv2 * bgA) * (1.0f - fgA))) / a;
        } else {
            f = 0.0f;
        }
        float fgC$iv3 = f;
        float fgC$iv4 = Color.m4700getBlueimpl(fg);
        float bgC$iv3 = Color.m4700getBlueimpl(j2);
        if (!(a == 0.0f)) {
            b = ((fgC$iv4 * fgA) + ((bgC$iv3 * bgA) * (1.0f - fgA))) / a;
        }
        return UncheckedColor(r, fgC$iv3, b, a, Color.m4701getColorSpaceimpl(j2));
    }

    private static final float compositeComponent(float fgC, float bgC, float fgA, float bgA, float a) {
        if (a == 0.0f) {
            return 0.0f;
        }
        return ((fgC * fgA) + ((bgC * bgA) * (1.0f - fgA))) / a;
    }

    /* JADX INFO: renamed from: getComponents-8_81llA, reason: not valid java name */
    private static final float[] m4743getComponents8_81llA(long j) {
        return new float[]{Color.m4703getRedimpl(j), Color.m4702getGreenimpl(j), Color.m4700getBlueimpl(j), Color.m4699getAlphaimpl(j)};
    }

    /* JADX INFO: renamed from: luminance-8_81llA, reason: not valid java name */
    public static final float m4749luminance8_81llA(long j) {
        ColorSpace colorSpace = Color.m4701getColorSpaceimpl(j);
        boolean value$iv = ColorModel.m5127equalsimpl0(colorSpace.getModel(), ColorModel.INSTANCE.m5134getRgbxdoWZVw());
        if (!value$iv) {
            InlineClassHelperKt.throwIllegalArgumentException("The specified color must be encoded in an RGB color space. The supplied color space is " + ((Object) ColorModel.m5130toStringimpl(colorSpace.getModel())));
        }
        Intrinsics.checkNotNull(colorSpace, "null cannot be cast to non-null type androidx.compose.ui.graphics.colorspace.Rgb");
        DoubleFunction eotf = ((Rgb) colorSpace).getEotfFunc();
        double r = eotf.invoke(Color.m4703getRedimpl(j));
        double g = eotf.invoke(Color.m4702getGreenimpl(j));
        double b = eotf.invoke(Color.m4700getBlueimpl(j));
        float $this$fastCoerceIn$iv = (float) ((0.2126d * r) + (0.7152d * g) + (0.0722d * b));
        float minimumValue$iv$iv = 0.0f;
        if ($this$fastCoerceIn$iv >= 0.0f) {
            minimumValue$iv$iv = $this$fastCoerceIn$iv;
        }
        if (minimumValue$iv$iv > 1.0f) {
            return 1.0f;
        }
        float maximumValue$iv$iv = minimumValue$iv$iv;
        return maximumValue$iv$iv;
    }

    /* JADX INFO: renamed from: toArgb-8_81llA, reason: not valid java name */
    public static final int m4751toArgb8_81llA(long j) {
        return (int) ULong.m8716constructorimpl(Color.m4694convertvNxB06k(j, ColorSpaces.INSTANCE.getSrgb()) >>> 32);
    }

    /* JADX INFO: renamed from: isSpecified-8_81llA, reason: not valid java name */
    public static final boolean m4744isSpecified8_81llA(long j) {
        return j != 16;
    }

    /* JADX INFO: renamed from: isUnspecified-8_81llA, reason: not valid java name */
    public static final boolean m4746isUnspecified8_81llA(long j) {
        return j == 16;
    }

    /* JADX INFO: renamed from: takeOrElse-DxMtmZc, reason: not valid java name */
    public static final long m4750takeOrElseDxMtmZc(long j, Function0<Color> function0) {
        return (j > 16L ? 1 : (j == 16L ? 0 : -1)) != 0 ? j : function0.invoke().m4707unboximpl();
    }
}
