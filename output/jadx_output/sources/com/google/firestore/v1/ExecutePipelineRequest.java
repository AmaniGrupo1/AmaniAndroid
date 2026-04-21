package com.google.firestore.v1;

import com.google.firestore.v1.StructuredPipeline;
import com.google.firestore.v1.TransactionOptions;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Parser;
import com.google.protobuf.Timestamp;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes22.dex */
public final class ExecutePipelineRequest extends GeneratedMessageLite<ExecutePipelineRequest, Builder> implements ExecutePipelineRequestOrBuilder {
    public static final int DATABASE_FIELD_NUMBER = 1;
    private static final ExecutePipelineRequest DEFAULT_INSTANCE;
    public static final int NEW_TRANSACTION_FIELD_NUMBER = 6;
    private static volatile Parser<ExecutePipelineRequest> PARSER = null;
    public static final int READ_TIME_FIELD_NUMBER = 7;
    public static final int STRUCTURED_PIPELINE_FIELD_NUMBER = 2;
    public static final int TRANSACTION_FIELD_NUMBER = 5;
    private Object consistencySelector_;
    private Object pipelineType_;
    private int pipelineTypeCase_ = 0;
    private int consistencySelectorCase_ = 0;
    private String database_ = "";

    private ExecutePipelineRequest() {
    }

    public enum PipelineTypeCase {
        STRUCTURED_PIPELINE(2),
        PIPELINETYPE_NOT_SET(0);

        private final int value;

        PipelineTypeCase(int value) {
            this.value = value;
        }

        @Deprecated
        public static PipelineTypeCase valueOf(int value) {
            return forNumber(value);
        }

        public static PipelineTypeCase forNumber(int value) {
            switch (value) {
                case 0:
                    return PIPELINETYPE_NOT_SET;
                case 1:
                default:
                    return null;
                case 2:
                    return STRUCTURED_PIPELINE;
            }
        }

        public int getNumber() {
            return this.value;
        }
    }

