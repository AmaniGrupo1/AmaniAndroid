package androidx.media3.exoplayer;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import androidx.media3.common.util.Log;
import androidx.media3.exoplayer.audio.AudioRendererEventListener;
import androidx.media3.exoplayer.audio.AudioSink;
import androidx.media3.exoplayer.audio.DefaultAudioSink;
import androidx.media3.exoplayer.audio.MediaCodecAudioRenderer;
import androidx.media3.exoplayer.image.BitmapFactoryImageDecoder;
import androidx.media3.exoplayer.image.ImageDecoder;
import androidx.media3.exoplayer.image.ImageRenderer;
import androidx.media3.exoplayer.mediacodec.DefaultMediaCodecAdapterFactory;
import androidx.media3.exoplayer.mediacodec.MediaCodecAdapter;
import androidx.media3.exoplayer.mediacodec.MediaCodecSelector;
import androidx.media3.exoplayer.metadata.MetadataOutput;
import androidx.media3.exoplayer.metadata.MetadataRenderer;
import androidx.media3.exoplayer.text.TextOutput;
import androidx.media3.exoplayer.text.TextRenderer;
import androidx.media3.exoplayer.video.MediaCodecVideoRenderer;
import androidx.media3.exoplayer.video.VideoRendererEventListener;
import androidx.media3.exoplayer.video.spherical.CameraMotionRenderer;
import com.google.common.base.Preconditions;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.lang.reflect.Constructor;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes21.dex */
public class DefaultRenderersFactory implements RenderersFactory {
    public static final long DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS = 5000;
    public static final int EXTENSION_RENDERER_MODE_OFF = 0;
    public static final int EXTENSION_RENDERER_MODE_ON = 1;
    public static final int EXTENSION_RENDERER_MODE_PREFER = 2;
    public static final int MAX_DROPPED_VIDEO_FRAME_COUNT_TO_NOTIFY = 50;
    private static final int METADATA_RENDERER_COUNT = 4;
    private static final String TAG = "DefaultRenderersFactory";
    private final DefaultMediaCodecAdapterFactory codecAdapterFactory;
    private final Context context;
    private boolean enableAudioOutputPlaybackParameters;
    private boolean enableDecoderFallback;
    private boolean enableFloatOutput;
    private boolean enableMediaCodecBufferDecodeOnlyFlag;
    private boolean enableMediaCodecVideoRendererDurationToProgressUs;
    private boolean enableMediaCodecVideoRendererPrewarming;
    private int extensionRendererMode = 0;
    private long allowedVideoJoiningTimeMs = 5000;
    private MediaCodecSelector mediaCodecSelector = MediaCodecSelector.DEFAULT;
    private boolean parseAv1SampleDependencies = true;
    private long lateThresholdToDropDecoderInputUs = 15000;

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface ExtensionRendererMode {
    }

    public DefaultRenderersFactory(Context context) {
        this.context = context;
        this.codecAdapterFactory = new DefaultMediaCodecAdapterFactory(context);
    }

    public final DefaultRenderersFactory setExtensionRendererMode(int extensionRendererMode) {
        this.extensionRendererMode = extensionRendererMode;
        return this;
    }

    public final DefaultRenderersFactory forceEnableMediaCodecAsynchronousQueueing() {
        this.codecAdapterFactory.forceEnableAsynchronous();
        return this;
    }

    public final DefaultRenderersFactory forceDisableMediaCodecAsynchronousQueueing() {
        this.codecAdapterFactory.forceDisableAsynchronous();
        return this;
    }

    public final DefaultRenderersFactory experimentalSetMediaCodecAsyncCryptoFlagEnabled(boolean enableAsyncCryptoFlag) {
        this.codecAdapterFactory.experimentalSetAsyncCryptoFlagEnabled(enableAsyncCryptoFlag);
        return this;
    }

    public final DefaultRenderersFactory setEnableDecoderFallback(boolean enableDecoderFallback) {
        this.enableDecoderFallback = enableDecoderFallback;
        return this;
    }

