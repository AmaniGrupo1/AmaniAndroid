package androidx.media3.common.util;

import androidx.media3.extractor.ts.PsExtractor;
import com.google.common.base.Ascii;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableSet;
import com.google.common.primitives.Chars;
import com.google.common.primitives.Ints;
import com.google.common.primitives.UnsignedBytes;
import com.google.common.primitives.UnsignedInts;
import com.google.errorprone.annotations.CheckReturnValue;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;
import okio.Utf8;

/* JADX INFO: loaded from: classes21.dex */
@CheckReturnValue
public final class ParsableByteArray {
    public static final int INVALID_CODE_POINT = 1114112;
    private byte[] data;
    private int limit;
    private int position;
    private static final char[] CR_AND_LF = {'\r', '\n'};
    private static final char[] LF = {'\n'};
    private static final ImmutableSet<Charset> SUPPORTED_CHARSETS_FOR_READLINE = ImmutableSet.of(StandardCharsets.US_ASCII, StandardCharsets.UTF_8, StandardCharsets.UTF_16, StandardCharsets.UTF_16BE, StandardCharsets.UTF_16LE);
    private static final AtomicBoolean shouldEnforceLimitOnLegacyMethods = new AtomicBoolean();

    public ParsableByteArray() {
        this.data = Util.EMPTY_BYTE_ARRAY;
    }

    public ParsableByteArray(int limit) {
        this.data = new byte[limit];
        this.limit = limit;
    }

    public ParsableByteArray(byte[] data) {
        this.data = data;
        this.limit = data.length;
    }

    public ParsableByteArray(byte[] data, int limit) {
        this.data = data;
        this.limit = limit;
    }

    public void reset(int limit) {
        reset(capacity() < limit ? new byte[limit] : this.data, limit);
    }

    public void reset(byte[] data) {
        reset(data, data.length);
    }

    public void reset(byte[] data, int limit) {
        this.data = data;
        this.limit = limit;
        this.position = 0;
    }

    public void ensureCapacity(int requiredCapacity) {
        if (requiredCapacity > capacity()) {
            this.data = Arrays.copyOf(this.data, requiredCapacity);
        }
    }

    public int bytesLeft() {
        return Math.max(this.limit - this.position, 0);
    }

    public int limit() {
        return this.limit;
    }

    public void setLimit(int limit) {
        Preconditions.checkArgument(limit >= 0 && limit <= this.data.length);
        this.limit = limit;
    }

    public int getPosition() {
        return this.position;
    }

    public void setPosition(int position) {
        Preconditions.checkArgument(position >= 0 && position <= this.limit);
        this.position = position;
    }

    public byte[] getData() {
        return this.data;
    }

    public int capacity() {
        return this.data.length;
    }

    public void skipBytes(int bytes) {
        setPosition(this.position + bytes);
    }

    public void readBytes(ParsableBitArray bitArray, int length) {
        readBytes(bitArray.data, 0, length);
        bitArray.setPosition(0);
    }

    public void readBytes(byte[] buffer, int offset, int length) {
        maybeAssertAtLeastBytesLeftForLegacyMethod(length);
        System.arraycopy(this.data, this.position, buffer, offset, length);
        this.position += length;
    }

    public void readBytes(ByteBuffer buffer, int length) {
        maybeAssertAtLeastBytesLeftForLegacyMethod(length);
        buffer.put(this.data, this.position, length);
        this.position += length;
    }

    public int peekUnsignedByte() {
        maybeAssertAtLeastBytesLeftForLegacyMethod(1);
        return this.data[this.position] & 255;
    }

    public char peekChar() {
        return peekChar(ByteOrder.BIG_ENDIAN, 0);
    }

    @Deprecated
    public char peekChar(Charset charset) {
        Preconditions.checkArgument(SUPPORTED_CHARSETS_FOR_READLINE.contains(charset), "Unsupported charset: %s", charset);
        if (bytesLeft() == 0) {
            return (char) 0;
        }
        if (charset.equals(StandardCharsets.US_ASCII)) {
            return (char) peekUnsignedByte();
        }
        if (charset.equals(StandardCharsets.UTF_8)) {
            if ((this.data[this.position] & 128) == 0) {
                return (char) peekUnsignedByte();
            }
            return (char) 0;
        }
        if (bytesLeft() < 2) {
            return (char) 0;
        }
        ByteOrder byteOrder = charset.equals(StandardCharsets.UTF_16LE) ? ByteOrder.LITTLE_ENDIAN : ByteOrder.BIG_ENDIAN;
        return peekChar(byteOrder, 0);
    }

