package androidx.media3.exoplayer;

import android.media.MediaFormat;
import android.os.Bundle;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes21.dex */
public final class CodecParameters {
    public static final CodecParameters EMPTY = new Builder().build();
    private final Map<String, Object> params;

    private CodecParameters(Map<String, Object> params) {
        this.params = Collections.unmodifiableMap(params);
    }

    public Builder buildUpon() {
        return new Builder();
    }

    public static final class Builder {
        private final Map<String, Object> params;

        public Builder() {
            this.params = new HashMap();
        }

        private Builder(CodecParameters codecParameters) {
            this.params = new HashMap(codecParameters.params);
        }

        public Builder setInteger(String key, int value) {
            this.params.put(key, Integer.valueOf(value));
            return this;
        }

        public Builder setLong(String key, long value) {
            this.params.put(key, Long.valueOf(value));
            return this;
        }

        public Builder setFloat(String key, float value) {
            this.params.put(key, Float.valueOf(value));
            return this;
        }

        public Builder setString(String key, String value) {
            this.params.put(key, value);
            return this;
        }

        public Builder setByteBuffer(String key, ByteBuffer value) {
            if (value == null) {
                this.params.put(key, null);
            } else {
                ByteBuffer clone = ByteBuffer.allocate(value.remaining());
                clone.put(value.duplicate());
                clone.flip();
                this.params.put(key, clone);
            }
            return this;
        }

        public Builder remove(String key) {
            this.params.remove(key);
            return this;
        }

        public CodecParameters build() {
            return new CodecParameters(this.params);
        }
    }

    public static Builder createFrom(MediaFormat mediaFormat, Set<String> keys) {
        Builder builder = new Builder();
        for (String key : keys) {
            if (mediaFormat.containsKey(key)) {
                int type = mediaFormat.getValueTypeForKey(key);
                switch (type) {
                    case 1:
                        builder.setInteger(key, mediaFormat.getInteger(key));
                        break;
                    case 2:
                        builder.setLong(key, mediaFormat.getLong(key));
                        break;
                    case 3:
                        builder.setFloat(key, mediaFormat.getFloat(key));
                        break;
                    case 4:
                        builder.setString(key, mediaFormat.getString(key));
                        break;
                    case 5:
                        builder.setByteBuffer(key, mediaFormat.getByteBuffer(key));
                        break;
                }
            }
        }
        return builder;
    }

    public Object get(String key) {
        return this.params.get(key);
    }

    public Set<String> keySet() {
        return this.params.keySet();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CodecParameters)) {
            return false;
        }
        CodecParameters other = (CodecParameters) obj;
        return this.params.equals(other.params);
    }

    public int hashCode() {
        return this.params.hashCode();
    }

    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        for (Map.Entry<String, Object> entry : this.params.entrySet()) {
            String key = entry.getKey();
            Object value = entry.getValue();
            if (value != null) {
                if (value instanceof Integer) {
                    bundle.putInt(key, ((Integer) value).intValue());
                } else if (value instanceof Long) {
                    bundle.putLong(key, ((Long) value).longValue());
                } else if (value instanceof Float) {
                    bundle.putFloat(key, ((Float) value).floatValue());
                } else if (value instanceof String) {
                    bundle.putString(key, (String) value);
                } else if (value instanceof ByteBuffer) {
                    ByteBuffer byteBuffer = (ByteBuffer) value;
                    byte[] bytes = new byte[byteBuffer.remaining()];
                    byteBuffer.duplicate().get(bytes);
                    bundle.putByteArray(key, bytes);
                }
            }
        }
        return bundle;
    }

    public void applyTo(MediaFormat mediaFormat) {
        for (Map.Entry<String, Object> entry : this.params.entrySet()) {
            String key = entry.getKey();
            Object value = entry.getValue();
            if (value == null) {
                mediaFormat.setString(key, null);
            } else if (value instanceof Integer) {
                mediaFormat.setInteger(key, ((Integer) value).intValue());
            } else if (value instanceof Long) {
                mediaFormat.setLong(key, ((Long) value).longValue());
            } else if (value instanceof Float) {
                mediaFormat.setFloat(key, ((Float) value).floatValue());
            } else if (value instanceof String) {
                mediaFormat.setString(key, (String) value);
            } else if (value instanceof ByteBuffer) {
                mediaFormat.setByteBuffer(key, (ByteBuffer) value);
            }
        }
    }
}
