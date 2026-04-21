package com.google.firestore.v1;

import com.google.firestore.v1.Pipeline;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.MapEntryLite;
import com.google.protobuf.MapFieldLite;
import com.google.protobuf.Parser;
import com.google.protobuf.WireFormat;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes22.dex */
public final class StructuredPipeline extends GeneratedMessageLite<StructuredPipeline, Builder> implements StructuredPipelineOrBuilder {
    private static final StructuredPipeline DEFAULT_INSTANCE;
    public static final int OPTIONS_FIELD_NUMBER = 2;
    private static volatile Parser<StructuredPipeline> PARSER = null;
    public static final int PIPELINE_FIELD_NUMBER = 1;
    private int bitField0_;
    private MapFieldLite<String, Value> options_ = MapFieldLite.emptyMapField();
    private Pipeline pipeline_;

    private StructuredPipeline() {
    }

    @Override // com.google.firestore.v1.StructuredPipelineOrBuilder
    public boolean hasPipeline() {
        return (this.bitField0_ & 1) != 0;
    }

    @Override // com.google.firestore.v1.StructuredPipelineOrBuilder
    public Pipeline getPipeline() {
        return this.pipeline_ == null ? Pipeline.getDefaultInstance() : this.pipeline_;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPipeline(Pipeline value) {
        value.getClass();
        this.pipeline_ = value;
        this.bitField0_ |= 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mergePipeline(Pipeline value) {
        value.getClass();
        if (this.pipeline_ != null && this.pipeline_ != Pipeline.getDefaultInstance()) {
            this.pipeline_ = Pipeline.newBuilder(this.pipeline_).mergeFrom(value).buildPartial();
        } else {
            this.pipeline_ = value;
        }
        this.bitField0_ |= 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearPipeline() {
        this.pipeline_ = null;
        this.bitField0_ &= -2;
    }

    private static final class OptionsDefaultEntryHolder {
        static final MapEntryLite<String, Value> defaultEntry = MapEntryLite.newDefaultInstance(WireFormat.FieldType.STRING, "", WireFormat.FieldType.MESSAGE, Value.getDefaultInstance());

        private OptionsDefaultEntryHolder() {
        }
    }

    private MapFieldLite<String, Value> internalGetOptions() {
        return this.options_;
    }

    private MapFieldLite<String, Value> internalGetMutableOptions() {
        if (!this.options_.isMutable()) {
            this.options_ = this.options_.mutableCopy();
        }
        return this.options_;
    }

    @Override // com.google.firestore.v1.StructuredPipelineOrBuilder
    public int getOptionsCount() {
        return internalGetOptions().size();
    }

    @Override // com.google.firestore.v1.StructuredPipelineOrBuilder
    public boolean containsOptions(String key) {
        key.getClass();
        return internalGetOptions().containsKey(key);
    }

    @Override // com.google.firestore.v1.StructuredPipelineOrBuilder
    @Deprecated
    public Map<String, Value> getOptions() {
        return getOptionsMap();
    }

    @Override // com.google.firestore.v1.StructuredPipelineOrBuilder
    public Map<String, Value> getOptionsMap() {
        return Collections.unmodifiableMap(internalGetOptions());
    }

    @Override // com.google.firestore.v1.StructuredPipelineOrBuilder
    public Value getOptionsOrDefault(String key, Value defaultValue) {
        key.getClass();
        Map<String, Value> map = internalGetOptions();
        return map.containsKey(key) ? map.get(key) : defaultValue;
    }

    @Override // com.google.firestore.v1.StructuredPipelineOrBuilder
    public Value getOptionsOrThrow(String key) {
        key.getClass();
        Map<String, Value> map = internalGetOptions();
        if (!map.containsKey(key)) {
            throw new IllegalArgumentException();
        }
        return map.get(key);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map<String, Value> getMutableOptionsMap() {
        return internalGetMutableOptions();
    }

    public static StructuredPipeline parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
        return (StructuredPipeline) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
    }

    public static StructuredPipeline parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return (StructuredPipeline) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
    }

    public static StructuredPipeline parseFrom(ByteString data) throws InvalidProtocolBufferException {
        return (StructuredPipeline) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
    }

    public static StructuredPipeline parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return (StructuredPipeline) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
    }

    public static StructuredPipeline parseFrom(byte[] data) throws InvalidProtocolBufferException {
        return (StructuredPipeline) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
    }

    public static StructuredPipeline parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return (StructuredPipeline) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
    }

    public static StructuredPipeline parseFrom(InputStream input) throws IOException {
        return (StructuredPipeline) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
    }

