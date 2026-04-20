package androidx.media3.exoplayer.source;

import android.net.Uri;
import androidx.media3.common.ParserException;
import androidx.media3.extractor.SniffFailure;
import com.google.common.collect.ImmutableList;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes21.dex */
public class UnrecognizedInputFormatException extends ParserException {
    public final ImmutableList<SniffFailure> sniffFailures;
    public final Uri uri;

    @Deprecated
    public UnrecognizedInputFormatException(String message, Uri uri) {
        this(message, uri, ImmutableList.of());
    }

    public UnrecognizedInputFormatException(String message, Uri uri, List<? extends SniffFailure> sniffFailures) {
        super(message, null, false, 1);
        this.uri = uri;
        this.sniffFailures = ImmutableList.copyOf((Collection) sniffFailures);
    }

    @Override // androidx.media3.common.ParserException, java.lang.Throwable
    public String getMessage() {
        String superMessage = super.getMessage();
        if (this.sniffFailures.isEmpty()) {
            return superMessage;
        }
        return superMessage + "\nsniff failures: " + this.sniffFailures;
    }
}
