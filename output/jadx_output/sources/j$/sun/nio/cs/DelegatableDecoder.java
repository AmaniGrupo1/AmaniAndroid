package j$.sun.nio.cs;

import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.CoderResult;

/* JADX INFO: loaded from: classes19.dex */
public interface DelegatableDecoder {
    CoderResult decodeLoop(ByteBuffer byteBuffer, CharBuffer charBuffer);

    CoderResult implFlush(CharBuffer charBuffer);

    void implReset();
}