    private char peekChar(ByteOrder byteOrder, int offset) {
        maybeAssertAtLeastBytesLeftForLegacyMethod(2);
        ByteOrder byteOrder2 = ByteOrder.BIG_ENDIAN;
        byte[] bArr = this.data;
        if (byteOrder == byteOrder2) {
            return Chars.fromBytes(bArr[this.position + offset], this.data[this.position + offset + 1]);
        }
        return Chars.fromBytes(bArr[this.position + offset + 1], this.data[this.position + offset]);
    }

    public int peekCodePoint(Charset charset) {
        int codePointAndSize = peekCodePointAndSize(charset);
        return codePointAndSize != 0 ? Ints.checkedCast(codePointAndSize >>> 8) : INVALID_CODE_POINT;
    }

    public int peekUnsignedInt24() {
        if (bytesLeft() < 3) {
            throw new IndexOutOfBoundsException("position=" + this.position + ", limit=" + this.limit);
        }
        int result = readUnsignedInt24();
        this.position -= 3;
        return result;
    }

    public int peekInt() {
        if (bytesLeft() < 4) {
            throw new IndexOutOfBoundsException("position=" + this.position + ", limit=" + this.limit);
        }
        int result = readInt();
        this.position -= 4;
        return result;
    }

    public int readUnsignedByte() {
        maybeAssertAtLeastBytesLeftForLegacyMethod(1);
        byte[] bArr = this.data;
        int i = this.position;
        this.position = i + 1;
        return bArr[i] & 255;
    }

    public int readUnsignedShort() {
        maybeAssertAtLeastBytesLeftForLegacyMethod(2);
        byte[] bArr = this.data;
        int i = this.position;
        this.position = i + 1;
        int i2 = (bArr[i] & 255) << 8;
        byte[] bArr2 = this.data;
        int i3 = this.position;
        this.position = i3 + 1;
        return i2 | (bArr2[i3] & 255);
    }

    public int readLittleEndianUnsignedShort() {
        maybeAssertAtLeastBytesLeftForLegacyMethod(2);
        byte[] bArr = this.data;
        int i = this.position;
        this.position = i + 1;
        int i2 = bArr[i] & 255;
        byte[] bArr2 = this.data;
        int i3 = this.position;
        this.position = i3 + 1;
        return i2 | ((bArr2[i3] & 255) << 8);
    }

    public short readShort() {
        maybeAssertAtLeastBytesLeftForLegacyMethod(2);
        byte[] bArr = this.data;
        int i = this.position;
        this.position = i + 1;
        int i2 = (bArr[i] & 255) << 8;
        byte[] bArr2 = this.data;
        int i3 = this.position;
        this.position = i3 + 1;
        return (short) (i2 | (bArr2[i3] & 255));
    }

    public short readLittleEndianShort() {
        maybeAssertAtLeastBytesLeftForLegacyMethod(2);
        byte[] bArr = this.data;
        int i = this.position;
        this.position = i + 1;
        int i2 = bArr[i] & 255;
        byte[] bArr2 = this.data;
        int i3 = this.position;
        this.position = i3 + 1;
        return (short) (i2 | ((bArr2[i3] & 255) << 8));
    }

    public int readUnsignedInt24() {
        maybeAssertAtLeastBytesLeftForLegacyMethod(3);
        byte[] bArr = this.data;
        int i = this.position;
        this.position = i + 1;
        int i2 = (bArr[i] & 255) << 16;
        byte[] bArr2 = this.data;
        int i3 = this.position;
        this.position = i3 + 1;
        int i4 = i2 | ((bArr2[i3] & 255) << 8);
        byte[] bArr3 = this.data;
        int i5 = this.position;
        this.position = i5 + 1;
        return i4 | (bArr3[i5] & 255);
    }