    public final DefaultRenderersFactory setMediaCodecSelector(MediaCodecSelector mediaCodecSelector) {
        this.mediaCodecSelector = mediaCodecSelector;
        return this;
    }

    public final DefaultRenderersFactory setEnableAudioFloatOutput(boolean enableFloatOutput) {
        this.enableFloatOutput = enableFloatOutput;
        return this;
    }

    @Deprecated
    public final DefaultRenderersFactory setEnableAudioTrackPlaybackParams(boolean enableAudioTrackPlaybackParams) {
        return setEnableAudioOutputPlaybackParameters(enableAudioTrackPlaybackParams);
    }

    public final DefaultRenderersFactory setEnableAudioOutputPlaybackParameters(boolean enableAudioOutputPlaybackParameters) {
        this.enableAudioOutputPlaybackParameters = enableAudioOutputPlaybackParameters;
        return this;
    }

    public final DefaultRenderersFactory experimentalSetEnableMediaCodecVideoRendererPrewarming(boolean enableMediaCodecVideoRendererPrewarming) {
        this.enableMediaCodecVideoRendererPrewarming = enableMediaCodecVideoRendererPrewarming;
        return this;
    }

    public final DefaultRenderersFactory experimentalSetParseAv1SampleDependencies(boolean parseAv1SampleDependencies) {
        this.parseAv1SampleDependencies = parseAv1SampleDependencies;
        return this;
    }

    public DefaultRenderersFactory experimentalSetEnableMediaCodecBufferDecodeOnlyFlag(boolean enableMediaCodecBufferDecodeOnlyFlag) {
        this.enableMediaCodecBufferDecodeOnlyFlag = enableMediaCodecBufferDecodeOnlyFlag;
        return this;
    }

    public DefaultRenderersFactory setEnableMediaCodecVideoRendererDurationToProgressUs(boolean enableMediaCodecVideoRendererDurationToProgressUs) {
        this.enableMediaCodecVideoRendererDurationToProgressUs = enableMediaCodecVideoRendererDurationToProgressUs;
        return this;
    }

    public final DefaultRenderersFactory setAllowedVideoJoiningTimeMs(long allowedVideoJoiningTimeMs) {
        this.allowedVideoJoiningTimeMs = allowedVideoJoiningTimeMs;
        return this;
    }

    public final DefaultRenderersFactory experimentalSetLateThresholdToDropDecoderInputUs(long lateThresholdToDropDecoderInputUs) {
        this.lateThresholdToDropDecoderInputUs = lateThresholdToDropDecoderInputUs;
        return this;
    }

    @Override // androidx.media3.exoplayer.RenderersFactory
    public Renderer[] createRenderers(Handler eventHandler, VideoRendererEventListener videoRendererEventListener, AudioRendererEventListener audioRendererEventListener, TextOutput textRendererOutput, MetadataOutput metadataRendererOutput) {
        ArrayList<Renderer> renderersList = new ArrayList<>();
        buildVideoRenderers(this.context, this.extensionRendererMode, this.mediaCodecSelector, this.enableDecoderFallback, eventHandler, videoRendererEventListener, this.allowedVideoJoiningTimeMs, renderersList);
        ArrayList<Renderer> renderersList2 = renderersList;
        AudioSink audioSink = buildAudioSink(this.context, this.enableFloatOutput, this.enableAudioOutputPlaybackParameters);
        if (audioSink != null) {
            buildAudioRenderers(this.context, this.extensionRendererMode, this.mediaCodecSelector, this.enableDecoderFallback, audioSink, eventHandler, audioRendererEventListener, renderersList2);
            renderersList2 = renderersList2;
        }
        buildTextRenderers(this.context, textRendererOutput, eventHandler.getLooper(), this.extensionRendererMode, renderersList2);
        buildMetadataRenderers(this.context, metadataRendererOutput, eventHandler.getLooper(), this.extensionRendererMode, renderersList2);
        buildCameraMotionRenderers(this.context, this.extensionRendererMode, renderersList2);
        buildImageRenderers(this.context, renderersList2);
        buildMiscellaneousRenderers(this.context, eventHandler, this.extensionRendererMode, renderersList2);
        return (Renderer[]) renderersList2.toArray(new Renderer[0]);
    }

