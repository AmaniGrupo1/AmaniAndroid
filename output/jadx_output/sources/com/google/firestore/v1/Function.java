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
import com.google.protobuf.Parser;
import com.google.protobuf.WireFormat;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes22.dex */
public final class Function extends GeneratedMessageLite<Function, Builder> implements FunctionOrBuilder {
    public static final int ARGS_FIELD_NUMBER = 2;
    private static final Function DEFAULT_INSTANCE;
    public static final int NAME_FIELD_NUMBER = 1;
    public static final int OPTIONS_FIELD_NUMBER = 3;
    private static volatile Parser<Function> PARSER;
    private MapFieldLite<String, Value> options_ = MapFieldLite.emptyMapField();
    private String name_ = "";
    private Internal.ProtobufList<Value> args_ = emptyProtobufList();

    private Function() {
    }

    @Override // com.google.firestore.v1.FunctionOrBuilder
    public String getName() {
        return this.name_;
    }

    @Override // com.google.firestore.v1.FunctionOrBuilder
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

    @Override // com.google.firestore.v1.FunctionOrBuilder
    public List<Value> getArgsList() {
        return this.args_;
    }

    public List<? extends ValueOrBuilder> getArgsOrBuilderList() {
        return this.args_;
    }

    @Override // com.google.firestore.v1.FunctionOrBuilder
    public int getArgsCount() {
        return this.args_.size();
    }

    @Override // com.google.firestore.v1.FunctionOrBuilder
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

    @Override // com.google.firestore.v1.FunctionOrBuilder
    public int getOptionsCount() {
        return internalGetOptions().size();
    }

    @Override // com.google.firestore.v1.FunctionOrBuilder
    public boolean containsOptions(String key) {
        key.getClass();
        return internalGetOptions().containsKey(key);
    }

    @Override // com.google.firestore.v1.FunctionOrBuilder
    @Deprecated
    public Map<String, Value> getOptions() {
        return getOptionsMap();
    }

    @Override // com.google.firestore.v1.FunctionOrBuilder
    public Map<String, Value> getOptionsMap() {
        return Collections.unmodifiableMap(internalGetOptions());
    }

    @Override // com.google.firestore.v1.FunctionOrBuilder
    public Value getOptionsOrDefault(String key, Value defaultValue) {
        key.getClass();
        Map<String, Value> map = internalGetOptions();
        return map.containsKey(key) ? map.get(key) : defaultValue;
    }

    @Override // com.google.firestore.v1.FunctionOrBuilder
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