    public int readInt24() {
        maybeAssertAtLeastBytesLeftForLegacyMethod(3);
        byte[] bArr = this.data;
        int i = this.position;
        this.position = i + 1;
        int i2 = ((bArr[i] & 255) << 24) >> 8;
        byte[] bArr2 = this.data;
        int i3 = this.position;
        this.position = i3 + 1;
        int i4 = i2 | ((bArr2[i3] & 255) << 8);
        byte[] bArr3 = this.data;
        int i5 = this.position;
        this.position = i5 + 1;
        return i4 | (bArr3[i5] & 255);
    }

    public int readLittleEndianInt24() {
        maybeAssertAtLeastBytesLeftForLegacyMethod(3);
        byte[] bArr = this.data;
        int i = this.position;
        this.position = i + 1;
        int i2 = bArr[i] & 255;
        byte[] bArr2 = this.data;
        int i3 = this.position;
        this.position = i3 + 1;
        int i4 = i2 | ((bArr2[i3] & 255) << 8);
        byte[] bArr3 = this.data;
        int i5 = this.position;
        this.position = i5 + 1;
        return i4 | ((bArr3[i5] & 255) << 16);
    }

    public int readLittleEndianUnsignedInt24() {
        maybeAssertAtLeastBytesLeftForLegacyMethod(3);
        byte[] bArr = this.data;
        int i = this.position;
        this.position = i + 1;
        int i2 = bArr[i] & 255;
        byte[] bArr2 = this.data;
        int i3 = this.position;
        this.position = i3 + 1;
        int i4 = i2 | ((bArr2[i3] & 255) << 8);
        byte[] bArr3 = this.data;
        int i5 = this.position;
        this.position = i5 + 1;
        return i4 | ((bArr3[i5] & 255) << 16);
    }

    public long readUnsignedInt() {
        maybeAssertAtLeastBytesLeftForLegacyMethod(4);
        byte[] bArr = this.data;
        int i = this.position;
        this.position = i + 1;
        long j = (((long) bArr[i]) & 255) << 24;
        byte[] bArr2 = this.data;
        int i2 = this.position;
        this.position = i2 + 1;
        long j2 = j | ((((long) bArr2[i2]) & 255) << 16);
        byte[] bArr3 = this.data;
        int i3 = this.position;
        this.position = i3 + 1;
        long j3 = j2 | ((((long) bArr3[i3]) & 255) << 8);
        byte[] bArr4 = this.data;
        int i4 = this.position;
        this.position = i4 + 1;
        return j3 | (255 & ((long) bArr4[i4]));
    }

    public long readLittleEndianUnsignedInt() {
        maybeAssertAtLeastBytesLeftForLegacyMethod(4);
        byte[] bArr = this.data;
        int i = this.position;
        this.position = i + 1;
        long j = ((long) bArr[i]) & 255;
        byte[] bArr2 = this.data;
        int i2 = this.position;
        this.position = i2 + 1;
        long j2 = j | ((((long) bArr2[i2]) & 255) << 8);
        byte[] bArr3 = this.data;
        int i3 = this.position;
        this.position = i3 + 1;
        long j3 = j2 | ((((long) bArr3[i3]) & 255) << 16);
        byte[] bArr4 = this.data;
        int i4 = this.position;
        this.position = i4 + 1;
        return j3 | ((255 & ((long) bArr4[i4])) << 24);
    }

    public int readInt() {
        maybeAssertAtLeastBytesLeftForLegacyMethod(4);
        byte[] bArr = this.data;
        int i = this.position;
        this.position = i + 1;
        int i2 = (bArr[i] & 255) << 24;
        byte[] bArr2 = this.data;
        int i3 = this.position;
        this.position = i3 + 1;
        int i4 = i2 | ((bArr2[i3] & 255) << 16);
        byte[] bArr3 = this.data;
        int i5 = this.position;
        this.position = i5 + 1;
        int i6 = i4 | ((bArr3[i5] & 255) << 8);
        byte[] bArr4 = this.data;
        int i7 = this.position;
        this.position = i7 + 1;
        return i6 | (bArr4[i7] & 255);
    }

