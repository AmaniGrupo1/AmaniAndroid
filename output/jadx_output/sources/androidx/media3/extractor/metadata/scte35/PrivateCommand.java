package androidx.media3.extractor.metadata.scte35;

import androidx.media3.common.util.ParsableByteArray;

/* JADX INFO: loaded from: classes21.dex */
public final class PrivateCommand extends SpliceCommand {
    public final byte[] commandBytes;
    public final long identifier;
    public final long ptsAdjustment;

    private PrivateCommand(long identifier, byte[] commandBytes, long ptsAdjustment) {
        this.ptsAdjustment = ptsAdjustment;
        this.identifier = identifier;
        this.commandBytes = commandBytes;
    }

    static PrivateCommand parseFromSection(ParsableByteArray sectionData, int commandLength, long ptsAdjustment) {
        long identifier = sectionData.readUnsignedInt();
        byte[] privateBytes = new byte[commandLength - 4];
        sectionData.readBytes(privateBytes, 0, privateBytes.length);
        return new PrivateCommand(identifier, privateBytes, ptsAdjustment);
    }

    @Override // androidx.media3.extractor.metadata.scte35.SpliceCommand
    public String toString() {
        return "SCTE-35 PrivateCommand { ptsAdjustment=" + this.ptsAdjustment + ", identifier= " + this.identifier + " }";
    }
}
