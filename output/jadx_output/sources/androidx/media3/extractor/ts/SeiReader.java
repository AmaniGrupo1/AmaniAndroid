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
public final class SeiReader {
    private final List<Format> closedCaptionFormats;
    private final String containerMimeType;
    private final TrackOutput[] outputs;
    private final ReorderingBufferQueue reorderingBufferQueue = new ReorderingBufferQueue(new ReorderingBufferQueue.OutputConsumer() { // from class: androidx.media3.extractor.ts.SeiReader$$ExternalSyntheticLambda0
        @Override // androidx.media3.container.ReorderingBufferQueue.OutputConsumer
        public final void consume(long j, ParsableByteArray parsableByteArray) {
            this.f$0.m8032lambda$new$0$androidxmedia3extractortsSeiReader(j, parsableByteArray);
        }
    });

    public SeiReader(List<Format> closedCaptionFormats, String containerMimeType) {
        this.closedCaptionFormats = closedCaptionFormats;
        this.containerMimeType = containerMimeType;
        this.outputs = new TrackOutput[closedCaptionFormats.size()];
    }

    /* JADX INFO: renamed from: lambda$new$0$androidx-media3-extractor-ts-SeiReader, reason: not valid java name */
    /* synthetic */ void m8032lambda$new$0$androidxmedia3extractortsSeiReader(long presentationTimeUs, ParsableByteArray seiBuffer) {
        CeaUtil.consume(presentationTimeUs, seiBuffer, this.outputs);
    }

    public void createTracks(ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator idGenerator) {
        for (int i = 0; i < this.outputs.length; i++) {
            idGenerator.generateNewId();
            TrackOutput output = extractorOutput.track(idGenerator.getTrackId(), 3);
            Format channelFormat = this.closedCaptionFormats.get(i);
            String channelMimeType = channelFormat.sampleMimeType;
            Preconditions.checkArgument(MimeTypes.APPLICATION_CEA608.equals(channelMimeType) || MimeTypes.APPLICATION_CEA708.equals(channelMimeType), "Invalid closed caption MIME type provided: %s", channelMimeType);
            String formatId = channelFormat.id != null ? channelFormat.id : idGenerator.getFormatId();
            output.format(new Format.Builder().setId(formatId).setContainerMimeType(this.containerMimeType).setSampleMimeType(channelMimeType).setSelectionFlags(channelFormat.selectionFlags).setLanguage(channelFormat.language).setAccessibilityChannel(channelFormat.accessibilityChannel).setInitializationData(channelFormat.initializationData).build());
            this.outputs[i] = output;
        }
    }

    public void setReorderingQueueSize(int reorderingQueueSize) {
        this.reorderingBufferQueue.setMaxSize(reorderingQueueSize);
    }

    public void consume(long pesTimeUs, ParsableByteArray seiBuffer) {
        this.reorderingBufferQueue.add(pesTimeUs, seiBuffer);
    }

    public void flush() {
        this.reorderingBufferQueue.flush();
    }

    public void clear() {
        this.reorderingBufferQueue.flush();
    }
}