    @Override // com.google.firestore.v1.ExecutePipelineRequestOrBuilder
    public PipelineTypeCase getPipelineTypeCase() {
        return PipelineTypeCase.forNumber(this.pipelineTypeCase_);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearPipelineType() {
        this.pipelineTypeCase_ = 0;
        this.pipelineType_ = null;
    }

    public enum ConsistencySelectorCase {
        TRANSACTION(5),
        NEW_TRANSACTION(6),
        READ_TIME(7),
        CONSISTENCYSELECTOR_NOT_SET(0);

        private final int value;

        ConsistencySelectorCase(int value) {
            this.value = value;
        }

        @Deprecated
        public static ConsistencySelectorCase valueOf(int value) {
            return forNumber(value);
        }

        public static ConsistencySelectorCase forNumber(int value) {
            switch (value) {
                case 0:
                    return CONSISTENCYSELECTOR_NOT_SET;
                case 5:
                    return TRANSACTION;
                case 6:
                    return NEW_TRANSACTION;
                case 7:
                    return READ_TIME;
                default:
                    return null;
            }
        }

        public int getNumber() {
            return this.value;
        }
    }

    @Override // com.google.firestore.v1.ExecutePipelineRequestOrBuilder
    public ConsistencySelectorCase getConsistencySelectorCase() {
        return ConsistencySelectorCase.forNumber(this.consistencySelectorCase_);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearConsistencySelector() {
        this.consistencySelectorCase_ = 0;
        this.consistencySelector_ = null;
    }

    @Override // com.google.firestore.v1.ExecutePipelineRequestOrBuilder
    public String getDatabase() {
        return this.database_;
    }

    @Override // com.google.firestore.v1.ExecutePipelineRequestOrBuilder
    public ByteString getDatabaseBytes() {
        return ByteString.copyFromUtf8(this.database_);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDatabase(String value) {
        value.getClass();
        this.database_ = value;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearDatabase() {
        this.database_ = getDefaultInstance().getDatabase();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDatabaseBytes(ByteString value) {
        checkByteStringIsUtf8(value);
        this.database_ = value.toStringUtf8();
    }

    @Override // com.google.firestore.v1.ExecutePipelineRequestOrBuilder
    public boolean hasStructuredPipeline() {
        return this.pipelineTypeCase_ == 2;
    }

    @Override // com.google.firestore.v1.ExecutePipelineRequestOrBuilder
    public StructuredPipeline getStructuredPipeline() {
        if (this.pipelineTypeCase_ == 2) {
            return (StructuredPipeline) this.pipelineType_;
        }
        return StructuredPipeline.getDefaultInstance();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setStructuredPipeline(StructuredPipeline value) {
        value.getClass();
        this.pipelineType_ = value;
        this.pipelineTypeCase_ = 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mergeStructuredPipeline(StructuredPipeline value) {
        value.getClass();
        if (this.pipelineTypeCase_ == 2 && this.pipelineType_ != StructuredPipeline.getDefaultInstance()) {
            this.pipelineType_ = StructuredPipeline.newBuilder((StructuredPipeline) this.pipelineType_).mergeFrom(value).buildPartial();
        } else {
            this.pipelineType_ = value;
        }
        this.pipelineTypeCase_ = 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearStructuredPipeline() {
        if (this.pipelineTypeCase_ == 2) {
            this.pipelineTypeCase_ = 0;
            this.pipelineType_ = null;
        }
    }

    @Override // com.google.firestore.v1.ExecutePipelineRequestOrBuilder
    public boolean hasTransaction() {
        return this.consistencySelectorCase_ == 5;
    }

    @Override // com.google.firestore.v1.ExecutePipelineRequestOrBuilder
    public ByteString getTransaction() {
        if (this.consistencySelectorCase_ == 5) {
            return (ByteString) this.consistencySelector_;
        }
        return ByteString.EMPTY;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setTransaction(ByteString value) {
        value.getClass();
        this.consistencySelectorCase_ = 5;
        this.consistencySelector_ = value;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearTransaction() {
        if (this.consistencySelectorCase_ == 5) {
            this.consistencySelectorCase_ = 0;
            this.consistencySelector_ = null;
        }
    }

    @Override // com.google.firestore.v1.ExecutePipelineRequestOrBuilder
    public boolean hasNewTransaction() {
        return this.consistencySelectorCase_ == 6;
    }

    @Override // com.google.firestore.v1.ExecutePipelineRequestOrBuilder
    public TransactionOptions getNewTransaction() {
        if (this.consistencySelectorCase_ == 6) {
            return (TransactionOptions) this.consistencySelector_;
        }
        return TransactionOptions.getDefaultInstance();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setNewTransaction(TransactionOptions value) {
        value.getClass();
        this.consistencySelector_ = value;
        this.consistencySelectorCase_ = 6;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mergeNewTransaction(TransactionOptions value) {
        value.getClass();
        if (this.consistencySelectorCase_ == 6 && this.consistencySelector_ != TransactionOptions.getDefaultInstance()) {
            this.consistencySelector_ = TransactionOptions.newBuilder((TransactionOptions) this.consistencySelector_).mergeFrom(value).buildPartial();
        } else {
            this.consistencySelector_ = value;
        }
        this.consistencySelectorCase_ = 6;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearNewTransaction() {
        if (this.consistencySelectorCase_ == 6) {
            this.consistencySelectorCase_ = 0;
            this.consistencySelector_ = null;
        }
    }

    @Override // com.google.firestore.v1.ExecutePipelineRequestOrBuilder
    public boolean hasReadTime() {
        return this.consistencySelectorCase_ == 7;
    }

    @Override // com.google.firestore.v1.ExecutePipelineRequestOrBuilder
    public Timestamp getReadTime() {
        if (this.consistencySelectorCase_ == 7) {
            return (Timestamp) this.consistencySelector_;
        }
        return Timestamp.getDefaultInstance();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setReadTime(Timestamp value) {
        value.getClass();
        this.consistencySelector_ = value;
        this.consistencySelectorCase_ = 7;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mergeReadTime(Timestamp value) {
        value.getClass();
        if (this.consistencySelectorCase_ == 7 && this.consistencySelector_ != Timestamp.getDefaultInstance()) {
            this.consistencySelector_ = Timestamp.newBuilder((Timestamp) this.consistencySelector_).mergeFrom(value).buildPartial();
        } else {
            this.consistencySelector_ = value;
        }
        this.consistencySelectorCase_ = 7;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearReadTime() {
        if (this.consistencySelectorCase_ == 7) {
            this.consistencySelectorCase_ = 0;
            this.consistencySelector_ = null;
        }
    }

    public static ExecutePipelineRequest parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
        return (ExecutePipelineRequest) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
    }

    public static ExecutePipelineRequest parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return (ExecutePipelineRequest) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
    }

    public static ExecutePipelineRequest parseFrom(ByteString data) throws InvalidProtocolBufferException {
        return (ExecutePipelineRequest) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
    }

    public static ExecutePipelineRequest parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return (ExecutePipelineRequest) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
    }

    public static ExecutePipelineRequest parseFrom(byte[] data) throws InvalidProtocolBufferException {
        return (ExecutePipelineRequest) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
    }

    public static ExecutePipelineRequest parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return (ExecutePipelineRequest) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
    }

    public static ExecutePipelineRequest parseFrom(InputStream input) throws IOException {
        return (ExecutePipelineRequest) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
    }

    public static ExecutePipelineRequest parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (ExecutePipelineRequest) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
    }

    public static ExecutePipelineRequest parseDelimitedFrom(InputStream input) throws IOException {
        return (ExecutePipelineRequest) parseDelimitedFrom(DEFAULT_INSTANCE, input);
    }

    public static ExecutePipelineRequest parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (ExecutePipelineRequest) parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
    }

    public static ExecutePipelineRequest parseFrom(CodedInputStream input) throws IOException {
        return (ExecutePipelineRequest) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
    }

    public static ExecutePipelineRequest parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (ExecutePipelineRequest) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static Builder newBuilder(ExecutePipelineRequest prototype) {
        return DEFAULT_INSTANCE.createBuilder(prototype);
    }

    public static final class Builder extends GeneratedMessageLite.Builder<ExecutePipelineRequest, Builder> implements ExecutePipelineRequestOrBuilder {
        private Builder() {
            super(ExecutePipelineRequest.DEFAULT_INSTANCE);
        }

        @Override // com.google.firestore.v1.ExecutePipelineRequestOrBuilder
        public PipelineTypeCase getPipelineTypeCase() {
            return ((ExecutePipelineRequest) this.instance).getPipelineTypeCase();
        }

        public Builder clearPipelineType() {
            copyOnWrite();
            ((ExecutePipelineRequest) this.instance).clearPipelineType();
            return this;
        }

        @Override // com.google.firestore.v1.ExecutePipelineRequestOrBuilder
        public ConsistencySelectorCase getConsistencySelectorCase() {
            return ((ExecutePipelineRequest) this.instance).getConsistencySelectorCase();
        }

        public Builder clearConsistencySelector() {
            copyOnWrite();
            ((ExecutePipelineRequest) this.instance).clearConsistencySelector();
            return this;
        }

        @Override // com.google.firestore.v1.ExecutePipelineRequestOrBuilder
        public String getDatabase() {
            return ((ExecutePipelineRequest) this.instance).getDatabase();
        }

        @Override // com.google.firestore.v1.ExecutePipelineRequestOrBuilder
        public ByteString getDatabaseBytes() {
            return ((ExecutePipelineRequest) this.instance).getDatabaseBytes();
        }

        public Builder setDatabase(String value) {
            copyOnWrite();
            ((ExecutePipelineRequest) this.instance).setDatabase(value);
            return this;
        }

        public Builder clearDatabase() {
            copyOnWrite();
            ((ExecutePipelineRequest) this.instance).clearDatabase();
            return this;
        }

        public Builder setDatabaseBytes(ByteString value) {
            copyOnWrite();
            ((ExecutePipelineRequest) this.instance).setDatabaseBytes(value);
            return this;
        }

        @Override // com.google.firestore.v1.ExecutePipelineRequestOrBuilder
        public boolean hasStructuredPipeline() {
            return ((ExecutePipelineRequest) this.instance).hasStructuredPipeline();
        }

        @Override // com.google.firestore.v1.ExecutePipelineRequestOrBuilder
        public StructuredPipeline getStructuredPipeline() {
            return ((ExecutePipelineRequest) this.instance).getStructuredPipeline();
        }

        public Builder setStructuredPipeline(StructuredPipeline value) {
            copyOnWrite();
            ((ExecutePipelineRequest) this.instance).setStructuredPipeline(value);
            return this;
        }

        public Builder setStructuredPipeline(StructuredPipeline.Builder builderForValue) {
            copyOnWrite();
            ((ExecutePipelineRequest) this.instance).setStructuredPipeline(builderForValue.build());
            return this;
        }

        public Builder mergeStructuredPipeline(StructuredPipeline value) {
            copyOnWrite();
            ((ExecutePipelineRequest) this.instance).mergeStructuredPipeline(value);
            return this;
        }

        public Builder clearStructuredPipeline() {
            copyOnWrite();
            ((ExecutePipelineRequest) this.instance).clearStructuredPipeline();
            return this;
        }

        @Override // com.google.firestore.v1.ExecutePipelineRequestOrBuilder
        public boolean hasTransaction() {
            return ((ExecutePipelineRequest) this.instance).hasTransaction();
        }

        @Override // com.google.firestore.v1.ExecutePipelineRequestOrBuilder
        public ByteString getTransaction() {
            return ((ExecutePipelineRequest) this.instance).getTransaction();
        }

        public Builder setTransaction(ByteString value) {
            copyOnWrite();
            ((ExecutePipelineRequest) this.instance).setTransaction(value);
            return this;
        }

        public Builder clearTransaction() {
            copyOnWrite();
            ((ExecutePipelineRequest) this.instance).clearTransaction();
            return this;
        }

        @Override // com.google.firestore.v1.ExecutePipelineRequestOrBuilder
        public boolean hasNewTransaction() {
            return ((ExecutePipelineRequest) this.instance).hasNewTransaction();
        }

        @Override // com.google.firestore.v1.ExecutePipelineRequestOrBuilder
        public TransactionOptions getNewTransaction() {
            return ((ExecutePipelineRequest) this.instance).getNewTransaction();
        }

        public Builder setNewTransaction(TransactionOptions value) {
            copyOnWrite();
            ((ExecutePipelineRequest) this.instance).setNewTransaction(value);
            return this;
        }

        public Builder setNewTransaction(TransactionOptions.Builder builderForValue) {
            copyOnWrite();
            ((ExecutePipelineRequest) this.instance).setNewTransaction(builderForValue.build());
            return this;
        }

        public Builder mergeNewTransaction(TransactionOptions value) {
            copyOnWrite();
            ((ExecutePipelineRequest) this.instance).mergeNewTransaction(value);
            return this;
        }

        public Builder clearNewTransaction() {
            copyOnWrite();
            ((ExecutePipelineRequest) this.instance).clearNewTransaction();
            return this;
        }

        @Override // com.google.firestore.v1.ExecutePipelineRequestOrBuilder
        public boolean hasReadTime() {
            return ((ExecutePipelineRequest) this.instance).hasReadTime();
        }

        @Override // com.google.firestore.v1.ExecutePipelineRequestOrBuilder
        public Timestamp getReadTime() {
            return ((ExecutePipelineRequest) this.instance).getReadTime();
        }

        public Builder setReadTime(Timestamp value) {
            copyOnWrite();
            ((ExecutePipelineRequest) this.instance).setReadTime(value);
            return this;
        }

        public Builder setReadTime(Timestamp.Builder builderForValue) {
            copyOnWrite();
            ((ExecutePipelineRequest) this.instance).setReadTime(builderForValue.build());
            return this;
        }

        public Builder mergeReadTime(Timestamp value) {
            copyOnWrite();
            ((ExecutePipelineRequest) this.instance).mergeReadTime(value);
            return this;
        }

        public Builder clearReadTime() {
            copyOnWrite();
            ((ExecutePipelineRequest) this.instance).clearReadTime();
            return this;
        }
    }

    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
        switch (method) {
            case NEW_MUTABLE_INSTANCE:
                return new ExecutePipelineRequest();
            case NEW_BUILDER:
                return new Builder();
            case BUILD_MESSAGE_INFO:
                Object[] objects = {"pipelineType_", "pipelineTypeCase_", "consistencySelector_", "consistencySelectorCase_", "database_", StructuredPipeline.class, TransactionOptions.class, Timestamp.class};
                return newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0005\u0002\u0000\u0001\u0007\u0005\u0000\u0000\u0000\u0001Ȉ\u0002<\u0000\u0005=\u0001\u0006<\u0001\u0007<\u0001", objects);
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                Parser<ExecutePipelineRequest> parser = PARSER;
                if (parser == null) {
                    synchronized (ExecutePipelineRequest.class) {
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
        ExecutePipelineRequest defaultInstance = new ExecutePipelineRequest();
        DEFAULT_INSTANCE = defaultInstance;
        GeneratedMessageLite.registerDefaultInstance(ExecutePipelineRequest.class, defaultInstance);
    }

    public static ExecutePipelineRequest getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static Parser<ExecutePipelineRequest> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }
}
