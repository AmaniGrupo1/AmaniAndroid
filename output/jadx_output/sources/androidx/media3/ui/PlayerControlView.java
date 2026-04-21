package androidx.media3.ui;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.core.content.res.ResourcesCompat;
import androidx.media3.common.C;
import androidx.media3.common.Format;
import androidx.media3.common.MediaLibraryInfo;
import androidx.media3.common.Player;
import androidx.media3.common.Timeline;
import androidx.media3.common.TrackGroup;
import androidx.media3.common.TrackSelectionOverride;
import androidx.media3.common.TrackSelectionParameters;
import androidx.media3.common.Tracks;
import androidx.media3.common.ViewProvider;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.RepeatModeUtil;
import androidx.media3.common.util.Util;
import androidx.media3.ui.TimeBar;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.util.concurrent.FutureCallback;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Formatter;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
import okhttp3.internal.ws.WebSocketProtocol;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;

/* JADX INFO: loaded from: classes21.dex */
public class PlayerControlView extends FrameLayout {
    public static final int DEFAULT_REPEAT_TOGGLE_MODES = 0;
    public static final int DEFAULT_SHOW_TIMEOUT_MS = 5000;
    public static final int DEFAULT_TIME_BAR_MIN_UPDATE_INTERVAL_MS = 200;
    private static final int MAX_UPDATE_INTERVAL_MS = 1000;
    public static final int MAX_WINDOWS_FOR_MULTI_WINDOW_TIME_BAR = 100;
    private static final float[] PLAYBACK_SPEEDS;
    private static final int SETTINGS_AUDIO_TRACK_SELECTION_POSITION = 1;
    private static final int SETTINGS_PLAYBACK_SPEED_POSITION = 0;
    private static final String TAG = "PlayerControlView";
    private long[] adGroupTimesMs;
    private final View audioTrackButton;
    private final AudioTrackSelectionAdapter audioTrackSelectionAdapter;
    private final float buttonAlphaDisabled;
    private final float buttonAlphaEnabled;
    private final ComponentListener componentListener;
    private final Class<?> compositionPlayerClazz;
    private final Method compositionPlayerIsScrubbingModeEnabledMethod;
    private final Method compositionPlayerSetScrubbingModeEnabledMethod;
    private final PlayerControlViewLayoutManager controlViewLayoutManager;
    private long currentWindowOffset;
    private final TextView durationView;
    private final Class<?> exoplayerClazz;
    private long[] extraAdGroupTimesMs;
    private boolean[] extraPlayedAdGroups;
    private final View fastForwardButton;
    private final TextView fastForwardButtonTextView;
    private final StringBuilder formatBuilder;
    private final Formatter formatter;
    private final ImageView fullscreenButton;
    private final String fullscreenEnterContentDescription;
    private final Drawable fullscreenEnterDrawable;
    private final String fullscreenExitContentDescription;
    private final Drawable fullscreenExitDrawable;
    private final Handler handler;
    private boolean isAttachedToWindow;
    private boolean isFullscreen;
    private final Method isScrubbingModeEnabledMethod;
    private final ImageView minimalFullscreenButton;
    private boolean multiWindowTimeBar;
    private boolean needToHideBars;
    private final ImageView nextButton;
    private OnFullScreenModeChangedListener onFullScreenModeChangedListener;
    private final Drawable pauseButtonDrawable;
    private final Timeline.Period period;
    private final Drawable playButtonDrawable;
    private final ImageView playPauseButton;
    private final PlaybackSpeedAdapter playbackSpeedAdapter;
    private final View playbackSpeedButton;
    private boolean[] playedAdGroups;
    private Player player;
    private final TextView positionView;
    private final ImageView previousButton;
    private ProgressUpdateListener progressUpdateListener;
    private final String repeatAllButtonContentDescription;
    private final Drawable repeatAllButtonDrawable;
    private final String repeatOffButtonContentDescription;
    private final Drawable repeatOffButtonDrawable;
    private final String repeatOneButtonContentDescription;
    private final Drawable repeatOneButtonDrawable;
    private final ImageView repeatToggleButton;
    private int repeatToggleModes;
    private final Resources resources;
    private final View rewindButton;
    private final TextView rewindButtonTextView;
    private boolean scrubbing;
    private final Method setScrubbingModeEnabledMethod;
    private final SettingsAdapter settingsAdapter;
    private final View settingsButton;
    private final RecyclerView settingsView;
    private final PopupWindow settingsWindow;
    private final int settingsWindowMargin;
    private boolean showMultiWindowTimeBar;
    private boolean showPlayButtonIfSuppressed;
    private int showTimeoutMs;
    private final ImageView shuffleButton;
    private final Drawable shuffleOffButtonDrawable;
    private final String shuffleOffContentDescription;
    private final Drawable shuffleOnButtonDrawable;
    private final String shuffleOnContentDescription;
    private final ImageView subtitleButton;
    private final Drawable subtitleOffButtonDrawable;
    private final String subtitleOffContentDescription;
    private final Drawable subtitleOnButtonDrawable;
    private final String subtitleOnContentDescription;
    private final TextTrackSelectionAdapter textTrackSelectionAdapter;
    private final TimeBar timeBar;
    private int timeBarMinUpdateIntervalMs;
    private boolean timeBarScrubbingEnabled;
    private final TrackNameProvider trackNameProvider;
    private final Runnable updateProgressAction;
    private final CopyOnWriteArrayList<VisibilityListener> visibilityListeners;
    private final ImageView vrButton;
    private final Timeline.Window window;

    @Deprecated
    public interface OnFullScreenModeChangedListener {
        void onFullScreenModeChanged(boolean z);
    }

    public interface ProgressUpdateListener {
        void onProgressUpdate(long j, long j2);
    }

    @Deprecated
    public interface VisibilityListener {
        void onVisibilityChange(int i);
    }

    static {
        MediaLibraryInfo.registerModule("media3.ui");
        PLAYBACK_SPEEDS = new float[]{0.25f, 0.5f, 0.75f, 1.0f, 1.25f, 1.5f, 2.0f};
    }

    public PlayerControlView(Context context) {
        this(context, null);
    }

