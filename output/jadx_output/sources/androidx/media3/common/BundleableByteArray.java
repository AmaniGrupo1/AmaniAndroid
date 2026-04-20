package androidx.media3.common;

import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.SharedMemory;
import android.system.OsConstants;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Iterables;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* JADX INFO: loaded from: classes21.dex */
public final class BundleableByteArray {
    private static final String FIELD_IN_PROCESS_BINDER = Util.intToStringMaxRadix(0);
    private static final String FIELD_SHARED_MEMORY = Util.intToStringMaxRadix(1);
    private static final String FIELD_SPLIT_ARRAY_RETRIEVER = Util.intToStringMaxRadix(2);
    private static final String TAG = "BundleableByteArray";
    private final byte[] byteArray;
    private final InProcessBinder inProcessBinder = new InProcessBinder();
    SharedMemoryApi27 sharedMemoryApi27;
    SplitArrayRetriever splitArrayRetriever;

    public BundleableByteArray(byte[] byteArray) {
        this.byteArray = byteArray;
    }

    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putBinder(FIELD_IN_PROCESS_BINDER, this.inProcessBinder);
        if (Build.VERSION.SDK_INT >= 27 && this.byteArray.length > 0) {
            if (this.sharedMemoryApi27 == null) {
                this.sharedMemoryApi27 = SharedMemoryApi27.create(this.byteArray);
            }
            if (this.sharedMemoryApi27 != null) {
                this.sharedMemoryApi27.writeToBundle(bundle);
                return bundle;
            }
        }
        if (this.splitArrayRetriever == null) {
            this.splitArrayRetriever = new SplitArrayRetriever(this.byteArray);
        }
        this.splitArrayRetriever.writeToBundle(bundle);
        return bundle;
    }

    public static byte[] fromBundle(Bundle bundle) {
        byte[] byteArray;
        IBinder inProcessBinder = bundle.getBinder(FIELD_IN_PROCESS_BINDER);
        if (inProcessBinder == null) {
            return null;
        }
        boolean isLocal = inProcessBinder instanceof InProcessBinder;
        if (!isLocal) {
            if (Build.VERSION.SDK_INT >= 27 && (byteArray = SharedMemoryApi27.readFromBundle(bundle)) != null) {
                return byteArray;
            }
            return SplitArrayRetriever.readFromBundle(bundle);
        }
        return ((InProcessBinder) inProcessBinder).getByteArray();
    }

    private static final class SharedMemoryApi27 {
        private final SharedMemory sharedMemory;

        /* JADX INFO: Access modifiers changed from: private */
        public static SharedMemoryApi27 create(byte[] byteArray) {
            SharedMemory sharedMemory = null;
            try {
                sharedMemory = SharedMemory.create(BundleableByteArray.TAG, byteArray.length);
                ByteBuffer byteBuffer = sharedMemory.mapReadWrite();
                byteBuffer.put(byteArray);
                SharedMemory.unmap(byteBuffer);
                sharedMemory.setProtect(OsConstants.PROT_READ);
                return new SharedMemoryApi27(sharedMemory);
            } catch (Exception e) {
                Log.w(BundleableByteArray.TAG, "Failed to allocate shared memory for byte array, size=" + byteArray.length, e);
                if (sharedMemory != null) {
                    sharedMemory.close();
                    return null;
                }
                return null;
            }
        }

        private SharedMemoryApi27(SharedMemory sharedMemory) {
            this.sharedMemory = sharedMemory;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void writeToBundle(Bundle bundle) {
            bundle.putParcelable(BundleableByteArray.FIELD_SHARED_MEMORY, this.sharedMemory);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static byte[] readFromBundle(Bundle bundle) {
            SharedMemory sharedMemory = (SharedMemory) bundle.getParcelable(BundleableByteArray.FIELD_SHARED_MEMORY);
            if (sharedMemory == null) {
                return null;
            }
            ByteBuffer byteBuffer = null;
            try {
                try {
                    byteBuffer = sharedMemory.mapReadOnly();
                    byte[] byteArray = new byte[sharedMemory.getSize()];
                    byteBuffer.get(byteArray);
                    if (byteBuffer != null) {
                        SharedMemory.unmap(byteBuffer);
                    }
                    sharedMemory.close();
                    return byteArray;
                } catch (Exception e) {
                    Log.w(BundleableByteArray.TAG, "Failed to read byte array from shared memory", e);
                    if (byteBuffer != null) {
                        SharedMemory.unmap(byteBuffer);
                    }
                    sharedMemory.close();
                    return null;
                }
            } catch (Throwable th) {
                if (byteBuffer != null) {
                    SharedMemory.unmap(byteBuffer);
                }
                sharedMemory.close();
                throw th;
            }
        }
    }

    private static final class SplitArrayRetriever {
        private static final String BUNDLE_KEY = "bytes";
        private static final int CHUNK_SIZE = C.SUGGESTED_MAX_IPC_SIZE;
        private final BundleListRetriever bundleListRetriever;

        private SplitArrayRetriever(byte[] byteArray) {
            ImmutableList.Builder<Bundle> splitListBuilder = ImmutableList.builder();
            int chunkCount = Util.ceilDivide(byteArray.length, CHUNK_SIZE);
            for (int i = 0; i < chunkCount; i++) {
                Bundle bundle = new Bundle();
                int from = CHUNK_SIZE * i;
                int to = Math.min(CHUNK_SIZE + from, byteArray.length);
                bundle.putByteArray(BUNDLE_KEY, Arrays.copyOfRange(byteArray, from, to));
                splitListBuilder.add(bundle);
            }
            this.bundleListRetriever = new BundleListRetriever(splitListBuilder.build());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void writeToBundle(Bundle bundle) {
            bundle.putBinder(BundleableByteArray.FIELD_SPLIT_ARRAY_RETRIEVER, this.bundleListRetriever);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static byte[] readFromBundle(Bundle bundle) {
            IBinder binder = bundle.getBinder(BundleableByteArray.FIELD_SPLIT_ARRAY_RETRIEVER);
            if (binder == null) {
                return null;
            }
            try {
                ImmutableList<Bundle> list = BundleListRetriever.getList(binder);
                if (list.isEmpty()) {
                    return Util.EMPTY_BYTE_ARRAY;
                }
                byte[] lastByteArray = ((Bundle) Iterables.getLast(list)).getByteArray(BUNDLE_KEY);
                if (lastByteArray == null) {
                    return null;
                }
                int fullChunkCount = list.size() - 1;
                byte[] outArray = new byte[(CHUNK_SIZE * fullChunkCount) + lastByteArray.length];
                System.arraycopy(lastByteArray, 0, outArray, CHUNK_SIZE * fullChunkCount, lastByteArray.length);
                for (int i = 0; i < fullChunkCount; i++) {
                    byte[] chunk = list.get(i).getByteArray(BUNDLE_KEY);
                    if (chunk == null || chunk.length != CHUNK_SIZE) {
                        return null;
                    }
                    System.arraycopy(chunk, 0, outArray, CHUNK_SIZE * i, CHUNK_SIZE);
                }
                return outArray;
            } catch (RuntimeException e) {
                Log.w(BundleableByteArray.TAG, "Failed to read byte array from bundle list retriever", e);
                return null;
            }
        }
    }

    private final class InProcessBinder extends Binder {
        private InProcessBinder() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public byte[] getByteArray() {
            return BundleableByteArray.this.byteArray;
        }
    }
}