    public int readLittleEndianInt() {
        maybeAssertAtLeastBytesLeftForLegacyMethod(4);
        byte[] bArr = this.data;
        int i = this.position;
        this.position = i + 1;
        int i2 = bArr[i] & 255;
        byte[] bArr2 = this.data;
        int i3 = this.position;
        this.position = i3 + 1;
        int i4 = i2 | ((bArr2[i3] & 255) << 8);
        byte[] bArr3 = this.data;
        int i5 = this.position;
        this.position = i5 + 1;
        int i6 = i4 | ((bArr3[i5] & 255) << 16);
        byte[] bArr4 = this.data;
        int i7 = this.position;
        this.position = i7 + 1;
        return i6 | ((bArr4[i7] & 255) << 24);
    }

    public long readLong() {
        maybeAssertAtLeastBytesLeftForLegacyMethod(8);
        byte[] bArr = this.data;
        int i = this.position;
        this.position = i + 1;
        long j = (((long) bArr[i]) & 255) << 56;
        byte[] bArr2 = this.data;
        int i2 = this.position;
        this.position = i2 + 1;
        long j2 = j | ((((long) bArr2[i2]) & 255) << 48);
        byte[] bArr3 = this.data;
        int i3 = this.position;
        this.position = i3 + 1;
        long j3 = j2 | ((((long) bArr3[i3]) & 255) << 40);
        byte[] bArr4 = this.data;
        int i4 = this.position;
        this.position = i4 + 1;
        long j4 = j3 | ((((long) bArr4[i4]) & 255) << 32);
        byte[] bArr5 = this.data;
        int i5 = this.position;
        this.position = i5 + 1;
        long j5 = j4 | ((((long) bArr5[i5]) & 255) << 24);
        byte[] bArr6 = this.data;
        int i6 = this.position;
        this.position = i6 + 1;
        long j6 = j5 | ((((long) bArr6[i6]) & 255) << 16);
        byte[] bArr7 = this.data;
        int i7 = this.position;
        this.position = i7 + 1;
        long j7 = j6 | ((((long) bArr7[i7]) & 255) << 8);
        byte[] bArr8 = this.data;
        int i8 = this.position;
        this.position = i8 + 1;
        return j7 | (((long) bArr8[i8]) & 255);
    }

    public long readLittleEndianLong() {
        maybeAssertAtLeastBytesLeftForLegacyMethod(8);
        byte[] bArr = this.data;
        int i = this.position;
        this.position = i + 1;
        long j = ((long) bArr[i]) & 255;
        byte[] bArr2 = this.data;
        int i2 = this.position;
        this.position = i2 + 1;
        long j2 = j | ((((long) bArr2[i2]) & 255) << 8);
        byte[] bArr3 = this.data;
        int i3 = this.position;
        this.position = i3 + 1;
        long j3 = j2 | ((((long) bArr3[i3]) & 255) << 16);
        byte[] bArr4 = this.data;
        int i4 = this.position;
        this.position = i4 + 1;
        long j4 = j3 | ((((long) bArr4[i4]) & 255) << 24);
        byte[] bArr5 = this.data;
        int i5 = this.position;
        this.position = i5 + 1;
        long j5 = j4 | ((((long) bArr5[i5]) & 255) << 32);
        byte[] bArr6 = this.data;
        int i6 = this.position;
        this.position = i6 + 1;
        long j6 = j5 | ((((long) bArr6[i6]) & 255) << 40);
        byte[] bArr7 = this.data;
        int i7 = this.position;
        this.position = i7 + 1;
        long j7 = j6 | ((((long) bArr7[i7]) & 255) << 48);
        byte[] bArr8 = this.data;
        int i8 = this.position;
        this.position = i8 + 1;
        return j7 | ((((long) bArr8[i8]) & 255) << 56);
    }

    public int readUnsignedFixedPoint1616() {
        maybeAssertAtLeastBytesLeftForLegacyMethod(4);
        byte[] bArr = this.data;
        int i = this.position;
        this.position = i + 1;
        int i2 = (bArr[i] & 255) << 8;
        byte[] bArr2 = this.data;
        int i3 = this.position;
        this.position = i3 + 1;
        int result = i2 | (bArr2[i3] & 255);
        this.position += 2;
        return result;
    }

