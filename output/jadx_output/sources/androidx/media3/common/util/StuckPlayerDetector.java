package androidx.media3.common.util;

import android.os.Handler;
import android.os.Message;
import androidx.media3.common.C;
import androidx.media3.common.Player;
import androidx.media3.common.Timeline;
import java.util.Objects;

/* JADX INFO: loaded from: classes21.dex */
public final class StuckPlayerDetector {
    private static final int MSG_STUCK_BUFFERING_TIMEOUT = 1;
    private static final int MSG_STUCK_PLAYING_NOT_ENDING_TIMEOUT = 3;
    private static final int MSG_STUCK_PLAYING_TIMEOUT = 2;
    private static final int MSG_STUCK_SUPPRESSED_TIMEOUT = 4;
    private final Callback callback;
    private final Clock clock;
    private final HandlerWrapper handler;
    private final Player player;
    private final StuckBufferingDetector stuckBufferingDetector;
    private final StuckPlayingDetector stuckPlayingDetector;
    private final StuckPlayingNotEndingDetector stuckPlayingNotEndingDetector;
    private final StuckSuppressedDetector stuckSuppressedDetector;
    private final Timeline.Period period = new Timeline.Period();
    private final Player.Listener playerListener = new Player.Listener() { // from class: androidx.media3.common.util.StuckPlayerDetector.1
        @Override // androidx.media3.common.Player.Listener
        public void onEvents(Player player, Player.Events events) {
            StuckPlayerDetector.this.onPlayerEvents();
        }
    };

    public interface Callback {
        void onStuckPlayerDetected(StuckPlayerException stuckPlayerException);
    }

