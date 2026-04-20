package androidx.media3.extractor.text.vobsub;

import android.graphics.Bitmap;
import android.graphics.Rect;
import androidx.media3.common.C;
import androidx.media3.common.text.Cue;
import androidx.media3.common.util.Consumer;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.text.CuesWithTiming;
import androidx.media3.extractor.text.SubtitleParser;
import com.google.common.collect.ImmutableList;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.List;
import java.util.zip.Inflater;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* JADX INFO: loaded from: classes21.dex */
public final class VobsubParser implements SubtitleParser {
    public static final int CUE_REPLACEMENT_BEHAVIOR = 2;
    public static final CuesWithTiming EMPTY_CUES = new CuesWithTiming(ImmutableList.of(), C.TIME_UNSET, C.TIME_UNSET);
    private static final String TAG = "VobsubParser";
    private Inflater inflater;
    private final ParsableByteArray scratch = new ParsableByteArray();
    private final ParsableByteArray inflatedScratch = new ParsableByteArray();
    private final CueBuilder cueBuilder = new CueBuilder();

    public VobsubParser(List<byte[]> initializationData) {
        this.cueBuilder.parseIdx(new String(initializationData.get(0), StandardCharsets.UTF_8));
    }

    @Override // androidx.media3.extractor.text.SubtitleParser
    public int getCueReplacementBehavior() {
        return 2;
    }

    @Override // androidx.media3.extractor.text.SubtitleParser
    public void parse(byte[] data, int offset, int length, SubtitleParser.OutputOptions outputOptions, Consumer<CuesWithTiming> output) {
        this.scratch.reset(data, offset + length);
        this.scratch.setPosition(offset);
        output.accept(parse());
    }

    private CuesWithTiming parse() {
        long cueDurationUs;
        if (this.inflater == null) {
            this.inflater = new Inflater();
        }
        if (Util.maybeInflate(this.scratch, this.inflatedScratch, this.inflater)) {
            this.scratch.reset(this.inflatedScratch.getData(), this.inflatedScratch.limit());
        }
        this.cueBuilder.reset();
        int bytesLeft = this.scratch.bytesLeft();
        if (bytesLeft < 2 || this.scratch.readUnsignedShort() != bytesLeft) {
            return EMPTY_CUES;
        }
        this.cueBuilder.parseSpuControlSequenceTable(this.scratch);
        Cue result = this.cueBuilder.build(this.scratch);
        if (this.cueBuilder.endTimeUs == C.TIME_UNSET) {
            cueDurationUs = -9223372036854775807L;
        } else {
            cueDurationUs = (this.cueBuilder.startTimeUs == C.TIME_UNSET || this.cueBuilder.endTimeUs <= this.cueBuilder.startTimeUs) ? this.cueBuilder.endTimeUs : this.cueBuilder.endTimeUs - this.cueBuilder.startTimeUs;
        }
        return new CuesWithTiming(result != null ? ImmutableList.of(result) : ImmutableList.of(), this.cueBuilder.startTimeUs, cueDurationUs);
    }

    private static final class CueBuilder {
        private static final int CMD_ALPHA = 4;
        private static final int CMD_AREA = 5;
        private static final int CMD_COLORS = 3;
        private static final int CMD_END = 255;
        private static final int CMD_FORCE_START = 0;
        private static final int CMD_OFFSETS = 6;
        private static final int CMD_START = 1;
        private static final int CMD_STOP = 2;
        private Rect boundingBox;
        private boolean hasColors;
        private boolean hasPlane;
        private int[] palette;
        private int planeHeight;
        private int planeWidth;
        private long startTimeUs = C.TIME_UNSET;
        private long endTimeUs = C.TIME_UNSET;
        private final int[] colors = new int[4];
        private int dataOffset0 = -1;
        private int dataOffset1 = -1;

        public void parseIdx(String idx) {
            for (String line : Util.split(idx.trim(), "\\r?\\n")) {
                if (line.startsWith("palette: ")) {
                    String[] values = Util.split(line.substring("palette: ".length()), ",");
                    this.palette = new int[values.length];
                    for (int i = 0; i < values.length; i++) {
                        this.palette[i] = parseColor(values[i].trim());
                    }
                } else if (line.startsWith("size: ")) {
                    String[] sizes = Util.split(line.substring("size: ".length()).trim(), "x");
                    if (sizes.length != 2) {
                        Log.w(VobsubParser.TAG, "Ignoring malformed IDX size line: '" + line + "'");
                    } else {
                        try {
                            this.planeWidth = Integer.parseInt(sizes[0]);
                            this.planeHeight = Integer.parseInt(sizes[1]);
                            this.hasPlane = true;
                        } catch (RuntimeException e) {
                            Log.w(VobsubParser.TAG, "Parsing IDX failed", e);
                        }
                    }
                }
            }
        }

