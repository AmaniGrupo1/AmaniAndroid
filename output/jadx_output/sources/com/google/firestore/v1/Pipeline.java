package com.google.firestore.v1;

import com.google.firestore.v1.Value;
import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.Internal;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.MapEntryLite;
import com.google.protobuf.MapFieldLite;
import com.google.protobuf.MessageLiteOrBuilder;
import com.google.protobuf.Parser;
import com.google.protobuf.WireFormat;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes22.dex */
public final class Pipeline extends GeneratedMessageLite<Pipeline, Builder> implements PipelineOrBuilder {
    private static final Pipeline DEFAULT_INSTANCE;
    private static volatile Parser<Pipeline> PARSER = null;
    public static final int STAGES_FIELD_NUMBER = 1;
    private Internal.ProtobufList<Stage> stages_ = emptyProtobufList();

    public interface StageOrBuilder extends MessageLiteOrBuilder {
        boolean containsOptions(String str);

        Value getArgs(int i);

        int getArgsCount();

        List<Value> getArgsList();

        String getName();

        ByteString getNameBytes();

        @Deprecated
        Map<String, Value> getOptions();

        int getOptionsCount();

        Map<String, Value> getOptionsMap();

        Value getOptionsOrDefault(String str, Value value);

        Value getOptionsOrThrow(String str);
    }

    private Pipeline() {
    }

    public static final class Stage extends GeneratedMessageLite<Stage, Builder> implements StageOrBuilder {
        public static final int ARGS_FIELD_NUMBER = 2;
        private static final Stage DEFAULT_INSTANCE;
        public static final int NAME_FIELD_NUMBER = 1;
        public static final int OPTIONS_FIELD_NUMBER = 3;
        private static volatile Parser<Stage> PARSER;
        private MapFieldLite<String, Value> options_ = MapFieldLite.emptyMapField();
        private String name_ = "";
        private Internal.ProtobufList<Value> args_ = emptyProtobufList();

        private Stage() {
        }

        @Override // com.google.firestore.v1.Pipeline.StageOrBuilder
        public String getName() {
            return this.name_;
        }