    protected void buildVideoRenderers(Context context, int extensionRendererMode, MediaCodecSelector mediaCodecSelector, boolean enableDecoderFallback, Handler eventHandler, VideoRendererEventListener eventListener, long allowedVideoJoiningTimeMs, ArrayList<Renderer> out) {
        MediaCodecVideoRenderer.Builder videoRendererBuilder;
        int extensionRendererIndex;
        Renderer renderer;
        int extensionRendererIndex2;
        MediaCodecVideoRenderer.Builder videoRendererBuilder2 = new MediaCodecVideoRenderer.Builder(context).setCodecAdapterFactory(getCodecAdapterFactory()).setMediaCodecSelector(mediaCodecSelector).setAllowedJoiningTimeMs(allowedVideoJoiningTimeMs).setEnableDecoderFallback(enableDecoderFallback).setEventHandler(eventHandler).setEventListener(eventListener).setMaxDroppedFramesToNotify(50).experimentalSetParseAv1SampleDependencies(this.parseAv1SampleDependencies).experimentalSetLateThresholdToDropDecoderInputUs(this.lateThresholdToDropDecoderInputUs).setEnableDurationToProgressUs(this.enableMediaCodecVideoRendererDurationToProgressUs);
        if (Build.VERSION.SDK_INT < 34) {
            videoRendererBuilder = videoRendererBuilder2;
        } else {
            videoRendererBuilder = videoRendererBuilder2.experimentalSetEnableMediaCodecBufferDecodeOnlyFlag(this.enableMediaCodecBufferDecodeOnlyFlag);
        }
        out.add(videoRendererBuilder.build());
        if (extensionRendererMode == 0) {
            return;
        }
        int extensionRendererIndex3 = out.size();
        if (extensionRendererMode != 2) {
            extensionRendererIndex = extensionRendererIndex3;
        } else {
            extensionRendererIndex = extensionRendererIndex3 - 1;
        }
        try {
            Class<?> clazz = Class.forName("androidx.media3.decoder.vp9.LibvpxVideoRenderer");
            Constructor<?> constructor = clazz.getConstructor(Long.TYPE, Handler.class, VideoRendererEventListener.class, Integer.TYPE);
            renderer = (Renderer) constructor.newInstance(Long.valueOf(allowedVideoJoiningTimeMs), eventHandler, eventListener, 50);
            extensionRendererIndex2 = extensionRendererIndex + 1;
        } catch (ClassNotFoundException e) {
        } catch (Exception e2) {
            e = e2;
        }
        try {
            out.add(extensionRendererIndex, renderer);
            Log.i(TAG, "Loaded LibvpxVideoRenderer.");
            extensionRendererIndex = extensionRendererIndex2;
        } catch (ClassNotFoundException e3) {
            extensionRendererIndex = extensionRendererIndex2;
        } catch (Exception e4) {
            e = e4;
            throw new IllegalStateException("Error instantiating VP9 extension", e);
        }
        try {
            Class<?> clazz2 = Class.forName("androidx.media3.decoder.av1.Libdav1dVideoRenderer");
            Constructor<?> constructor2 = clazz2.getConstructor(Long.TYPE, Handler.class, VideoRendererEventListener.class, Integer.TYPE);
            Renderer renderer2 = (Renderer) constructor2.newInstance(Long.valueOf(allowedVideoJoiningTimeMs), eventHandler, eventListener, 50);
            int extensionRendererIndex4 = extensionRendererIndex + 1;
            try {
                out.add(extensionRendererIndex, renderer2);
                Log.i(TAG, "Loaded Libdav1dVideoRenderer.");
                extensionRendererIndex = extensionRendererIndex4;
            } catch (ClassNotFoundException e5) {
                extensionRendererIndex = extensionRendererIndex4;
            } catch (Exception e6) {
                e = e6;
                throw new IllegalStateException("Error instantiating AV1 extension", e);
            }
        } catch (ClassNotFoundException e7) {
        } catch (Exception e8) {
            e = e8;
        }
        try {
            Class<?> clazz3 = Class.forName("androidx.media3.decoder.ffmpeg.ExperimentalFfmpegVideoRenderer");
            Constructor<?> constructor3 = clazz3.getConstructor(Long.TYPE, Handler.class, VideoRendererEventListener.class, Integer.TYPE);
            Renderer renderer3 = (Renderer) constructor3.newInstance(Long.valueOf(allowedVideoJoiningTimeMs), eventHandler, eventListener, 50);
            int extensionRendererIndex5 = extensionRendererIndex + 1;
            try {
                out.add(extensionRendererIndex, renderer3);
                Log.i(TAG, "Loaded FfmpegVideoRenderer.");
            } catch (ClassNotFoundException e9) {
                extensionRendererIndex = extensionRendererIndex5;
            } catch (Exception e10) {
                e = e10;
                throw new IllegalStateException("Error instantiating FFmpeg extension", e);
            }
        } catch (ClassNotFoundException e11) {
        } catch (Exception e12) {
            e = e12;
        }
    }

