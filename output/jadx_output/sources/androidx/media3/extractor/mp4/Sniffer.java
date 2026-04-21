package androidx.media3.extractor.mp4;

import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.container.Mp4Box;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.SniffFailure;
import java.io.IOException;

/* JADX INFO: loaded from: classes21.dex */
public final class Sniffer {
    public static final int BRAND_HEIC = 1751476579;
    public static final int BRAND_QUICKTIME = 1903435808;
    private static final int[] COMPATIBLE_BRANDS = {1769172845, 1769172786, 1769172787, 1769172788, 1769172789, 1769172790, 1769172793, Mp4Box.TYPE_avc1, Mp4Box.TYPE_hvc1, Mp4Box.TYPE_hev1, Mp4Box.TYPE_av01, 1836069937, 1836069938, 862401121, 862401122, 862417462, 862417718, 862414134, 862414646, 1295275552, 1295270176, 1714714144, 1801741417, 1295275600, BRAND_QUICKTIME, 1297305174, 1684175153, 1769172332, 1885955686};
    private static final int SEARCH_LENGTH = 4096;

    public static SniffFailure sniffFragmented(ExtractorInput input) throws IOException {
        return sniffInternal(input, true, false);
    }

    public static SniffFailure sniffUnfragmented(ExtractorInput input, boolean acceptHeic) throws IOException {
        return sniffInternal(input, false, acceptHeic);
    }

