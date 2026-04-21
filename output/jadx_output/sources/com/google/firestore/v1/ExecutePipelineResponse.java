package com.google.firestore.v1;

import com.google.firestore.v1.Document;
import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.Internal;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Parser;
import com.google.protobuf.Timestamp;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes22.dex */
public final class ExecutePipelineResponse extends GeneratedMessageLite<ExecutePipelineResponse, Builder> implements ExecutePipelineResponseOrBuilder {
    private static final ExecutePipelineResponse DEFAULT_INSTANCE;
    public static final int EXECUTION_TIME_FIELD_NUMBER = 3;
    private static volatile Parser<ExecutePipelineResponse> PARSER = null;
    public static final int RESULTS_FIELD_NUMBER = 2;
    public static final int TRANSACTION_FIELD_NUMBER = 1;
    private int bitField0_;
    private Timestamp executionTime_;
    private ByteString transaction_ = ByteString.EMPTY;
    private Internal.ProtobufList<Document> results_ = emptyProtobufList();

    private ExecutePipelineResponse() {
    }

    @Override // com.google.firestore.v1.ExecutePipelineResponseOrBuilder
    public ByteString getTransaction() {
        return this.transaction_;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setTransaction(ByteString value) {
        value.getClass();
        this.transaction_ = value;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearTransaction() {
        this.transaction_ = getDefaultInstance().getTransaction();
    }

    @Override // com.google.firestore.v1.ExecutePipelineResponseOrBuilder
    public List<Document> getResultsList() {
        return this.results_;
    }

    public List<? extends DocumentOrBuilder> getResultsOrBuilderList() {
        return this.results_;
    }

    @Override // com.google.firestore.v1.ExecutePipelineResponseOrBuilder
    public int getResultsCount() {
        return this.results_.size();
    }

    @Override // com.google.firestore.v1.ExecutePipelineResponseOrBuilder
    public Document getResults(int index) {
        return this.results_.get(index);
    }

    public DocumentOrBuilder getResultsOrBuilder(int index) {
        return this.results_.get(index);
    }

    private void ensureResultsIsMutable() {
        Internal.ProtobufList<Document> tmp = this.results_;
        if (!tmp.isModifiable()) {
            this.results_ = GeneratedMessageLite.mutableCopy(tmp);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setResults(int index, Document value) {
        value.getClass();
        ensureResultsIsMutable();
        this.results_.set(index, value);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addResults(Document value) {
        value.getClass();
        ensureResultsIsMutable();
        this.results_.add(value);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addResults(int index, Document value) {
        value.getClass();
        ensureResultsIsMutable();
        this.results_.add(index, value);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addAllResults(Iterable<? extends Document> values) {
        ensureResultsIsMutable();
        AbstractMessageLite.addAll((Iterable) values, (List) this.results_);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearResults() {
        this.results_ = emptyProtobufList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeResults(int index) {
        ensureResultsIsMutable();
        this.results_.remove(index);
    }

    @Override // com.google.firestore.v1.ExecutePipelineResponseOrBuilder
    public boolean hasExecutionTime() {
        return (this.bitField0_ & 1) != 0;
    }

    @Override // com.google.firestore.v1.ExecutePipelineResponseOrBuilder
    public Timestamp getExecutionTime() {
        return this.executionTime_ == null ? Timestamp.getDefaultInstance() : this.executionTime_;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setExecutionTime(Timestamp value) {
        value.getClass();
        this.executionTime_ = value;
        this.bitField0_ |= 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mergeExecutionTime(Timestamp value) {
        value.getClass();
        if (this.executionTime_ != null && this.executionTime_ != Timestamp.getDefaultInstance()) {
            this.executionTime_ = Timestamp.newBuilder(this.executionTime_).mergeFrom(value).buildPartial();
        } else {
            this.executionTime_ = value;
        }
        this.bitField0_ |= 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearExecutionTime() {
        this.executionTime_ = null;
        this.bitField0_ &= -2;
    }

    public static ExecutePipelineResponse parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
        return (ExecutePipelineResponse) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
    }

    public static ExecutePipelineResponse parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return (ExecutePipelineResponse) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
    }

    public static ExecutePipelineResponse parseFrom(ByteString data) throws InvalidProtocolBufferException {
        return (ExecutePipelineResponse) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
    }

    public static ExecutePipelineResponse parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return (ExecutePipelineResponse) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
    }

    public static ExecutePipelineResponse parseFrom(byte[] data) throws InvalidProtocolBufferException {
        return (ExecutePipelineResponse) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
    }

    public static ExecutePipelineResponse parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return (ExecutePipelineResponse) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
    }

    public static ExecutePipelineResponse parseFrom(InputStream input) throws IOException {
        return (ExecutePipelineResponse) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
    }

    public static ExecutePipelineResponse parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (ExecutePipelineResponse) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
    }

    public static ExecutePipelineResponse parseDelimitedFrom(InputStream input) throws IOException {
        return (ExecutePipelineResponse) parseDelimitedFrom(DEFAULT_INSTANCE, input);
    }

    public static ExecutePipelineResponse parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (ExecutePipelineResponse) parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
    }

    public static ExecutePipelineResponse parseFrom(CodedInputStream input) throws IOException {
        return (ExecutePipelineResponse) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
    }

    public static ExecutePipelineResponse parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (ExecutePipelineResponse) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static Builder newBuilder(ExecutePipelineResponse prototype) {
        return DEFAULT_INSTANCE.createBuilder(prototype);
    }

    public static final class Builder extends GeneratedMessageLite.Builder<ExecutePipelineResponse, Builder> implements ExecutePipelineResponseOrBuilder {
        private Builder() {
            super(ExecutePipelineResponse.DEFAULT_INSTANCE);
        }

        @Override // com.google.firestore.v1.ExecutePipelineResponseOrBuilder
        public ByteString getTransaction() {
            return ((ExecutePipelineResponse) this.instance).getTransaction();
        }

        public Builder setTransaction(ByteString value) {
            copyOnWrite();
            ((ExecutePipelineResponse) this.instance).setTransaction(value);
            return this;
        }

        public Builder clearTransaction() {
            copyOnWrite();
            ((ExecutePipelineResponse) this.instance).clearTransaction();
            return this;
        }

        @Override // com.google.firestore.v1.ExecutePipelineResponseOrBuilder
        public List<Document> getResultsList() {
            return Collections.unmodifiableList(((ExecutePipelineResponse) this.instance).getResultsList());
        }

        @Override // com.google.firestore.v1.ExecutePipelineResponseOrBuilder
        public int getResultsCount() {
            return ((ExecutePipelineResponse) this.instance).getResultsCount();
        }

        @Override // com.google.firestore.v1.ExecutePipelineResponseOrBuilder
        public Document getResults(int index) {
            return ((ExecutePipelineResponse) this.instance).getResults(index);
        }

        public Builder setResults(int index, Document value) {
            copyOnWrite();
            ((ExecutePipelineResponse) this.instance).setResults(index, value);
            return this;
        }

        public Builder setResults(int index, Document.Builder builderForValue) {
            copyOnWrite();
            ((ExecutePipelineResponse) this.instance).setResults(index, builderForValue.build());
            return this;
        }

        public Builder addResults(Document value) {
            copyOnWrite();
            ((ExecutePipelineResponse) this.instance).addResults(value);
            return this;
        }

        public Builder addResults(int index, Document value) {
            copyOnWrite();
            ((ExecutePipelineResponse) this.instance).addResults(index, value);
            return this;
        }

        public Builder addResults(Document.Builder builderForValue) {
            copyOnWrite();
            ((ExecutePipelineResponse) this.instance).addResults(builderForValue.build());
            return this;
        }

        public Builder addResults(int index, Document.Builder builderForValue) {
            copyOnWrite();
            ((ExecutePipelineResponse) this.instance).addResults(index, builderForValue.build());
            return this;
        }

        public Builder addAllResults(Iterable<? extends Document> values) {
            copyOnWrite();
            ((ExecutePipelineResponse) this.instance).addAllResults(values);
            return this;
        }

        public Builder clearResults() {
            copyOnWrite();
            ((ExecutePipelineResponse) this.instance).clearResults();
            return this;
        }

        public Builder removeResults(int index) {
            copyOnWrite();
            ((ExecutePipelineResponse) this.instance).removeResults(index);
            return this;
        }

        @Override // com.google.firestore.v1.ExecutePipelineResponseOrBuilder
        public boolean hasExecutionTime() {
            return ((ExecutePipelineResponse) this.instance).hasExecutionTime();
        }

        @Override // com.google.firestore.v1.ExecutePipelineResponseOrBuilder
        public Timestamp getExecutionTime() {
            return ((ExecutePipelineResponse) this.instance).getExecutionTime();
        }

        public Builder setExecutionTime(Timestamp value) {
            copyOnWrite();
            ((ExecutePipelineResponse) this.instance).setExecutionTime(value);
            return this;
        }

        public Builder setExecutionTime(Timestamp.Builder builderForValue) {
            copyOnWrite();
            ((ExecutePipelineResponse) this.instance).setExecutionTime(builderForValue.build());
            return this;
        }

        public Builder mergeExecutionTime(Timestamp value) {
            copyOnWrite();
            ((ExecutePipelineResponse) this.instance).mergeExecutionTime(value);
            return this;
        }

        public Builder clearExecutionTime() {
            copyOnWrite();
            ((ExecutePipelineResponse) this.instance).clearExecutionTime();
            return this;
        }
    }

    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
        switch (method) {
            case NEW_MUTABLE_INSTANCE:
                return new ExecutePipelineResponse();
            case NEW_BUILDER:
                return new Builder();
            case BUILD_MESSAGE_INFO:
                Object[] objects = {"bitField0_", "transaction_", "results_", Document.class, "executionTime_"};
                return newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0001\u0000\u0001\n\u0002\u001b\u0003ဉ\u0000", objects);
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                Parser<ExecutePipelineResponse> parser = PARSER;
                if (parser == null) {
                    synchronized (ExecutePipelineResponse.class) {
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
        ExecutePipelineResponse defaultInstance = new ExecutePipelineResponse();
        DEFAULT_INSTANCE = defaultInstance;
        GeneratedMessageLite.registerDefaultInstance(ExecutePipelineResponse.class, defaultInstance);
    }

    public static ExecutePipelineResponse getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static Parser<ExecutePipelineResponse> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }
}
