package org.ies.tierno.applicationamani.presentation.viewmodels.chat;

import androidx.core.app.NotificationCompat;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ChatViewModel.kt */
/* JADX INFO: loaded from: classes16.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0013\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B=\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\n\u0010\u000bJ\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0007HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0007HÆ\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0005HÆ\u0003J?\u0010\u0019\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00072\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001d\u001a\u00020\u001eHÖ\u0001J\t\u0010\u001f\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\b\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0011R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u000f¨\u0006 "}, d2 = {"Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;", "", NotificationCompat.CATEGORY_STATUS, "Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackStatus;", "activeMessageId", "", "positionMs", "", "durationMs", "errorMessage", "<init>", "(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackStatus;Ljava/lang/String;JJLjava/lang/String;)V", "getStatus", "()Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackStatus;", "getActiveMessageId", "()Ljava/lang/String;", "getPositionMs", "()J", "getDurationMs", "getErrorMessage", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "hashCode", "", "toString", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final /* data */ class AudioPlaybackUiState {
    public static final int $stable = 0;
    private final String activeMessageId;
    private final long durationMs;
    private final String errorMessage;
    private final long positionMs;
    private final AudioPlaybackStatus status;

    public AudioPlaybackUiState() {
        this(null, null, 0L, 0L, null, 31, null);
    }

    public static /* synthetic */ AudioPlaybackUiState copy$default(AudioPlaybackUiState audioPlaybackUiState, AudioPlaybackStatus audioPlaybackStatus, String str, long j, long j2, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            audioPlaybackStatus = audioPlaybackUiState.status;
        }
        if ((i & 2) != 0) {
            str = audioPlaybackUiState.activeMessageId;
        }
        if ((i & 4) != 0) {
            j = audioPlaybackUiState.positionMs;
        }
        if ((i & 8) != 0) {
            j2 = audioPlaybackUiState.durationMs;
        }
        if ((i & 16) != 0) {
            str2 = audioPlaybackUiState.errorMessage;
        }
        String str3 = str2;
        long j3 = j2;
        return audioPlaybackUiState.copy(audioPlaybackStatus, str, j, j3, str3);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final AudioPlaybackStatus getStatus() {
        return this.status;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getActiveMessageId() {
        return this.activeMessageId;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final long getPositionMs() {
        return this.positionMs;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final long getDurationMs() {
        return this.durationMs;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getErrorMessage() {
        return this.errorMessage;
    }

    public final AudioPlaybackUiState copy(AudioPlaybackStatus status, String activeMessageId, long positionMs, long durationMs, String errorMessage) {
        Intrinsics.checkNotNullParameter(status, "status");
        return new AudioPlaybackUiState(status, activeMessageId, positionMs, durationMs, errorMessage);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AudioPlaybackUiState)) {
            return false;
        }
        AudioPlaybackUiState audioPlaybackUiState = (AudioPlaybackUiState) other;
        return this.status == audioPlaybackUiState.status && Intrinsics.areEqual(this.activeMessageId, audioPlaybackUiState.activeMessageId) && this.positionMs == audioPlaybackUiState.positionMs && this.durationMs == audioPlaybackUiState.durationMs && Intrinsics.areEqual(this.errorMessage, audioPlaybackUiState.errorMessage);
    }

    public int hashCode() {
        return (((((((this.status.hashCode() * 31) + (this.activeMessageId == null ? 0 : this.activeMessageId.hashCode())) * 31) + Long.hashCode(this.positionMs)) * 31) + Long.hashCode(this.durationMs)) * 31) + (this.errorMessage != null ? this.errorMessage.hashCode() : 0);
    }

    public String toString() {
        return "AudioPlaybackUiState(status=" + this.status + ", activeMessageId=" + this.activeMessageId + ", positionMs=" + this.positionMs + ", durationMs=" + this.durationMs + ", errorMessage=" + this.errorMessage + ")";
    }

    public AudioPlaybackUiState(AudioPlaybackStatus status, String activeMessageId, long positionMs, long durationMs, String errorMessage) {
        Intrinsics.checkNotNullParameter(status, "status");
        this.status = status;
        this.activeMessageId = activeMessageId;
        this.positionMs = positionMs;
        this.durationMs = durationMs;
        this.errorMessage = errorMessage;
    }

    public /* synthetic */ AudioPlaybackUiState(AudioPlaybackStatus audioPlaybackStatus, String str, long j, long j2, String str2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? AudioPlaybackStatus.IDLE : audioPlaybackStatus, (i & 2) != 0 ? null : str, (i & 4) != 0 ? 0L : j, (i & 8) != 0 ? 0L : j2, (i & 16) != 0 ? null : str2);
    }

    public final AudioPlaybackStatus getStatus() {
        return this.status;
    }

    public final String getActiveMessageId() {
        return this.activeMessageId;
    }

    public final long getPositionMs() {
        return this.positionMs;
    }

    public final long getDurationMs() {
        return this.durationMs;
    }

    public final String getErrorMessage() {
        return this.errorMessage;
    }
}
