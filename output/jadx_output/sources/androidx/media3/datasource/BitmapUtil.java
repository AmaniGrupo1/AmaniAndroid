package androidx.media3.datasource;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.os.Build;
import androidx.exifinterface.media.ExifInterface;
import androidx.media3.common.ParserException;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes21.dex */
public final class BitmapUtil {
    private BitmapUtil() {
    }

    public static Bitmap decode(byte[] data, int length, BitmapFactory.Options options, int maximumOutputDimension) throws IOException {
        if (maximumOutputDimension != -1) {
            if (options == null) {
                options = new BitmapFactory.Options();
            }
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeByteArray(data, 0, length, options);
            options.inJustDecodeBounds = false;
            options.inSampleSize = 1;
            for (int largerDimensions = Math.max(options.outWidth, options.outHeight); largerDimensions > maximumOutputDimension; largerDimensions /= 2) {
                options.inSampleSize *= 2;
            }
        }
        Bitmap bitmap = BitmapFactory.decodeByteArray(data, 0, length, options);
        if (options != null) {
            options.inSampleSize = 1;
        }
        if (bitmap == null) {
            throw ParserException.createForMalformedContainer("Could not decode image data", new IllegalStateException());
        }
        InputStream inputStream = new ByteArrayInputStream(data);
        try {
            ExifInterface exifInterface = new ExifInterface(inputStream);
            inputStream.close();
            int rotationDegrees = exifInterface.getRotationDegrees();
            if (rotationDegrees != 0) {
                Matrix matrix = new Matrix();
                matrix.postRotate(rotationDegrees);
                return Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, false);
            }
            return bitmap;
        } finally {
        }
    }

    public static Bitmap makeShared(Bitmap bitmap) {
        return Build.VERSION.SDK_INT >= 31 ? bitmap.asShared() : bitmap;
    }
}
