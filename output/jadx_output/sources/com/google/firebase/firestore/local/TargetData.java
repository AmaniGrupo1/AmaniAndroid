package com.google.firebase.firestore.local;

import com.google.firebase.firestore.core.TargetOrPipeline;
import com.google.firebase.firestore.model.SnapshotVersion;
import com.google.firebase.firestore.remote.WatchStream;
import com.google.firebase.firestore.util.Preconditions;
import com.google.protobuf.ByteString;
import java.util.Objects;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes22.dex */
public final class TargetData {
    private final Integer expectedCount;
    private final SnapshotVersion lastLimboFreeSnapshotVersion;
    private final QueryPurpose purpose;
    private final ByteString resumeToken;
    private final long sequenceNumber;
    private final SnapshotVersion snapshotVersion;
    private final TargetOrPipeline target;
    private final int targetId;

    public TargetData(TargetOrPipeline target, int targetId, long sequenceNumber, QueryPurpose purpose, SnapshotVersion snapshotVersion, SnapshotVersion lastLimboFreeSnapshotVersion, ByteString resumeToken, Integer expectedCount) {
        this.target = (TargetOrPipeline) Preconditions.checkNotNull(target);
        this.targetId = targetId;
        this.sequenceNumber = sequenceNumber;
        this.lastLimboFreeSnapshotVersion = lastLimboFreeSnapshotVersion;
        this.purpose = purpose;
        this.snapshotVersion = (SnapshotVersion) Preconditions.checkNotNull(snapshotVersion);
        this.resumeToken = (ByteString) Preconditions.checkNotNull(resumeToken);
        this.expectedCount = expectedCount;
    }

    public TargetData(TargetOrPipeline target, int targetId, long sequenceNumber, QueryPurpose purpose) {
        this(target, targetId, sequenceNumber, purpose, SnapshotVersion.NONE, SnapshotVersion.NONE, WatchStream.EMPTY_RESUME_TOKEN, null);
    }

    public TargetData withSequenceNumber(long sequenceNumber) {
        return new TargetData(this.target, this.targetId, sequenceNumber, this.purpose, this.snapshotVersion, this.lastLimboFreeSnapshotVersion, this.resumeToken, this.expectedCount);
    }

    public TargetData withResumeToken(ByteString resumeToken, SnapshotVersion snapshotVersion) {
        return new TargetData(this.target, this.targetId, this.sequenceNumber, this.purpose, snapshotVersion, this.lastLimboFreeSnapshotVersion, resumeToken, null);
    }

    public TargetData withExpectedCount(Integer expectedCount) {
        return new TargetData(this.target, this.targetId, this.sequenceNumber, this.purpose, this.snapshotVersion, this.lastLimboFreeSnapshotVersion, this.resumeToken, expectedCount);
    }

    public TargetData withLastLimboFreeSnapshotVersion(SnapshotVersion lastLimboFreeSnapshotVersion) {
        return new TargetData(this.target, this.targetId, this.sequenceNumber, this.purpose, this.snapshotVersion, lastLimboFreeSnapshotVersion, this.resumeToken, this.expectedCount);
    }

    public TargetOrPipeline getTarget() {
        return this.target;
    }

    TargetData withTarget(TargetOrPipeline target) {
        return new TargetData(target, this.targetId, this.sequenceNumber, this.purpose, this.snapshotVersion, this.lastLimboFreeSnapshotVersion, this.resumeToken, this.expectedCount);
    }

    public int getTargetId() {
        return this.targetId;
    }

    public long getSequenceNumber() {
        return this.sequenceNumber;
    }

    public QueryPurpose getPurpose() {
        return this.purpose;
    }

    public SnapshotVersion getSnapshotVersion() {
        return this.snapshotVersion;
    }

    public ByteString getResumeToken() {
        return this.resumeToken;
    }

    public Integer getExpectedCount() {
        return this.expectedCount;
    }

    public SnapshotVersion getLastLimboFreeSnapshotVersion() {
        return this.lastLimboFreeSnapshotVersion;
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        TargetData that = (TargetData) o;
        if (this.target.equals(that.target) && this.targetId == that.targetId && this.sequenceNumber == that.sequenceNumber && this.purpose.equals(that.purpose) && this.snapshotVersion.equals(that.snapshotVersion) && this.lastLimboFreeSnapshotVersion.equals(that.lastLimboFreeSnapshotVersion) && this.resumeToken.equals(that.resumeToken) && Objects.equals(this.expectedCount, that.expectedCount)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int result = this.target.hashCode();
        return (((((((((((((result * 31) + this.targetId) * 31) + ((int) this.sequenceNumber)) * 31) + this.purpose.hashCode()) * 31) + this.snapshotVersion.hashCode()) * 31) + this.lastLimboFreeSnapshotVersion.hashCode()) * 31) + this.resumeToken.hashCode()) * 31) + Objects.hashCode(this.expectedCount);
    }

    public String toString() {
        return "TargetData{target=" + this.target + ", targetId=" + this.targetId + ", sequenceNumber=" + this.sequenceNumber + ", purpose=" + this.purpose + ", snapshotVersion=" + this.snapshotVersion + ", lastLimboFreeSnapshotVersion=" + this.lastLimboFreeSnapshotVersion + ", resumeToken=" + this.resumeToken + ", expectedCount=" + this.expectedCount + AbstractJsonLexerKt.END_OBJ;
    }
}