    public int readSynchSafeInt() {
        int b1 = readUnsignedByte();
        int b2 = readUnsignedByte();
        int b3 = readUnsignedByte();
        int b4 = readUnsignedByte();
        return (b1 << 21) | (b2 << 14) | (b3 << 7) | b4;
    }

    public int readUnsignedIntToInt() {
        int result = readInt();
        if (result < 0) {
            throw new IllegalStateException("Top bit not zero: " + result);
        }
        return result;
    }

    public int readLittleEndianUnsignedIntToInt() {
        int result = readLittleEndianInt();
        if (result < 0) {
            throw new IllegalStateException("Top bit not zero: " + result);
        }
        return result;
    }

    public long readUnsignedLongToLong() {
        long result = readLong();
        if (result < 0) {
            throw new IllegalStateException("Top bit not zero: " + result);
        }
        return result;
    }

    public float readFloat() {
        return Float.intBitsToFloat(readInt());
    }

    public double readDouble() {
        return Double.longBitsToDouble(readLong());
    }

    public String readString(int length) {
        return readString(length, StandardCharsets.UTF_8);
    }

    public String readString(int length, Charset charset) {
        maybeAssertAtLeastBytesLeftForLegacyMethod(length);
        String result = new String(this.data, this.position, length, charset);
        this.position += length;
        return result;
    }

    public String readNullTerminatedString(int length) {
        maybeAssertAtLeastBytesLeftForLegacyMethod(length);
        if (length == 0) {
            return "";
        }
        int stringLength = length;
        int lastIndex = (this.position + length) - 1;
        if (lastIndex < this.limit && this.data[lastIndex] == 0) {
            stringLength--;
        }
        String result = Util.fromUtf8Bytes(this.data, this.position, stringLength);
        this.position += length;
        return result;
    }

    public String readNullTerminatedString() {
        return readDelimiterTerminatedString((char) 0);
    }

    public String readDelimiterTerminatedString(char delimiter) {
        if (bytesLeft() == 0) {
            return null;
        }
        int stringLimit = this.position;
        while (stringLimit < this.limit && this.data[stringLimit] != delimiter) {
            stringLimit++;
        }
        String string = Util.fromUtf8Bytes(this.data, this.position, stringLimit - this.position);
        this.position = stringLimit;
        if (this.position < this.limit) {
            this.position++;
        }
        return string;
    }

    public String readLine() {
        return readLine(StandardCharsets.UTF_8);
    }

    public String readLine(Charset charset) {
        Preconditions.checkArgument(SUPPORTED_CHARSETS_FOR_READLINE.contains(charset), "Unsupported charset: %s", charset);
        if (bytesLeft() == 0) {
            return null;
        }
        if (!charset.equals(StandardCharsets.US_ASCII)) {
            readUtfCharsetFromBom();
        }
        int lineLimit = findNextLineTerminator(charset);
        String line = readString(lineLimit - this.position, charset);
        if (this.position == this.limit) {
            return line;
        }
        skipLineTerminator(charset);
        return line;
    }

    public long readUtf8EncodedLong() {
        maybeAssertAtLeastBytesLeftForLegacyMethod(1);
        int length = 0;
        long value = this.data[this.position];
        int j = 7;
        while (true) {
            if (j < 0) {
                break;
            }
            if ((((long) (1 << j)) & value) != 0) {
                j--;
            } else if (j < 6) {
                value &= (long) ((1 << j) - 1);
                length = 7 - j;
            } else if (j == 7) {
                length = 1;
            }
        }
        if (length == 0) {
            throw new NumberFormatException("Invalid UTF-8 sequence first byte: " + value);
        }
        maybeAssertAtLeastBytesLeftForLegacyMethod(length);
        for (int i = 1; i < length; i++) {
            int x = this.data[this.position + i];
            if ((x & PsExtractor.AUDIO_STREAM) != 128) {
                throw new NumberFormatException("Invalid UTF-8 sequence continuation byte: " + value);
            }
            value = (value << 6) | ((long) (x & 63));
        }
        int i2 = this.position;
        this.position = i2 + length;
        return value;
    }

