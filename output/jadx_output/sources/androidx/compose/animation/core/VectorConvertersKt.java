package androidx.compose.animation.core;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.DpOffset;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import androidx.exifinterface.media.ExifInterface;
import androidx.media3.extractor.text.ttml.TtmlNode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FloatCompanionObject;
import kotlin.jvm.internal.IntCompanionObject;

/* JADX INFO: compiled from: VectorConverters.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0088\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\u001aJ\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u0001\"\u0004\b\u0000\u0010\u0002\"\b\b\u0001\u0010\u0003*\u00020\u00042\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u00062\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u0002H\u00020\u0006\u001a!\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\tH\u0080\b\"!\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u000e0\u0001*\u00020\u000f8F¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011\"!\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u000e0\u0001*\u00020\u00138F¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0014\"\u001a\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u000e0\u0001X\u0082\u0004¢\u0006\u0002\n\u0000\"\u001a\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u000e0\u0001X\u0082\u0004¢\u0006\u0002\n\u0000\"!\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00180\u0001*\u00020\u00198F¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u001a\"!\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u000e0\u0001*\u00020\u001c8F¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u001d\"!\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u001f0\u0001*\u00020 8F¢\u0006\u0006\u001a\u0004\b\u0010\u0010!\"!\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020\u001f0\u0001*\u00020#8F¢\u0006\u0006\u001a\u0004\b\u0010\u0010$\"!\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020\u001f0\u0001*\u00020&8F¢\u0006\u0006\u001a\u0004\b\u0010\u0010'\"!\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020(\u0012\u0004\u0012\u00020\u001f0\u0001*\u00020)8F¢\u0006\u0006\u001a\u0004\b\u0010\u0010*\"!\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020+\u0012\u0004\u0012\u00020\u001f0\u0001*\u00020,8F¢\u0006\u0006\u001a\u0004\b\u0010\u0010-\"\u001a\u0010.\u001a\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u000e0\u0001X\u0082\u0004¢\u0006\u0002\n\u0000\"\u001a\u0010/\u001a\u000e\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u001f0\u0001X\u0082\u0004¢\u0006\u0002\n\u0000\"\u001a\u00100\u001a\u000e\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020\u001f0\u0001X\u0082\u0004¢\u0006\u0002\n\u0000\"\u001a\u00101\u001a\u000e\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020\u001f0\u0001X\u0082\u0004¢\u0006\u0002\n\u0000\"\u001a\u00102\u001a\u000e\u0012\u0004\u0012\u00020(\u0012\u0004\u0012\u00020\u001f0\u0001X\u0082\u0004¢\u0006\u0002\n\u0000\"\u001a\u00103\u001a\u000e\u0012\u0004\u0012\u00020+\u0012\u0004\u0012\u00020\u001f0\u0001X\u0082\u0004¢\u0006\u0002\n\u0000\"\u001a\u00104\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00180\u0001X\u0082\u0004¢\u0006\u0002\n\u0000¨\u00065"}, d2 = {"TwoWayConverter", "Landroidx/compose/animation/core/TwoWayConverter;", ExifInterface.GPS_DIRECTION_TRUE, ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Landroidx/compose/animation/core/AnimationVector;", "convertToVector", "Lkotlin/Function1;", "convertFromVector", "lerp", "", TtmlNode.START, "stop", "fraction", "VectorConverter", "Landroidx/compose/animation/core/AnimationVector1D;", "Lkotlin/Float$Companion;", "getVectorConverter", "(Lkotlin/jvm/internal/FloatCompanionObject;)Landroidx/compose/animation/core/TwoWayConverter;", "", "Lkotlin/Int$Companion;", "(Lkotlin/jvm/internal/IntCompanionObject;)Landroidx/compose/animation/core/TwoWayConverter;", "FloatToVector", "IntToVector", "Landroidx/compose/ui/geometry/Rect;", "Landroidx/compose/animation/core/AnimationVector4D;", "Landroidx/compose/ui/geometry/Rect$Companion;", "(Landroidx/compose/ui/geometry/Rect$Companion;)Landroidx/compose/animation/core/TwoWayConverter;", "Landroidx/compose/ui/unit/Dp;", "Landroidx/compose/ui/unit/Dp$Companion;", "(Landroidx/compose/ui/unit/Dp$Companion;)Landroidx/compose/animation/core/TwoWayConverter;", "Landroidx/compose/ui/unit/DpOffset;", "Landroidx/compose/animation/core/AnimationVector2D;", "Landroidx/compose/ui/unit/DpOffset$Companion;", "(Landroidx/compose/ui/unit/DpOffset$Companion;)Landroidx/compose/animation/core/TwoWayConverter;", "Landroidx/compose/ui/geometry/Size;", "Landroidx/compose/ui/geometry/Size$Companion;", "(Landroidx/compose/ui/geometry/Size$Companion;)Landroidx/compose/animation/core/TwoWayConverter;", "Landroidx/compose/ui/geometry/Offset;", "Landroidx/compose/ui/geometry/Offset$Companion;", "(Landroidx/compose/ui/geometry/Offset$Companion;)Landroidx/compose/animation/core/TwoWayConverter;", "Landroidx/compose/ui/unit/IntOffset;", "Landroidx/compose/ui/unit/IntOffset$Companion;", "(Landroidx/compose/ui/unit/IntOffset$Companion;)Landroidx/compose/animation/core/TwoWayConverter;", "Landroidx/compose/ui/unit/IntSize;", "Landroidx/compose/ui/unit/IntSize$Companion;", "(Landroidx/compose/ui/unit/IntSize$Companion;)Landroidx/compose/animation/core/TwoWayConverter;", "DpToVector", "DpOffsetToVector", "SizeToVector", "OffsetToVector", "IntOffsetToVector", "IntSizeToVector", "RectToVector", "animation-core"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class VectorConvertersKt {
    private static final TwoWayConverter<Float, AnimationVector1D> FloatToVector = TwoWayConverter(new Function1() { // from class: androidx.compose.animation.core.VectorConvertersKt$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            return VectorConvertersKt.FloatToVector$lambda$0(((Float) obj).floatValue());
        }
    }, new Function1() { // from class: androidx.compose.animation.core.VectorConvertersKt$$ExternalSyntheticLambda9
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            return Float.valueOf(((AnimationVector1D) obj).getValue());
        }
    });
    private static final TwoWayConverter<Integer, AnimationVector1D> IntToVector = TwoWayConverter(new Function1() { // from class: androidx.compose.animation.core.VectorConvertersKt$$ExternalSyntheticLambda10
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            return VectorConvertersKt.IntToVector$lambda$0(((Integer) obj).intValue());
        }
    }, new Function1() { // from class: androidx.compose.animation.core.VectorConvertersKt$$ExternalSyntheticLambda11
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            return Integer.valueOf(VectorConvertersKt.IntToVector$lambda$1((AnimationVector1D) obj));
        }
    });
    private static final TwoWayConverter<Dp, AnimationVector1D> DpToVector = TwoWayConverter(new Function1() { // from class: androidx.compose.animation.core.VectorConvertersKt$$ExternalSyntheticLambda12
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            return VectorConvertersKt.DpToVector$lambda$0((Dp) obj);
        }
    }, new Function1() { // from class: androidx.compose.animation.core.VectorConvertersKt$$ExternalSyntheticLambda13
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            return Dp.m7503boximpl(Dp.m7505constructorimpl(((AnimationVector1D) obj).getValue()));
        }
    });
    private static final TwoWayConverter<DpOffset, AnimationVector2D> DpOffsetToVector = TwoWayConverter(new Function1() { // from class: androidx.compose.animation.core.VectorConvertersKt$$ExternalSyntheticLambda14
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            return VectorConvertersKt.DpOffsetToVector$lambda$0((DpOffset) obj);
        }
    }, new Function1() { // from class: androidx.compose.animation.core.VectorConvertersKt$$ExternalSyntheticLambda15
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            return VectorConvertersKt.DpOffsetToVector$lambda$1((AnimationVector2D) obj);
        }
    });
    private static final TwoWayConverter<Size, AnimationVector2D> SizeToVector = TwoWayConverter(new Function1() { // from class: androidx.compose.animation.core.VectorConvertersKt$$ExternalSyntheticLambda16
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            return VectorConvertersKt.SizeToVector$lambda$0((Size) obj);
        }
    }, new Function1() { // from class: androidx.compose.animation.core.VectorConvertersKt$$ExternalSyntheticLambda17
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            return VectorConvertersKt.SizeToVector$lambda$1((AnimationVector2D) obj);
        }
    });
    private static final TwoWayConverter<Offset, AnimationVector2D> OffsetToVector = TwoWayConverter(new Function1() { // from class: androidx.compose.animation.core.VectorConvertersKt$$ExternalSyntheticLambda1
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            return VectorConvertersKt.OffsetToVector$lambda$0((Offset) obj);
        }
    }, new Function1() { // from class: androidx.compose.animation.core.VectorConvertersKt$$ExternalSyntheticLambda2
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            return VectorConvertersKt.OffsetToVector$lambda$1((AnimationVector2D) obj);
        }
    });
    private static final TwoWayConverter<IntOffset, AnimationVector2D> IntOffsetToVector = TwoWayConverter(new Function1() { // from class: androidx.compose.animation.core.VectorConvertersKt$$ExternalSyntheticLambda3
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            return VectorConvertersKt.IntOffsetToVector$lambda$0((IntOffset) obj);
        }
    }, new Function1() { // from class: androidx.compose.animation.core.VectorConvertersKt$$ExternalSyntheticLambda4
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            return VectorConvertersKt.IntOffsetToVector$lambda$1((AnimationVector2D) obj);
        }
    });
    private static final TwoWayConverter<IntSize, AnimationVector2D> IntSizeToVector = TwoWayConverter(new Function1() { // from class: androidx.compose.animation.core.VectorConvertersKt$$ExternalSyntheticLambda5
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            return VectorConvertersKt.IntSizeToVector$lambda$0((IntSize) obj);
        }
    }, new Function1() { // from class: androidx.compose.animation.core.VectorConvertersKt$$ExternalSyntheticLambda6
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            return VectorConvertersKt.IntSizeToVector$lambda$1((AnimationVector2D) obj);
        }
    });
    private static final TwoWayConverter<Rect, AnimationVector4D> RectToVector = TwoWayConverter(new Function1() { // from class: androidx.compose.animation.core.VectorConvertersKt$$ExternalSyntheticLambda7
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            return VectorConvertersKt.RectToVector$lambda$0((Rect) obj);
        }
    }, new Function1() { // from class: androidx.compose.animation.core.VectorConvertersKt$$ExternalSyntheticLambda8
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            return VectorConvertersKt.RectToVector$lambda$1((AnimationVector4D) obj);
        }
    });

    public static final <T, V extends AnimationVector> TwoWayConverter<T, V> TwoWayConverter(Function1<? super T, ? extends V> function1, Function1<? super V, ? extends T> function12) {
        return new TwoWayConverterImpl(function1, function12);
    }

    public static final float lerp(float start, float stop, float fraction) {
        return ((1 - fraction) * start) + (stop * fraction);
    }

    public static final TwoWayConverter<Float, AnimationVector1D> getVectorConverter(FloatCompanionObject $this$VectorConverter) {
        return FloatToVector;
    }

    public static final TwoWayConverter<Integer, AnimationVector1D> getVectorConverter(IntCompanionObject $this$VectorConverter) {
        return IntToVector;
    }

    static final AnimationVector1D FloatToVector$lambda$0(float it) {
        return new AnimationVector1D(it);
    }

    static final AnimationVector1D IntToVector$lambda$0(int it) {
        return new AnimationVector1D(it);
    }

    static final int IntToVector$lambda$1(AnimationVector1D it) {
        return (int) it.getValue();
    }

    public static final TwoWayConverter<Rect, AnimationVector4D> getVectorConverter(Rect.Companion $this$VectorConverter) {
        return RectToVector;
    }

    public static final TwoWayConverter<Dp, AnimationVector1D> getVectorConverter(Dp.Companion $this$VectorConverter) {
        return DpToVector;
    }

    public static final TwoWayConverter<DpOffset, AnimationVector2D> getVectorConverter(DpOffset.Companion $this$VectorConverter) {
        return DpOffsetToVector;
    }

    public static final TwoWayConverter<Size, AnimationVector2D> getVectorConverter(Size.Companion $this$VectorConverter) {
        return SizeToVector;
    }

    public static final TwoWayConverter<Offset, AnimationVector2D> getVectorConverter(Offset.Companion $this$VectorConverter) {
        return OffsetToVector;
    }

    public static final TwoWayConverter<IntOffset, AnimationVector2D> getVectorConverter(IntOffset.Companion $this$VectorConverter) {
        return IntOffsetToVector;
    }

    public static final TwoWayConverter<IntSize, AnimationVector2D> getVectorConverter(IntSize.Companion $this$VectorConverter) {
        return IntSizeToVector;
    }

    static final AnimationVector1D DpToVector$lambda$0(Dp it) {
        return new AnimationVector1D(it.m7519unboximpl());
    }

    static final AnimationVector2D DpOffsetToVector$lambda$0(DpOffset it) {
        return new AnimationVector2D(DpOffset.m7566getXD9Ej5fM(it.m7574unboximpl()), DpOffset.m7568getYD9Ej5fM(it.m7574unboximpl()));
    }

    static final DpOffset DpOffsetToVector$lambda$1(AnimationVector2D it) {
        float $this$dp$iv = it.getV1();
        float $this$dp$iv2 = Dp.m7505constructorimpl($this$dp$iv);
        float $this$dp$iv3 = it.getV2();
        float $this$dp$iv4 = Dp.m7505constructorimpl($this$dp$iv3);
        long v1$iv$iv = Float.floatToRawIntBits($this$dp$iv2);
        long v2$iv$iv = Float.floatToRawIntBits($this$dp$iv4);
        return DpOffset.m7560boximpl(DpOffset.m7561constructorimpl((v1$iv$iv << 32) | (4294967295L & v2$iv$iv)));
    }

    static final AnimationVector2D SizeToVector$lambda$0(Size it) {
        int bits$iv$iv$iv = (int) (it.m4526unboximpl() >> 32);
        float fIntBitsToFloat = Float.intBitsToFloat(bits$iv$iv$iv);
        int bits$iv$iv$iv2 = (int) (4294967295L & it.m4526unboximpl());
        return new AnimationVector2D(fIntBitsToFloat, Float.intBitsToFloat(bits$iv$iv$iv2));
    }

    static final Size SizeToVector$lambda$1(AnimationVector2D it) {
        float width$iv = it.getV1();
        float height$iv = it.getV2();
        long v1$iv$iv = Float.floatToRawIntBits(width$iv);
        long v2$iv$iv = Float.floatToRawIntBits(height$iv);
        return Size.m4509boximpl(Size.m4512constructorimpl((v1$iv$iv << 32) | (4294967295L & v2$iv$iv)));
    }

    static final AnimationVector2D OffsetToVector$lambda$0(Offset it) {
        int bits$iv$iv$iv = (int) (it.m4462unboximpl() >> 32);
        float fIntBitsToFloat = Float.intBitsToFloat(bits$iv$iv$iv);
        int bits$iv$iv$iv2 = (int) (4294967295L & it.m4462unboximpl());
        return new AnimationVector2D(fIntBitsToFloat, Float.intBitsToFloat(bits$iv$iv$iv2));
    }

    static final Offset OffsetToVector$lambda$1(AnimationVector2D it) {
        float x$iv = it.getV1();
        float y$iv = it.getV2();
        long v1$iv$iv = Float.floatToRawIntBits(x$iv);
        long v2$iv$iv = Float.floatToRawIntBits(y$iv);
        return Offset.m4441boximpl(Offset.m4444constructorimpl((v1$iv$iv << 32) | (4294967295L & v2$iv$iv)));
    }

    static final AnimationVector2D IntOffsetToVector$lambda$0(IntOffset it) {
        return new AnimationVector2D(IntOffset.m7633getXimpl(it.m7642unboximpl()), IntOffset.m7634getYimpl(it.m7642unboximpl()));
    }

    static final IntOffset IntOffsetToVector$lambda$1(AnimationVector2D it) {
        float $this$fastRoundToInt$iv = it.getV1();
        int x$iv = Math.round($this$fastRoundToInt$iv);
        float $this$fastRoundToInt$iv2 = it.getV2();
        int y$iv = Math.round($this$fastRoundToInt$iv2);
        return IntOffset.m7624boximpl(IntOffset.m7627constructorimpl((((long) x$iv) << 32) | (((long) y$iv) & 4294967295L)));
    }

    static final AnimationVector2D IntSizeToVector$lambda$0(IntSize it) {
        return new AnimationVector2D((int) (it.m7680unboximpl() >> 32), (int) (4294967295L & it.m7680unboximpl()));
    }

    static final IntSize IntSizeToVector$lambda$1(AnimationVector2D it) {
        float $this$fastRoundToInt$iv = it.getV1();
        int $this$fastCoerceAtLeast$iv = Math.round($this$fastRoundToInt$iv);
        int minimumValue$iv = $this$fastCoerceAtLeast$iv >= 0 ? $this$fastCoerceAtLeast$iv : 0;
        float $this$fastRoundToInt$iv2 = it.getV2();
        int $this$fastCoerceAtLeast$iv2 = Math.round($this$fastRoundToInt$iv2);
        if ($this$fastCoerceAtLeast$iv2 < 0) {
            $this$fastCoerceAtLeast$iv2 = 0;
        }
        int val2$iv$iv = $this$fastCoerceAtLeast$iv2;
        int val1$iv$iv = minimumValue$iv;
        return IntSize.m7668boximpl(IntSize.m7671constructorimpl((((long) val1$iv$iv) << 32) | (((long) val2$iv$iv) & 4294967295L)));
    }

    static final AnimationVector4D RectToVector$lambda$0(Rect it) {
        return new AnimationVector4D(it.getLeft(), it.getTop(), it.getRight(), it.getBottom());
    }

    static final Rect RectToVector$lambda$1(AnimationVector4D it) {
        return new Rect(it.getV1(), it.getV2(), it.getV3(), it.getV4());
    }
}
