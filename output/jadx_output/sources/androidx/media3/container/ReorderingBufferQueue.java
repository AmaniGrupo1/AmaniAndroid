package androidx.media3.container;

import androidx.media3.common.C;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import com.google.common.base.Preconditions;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import java.util.PriorityQueue;

/* JADX INFO: loaded from: classes21.dex */
public final class ReorderingBufferQueue {
    private BuffersWithTimestamp lastQueuedBuffer;
    private final OutputConsumer outputConsumer;
    private final ArrayDeque<ParsableByteArray> unusedParsableByteArrays = new ArrayDeque<>();
    private final ArrayDeque<BuffersWithTimestamp> unusedBuffersWithTimestamp = new ArrayDeque<>();
    private final PriorityQueue<BuffersWithTimestamp> pendingBuffers = new PriorityQueue<>();
    private int reorderingQueueSize = -1;

    public interface OutputConsumer {
        void consume(long j, ParsableByteArray parsableByteArray);
    }

    public ReorderingBufferQueue(OutputConsumer outputConsumer) {
        this.outputConsumer = outputConsumer;
    }

    public void setMaxSize(int reorderingQueueSize) {
        Preconditions.checkState(reorderingQueueSize >= 0);
        this.reorderingQueueSize = reorderingQueueSize;
        flushQueueDownToSize(reorderingQueueSize);
    }

    public int getMaxSize() {
        return this.reorderingQueueSize;
    }

    public void add(long presentationTimeUs, ParsableByteArray buffer) {
        BuffersWithTimestamp buffersWithTimestamp;
        if (presentationTimeUs == C.TIME_UNSET || this.reorderingQueueSize == 0 || (this.reorderingQueueSize != -1 && this.pendingBuffers.size() >= this.reorderingQueueSize && presentationTimeUs < ((BuffersWithTimestamp) Util.castNonNull(this.pendingBuffers.peek())).presentationTimeUs)) {
            this.outputConsumer.consume(presentationTimeUs, buffer);
            return;
        }
        ParsableByteArray bufferCopy = copy(buffer);
        if (this.lastQueuedBuffer != null && presentationTimeUs == this.lastQueuedBuffer.presentationTimeUs) {
            this.lastQueuedBuffer.nalBuffers.add(bufferCopy);
            return;
        }
        if (this.unusedBuffersWithTimestamp.isEmpty()) {
            buffersWithTimestamp = new BuffersWithTimestamp();
        } else {
            buffersWithTimestamp = this.unusedBuffersWithTimestamp.pop();
        }
        buffersWithTimestamp.init(presentationTimeUs, bufferCopy);
        this.pendingBuffers.add(buffersWithTimestamp);
        this.lastQueuedBuffer = buffersWithTimestamp;
        if (this.reorderingQueueSize != -1) {
            flushQueueDownToSize(this.reorderingQueueSize);
        }
    }

    private ParsableByteArray copy(ParsableByteArray input) {
        ParsableByteArray result;
        if (this.unusedParsableByteArrays.isEmpty()) {
            result = new ParsableByteArray();
        } else {
            result = this.unusedParsableByteArrays.pop();
        }
        result.reset(input.bytesLeft());
        System.arraycopy(input.getData(), input.getPosition(), result.getData(), 0, result.bytesLeft());
        return result;
    }

    public void clear() {
        this.pendingBuffers.clear();
    }

    public void flush() {
        flushQueueDownToSize(0);
    }

    private void flushQueueDownToSize(int targetSize) {
        while (this.pendingBuffers.size() > targetSize) {
            BuffersWithTimestamp buffersWithTimestamp = (BuffersWithTimestamp) Util.castNonNull(this.pendingBuffers.poll());
            for (int i = 0; i < buffersWithTimestamp.nalBuffers.size(); i++) {
                this.outputConsumer.consume(buffersWithTimestamp.presentationTimeUs, buffersWithTimestamp.nalBuffers.get(i));
                this.unusedParsableByteArrays.push(buffersWithTimestamp.nalBuffers.get(i));
            }
            buffersWithTimestamp.nalBuffers.clear();
            if (this.lastQueuedBuffer != null && this.lastQueuedBuffer.presentationTimeUs == buffersWithTimestamp.presentationTimeUs) {
                this.lastQueuedBuffer = null;
            }
            this.unusedBuffersWithTimestamp.push(buffersWithTimestamp);
        }
    }

    private static final class BuffersWithTimestamp implements Comparable<BuffersWithTimestamp> {
        public long presentationTimeUs = C.TIME_UNSET;
        public final List<ParsableByteArray> nalBuffers = new ArrayList();

        public void init(long presentationTimeUs, ParsableByteArray nalBuffer) {
            Preconditions.checkArgument(presentationTimeUs != C.TIME_UNSET);
            Preconditions.checkState(this.nalBuffers.isEmpty());
            this.presentationTimeUs = presentationTimeUs;
            this.nalBuffers.add(nalBuffer);
        }

        @Override // java.lang.Comparable
        public int compareTo(BuffersWithTimestamp other) {
            return Long.compare(this.presentationTimeUs, other.presentationTimeUs);
        }
    }
}