        @Override // com.google.firestore.v1.Pipeline.StageOrBuilder
        public ByteString getNameBytes() {
            return ByteString.copyFromUtf8(this.name_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setName(String value) {
            value.getClass();
            this.name_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearName() {
            this.name_ = getDefaultInstance().getName();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setNameBytes(ByteString value) {
            checkByteStringIsUtf8(value);
            this.name_ = value.toStringUtf8();
        }

        @Override // com.google.firestore.v1.Pipeline.StageOrBuilder
        public List<Value> getArgsList() {
            return this.args_;
        }

        public List<? extends ValueOrBuilder> getArgsOrBuilderList() {
            return this.args_;
        }

        @Override // com.google.firestore.v1.Pipeline.StageOrBuilder
        public int getArgsCount() {
            return this.args_.size();
        }

        @Override // com.google.firestore.v1.Pipeline.StageOrBuilder
        public Value getArgs(int index) {
            return this.args_.get(index);
        }

        public ValueOrBuilder getArgsOrBuilder(int index) {
            return this.args_.get(index);
        }

        private void ensureArgsIsMutable() {
            Internal.ProtobufList<Value> tmp = this.args_;
            if (!tmp.isModifiable()) {
                this.args_ = GeneratedMessageLite.mutableCopy(tmp);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setArgs(int index, Value value) {
            value.getClass();
            ensureArgsIsMutable();
            this.args_.set(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addArgs(Value value) {
            value.getClass();
            ensureArgsIsMutable();
            this.args_.add(value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addArgs(int index, Value value) {
            value.getClass();
            ensureArgsIsMutable();
            this.args_.add(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addAllArgs(Iterable<? extends Value> values) {
            ensureArgsIsMutable();
            AbstractMessageLite.addAll((Iterable) values, (List) this.args_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearArgs() {
            this.args_ = emptyProtobufList();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void removeArgs(int index) {
            ensureArgsIsMutable();
            this.args_.remove(index);
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

        @Override // com.google.firestore.v1.Pipeline.StageOrBuilder
        public int getOptionsCount() {
            return internalGetOptions().size();
        }

        @Override // com.google.firestore.v1.Pipeline.StageOrBuilder
        public boolean containsOptions(String key) {
            key.getClass();
            return internalGetOptions().containsKey(key);
        }

        @Override // com.google.firestore.v1.Pipeline.StageOrBuilder
        @Deprecated
        public Map<String, Value> getOptions() {
            return getOptionsMap();
        }

        @Override // com.google.firestore.v1.Pipeline.StageOrBuilder
        public Map<String, Value> getOptionsMap() {
            return Collections.unmodifiableMap(internalGetOptions());
        }

        @Override // com.google.firestore.v1.Pipeline.StageOrBuilder
        public Value getOptionsOrDefault(String key, Value defaultValue) {
            key.getClass();
            Map<String, Value> map = internalGetOptions();
            return map.containsKey(key) ? map.get(key) : defaultValue;
        }

        @Override // com.google.firestore.v1.Pipeline.StageOrBuilder
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

        public static Stage parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (Stage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Stage parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Stage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Stage parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (Stage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Stage parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Stage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Stage parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (Stage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Stage parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Stage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Stage parseFrom(InputStream input) throws IOException {
            return (Stage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static Stage parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Stage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Stage parseDelimitedFrom(InputStream input) throws IOException {
            return (Stage) parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static Stage parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Stage) parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Stage parseFrom(CodedInputStream input) throws IOException {
            return (Stage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static Stage parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Stage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(Stage prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        public static final class Builder extends GeneratedMessageLite.Builder<Stage, Builder> implements StageOrBuilder {
            private Builder() {
                super(Stage.DEFAULT_INSTANCE);
            }

            @Override // com.google.firestore.v1.Pipeline.StageOrBuilder
            public String getName() {
                return ((Stage) this.instance).getName();
            }

            @Override // com.google.firestore.v1.Pipeline.StageOrBuilder
            public ByteString getNameBytes() {
                return ((Stage) this.instance).getNameBytes();
            }

            public Builder setName(String value) {
                copyOnWrite();
                ((Stage) this.instance).setName(value);
                return this;
            }

            public Builder clearName() {
                copyOnWrite();
                ((Stage) this.instance).clearName();
                return this;
            }

            public Builder setNameBytes(ByteString value) {
                copyOnWrite();
                ((Stage) this.instance).setNameBytes(value);
                return this;
            }

            @Override // com.google.firestore.v1.Pipeline.StageOrBuilder
            public List<Value> getArgsList() {
                return Collections.unmodifiableList(((Stage) this.instance).getArgsList());
            }

            @Override // com.google.firestore.v1.Pipeline.StageOrBuilder
            public int getArgsCount() {
                return ((Stage) this.instance).getArgsCount();
            }

            @Override // com.google.firestore.v1.Pipeline.StageOrBuilder
            public Value getArgs(int index) {
                return ((Stage) this.instance).getArgs(index);
            }

            public Builder setArgs(int index, Value value) {
                copyOnWrite();
                ((Stage) this.instance).setArgs(index, value);
                return this;
            }

            public Builder setArgs(int index, Value.Builder builderForValue) {
                copyOnWrite();
                ((Stage) this.instance).setArgs(index, builderForValue.build());
                return this;
            }

            public Builder addArgs(Value value) {
                copyOnWrite();
                ((Stage) this.instance).addArgs(value);
                return this;
            }

            public Builder addArgs(int index, Value value) {
                copyOnWrite();
                ((Stage) this.instance).addArgs(index, value);
                return this;
            }

            public Builder addArgs(Value.Builder builderForValue) {
                copyOnWrite();
                ((Stage) this.instance).addArgs(builderForValue.build());
                return this;
            }

            public Builder addArgs(int index, Value.Builder builderForValue) {
                copyOnWrite();
                ((Stage) this.instance).addArgs(index, builderForValue.build());
                return this;
            }

            public Builder addAllArgs(Iterable<? extends Value> values) {
                copyOnWrite();
                ((Stage) this.instance).addAllArgs(values);
                return this;
            }

            public Builder clearArgs() {
                copyOnWrite();
                ((Stage) this.instance).clearArgs();
                return this;
            }

            public Builder removeArgs(int index) {
                copyOnWrite();
                ((Stage) this.instance).removeArgs(index);
                return this;
            }

            @Override // com.google.firestore.v1.Pipeline.StageOrBuilder
            public int getOptionsCount() {
                return ((Stage) this.instance).getOptionsMap().size();
            }

            @Override // com.google.firestore.v1.Pipeline.StageOrBuilder
            public boolean containsOptions(String key) {
                key.getClass();
                return ((Stage) this.instance).getOptionsMap().containsKey(key);
            }

            public Builder clearOptions() {
                copyOnWrite();
                ((Stage) this.instance).getMutableOptionsMap().clear();
                return this;
            }

            public Builder removeOptions(String key) {
                key.getClass();
                copyOnWrite();
                ((Stage) this.instance).getMutableOptionsMap().remove(key);
                return this;
            }

            @Override // com.google.firestore.v1.Pipeline.StageOrBuilder
            @Deprecated
            public Map<String, Value> getOptions() {
                return getOptionsMap();
            }

            @Override // com.google.firestore.v1.Pipeline.StageOrBuilder
            public Map<String, Value> getOptionsMap() {
                return Collections.unmodifiableMap(((Stage) this.instance).getOptionsMap());
            }

            @Override // com.google.firestore.v1.Pipeline.StageOrBuilder
            public Value getOptionsOrDefault(String key, Value defaultValue) {
                key.getClass();
                Map<String, Value> map = ((Stage) this.instance).getOptionsMap();
                return map.containsKey(key) ? map.get(key) : defaultValue;
            }

            @Override // com.google.firestore.v1.Pipeline.StageOrBuilder
            public Value getOptionsOrThrow(String key) {
                key.getClass();
                Map<String, Value> map = ((Stage) this.instance).getOptionsMap();
                if (!map.containsKey(key)) {
                    throw new IllegalArgumentException();
                }
                return map.get(key);
            }

            public Builder putOptions(String key, Value value) {
                key.getClass();
                value.getClass();
                copyOnWrite();
                ((Stage) this.instance).getMutableOptionsMap().put(key, value);
                return this;
            }

            public Builder putAllOptions(Map<String, Value> values) {
                copyOnWrite();
                ((Stage) this.instance).getMutableOptionsMap().putAll(values);
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (method) {
                case NEW_MUTABLE_INSTANCE:
                    return new Stage();
                case NEW_BUILDER:
                    return new Builder();
                case BUILD_MESSAGE_INFO:
                    Object[] objects = {"name_", "args_", Value.class, "options_", OptionsDefaultEntryHolder.defaultEntry};
                    return newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0001\u0001\u0000\u0001Ȉ\u0002\u001b\u00032", objects);
                case GET_DEFAULT_INSTANCE:
                    return DEFAULT_INSTANCE;
                case GET_PARSER:
                    Parser<Stage> parser = PARSER;
                    if (parser == null) {
                        synchronized (Stage.class) {
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
            Stage defaultInstance = new Stage();
            DEFAULT_INSTANCE = defaultInstance;
            GeneratedMessageLite.registerDefaultInstance(Stage.class, defaultInstance);
        }

        public static Stage getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<Stage> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    @Override // com.google.firestore.v1.PipelineOrBuilder
    public List<Stage> getStagesList() {
        return this.stages_;
    }

    public List<? extends StageOrBuilder> getStagesOrBuilderList() {
        return this.stages_;
    }

    @Override // com.google.firestore.v1.PipelineOrBuilder
    public int getStagesCount() {
        return this.stages_.size();
    }

    @Override // com.google.firestore.v1.PipelineOrBuilder
    public Stage getStages(int index) {
        return this.stages_.get(index);
    }

    public StageOrBuilder getStagesOrBuilder(int index) {
        return this.stages_.get(index);
    }

    private void ensureStagesIsMutable() {
        Internal.ProtobufList<Stage> tmp = this.stages_;
        if (!tmp.isModifiable()) {
            this.stages_ = GeneratedMessageLite.mutableCopy(tmp);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setStages(int index, Stage value) {
        value.getClass();
        ensureStagesIsMutable();
        this.stages_.set(index, value);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addStages(Stage value) {
        value.getClass();
        ensureStagesIsMutable();
        this.stages_.add(value);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addStages(int index, Stage value) {
        value.getClass();
        ensureStagesIsMutable();
        this.stages_.add(index, value);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addAllStages(Iterable<? extends Stage> values) {
        ensureStagesIsMutable();
        AbstractMessageLite.addAll((Iterable) values, (List) this.stages_);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearStages() {
        this.stages_ = emptyProtobufList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeStages(int index) {
        ensureStagesIsMutable();
        this.stages_.remove(index);
    }

    public static Pipeline parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
        return (Pipeline) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
    }

    public static Pipeline parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return (Pipeline) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
    }

    public static Pipeline parseFrom(ByteString data) throws InvalidProtocolBufferException {
        return (Pipeline) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
    }

    public static Pipeline parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return (Pipeline) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
    }

    public static Pipeline parseFrom(byte[] data) throws InvalidProtocolBufferException {
        return (Pipeline) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
    }

    public static Pipeline parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return (Pipeline) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
    }

    public static Pipeline parseFrom(InputStream input) throws IOException {
        return (Pipeline) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
    }

    public static Pipeline parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (Pipeline) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
    }

    public static Pipeline parseDelimitedFrom(InputStream input) throws IOException {
        return (Pipeline) parseDelimitedFrom(DEFAULT_INSTANCE, input);
    }

    public static Pipeline parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (Pipeline) parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
    }

    public static Pipeline parseFrom(CodedInputStream input) throws IOException {
        return (Pipeline) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
    }

    public static Pipeline parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (Pipeline) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static Builder newBuilder(Pipeline prototype) {
        return DEFAULT_INSTANCE.createBuilder(prototype);
    }

    public static final class Builder extends GeneratedMessageLite.Builder<Pipeline, Builder> implements PipelineOrBuilder {
        private Builder() {
            super(Pipeline.DEFAULT_INSTANCE);
        }

        @Override // com.google.firestore.v1.PipelineOrBuilder
        public List<Stage> getStagesList() {
            return Collections.unmodifiableList(((Pipeline) this.instance).getStagesList());
        }

        @Override // com.google.firestore.v1.PipelineOrBuilder
        public int getStagesCount() {
            return ((Pipeline) this.instance).getStagesCount();
        }

        @Override // com.google.firestore.v1.PipelineOrBuilder
        public Stage getStages(int index) {
            return ((Pipeline) this.instance).getStages(index);
        }

        public Builder setStages(int index, Stage value) {
            copyOnWrite();
            ((Pipeline) this.instance).setStages(index, value);
            return this;
        }

        public Builder setStages(int index, Stage.Builder builderForValue) {
            copyOnWrite();
            ((Pipeline) this.instance).setStages(index, builderForValue.build());
            return this;
        }

        public Builder addStages(Stage value) {
            copyOnWrite();
            ((Pipeline) this.instance).addStages(value);
            return this;
        }

        public Builder addStages(int index, Stage value) {
            copyOnWrite();
            ((Pipeline) this.instance).addStages(index, value);
            return this;
        }

        public Builder addStages(Stage.Builder builderForValue) {
            copyOnWrite();
            ((Pipeline) this.instance).addStages(builderForValue.build());
            return this;
        }

        public Builder addStages(int index, Stage.Builder builderForValue) {
            copyOnWrite();
            ((Pipeline) this.instance).addStages(index, builderForValue.build());
            return this;
        }

        public Builder addAllStages(Iterable<? extends Stage> values) {
            copyOnWrite();
            ((Pipeline) this.instance).addAllStages(values);
            return this;
        }

        public Builder clearStages() {
            copyOnWrite();
            ((Pipeline) this.instance).clearStages();
            return this;
        }

        public Builder removeStages(int index) {
            copyOnWrite();
            ((Pipeline) this.instance).removeStages(index);
            return this;
        }
    }

    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
        switch (method) {
            case NEW_MUTABLE_INSTANCE:
                return new Pipeline();
            case NEW_BUILDER:
                return new Builder();
            case BUILD_MESSAGE_INFO:
                Object[] objects = {"stages_", Stage.class};
                return newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", objects);
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                Parser<Pipeline> parser = PARSER;
                if (parser == null) {
                    synchronized (Pipeline.class) {
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
        Pipeline defaultInstance = new Pipeline();
        DEFAULT_INSTANCE = defaultInstance;
        GeneratedMessageLite.registerDefaultInstance(Pipeline.class, defaultInstance);
    }

    public static Pipeline getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static Parser<Pipeline> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }
}
