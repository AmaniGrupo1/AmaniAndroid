package io.grpc.okhttp.internal.proxy;

import io.grpc.internal.GrpcUtil;
import java.io.EOFException;
import java.net.IDN;
import java.net.InetAddress;
import java.util.Locale;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import okio.Buffer;

/* JADX INFO: loaded from: classes22.dex */
public final class HttpUrl {
    private static final char[] HEX_DIGITS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    private final String host;
    private final int port;
    private final String scheme;
    private final String url;

    private HttpUrl(Builder builder) {
        this.scheme = builder.scheme;
        this.host = builder.host;
        this.port = builder.effectivePort();
        this.url = builder.toString();
    }

    public String scheme() {
        return this.scheme;
    }

    public boolean isHttps() {
        return this.scheme.equals("https");
    }

    public String host() {
        return this.host;
    }

    public int port() {
        return this.port;
    }

    public static int defaultPort(String scheme) {
        if (scheme.equals("http")) {
            return 80;
        }
        if (scheme.equals("https")) {
            return GrpcUtil.DEFAULT_PORT_SSL;
        }
        return -1;
    }

    public Builder newBuilder() {
        Builder result = new Builder();
        result.scheme = this.scheme;
        result.host = this.host;
        result.port = this.port != defaultPort(this.scheme) ? this.port : -1;
        return result;
    }

    public boolean equals(Object o) {
        return (o instanceof HttpUrl) && ((HttpUrl) o).url.equals(this.url);
    }

    public int hashCode() {
        return this.url.hashCode();
    }

    public String toString() {
        return this.url;
    }

    public static final class Builder {
        String host;
        int port = -1;
        String scheme;

        public Builder scheme(String scheme) {
            if (scheme == null) {
                throw new IllegalArgumentException("scheme == null");
            }
            if (scheme.equalsIgnoreCase("http")) {
                this.scheme = "http";
            } else if (scheme.equalsIgnoreCase("https")) {
                this.scheme = "https";
            } else {
                throw new IllegalArgumentException("unexpected scheme: " + scheme);
            }
            return this;
        }

        public Builder host(String host) {
            if (host == null) {
                throw new IllegalArgumentException("host == null");
            }
            String encoded = canonicalizeHost(host, 0, host.length());
            if (encoded == null) {
                throw new IllegalArgumentException("unexpected host: " + host);
            }
            this.host = encoded;
            return this;
        }

        public Builder port(int port) {
            if (port <= 0 || port > 65535) {
                throw new IllegalArgumentException("unexpected port: " + port);
            }
            this.port = port;
            return this;
        }

        int effectivePort() {
            return this.port != -1 ? this.port : HttpUrl.defaultPort(this.scheme);
        }

        public HttpUrl build() {
            if (this.scheme == null) {
                throw new IllegalStateException("scheme == null");
            }
            if (this.host == null) {
                throw new IllegalStateException("host == null");
            }
            return new HttpUrl(this);
        }

        public String toString() {
            StringBuilder result = new StringBuilder();
            result.append(this.scheme);
            result.append("://");
            if (this.host.indexOf(58) != -1) {
                result.append(AbstractJsonLexerKt.BEGIN_LIST);
                result.append(this.host);
                result.append(AbstractJsonLexerKt.END_LIST);
            } else {
                result.append(this.host);
            }
            int effectivePort = effectivePort();
            if (effectivePort != HttpUrl.defaultPort(this.scheme)) {
                result.append(AbstractJsonLexerKt.COLON);
                result.append(effectivePort);
            }
            return result.toString();
        }

        private static String canonicalizeHost(String input, int pos, int limit) {
            String percentDecoded = HttpUrl.percentDecode(input, pos, limit, false);
            if (percentDecoded.startsWith("[") && percentDecoded.endsWith("]")) {
                InetAddress inetAddress = decodeIpv6(percentDecoded, 1, percentDecoded.length() - 1);
                if (inetAddress == null) {
                    return null;
                }
                byte[] address = inetAddress.getAddress();
                if (address.length == 16) {
                    return inet6AddressToAscii(address);
                }
                throw new AssertionError();
            }
            return domainToAscii(percentDecoded);
        }

