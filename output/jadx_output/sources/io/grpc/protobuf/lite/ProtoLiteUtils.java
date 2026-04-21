package io.grpc.protobuf.lite;

import com.google.common.base.Preconditions;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.MessageLite;
import com.google.protobuf.Parser;
import io.grpc.KnownLength;
import io.grpc.Metadata;
import io.grpc.MethodDescriptor;
import io.grpc.Status;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes22.dex */
public final class ProtoLiteUtils {
    private static final int BUF_SIZE = 8192;
    static final int DEFAULT_MAX_MESSAGE_SIZE = 4194304;
    static volatile ExtensionRegistryLite globalRegistry = ExtensionRegistryLite.getEmptyRegistry();

    public static void setExtensionRegistry(ExtensionRegistryLite newRegistry) {
        globalRegistry = (ExtensionRegistryLite) Preconditions.checkNotNull(newRegistry, "newRegistry");
    }

    public static <T extends MessageLite> MethodDescriptor.Marshaller<T> marshaller(T defaultInstance) {
        return new MessageMarshaller(defaultInstance, -1);
    }

    public static <T extends MessageLite> MethodDescriptor.Marshaller<T> marshallerWithRecursionLimit(T defaultInstance, int recursionLimit) {
        return new MessageMarshaller(defaultInstance, recursionLimit);
    }

    public static <T extends MessageLite> Metadata.BinaryMarshaller<T> metadataMarshaller(T defaultInstance) {
        return new MetadataMarshaller(defaultInstance);
    }

    static long copy(InputStream from, OutputStream to) throws IOException {
        Preconditions.checkNotNull(from, "inputStream cannot be null!");
        Preconditions.checkNotNull(to, "outputStream cannot be null!");
        byte[] buf = new byte[8192];
        long total = 0;
        while (true) {
            int r = from.read(buf);
            if (r != -1) {
                to.write(buf, 0, r);
                total += (long) r;
            } else {
                return total;
            }
        }
    }

    private ProtoLiteUtils() {
    }

    private static final class MessageMarshaller<T extends MessageLite> implements MethodDescriptor.PrototypeMarshaller<T> {
        private static final ThreadLocal<Reference<byte[]>> bufs = new ThreadLocal<>();
        private final T defaultInstance;
        private final Parser<T> parser;
        private final int recursionLimit;

        MessageMarshaller(T t, int i) {
            this.defaultInstance = (T) Preconditions.checkNotNull(t, "defaultInstance cannot be null");
            this.parser = (Parser<T>) t.getParserForType();
            this.recursionLimit = i;
        }

        @Override // io.grpc.MethodDescriptor.ReflectableMarshaller
        public Class<T> getMessageClass() {
            return (Class<T>) this.defaultInstance.getClass();
        }

        @Override // io.grpc.MethodDescriptor.PrototypeMarshaller
        public T getMessagePrototype() {
            return this.defaultInstance;
        }

        @Override // io.grpc.MethodDescriptor.Marshaller
        public InputStream stream(T value) {
            return new ProtoInputStream(value, this.parser);
        }

        /* JADX WARN: Removed duplicated region for block: B:22:0x003e A[Catch: IOException -> 0x00ba, TryCatch #0 {IOException -> 0x00ba, blocks: (B:10:0x0019, B:12:0x001d, B:16:0x0027, B:18:0x0032, B:20:0x003b, B:25:0x004e, B:28:0x0058, B:30:0x005c, B:32:0x0063, B:33:0x0087, B:22:0x003e, B:35:0x008a), top: B:51:0x0019 }] */
        @Override // io.grpc.MethodDescriptor.Marshaller
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public T parse(InputStream inputStream) {
            if ((inputStream instanceof ProtoInputStream) && ((ProtoInputStream) inputStream).parser() == this.parser) {
                try {
                    return (T) ((ProtoInputStream) inputStream).message();
                } catch (IllegalStateException e) {
                }
            }
            CodedInputStream codedInputStreamNewInstance = null;
            try {
                if (inputStream instanceof KnownLength) {
                    int iAvailable = inputStream.available();
                    if (iAvailable > 0 && iAvailable <= 4194304) {
                        Reference<byte[]> reference = bufs.get();
                        if (reference != null) {
                            byte[] bArr = reference.get();
                            byte[] bArr2 = bArr;
                            if (bArr == null || bArr2.length < iAvailable) {
                                bArr2 = new byte[iAvailable];
                                bufs.set(new WeakReference(bArr2));
                            }
                            int i = iAvailable;
                            while (i > 0) {
                                int i2 = inputStream.read(bArr2, iAvailable - i, i);
                                if (i2 == -1) {
                                    break;
                                }
                                i -= i2;
                            }
                            if (i != 0) {
                                throw new RuntimeException("size inaccurate: " + iAvailable + " != " + (iAvailable - i));
                            }
                            codedInputStreamNewInstance = CodedInputStream.newInstance(bArr2, 0, iAvailable);
                        }
                    } else if (iAvailable == 0) {
                        return this.defaultInstance;
                    }
                }
                if (codedInputStreamNewInstance == null) {
                    codedInputStreamNewInstance = CodedInputStream.newInstance(inputStream);
                }
                codedInputStreamNewInstance.setSizeLimit(Integer.MAX_VALUE);
                if (this.recursionLimit >= 0) {
                    codedInputStreamNewInstance.setRecursionLimit(this.recursionLimit);
                }
                try {
                    return (T) parseFrom(codedInputStreamNewInstance);
                } catch (InvalidProtocolBufferException e2) {
                    throw Status.INTERNAL.withDescription("Invalid protobuf byte sequence").withCause(e2).asRuntimeException();
                }
            } catch (IOException e3) {
                throw new RuntimeException(e3);
            }
        }

        private T parseFrom(CodedInputStream stream) throws InvalidProtocolBufferException {
            T message = this.parser.parseFrom(stream, ProtoLiteUtils.globalRegistry);
            try {
                stream.checkLastTagWas(0);
                return message;
            } catch (InvalidProtocolBufferException e) {
                e.setUnfinishedMessage(message);
                throw e;
            }
        }
    }

    private static final class MetadataMarshaller<T extends MessageLite> implements Metadata.BinaryMarshaller<T> {
        private final T defaultInstance;

        MetadataMarshaller(T defaultInstance) {
            this.defaultInstance = defaultInstance;
        }

        @Override // io.grpc.Metadata.BinaryMarshaller
        public byte[] toBytes(T value) {
            return value.toByteArray();
        }

        @Override // io.grpc.Metadata.BinaryMarshaller
        public T parseBytes(byte[] serialized) {
            try {
                return (T) this.defaultInstance.getParserForType().parseFrom(serialized, ProtoLiteUtils.globalRegistry);
            } catch (InvalidProtocolBufferException ipbe) {
                throw new IllegalArgumentException(ipbe);
            }
        }
    }
}