    public static StructuredPipeline parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (StructuredPipeline) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
    }

    public static StructuredPipeline parseDelimitedFrom(InputStream input) throws IOException {
        return (StructuredPipeline) parseDelimitedFrom(DEFAULT_INSTANCE, input);
    }

    public static StructuredPipeline parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (StructuredPipeline) parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
    }

    public static StructuredPipeline parseFrom(CodedInputStream input) throws IOException {
        return (StructuredPipeline) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
    }

    public static StructuredPipeline parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (StructuredPipeline) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static Builder newBuilder(StructuredPipeline prototype) {
        return DEFAULT_INSTANCE.createBuilder(prototype);
    }

    public static final class Builder extends GeneratedMessageLite.Builder<StructuredPipeline, Builder> implements StructuredPipelineOrBuilder {
        private Builder() {
            super(StructuredPipeline.DEFAULT_INSTANCE);
        }

        @Override // com.google.firestore.v1.StructuredPipelineOrBuilder
        public boolean hasPipeline() {
            return ((StructuredPipeline) this.instance).hasPipeline();
        }

        @Override // com.google.firestore.v1.StructuredPipelineOrBuilder
        public Pipeline getPipeline() {
            return ((StructuredPipeline) this.instance).getPipeline();
        }

        public Builder setPipeline(Pipeline value) {
            copyOnWrite();
            ((StructuredPipeline) this.instance).setPipeline(value);
            return this;
        }

        public Builder setPipeline(Pipeline.Builder builderForValue) {
            copyOnWrite();
            ((StructuredPipeline) this.instance).setPipeline(builderForValue.build());
            return this;
        }

        public Builder mergePipeline(Pipeline value) {
            copyOnWrite();
            ((StructuredPipeline) this.instance).mergePipeline(value);
            return this;
        }

        public Builder clearPipeline() {
            copyOnWrite();
            ((StructuredPipeline) this.instance).clearPipeline();
            return this;
        }

        @Override // com.google.firestore.v1.StructuredPipelineOrBuilder
        public int getOptionsCount() {
            return ((StructuredPipeline) this.instance).getOptionsMap().size();
        }

        @Override // com.google.firestore.v1.StructuredPipelineOrBuilder
        public boolean containsOptions(String key) {
            key.getClass();
            return ((StructuredPipeline) this.instance).getOptionsMap().containsKey(key);
        }

        public Builder clearOptions() {
            copyOnWrite();
            ((StructuredPipeline) this.instance).getMutableOptionsMap().clear();
            return this;
        }

        public Builder removeOptions(String key) {
            key.getClass();
            copyOnWrite();
            ((StructuredPipeline) this.instance).getMutableOptionsMap().remove(key);
            return this;
        }

        @Override // com.google.firestore.v1.StructuredPipelineOrBuilder
        @Deprecated
        public Map<String, Value> getOptions() {
            return getOptionsMap();
        }

        @Override // com.google.firestore.v1.StructuredPipelineOrBuilder
        public Map<String, Value> getOptionsMap() {
            return Collections.unmodifiableMap(((StructuredPipeline) this.instance).getOptionsMap());
        }

        @Override // com.google.firestore.v1.StructuredPipelineOrBuilder
        public Value getOptionsOrDefault(String key, Value defaultValue) {
            key.getClass();
            Map<String, Value> map = ((StructuredPipeline) this.instance).getOptionsMap();
            return map.containsKey(key) ? map.get(key) : defaultValue;
        }

        @Override // com.google.firestore.v1.StructuredPipelineOrBuilder
        public Value getOptionsOrThrow(String key) {
            key.getClass();
            Map<String, Value> map = ((StructuredPipeline) this.instance).getOptionsMap();
            if (!map.containsKey(key)) {
                throw new IllegalArgumentException();
            }
            return map.get(key);
        }

        public Builder putOptions(String key, Value value) {
            key.getClass();
            value.getClass();
            copyOnWrite();
            ((StructuredPipeline) this.instance).getMutableOptionsMap().put(key, value);
            return this;
        }

        public Builder putAllOptions(Map<String, Value> values) {
            copyOnWrite();
            ((StructuredPipeline) this.instance).getMutableOptionsMap().putAll(values);
            return this;
        }
    }

    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
        switch (method) {
            case NEW_MUTABLE_INSTANCE:
                return new StructuredPipeline();
            case NEW_BUILDER:
                return new Builder();
            case BUILD_MESSAGE_INFO:
                Object[] objects = {"bitField0_", "pipeline_", "options_", OptionsDefaultEntryHolder.defaultEntry};
                return newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0001\u0000\u0000\u0001ဉ\u0000\u00022", objects);
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                Parser<StructuredPipeline> parser = PARSER;
                if (parser == null) {
                    synchronized (StructuredPipeline.class) {
                        parser = PARSER;
                        if (parser == null) {
                            parser = new GeneratedMessageLite.DefaultInstanceBasedParser(DEFAULT_INSTANCE);
                            PARSER = parser;
                        }
                        break;
                    }
                }
                return parser;
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }

    static {
        StructuredPipeline defaultInstance = new StructuredPipeline();
        DEFAULT_INSTANCE = defaultInstance;
        GeneratedMessageLite.registerDefaultInstance(StructuredPipeline.class, defaultInstance);
    }

    public static StructuredPipeline getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static Parser<StructuredPipeline> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }
}
