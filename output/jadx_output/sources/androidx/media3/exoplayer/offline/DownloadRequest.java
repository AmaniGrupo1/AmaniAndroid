package androidx.media3.exoplayer.offline;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.media3.common.C;
import androidx.media3.common.MediaItem;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.StreamKey;
import androidx.media3.common.util.Util;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes21.dex */
public final class DownloadRequest implements Parcelable {
    public static final Parcelable.Creator<DownloadRequest> CREATOR = new Parcelable.Creator<DownloadRequest>() { // from class: androidx.media3.exoplayer.offline.DownloadRequest.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DownloadRequest createFromParcel(Parcel in) {
            return new DownloadRequest(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DownloadRequest[] newArray(int size) {
            return new DownloadRequest[size];
        }
    };
    public final ByteRange byteRange;
    public final String customCacheKey;
    public final byte[] data;
    public final String id;
    public final byte[] keySetId;
    public final String mimeType;
    public final List<StreamKey> streamKeys;
    public final TimeRange timeRange;
    public final Uri uri;

    public static class UnsupportedRequestException extends IOException {
    }

    public static class Builder {
        private String customCacheKey;
        private byte[] data;
        private final String id;
        private byte[] keySetId;
        private String mimeType;
        private List<StreamKey> streamKeys;
        private final Uri uri;
        private ByteRange byteRange = null;
        private TimeRange timeRange = null;

        public Builder(String id, Uri uri) {
            this.id = id;
            this.uri = uri;
        }

        public Builder setMimeType(String mimeType) {
            this.mimeType = MimeTypes.normalizeMimeType(mimeType);
            return this;
        }

        public Builder setStreamKeys(List<StreamKey> streamKeys) {
            this.streamKeys = streamKeys;
            return this;
        }

        public Builder setKeySetId(byte[] keySetId) {
            this.keySetId = keySetId;
            return this;
        }

        public Builder setCustomCacheKey(String customCacheKey) {
            this.customCacheKey = customCacheKey;
            return this;
        }

        public Builder setData(byte[] data) {
            this.data = data;
            return this;
        }

        public Builder setByteRange(long offset, long length) {
            this.byteRange = new ByteRange(offset, length);
            return this;
        }

        public Builder setTimeRange(long startPositionUs, long durationUs) {
            this.timeRange = new TimeRange(startPositionUs, durationUs);
            return this;
        }

        public DownloadRequest build() {
            return new DownloadRequest(this.id, this.uri, this.mimeType, this.streamKeys != null ? this.streamKeys : ImmutableList.of(), this.keySetId, this.customCacheKey, this.data, this.byteRange, this.timeRange);
        }
    }

    private DownloadRequest(String id, Uri uri, String mimeType, List<StreamKey> streamKeys, byte[] keySetId, String customCacheKey, byte[] data, ByteRange byteRange, TimeRange timeRange) {
        int contentType = Util.inferContentTypeForUriAndMimeType(uri, mimeType);
        if (contentType == 0 || contentType == 2 || contentType == 1) {
            Preconditions.checkArgument(customCacheKey == null, "customCacheKey must be null for type: %s", contentType);
            this.byteRange = null;
            this.timeRange = timeRange;
        } else {
            this.byteRange = byteRange;
            this.timeRange = null;
        }
        this.id = id;
        this.uri = uri;
        this.mimeType = mimeType;
        ArrayList<StreamKey> mutableKeys = new ArrayList<>(streamKeys);
        Collections.sort(mutableKeys);
        this.streamKeys = Collections.unmodifiableList(mutableKeys);
        this.keySetId = keySetId != null ? Arrays.copyOf(keySetId, keySetId.length) : null;
        this.customCacheKey = customCacheKey;
        this.data = data != null ? Arrays.copyOf(data, data.length) : Util.EMPTY_BYTE_ARRAY;
    }

    DownloadRequest(Parcel in) {
        this.id = (String) Util.castNonNull(in.readString());
        this.uri = Uri.parse((String) Util.castNonNull(in.readString()));
        this.mimeType = in.readString();
        int streamKeyCount = in.readInt();
        ArrayList<StreamKey> mutableStreamKeys = new ArrayList<>(streamKeyCount);
        for (int i = 0; i < streamKeyCount; i++) {
            mutableStreamKeys.add((StreamKey) in.readParcelable(StreamKey.class.getClassLoader()));
        }
        this.streamKeys = Collections.unmodifiableList(mutableStreamKeys);
        this.keySetId = in.createByteArray();
        this.customCacheKey = in.readString();
        this.data = (byte[]) Util.castNonNull(in.createByteArray());
        this.byteRange = (ByteRange) in.readParcelable(ByteRange.class.getClassLoader());
        this.timeRange = (TimeRange) in.readParcelable(TimeRange.class.getClassLoader());
    }

    public DownloadRequest copyWithId(String id) {
        return new DownloadRequest(id, this.uri, this.mimeType, this.streamKeys, this.keySetId, this.customCacheKey, this.data, this.byteRange, this.timeRange);
    }

    public DownloadRequest copyWithKeySetId(byte[] keySetId) {
        return new DownloadRequest(this.id, this.uri, this.mimeType, this.streamKeys, keySetId, this.customCacheKey, this.data, this.byteRange, this.timeRange);
    }

    public DownloadRequest copyWithMergedRequest(DownloadRequest newRequest) {
        List<StreamKey> mergedKeys;
        Preconditions.checkArgument(this.id.equals(newRequest.id));
        if (this.streamKeys.isEmpty() || newRequest.streamKeys.isEmpty()) {
            List<StreamKey> mergedKeys2 = Collections.emptyList();
            mergedKeys = mergedKeys2;
        } else {
            List<StreamKey> mergedKeys3 = new ArrayList<>(this.streamKeys);
            for (int i = 0; i < newRequest.streamKeys.size(); i++) {
                StreamKey newKey = newRequest.streamKeys.get(i);
                if (!mergedKeys3.contains(newKey)) {
                    mergedKeys3.add(newKey);
                }
            }
            mergedKeys = mergedKeys3;
        }
        return new DownloadRequest(this.id, newRequest.uri, newRequest.mimeType, mergedKeys, newRequest.keySetId, newRequest.customCacheKey, newRequest.data, newRequest.byteRange, newRequest.timeRange);
    }

    public MediaItem toMediaItem() {
        return toMediaItem(new MediaItem.Builder());
    }

    public MediaItem toMediaItem(MediaItem.Builder builder) {
        return builder.setMediaId(this.id).setUri(this.uri).setCustomCacheKey(this.customCacheKey).setMimeType(this.mimeType).setStreamKeys(this.streamKeys).build();
    }

    public String toString() {
        return this.mimeType + ":" + this.id;
    }

    public boolean equals(Object o) {
        if (!(o instanceof DownloadRequest)) {
            return false;
        }
        DownloadRequest that = (DownloadRequest) o;
        return this.id.equals(that.id) && this.uri.equals(that.uri) && Objects.equals(this.mimeType, that.mimeType) && this.streamKeys.equals(that.streamKeys) && Arrays.equals(this.keySetId, that.keySetId) && Objects.equals(this.customCacheKey, that.customCacheKey) && Arrays.equals(this.data, that.data) && Objects.equals(this.byteRange, that.byteRange) && Objects.equals(this.timeRange, that.timeRange);
    }

    public int hashCode() {
        int result = this.id.hashCode() * 31;
        return (((((((((((((((result * 31) + this.uri.hashCode()) * 31) + (this.mimeType != null ? this.mimeType.hashCode() : 0)) * 31) + this.streamKeys.hashCode()) * 31) + Arrays.hashCode(this.keySetId)) * 31) + (this.customCacheKey != null ? this.customCacheKey.hashCode() : 0)) * 31) + Arrays.hashCode(this.data)) * 31) + (this.byteRange != null ? this.byteRange.hashCode() : 0)) * 31) + (this.timeRange != null ? this.timeRange.hashCode() : 0);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.id);
        dest.writeString(this.uri.toString());
        dest.writeString(this.mimeType);
        dest.writeInt(this.streamKeys.size());
        for (int i = 0; i < this.streamKeys.size(); i++) {
            dest.writeParcelable(this.streamKeys.get(i), 0);
        }
        dest.writeByteArray(this.keySetId);
        dest.writeString(this.customCacheKey);
        dest.writeByteArray(this.data);
        dest.writeParcelable(this.byteRange, 0);
        dest.writeParcelable(this.timeRange, 0);
    }

