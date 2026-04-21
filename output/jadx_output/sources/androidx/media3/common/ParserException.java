package androidx.media3.common;

import java.io.IOException;

/* JADX INFO: loaded from: classes21.dex */
public class ParserException extends IOException {
    public final boolean contentIsMalformed;
    public final int dataType;

    public static ParserException createForMalformedDataOfUnknownType(String message, Throwable cause) {
        return new ParserException(message, cause, true, 0);
    }

    public static ParserException createForMalformedContainer(String message, Throwable cause) {
        return new ParserException(message, cause, true, 1);
    }

    public static ParserException createForMalformedManifest(String message, Throwable cause) {
        return new ParserException(message, cause, true, 4);
    }

    public static ParserException createForMalformedSteeringManifest(String message, Throwable cause) {
        return new ParserException(message, cause, true, 8);
    }

    public static ParserException createForManifestWithUnsupportedFeature(String message, Throwable cause) {
        return new ParserException(message, cause, false, 4);
    }

    public static ParserException createForUnsupportedContainerFeature(String message) {
        return new ParserException(message, null, false, 1);
    }

    protected ParserException(String message, Throwable cause, boolean contentIsMalformed, int dataType) {
        super(message, cause);
        this.contentIsMalformed = contentIsMalformed;
        this.dataType = dataType;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        String superMessage = super.getMessage();
        return (superMessage != null ? superMessage + " " : "") + "{contentIsMalformed=" + this.contentIsMalformed + ", dataType=" + this.dataType + "}";
    }
}
