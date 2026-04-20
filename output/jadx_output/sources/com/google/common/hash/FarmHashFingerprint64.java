package com.google.common.hash;

import com.google.common.base.Preconditions;

/* JADX INFO: loaded from: classes22.dex */
@ElementTypesAreNonnullByDefault
final class FarmHashFingerprint64 extends AbstractNonStreamingHashFunction {
    static final HashFunction FARMHASH_FINGERPRINT_64 = new FarmHashFingerprint64();
    private static final long K0 = -4348849565147123417L;
    private static final long K1 = -5435081209227447693L;
    private static final long K2 = -7286425919675154353L;

    FarmHashFingerprint64() {
    }

    @Override // com.google.common.hash.AbstractNonStreamingHashFunction, com.google.common.hash.AbstractHashFunction, com.google.common.hash.HashFunction
    public HashCode hashBytes(byte[] input, int off, int len) {
        Preconditions.checkPositionIndexes(off, off + len, input.length);
        return HashCode.fromLong(fingerprint(input, off, len));
    }

    @Override // com.google.common.hash.HashFunction
    public int bits() {
        return 64;
    }

    public String toString() {
        return "Hashing.farmHashFingerprint64()";
    }

    static long fingerprint(byte[] bytes, int offset, int length) {
        if (length <= 32) {
            if (length <= 16) {
                return hashLength0to16(bytes, offset, length);
            }
            return hashLength17to32(bytes, offset, length);
        }
        if (length <= 64) {
            return hashLength33To64(bytes, offset, length);
        }
        return hashLength65Plus(bytes, offset, length);
    }

    private static long shiftMix(long val) {
        return (val >>> 47) ^ val;
    }

    private static long hashLength16(long u, long v, long mul) {
        long a = (u ^ v) * mul;
        long b = (v ^ (a ^ (a >>> 47))) * mul;
        return (b ^ (b >>> 47)) * mul;
    }

    private static void weakHashLength32WithSeeds(byte[] bytes, int offset, long seedA, long seedB, long[] output) {
        long part1 = LittleEndianByteArray.load64(bytes, offset);
        long part2 = LittleEndianByteArray.load64(bytes, offset + 8);
        long part3 = LittleEndianByteArray.load64(bytes, offset + 16);
        long part4 = LittleEndianByteArray.load64(bytes, offset + 24);
        long seedA2 = seedA + part1;
        long seedB2 = Long.rotateRight(seedB + seedA2 + part4, 21);
        long seedA3 = seedA2 + part2 + part3;
        long seedB3 = seedB2 + Long.rotateRight(seedA3, 44);
        output[0] = seedA3 + part4;
        output[1] = seedB3 + seedA2;
    }

    private static long hashLength0to16(byte[] bytes, int offset, int length) {
        if (length >= 8) {
            long mul = (((long) length) * 2) + K2;
            long a = LittleEndianByteArray.load64(bytes, offset) + K2;
            long b = LittleEndianByteArray.load64(bytes, (offset + length) - 8);
            long c = (Long.rotateRight(b, 37) * mul) + a;
            long d = (Long.rotateRight(a, 25) + b) * mul;
            return hashLength16(c, d, mul);
        }
        if (length >= 4) {
            long mul2 = ((long) (length * 2)) + K2;
            long a2 = ((long) LittleEndianByteArray.load32(bytes, offset)) & 4294967295L;
            return hashLength16(((long) length) + (a2 << 3), ((long) LittleEndianByteArray.load32(bytes, (offset + length) - 4)) & 4294967295L, mul2);
        }
        if (length <= 0) {
            return K2;
        }
        byte a3 = bytes[offset];
        byte b2 = bytes[(length >> 1) + offset];
        byte c2 = bytes[(length - 1) + offset];
        int y = (a3 & 255) + ((b2 & 255) << 8);
        int z = ((c2 & 255) << 2) + length;
        return shiftMix((((long) y) * K2) ^ (((long) z) * K0)) * K2;
    }

    private static long hashLength17to32(byte[] bytes, int offset, int length) {
        long mul = (((long) length) * 2) + K2;
        long a = LittleEndianByteArray.load64(bytes, offset) * K1;
        long b = LittleEndianByteArray.load64(bytes, offset + 8);
        long c = LittleEndianByteArray.load64(bytes, (offset + length) - 8) * mul;
        long d = LittleEndianByteArray.load64(bytes, (offset + length) - 16) * K2;
        return hashLength16(Long.rotateRight(a + b, 43) + Long.rotateRight(c, 30) + d, Long.rotateRight(K2 + b, 18) + a + c, mul);
    }