    public static Function parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
        return (Function) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
    }

    public static Function parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return (Function) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
    }

    public static Function parseFrom(ByteString data) throws InvalidProtocolBufferException {
        return (Function) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
    }

    public static Function parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return (Function) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
    }

    public static Function parseFrom(byte[] data) throws InvalidProtocolBufferException {
        return (Function) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
    }

    public static Function parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return (Function) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
    }

    public static Function parseFrom(InputStream input) throws IOException {
        return (Function) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
    }

    public static Function parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (Function) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
    }

    public static Function parseDelimitedFrom(InputStream input) throws IOException {
        return (Function) parseDelimitedFrom(DEFAULT_INSTANCE, input);
    }

    public static Function parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (Function) parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
    }

    public static Function parseFrom(CodedInputStream input) throws IOException {
        return (Function) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
    }

    public static Function parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (Function) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static Builder newBuilder(Function prototype) {
        return DEFAULT_INSTANCE.createBuilder(prototype);
    }

    public static final class Builder extends GeneratedMessageLite.Builder<Function, Builder> implements FunctionOrBuilder {
        private Builder() {
            super(Function.DEFAULT_INSTANCE);
        }

        @Override // com.google.firestore.v1.FunctionOrBuilder
        public String getName() {
            return ((Function) this.instance).getName();
        }

        @Override // com.google.firestore.v1.FunctionOrBuilder
        public ByteString getNameBytes() {
            return ((Function) this.instance).getNameBytes();
        }

        public Builder setName(String value) {
            copyOnWrite();
            ((Function) this.instance).setName(value);
            return this;
        }

        public Builder clearName() {
            copyOnWrite();
            ((Function) this.instance).clearName();
            return this;
        }

        public Builder setNameBytes(ByteString value) {
            copyOnWrite();
            ((Function) this.instance).setNameBytes(value);
            return this;
        }

        @Override // com.google.firestore.v1.FunctionOrBuilder
        public List<Value> getArgsList() {
            return Collections.unmodifiableList(((Function) this.instance).getArgsList());
        }

        @Override // com.google.firestore.v1.FunctionOrBuilder
        public int getArgsCount() {
            return ((Function) this.instance).getArgsCount();
        }

        @Override // com.google.firestore.v1.FunctionOrBuilder
        public Value getArgs(int index) {
            return ((Function) this.instance).getArgs(index);
        }

        public Builder setArgs(int index, Value value) {
            copyOnWrite();
            ((Function) this.instance).setArgs(index, value);
            return this;
        }

        public Builder setArgs(int index, Value.Builder builderForValue) {
            copyOnWrite();
            ((Function) this.instance).setArgs(index, builderForValue.build());
            return this;
        }

        public Builder addArgs(Value value) {
            copyOnWrite();
            ((Function) this.instance).addArgs(value);
            return this;
        }

        public Builder addArgs(int index, Value value) {
            copyOnWrite();
            ((Function) this.instance).addArgs(index, value);
            return this;
        }

        public Builder addArgs(Value.Builder builderForValue) {
            copyOnWrite();
            ((Function) this.instance).addArgs(builderForValue.build());
            return this;
        }

        public Builder addArgs(int index, Value.Builder builderForValue) {
            copyOnWrite();
            ((Function) this.instance).addArgs(index, builderForValue.build());
            return this;
        }

        public Builder addAllArgs(Iterable<? extends Value> values) {
            copyOnWrite();
            ((Function) this.instance).addAllArgs(values);
            return this;
        }

        public Builder clearArgs() {
            copyOnWrite();
            ((Function) this.instance).clearArgs();
            return this;
        }

        public Builder removeArgs(int index) {
            copyOnWrite();
            ((Function) this.instance).removeArgs(index);
            return this;
        }

        @Override // com.google.firestore.v1.FunctionOrBuilder
        public int getOptionsCount() {
            return ((Function) this.instance).getOptionsMap().size();
        }

        @Override // com.google.firestore.v1.FunctionOrBuilder
        public boolean containsOptions(String key) {
            key.getClass();
            return ((Function) this.instance).getOptionsMap().containsKey(key);
        }

        public Builder clearOptions() {
            copyOnWrite();
            ((Function) this.instance).getMutableOptionsMap().clear();
            return this;
        }

        public Builder removeOptions(String key) {
            key.getClass();
            copyOnWrite();
            ((Function) this.instance).getMutableOptionsMap().remove(key);
            return this;
        }

        @Override // com.google.firestore.v1.FunctionOrBuilder
        @Deprecated
        public Map<String, Value> getOptions() {
            return getOptionsMap();
        }

        @Override // com.google.firestore.v1.FunctionOrBuilder
        public Map<String, Value> getOptionsMap() {
            return Collections.unmodifiableMap(((Function) this.instance).getOptionsMap());
        }

        @Override // com.google.firestore.v1.FunctionOrBuilder
        public Value getOptionsOrDefault(String key, Value defaultValue) {
            key.getClass();
            Map<String, Value> map = ((Function) this.instance).getOptionsMap();
            return map.containsKey(key) ? map.get(key) : defaultValue;
        }

        @Override // com.google.firestore.v1.FunctionOrBuilder
        public Value getOptionsOrThrow(String key) {
            key.getClass();
            Map<String, Value> map = ((Function) this.instance).getOptionsMap();
            if (!map.containsKey(key)) {
                throw new IllegalArgumentException();
            }
            return map.get(key);
        }

        public Builder putOptions(String key, Value value) {
            key.getClass();
            value.getClass();
            copyOnWrite();
            ((Function) this.instance).getMutableOptionsMap().put(key, value);
            return this;
        }

        public Builder putAllOptions(Map<String, Value> values) {
            copyOnWrite();
            ((Function) this.instance).getMutableOptionsMap().putAll(values);
            return this;
        }
    }

    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
        switch (method) {
            case NEW_MUTABLE_INSTANCE:
                return new Function();
            case NEW_BUILDER:
                return new Builder();
            case BUILD_MESSAGE_INFO:
                Object[] objects = {"name_", "args_", Value.class, "options_", OptionsDefaultEntryHolder.defaultEntry};
                return newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0001\u0001\u0000\u0001Ȉ\u0002\u001b\u00032", objects);
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                Parser<Function> parser = PARSER;
                if (parser == null) {
                    synchronized (Function.class) {
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
        Function defaultInstance = new Function();
        DEFAULT_INSTANCE = defaultInstance;
        GeneratedMessageLite.registerDefaultInstance(Function.class, defaultInstance);
    }

    public static Function getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static Parser<Function> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }
}