    protected void buildAudioRenderers(Context context, int extensionRendererMode, MediaCodecSelector mediaCodecSelector, boolean enableDecoderFallback, AudioSink audioSink, Handler eventHandler, AudioRendererEventListener eventListener, ArrayList<Renderer> out) {
        int extensionRendererIndex;
        char c;
        int extensionRendererIndex2;
        Constructor<?> constructor;
        int extensionRendererIndex3;
        Renderer renderer;
        Constructor<?> constructor2;
        int extensionRendererIndex4;
        Constructor<?> constructor3;
        int extensionRendererIndex5;
        Constructor<?> constructor4;
        int extensionRendererIndex6;
        MediaCodecAudioRenderer audioRenderer = new MediaCodecAudioRenderer(context, getCodecAdapterFactory(), mediaCodecSelector, enableDecoderFallback, eventHandler, eventListener, audioSink);
        out.add(audioRenderer);
        if (extensionRendererMode == 0) {
            return;
        }
        int extensionRendererIndex7 = out.size();
        if (extensionRendererMode != 2) {
            extensionRendererIndex = extensionRendererIndex7;
        } else {
            extensionRendererIndex = extensionRendererIndex7 - 1;
        }
        try {
            Class<?> clazz = Class.forName("androidx.media3.decoder.midi.MidiRenderer");
            constructor4 = clazz.getConstructor(Context.class, Handler.class, AudioRendererEventListener.class, AudioSink.class);
            try {
                extensionRendererIndex6 = extensionRendererIndex + 1;
            } catch (ClassNotFoundException e) {
            } catch (Exception e2) {
                e = e2;
            }
        } catch (ClassNotFoundException e3) {
        } catch (Exception e4) {
            e = e4;
        }
        try {
            out.add(extensionRendererIndex, (Renderer) constructor4.newInstance(context, eventHandler, eventListener, audioSink));
            Log.i(TAG, "Loaded MidiRenderer.");
            extensionRendererIndex = extensionRendererIndex6;
        } catch (ClassNotFoundException e5) {
            extensionRendererIndex = extensionRendererIndex6;
        } catch (Exception e6) {
            e = e6;
            throw new IllegalStateException("Error instantiating MIDI extension", e);
        }
        try {
            Class<?> clazz2 = Class.forName("androidx.media3.decoder.opus.LibopusAudioRenderer");
            Constructor<?> constructor5 = clazz2.getConstructor(Handler.class, AudioRendererEventListener.class, AudioSink.class);
            int extensionRendererIndex8 = extensionRendererIndex + 1;
            try {
                out.add(extensionRendererIndex, (Renderer) constructor5.newInstance(eventHandler, eventListener, audioSink));
                Log.i(TAG, "Loaded LibopusAudioRenderer.");
                extensionRendererIndex = extensionRendererIndex8;
            } catch (ClassNotFoundException e7) {
                extensionRendererIndex = extensionRendererIndex8;
            } catch (Exception e8) {
                e = e8;
                throw new IllegalStateException("Error instantiating Opus extension", e);
            }
        } catch (ClassNotFoundException e9) {
        } catch (Exception e10) {
            e = e10;
        }
        try {
            Class<?> clazz3 = Class.forName("androidx.media3.decoder.flac.LibflacAudioRenderer");
            constructor3 = clazz3.getConstructor(Handler.class, AudioRendererEventListener.class, AudioSink.class);
            extensionRendererIndex5 = extensionRendererIndex + 1;
        } catch (ClassNotFoundException e11) {
        } catch (Exception e12) {
            e = e12;
        }
        try {
            out.add(extensionRendererIndex, (Renderer) constructor3.newInstance(eventHandler, eventListener, audioSink));
            Log.i(TAG, "Loaded LibflacAudioRenderer.");
            extensionRendererIndex = extensionRendererIndex5;
        } catch (ClassNotFoundException e13) {
            extensionRendererIndex = extensionRendererIndex5;
        } catch (Exception e14) {
            e = e14;
            throw new IllegalStateException("Error instantiating FLAC extension", e);
        }
        try {
            Class<?> clazz4 = Class.forName("androidx.media3.decoder.ffmpeg.FfmpegAudioRenderer");
            constructor2 = clazz4.getConstructor(Handler.class, AudioRendererEventListener.class, AudioSink.class);
            extensionRendererIndex4 = extensionRendererIndex + 1;
        } catch (ClassNotFoundException e15) {
        } catch (Exception e16) {
            e = e16;
        }
        try {
            out.add(extensionRendererIndex, (Renderer) constructor2.newInstance(eventHandler, eventListener, audioSink));
            Log.i(TAG, "Loaded FfmpegAudioRenderer.");
            extensionRendererIndex = extensionRendererIndex4;
        } catch (ClassNotFoundException e17) {
            extensionRendererIndex = extensionRendererIndex4;
        } catch (Exception e18) {
            e = e18;
            throw new IllegalStateException("Error instantiating FFmpeg extension", e);
        }
        try {
            try {
                Class<?> builderClass = Class.forName("androidx.media3.decoder.iamf.IamfAudioRenderer$Builder");
                Constructor<?> builderConstructor = builderClass.getConstructor(AudioSink.class);
                Object builder = builderConstructor.newInstance(audioSink);
                c = 1;
                try {
                    builderClass.getMethod("setEventHandlerAndListener", Handler.class, AudioRendererEventListener.class).invoke(builder, eventHandler, eventListener);
                    renderer = (Renderer) builderClass.getMethod("build", new Class[0]).invoke(builder, new Object[0]);
                    Preconditions.checkNotNull(renderer);
                    extensionRendererIndex2 = extensionRendererIndex + 1;
                } catch (ReflectiveOperationException e19) {
                }
            } catch (Exception e20) {
                e = e20;
            }
        } catch (ReflectiveOperationException e21) {
            c = 1;
        }
        try {
            out.add(extensionRendererIndex, renderer);
            Log.i(TAG, "Loaded IamfAudioRenderer.");
        } catch (ReflectiveOperationException e22) {
            extensionRendererIndex = extensionRendererIndex2;
            extensionRendererIndex2 = extensionRendererIndex;
        } catch (Exception e23) {
            e = e23;
            throw new IllegalStateException("Error instantiating IAMF extension", e);
        }
        try {
            Class<?> clazz5 = Class.forName("androidx.media3.decoder.mpegh.MpeghAudioRenderer");
            Class<?>[] clsArr = new Class[3];
            clsArr[0] = Handler.class;
            clsArr[c] = AudioRendererEventListener.class;
            clsArr[2] = AudioSink.class;
            constructor = clazz5.getConstructor(clsArr);
            extensionRendererIndex3 = extensionRendererIndex2 + 1;
        } catch (ClassNotFoundException e24) {
        } catch (Exception e25) {
            e = e25;
        }
        try {
            out.add(extensionRendererIndex2, (Renderer) constructor.newInstance(eventHandler, eventListener, audioSink));
            Log.i(TAG, "Loaded MpeghAudioRenderer.");
        } catch (ClassNotFoundException e26) {
            extensionRendererIndex2 = extensionRendererIndex3;
        } catch (Exception e27) {
            e = e27;
            throw new IllegalStateException("Error instantiating MPEG-H extension", e);
        }
    }