        /* JADX WARN: Code restructure failed: missing block: B:41:0x007c, code lost:
        
            r4 = r0.length;
         */
        /* JADX WARN: Code restructure failed: missing block: B:42:0x007d, code lost:
        
            if (r1 == r4) goto L51;
         */
        /* JADX WARN: Code restructure failed: missing block: B:43:0x007f, code lost:
        
            if (r2 != (-1)) goto L45;
         */
        /* JADX WARN: Code restructure failed: missing block: B:44:0x0081, code lost:
        
            return null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:45:0x0082, code lost:
        
            java.lang.System.arraycopy(r0, r2, r0, r0.length - (r1 - r2), r1 - r2);
            java.util.Arrays.fill(r0, r2, (r0.length - r1) + r2, (byte) 0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:47:0x0095, code lost:
        
            return java.net.InetAddress.getByAddress(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:50:0x009c, code lost:
        
            throw new java.lang.AssertionError();
         */
        /* JADX WARN: Removed duplicated region for block: B:30:0x0050  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private static InetAddress decodeIpv6(String input, int pos, int limit) {
            int groupLength;
            byte[] address = new byte[16];
            int b = 0;
            int compress = -1;
            int groupOffset = -1;
            int i = pos;
            while (true) {
                if (i < limit) {
                    if (b != address.length) {
                        if (i + 2 <= limit && input.regionMatches(i, "::", 0, 2)) {
                            if (compress == -1) {
                                i += 2;
                                b += 2;
                                compress = b;
                                if (i == limit) {
                                    break;
                                }
                                int value = 0;
                                groupOffset = i;
                                while (i < limit) {
                                }
                                groupLength = i - groupOffset;
                                if (groupLength == 0) {
                                    break;
                                }
                                break;
                                break;
                            }
                            return null;
                        }
                        if (b != 0) {
                            if (input.regionMatches(i, ":", 0, 1)) {
                                i++;
                            } else {
                                if (!input.regionMatches(i, ".", 0, 1) || !decodeIpv4Suffix(input, groupOffset, limit, address, b - 2)) {
                                    return null;
                                }
                                b += 2;
                            }
                        }
                        int value2 = 0;
                        groupOffset = i;
                        while (i < limit) {
                            char c = input.charAt(i);
                            int hexDigit = HttpUrl.decodeHexDigit(c);
                            if (hexDigit == -1) {
                                break;
                            }
                            value2 = (value2 << 4) + hexDigit;
                            i++;
                        }
                        groupLength = i - groupOffset;
                        if (groupLength == 0 || groupLength > 4) {
                            break;
                        }
                        int b2 = b + 1;
                        address[b] = (byte) ((value2 >>> 8) & 255);
                        b = b2 + 1;
                        address[b2] = (byte) (value2 & 255);
                    } else {
                        return null;
                    }
                } else {
                    break;
                }
            }
            return null;
        }

        private static boolean decodeIpv4Suffix(String input, int pos, int limit, byte[] address, int addressOffset) {
            int b = addressOffset;
            int i = pos;
            while (i < limit) {
                if (b == address.length) {
                    return false;
                }
                if (b != addressOffset) {
                    if (input.charAt(i) != '.') {
                        return false;
                    }
                    i++;
                }
                int value = 0;
                int groupOffset = i;
                while (i < limit) {
                    char c = input.charAt(i);
                    if (c < '0' || c > '9') {
                        break;
                    }
                    if ((value == 0 && groupOffset != i) || ((value * 10) + c) - 48 > 255) {
                        return false;
                    }
                    i++;
                }
                int groupLength = i - groupOffset;
                if (groupLength == 0) {
                    return false;
                }
                address[b] = (byte) value;
                b++;
            }
            int i2 = addressOffset + 4;
            return b == i2;
        }

        private static String domainToAscii(String input) {
            try {
                String result = IDN.toASCII(input).toLowerCase(Locale.US);
                if (result.isEmpty()) {
                    return null;
                }
                if (containsInvalidHostnameAsciiCodes(result)) {
                    return null;
                }
                return result;
            } catch (IllegalArgumentException e) {
                return null;
            }
        }

        private static boolean containsInvalidHostnameAsciiCodes(String hostnameAscii) {
            for (int i = 0; i < hostnameAscii.length(); i++) {
                char c = hostnameAscii.charAt(i);
                if (c <= 31 || c >= 127 || " #%/:?@[\\]".indexOf(c) != -1) {
                    return true;
                }
            }
            return false;
        }

        private static String inet6AddressToAscii(byte[] address) {
            int longestRunOffset = -1;
            int longestRunLength = 0;
            int i = 0;
            while (i < address.length) {
                int currentRunOffset = i;
                while (i < 16 && address[i] == 0 && address[i + 1] == 0) {
                    i += 2;
                }
                int currentRunLength = i - currentRunOffset;
                if (currentRunLength > longestRunLength) {
                    longestRunOffset = currentRunOffset;
                    longestRunLength = currentRunLength;
                }
                i += 2;
            }
            Buffer result = new Buffer();
            int i2 = 0;
            while (i2 < address.length) {
                if (i2 == longestRunOffset) {
                    result.writeByte(58);
                    i2 += longestRunLength;
                    if (i2 == 16) {
                        result.writeByte(58);
                    }
                } else {
                    if (i2 > 0) {
                        result.writeByte(58);
                    }
                    int group = ((address[i2] & 255) << 8) | (address[i2 + 1] & 255);
                    result.writeHexadecimalUnsignedLong(group);
                    i2 += 2;
                }
            }
            return result.readUtf8();
        }
    }

    static String percentDecode(String encoded, int pos, int limit, boolean plusIsSpace) {
        for (int i = pos; i < limit; i++) {
            char c = encoded.charAt(i);
            if (c == '%' || (c == '+' && plusIsSpace)) {
                Buffer out = new Buffer();
                out.writeUtf8(encoded, pos, i);
                percentDecode(out, encoded, i, limit, plusIsSpace);
                return out.readUtf8();
            }
        }
        return encoded.substring(pos, limit);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x003d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static void percentDecode(Buffer out, String encoded, int pos, int limit, boolean plusIsSpace) {
        int i = pos;
        while (i < limit) {
            int codePoint = encoded.codePointAt(i);
            if (codePoint == 37 && i + 2 < limit) {
                int d1 = decodeHexDigit(encoded.charAt(i + 1));
                int d2 = decodeHexDigit(encoded.charAt(i + 2));
                if (d1 != -1 && d2 != -1) {
                    out.writeByte((d1 << 4) + d2);
                    i += 2;
                }
            } else if (codePoint == 43 && plusIsSpace) {
                out.writeByte(32);
            } else {
                out.writeUtf8CodePoint(codePoint);
            }
            i += Character.charCount(codePoint);
        }
    }

    static int decodeHexDigit(char c) {
        if (c >= '0' && c <= '9') {
            return c - '0';
        }
        if (c >= 'a' && c <= 'f') {
            return (c - 'a') + 10;
        }
        if (c < 'A' || c > 'F') {
            return -1;
        }
        return (c - 'A') + 10;
    }

    static void canonicalize(Buffer out, String input, int pos, int limit, String encodeSet, boolean alreadyEncoded, boolean plusIsSpace, boolean asciiOnly) {
        Buffer utf8Buffer = null;
        int i = pos;
        while (i < limit) {
            int codePoint = input.codePointAt(i);
            if (!alreadyEncoded || (codePoint != 9 && codePoint != 10 && codePoint != 12 && codePoint != 13)) {
                if (codePoint == 43 && plusIsSpace) {
                    out.writeUtf8(alreadyEncoded ? "+" : "%2B");
                } else if (codePoint < 32 || codePoint == 127 || ((codePoint >= 128 && asciiOnly) || encodeSet.indexOf(codePoint) != -1 || (codePoint == 37 && !alreadyEncoded))) {
                    if (utf8Buffer == null) {
                        utf8Buffer = new Buffer();
                    }
                    utf8Buffer.writeUtf8CodePoint(codePoint);
                    while (!utf8Buffer.exhausted()) {
                        try {
                            fakeEofExceptionMethod();
                            int b = utf8Buffer.readByte() & 255;
                            out.writeByte(37);
                            out.writeByte((int) HEX_DIGITS[(b >> 4) & 15]);
                            out.writeByte((int) HEX_DIGITS[b & 15]);
                        } catch (EOFException e) {
                            throw new IndexOutOfBoundsException(e.getMessage());
                        }
                    }
                } else {
                    out.writeUtf8CodePoint(codePoint);
                }
            }
            i += Character.charCount(codePoint);
        }
    }

    private static void fakeEofExceptionMethod() throws EOFException {
    }
}