    public long readUnsignedLeb128ToLong() {
        long value = 0;
        for (int i = 0; i < 9; i++) {
            if (this.position == this.limit) {
                throw new IllegalStateException("Attempting to read a byte over the limit.");
            }
            long currentByte = readUnsignedByte();
            value |= (127 & currentByte) << (i * 7);
            if ((128 & currentByte) == 0) {
                break;
            }
        }
        return value;
    }

    public int readUnsignedLeb128ToInt() {
        return Ints.checkedCast(readUnsignedLeb128ToLong());
    }

    public void skipLeb128() {
        while ((readUnsignedByte() & 128) != 0) {
        }
    }

    public Charset readUtfCharsetFromBom() {
        if (bytesLeft() >= 3 && this.data[this.position] == -17 && this.data[this.position + 1] == -69 && this.data[this.position + 2] == -65) {
            this.position += 3;
            return StandardCharsets.UTF_8;
        }
        if (bytesLeft() >= 2) {
            if (this.data[this.position] == -2 && this.data[this.position + 1] == -1) {
                this.position += 2;
                return StandardCharsets.UTF_16BE;
            }
            if (this.data[this.position] == -1 && this.data[this.position + 1] == -2) {
                this.position += 2;
                return StandardCharsets.UTF_16LE;
            }
            return null;
        }
        return null;
    }

    public static void setShouldEnforceLimitOnLegacyMethods(boolean enforceLimit) {
        shouldEnforceLimitOnLegacyMethods.set(enforceLimit);
    }

    private int findNextLineTerminator(Charset charset) {
        int stride;
        if (charset.equals(StandardCharsets.UTF_8) || charset.equals(StandardCharsets.US_ASCII)) {
            stride = 1;
        } else if (charset.equals(StandardCharsets.UTF_16) || charset.equals(StandardCharsets.UTF_16LE) || charset.equals(StandardCharsets.UTF_16BE)) {
            stride = 2;
        } else {
            throw new IllegalArgumentException("Unsupported charset: " + charset);
        }
        for (int i = this.position; i < this.limit - (stride - 1); i += stride) {
            if ((charset.equals(StandardCharsets.UTF_8) || charset.equals(StandardCharsets.US_ASCII)) && Util.isLinebreak(this.data[i])) {
                return i;
            }
            if ((charset.equals(StandardCharsets.UTF_16) || charset.equals(StandardCharsets.UTF_16BE)) && this.data[i] == 0 && Util.isLinebreak(this.data[i + 1])) {
                return i;
            }
            if (charset.equals(StandardCharsets.UTF_16LE) && this.data[i + 1] == 0 && Util.isLinebreak(this.data[i])) {
                return i;
            }
        }
        int i2 = this.limit;
        return i2;
    }

    private void skipLineTerminator(Charset charset) {
        if (readCharacterIfInList(charset, CR_AND_LF) == '\r') {
            readCharacterIfInList(charset, LF);
        }
    }

    private char readCharacterIfInList(Charset charset, char[] chars) {
        int codePointAndSize;
        if (bytesLeft() < getSmallestCodeUnitSize(charset) || (codePointAndSize = peekCodePointAndSize(charset)) == 0) {
            return (char) 0;
        }
        int codePoint = UnsignedInts.checkedCast(codePointAndSize >>> 8);
        if (Character.isSupplementaryCodePoint(codePoint)) {
            return (char) 0;
        }
        char c = Chars.checkedCast(codePoint);
        if (!Chars.contains(chars, c)) {
            return (char) 0;
        }
        this.position += Ints.checkedCast(codePointAndSize & 255);
        return c;
    }

