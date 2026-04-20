package androidx.media3.exoplayer.upstream.contentsteering;

import android.net.Uri;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes21.dex */
public final class SteeringManifest {
    public final ImmutableList<PathwayClone> pathwayClones;
    public final ImmutableList<String> pathwayPriority;
    public final Uri reloadUri;
    public final long timeToLiveMs;
    public final int version;

    public static final class PathwayClone {
        public final String baseId;
        public final String id;
        public final UriReplacement uriReplacement;

        public PathwayClone(String baseId, String id, UriReplacement uriReplacement) {
            this.baseId = baseId;
            this.id = id;
            this.uriReplacement = uriReplacement;
        }

        public boolean equals(Object o) {
            if (this == o) {
                return true;
            }
            if (!(o instanceof PathwayClone)) {
                return false;
            }
            PathwayClone pathwayClone = (PathwayClone) o;
            return Objects.equals(this.baseId, pathwayClone.baseId) && Objects.equals(this.id, pathwayClone.id) && Objects.equals(this.uriReplacement, pathwayClone.uriReplacement);
        }

        public int hashCode() {
            return Objects.hash(this.baseId, this.id, this.uriReplacement);
        }
    }

    public static final class UriReplacement {
        public final String host;
        public final ImmutableMap<String, String> params;
        public final ImmutableMap<String, Uri> perRenditionUris;
        public final ImmutableMap<String, Uri> perVariantUris;

        public UriReplacement(String host, Map<String, String> params, Map<String, Uri> perVariantUris, Map<String, Uri> perRenditionUris) {
            this.host = host;
            this.params = ImmutableMap.copyOf((Map) params);
            this.perVariantUris = ImmutableMap.copyOf((Map) perVariantUris);
            this.perRenditionUris = ImmutableMap.copyOf((Map) perRenditionUris);
        }

        public boolean equals(Object o) {
            if (this == o) {
                return true;
            }
            if (!(o instanceof UriReplacement)) {
                return false;
            }
            UriReplacement uriReplacement = (UriReplacement) o;
            return Objects.equals(this.host, uriReplacement.host) && Objects.equals(this.params, uriReplacement.params) && Objects.equals(this.perVariantUris, uriReplacement.perVariantUris) && Objects.equals(this.perRenditionUris, uriReplacement.perRenditionUris);
        }

        public int hashCode() {
            return Objects.hash(this.host, this.params, this.perVariantUris, this.perRenditionUris);
        }
    }

    public SteeringManifest(int version, long timeToLiveMs, Uri reloadUri, List<String> pathwayPriority, List<PathwayClone> pathwayClones) {
        this.version = version;
        this.timeToLiveMs = timeToLiveMs;
        this.reloadUri = reloadUri;
        this.pathwayPriority = ImmutableList.copyOf((Collection) pathwayPriority);
        this.pathwayClones = ImmutableList.copyOf((Collection) pathwayClones);
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (!(o instanceof SteeringManifest)) {
            return false;
        }
        SteeringManifest steeringManifest = (SteeringManifest) o;
        return this.version == steeringManifest.version && this.timeToLiveMs == steeringManifest.timeToLiveMs && Objects.equals(this.reloadUri, steeringManifest.reloadUri) && Objects.equals(this.pathwayPriority, steeringManifest.pathwayPriority) && Objects.equals(this.pathwayClones, steeringManifest.pathwayClones);
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.version), Long.valueOf(this.timeToLiveMs), this.reloadUri, this.pathwayPriority, this.pathwayClones);
    }
}