    protected void buildTextRenderers(Context context, TextOutput output, Looper outputLooper, int extensionRendererMode, ArrayList<Renderer> out) {
        out.add(new TextRenderer(output, outputLooper));
    }

    protected void buildMetadataRenderers(Context context, MetadataOutput output, Looper outputLooper, int extensionRendererMode, ArrayList<Renderer> out) {
        for (int i = 0; i < 4; i++) {
            out.add(new MetadataRenderer(output, outputLooper));
        }
    }

    protected void buildCameraMotionRenderers(Context context, int extensionRendererMode, ArrayList<Renderer> out) {
        out.add(new CameraMotionRenderer());
    }

    @Deprecated
    protected void buildImageRenderers(ArrayList<Renderer> out) {
        out.add(new ImageRenderer(getImageDecoderFactory(this.context), null));
    }

    protected void buildImageRenderers(Context context, ArrayList<Renderer> out) {
        buildImageRenderers(out);
    }

    protected void buildMiscellaneousRenderers(Context context, Handler eventHandler, int extensionRendererMode, ArrayList<Renderer> out) {
    }

    protected AudioSink buildAudioSink(Context context, boolean enableFloatOutput, boolean enableAudioOutputPlaybackParams) {
        return new DefaultAudioSink.Builder(context).setEnableFloatOutput(enableFloatOutput).setEnableAudioOutputPlaybackParameters(enableAudioOutputPlaybackParams).build();
    }