    public static final class ByteRange implements Parcelable {
        public static final Parcelable.Creator<ByteRange> CREATOR = new Parcelable.Creator<ByteRange>() { // from class: androidx.media3.exoplayer.offline.DownloadRequest.ByteRange.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public ByteRange createFromParcel(Parcel in) {
                return new ByteRange(in);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public ByteRange[] newArray(int size) {
                return new ByteRange[size];
            }
        };
        public final long length;
        public final long offset;

        ByteRange(long offset, long length) {
            boolean z = true;
            Preconditions.checkArgument(offset >= 0);
            if (length < 0 && length != -1) {
                z = false;
            }
            Preconditions.checkArgument(z);
            this.offset = offset;
            this.length = length;
        }

        ByteRange(Parcel in) {
            this(in.readLong(), in.readLong());
        }

        public boolean equals(Object o) {
            if (!(o instanceof ByteRange)) {
                return false;
            }
            ByteRange that = (ByteRange) o;
            return this.offset == that.offset && this.length == that.length;
        }

        public int hashCode() {
            int result = ((int) this.offset) * 31;
            return (result * 31) + ((int) this.length);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel dest, int flags) {
            dest.writeLong(this.offset);
            dest.writeLong(this.length);
        }
    }

    public static final class TimeRange implements Parcelable {
        public static final Parcelable.Creator<TimeRange> CREATOR = new Parcelable.Creator<TimeRange>() { // from class: androidx.media3.exoplayer.offline.DownloadRequest.TimeRange.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public TimeRange createFromParcel(Parcel in) {
                return new TimeRange(in);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public TimeRange[] newArray(int size) {
                return new TimeRange[size];
            }
        };
        public final long durationUs;
        public final long startPositionUs;

        TimeRange(long startPositionUs, long durationUs) {
            Preconditions.checkArgument(durationUs >= 0 || durationUs == C.TIME_UNSET);
            this.startPositionUs = startPositionUs;
            this.durationUs = durationUs;
        }

        TimeRange(Parcel in) {
            this(in.readLong(), in.readLong());
        }

        public boolean equals(Object o) {
            if (!(o instanceof TimeRange)) {
                return false;
            }
            TimeRange that = (TimeRange) o;
            return this.startPositionUs == that.startPositionUs && this.durationUs == that.durationUs;
        }

        public int hashCode() {
            int result = ((int) this.startPositionUs) * 31;
            return (result * 31) + ((int) this.durationUs);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel dest, int flags) {
            dest.writeLong(this.startPositionUs);
            dest.writeLong(this.durationUs);
        }
    }
}
