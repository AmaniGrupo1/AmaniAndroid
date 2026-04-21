package com.google.firebase.database.tubesock;

import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CoderResult;
import java.nio.charset.CodingErrorAction;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes22.dex */
class MessageBuilderFactory {

    interface Builder {
        boolean appendBytes(byte[] bArr);

        WebSocketMessage toMessage();
    }

    MessageBuilderFactory() {
    }

    static class BinaryBuilder implements Builder {
        private int pendingByteCount = 0;
        private List<byte[]> pendingBytes = new ArrayList();

        BinaryBuilder() {
        }

        @Override // com.google.firebase.database.tubesock.MessageBuilderFactory.Builder
        public boolean appendBytes(byte[] bytes) {
            this.pendingBytes.add(bytes);
            this.pendingByteCount += bytes.length;
            return true;
        }

        @Override // com.google.firebase.database.tubesock.MessageBuilderFactory.Builder
        public WebSocketMessage toMessage() {
            byte[] payload = new byte[this.pendingByteCount];
            int offset = 0;
            for (int i = 0; i < this.pendingBytes.size(); i++) {
                byte[] segment = this.pendingBytes.get(i);
                System.arraycopy(segment, 0, payload, offset, segment.length);
                offset += segment.length;
            }
            return new WebSocketMessage(payload);
        }
    }

    static class TextBuilder implements Builder {
        private static ThreadLocal<CharsetDecoder> localDecoder = new ThreadLocal<CharsetDecoder>() { // from class: com.google.firebase.database.tubesock.MessageBuilderFactory.TextBuilder.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // java.lang.ThreadLocal
            public CharsetDecoder initialValue() {
                Charset utf8 = Charset.forName("UTF8");
                CharsetDecoder decoder = utf8.newDecoder();
                decoder.onMalformedInput(CodingErrorAction.REPORT);
                decoder.onUnmappableCharacter(CodingErrorAction.REPORT);
                return decoder;
            }
        };
        private static ThreadLocal<CharsetEncoder> localEncoder = new ThreadLocal<CharsetEncoder>() { // from class: com.google.firebase.database.tubesock.MessageBuilderFactory.TextBuilder.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // java.lang.ThreadLocal
            public CharsetEncoder initialValue() {
                Charset utf8 = Charset.forName("UTF8");
                CharsetEncoder encoder = utf8.newEncoder();
                encoder.onMalformedInput(CodingErrorAction.REPORT);
                encoder.onUnmappableCharacter(CodingErrorAction.REPORT);
                return encoder;
            }
        };
        private StringBuilder builder = new StringBuilder();
        private ByteBuffer carryOver;

        TextBuilder() {
        }

        @Override // com.google.firebase.database.tubesock.MessageBuilderFactory.Builder
        public boolean appendBytes(byte[] bytes) {
            String nextFrame = decodeString(bytes);
            if (nextFrame != null) {
                this.builder.append(nextFrame);
                return true;
            }
            return false;
        }

        @Override // com.google.firebase.database.tubesock.MessageBuilderFactory.Builder
        public WebSocketMessage toMessage() {
            if (this.carryOver != null) {
                return null;
            }
            return new WebSocketMessage(this.builder.toString());
        }

        private String decodeString(byte[] bytes) {
            try {
                ByteBuffer input = ByteBuffer.wrap(bytes);
                CharBuffer buf = localDecoder.get().decode(input);
                String text = buf.toString();
                return text;
            } catch (CharacterCodingException e) {
                return null;
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x003b, code lost:
        
            if (r1.remaining() <= 0) goto L12;
         */
        /* JADX WARN: Code restructure failed: missing block: B:11:0x003d, code lost:
        
            r6.carryOver = r1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:12:0x003f, code lost:
        
            r4 = java.nio.CharBuffer.wrap(r3);
            com.google.firebase.database.tubesock.MessageBuilderFactory.TextBuilder.localEncoder.get().encode(r4);
            r3.flip();
            r0 = r3.toString();
         */
        /* JADX WARN: Code restructure failed: missing block: B:13:0x0055, code lost:
        
            return r0;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private String decodeStringStreaming(byte[] bytes) {
            String text = null;
            try {
                ByteBuffer input = getBuffer(bytes);
                int bufSize = (int) (input.remaining() * localDecoder.get().averageCharsPerByte());
                CharBuffer output = CharBuffer.allocate(bufSize);
                while (true) {
                    CoderResult result = localDecoder.get().decode(input, output, false);
                    if (result.isError()) {
                        return null;
                    }
                    if (result.isUnderflow()) {
                        break;
                    }
                    if (result.isOverflow()) {
                        int bufSize2 = (bufSize * 2) + 1;
                        CharBuffer o = CharBuffer.allocate(bufSize2);
                        output.flip();
                        o.put(output);
                        output = o;
                        bufSize = bufSize2;
                    }
                }
            } catch (CharacterCodingException e) {
                return text;
            }
        }

        private ByteBuffer getBuffer(byte[] bytes) {
            if (this.carryOver != null) {
                ByteBuffer buffer = ByteBuffer.allocate(bytes.length + this.carryOver.remaining());
                buffer.put(this.carryOver);
                this.carryOver = null;
                buffer.put(bytes);
                buffer.flip();
                return buffer;
            }
            return ByteBuffer.wrap(bytes);
        }
    }

    static Builder builder(byte opcode) {
        if (opcode == 2) {
            return new BinaryBuilder();
        }
        return new TextBuilder();
    }
}