    private int peekCodePointAndSize(Charset charset) {
        int codePoint;
        char c;
        Preconditions.checkArgument(SUPPORTED_CHARSETS_FOR_READLINE.contains(charset), "Unsupported charset: %s", charset);
        if (bytesLeft() < getSmallestCodeUnitSize(charset)) {
            throw new IndexOutOfBoundsException("position=" + this.position + ", limit=" + this.limit);
        }
        if (charset.equals(StandardCharsets.US_ASCII)) {
            if ((this.data[this.position] & 128) != 0) {
                return 0;
            }
            codePoint = UnsignedBytes.toInt(this.data[this.position]);
            c = 1;
        } else if (charset.equals(StandardCharsets.UTF_8)) {
            char codePointSize = peekUtf8CodeUnitSize();
            switch (codePointSize) {
                case 1:
                    int codePoint2 = UnsignedBytes.toInt(this.data[this.position]);
                    c = codePointSize;
                    codePoint = codePoint2;
                    break;
                case 2:
                    int codePoint3 = decodeUtf8CodeUnit(0, 0, this.data[this.position], this.data[this.position + 1]);
                    c = codePointSize;
                    codePoint = codePoint3;
                    break;
                case 3:
                    int firstByteWithoutStartCode = this.data[this.position] & Ascii.SI;
                    int codePoint4 = decodeUtf8CodeUnit(0, firstByteWithoutStartCode, this.data[this.position + 1], this.data[this.position + 2]);
                    c = codePointSize;
                    codePoint = codePoint4;
                    break;
                case 4:
                    int codePoint5 = decodeUtf8CodeUnit(this.data[this.position], this.data[this.position + 1], this.data[this.position + 2], this.data[this.position + 3]);
                    c = codePointSize;
                    codePoint = codePoint5;
                    break;
                default:
                    return 0;
            }
        } else {
            ByteOrder byteOrder = charset.equals(StandardCharsets.UTF_16LE) ? ByteOrder.LITTLE_ENDIAN : ByteOrder.BIG_ENDIAN;
            char c2 = peekChar(byteOrder, 0);
            if (Character.isHighSurrogate(c2) && bytesLeft() >= 4) {
                char lowSurrogate = peekChar(byteOrder, 2);
                int codePoint6 = Character.toCodePoint(c2, lowSurrogate);
                c = 4;
                codePoint = codePoint6;
            } else {
                codePoint = c2;
                c = 2;
            }
        }
        return (codePoint << 8) | c;
    }

    private static int getSmallestCodeUnitSize(Charset charset) {
        Preconditions.checkArgument(SUPPORTED_CHARSETS_FOR_READLINE.contains(charset), "Unsupported charset: %s", charset);
        if (charset.equals(StandardCharsets.UTF_8) || charset.equals(StandardCharsets.US_ASCII)) {
            return 1;
        }
        return 2;
    }

    private byte peekUtf8CodeUnitSize() {
        if ((this.data[this.position] & 128) == 0) {
            return (byte) 1;
        }
        if ((this.data[this.position] & 224) == 192 && bytesLeft() >= 2 && isUtf8ContinuationByte(this.data[this.position + 1])) {
            return (byte) 2;
        }
        if ((this.data[this.position] & 240) == 224 && bytesLeft() >= 3 && isUtf8ContinuationByte(this.data[this.position + 1]) && isUtf8ContinuationByte(this.data[this.position + 2])) {
            return (byte) 3;
        }
        return ((this.data[this.position] & 248) == 240 && bytesLeft() >= 4 && isUtf8ContinuationByte(this.data[this.position + 1]) && isUtf8ContinuationByte(this.data[this.position + 2]) && isUtf8ContinuationByte(this.data[this.position + 3])) ? (byte) 4 : (byte) 0;
    }

    private void maybeAssertAtLeastBytesLeftForLegacyMethod(int bytesNeeded) {
        if (shouldEnforceLimitOnLegacyMethods.get() && bytesLeft() < bytesNeeded) {
            throw new IndexOutOfBoundsException("bytesNeeded= " + bytesNeeded + ", bytesLeft=" + bytesLeft());
        }
    }

    private static boolean isUtf8ContinuationByte(byte b) {
        return (b & 192) == 128;
    }

    private static int decodeUtf8CodeUnit(int b1, int b2, int b3, int b4) {
        return Ints.fromBytes((byte) 0, UnsignedBytes.checkedCast(((b1 & 7) << 2) | ((b2 & 48) >> 4)), UnsignedBytes.checkedCast(((((byte) b2) & Ascii.SI) << 4) | ((((byte) b3) & 60) >> 2)), UnsignedBytes.checkedCast(((((byte) b3) & 3) << 6) | (((byte) b4) & Utf8.REPLACEMENT_BYTE)));
    }
}
