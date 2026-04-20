package androidx.media3.exoplayer.audio;

import androidx.media3.common.C;
import androidx.media3.common.util.Util;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes21.dex */
public final class PcmAudioUtil {
    public static ByteBuffer rampUpVolume(ByteBuffer buffer, int pcmEncoding, int pcmFrameSize, int startFrameIndex, int rampFrameCount) {
        ByteBuffer outputBuffer = ByteBuffer.allocateDirect(buffer.remaining()).order(ByteOrder.nativeOrder());
        int frameIndex = startFrameIndex;
        int frameStartPosition = buffer.position();
        while (buffer.hasRemaining() && frameIndex < rampFrameCount) {
            long pcm32Bit = readAs32BitIntPcm(buffer, pcmEncoding);
            write32BitIntPcm(outputBuffer, (int) ((((long) frameIndex) * pcm32Bit) / ((long) rampFrameCount)), pcmEncoding);
            if (buffer.position() == frameStartPosition + pcmFrameSize) {
                frameIndex++;
                frameStartPosition = buffer.position();
            }
        }
        outputBuffer.put(buffer);
        outputBuffer.flip();
        return outputBuffer;
    }

    public static int readAs32BitIntPcm(ByteBuffer buffer, int pcmEncoding) {
        switch (pcmEncoding) {
            case 2:
                return ((buffer.get() & 255) << 16) | ((buffer.get() & 255) << 24);
            case 3:
                return (buffer.get() & 255) << 24;
            case 4:
                float floatValue = Util.constrainValue(buffer.getFloat(), -1.0f, 1.0f);
                if (floatValue < 0.0f) {
                    return (int) ((-floatValue) * (-2.14748365E9f));
                }
                return (int) (2.14748365E9f * floatValue);
            case 21:
                return ((buffer.get() & 255) << 8) | ((buffer.get() & 255) << 16) | ((buffer.get() & 255) << 24);
            case 22:
                return (buffer.get() & 255) | ((buffer.get() & 255) << 8) | ((buffer.get() & 255) << 16) | ((buffer.get() & 255) << 24);
            case 268435456:
                return ((buffer.get() & 255) << 24) | ((buffer.get() & 255) << 16);
            case C.ENCODING_PCM_24BIT_BIG_ENDIAN /* 1342177280 */:
                return ((buffer.get() & 255) << 24) | ((buffer.get() & 255) << 16) | ((buffer.get() & 255) << 8);
            case C.ENCODING_PCM_32BIT_BIG_ENDIAN /* 1610612736 */:
                return ((buffer.get() & 255) << 24) | ((buffer.get() & 255) << 16) | ((buffer.get() & 255) << 8) | (buffer.get() & 255);
            case C.ENCODING_PCM_DOUBLE /* 1879048192 */:
                double doubleValue = Util.constrainValue(buffer.getDouble(), -1.0d, 1.0d);
                if (doubleValue < 0.0d) {
                    return (int) ((-doubleValue) * (-2.147483648E9d));
                }
                return (int) (2.147483647E9d * doubleValue);
            default:
                throw new IllegalStateException();
        }
    }

    public static void write32BitIntPcm(ByteBuffer buffer, int pcm32bit, int pcmEncoding) {
        switch (pcmEncoding) {
            case 2:
                buffer.put((byte) (pcm32bit >> 16));
                buffer.put((byte) (pcm32bit >> 24));
                return;
            case 3:
                buffer.put((byte) (pcm32bit >> 24));
                return;
            case 4:
                if (pcm32bit < 0) {
                    buffer.putFloat((-pcm32bit) / (-2.14748365E9f));
                    return;
                } else {
                    buffer.putFloat(pcm32bit / 2.14748365E9f);
                    return;
                }
            case 21:
                buffer.put((byte) (pcm32bit >> 8));
                buffer.put((byte) (pcm32bit >> 16));
                buffer.put((byte) (pcm32bit >> 24));
                return;
            case 22:
                buffer.put((byte) pcm32bit);
                buffer.put((byte) (pcm32bit >> 8));
                buffer.put((byte) (pcm32bit >> 16));
                buffer.put((byte) (pcm32bit >> 24));
                return;
            case 268435456:
                buffer.put((byte) (pcm32bit >> 24));
                buffer.put((byte) (pcm32bit >> 16));
                return;
            case C.ENCODING_PCM_24BIT_BIG_ENDIAN /* 1342177280 */:
                buffer.put((byte) (pcm32bit >> 24));
                buffer.put((byte) (pcm32bit >> 16));
                buffer.put((byte) (pcm32bit >> 8));
                return;
            case C.ENCODING_PCM_32BIT_BIG_ENDIAN /* 1610612736 */:
                buffer.put((byte) (pcm32bit >> 24));
                buffer.put((byte) (pcm32bit >> 16));
                buffer.put((byte) (pcm32bit >> 8));
                buffer.put((byte) pcm32bit);
                return;
            case C.ENCODING_PCM_DOUBLE /* 1879048192 */:
                if (pcm32bit < 0) {
                    buffer.putDouble((-pcm32bit) / (-2.147483648E9d));
                    return;
                } else {
                    buffer.putDouble(((double) pcm32bit) / 2.147483647E9d);
                    return;
                }
            default:
                throw new IllegalStateException();
        }
    }

    private PcmAudioUtil() {
    }
}