    public StuckPlayerDetector(Player player, Callback callback, Clock clock, int stuckBufferingTimeoutMs, int stuckPlayingTimeoutMs, int stuckPlayingNotEndingTimeoutMs, int stuckSuppressedTimeoutMs) {
        this.player = player;
        this.callback = callback;
        this.clock = clock;
        this.handler = clock.createHandler(player.getApplicationLooper(), new Handler.Callback() { // from class: androidx.media3.common.util.StuckPlayerDetector$$ExternalSyntheticLambda0
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                return this.f$0.handleMessage(message);
            }
        });
        this.stuckBufferingDetector = new StuckBufferingDetector(stuckBufferingTimeoutMs);
        this.stuckPlayingDetector = new StuckPlayingDetector(stuckPlayingTimeoutMs);
        this.stuckPlayingNotEndingDetector = new StuckPlayingNotEndingDetector(stuckPlayingNotEndingTimeoutMs);
        this.stuckSuppressedDetector = new StuckSuppressedDetector(stuckSuppressedTimeoutMs);
        player.addListener(this.playerListener);
    }

    public void release() {
        this.handler.removeCallbacksAndMessages(null);
        this.player.removeListener(this.playerListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onPlayerEvents() {
        this.stuckBufferingDetector.update();
        this.stuckPlayingDetector.update();
        this.stuckPlayingNotEndingDetector.update();
        this.stuckSuppressedDetector.update();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean handleMessage(Message message) {
        switch (message.what) {
            case 1:
                this.stuckBufferingDetector.update();
                break;
            case 2:
                this.stuckPlayingDetector.update();
                break;
            case 3:
                this.stuckPlayingNotEndingDetector.update();
                break;
            case 4:
                this.stuckSuppressedDetector.update();
                break;
        }
        return true;
    }

    private final class StuckBufferingDetector {
        private int adGroupIndex;
        private int adIndexInAdGroup;
        private long bufferedDurationInOtherPeriodsMs;
        private long bufferedPositionInPeriodMs;
        private boolean isBuffering;
        private Object periodUid;
        private long startRealtimeMs;
        private final int stuckBufferingTimeoutMs;

        public StuckBufferingDetector(int stuckBufferingTimeoutMs) {
            this.stuckBufferingTimeoutMs = stuckBufferingTimeoutMs;
        }

        public void update() {
            if (StuckPlayerDetector.this.player.getPlaybackState() == 2 && StuckPlayerDetector.this.player.getPlayWhenReady() && StuckPlayerDetector.this.player.getPlaybackSuppressionReason() == 0) {
                Timeline timeline = StuckPlayerDetector.this.player.getCurrentTimeline();
                Object periodUid = timeline.isEmpty() ? null : timeline.getUidOfPeriod(StuckPlayerDetector.this.player.getCurrentPeriodIndex());
                int adGroupIndex = StuckPlayerDetector.this.player.getCurrentAdGroupIndex();
                int adIndexInAdGroup = StuckPlayerDetector.this.player.getCurrentAdIndexInAdGroup();
                long bufferedPositionInPeriodMs = StuckPlayerDetector.this.player.getBufferedPosition();
                long bufferedDurationInPeriodMs = Math.max(0L, bufferedPositionInPeriodMs - StuckPlayerDetector.this.player.getCurrentPosition());
                long bufferedDurationInOtherPeriodsMs = Math.max(0L, StuckPlayerDetector.this.player.getTotalBufferedDuration() - bufferedDurationInPeriodMs);
                if (periodUid != null && adGroupIndex == -1) {
                    bufferedPositionInPeriodMs -= timeline.getPeriodByUid(periodUid, StuckPlayerDetector.this.period).getPositionInWindowMs();
                }
                long nowRealtimeMs = StuckPlayerDetector.this.clock.elapsedRealtime();
                if (!this.isBuffering || !Objects.equals(periodUid, this.periodUid) || adGroupIndex != this.adGroupIndex || adIndexInAdGroup != this.adIndexInAdGroup || bufferedPositionInPeriodMs != this.bufferedPositionInPeriodMs || bufferedDurationInOtherPeriodsMs != this.bufferedDurationInOtherPeriodsMs) {
                    this.isBuffering = true;
                    this.startRealtimeMs = nowRealtimeMs;
                    this.periodUid = periodUid;
                    this.adGroupIndex = adGroupIndex;
                    this.adIndexInAdGroup = adIndexInAdGroup;
                    this.bufferedPositionInPeriodMs = bufferedPositionInPeriodMs;
                    this.bufferedDurationInOtherPeriodsMs = bufferedDurationInOtherPeriodsMs;
                    StuckPlayerDetector.this.handler.removeMessages(1);
                    StuckPlayerDetector.this.handler.sendEmptyMessageDelayed(1, this.stuckBufferingTimeoutMs);
                    return;
                }
                long j = nowRealtimeMs - this.startRealtimeMs;
                long bufferedDurationInPeriodMs2 = this.stuckBufferingTimeoutMs;
                if (j >= bufferedDurationInPeriodMs2) {
                    StuckPlayerDetector.this.callback.onStuckPlayerDetected(new StuckPlayerException(1, this.stuckBufferingTimeoutMs));
                    return;
                }
                return;
            }
            if (this.isBuffering) {
                StuckPlayerDetector.this.handler.removeMessages(1);
            }
            this.isBuffering = false;
        }
    }

    private final class StuckPlayingDetector {
        private int adGroupIndex;
        private int adIndexInAdGroup;
        private long currentPositionInPeriodMs;
        private boolean isPlaying;
        private Object periodUid;
        private long startRealtimeMs;
        private final int stuckPlayingTimeoutMs;

        public StuckPlayingDetector(int stuckPlayingTimeoutMs) {
            this.stuckPlayingTimeoutMs = stuckPlayingTimeoutMs;
        }

        public void update() {
            if (StuckPlayerDetector.this.player.isPlaying()) {
                Timeline timeline = StuckPlayerDetector.this.player.getCurrentTimeline();
                Object periodUid = timeline.isEmpty() ? null : timeline.getUidOfPeriod(StuckPlayerDetector.this.player.getCurrentPeriodIndex());
                int adGroupIndex = StuckPlayerDetector.this.player.getCurrentAdGroupIndex();
                int adIndexInAdGroup = StuckPlayerDetector.this.player.getCurrentAdIndexInAdGroup();
                long currentPositionInPeriodMs = StuckPlayerDetector.this.player.getCurrentPosition();
                if (periodUid != null && adGroupIndex == -1) {
                    currentPositionInPeriodMs -= timeline.getPeriodByUid(periodUid, StuckPlayerDetector.this.period).getPositionInWindowMs();
                }
                long nowRealtimeMs = StuckPlayerDetector.this.clock.elapsedRealtime();
                if (this.isPlaying && Objects.equals(periodUid, this.periodUid) && adGroupIndex == this.adGroupIndex && adIndexInAdGroup == this.adIndexInAdGroup && currentPositionInPeriodMs == this.currentPositionInPeriodMs) {
                    if (nowRealtimeMs - this.startRealtimeMs >= this.stuckPlayingTimeoutMs) {
                        StuckPlayerDetector.this.callback.onStuckPlayerDetected(new StuckPlayerException(2, this.stuckPlayingTimeoutMs));
                        return;
                    }
                    return;
                }
                this.isPlaying = true;
                this.startRealtimeMs = nowRealtimeMs;
                this.periodUid = periodUid;
                this.adGroupIndex = adGroupIndex;
                this.adIndexInAdGroup = adIndexInAdGroup;
                this.currentPositionInPeriodMs = currentPositionInPeriodMs;
                StuckPlayerDetector.this.handler.removeMessages(2);
                StuckPlayerDetector.this.handler.sendEmptyMessageDelayed(2, this.stuckPlayingTimeoutMs);
                return;
            }
            if (this.isPlaying) {
                StuckPlayerDetector.this.handler.removeMessages(2);
            }
            this.isPlaying = false;
        }
    }

    private final class StuckPlayingNotEndingDetector {
        private int adGroupIndex;
        private int adIndexInAdGroup;
        private boolean isPlayingAndReachedDuration;
        private Object periodUid;
        private long startRealtimeMs;
        private final int stuckPlayingNotEndingTimeoutMs;

        public StuckPlayingNotEndingDetector(int stuckPlayingNotEndingTimeoutMs) {
            this.stuckPlayingNotEndingTimeoutMs = stuckPlayingNotEndingTimeoutMs;
        }

        public void update() {
            Timeline timeline = StuckPlayerDetector.this.player.getCurrentTimeline();
            Object periodUid = timeline.isEmpty() ? null : timeline.getUidOfPeriod(StuckPlayerDetector.this.player.getCurrentPeriodIndex());
            int adGroupIndex = StuckPlayerDetector.this.player.getCurrentAdGroupIndex();
            int adIndexInAdGroup = StuckPlayerDetector.this.player.getCurrentAdIndexInAdGroup();
            long currentPositionInPeriodOrAdMs = StuckPlayerDetector.this.player.getCurrentPosition();
            long durationOfPeriodOrAdMs = C.TIME_UNSET;
            if (periodUid != null && adGroupIndex == -1) {
                timeline.getPeriodByUid(periodUid, StuckPlayerDetector.this.period);
                currentPositionInPeriodOrAdMs -= StuckPlayerDetector.this.period.getPositionInWindowMs();
                durationOfPeriodOrAdMs = StuckPlayerDetector.this.period.getDurationMs();
            } else if (adGroupIndex != -1) {
                durationOfPeriodOrAdMs = StuckPlayerDetector.this.player.getDuration();
            }
            boolean isPlaying = StuckPlayerDetector.this.player.isPlaying();
            if (!isPlaying || durationOfPeriodOrAdMs == C.TIME_UNSET || currentPositionInPeriodOrAdMs < durationOfPeriodOrAdMs) {
                int i = 3;
                StuckPlayerDetector.this.handler.removeMessages(i);
                if (isPlaying && durationOfPeriodOrAdMs != C.TIME_UNSET) {
                    float realtimeUntilDurationReachedMs = (durationOfPeriodOrAdMs - currentPositionInPeriodOrAdMs) / StuckPlayerDetector.this.player.getPlaybackParameters().speed;
                    StuckPlayerDetector.this.handler.sendEmptyMessageDelayed(3, (int) Math.ceil(realtimeUntilDurationReachedMs));
                }
                this.isPlayingAndReachedDuration = false;
                return;
            }
            long nowRealtimeMs = StuckPlayerDetector.this.clock.elapsedRealtime();
            if (this.isPlayingAndReachedDuration && Objects.equals(periodUid, this.periodUid) && adGroupIndex == this.adGroupIndex && adIndexInAdGroup == this.adIndexInAdGroup) {
                if (nowRealtimeMs - this.startRealtimeMs >= this.stuckPlayingNotEndingTimeoutMs) {
                    StuckPlayerDetector.this.callback.onStuckPlayerDetected(new StuckPlayerException(3, this.stuckPlayingNotEndingTimeoutMs));
                    return;
                }
                return;
            }
            this.isPlayingAndReachedDuration = true;
            this.startRealtimeMs = nowRealtimeMs;
            this.periodUid = periodUid;
            this.adGroupIndex = adGroupIndex;
            this.adIndexInAdGroup = adIndexInAdGroup;
            StuckPlayerDetector.this.handler.removeMessages(3);
            StuckPlayerDetector.this.handler.sendEmptyMessageDelayed(3, this.stuckPlayingNotEndingTimeoutMs);
        }
    }

    private final class StuckSuppressedDetector {
        private boolean isSuppressed;
        private long startRealtimeMs;
        private final int stuckSuppressedTimeoutMs;
        private int suppressionReason;

        public StuckSuppressedDetector(int stuckSuppressedTimeoutMs) {
            this.stuckSuppressedTimeoutMs = stuckSuppressedTimeoutMs;
        }

        public void update() {
            int suppressionReason = StuckPlayerDetector.this.player.getPlaybackSuppressionReason();
            if (StuckPlayerDetector.this.player.getPlayWhenReady() && StuckPlayerDetector.this.player.getPlaybackState() != 1 && StuckPlayerDetector.this.player.getPlaybackState() != 4 && suppressionReason != 0 && suppressionReason != 1) {
                long nowRealtimeMs = StuckPlayerDetector.this.clock.elapsedRealtime();
                if (this.isSuppressed && this.suppressionReason == suppressionReason) {
                    if (nowRealtimeMs - this.startRealtimeMs >= this.stuckSuppressedTimeoutMs) {
                        StuckPlayerDetector.this.callback.onStuckPlayerDetected(new StuckPlayerException(4, this.stuckSuppressedTimeoutMs));
                        return;
                    }
                    return;
                } else {
                    this.isSuppressed = true;
                    this.startRealtimeMs = nowRealtimeMs;
                    this.suppressionReason = suppressionReason;
                    StuckPlayerDetector.this.handler.removeMessages(4);
                    StuckPlayerDetector.this.handler.sendEmptyMessageDelayed(4, this.stuckSuppressedTimeoutMs);
                    return;
                }
            }
            if (this.isSuppressed) {
                StuckPlayerDetector.this.handler.removeMessages(4);
            }
            this.isSuppressed = false;
        }
    }
}
