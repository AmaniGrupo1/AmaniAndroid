package coil.decode;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import androidx.exifinterface.media.ExifInterface;
import coil.util.Bitmaps;
import kotlin.Metadata;
import okio.BufferedSource;

/* JADX INFO: compiled from: ExifUtils.kt */
/* JADX INFO: loaded from: classes21.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bÀ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J \u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rJ\u0016\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcoil/decode/ExifUtils;", "", "<init>", "()V", "PAINT", "Landroid/graphics/Paint;", "getExifData", "Lcoil/decode/ExifData;", "mimeType", "", "source", "Lokio/BufferedSource;", "policy", "Lcoil/decode/ExifOrientationPolicy;", "reverseTransformations", "Landroid/graphics/Bitmap;", "inBitmap", "exifData", "coil-base_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ExifUtils {
    public static final ExifUtils INSTANCE = new ExifUtils();
    private static final Paint PAINT = new Paint(3);

    private ExifUtils() {
    }

    public final ExifData getExifData(String mimeType, BufferedSource source, ExifOrientationPolicy policy) {
        if (ExifUtilsKt.supports(policy, mimeType)) {
            ExifInterface exifInterface = new ExifInterface(new ExifInterfaceInputStream(source.peek().inputStream()));
            return new ExifData(exifInterface.isFlipped(), exifInterface.getRotationDegrees());
        }
        return ExifData.NONE;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0065  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Bitmap reverseTransformations(Bitmap inBitmap, ExifData exifData) {
        Bitmap outBitmap;
        if (!exifData.getIsFlipped() && !ExifUtilsKt.isRotated(exifData)) {
            return inBitmap;
        }
        Matrix matrix = new Matrix();
        float centerX = inBitmap.getWidth() / 2.0f;
        float centerY = inBitmap.getHeight() / 2.0f;
        if (exifData.getIsFlipped()) {
            matrix.postScale(-1.0f, 1.0f, centerX, centerY);
        }
        if (ExifUtilsKt.isRotated(exifData)) {
            matrix.postRotate(exifData.getRotationDegrees(), centerX, centerY);
        }
        RectF rect = new RectF(0.0f, 0.0f, inBitmap.getWidth(), inBitmap.getHeight());
        matrix.mapRect(rect);
        if (rect.left == 0.0f) {
            if (!(rect.top == 0.0f)) {
            }
        } else {
            matrix.postTranslate(-rect.left, -rect.top);
        }
        if (ExifUtilsKt.isSwapped(exifData)) {
            int width$iv = inBitmap.getHeight();
            int height$iv = inBitmap.getWidth();
            Bitmap.Config config$iv = Bitmaps.getSafeConfig(inBitmap);
            outBitmap = Bitmap.createBitmap(width$iv, height$iv, config$iv);
        } else {
            int width$iv2 = inBitmap.getWidth();
            int height$iv2 = inBitmap.getHeight();
            Bitmap.Config config$iv2 = Bitmaps.getSafeConfig(inBitmap);
            outBitmap = Bitmap.createBitmap(width$iv2, height$iv2, config$iv2);
        }
        Bitmap $this$applyCanvas$iv = outBitmap;
        Canvas c$iv = new Canvas($this$applyCanvas$iv);
        c$iv.drawBitmap(inBitmap, matrix, PAINT);
        inBitmap.recycle();
        return outBitmap;
    }
}
