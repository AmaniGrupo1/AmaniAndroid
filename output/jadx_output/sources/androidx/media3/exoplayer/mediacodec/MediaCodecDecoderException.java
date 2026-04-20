package androidx.media3.exoplayer.mediacodec;

import android.media.MediaCodec;
import androidx.media3.decoder.DecoderException;

/* JADX INFO: loaded from: classes21.dex */
public class MediaCodecDecoderException extends DecoderException {
    public final MediaCodecInfo codecInfo;
    public final String diagnosticInfo;
    public final int errorCode;

    public MediaCodecDecoderException(Throwable cause, MediaCodecInfo codecInfo) {
        super("Decoder failed: " + (codecInfo == null ? null : codecInfo.name), cause);
        this.codecInfo = codecInfo;
        this.diagnosticInfo = cause instanceof MediaCodec.CodecException ? ((MediaCodec.CodecException) cause).getDiagnosticInfo() : null;
        this.errorCode = getErrorCode(cause);
    }

    private static int getErrorCode(Throwable cause) {
        if (cause instanceof MediaCodec.CodecException) {
            return ((MediaCodec.CodecException) cause).getErrorCode();
        }
        return 0;
    }
}