    @Override // androidx.media3.exoplayer.RenderersFactory
    public Renderer createSecondaryRenderer(Renderer renderer, Handler eventHandler, VideoRendererEventListener videoRendererEventListener, AudioRendererEventListener audioRendererEventListener, TextOutput textRendererOutput, MetadataOutput metadataRendererOutput) {
        if (renderer.getTrackType() == 2) {
            return buildSecondaryVideoRenderer(renderer, this.context, this.extensionRendererMode, this.mediaCodecSelector, this.enableDecoderFallback, eventHandler, videoRendererEventListener, this.allowedVideoJoiningTimeMs);
        }
        return null;
    }

    protected Renderer buildSecondaryVideoRenderer(Renderer renderer, Context context, int extensionRendererMode, MediaCodecSelector mediaCodecSelector, boolean enableDecoderFallback, Handler eventHandler, VideoRendererEventListener eventListener, long allowedVideoJoiningTimeMs) {
        if (this.enableMediaCodecVideoRendererPrewarming && renderer.getClass() == MediaCodecVideoRenderer.class) {
            MediaCodecVideoRenderer.Builder builder = new MediaCodecVideoRenderer.Builder(context).setCodecAdapterFactory(getCodecAdapterFactory()).setMediaCodecSelector(mediaCodecSelector).setAllowedJoiningTimeMs(allowedVideoJoiningTimeMs).setEnableDecoderFallback(enableDecoderFallback).setEventHandler(eventHandler).setEventListener(eventListener).setMaxDroppedFramesToNotify(50).experimentalSetParseAv1SampleDependencies(this.parseAv1SampleDependencies).experimentalSetLateThresholdToDropDecoderInputUs(this.lateThresholdToDropDecoderInputUs);
            if (Build.VERSION.SDK_INT >= 34) {
                builder = builder.experimentalSetEnableMediaCodecBufferDecodeOnlyFlag(this.enableMediaCodecBufferDecodeOnlyFlag);
            }
            return builder.build();
        }
        return null;
    }

    protected MediaCodecAdapter.Factory getCodecAdapterFactory() {
        return this.codecAdapterFactory;
    }

    protected ImageDecoder.Factory getImageDecoderFactory(Context context) {
        return new BitmapFactoryImageDecoder.Factory(context);
    }
}
