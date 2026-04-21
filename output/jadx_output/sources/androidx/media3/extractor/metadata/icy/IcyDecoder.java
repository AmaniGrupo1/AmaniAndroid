package androidx.media3.extractor.metadata.icy;

import androidx.media3.common.Metadata;
import androidx.media3.extractor.metadata.MetadataInputBuffer;
import androidx.media3.extractor.metadata.SimpleMetadataDecoder;
import com.google.common.base.Ascii;
import java.nio.ByteBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.StandardCharsets;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes21.dex */
public final class IcyDecoder extends SimpleMetadataDecoder {
    private static final Pattern METADATA_ELEMENT = Pattern.compile("(.+?)='(.*?)';", 32);
    private static final String STREAM_KEY_NAME = "streamtitle";
    private static final String STREAM_KEY_URL = "streamurl";
    private final CharsetDecoder utf8Decoder = StandardCharsets.UTF_8.newDecoder();
    private final CharsetDecoder iso88591Decoder = StandardCharsets.ISO_8859_1.newDecoder();

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:20:0x005d  */
    @Override // androidx.media3.extractor.metadata.SimpleMetadataDecoder
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected Metadata decode(MetadataInputBuffer inputBuffer, ByteBuffer buffer) {
        String icyString = decodeToString(buffer);
        byte[] icyBytes = new byte[buffer.limit()];
        buffer.get(icyBytes);
        if (icyString == null) {
            return new Metadata(new IcyInfo(icyBytes, null, null));
        }
        String name = null;
        String url = null;
        Matcher matcher = METADATA_ELEMENT.matcher(icyString);
        for (int index = 0; matcher.find(index); index = matcher.end()) {
            String key = matcher.group(1);
            String value = matcher.group(2);
            if (key != null) {
                switch (Ascii.toLowerCase(key)) {
                    case "streamtitle":
                        name = value;
                        break;
                    case "streamurl":
                        url = value;
                        break;
                }
            }
        }
        return new Metadata(new IcyInfo(icyBytes, name, url));
    }

    private String decodeToString(ByteBuffer data) {
        try {
            return this.utf8Decoder.decode(data).toString();
        } catch (CharacterCodingException e) {
            try {
                String string = this.iso88591Decoder.decode(data).toString();
                this.iso88591Decoder.reset();
                data.rewind();
                return string;
            } catch (CharacterCodingException e2) {
                this.iso88591Decoder.reset();
                data.rewind();
                return null;
            } catch (Throwable th) {
                this.iso88591Decoder.reset();
                data.rewind();
                throw th;
            }
        } finally {
            this.utf8Decoder.reset();
            data.rewind();
        }
    }
}