    private static long hashLength33To64(byte[] bytes, int offset, int length) {
        long mul = (((long) length) * 2) + K2;
        long a = LittleEndianByteArray.load64(bytes, offset) * K2;
        long b = LittleEndianByteArray.load64(bytes, offset + 8);
        long c = LittleEndianByteArray.load64(bytes, (offset + length) - 8) * mul;
        long d = LittleEndianByteArray.load64(bytes, (offset + length) - 16) * K2;
        long y = Long.rotateRight(a + b, 43) + Long.rotateRight(c, 30) + d;
        long z = hashLength16(y, Long.rotateRight(K2 + b, 18) + a + c, mul);
        long e = LittleEndianByteArray.load64(bytes, offset + 16) * mul;
        long f = LittleEndianByteArray.load64(bytes, offset + 24);
        long g = (y + LittleEndianByteArray.load64(bytes, (offset + length) - 32)) * mul;
        long h = (z + LittleEndianByteArray.load64(bytes, (offset + length) - 24)) * mul;
        return hashLength16(Long.rotateRight(e + f, 43) + Long.rotateRight(g, 30) + h, e + Long.rotateRight(f + a, 18) + g, mul);
    }

    private static long hashLength65Plus(byte[] bytes, int offset, int length) {
        byte[] bArr = bytes;
        long j = K1;
        long x = (((long) 81) * K1) + 113;
        long z = shiftMix((x * K2) + 113) * K2;
        long z2 = z;
        long[] w = new long[2];
        long[] w2 = new long[2];
        long x2 = (K2 * ((long) 81)) + LittleEndianByteArray.load64(bytes, offset);
        int end = offset + (((length - 1) / 64) * 64);
        int last64offset = (((length - 1) & 63) + end) - 63;
        int offset2 = offset;
        while (true) {
            long j2 = j;
            long x3 = Long.rotateRight(x2 + x + w[0] + LittleEndianByteArray.load64(bArr, offset2 + 8), 37) * j2;
            long y = Long.rotateRight(x + w[1] + LittleEndianByteArray.load64(bArr, offset2 + 48), 42) * j2;
            long x4 = x3 ^ w2[1];
            long y2 = y + w[0] + LittleEndianByteArray.load64(bArr, offset2 + 40);
            long y3 = w2[0];
            long z3 = Long.rotateRight(y3 + z2, 33) * j2;
            weakHashLength32WithSeeds(bArr, offset2, w[1] * j2, w2[0] + x4, w);
            int offset3 = offset2;
            long[] v = w;
            weakHashLength32WithSeeds(bArr, offset3 + 32, w2[1] + z3, y2 + LittleEndianByteArray.load64(bArr, offset3 + 16), w2);
            z2 = x4;
            offset2 = offset3 + 64;
            if (offset2 == end) {
                long mul = ((255 & z2) << 1) + j2;
                w2[0] = w2[0] + ((long) ((length - 1) & 63));
                v[0] = v[0] + w2[0];
                w2[0] = w2[0] + v[0];
                long x5 = Long.rotateRight(z3 + y2 + v[0] + LittleEndianByteArray.load64(bArr, last64offset + 8), 37) * mul;
                long y4 = Long.rotateRight(y2 + v[1] + LittleEndianByteArray.load64(bArr, last64offset + 48), 42) * mul;
                long x6 = (w2[1] * 9) ^ x5;
                long y5 = y4 + (v[0] * 9) + LittleEndianByteArray.load64(bArr, last64offset + 40);
                long y6 = w2[0];
                long z4 = Long.rotateRight(y6 + z2, 33) * mul;
                weakHashLength32WithSeeds(bArr, last64offset, v[1] * mul, w2[0] + x6, v);
                weakHashLength32WithSeeds(bArr, last64offset + 32, w2[1] + z4, LittleEndianByteArray.load64(bArr, last64offset + 16) + y5, w2);
                return hashLength16(hashLength16(v[0], w2[0], mul) + (shiftMix(y5) * K0) + x6, hashLength16(v[1], w2[1], mul) + z4, mul);
            }
            bArr = bytes;
            x2 = z3;
            x = y2;
            j = j2;
            w = v;
        }
    }
}
