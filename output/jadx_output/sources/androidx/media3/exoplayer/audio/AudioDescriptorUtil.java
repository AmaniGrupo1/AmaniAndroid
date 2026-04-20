package androidx.media3.exoplayer.audio;

import android.media.AudioDescriptor;
import android.os.Build;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.ts.PsExtractor;
import com.google.common.base.Ascii;
import com.google.common.collect.ImmutableList;
import com.google.common.primitives.SignedBytes;
import com.google.firebase.database.core.ValidationPath;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.List;
import java.util.TreeSet;
import java.util.function.Function;

/* JADX INFO: loaded from: classes21.dex */
final class AudioDescriptorUtil {
    static final String TAG = "AudioDescriptorUtil";

    private AudioDescriptorUtil() {
    }

    public static ImmutableList<Integer> getAllLpcmChannelMasksFromPcmSads(List<AudioDescriptor> audioDescriptors) {
        if (Build.VERSION.SDK_INT < 31 || audioDescriptors == null) {
            return ImmutableList.of();
        }
        TreeSet<Integer> channelMasks = new TreeSet<>((Comparator<? super Integer>) Comparator.comparing(new Function() { // from class: androidx.media3.exoplayer.audio.AudioDescriptorUtil$$ExternalSyntheticLambda1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Integer.valueOf(Integer.bitCount(((Integer) obj).intValue()));
            }
        }).reversed());
        for (AudioDescriptor audioDescriptor : audioDescriptors) {
            if (audioDescriptor.getStandard() == 1) {
                byte[] data = audioDescriptor.getDescriptor();
                if (data.length != 3) {
                    Log.w(TAG, "Invalid SAD length: " + data.length);
                } else {
                    byte firstByte = data[0];
                    int numChannels = (firstByte & 7) + 1;
                    int audioFormat = (firstByte >> 3) & 15;
                    if (audioFormat == 1) {
                        channelMasks.add(Integer.valueOf(Util.getAudioTrackChannelConfig(numChannels)));
                    }
                }
            }
        }
        return ImmutableList.copyOf((Collection) channelMasks);
    }

    public static ImmutableList<Integer> getAllChannelMasksFromSadbs(List<AudioDescriptor> audioDescriptors) {
        if (Build.VERSION.SDK_INT < 34 || audioDescriptors == null) {
            return ImmutableList.of();
        }
        List<Integer> channelMasks = new ArrayList<>();
        for (AudioDescriptor audioDescriptor : audioDescriptors) {
            if (audioDescriptor.getStandard() == 2) {
                byte[] data = audioDescriptor.getDescriptor();
                if (data.length != 3) {
                    Log.w(TAG, "Invalid SADB length: " + data.length);
                } else {
                    int channelMask = getChannelMaskFromSadb(data);
                    channelMasks.add(Integer.valueOf(channelMask));
                }
            }
        }
        channelMasks.sort(new Comparator() { // from class: androidx.media3.exoplayer.audio.AudioDescriptorUtil$$ExternalSyntheticLambda0
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return AudioDescriptorUtil.lambda$getAllChannelMasksFromSadbs$0((Integer) obj, (Integer) obj2);
            }
        });
        return ImmutableList.copyOf((Collection) channelMasks);
    }

    static /* synthetic */ int lambda$getAllChannelMasksFromSadbs$0(Integer a, Integer b) {
        return Integer.bitCount(b.intValue()) - Integer.bitCount(a.intValue());
    }

    static int getChannelMaskFromSadb(byte[] data) {
        if (Build.VERSION.SDK_INT < 34 || data.length != 3) {
            return 0;
        }
        int channelMask = 0;
        byte byte1 = data[0];
        if ((byte1 & 1) != 0) {
            channelMask = 0 | 12;
        }
        if ((byte1 & 2) != 0) {
            channelMask |= 32;
        }
        if ((byte1 & 4) != 0) {
            channelMask |= 16;
        }
        if ((byte1 & 8) != 0) {
            channelMask |= PsExtractor.AUDIO_STREAM;
        }
        if ((byte1 & Ascii.DLE) != 0) {
            channelMask |= 1024;
        }
        if ((byte1 & 32) != 0) {
            channelMask |= ValidationPath.MAX_PATH_LENGTH_BYTES;
        }
        if ((byte1 & 128) != 0) {
            channelMask |= 201326592;
        }
        byte byte2 = data[1];
        if ((byte2 & 1) != 0) {
            channelMask |= 81920;
        }
        if ((byte2 & 2) != 0) {
            channelMask |= 8192;
        }
        if ((byte2 & 4) != 0) {
            channelMask |= 32768;
        }
        if ((byte2 & 8) != 0) {
            channelMask |= 6144;
        }
        if ((byte2 & Ascii.DLE) != 0) {
            channelMask |= 33554432;
        }
        if ((byte2 & 32) != 0) {
            channelMask |= 262144;
        }
        if ((byte2 & SignedBytes.MAX_POWER_OF_TWO) != 0) {
            channelMask |= 6144;
        }
        if ((byte2 & 128) != 0) {
            channelMask |= 3145728;
        }
        byte byte3 = data[2];
        if ((byte3 & 1) != 0) {
            channelMask |= 655360;
        }
        if ((byte3 & 2) != 0) {
            channelMask |= 8388608;
        }
        if ((byte3 & 4) != 0) {
            return channelMask | 20971520;
        }
        return channelMask;
    }
}