        private static int parseColor(String value) {
            try {
                return Integer.parseInt(value, 16);
            } catch (RuntimeException e) {
                Log.w(VobsubParser.TAG, "Parsing color failed", e);
                return 0;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void parseSpuControlSequenceTable(ParsableByteArray buffer) {
            boolean hasNextSequence;
            if (this.palette == null) {
                Log.w(VobsubParser.TAG, "Skipping SPU (no palette)");
                return;
            }
            if (!this.hasPlane) {
                Log.w(VobsubParser.TAG, "Skipping SPU (no plane)");
                return;
            }
            int spuStartOffset = buffer.getPosition() - 2;
            int controlStartOffset = buffer.readUnsignedShort();
            buffer.setPosition(spuStartOffset + controlStartOffset);
            do {
                hasNextSequence = parseControlSequence(buffer, spuStartOffset);
            } while (hasNextSequence);
        }

        @RequiresNonNull({"this.palette"})
        private boolean parseControlSequence(ParsableByteArray buffer, int spuStartPosition) {
            boolean hasNextSequence = false;
            if (buffer.bytesLeft() < 4) {
                return false;
            }
            int sequenceStartPosition = buffer.getPosition();
            int spuTimeUs = buffer.readUnsignedShort() * 10000;
            int nextSequencePosition = buffer.readUnsignedShort() + spuStartPosition;
            if (nextSequencePosition != sequenceStartPosition && nextSequencePosition < buffer.limit()) {
                hasNextSequence = true;
            }
            int sequenceEndPosition = hasNextSequence ? nextSequencePosition : buffer.limit();
            boolean hasNextCommand = true;
            while (buffer.getPosition() < sequenceEndPosition && hasNextCommand) {
                hasNextCommand = parseCommand(spuTimeUs, buffer);
            }
            if (hasNextSequence) {
                buffer.setPosition(nextSequencePosition);
            }
            return hasNextSequence;
        }

        @RequiresNonNull({"this.palette"})
        private boolean parseCommand(long spuTimeUs, ParsableByteArray buffer) {
            int command = buffer.readUnsignedByte();
            switch (command) {
                case 0:
                    break;
                case 1:
                    this.startTimeUs = spuTimeUs;
                    break;
                case 2:
                    this.endTimeUs = spuTimeUs;
                    break;
                case 3:
                    break;
                case 4:
                    break;
                case 5:
                    break;
                case 6:
                    break;
                case 255:
                    break;
                default:
                    Log.w(VobsubParser.TAG, "Unrecognized command: " + command);
                    break;
            }
            return false;
        }

        @RequiresNonNull({"this.palette"})
        private boolean parseControlColors(ParsableByteArray buffer) {
            if (buffer.bytesLeft() < 2) {
                Log.w(VobsubParser.TAG, "Incomplete color command");
                return false;
            }
            int byte0 = buffer.readUnsignedByte();
            int byte1 = buffer.readUnsignedByte();
            this.colors[3] = getColor(this.palette, byte0 >> 4);
            this.colors[2] = getColor(this.palette, byte0 & 15);
            this.colors[1] = getColor(this.palette, byte1 >> 4);
            this.colors[0] = getColor(this.palette, byte1 & 15);
            this.hasColors = true;
            return true;
        }

        private static int getColor(int[] palette, int index) {
            return (index < 0 || index >= palette.length) ? palette[0] : palette[index];
        }

        private boolean parseControlAlpha(ParsableByteArray buffer) {
            if (buffer.bytesLeft() < 2) {
                Log.w(VobsubParser.TAG, "Incomplete alpha command");
                return false;
            }
            if (!this.hasColors) {
                Log.w(VobsubParser.TAG, "Ignoring alpha command before color command");
                return false;
            }
            int byte0 = buffer.readUnsignedByte();
            int byte1 = buffer.readUnsignedByte();
            this.colors[3] = setAlpha(this.colors[3], byte0 >> 4);
            this.colors[2] = setAlpha(this.colors[2], byte0 & 15);
            this.colors[1] = setAlpha(this.colors[1], byte1 >> 4);
            this.colors[0] = setAlpha(this.colors[0], byte1 & 15);
            return true;
        }

        private static int setAlpha(int color, int alpha) {
            return (16777215 & color) | ((alpha * 17) << 24);
        }

        private boolean parseControlArea(ParsableByteArray buffer) {
            if (buffer.bytesLeft() < 6) {
                Log.w(VobsubParser.TAG, "Incomplete area command");
                return false;
            }
            int byte0 = buffer.readUnsignedByte();
            int byte1 = buffer.readUnsignedByte();
            int byte2 = buffer.readUnsignedByte();
            int left = (byte0 << 4) | (byte1 >> 4);
            int right = ((byte1 & 15) << 8) | byte2;
            int byte3 = buffer.readUnsignedByte();
            int byte4 = buffer.readUnsignedByte();
            int byte5 = buffer.readUnsignedByte();
            int top = (byte3 << 4) | (byte4 >> 4);
            int bottom = ((byte4 & 15) << 8) | byte5;
            this.boundingBox = new Rect(left, top, right + 1, bottom + 1);
            return true;
        }

        private boolean parseControlOffsets(ParsableByteArray buffer) {
            if (buffer.bytesLeft() < 4) {
                Log.w(VobsubParser.TAG, "Incomplete offsets command");
                return false;
            }
            this.dataOffset0 = buffer.readUnsignedShort();
            this.dataOffset1 = buffer.readUnsignedShort();
            return true;
        }

        public Cue build(ParsableByteArray buffer) {
            if (this.palette == null || !this.hasPlane || !this.hasColors || this.boundingBox == null || this.dataOffset0 == -1 || this.dataOffset1 == -1 || this.boundingBox.width() < 2 || this.boundingBox.height() < 2) {
                return null;
            }
            Rect boundingBox = this.boundingBox;
            int[] bitmapData = new int[boundingBox.width() * boundingBox.height()];
            ParsableBitArray bitBuffer = new ParsableBitArray();
            buffer.setPosition(this.dataOffset0);
            bitBuffer.reset(buffer);
            parseRleData(bitBuffer, true, boundingBox, bitmapData);
            buffer.setPosition(this.dataOffset1);
            bitBuffer.reset(buffer);
            parseRleData(bitBuffer, false, boundingBox, bitmapData);
            Bitmap bitmap = Bitmap.createBitmap(bitmapData, boundingBox.width(), boundingBox.height(), Bitmap.Config.ARGB_8888);
            return new Cue.Builder().setBitmap(bitmap).setPosition(boundingBox.left / this.planeWidth).setPositionAnchor(0).setLine(boundingBox.top / this.planeHeight, 0).setLineAnchor(0).setSize(boundingBox.width() / this.planeWidth).setBitmapHeight(boundingBox.height() / this.planeHeight).build();
        }

        private void parseRleData(ParsableBitArray parsableBitArray, boolean z, Rect rect, int[] iArr) {
            int iWidth = rect.width();
            int iHeight = rect.height();
            int i = 0;
            int i2 = !z ? 1 : 0;
            int i3 = i2 * iWidth;
            Run run = new Run();
            while (true) {
                parseRun(parsableBitArray, iWidth, run);
                int iMin = Math.min(run.length, iWidth - i);
                if (iMin > 0) {
                    Arrays.fill(iArr, i3, i3 + iMin, this.colors[run.colorIndex]);
                    i3 += iMin;
                    i += iMin;
                }
                if (i >= iWidth) {
                    i2 += 2;
                    if (i2 < iHeight) {
                        i = 0;
                        i3 = i2 * iWidth;
                        parsableBitArray.byteAlign();
                    } else {
                        return;
                    }
                }
            }
        }

        private static void parseRun(ParsableBitArray bitBuffer, int width, Run output) {
            int value = 0;
            for (int test = 1; value < test && test <= 64; test <<= 2) {
                if (bitBuffer.bitsLeft() >= 4) {
                    value = (value << 4) | bitBuffer.readBits(4);
                } else {
                    output.colorIndex = -1;
                    output.length = 0;
                    return;
                }
            }
            output.colorIndex = value & 3;
            output.length = value < 4 ? width : value >> 2;
        }

        public void reset() {
            this.startTimeUs = C.TIME_UNSET;
            this.endTimeUs = C.TIME_UNSET;
            this.hasColors = false;
            this.boundingBox = null;
            this.dataOffset0 = -1;
            this.dataOffset1 = -1;
        }

        private static final class Run {
            public int colorIndex;
            public int length;

            private Run() {
            }
        }
    }
}
