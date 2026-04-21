package androidx.media3.exoplayer.upstream.contentsteering;

import android.net.Uri;
import android.util.JsonReader;
import android.util.JsonToken;
import androidx.media3.common.ParserException;
import androidx.media3.exoplayer.upstream.ParsingLoadable;
import androidx.media3.exoplayer.upstream.contentsteering.SteeringManifest;
import com.google.common.collect.ImmutableList;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;

/* JADX INFO: loaded from: classes21.dex */
public final class SteeringManifestParser implements ParsingLoadable.Parser<SteeringManifest> {
    private static final String STEERING_MANIFEST_JSON_NAME_BASE_ID = "BASE-ID";
    private static final String STEERING_MANIFEST_JSON_NAME_HOST = "HOST";
    private static final String STEERING_MANIFEST_JSON_NAME_ID = "ID";
    private static final String STEERING_MANIFEST_JSON_NAME_PARAMS = "PARAMS";
    private static final String STEERING_MANIFEST_JSON_NAME_PATHWAY_CLONES = "PATHWAY-CLONES";
    private static final String STEERING_MANIFEST_JSON_NAME_PATHWAY_PRIORITY = "PATHWAY-PRIORITY";
    private static final String STEERING_MANIFEST_JSON_NAME_PER_RENDITION_URIS = "PER-RENDITION-URIS";
    private static final String STEERING_MANIFEST_JSON_NAME_PER_VARIANT_URIS = "PER-VARIANT-URIS";
    private static final String STEERING_MANIFEST_JSON_NAME_RELOAD_URI = "RELOAD-URI";
    private static final String STEERING_MANIFEST_JSON_NAME_TTL = "TTL";
    private static final String STEERING_MANIFEST_JSON_NAME_URI_REPLACEMENT = "URI-REPLACEMENT";
    private static final String STEERING_MANIFEST_JSON_NAME_VERSION = "VERSION";

    /* JADX INFO: Access modifiers changed from: private */
    interface StringConverter<T> {
        T convert(String str);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.media3.exoplayer.upstream.ParsingLoadable.Parser
    public SteeringManifest parse(Uri uri, InputStream inputStream) throws IOException {
        JsonReader reader = new JsonReader(new InputStreamReader(inputStream));
        try {
            if (!reader.peek().equals(JsonToken.BEGIN_OBJECT)) {
                throw ParserException.createForMalformedSteeringManifest("Steering manifest JSON should be an object at root", null);
            }
            ImmutableList.Builder<String> pathwayPriority = new ImmutableList.Builder<>();
            ImmutableList.Builder<SteeringManifest.PathwayClone> pathwayClones = new ImmutableList.Builder<>();
            reader.beginObject();
            int version = 1;
            long timeToLiveMs = -9223372036854775807L;
            Uri reloadUri = null;
            while (reader.hasNext()) {
                String name = reader.nextName();
                if (name.equals(STEERING_MANIFEST_JSON_NAME_VERSION) && reader.peek().equals(JsonToken.NUMBER)) {
                    version = reader.nextInt();
                } else if (name.equals(STEERING_MANIFEST_JSON_NAME_TTL) && reader.peek().equals(JsonToken.NUMBER)) {
                    timeToLiveMs = ((long) reader.nextInt()) * 1000;
                } else if (name.equals(STEERING_MANIFEST_JSON_NAME_RELOAD_URI) && reader.peek().equals(JsonToken.STRING)) {
                    reloadUri = Uri.parse(reader.nextString());
                } else if (name.equals(STEERING_MANIFEST_JSON_NAME_PATHWAY_PRIORITY) && reader.peek().equals(JsonToken.BEGIN_ARRAY)) {
                    parsePathwayPriorityArray(reader, pathwayPriority);
                } else if (name.equals(STEERING_MANIFEST_JSON_NAME_PATHWAY_CLONES) && reader.peek().equals(JsonToken.BEGIN_ARRAY)) {
                    parsePathwayClonesArray(reader, pathwayClones);
                } else {
                    reader.skipValue();
                }
            }
            reader.endObject();
            ImmutableList<String> pathwayPriorityList = pathwayPriority.build();
            if (pathwayPriorityList.isEmpty()) {
                throw ParserException.createForMalformedSteeringManifest("PATHWAY-PRIORITY field is missing", null);
            }
            SteeringManifest steeringManifest = new SteeringManifest(version, timeToLiveMs, reloadUri, pathwayPriorityList, pathwayClones.build());
            reader.close();
            return steeringManifest;
        } catch (Throwable th) {
            try {
                reader.close();
                throw th;
            } catch (Throwable th2) {
                th.addSuppressed(th2);
                throw th;
            }
        }
    }

    private static SteeringManifest.PathwayClone parsePathwayClone(JsonReader reader) throws IOException {
        reader.beginObject();
        String baseId = null;
        String id = null;
        SteeringManifest.UriReplacement uriReplacement = null;
        while (reader.hasNext()) {
            String name = reader.nextName();
            if (name.equals(STEERING_MANIFEST_JSON_NAME_BASE_ID) && reader.peek().equals(JsonToken.STRING)) {
                baseId = reader.nextString();
            } else if (name.equals(STEERING_MANIFEST_JSON_NAME_ID) && reader.peek().equals(JsonToken.STRING)) {
                id = reader.nextString();
            } else if (name.equals(STEERING_MANIFEST_JSON_NAME_URI_REPLACEMENT) && reader.peek().equals(JsonToken.BEGIN_OBJECT)) {
                uriReplacement = parseUriReplacement(reader);
            } else {
                reader.skipValue();
            }
        }
        reader.endObject();
        if (baseId == null) {
            throw ParserException.createForMalformedSteeringManifest("BASE-ID field is missing in a PATHWAY-CLONE object", null);
        }
        if (id == null) {
            throw ParserException.createForMalformedSteeringManifest("ID field is missing in a PATHWAY-CLONE object", null);
        }
        if (uriReplacement == null) {
            throw ParserException.createForMalformedSteeringManifest("URI-REPLACEMENT field is missing in a PATHWAY-CLONE object", null);
        }
        return new SteeringManifest.PathwayClone(baseId, id, uriReplacement);
    }