    public PlayerControlView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public PlayerControlView(Context context, AttributeSet attrs, int defStyleAttr) {
        this(context, attrs, defStyleAttr, attrs);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public PlayerControlView(Context context, AttributeSet attributeSet, int i, AttributeSet attributeSet2) throws Throwable {
        final PlayerControlView playerControlView;
        int i2;
        int i3;
        int i4;
        boolean z;
        boolean z2;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        boolean z3;
        boolean z4;
        boolean z5;
        int i15;
        int i16;
        Class<?> cls;
        String str;
        boolean z6;
        String str2;
        Method method;
        Class<?> cls2;
        boolean z7;
        boolean z8;
        Method method2;
        Class<?> cls3;
        Method method3;
        Method method4;
        int i17;
        int i18;
        int i19;
        boolean z9;
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        int i20;
        View view;
        final PlayerControlView playerControlView2;
        boolean z14;
        Context context2;
        int i21;
        int i22;
        ImageView imageView;
        int i23;
        int i24;
        boolean z15;
        String str3;
        super(context, attributeSet, i);
        int resourceId = R.layout.exo_player_control_view;
        int resourceId2 = R.drawable.exo_styled_controls_play;
        int resourceId3 = R.drawable.exo_styled_controls_pause;
        int i25 = R.drawable.exo_styled_controls_next;
        int i26 = R.drawable.exo_styled_controls_simple_fastforward;
        int i27 = R.drawable.exo_styled_controls_previous;
        int i28 = R.drawable.exo_styled_controls_simple_rewind;
        int i29 = R.drawable.exo_styled_controls_fullscreen_exit;
        int i30 = R.drawable.exo_styled_controls_fullscreen_enter;
        int i31 = R.drawable.exo_styled_controls_repeat_off;
        int i32 = R.drawable.exo_styled_controls_repeat_one;
        int i33 = R.drawable.exo_styled_controls_repeat_all;
        int i34 = R.drawable.exo_styled_controls_shuffle_on;
        int i35 = R.drawable.exo_styled_controls_shuffle_off;
        int i36 = R.drawable.exo_styled_controls_subtitle_on;
        int i37 = R.drawable.exo_styled_controls_subtitle_off;
        int i38 = R.drawable.exo_styled_controls_vr;
        this.showPlayButtonIfSuppressed = true;
        this.showTimeoutMs = 5000;
        this.repeatToggleModes = 0;
        this.timeBarMinUpdateIntervalMs = 200;
        boolean z16 = false;
        boolean z17 = false;
        boolean z18 = true;
        if (attributeSet2 == null) {
            playerControlView = this;
            i2 = i25;
            i3 = i30;
            i4 = i38;
            z = true;
            z2 = false;
            i5 = i26;
            i6 = i27;
            i7 = i28;
            i8 = i29;
            i9 = i31;
            i10 = i32;
            i11 = i34;
            i12 = i35;
            i13 = i36;
            i14 = i37;
            z3 = true;
            z4 = true;
            z5 = true;
            i15 = i33;
            i16 = resourceId;
        } else {
            TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet2, R.styleable.PlayerControlView, i, 0);
            try {
                resourceId = typedArrayObtainStyledAttributes.getResourceId(R.styleable.PlayerControlView_controller_layout_id, resourceId);
                resourceId2 = typedArrayObtainStyledAttributes.getResourceId(R.styleable.PlayerControlView_play_icon, resourceId2);
                resourceId3 = typedArrayObtainStyledAttributes.getResourceId(R.styleable.PlayerControlView_pause_icon, resourceId3);
                int resourceId4 = typedArrayObtainStyledAttributes.getResourceId(R.styleable.PlayerControlView_next_icon, i25);
                int resourceId5 = typedArrayObtainStyledAttributes.getResourceId(R.styleable.PlayerControlView_fastforward_icon, i26);
                int resourceId6 = typedArrayObtainStyledAttributes.getResourceId(R.styleable.PlayerControlView_previous_icon, i27);
                int resourceId7 = typedArrayObtainStyledAttributes.getResourceId(R.styleable.PlayerControlView_rewind_icon, i28);
                int resourceId8 = typedArrayObtainStyledAttributes.getResourceId(R.styleable.PlayerControlView_fullscreen_exit_icon, i29);
                int resourceId9 = typedArrayObtainStyledAttributes.getResourceId(R.styleable.PlayerControlView_fullscreen_enter_icon, i30);
                int resourceId10 = typedArrayObtainStyledAttributes.getResourceId(R.styleable.PlayerControlView_repeat_off_icon, i31);
                int resourceId11 = typedArrayObtainStyledAttributes.getResourceId(R.styleable.PlayerControlView_repeat_one_icon, i32);
                try {
                    int resourceId12 = typedArrayObtainStyledAttributes.getResourceId(R.styleable.PlayerControlView_repeat_all_icon, i33);
                    int resourceId13 = i34;
                    try {
                        resourceId13 = typedArrayObtainStyledAttributes.getResourceId(R.styleable.PlayerControlView_shuffle_on_icon, resourceId13);
                        int resourceId14 = i35;
                        try {
                            resourceId14 = typedArrayObtainStyledAttributes.getResourceId(R.styleable.PlayerControlView_shuffle_off_icon, resourceId14);
                            int resourceId15 = i36;
                            try {
                                resourceId15 = typedArrayObtainStyledAttributes.getResourceId(R.styleable.PlayerControlView_subtitle_on_icon, resourceId15);
                                int resourceId16 = i37;
                                try {
                                    resourceId16 = typedArrayObtainStyledAttributes.getResourceId(R.styleable.PlayerControlView_subtitle_off_icon, resourceId16);
                                    try {
                                        int resourceId17 = typedArrayObtainStyledAttributes.getResourceId(R.styleable.PlayerControlView_vr_icon, i38);
                                        try {
                                            playerControlView = this;
                                            try {
                                                playerControlView.showTimeoutMs = typedArrayObtainStyledAttributes.getInt(R.styleable.PlayerControlView_show_timeout, playerControlView.showTimeoutMs);
                                                playerControlView.repeatToggleModes = getRepeatToggleModes(typedArrayObtainStyledAttributes, playerControlView.repeatToggleModes);
                                                boolean z19 = true;
                                                try {
                                                    z19 = typedArrayObtainStyledAttributes.getBoolean(R.styleable.PlayerControlView_show_rewind_button, true);
                                                    boolean z20 = true;
                                                    try {
                                                        z20 = typedArrayObtainStyledAttributes.getBoolean(R.styleable.PlayerControlView_show_fastforward_button, true);
                                                        boolean z21 = true;
                                                        try {
                                                            z21 = typedArrayObtainStyledAttributes.getBoolean(R.styleable.PlayerControlView_show_previous_button, true);
                                                            boolean z22 = true;
                                                            try {
                                                                z22 = typedArrayObtainStyledAttributes.getBoolean(R.styleable.PlayerControlView_show_next_button, true);
                                                                boolean z23 = false;
                                                                try {
                                                                    z23 = typedArrayObtainStyledAttributes.getBoolean(R.styleable.PlayerControlView_show_shuffle_button, false);
                                                                    z16 = z23;
                                                                    boolean z24 = false;
                                                                    try {
                                                                        z24 = typedArrayObtainStyledAttributes.getBoolean(R.styleable.PlayerControlView_show_subtitle_button, false);
                                                                        z17 = z24;
                                                                        try {
                                                                            try {
                                                                                z2 = typedArrayObtainStyledAttributes.getBoolean(R.styleable.PlayerControlView_show_vr_button, false);
                                                                                try {
                                                                                    playerControlView.timeBarScrubbingEnabled = typedArrayObtainStyledAttributes.getBoolean(R.styleable.PlayerControlView_time_bar_scrubbing_enabled, false);
                                                                                    playerControlView.setTimeBarMinUpdateInterval(typedArrayObtainStyledAttributes.getInt(R.styleable.PlayerControlView_time_bar_min_update_interval, playerControlView.timeBarMinUpdateIntervalMs));
                                                                                    try {
                                                                                        boolean z25 = typedArrayObtainStyledAttributes.getBoolean(R.styleable.PlayerControlView_animation_enabled, true);
                                                                                        typedArrayObtainStyledAttributes.recycle();
                                                                                        z18 = z25;
                                                                                        i2 = resourceId4;
                                                                                        i3 = resourceId9;
                                                                                        z = z19;
                                                                                        i4 = resourceId17;
                                                                                        i15 = resourceId12;
                                                                                        i5 = resourceId5;
                                                                                        i6 = resourceId6;
                                                                                        i7 = resourceId7;
                                                                                        i8 = resourceId8;
                                                                                        i9 = resourceId10;
                                                                                        i10 = resourceId11;
                                                                                        i11 = resourceId13;
                                                                                        i12 = resourceId14;
                                                                                        i13 = resourceId15;
                                                                                        i14 = resourceId16;
                                                                                        i16 = resourceId;
                                                                                        z3 = z20;
                                                                                        z4 = z21;
                                                                                        z5 = z22;
                                                                                    } catch (Throwable th) {
                                                                                        th = th;
                                                                                        typedArrayObtainStyledAttributes.recycle();
                                                                                        throw th;
                                                                                    }
                                                                                } catch (Throwable th2) {
                                                                                    th = th2;
                                                                                }
                                                                            } catch (Throwable th3) {
                                                                                th = th3;
                                                                            }
                                                                        } catch (Throwable th4) {
                                                                            th = th4;
                                                                        }
                                                                    } catch (Throwable th5) {
                                                                        th = th5;
                                                                    }
                                                                } catch (Throwable th6) {
                                                                    th = th6;
                                                                }
                                                            } catch (Throwable th7) {
                                                                th = th7;
                                                            }
                                                        } catch (Throwable th8) {
                                                            th = th8;
                                                        }
                                                    } catch (Throwable th9) {
                                                        th = th9;
                                                    }
                                                } catch (Throwable th10) {
                                                    th = th10;
                                                }
                                            } catch (Throwable th11) {
                                                th = th11;
                                            }
                                        } catch (Throwable th12) {
                                            th = th12;
                                        }
                                    } catch (Throwable th13) {
                                        th = th13;
                                    }
                                } catch (Throwable th14) {
                                    th = th14;
                                }
                            } catch (Throwable th15) {
                                th = th15;
                            }
                        } catch (Throwable th16) {
                            th = th16;
                        }
                    } catch (Throwable th17) {
                        th = th17;
                    }
                } catch (Throwable th18) {
                    th = th18;
                }
            } catch (Throwable th19) {
                th = th19;
            }
        }
        LayoutInflater.from(context).inflate(i16, playerControlView);
        playerControlView.setDescendantFocusability(262144);
        int i39 = resourceId2;
        playerControlView.componentListener = new ComponentListener();
        playerControlView.visibilityListeners = new CopyOnWriteArrayList<>();
        playerControlView.period = new Timeline.Period();
        playerControlView.window = new Timeline.Window();
        playerControlView.formatBuilder = new StringBuilder();
        playerControlView.formatter = new Formatter(playerControlView.formatBuilder, Locale.getDefault());
        playerControlView.adGroupTimesMs = new long[0];
        playerControlView.playedAdGroups = new boolean[0];
        playerControlView.extraAdGroupTimesMs = new long[0];
        playerControlView.extraPlayedAdGroups = new boolean[0];
        playerControlView.updateProgressAction = new Runnable() { // from class: androidx.media3.ui.PlayerControlView$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.updateProgress();
            }
        };
        Method method5 = null;
        try {
            Class<?> cls4 = Class.forName("androidx.media3.exoplayer.ExoPlayer");
            z6 = z5;
            try {
                str2 = "setScrubbingModeEnabled";
                try {
                    Method method6 = cls4.getMethod(str2, Boolean.TYPE);
                    try {
                        str3 = "isScrubbingModeEnabled";
                    } catch (ClassNotFoundException | NoSuchMethodException e) {
                        str3 = "isScrubbingModeEnabled";
                    }
                    try {
                        Method method7 = cls4.getMethod(str3, new Class[0]);
                        cls2 = cls4;
                        str = str3;
                        z7 = z4;
                        method = method6;
                        z8 = z;
                        method2 = method7;
                    } catch (ClassNotFoundException e2) {
                        cls = cls4;
                        str = str3;
                        method5 = method6;
                        boolean z26 = z4;
                        method = method5;
                        cls2 = cls;
                        z7 = z26;
                        z8 = z;
                        method2 = null;
                    } catch (NoSuchMethodException e3) {
                        cls = cls4;
                        str = str3;
                        method5 = method6;
                        boolean z262 = z4;
                        method = method5;
                        cls2 = cls;
                        z7 = z262;
                        z8 = z;
                        method2 = null;
                    }
                } catch (ClassNotFoundException | NoSuchMethodException e4) {
                    cls = cls4;
                    str = "isScrubbingModeEnabled";
                }
            } catch (ClassNotFoundException | NoSuchMethodException e5) {
                cls = cls4;
                str = "isScrubbingModeEnabled";
                str2 = "setScrubbingModeEnabled";
            }
        } catch (ClassNotFoundException | NoSuchMethodException e6) {
            cls = null;
            str = "isScrubbingModeEnabled";
            z6 = z5;
            str2 = "setScrubbingModeEnabled";
        }
        playerControlView.exoplayerClazz = cls2;
        playerControlView.setScrubbingModeEnabledMethod = method;
        playerControlView.isScrubbingModeEnabledMethod = method2;
        Class<?> cls5 = null;
        Method method8 = null;
        try {
            cls5 = Class.forName("androidx.media3.transformer.CompositionPlayer");
            try {
                Class<?>[] clsArr = new Class[1];
                try {
                    clsArr[0] = Boolean.TYPE;
                    try {
                        method8 = cls5.getMethod(str2, clsArr);
                        try {
                            Method method9 = cls5.getMethod(str, new Class[0]);
                            cls3 = cls5;
                            method3 = method8;
                            method4 = method9;
                        } catch (ClassNotFoundException e7) {
                            cls5 = cls5;
                            cls3 = cls5;
                            method3 = method8;
                            method4 = null;
                        } catch (NoSuchMethodException e8) {
                            cls5 = cls5;
                            cls3 = cls5;
                            method3 = method8;
                            method4 = null;
                        }
                    } catch (ClassNotFoundException | NoSuchMethodException e9) {
                    }
                } catch (ClassNotFoundException | NoSuchMethodException e10) {
                }
            } catch (ClassNotFoundException | NoSuchMethodException e11) {
            }
        } catch (ClassNotFoundException | NoSuchMethodException e12) {
        }
        playerControlView.compositionPlayerClazz = cls3;
        playerControlView.compositionPlayerSetScrubbingModeEnabledMethod = method3;
        playerControlView.compositionPlayerIsScrubbingModeEnabledMethod = method4;
        playerControlView.durationView = (TextView) playerControlView.findViewById(R.id.exo_duration);
        playerControlView.positionView = (TextView) playerControlView.findViewById(R.id.exo_position);
        playerControlView.subtitleButton = (ImageView) playerControlView.findViewById(R.id.exo_subtitle);
        if (playerControlView.subtitleButton != null) {
            playerControlView.subtitleButton.setOnClickListener(playerControlView.componentListener);
        }
        playerControlView.fullscreenButton = (ImageView) playerControlView.findViewById(R.id.exo_fullscreen);
        initializeFullscreenButton(playerControlView.fullscreenButton, new View.OnClickListener() { // from class: androidx.media3.ui.PlayerControlView$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.onFullscreenButtonClicked(view2);
            }
        });
        playerControlView.minimalFullscreenButton = (ImageView) playerControlView.findViewById(R.id.exo_minimal_fullscreen);
        initializeFullscreenButton(playerControlView.minimalFullscreenButton, new View.OnClickListener() { // from class: androidx.media3.ui.PlayerControlView$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.onFullscreenButtonClicked(view2);
            }
        });
        playerControlView.settingsButton = playerControlView.findViewById(R.id.exo_settings);
        if (playerControlView.settingsButton != null) {
            playerControlView.settingsButton.setOnClickListener(playerControlView.componentListener);
        }
        playerControlView.playbackSpeedButton = playerControlView.findViewById(R.id.exo_playback_speed);
        if (playerControlView.playbackSpeedButton != null) {
            playerControlView.playbackSpeedButton.setOnClickListener(playerControlView.componentListener);
        }
        playerControlView.audioTrackButton = playerControlView.findViewById(R.id.exo_audio_track);
        if (playerControlView.audioTrackButton != null) {
            playerControlView.audioTrackButton.setOnClickListener(playerControlView.componentListener);
        }
        TimeBar timeBar = (TimeBar) playerControlView.findViewById(R.id.exo_progress);
        View viewFindViewById = playerControlView.findViewById(R.id.exo_progress_placeholder);
        if (timeBar != null) {
            playerControlView.timeBar = timeBar;
            i17 = i11;
            i18 = i12;
            i19 = i39;
            z9 = z6;
            z10 = z16;
            z11 = z17;
            z12 = z18;
            z13 = z2;
            i20 = 1;
            view = viewFindViewById;
            playerControlView2 = playerControlView;
            z14 = z3;
            context2 = context;
            i21 = resourceId3;
        } else if (viewFindViewById != null) {
            i17 = i11;
            i18 = i12;
            i19 = i39;
            z9 = z6;
            z10 = z16;
            z11 = z17;
            z12 = z18;
            z13 = z2;
            playerControlView2 = this;
            z14 = z3;
            i21 = resourceId3;
            i20 = 1;
            context2 = context;
            DefaultTimeBar defaultTimeBar = new DefaultTimeBar(context2, null, 0, attributeSet2, R.style.ExoStyledControls_TimeBar);
            defaultTimeBar.setId(R.id.exo_progress);
            defaultTimeBar.setLayoutParams(viewFindViewById.getLayoutParams());
            ViewGroup viewGroup = (ViewGroup) viewFindViewById.getParent();
            view = viewFindViewById;
            int iIndexOfChild = viewGroup.indexOfChild(view);
            viewGroup.removeView(view);
            viewGroup.addView(defaultTimeBar, iIndexOfChild);
            playerControlView2.timeBar = defaultTimeBar;
        } else {
            i17 = i11;
            i18 = i12;
            i19 = i39;
            z9 = z6;
            z10 = z16;
            z11 = z17;
            z12 = z18;
            z13 = z2;
            i20 = 1;
            view = viewFindViewById;
            playerControlView2 = playerControlView;
            z14 = z3;
            context2 = context;
            i21 = resourceId3;
            playerControlView2.timeBar = null;
        }
        if (playerControlView2.timeBar != null) {
            playerControlView2.timeBar.addListener(playerControlView2.componentListener);
        }
        playerControlView2.handler = Util.createHandlerForCurrentLooper();
        playerControlView2.resources = context2.getResources();
        playerControlView2.playPauseButton = (ImageView) playerControlView2.findViewById(R.id.exo_play_pause);
        if (playerControlView2.playPauseButton != null) {
            playerControlView2.playPauseButton.setOnClickListener(playerControlView2.componentListener);
        }
        playerControlView2.previousButton = (ImageView) playerControlView2.findViewById(R.id.exo_prev);
        if (playerControlView2.previousButton == null) {
            i22 = i6;
        } else {
            i22 = i6;
            playerControlView2.previousButton.setImageDrawable(Util.getDrawable(context2, playerControlView2.resources, i22));
            playerControlView2.previousButton.setOnClickListener(playerControlView2.componentListener);
        }
        playerControlView2.nextButton = (ImageView) playerControlView2.findViewById(R.id.exo_next);
        if (playerControlView2.nextButton != null) {
            playerControlView2.nextButton.setImageDrawable(Util.getDrawable(context2, playerControlView2.resources, i2));
            playerControlView2.nextButton.setOnClickListener(playerControlView2.componentListener);
        }
        Typeface font = ResourcesCompat.getFont(context2, R.font.roboto_medium_numbers);
        ImageView imageView2 = (ImageView) playerControlView2.findViewById(R.id.exo_rew);
        TextView textView = (TextView) playerControlView2.findViewById(R.id.exo_rew_with_amount);
        if (imageView2 != null) {
            i23 = i7;
            imageView2.setImageDrawable(Util.getDrawable(context2, playerControlView2.resources, i23));
            playerControlView2.rewindButton = imageView2;
            imageView = imageView2;
            playerControlView2.rewindButtonTextView = null;
        } else {
            imageView = imageView2;
            i23 = i7;
            if (textView != null) {
                textView.setTypeface(font);
                playerControlView2.rewindButtonTextView = textView;
                playerControlView2.rewindButton = playerControlView2.rewindButtonTextView;
            } else {
                playerControlView2.rewindButtonTextView = null;
                playerControlView2.rewindButton = null;
            }
        }
        if (playerControlView2.rewindButton != null) {
            playerControlView2.rewindButton.setOnClickListener(playerControlView2.componentListener);
        }
        ImageView imageView3 = (ImageView) playerControlView2.findViewById(R.id.exo_ffwd);
        TextView textView2 = (TextView) playerControlView2.findViewById(R.id.exo_ffwd_with_amount);
        if (imageView3 != null) {
            i24 = i5;
            imageView3.setImageDrawable(Util.getDrawable(context2, playerControlView2.resources, i24));
            playerControlView2.fastForwardButton = imageView3;
            playerControlView2.fastForwardButtonTextView = null;
        } else {
            i24 = i5;
            if (textView2 != null) {
                textView2.setTypeface(font);
                playerControlView2.fastForwardButtonTextView = textView2;
                playerControlView2.fastForwardButton = playerControlView2.fastForwardButtonTextView;
            } else {
                playerControlView2.fastForwardButtonTextView = null;
                playerControlView2.fastForwardButton = null;
            }
        }
        if (playerControlView2.fastForwardButton != null) {
            playerControlView2.fastForwardButton.setOnClickListener(playerControlView2.componentListener);
        }
        playerControlView2.repeatToggleButton = (ImageView) playerControlView2.findViewById(R.id.exo_repeat_toggle);
        if (playerControlView2.repeatToggleButton != null) {
            playerControlView2.repeatToggleButton.setOnClickListener(playerControlView2.componentListener);
        }
        playerControlView2.shuffleButton = (ImageView) playerControlView2.findViewById(R.id.exo_shuffle);
        if (playerControlView2.shuffleButton != null) {
            playerControlView2.shuffleButton.setOnClickListener(playerControlView2.componentListener);
        }
        playerControlView2.buttonAlphaEnabled = playerControlView2.resources.getInteger(R.integer.exo_media_button_opacity_percentage_enabled) / 100.0f;
        playerControlView2.buttonAlphaDisabled = playerControlView2.resources.getInteger(R.integer.exo_media_button_opacity_percentage_disabled) / 100.0f;
        playerControlView2.vrButton = (ImageView) playerControlView2.findViewById(R.id.exo_vr);
        if (playerControlView2.vrButton == null) {
            z15 = false;
        } else {
            playerControlView2.vrButton.setImageDrawable(Util.getDrawable(context2, playerControlView2.resources, i4));
            z15 = false;
            playerControlView2.updateButton(false, playerControlView2.vrButton);
        }
        playerControlView2.controlViewLayoutManager = new PlayerControlViewLayoutManager(playerControlView2);
        playerControlView2.controlViewLayoutManager.setAnimationEnabled(z12);
        boolean z27 = z15;
        String[] strArr = new String[2];
        Drawable[] drawableArr = new Drawable[2];
        strArr[z27 ? 1 : 0] = playerControlView2.resources.getString(R.string.exo_controls_playback_speed);
        drawableArr[z27 ? 1 : 0] = Util.getDrawable(context2, playerControlView2.resources, R.drawable.exo_styled_controls_speed);
        strArr[i20] = playerControlView2.resources.getString(R.string.exo_track_selection_title_audio);
        drawableArr[i20] = Util.getDrawable(context2, playerControlView2.resources, R.drawable.exo_styled_controls_audiotrack);
        playerControlView2.settingsAdapter = playerControlView2.new SettingsAdapter(strArr, drawableArr);
        playerControlView2.settingsWindowMargin = playerControlView2.resources.getDimensionPixelSize(R.dimen.exo_settings_offset);
        playerControlView2.settingsView = (RecyclerView) LayoutInflater.from(context2).inflate(R.layout.exo_styled_settings_list, (ViewGroup) null);
        playerControlView2.settingsView.setAdapter(playerControlView2.settingsAdapter);
        playerControlView2.settingsView.setLayoutManager(new LinearLayoutManager(playerControlView2.getContext()));
        boolean z28 = i20;
        playerControlView2.settingsWindow = new PopupWindow(playerControlView2.settingsView, -2, -2, z28);
        playerControlView2.settingsWindow.setOnDismissListener(playerControlView2.componentListener);
        playerControlView2.needToHideBars = z28;
        playerControlView2.trackNameProvider = new DefaultTrackNameProvider(playerControlView2.getResources());
        playerControlView2.subtitleOnButtonDrawable = Util.getDrawable(context2, playerControlView2.resources, i13);
        playerControlView2.subtitleOffButtonDrawable = Util.getDrawable(context2, playerControlView2.resources, i14);
        playerControlView2.subtitleOnContentDescription = playerControlView2.resources.getString(R.string.exo_controls_cc_enabled_description);
        playerControlView2.subtitleOffContentDescription = playerControlView2.resources.getString(R.string.exo_controls_cc_disabled_description);
        playerControlView2.textTrackSelectionAdapter = new TextTrackSelectionAdapter();
        playerControlView2.audioTrackSelectionAdapter = new AudioTrackSelectionAdapter();
        playerControlView2.playbackSpeedAdapter = playerControlView2.new PlaybackSpeedAdapter(playerControlView2.resources.getStringArray(R.array.exo_controls_playback_speeds), PLAYBACK_SPEEDS);
        playerControlView2.playButtonDrawable = Util.getDrawable(context2, playerControlView2.resources, i19);
        playerControlView2.pauseButtonDrawable = Util.getDrawable(context2, playerControlView2.resources, i21);
        playerControlView2.fullscreenExitDrawable = Util.getDrawable(context2, playerControlView2.resources, i8);
        playerControlView2.fullscreenEnterDrawable = Util.getDrawable(context2, playerControlView2.resources, i3);
        playerControlView2.repeatOffButtonDrawable = Util.getDrawable(context2, playerControlView2.resources, i9);
        playerControlView2.repeatOneButtonDrawable = Util.getDrawable(context2, playerControlView2.resources, i10);
        playerControlView2.repeatAllButtonDrawable = Util.getDrawable(context2, playerControlView2.resources, i15);
        playerControlView2.shuffleOnButtonDrawable = Util.getDrawable(context2, playerControlView2.resources, i17);
        playerControlView2.shuffleOffButtonDrawable = Util.getDrawable(context2, playerControlView2.resources, i18);
        playerControlView2.fullscreenExitContentDescription = playerControlView2.resources.getString(R.string.exo_controls_fullscreen_exit_description);
        playerControlView2.fullscreenEnterContentDescription = playerControlView2.resources.getString(R.string.exo_controls_fullscreen_enter_description);
        playerControlView2.repeatOffButtonContentDescription = playerControlView2.resources.getString(R.string.exo_controls_repeat_off_description);
        playerControlView2.repeatOneButtonContentDescription = playerControlView2.resources.getString(R.string.exo_controls_repeat_one_description);
        playerControlView2.repeatAllButtonContentDescription = playerControlView2.resources.getString(R.string.exo_controls_repeat_all_description);
        playerControlView2.shuffleOnContentDescription = playerControlView2.resources.getString(R.string.exo_controls_shuffle_on_description);
        playerControlView2.shuffleOffContentDescription = playerControlView2.resources.getString(R.string.exo_controls_shuffle_off_description);
        playerControlView2.controlViewLayoutManager.setShowButton((ViewGroup) playerControlView2.findViewById(R.id.exo_bottom_bar), true);
        playerControlView2.controlViewLayoutManager.setShowButton(playerControlView2.fastForwardButton, z14);
        playerControlView2.controlViewLayoutManager.setShowButton(playerControlView2.rewindButton, z8);
        playerControlView2.controlViewLayoutManager.setShowButton(playerControlView2.previousButton, z7);
        playerControlView2.controlViewLayoutManager.setShowButton(playerControlView2.nextButton, z9);
        playerControlView2.controlViewLayoutManager.setShowButton(playerControlView2.shuffleButton, z10);
        playerControlView2.controlViewLayoutManager.setShowButton(playerControlView2.subtitleButton, z11);
        playerControlView2.controlViewLayoutManager.setShowButton(playerControlView2.vrButton, z13);
        playerControlView2.controlViewLayoutManager.setShowButton(playerControlView2.repeatToggleButton, playerControlView2.repeatToggleModes != 0 ? true : z27 ? 1 : 0);
        playerControlView2.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: androidx.media3.ui.PlayerControlView$$ExternalSyntheticLambda3
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view2, int i40, int i41, int i42, int i43, int i44, int i45, int i46, int i47) {
                this.f$0.onLayoutChange(view2, i40, i41, i42, i43, i44, i45, i46, i47);
            }
        });
    }

    @Override // android.view.View
    public boolean hasOverlappingRendering() {
        return false;
    }

    public Player getPlayer() {
        return this.player;
    }

    public void setPlayer(Player player) {
        boolean z = true;
        Preconditions.checkState(Looper.myLooper() == Looper.getMainLooper());
        if (player != null && player.getApplicationLooper() != Looper.getMainLooper()) {
            z = false;
        }
        Preconditions.checkArgument(z);
        if (this.player == player) {
            return;
        }
        if (this.player != null) {
            this.player.removeListener(this.componentListener);
        }
        this.player = player;
        if (player != null) {
            player.addListener(this.componentListener);
        }
        updateAll();
    }

    @Deprecated
    public void setShowMultiWindowTimeBar(boolean showMultiWindowTimeBar) {
        this.showMultiWindowTimeBar = showMultiWindowTimeBar;
        updateTimeline();
    }

    public void setShowPlayButtonIfPlaybackIsSuppressed(boolean showPlayButtonIfSuppressed) {
        this.showPlayButtonIfSuppressed = showPlayButtonIfSuppressed;
        updatePlayPauseButton();
    }

    public void setExtraAdGroupMarkers(long[] extraAdGroupTimesMs, boolean[] extraPlayedAdGroups) {
        if (extraAdGroupTimesMs == null) {
            this.extraAdGroupTimesMs = new long[0];
            this.extraPlayedAdGroups = new boolean[0];
        } else {
            Preconditions.checkNotNull(extraPlayedAdGroups);
            Preconditions.checkArgument(extraAdGroupTimesMs.length == extraPlayedAdGroups.length);
            this.extraAdGroupTimesMs = extraAdGroupTimesMs;
            this.extraPlayedAdGroups = extraPlayedAdGroups;
        }
        updateTimeline();
    }

    @Deprecated
    public void addVisibilityListener(VisibilityListener listener) {
        Preconditions.checkNotNull(listener);
        this.visibilityListeners.add(listener);
    }

    @Deprecated
    public void removeVisibilityListener(VisibilityListener listener) {
        this.visibilityListeners.remove(listener);
    }

    public void setProgressUpdateListener(ProgressUpdateListener listener) {
        this.progressUpdateListener = listener;
    }

    public void setShowRewindButton(boolean showRewindButton) {
        this.controlViewLayoutManager.setShowButton(this.rewindButton, showRewindButton);
        updateNavigation();
    }

    public void setShowFastForwardButton(boolean showFastForwardButton) {
        this.controlViewLayoutManager.setShowButton(this.fastForwardButton, showFastForwardButton);
        updateNavigation();
    }

    public void setShowPreviousButton(boolean showPreviousButton) {
        this.controlViewLayoutManager.setShowButton(this.previousButton, showPreviousButton);
        updateNavigation();
    }

    public void setShowNextButton(boolean showNextButton) {
        this.controlViewLayoutManager.setShowButton(this.nextButton, showNextButton);
        updateNavigation();
    }

    public int getShowTimeoutMs() {
        return this.showTimeoutMs;
    }

    public void setShowTimeoutMs(int showTimeoutMs) {
        this.showTimeoutMs = showTimeoutMs;
        if (isFullyVisible()) {
            this.controlViewLayoutManager.resetHideCallbacks();
        }
    }

    public int getRepeatToggleModes() {
        return this.repeatToggleModes;
    }

    public void setRepeatToggleModes(int repeatToggleModes) {
        this.repeatToggleModes = repeatToggleModes;
        if (this.player != null && this.player.isCommandAvailable(15)) {
            int currentMode = this.player.getRepeatMode();
            if (repeatToggleModes == 0 && currentMode != 0) {
                this.player.setRepeatMode(0);
            } else if (repeatToggleModes == 1 && currentMode == 2) {
                this.player.setRepeatMode(1);
            } else if (repeatToggleModes == 2 && currentMode == 1) {
                this.player.setRepeatMode(2);
            }
        }
        this.controlViewLayoutManager.setShowButton(this.repeatToggleButton, repeatToggleModes != 0);
        updateRepeatModeButton();
    }

    public boolean getShowShuffleButton() {
        return this.controlViewLayoutManager.getShowButton(this.shuffleButton);
    }

    public void setShowShuffleButton(boolean showShuffleButton) {
        this.controlViewLayoutManager.setShowButton(this.shuffleButton, showShuffleButton);
        updateShuffleButton();
    }

    public boolean getShowSubtitleButton() {
        return this.controlViewLayoutManager.getShowButton(this.subtitleButton);
    }

    public void setShowSubtitleButton(boolean showSubtitleButton) {
        this.controlViewLayoutManager.setShowButton(this.subtitleButton, showSubtitleButton);
    }

    public void setMediaRouteButtonViewProvider(ViewProvider mediaRouteButtonViewProvider) {
        final View mediaRouteButtonPlaceholder = findViewById(R.id.exo_media_route_button_placeholder);
        if (mediaRouteButtonPlaceholder == null) {
            throw new IllegalStateException("The media route button placeholder is missing.");
        }
        if (mediaRouteButtonViewProvider == null) {
            mediaRouteButtonPlaceholder.setVisibility(8);
            return;
        }
        final ViewGroup parent = (ViewGroup) mediaRouteButtonPlaceholder.getParent();
        if (parent == null) {
            throw new IllegalStateException("The media route button placeholder has no parent view.");
        }
        ListenableFuture<View> view = mediaRouteButtonViewProvider.getView(parent);
        FutureCallback<View> futureCallback = new FutureCallback<View>() { // from class: androidx.media3.ui.PlayerControlView.1
            @Override // com.google.common.util.concurrent.FutureCallback
            public void onSuccess(View mediaRouteButtonView) {
                ViewGroup.LayoutParams layoutParams = mediaRouteButtonPlaceholder.getLayoutParams();
                if (layoutParams == null) {
                    throw new IllegalStateException("The media route button placeholder missing layout params.");
                }
                mediaRouteButtonView.setId(R.id.exo_media_route_button_placeholder);
                mediaRouteButtonView.setLayoutParams(layoutParams);
                int mediaRouteButtonIndex = parent.indexOfChild(mediaRouteButtonPlaceholder);
                parent.removeView(mediaRouteButtonPlaceholder);
                parent.addView(mediaRouteButtonView, mediaRouteButtonIndex);
                mediaRouteButtonView.setVisibility(0);
                PlayerControlView.this.controlViewLayoutManager.setShowButton(mediaRouteButtonView, true);
            }

            @Override // com.google.common.util.concurrent.FutureCallback
            public void onFailure(Throwable e) {
                mediaRouteButtonPlaceholder.setVisibility(8);
            }
        };
        final Handler handler = this.handler;
        Objects.requireNonNull(handler);
        Futures.addCallback(view, futureCallback, new Executor() { // from class: androidx.media3.ui.PlayerControlView$$ExternalSyntheticLambda0
            @Override // java.util.concurrent.Executor
            public final void execute(Runnable runnable) {
                handler.post(runnable);
            }
        });
    }

    public boolean getShowVrButton() {
        return this.controlViewLayoutManager.getShowButton(this.vrButton);
    }

    public void setShowVrButton(boolean showVrButton) {
        this.controlViewLayoutManager.setShowButton(this.vrButton, showVrButton);
    }

    public void setVrButtonListener(View.OnClickListener onClickListener) {
        if (this.vrButton != null) {
            this.vrButton.setOnClickListener(onClickListener);
            updateButton(onClickListener != null, this.vrButton);
        }
    }

    public void setAnimationEnabled(boolean animationEnabled) {
        this.controlViewLayoutManager.setAnimationEnabled(animationEnabled);
    }

    public boolean isAnimationEnabled() {
        return this.controlViewLayoutManager.isAnimationEnabled();
    }

    public void setTimeBarScrubbingEnabled(boolean timeBarScrubbingEnabled) {
        this.timeBarScrubbingEnabled = timeBarScrubbingEnabled;
    }

    public void setTimeBarMinUpdateInterval(int minUpdateIntervalMs) {
        this.timeBarMinUpdateIntervalMs = Util.constrainValue(minUpdateIntervalMs, 16, 1000);
    }

    @Deprecated
    public void setOnFullScreenModeChangedListener(OnFullScreenModeChangedListener listener) {
        this.onFullScreenModeChangedListener = listener;
        updateFullscreenButtonVisibility(this.fullscreenButton, listener != null);
        updateFullscreenButtonVisibility(this.minimalFullscreenButton, listener != null);
    }

    public void show() {
        this.controlViewLayoutManager.show();
    }

    public void hide() {
        this.controlViewLayoutManager.hide();
    }

    public void hideImmediately() {
        this.controlViewLayoutManager.hideImmediately();
    }

    public boolean isFullyVisible() {
        return this.controlViewLayoutManager.isFullyVisible();
    }

    public boolean isVisible() {
        return getVisibility() == 0;
    }

    void notifyOnVisibilityChange() {
        for (VisibilityListener visibilityListener : this.visibilityListeners) {
            visibilityListener.onVisibilityChange(getVisibility());
        }
    }

    void updateAll() {
        updatePlayPauseButton();
        updateNavigation();
        updateRepeatModeButton();
        updateShuffleButton();
        updateTrackLists();
        updatePlaybackSpeedList();
        updateTimeline();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePlayPauseButton() {
        int stringRes;
        if (isVisible() && this.isAttachedToWindow && this.playPauseButton != null) {
            boolean shouldShowPlayButton = Util.shouldShowPlayButton(this.player, this.showPlayButtonIfSuppressed);
            Drawable drawable = shouldShowPlayButton ? this.playButtonDrawable : this.pauseButtonDrawable;
            if (shouldShowPlayButton) {
                stringRes = R.string.exo_controls_play_description;
            } else {
                stringRes = R.string.exo_controls_pause_description;
            }
            this.playPauseButton.setImageDrawable(drawable);
            this.playPauseButton.setContentDescription(this.resources.getString(stringRes));
            boolean enablePlayPause = Util.shouldEnablePlayPauseButton(this.player);
            updateButton(enablePlayPause, this.playPauseButton);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateNavigation() {
        boolean zIsCommandAvailable;
        if (!isVisible() || !this.isAttachedToWindow) {
            return;
        }
        Player player = this.player;
        boolean enableSeeking = false;
        boolean enablePrevious = false;
        boolean enableRewind = false;
        boolean enableFastForward = false;
        boolean enableNext = false;
        if (player != null) {
            if (this.showMultiWindowTimeBar && canShowMultiWindowTimeBar(player, this.window)) {
                zIsCommandAvailable = player.isCommandAvailable(10);
            } else {
                zIsCommandAvailable = player.isCommandAvailable(5);
            }
            enableSeeking = zIsCommandAvailable;
            enablePrevious = player.isCommandAvailable(7);
            enableRewind = player.isCommandAvailable(11);
            enableFastForward = player.isCommandAvailable(12);
            enableNext = player.isCommandAvailable(9);
        }
        if (enableRewind) {
            updateRewindButton();
        }
        if (enableFastForward) {
            updateFastForwardButton();
        }
        updateButton(enablePrevious, this.previousButton);
        updateButton(enableRewind, this.rewindButton);
        updateButton(enableFastForward, this.fastForwardButton);
        updateButton(enableNext, this.nextButton);
        if (this.timeBar != null) {
            this.timeBar.setEnabled(enableSeeking);
        }
    }

    private void updateRewindButton() {
        long rewindMs = this.player != null ? this.player.getSeekBackIncrement() : 5000L;
        int rewindSec = (int) (rewindMs / 1000);
        if (this.rewindButtonTextView != null) {
            this.rewindButtonTextView.setText(String.valueOf(rewindSec));
        }
        if (this.rewindButton != null) {
            this.rewindButton.setContentDescription(this.resources.getQuantityString(R.plurals.exo_controls_rewind_by_amount_description, rewindSec, Integer.valueOf(rewindSec)));
        }
    }

    private void updateFastForwardButton() {
        long fastForwardMs = this.player != null ? this.player.getSeekForwardIncrement() : 15000L;
        int fastForwardSec = (int) (fastForwardMs / 1000);
        if (this.fastForwardButtonTextView != null) {
            this.fastForwardButtonTextView.setText(String.valueOf(fastForwardSec));
        }
        if (this.fastForwardButton != null) {
            this.fastForwardButton.setContentDescription(this.resources.getQuantityString(R.plurals.exo_controls_fastforward_by_amount_description, fastForwardSec, Integer.valueOf(fastForwardSec)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateRepeatModeButton() {
        if (!isVisible() || !this.isAttachedToWindow || this.repeatToggleButton == null) {
            return;
        }
        if (this.repeatToggleModes == 0) {
            updateButton(false, this.repeatToggleButton);
        }
        Player player = this.player;
        if (player == null || !player.isCommandAvailable(15)) {
            updateButton(false, this.repeatToggleButton);
            this.repeatToggleButton.setImageDrawable(this.repeatOffButtonDrawable);
            this.repeatToggleButton.setContentDescription(this.repeatOffButtonContentDescription);
            return;
        }
        updateButton(true, this.repeatToggleButton);
        switch (player.getRepeatMode()) {
            case 0:
                this.repeatToggleButton.setImageDrawable(this.repeatOffButtonDrawable);
                this.repeatToggleButton.setContentDescription(this.repeatOffButtonContentDescription);
                break;
            case 1:
                this.repeatToggleButton.setImageDrawable(this.repeatOneButtonDrawable);
                this.repeatToggleButton.setContentDescription(this.repeatOneButtonContentDescription);
                break;
            case 2:
                this.repeatToggleButton.setImageDrawable(this.repeatAllButtonDrawable);
                this.repeatToggleButton.setContentDescription(this.repeatAllButtonContentDescription);
                break;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateShuffleButton() {
        String str;
        if (!isVisible() || !this.isAttachedToWindow || this.shuffleButton == null) {
            return;
        }
        Player player = this.player;
        if (!this.controlViewLayoutManager.getShowButton(this.shuffleButton)) {
            updateButton(false, this.shuffleButton);
            return;
        }
        if (player == null || !player.isCommandAvailable(14)) {
            updateButton(false, this.shuffleButton);
            this.shuffleButton.setImageDrawable(this.shuffleOffButtonDrawable);
            this.shuffleButton.setContentDescription(this.shuffleOffContentDescription);
            return;
        }
        updateButton(true, this.shuffleButton);
        this.shuffleButton.setImageDrawable(player.getShuffleModeEnabled() ? this.shuffleOnButtonDrawable : this.shuffleOffButtonDrawable);
        ImageView imageView = this.shuffleButton;
        if (player.getShuffleModeEnabled()) {
            str = this.shuffleOnContentDescription;
        } else {
            str = this.shuffleOffContentDescription;
        }
        imageView.setContentDescription(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateTrackLists() {
        initTrackSelectionAdapter();
        updateButton(this.textTrackSelectionAdapter.getItemCount() > 0, this.subtitleButton);
        updateSettingsButton();
    }

    private void initTrackSelectionAdapter() {
        this.textTrackSelectionAdapter.clear();
        this.audioTrackSelectionAdapter.clear();
        if (this.player == null || !this.player.isCommandAvailable(30) || !this.player.isCommandAvailable(29)) {
            return;
        }
        Tracks tracks = this.player.getCurrentTracks();
        this.audioTrackSelectionAdapter.init(gatherSupportedTrackInfosOfType(tracks, 1));
        boolean showButton = this.controlViewLayoutManager.getShowButton(this.subtitleButton);
        TextTrackSelectionAdapter textTrackSelectionAdapter = this.textTrackSelectionAdapter;
        if (showButton) {
            textTrackSelectionAdapter.init(gatherSupportedTrackInfosOfType(tracks, 3));
        } else {
            textTrackSelectionAdapter.init(ImmutableList.of());
        }
    }

    private ImmutableList<TrackInformation> gatherSupportedTrackInfosOfType(Tracks tracks, int trackType) {
        ImmutableList.Builder<TrackInformation> trackInfos = new ImmutableList.Builder<>();
        List<Tracks.Group> trackGroups = tracks.getGroups();
        for (int trackGroupIndex = 0; trackGroupIndex < trackGroups.size(); trackGroupIndex++) {
            Tracks.Group trackGroup = trackGroups.get(trackGroupIndex);
            if (trackGroup.getType() == trackType) {
                for (int trackIndex = 0; trackIndex < trackGroup.length; trackIndex++) {
                    if (trackGroup.isTrackSupported(trackIndex)) {
                        Format trackFormat = trackGroup.getTrackFormat(trackIndex);
                        if ((trackFormat.selectionFlags & 2) == 0) {
                            String trackName = this.trackNameProvider.getTrackName(trackFormat);
                            trackInfos.add(new TrackInformation(tracks, trackGroupIndex, trackIndex, trackName));
                        }
                    }
                }
            }
        }
        return trackInfos.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateTimeline() {
        Timeline timeline;
        int i;
        long j;
        int j2;
        int adGroupCount;
        int adGroupCount2;
        Player player = this.player;
        if (player != null) {
            int i2 = 1;
            this.multiWindowTimeBar = this.showMultiWindowTimeBar && canShowMultiWindowTimeBar(player, this.window);
            long j3 = 0;
            this.currentWindowOffset = 0L;
            long durationUs = 0;
            int adGroupCount3 = 0;
            if (player.isCommandAvailable(17)) {
                timeline = player.getCurrentTimeline();
            } else {
                timeline = Timeline.EMPTY;
            }
            boolean zIsEmpty = timeline.isEmpty();
            long j4 = C.TIME_UNSET;
            if (!zIsEmpty) {
                int currentWindowIndex = player.getCurrentMediaItemIndex();
                int firstWindowIndex = this.multiWindowTimeBar ? 0 : currentWindowIndex;
                int lastWindowIndex = this.multiWindowTimeBar ? timeline.getWindowCount() - 1 : currentWindowIndex;
                int i3 = firstWindowIndex;
                while (true) {
                    if (i3 > lastWindowIndex) {
                        break;
                    }
                    if (i3 != currentWindowIndex) {
                        i = i2;
                        j = j3;
                    } else {
                        i = i2;
                        j = j3;
                        this.currentWindowOffset = Util.usToMs(durationUs);
                    }
                    timeline.getWindow(i3, this.window);
                    if (this.window.durationUs == j4) {
                        Preconditions.checkState(!this.multiWindowTimeBar);
                        break;
                    }
                    int j5 = this.window.firstPeriodIndex;
                    while (j5 <= this.window.lastPeriodIndex) {
                        timeline.getPeriod(j5, this.period);
                        int removedGroups = this.period.getRemovedAdGroupCount();
                        int totalGroups = this.period.getAdGroupCount();
                        long j6 = j4;
                        int adGroupIndex = removedGroups;
                        while (adGroupIndex < totalGroups) {
                            long adGroupTimeInPeriodUs = this.period.getAdGroupTimeUs(adGroupIndex);
                            if (adGroupTimeInPeriodUs == Long.MIN_VALUE) {
                                j2 = j5;
                                if (this.period.durationUs == j6) {
                                    adGroupCount = adGroupCount3;
                                    adGroupCount3 = adGroupCount;
                                    adGroupIndex++;
                                    j5 = j2;
                                } else {
                                    adGroupTimeInPeriodUs = this.period.durationUs;
                                }
                            } else {
                                j2 = j5;
                            }
                            long adGroupTimeInWindowUs = adGroupTimeInPeriodUs + this.period.getPositionInWindowUs();
                            if (adGroupTimeInWindowUs < j) {
                                adGroupCount = adGroupCount3;
                                adGroupCount3 = adGroupCount;
                                adGroupIndex++;
                                j5 = j2;
                            } else {
                                if (adGroupCount3 != this.adGroupTimesMs.length) {
                                    adGroupCount2 = adGroupCount3;
                                } else {
                                    int newLength = this.adGroupTimesMs.length == 0 ? i : this.adGroupTimesMs.length * 2;
                                    adGroupCount2 = adGroupCount3;
                                    this.adGroupTimesMs = Arrays.copyOf(this.adGroupTimesMs, newLength);
                                    this.playedAdGroups = Arrays.copyOf(this.playedAdGroups, newLength);
                                }
                                this.adGroupTimesMs[adGroupCount2] = Util.usToMs(durationUs + adGroupTimeInWindowUs);
                                this.playedAdGroups[adGroupCount2] = this.period.hasPlayedAdGroup(adGroupIndex);
                                adGroupCount3 = adGroupCount2 + 1;
                                adGroupIndex++;
                                j5 = j2;
                            }
                        }
                        j5++;
                        j4 = j6;
                    }
                    durationUs += this.window.durationUs;
                    i3++;
                    i2 = i;
                    j3 = j;
                }
            } else if (player.isCommandAvailable(16)) {
                long playerDurationMs = player.getContentDuration();
                if (playerDurationMs != C.TIME_UNSET) {
                    durationUs = Util.msToUs(playerDurationMs);
                }
            }
            long durationMs = Util.usToMs(durationUs);
            if (this.durationView != null) {
                this.durationView.setText(Util.getStringForTime(this.formatBuilder, this.formatter, durationMs));
            }
            if (this.timeBar != null) {
                this.timeBar.setDuration(durationMs);
                int extraAdGroupCount = this.extraAdGroupTimesMs.length;
                int totalAdGroupCount = adGroupCount3 + extraAdGroupCount;
                if (totalAdGroupCount > this.adGroupTimesMs.length) {
                    this.adGroupTimesMs = Arrays.copyOf(this.adGroupTimesMs, totalAdGroupCount);
                    this.playedAdGroups = Arrays.copyOf(this.playedAdGroups, totalAdGroupCount);
                }
                System.arraycopy(this.extraAdGroupTimesMs, 0, this.adGroupTimesMs, adGroupCount3, extraAdGroupCount);
                System.arraycopy(this.extraPlayedAdGroups, 0, this.playedAdGroups, adGroupCount3, extraAdGroupCount);
                this.timeBar.setAdGroupTimesMs(this.adGroupTimesMs, this.playedAdGroups, totalAdGroupCount);
            }
            updateProgress();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateProgress() {
        long mediaTimeDelayMs;
        if (!isVisible() || !this.isAttachedToWindow) {
            return;
        }
        Player player = this.player;
        long position = 0;
        long bufferedPosition = 0;
        if (player != null && player.isCommandAvailable(16)) {
            position = this.currentWindowOffset + player.getContentPosition();
            bufferedPosition = this.currentWindowOffset + player.getContentBufferedPosition();
        }
        if (this.positionView != null && !this.scrubbing) {
            this.positionView.setText(Util.getStringForTime(this.formatBuilder, this.formatter, position));
        }
        if (this.timeBar != null) {
            this.timeBar.setPosition(position);
            this.timeBar.setBufferedPosition(isScrubbingModeEnabled(player) ? position : bufferedPosition);
        }
        if (this.progressUpdateListener != null) {
            this.progressUpdateListener.onProgressUpdate(position, bufferedPosition);
        }
        removeCallbacks(this.updateProgressAction);
        int playbackState = player == null ? 1 : player.getPlaybackState();
        if (player != null && player.isPlaying()) {
            if (this.timeBar != null) {
                mediaTimeDelayMs = this.timeBar.getPreferredUpdateDelay();
            } else {
                mediaTimeDelayMs = 1000;
            }
            long mediaTimeUntilNextFullSecondMs = 1000 - (position % 1000);
            long mediaTimeDelayMs2 = Math.min(mediaTimeDelayMs, mediaTimeUntilNextFullSecondMs);
            float playbackSpeed = player.getPlaybackParameters().speed;
            long delayMs = playbackSpeed > 0.0f ? (long) (mediaTimeDelayMs2 / playbackSpeed) : 1000L;
            postDelayed(this.updateProgressAction, Util.constrainValue(delayMs, this.timeBarMinUpdateIntervalMs, 1000L));
            return;
        }
        if (playbackState != 4 && playbackState != 1) {
            postDelayed(this.updateProgressAction, 1000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePlaybackSpeedList() {
        if (this.player == null) {
            return;
        }
        this.playbackSpeedAdapter.updateSelectedIndex(this.player.getPlaybackParameters().speed);
        this.settingsAdapter.setSubTextAtPosition(0, this.playbackSpeedAdapter.getSelectedText());
        updateSettingsButton();
    }

    private void updateSettingsButton() {
        updateButton(this.settingsAdapter.hasSettingsToShow(), this.settingsButton);
    }

    private void updateSettingsWindowSize() {
        this.settingsView.measure(0, 0);
        int maxWidth = getWidth() - (this.settingsWindowMargin * 2);
        int itemWidth = this.settingsView.getMeasuredWidth();
        int width = Math.min(itemWidth, maxWidth);
        this.settingsWindow.setWidth(width);
        int maxHeight = getHeight() - (this.settingsWindowMargin * 2);
        int totalHeight = this.settingsView.getMeasuredHeight();
        int height = Math.min(maxHeight, totalHeight);
        this.settingsWindow.setHeight(height);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void displaySettingsWindow(RecyclerView.Adapter<?> adapter, View anchorView) {
        this.settingsView.setAdapter(adapter);
        updateSettingsWindowSize();
        this.needToHideBars = false;
        this.settingsWindow.dismiss();
        this.needToHideBars = true;
        int xoff = (getWidth() - this.settingsWindow.getWidth()) - this.settingsWindowMargin;
        int yoff = (-this.settingsWindow.getHeight()) - this.settingsWindowMargin;
        this.settingsWindow.showAsDropDown(anchorView, xoff, yoff);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPlaybackSpeed(float speed) {
        if (this.player == null || !this.player.isCommandAvailable(13)) {
            return;
        }
        this.player.setPlaybackParameters(this.player.getPlaybackParameters().withSpeed(speed));
    }

    void requestPlayPauseFocus() {
        if (this.playPauseButton != null) {
            this.playPauseButton.requestFocus();
        }
    }

    private void updateButton(boolean enabled, View view) {
        if (view == null) {
            return;
        }
        view.setEnabled(enabled);
        view.setAlpha(enabled ? this.buttonAlphaEnabled : this.buttonAlphaDisabled);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void seekToTimeBarPosition(Player player, long positionMs) {
        if (this.multiWindowTimeBar) {
            if (player.isCommandAvailable(17) && player.isCommandAvailable(10)) {
                Timeline timeline = player.getCurrentTimeline();
                int windowCount = timeline.getWindowCount();
                int windowIndex = 0;
                while (true) {
                    long windowDurationMs = timeline.getWindow(windowIndex, this.window).getDurationMs();
                    if (positionMs < windowDurationMs) {
                        break;
                    }
                    if (windowIndex == windowCount - 1) {
                        positionMs = windowDurationMs;
                        break;
                    } else {
                        positionMs -= windowDurationMs;
                        windowIndex++;
                    }
                }
                player.seekTo(windowIndex, positionMs);
            }
        } else if (player.isCommandAvailable(5)) {
            player.seekTo(positionMs);
        }
        updateProgress();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onFullscreenButtonClicked(View v) {
        updateIsFullscreen(!this.isFullscreen);
    }

    public void updateIsFullscreen(boolean isFullscreen) {
        if (this.isFullscreen == isFullscreen) {
            return;
        }
        this.isFullscreen = isFullscreen;
        updateFullscreenButtonForState(this.fullscreenButton, isFullscreen);
        updateFullscreenButtonForState(this.minimalFullscreenButton, isFullscreen);
        if (this.onFullScreenModeChangedListener != null) {
            this.onFullScreenModeChangedListener.onFullScreenModeChanged(isFullscreen);
        }
    }

    private void updateFullscreenButtonForState(ImageView fullscreenButton, boolean isFullscreen) {
        if (fullscreenButton == null) {
            return;
        }
        if (isFullscreen) {
            fullscreenButton.setImageDrawable(this.fullscreenExitDrawable);
            fullscreenButton.setContentDescription(this.fullscreenExitContentDescription);
        } else {
            fullscreenButton.setImageDrawable(this.fullscreenEnterDrawable);
            fullscreenButton.setContentDescription(this.fullscreenEnterContentDescription);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onSettingViewClicked(int position) {
        if (position == 0) {
            displaySettingsWindow(this.playbackSpeedAdapter, (View) Preconditions.checkNotNull(this.settingsButton));
        } else if (position == 1) {
            displaySettingsWindow(this.audioTrackSelectionAdapter, (View) Preconditions.checkNotNull(this.settingsButton));
        } else {
            this.settingsWindow.dismiss();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.controlViewLayoutManager.onAttachedToWindow();
        this.isAttachedToWindow = true;
        if (isFullyVisible()) {
            this.controlViewLayoutManager.resetHideCallbacks();
        }
        updateAll();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.controlViewLayoutManager.onDetachedFromWindow();
        this.isAttachedToWindow = false;
        removeCallbacks(this.updateProgressAction);
        this.controlViewLayoutManager.removeHideCallbacks();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent event) {
        return dispatchMediaKeyEvent(event) || super.dispatchKeyEvent(event);
    }

    public boolean dispatchMediaKeyEvent(KeyEvent event) {
        int keyCode = event.getKeyCode();
        Player player = this.player;
        if (player == null || !isHandledMediaKey(keyCode)) {
            return false;
        }
        if (event.getAction() == 0) {
            if (keyCode == 90) {
                if (player.getPlaybackState() != 4 && player.isCommandAvailable(12)) {
                    player.seekForward();
                    return true;
                }
                return true;
            }
            if (keyCode == 89 && player.isCommandAvailable(11)) {
                player.seekBack();
                return true;
            }
            if (event.getRepeatCount() == 0) {
                switch (keyCode) {
                    case 79:
                    case 85:
                        Util.handlePlayPauseButtonAction(player, this.showPlayButtonIfSuppressed);
                        return true;
                    case 87:
                        if (player.isCommandAvailable(9)) {
                            player.seekToNext();
                            return true;
                        }
                        return true;
                    case 88:
                        if (player.isCommandAvailable(7)) {
                            player.seekToPrevious();
                            return true;
                        }
                        return true;
                    case WebSocketProtocol.PAYLOAD_SHORT /* 126 */:
                        Util.handlePlayButtonAction(player);
                        return true;
                    case 127:
                        Util.handlePauseButtonAction(player);
                        return true;
                    default:
                        return true;
                }
            }
            return true;
        }
        return true;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean changed, int left, int top, int right, int bottom) {
        super.onLayout(changed, left, top, right, bottom);
        this.controlViewLayoutManager.onLayout(changed, left, top, right, bottom);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onLayoutChange(View v, int left, int top, int right, int bottom, int oldLeft, int oldTop, int oldRight, int oldBottom) {
        int width = right - left;
        int height = bottom - top;
        int oldWidth = oldRight - oldLeft;
        int oldHeight = oldBottom - oldTop;
        if ((width != oldWidth || height != oldHeight) && this.settingsWindow.isShowing()) {
            updateSettingsWindowSize();
            int xOffset = (getWidth() - this.settingsWindow.getWidth()) - this.settingsWindowMargin;
            int yOffset = (-this.settingsWindow.getHeight()) - this.settingsWindowMargin;
            this.settingsWindow.update(v, xOffset, yOffset, -1, -1);
        }
    }

    private static boolean isHandledMediaKey(int keyCode) {
        return keyCode == 90 || keyCode == 89 || keyCode == 85 || keyCode == 79 || keyCode == 126 || keyCode == 127 || keyCode == 87 || keyCode == 88;
    }

    private static boolean canShowMultiWindowTimeBar(Player player, Timeline.Window window) {
        Timeline timeline;
        int windowCount;
        if (!player.isCommandAvailable(17) || (windowCount = (timeline = player.getCurrentTimeline()).getWindowCount()) <= 1 || windowCount > 100) {
            return false;
        }
        for (int i = 0; i < windowCount; i++) {
            if (timeline.getWindow(i, window).durationUs == C.TIME_UNSET) {
                return false;
            }
        }
        return true;
    }

    private static void initializeFullscreenButton(View fullscreenButton, View.OnClickListener listener) {
        if (fullscreenButton == null) {
            return;
        }
        fullscreenButton.setVisibility(8);
        fullscreenButton.setOnClickListener(listener);
    }

    private static void updateFullscreenButtonVisibility(View fullscreenButton, boolean visible) {
        if (fullscreenButton == null) {
            return;
        }
        if (visible) {
            fullscreenButton.setVisibility(0);
        } else {
            fullscreenButton.setVisibility(8);
        }
    }

    private static int getRepeatToggleModes(TypedArray a, int defaultValue) {
        return a.getInt(R.styleable.PlayerControlView_repeat_toggle_modes, defaultValue);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @EnsuresNonNullIf(expression = {"#1"}, result = true)
    public boolean isScrubbingModeEnabled(Player player) {
        try {
            if (!isExoPlayer(player) || !((Boolean) Preconditions.checkNotNull(((Method) Preconditions.checkNotNull(this.isScrubbingModeEnabledMethod)).invoke(player, new Object[0]))).booleanValue()) {
                if (!isCompositionPlayer(player)) {
                    return false;
                }
                if (!((Boolean) Preconditions.checkNotNull(((Method) Preconditions.checkNotNull(this.compositionPlayerIsScrubbingModeEnabledMethod)).invoke(player, new Object[0]))).booleanValue()) {
                    return false;
                }
            }
            return true;
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw new RuntimeException(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @EnsuresNonNullIf(expression = {"#1"}, result = true)
    public boolean isExoPlayer(Player player) {
        return (player == null || this.exoplayerClazz == null || !this.exoplayerClazz.isAssignableFrom(player.getClass())) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @EnsuresNonNullIf(expression = {"#1"}, result = true)
    public boolean isCompositionPlayer(Player player) {
        return (player == null || this.compositionPlayerClazz == null || !this.compositionPlayerClazz.isAssignableFrom(player.getClass())) ? false : true;
    }

    private final class ComponentListener implements Player.Listener, TimeBar.OnScrubListener, View.OnClickListener, PopupWindow.OnDismissListener {
        private ComponentListener() {
        }

        @Override // androidx.media3.common.Player.Listener
        public void onEvents(Player player, Player.Events events) {
            if (events.containsAny(4, 5, 13)) {
                PlayerControlView.this.updatePlayPauseButton();
            }
            if (events.containsAny(4, 5, 7, 13)) {
                PlayerControlView.this.updateProgress();
            }
            if (events.containsAny(8, 13)) {
                PlayerControlView.this.updateRepeatModeButton();
            }
            if (events.containsAny(9, 13)) {
                PlayerControlView.this.updateShuffleButton();
            }
            if (events.containsAny(8, 9, 11, 0, 16, 17, 13)) {
                PlayerControlView.this.updateNavigation();
            }
            if (events.containsAny(11, 0, 13)) {
                PlayerControlView.this.updateTimeline();
            }
            if (events.containsAny(12, 13)) {
                PlayerControlView.this.updatePlaybackSpeedList();
            }
            if (events.containsAny(2, 13)) {
                PlayerControlView.this.updateTrackLists();
            }
        }

        @Override // androidx.media3.ui.TimeBar.OnScrubListener
        public void onScrubStart(TimeBar timeBar, long position) {
            PlayerControlView.this.scrubbing = true;
            if (PlayerControlView.this.positionView != null) {
                PlayerControlView.this.positionView.setText(Util.getStringForTime(PlayerControlView.this.formatBuilder, PlayerControlView.this.formatter, position));
            }
            PlayerControlView.this.controlViewLayoutManager.removeHideCallbacks();
            if (PlayerControlView.this.player != null && PlayerControlView.this.timeBarScrubbingEnabled) {
                boolean zIsExoPlayer = PlayerControlView.this.isExoPlayer(PlayerControlView.this.player);
                PlayerControlView playerControlView = PlayerControlView.this;
                if (!zIsExoPlayer) {
                    if (playerControlView.isCompositionPlayer(PlayerControlView.this.player)) {
                        try {
                            ((Method) Preconditions.checkNotNull(PlayerControlView.this.compositionPlayerSetScrubbingModeEnabledMethod)).invoke(PlayerControlView.this.player, true);
                        } catch (IllegalAccessException | InvocationTargetException e) {
                            throw new RuntimeException(e);
                        }
                    } else {
                        Log.w(PlayerControlView.TAG, "Time bar scrubbing is enabled, but player is not an ExoPlayer or CompositionPlayer instance, so ignoring (because we can't enable scrubbing mode). player.class=" + ((Player) Preconditions.checkNotNull(PlayerControlView.this.player)).getClass());
                    }
                } else {
                    try {
                        ((Method) Preconditions.checkNotNull(playerControlView.setScrubbingModeEnabledMethod)).invoke(PlayerControlView.this.player, true);
                    } catch (IllegalAccessException | InvocationTargetException e2) {
                        throw new RuntimeException(e2);
                    }
                }
            }
            if (PlayerControlView.this.isScrubbingModeEnabled(PlayerControlView.this.player)) {
                PlayerControlView.this.seekToTimeBarPosition(PlayerControlView.this.player, position);
            }
        }

        @Override // androidx.media3.ui.TimeBar.OnScrubListener
        public void onScrubMove(TimeBar timeBar, long position) {
            if (PlayerControlView.this.positionView != null) {
                PlayerControlView.this.positionView.setText(Util.getStringForTime(PlayerControlView.this.formatBuilder, PlayerControlView.this.formatter, position));
            }
            if (PlayerControlView.this.isScrubbingModeEnabled(PlayerControlView.this.player)) {
                PlayerControlView.this.seekToTimeBarPosition(PlayerControlView.this.player, position);
            }
        }

        @Override // androidx.media3.ui.TimeBar.OnScrubListener
        public void onScrubStop(TimeBar timeBar, long position, boolean canceled) {
            PlayerControlView.this.scrubbing = false;
            if (PlayerControlView.this.player != null) {
                if (!canceled) {
                    PlayerControlView.this.seekToTimeBarPosition(PlayerControlView.this.player, position);
                }
                boolean zIsExoPlayer = PlayerControlView.this.isExoPlayer(PlayerControlView.this.player);
                PlayerControlView playerControlView = PlayerControlView.this;
                if (!zIsExoPlayer) {
                    if (playerControlView.isCompositionPlayer(PlayerControlView.this.player)) {
                        try {
                            ((Method) Preconditions.checkNotNull(PlayerControlView.this.compositionPlayerSetScrubbingModeEnabledMethod)).invoke(PlayerControlView.this.player, false);
                        } catch (IllegalAccessException | InvocationTargetException e) {
                            throw new RuntimeException(e);
                        }
                    }
                } else {
                    try {
                        ((Method) Preconditions.checkNotNull(playerControlView.setScrubbingModeEnabledMethod)).invoke(PlayerControlView.this.player, false);
                    } catch (IllegalAccessException | InvocationTargetException e2) {
                        throw new RuntimeException(e2);
                    }
                }
            }
            PlayerControlView.this.controlViewLayoutManager.resetHideCallbacks();
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            if (PlayerControlView.this.needToHideBars) {
                PlayerControlView.this.controlViewLayoutManager.resetHideCallbacks();
            }
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Player player = PlayerControlView.this.player;
            if (player != null) {
                PlayerControlView.this.controlViewLayoutManager.resetHideCallbacks();
                if (PlayerControlView.this.nextButton != view) {
                    if (PlayerControlView.this.previousButton != view) {
                        if (PlayerControlView.this.fastForwardButton != view) {
                            if (PlayerControlView.this.rewindButton != view) {
                                ImageView imageView = PlayerControlView.this.playPauseButton;
                                PlayerControlView playerControlView = PlayerControlView.this;
                                if (imageView == view) {
                                    Util.handlePlayPauseButtonAction(player, playerControlView.showPlayButtonIfSuppressed);
                                    return;
                                }
                                if (playerControlView.repeatToggleButton != view) {
                                    if (PlayerControlView.this.shuffleButton != view) {
                                        View view2 = PlayerControlView.this.settingsButton;
                                        PlayerControlView playerControlView2 = PlayerControlView.this;
                                        if (view2 == view) {
                                            playerControlView2.controlViewLayoutManager.removeHideCallbacks();
                                            PlayerControlView.this.displaySettingsWindow(PlayerControlView.this.settingsAdapter, PlayerControlView.this.settingsButton);
                                            return;
                                        }
                                        View view3 = playerControlView2.playbackSpeedButton;
                                        PlayerControlView playerControlView3 = PlayerControlView.this;
                                        if (view3 == view) {
                                            playerControlView3.controlViewLayoutManager.removeHideCallbacks();
                                            PlayerControlView.this.displaySettingsWindow(PlayerControlView.this.playbackSpeedAdapter, PlayerControlView.this.playbackSpeedButton);
                                            return;
                                        }
                                        View view4 = playerControlView3.audioTrackButton;
                                        PlayerControlView playerControlView4 = PlayerControlView.this;
                                        if (view4 == view) {
                                            playerControlView4.controlViewLayoutManager.removeHideCallbacks();
                                            PlayerControlView.this.displaySettingsWindow(PlayerControlView.this.audioTrackSelectionAdapter, PlayerControlView.this.audioTrackButton);
                                            return;
                                        } else {
                                            if (playerControlView4.subtitleButton == view) {
                                                PlayerControlView.this.controlViewLayoutManager.removeHideCallbacks();
                                                PlayerControlView.this.displaySettingsWindow(PlayerControlView.this.textTrackSelectionAdapter, PlayerControlView.this.subtitleButton);
                                                return;
                                            }
                                            return;
                                        }
                                    }
                                    if (player.isCommandAvailable(14)) {
                                        player.setShuffleModeEnabled(!player.getShuffleModeEnabled());
                                        return;
                                    }
                                    return;
                                }
                                if (player.isCommandAvailable(15)) {
                                    player.setRepeatMode(RepeatModeUtil.getNextRepeatMode(player.getRepeatMode(), PlayerControlView.this.repeatToggleModes));
                                    return;
                                }
                                return;
                            }
                            if (player.isCommandAvailable(11)) {
                                player.seekBack();
                                return;
                            }
                            return;
                        }
                        if (player.getPlaybackState() != 4 && player.isCommandAvailable(12)) {
                            player.seekForward();
                            return;
                        }
                        return;
                    }
                    if (player.isCommandAvailable(7)) {
                        player.seekToPrevious();
                        return;
                    }
                    return;
                }
                if (player.isCommandAvailable(9)) {
                    player.seekToNext();
                }
            }
        }
    }

    private class SettingsAdapter extends RecyclerView.Adapter<SettingViewHolder> {
        private final Drawable[] iconIds;
        private final String[] mainTexts;
        private final String[] subTexts;

        public SettingsAdapter(String[] mainTexts, Drawable[] iconIds) {
            this.mainTexts = mainTexts;
            this.subTexts = new String[mainTexts.length];
            this.iconIds = iconIds;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public SettingViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
            View v = LayoutInflater.from(PlayerControlView.this.getContext()).inflate(R.layout.exo_styled_settings_list_item, parent, false);
            return PlayerControlView.this.new SettingViewHolder(v);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(SettingViewHolder holder, int position) {
            if (shouldShowSetting(position)) {
                holder.itemView.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
            } else {
                holder.itemView.setLayoutParams(new RecyclerView.LayoutParams(0, 0));
            }
            holder.mainTextView.setText(this.mainTexts[position]);
            if (this.subTexts[position] == null) {
                holder.subTextView.setVisibility(8);
            } else {
                holder.subTextView.setText(this.subTexts[position]);
            }
            if (this.iconIds[position] == null) {
                holder.iconView.setVisibility(8);
            } else {
                holder.iconView.setImageDrawable(this.iconIds[position]);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public long getItemId(int position) {
            return position;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.mainTexts.length;
        }

        public void setSubTextAtPosition(int position, String subText) {
            this.subTexts[position] = subText;
        }

        public boolean hasSettingsToShow() {
            if (shouldShowSetting(1) || shouldShowSetting(0)) {
                return true;
            }
            return false;
        }

        private boolean shouldShowSetting(int position) {
            if (PlayerControlView.this.player == null) {
                return false;
            }
            switch (position) {
                case 0:
                    return PlayerControlView.this.player.isCommandAvailable(13);
                case 1:
                    return PlayerControlView.this.player.isCommandAvailable(30) && PlayerControlView.this.player.isCommandAvailable(29);
                default:
                    return true;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class SettingViewHolder extends RecyclerView.ViewHolder {
        private final ImageView iconView;
        private final TextView mainTextView;
        private final TextView subTextView;

        public SettingViewHolder(View itemView) {
            super(itemView);
            if (Build.VERSION.SDK_INT < 26) {
                itemView.setFocusable(true);
            }
            this.mainTextView = (TextView) itemView.findViewById(R.id.exo_main_text);
            this.subTextView = (TextView) itemView.findViewById(R.id.exo_sub_text);
            this.iconView = (ImageView) itemView.findViewById(R.id.exo_icon);
            itemView.setOnClickListener(new View.OnClickListener() { // from class: androidx.media3.ui.PlayerControlView$SettingViewHolder$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m8039x7eeeb754(view);
                }
            });
        }

        /* JADX INFO: renamed from: lambda$new$0$androidx-media3-ui-PlayerControlView$SettingViewHolder, reason: not valid java name */
        /* synthetic */ void m8039x7eeeb754(View v) {
            PlayerControlView.this.onSettingViewClicked(getBindingAdapterPosition());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class PlaybackSpeedAdapter extends RecyclerView.Adapter<SubSettingViewHolder> {
        private final String[] playbackSpeedTexts;
        private final float[] playbackSpeeds;
        private int selectedIndex;

        public PlaybackSpeedAdapter(String[] playbackSpeedTexts, float[] playbackSpeeds) {
            this.playbackSpeedTexts = playbackSpeedTexts;
            this.playbackSpeeds = playbackSpeeds;
        }

        public void updateSelectedIndex(float playbackSpeed) {
            int closestMatchIndex = 0;
            float closestMatchDifference = Float.MAX_VALUE;
            for (int i = 0; i < this.playbackSpeeds.length; i++) {
                float difference = Math.abs(playbackSpeed - this.playbackSpeeds[i]);
                if (difference < closestMatchDifference) {
                    closestMatchIndex = i;
                    closestMatchDifference = difference;
                }
            }
            this.selectedIndex = closestMatchIndex;
        }

        public String getSelectedText() {
            return this.playbackSpeedTexts[this.selectedIndex];
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public SubSettingViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
            View v = LayoutInflater.from(PlayerControlView.this.getContext()).inflate(R.layout.exo_styled_sub_settings_list_item, parent, false);
            return new SubSettingViewHolder(v);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(SubSettingViewHolder holder, final int position) {
            if (position < this.playbackSpeedTexts.length) {
                holder.textView.setText(this.playbackSpeedTexts[position]);
            }
            if (position == this.selectedIndex) {
                holder.itemView.setSelected(true);
                holder.checkView.setVisibility(0);
            } else {
                holder.itemView.setSelected(false);
                holder.checkView.setVisibility(4);
            }
            holder.itemView.setOnClickListener(new View.OnClickListener() { // from class: androidx.media3.ui.PlayerControlView$PlaybackSpeedAdapter$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m8038x9de2ddb7(position, view);
                }
            });
        }

        /* JADX INFO: renamed from: lambda$onBindViewHolder$0$androidx-media3-ui-PlayerControlView$PlaybackSpeedAdapter, reason: not valid java name */
        /* synthetic */ void m8038x9de2ddb7(int position, View v) {
            if (position != this.selectedIndex) {
                PlayerControlView.this.setPlaybackSpeed(this.playbackSpeeds[position]);
            }
            PlayerControlView.this.settingsWindow.dismiss();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.playbackSpeedTexts.length;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class TrackInformation {
        public final Tracks.Group trackGroup;
        public final int trackIndex;
        public final String trackName;

        public TrackInformation(Tracks tracks, int trackGroupIndex, int trackIndex, String trackName) {
            this.trackGroup = tracks.getGroups().get(trackGroupIndex);
            this.trackIndex = trackIndex;
            this.trackName = trackName;
        }

        public boolean isSelected() {
            return this.trackGroup.isTrackSelected(this.trackIndex);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class TextTrackSelectionAdapter extends TrackSelectionAdapter {
        private TextTrackSelectionAdapter() {
            super();
        }

        @Override // androidx.media3.ui.PlayerControlView.TrackSelectionAdapter
        public void init(List<TrackInformation> trackInformations) {
            boolean subtitleIsOn = false;
            int i = 0;
            while (true) {
                if (i >= trackInformations.size()) {
                    break;
                }
                if (!trackInformations.get(i).isSelected()) {
                    i++;
                } else {
                    subtitleIsOn = true;
                    break;
                }
            }
            if (PlayerControlView.this.subtitleButton != null) {
                ImageView imageView = PlayerControlView.this.subtitleButton;
                PlayerControlView playerControlView = PlayerControlView.this;
                imageView.setImageDrawable(subtitleIsOn ? playerControlView.subtitleOnButtonDrawable : playerControlView.subtitleOffButtonDrawable);
                ImageView imageView2 = PlayerControlView.this.subtitleButton;
                PlayerControlView playerControlView2 = PlayerControlView.this;
                imageView2.setContentDescription(subtitleIsOn ? playerControlView2.subtitleOnContentDescription : playerControlView2.subtitleOffContentDescription);
            }
            this.tracks = trackInformations;
        }

        @Override // androidx.media3.ui.PlayerControlView.TrackSelectionAdapter
        public void onBindViewHolderAtZeroPosition(SubSettingViewHolder holder) {
            holder.textView.setText(R.string.exo_track_selection_none);
            boolean isTrackSelectionOff = true;
            int i = 0;
            while (true) {
                if (i >= this.tracks.size()) {
                    break;
                }
                if (!this.tracks.get(i).isSelected()) {
                    i++;
                } else {
                    isTrackSelectionOff = false;
                    break;
                }
            }
            holder.checkView.setVisibility(isTrackSelectionOff ? 0 : 4);
            holder.itemView.setOnClickListener(new View.OnClickListener() { // from class: androidx.media3.ui.PlayerControlView$TextTrackSelectionAdapter$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m8040x7bd5d809(view);
                }
            });
        }

        /* JADX INFO: renamed from: lambda$onBindViewHolderAtZeroPosition$0$androidx-media3-ui-PlayerControlView$TextTrackSelectionAdapter, reason: not valid java name */
        /* synthetic */ void m8040x7bd5d809(View v) {
            if (PlayerControlView.this.player != null && PlayerControlView.this.player.isCommandAvailable(29)) {
                TrackSelectionParameters trackSelectionParameters = PlayerControlView.this.player.getTrackSelectionParameters();
                PlayerControlView.this.player.setTrackSelectionParameters(trackSelectionParameters.buildUpon().clearOverridesOfType(3).setIgnoredTextSelectionFlags(-3).setPreferredTextLanguage(null).setPreferredTextRoleFlags(0).build());
                PlayerControlView.this.settingsWindow.dismiss();
            }
        }

        @Override // androidx.media3.ui.PlayerControlView.TrackSelectionAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(SubSettingViewHolder holder, int position) {
            super.onBindViewHolder(holder, position);
            if (position > 0) {
                TrackInformation track = this.tracks.get(position - 1);
                holder.checkView.setVisibility(track.isSelected() ? 0 : 4);
            }
        }

        @Override // androidx.media3.ui.PlayerControlView.TrackSelectionAdapter
        public void onTrackSelection(String subtext) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class AudioTrackSelectionAdapter extends TrackSelectionAdapter {
        private AudioTrackSelectionAdapter() {
            super();
        }

        @Override // androidx.media3.ui.PlayerControlView.TrackSelectionAdapter
        public void onBindViewHolderAtZeroPosition(SubSettingViewHolder holder) {
            holder.textView.setText(R.string.exo_track_selection_auto);
            TrackSelectionParameters parameters = ((Player) Preconditions.checkNotNull(PlayerControlView.this.player)).getTrackSelectionParameters();
            boolean hasSelectionOverride = hasSelectionOverride(parameters);
            holder.checkView.setVisibility(hasSelectionOverride ? 4 : 0);
            holder.itemView.setOnClickListener(new View.OnClickListener() { // from class: androidx.media3.ui.PlayerControlView$AudioTrackSelectionAdapter$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m8037xa84b12b0(view);
                }
            });
        }

        /* JADX INFO: renamed from: lambda$onBindViewHolderAtZeroPosition$0$androidx-media3-ui-PlayerControlView$AudioTrackSelectionAdapter, reason: not valid java name */
        /* synthetic */ void m8037xa84b12b0(View v) {
            if (PlayerControlView.this.player != null && PlayerControlView.this.player.isCommandAvailable(29)) {
                TrackSelectionParameters trackSelectionParameters = PlayerControlView.this.player.getTrackSelectionParameters();
                ((Player) Util.castNonNull(PlayerControlView.this.player)).setTrackSelectionParameters(trackSelectionParameters.buildUpon().clearOverridesOfType(1).setTrackTypeDisabled(1, false).build());
                PlayerControlView.this.settingsAdapter.setSubTextAtPosition(1, PlayerControlView.this.getResources().getString(R.string.exo_track_selection_auto));
                PlayerControlView.this.settingsWindow.dismiss();
            }
        }

        private boolean hasSelectionOverride(TrackSelectionParameters trackSelectionParameters) {
            for (int i = 0; i < this.tracks.size(); i++) {
                TrackGroup trackGroup = this.tracks.get(i).trackGroup.getMediaTrackGroup();
                if (trackSelectionParameters.overrides.containsKey(trackGroup)) {
                    return true;
                }
            }
            return false;
        }

        @Override // androidx.media3.ui.PlayerControlView.TrackSelectionAdapter
        public void onTrackSelection(String subtext) {
            PlayerControlView.this.settingsAdapter.setSubTextAtPosition(1, subtext);
        }

        @Override // androidx.media3.ui.PlayerControlView.TrackSelectionAdapter
        public void init(List<TrackInformation> trackInformations) {
            this.tracks = trackInformations;
            TrackSelectionParameters params = ((Player) Preconditions.checkNotNull(PlayerControlView.this.player)).getTrackSelectionParameters();
            if (trackInformations.isEmpty()) {
                PlayerControlView.this.settingsAdapter.setSubTextAtPosition(1, PlayerControlView.this.getResources().getString(R.string.exo_track_selection_none));
                return;
            }
            if (!hasSelectionOverride(params)) {
                PlayerControlView.this.settingsAdapter.setSubTextAtPosition(1, PlayerControlView.this.getResources().getString(R.string.exo_track_selection_auto));
                return;
            }
            for (int i = 0; i < trackInformations.size(); i++) {
                TrackInformation track = trackInformations.get(i);
                if (track.isSelected()) {
                    PlayerControlView.this.settingsAdapter.setSubTextAtPosition(1, track.trackName);
                    return;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    abstract class TrackSelectionAdapter extends RecyclerView.Adapter<SubSettingViewHolder> {
        protected List<TrackInformation> tracks = new ArrayList();

        public abstract void init(List<TrackInformation> list);

        protected abstract void onBindViewHolderAtZeroPosition(SubSettingViewHolder subSettingViewHolder);

        protected abstract void onTrackSelection(String str);

        protected TrackSelectionAdapter() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public SubSettingViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
            View v = LayoutInflater.from(PlayerControlView.this.getContext()).inflate(R.layout.exo_styled_sub_settings_list_item, parent, false);
            return new SubSettingViewHolder(v);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(SubSettingViewHolder holder, int position) {
            final Player player = PlayerControlView.this.player;
            if (player == null) {
                return;
            }
            if (position == 0) {
                onBindViewHolderAtZeroPosition(holder);
                return;
            }
            final TrackInformation track = this.tracks.get(position - 1);
            final TrackGroup mediaTrackGroup = track.trackGroup.getMediaTrackGroup();
            TrackSelectionParameters params = player.getTrackSelectionParameters();
            boolean explicitlySelected = params.overrides.get(mediaTrackGroup) != null && track.isSelected();
            holder.textView.setText(track.trackName);
            holder.checkView.setVisibility(explicitlySelected ? 0 : 4);
            holder.itemView.setOnClickListener(new View.OnClickListener() { // from class: androidx.media3.ui.PlayerControlView$TrackSelectionAdapter$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m8041x45c3fb1a(player, mediaTrackGroup, track, view);
                }
            });
        }

        /* JADX INFO: renamed from: lambda$onBindViewHolder$0$androidx-media3-ui-PlayerControlView$TrackSelectionAdapter, reason: not valid java name */
        /* synthetic */ void m8041x45c3fb1a(Player player, TrackGroup mediaTrackGroup, TrackInformation track, View v) {
            if (!player.isCommandAvailable(29)) {
                return;
            }
            TrackSelectionParameters trackSelectionParameters = player.getTrackSelectionParameters();
            player.setTrackSelectionParameters(trackSelectionParameters.buildUpon().setOverrideForType(new TrackSelectionOverride(mediaTrackGroup, ImmutableList.of(Integer.valueOf(track.trackIndex)))).setTrackTypeDisabled(track.trackGroup.getType(), false).build());
            onTrackSelection(track.trackName);
            PlayerControlView.this.settingsWindow.dismiss();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            if (this.tracks.isEmpty()) {
                return 0;
            }
            return this.tracks.size() + 1;
        }

        protected void clear() {
            this.tracks = Collections.emptyList();
        }
    }

    private static class SubSettingViewHolder extends RecyclerView.ViewHolder {
        public final View checkView;
        public final TextView textView;

        public SubSettingViewHolder(View itemView) {
            super(itemView);
            if (Build.VERSION.SDK_INT < 26) {
                itemView.setFocusable(true);
            }
            this.textView = (TextView) itemView.findViewById(R.id.exo_text);
            this.checkView = itemView.findViewById(R.id.exo_check);
        }
    }
}
