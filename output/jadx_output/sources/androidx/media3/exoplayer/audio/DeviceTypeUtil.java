package androidx.media3.exoplayer.audio;

import android.os.Build;

/* JADX INFO: loaded from: classes21.dex */
final class DeviceTypeUtil {
    private DeviceTypeUtil() {
    }

    public static boolean isBluetoothDevice(int deviceType) {
        if (deviceType == 8 || deviceType == 7) {
            return true;
        }
        if (Build.VERSION.SDK_INT < 31 || !(deviceType == 26 || deviceType == 27)) {
            return Build.VERSION.SDK_INT >= 33 && deviceType == 30;
        }
        return true;
    }

    public static boolean isBuiltInEarpiece(int deviceType) {
        return deviceType == 1;
    }

    public static boolean isBuiltInSpeaker(int deviceType) {
        return deviceType == 2;
    }

    public static boolean isHdmiArc(int deviceType) {
        return deviceType == 10;
    }

    public static boolean isHdmiEarc(int deviceType) {
        return Build.VERSION.SDK_INT >= 31 && deviceType == 29;
    }

    public static boolean isUsbDevice(int deviceType) {
        if (deviceType == 11 || deviceType == 12) {
            return true;
        }
        return Build.VERSION.SDK_INT >= 31 && deviceType == 22;
    }
}
