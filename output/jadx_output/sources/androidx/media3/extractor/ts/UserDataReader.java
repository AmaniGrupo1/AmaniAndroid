package androidx.media3.extractor.ts;

import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.container.ReorderingBufferQueue;
import androidx.media3.extractor.CeaUtil;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.TrackOutput;
import androidx.media3.extractor.ts.TsPayloadReader;
import com.google.common.base.Preconditions;
import java.util.List;

/* JADX INFO: loaded from: classes21.dex */
final class UserDataReader {
    private static final int USER_DATA_START_CODE = 434;
    private final List<Format> closedCaptionFormats;
    private final String containerMimeType;
    private final TrackOutput[] outputs;
    private final ReorderingBufferQueue reorderingBufferQueue = new ReorderingBufferQueue(new ReorderingBufferQueue.OutputConsumer() { // from class: androidx.media3.extractor.ts.UserDataReader$$ExternalSyntheticLambda0
        @Override // androidx.media3.container.ReorderingBufferQueue.OutputConsumer
        public final void consume(long j, ParsableByteArray parsableByteArray) {
            this.f$0.m8033lambda$new$0$androidxmedia3extractortsUserDataReader(j, parsableByteArray);
        }
    });

    public UserDataReader(List<Format> closedCaptionFormats, String containerMimeType) {
        this.closedCaptionFormats = closedCaptionFormats;
        this.containerMimeType = containerMimeType;
        this.outputs = new TrackOutput[closedCaptionFormats.size()];
        this.reorderingBufferQueue.setMaxSize(3);
    }

    /* JADX INFO: renamed from: lambda$new$0$androidx-media3-extractor-ts-UserDataReader, reason: not valid java name */
    /* synthetic */ void m8033lambda$new$0$androidxmedia3extractortsUserDataReader(long presentationTimeUs, ParsableByteArray seiBuffer) {
        CeaUtil.consumeCcData(presentationTimeUs, seiBuffer, this.outputs);
    }

    public void createTracks(ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator idGenerator) {
        for (int i = 0; i < this.outputs.length; i++) {
            idGenerator.generateNewId();
            TrackOutput output = extractorOutput.track(idGenerator.getTrackId(), 3);
            Format channelFormat = this.closedCaptionFormats.get(i);
            String channelMimeType = channelFormat.sampleMimeType;
            Preconditions.checkArgument(MimeTypes.APPLICATION_CEA608.equals(channelMimeType) || MimeTypes.APPLICATION_CEA708.equals(channelMimeType), "Invalid closed caption MIME type provided: %s", channelMimeType);
            output.format(new Format.Builder().setId(idGenerator.getFormatId()).setContainerMimeType(this.containerMimeType).setSampleMimeType(channelMimeType).setSelectionFlags(channelFormat.selectionFlags).setLanguage(channelFormat.language).setAccessibilityChannel(channelFormat.accessibilityChannel).setInitializationData(channelFormat.initializationData).build());
            this.outputs[i] = output;
        }
    }

    public void consume(long pesTimeUs, ParsableByteArray userDataPayload) {
        if (userDataPayload.bytesLeft() < 9) {
            return;
        }
        int userDataStartCode = userDataPayload.readInt();
        int userDataIdentifier = userDataPayload.readInt();
        int userDataTypeCode = userDataPayload.readUnsignedByte();
        if (userDataStartCode == USER_DATA_START_CODE && userDataIdentifier == 1195456820 && userDataTypeCode == 3) {
            this.reorderingBufferQueue.add(pesTimeUs, userDataPayload);
        }
    }
}