    private static SteeringManifest.UriReplacement parseUriReplacement(JsonReader reader) throws IOException {
        reader.beginObject();
        String host = null;
        Map<String, String> params = new HashMap<>();
        Map<String, Uri> perVariantUris = new HashMap<>();
        Map<String, Uri> perRenditionUris = new HashMap<>();
        while (reader.hasNext()) {
            String name = reader.nextName();
            if (name.equals(STEERING_MANIFEST_JSON_NAME_HOST) && reader.peek().equals(JsonToken.STRING)) {
                host = reader.nextString();
                if (host.isEmpty()) {
                    throw ParserException.createForMalformedSteeringManifest("The HOST string is present but empty", null);
                }
            } else if (name.equals(STEERING_MANIFEST_JSON_NAME_PARAMS) && reader.peek().equals(JsonToken.BEGIN_OBJECT)) {
                parseMap(reader, new StringConverter() { // from class: androidx.media3.exoplayer.upstream.contentsteering.SteeringManifestParser$$ExternalSyntheticLambda0
                    @Override // androidx.media3.exoplayer.upstream.contentsteering.SteeringManifestParser.StringConverter
                    public final Object convert(String str) {
                        return SteeringManifestParser.lambda$parseUriReplacement$0(str);
                    }
                }, params);
            } else if (name.equals(STEERING_MANIFEST_JSON_NAME_PER_VARIANT_URIS) && reader.peek().equals(JsonToken.BEGIN_OBJECT)) {
                parseMap(reader, new StringConverter() { // from class: androidx.media3.exoplayer.upstream.contentsteering.SteeringManifestParser$$ExternalSyntheticLambda1
                    @Override // androidx.media3.exoplayer.upstream.contentsteering.SteeringManifestParser.StringConverter
                    public final Object convert(String str) {
                        return Uri.parse(str);
                    }
                }, perVariantUris);
            } else if (name.equals(STEERING_MANIFEST_JSON_NAME_PER_RENDITION_URIS) && reader.peek().equals(JsonToken.BEGIN_OBJECT)) {
                parseMap(reader, new StringConverter() { // from class: androidx.media3.exoplayer.upstream.contentsteering.SteeringManifestParser$$ExternalSyntheticLambda1
                    @Override // androidx.media3.exoplayer.upstream.contentsteering.SteeringManifestParser.StringConverter
                    public final Object convert(String str) {
                        return Uri.parse(str);
                    }
                }, perRenditionUris);
            } else {
                reader.skipValue();
            }
        }
        reader.endObject();
        return new SteeringManifest.UriReplacement(host, params, perVariantUris, perRenditionUris);
    }

    static /* synthetic */ String lambda$parseUriReplacement$0(String string) {
        return string;
    }

    private static void parsePathwayClonesArray(JsonReader reader, ImmutableList.Builder<SteeringManifest.PathwayClone> pathwayClones) throws IOException {
        reader.beginArray();
        boolean hasElement = false;
        while (reader.hasNext()) {
            if (reader.peek().equals(JsonToken.BEGIN_OBJECT)) {
                SteeringManifest.PathwayClone pathwayClone = parsePathwayClone(reader);
                pathwayClones.add(pathwayClone);
                hasElement = true;
            } else {
                reader.skipValue();
            }
        }
        reader.endArray();
        if (!hasElement) {
            throw ParserException.createForMalformedSteeringManifest("The PATHWAY-CLONES array is present but empty", null);
        }
    }

    private static void parsePathwayPriorityArray(JsonReader reader, ImmutableList.Builder<String> pathwayPriority) throws IOException {
        HashSet<String> pathwayIdSet = new HashSet<>();
        reader.beginArray();
        while (reader.hasNext()) {
            if (reader.peek().equals(JsonToken.STRING)) {
                String pathwayId = reader.nextString();
                if (!pathwayIdSet.add(pathwayId)) {
                    throw ParserException.createForMalformedSteeringManifest("The pathway ID (" + pathwayId + ") appears more than once in the PATHWAY-PRIORITY array", null);
                }
                pathwayPriority.add(pathwayId);
            } else {
                reader.skipValue();
            }
        }
        reader.endArray();
        if (pathwayIdSet.isEmpty()) {
            throw ParserException.createForMalformedSteeringManifest("The PATHWAY-PRIORITY array is present but empty", null);
        }
    }

    private static <T> void parseMap(JsonReader reader, StringConverter<T> stringConverter, Map<String, T> map) throws IOException {
        reader.beginObject();
        while (reader.hasNext()) {
            String name = reader.nextName();
            if (reader.peek().equals(JsonToken.STRING)) {
                String value = reader.nextString();
                map.put(name, stringConverter.convert(value));
            } else {
                reader.skipValue();
            }
        }
        reader.endObject();
    }
}