    /* JADX WARN: Code restructure failed: missing block: B:102:0x01a0, code lost:
    
        r10 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x01b5, code lost:
    
        if (r9 != false) goto L110;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x01b9, code lost:
    
        return androidx.media3.extractor.mp4.NoDeclaredBrandSniffFailure.INSTANCE;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x01bc, code lost:
    
        if (r26 == r10) goto L116;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x01be, code lost:
    
        if (r10 == false) goto L114;
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x01c5, code lost:
    
        return androidx.media3.extractor.mp4.IncorrectFragmentationSniffFailure.FILE_NOT_FRAGMENTED;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x01c6, code lost:
    
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:?, code lost:
    
        return androidx.media3.extractor.mp4.IncorrectFragmentationSniffFailure.FILE_FRAGMENTED;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0099, code lost:
    
        return new androidx.media3.extractor.mp4.AtomSizeTooSmallSniffFailure(r4, r14, r11);
     */
    /* JADX WARN: Removed duplicated region for block: B:122:0x00c2 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:134:0x00c8 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static SniffFailure sniffInternal(ExtractorInput input, boolean fragmented, boolean acceptHeic) throws IOException {
        int bytesToSearch;
        long atomSize;
        long atomSize2;
        ParsableByteArray buffer;
        long inputLength;
        int bytesToSearch2;
        int bytesToSearch3;
        long inputLength2 = input.getLength();
        long j = -1;
        long j2 = 4096;
        if (inputLength2 != -1 && inputLength2 <= 4096) {
            j2 = inputLength2;
        }
        int bytesToSearch4 = (int) j2;
        ParsableByteArray buffer2 = new ParsableByteArray(64);
        int bytesSearched = 0;
        boolean foundGoodFileType = false;
        boolean isFragmented = false;
        while (true) {
            if (bytesSearched >= bytesToSearch4) {
                bytesToSearch = bytesToSearch4;
                break;
            }
            int headerSize = 8;
            buffer2.reset(8);
            boolean success = input.peekFully(buffer2.getData(), 0, 8, true);
            if (!success) {
                bytesToSearch = bytesToSearch4;
                break;
            }
            long atomSize3 = buffer2.readUnsignedInt();
            long j3 = j;
            int atomType = buffer2.readInt();
            if (atomSize3 == 1) {
                headerSize = 16;
                input.peekFully(buffer2.getData(), 8, 8);
                buffer2.setLimit(16);
                atomSize2 = buffer2.readLong();
            } else {
                if (atomSize3 != 0) {
                    atomSize = atomSize3;
                } else {
                    long fileEndPosition = input.getLength();
                    if (fileEndPosition != j3) {
                        atomSize2 = (fileEndPosition - input.getPeekPosition()) + ((long) 8);
                    } else {
                        atomSize = atomSize3;
                    }
                }
                atomSize2 = atomSize;
            }
            int bytesToSearch5 = bytesToSearch4;
            if (atomSize2 < headerSize) {
                if (atomType != 1718773093 || headerSize != 8) {
                    break;
                }
                atomSize2 = headerSize;
            }
            bytesSearched += headerSize;
            if (atomType == 1836019574 || atomType == 1970628964) {
                int bytesToSearch6 = ((int) atomSize2) + bytesToSearch5;
                if (inputLength2 != j3) {
                    buffer = buffer2;
                    if (bytesToSearch6 > inputLength2) {
                        int bytesToSearch7 = (int) inputLength2;
                        bytesToSearch4 = bytesToSearch7;
                    }
                    if (atomType != 1836019574) {
                        j = j3;
                        buffer2 = buffer;
                    }
                } else {
                    buffer = buffer2;
                }
                bytesToSearch4 = bytesToSearch6;
                if (atomType != 1836019574) {
                }
            } else {
                buffer = buffer2;
                bytesToSearch4 = bytesToSearch5;
            }
            if (atomType != 1953653099 && atomType != 1835297121) {
                if (atomType == 1835626086) {
                    inputLength = inputLength2;
                    buffer2 = buffer;
                    bytesToSearch4 = bytesToSearch4;
                    j = j3;
                    inputLength2 = inputLength;
                } else {
                    if (atomType == 1836019558) {
                        bytesToSearch2 = bytesToSearch4;
                        break;
                    }
                    if (atomType != 1836475768) {
                        if (atomType == 1835295092) {
                            foundGoodFileType = true;
                        }
                        if (atomType == 1937007212 && atomSize2 > 1000000) {
                            isFragmented = false;
                            break;
                        }
                        long inputLength3 = inputLength2;
                        if ((((long) bytesSearched) + atomSize2) - ((long) headerSize) >= bytesToSearch4) {
                            break;
                        }
                        int atomDataSize = (int) (atomSize2 - ((long) headerSize));
                        bytesSearched += atomDataSize;
                        if (atomType != 1718909296) {
                            bytesToSearch3 = bytesToSearch4;
                            buffer2 = buffer;
                            if (atomDataSize != 0) {
                                input.advancePeekPosition(atomDataSize);
                            }
                        } else {
                            if (atomDataSize < 8) {
                                return new AtomSizeTooSmallSniffFailure(atomType, atomDataSize, 8);
                            }
                            bytesToSearch3 = bytesToSearch4;
                            buffer2 = buffer;
                            buffer2.reset(atomDataSize);
                            input.peekFully(buffer2.getData(), 0, atomDataSize);
                            int majorBrand = buffer2.readInt();
                            if (isCompatibleBrand(majorBrand, acceptHeic)) {
                                foundGoodFileType = true;
                            }
                            buffer2.skipBytes(4);
                            int compatibleBrandsCount = buffer2.bytesLeft() / 4;
                            int[] compatibleBrands = null;
                            if (!foundGoodFileType && compatibleBrandsCount > 0) {
                                compatibleBrands = new int[compatibleBrandsCount];
                                int atomType2 = 0;
                                while (true) {
                                    if (atomType2 >= compatibleBrandsCount) {
                                        break;
                                    }
                                    compatibleBrands[atomType2] = buffer2.readInt();
                                    int i = atomType2;
                                    if (!isCompatibleBrand(compatibleBrands[i], acceptHeic)) {
                                        atomType2 = i + 1;
                                    } else {
                                        foundGoodFileType = true;
                                        break;
                                    }
                                }
                            }
                            if (!foundGoodFileType) {
                                return new UnsupportedBrandsSniffFailure(majorBrand, compatibleBrands);
                            }
                        }
                        bytesToSearch4 = bytesToSearch3;
                        j = j3;
                        inputLength2 = inputLength3;
                    } else {
                        bytesToSearch2 = bytesToSearch4;
                        break;
                    }
                }
            } else {
                inputLength = inputLength2;
                buffer2 = buffer;
                bytesToSearch4 = bytesToSearch4;
                j = j3;
                inputLength2 = inputLength;
            }
        }
    }

    private static boolean isCompatibleBrand(int brand, boolean acceptHeic) {
        if ((brand >>> 8) == 3368816) {
            return true;
        }
        if (brand == 1751476579 && acceptHeic) {
            return true;
        }
        for (int compatibleBrand : COMPATIBLE_BRANDS) {
            if (compatibleBrand == brand) {
                return true;
            }
        }
        return false;
    }

    private Sniffer() {
    }
}
