package org.koin.core.registry;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.net.URL;
import java.util.Map;
import java.util.Properties;
import kotlin.Metadata;
import kotlin.collections.MapsKt;
import kotlin.io.TextStreamsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import org.koin.core.Koin;
import org.koin.core.error.NoPropertyFileFoundException;

/* JADX INFO: compiled from: PropertyRegistryExt.kt */
/* JADX INFO: loaded from: classes23.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004\u001a\u0012\u0010\u0005\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0007\u001a\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0007H\u0002\u001a\n\u0010\n\u001a\u00020\u0001*\u00020\u0002¨\u0006\u000b"}, d2 = {"saveProperties", "", "Lorg/koin/core/registry/PropertyRegistry;", "properties", "Ljava/util/Properties;", "loadPropertiesFromFile", "fileName", "", "readDataFromFile", "content", "loadEnvironmentProperties", "koin-core"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class PropertyRegistryExtKt {
    public static final void saveProperties(PropertyRegistry $this$saveProperties, Properties properties) {
        Intrinsics.checkNotNullParameter($this$saveProperties, "<this>");
        Intrinsics.checkNotNullParameter(properties, "properties");
        $this$saveProperties.get_koin().getLogger().debug("load " + properties.size() + " properties");
        Map propertiesMapValues = MapsKt.toMap(properties);
        Intrinsics.checkNotNull(propertiesMapValues, "null cannot be cast to non-null type kotlin.collections.Map<kotlin.String, kotlin.String>");
        for (Map.Entry element$iv : propertiesMapValues.entrySet()) {
            String k = (String) element$iv.getKey();
            String v = (String) element$iv.getValue();
            $this$saveProperties.saveProperty$koin_core(k, v);
        }
    }

    public static final void loadPropertiesFromFile(PropertyRegistry $this$loadPropertiesFromFile, String fileName) throws NoPropertyFileFoundException, IOException {
        String content;
        Intrinsics.checkNotNullParameter($this$loadPropertiesFromFile, "<this>");
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        $this$loadPropertiesFromFile.get_koin().getLogger().debug("load properties from " + fileName);
        URL resource = Koin.class.getResource(fileName);
        if (resource != null) {
            content = new String(TextStreamsKt.readBytes(resource), Charsets.UTF_8);
        } else {
            content = null;
        }
        if (content != null) {
            $this$loadPropertiesFromFile.get_koin().getLogger().info("loaded properties from file:'" + fileName + '\'');
            Properties properties = readDataFromFile(content);
            saveProperties($this$loadPropertiesFromFile, properties);
            return;
        }
        throw new NoPropertyFileFoundException("No properties found for file '" + fileName + '\'');
    }

    private static final Properties readDataFromFile(String content) throws IOException {
        Properties properties = new Properties();
        byte[] bytes = content.getBytes(Charsets.UTF_8);
        Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
        properties.load(new ByteArrayInputStream(bytes));
        return properties;
    }

    public static final void loadEnvironmentProperties(PropertyRegistry $this$loadEnvironmentProperties) {
        Intrinsics.checkNotNullParameter($this$loadEnvironmentProperties, "<this>");
        $this$loadEnvironmentProperties.get_koin().getLogger().debug("load properties from environment");
        Properties sysProperties = System.getProperties();
        Intrinsics.checkNotNull(sysProperties);
        saveProperties($this$loadEnvironmentProperties, sysProperties);
        Map<String, String> map = System.getenv();
        Intrinsics.checkNotNullExpressionValue(map, "getenv(...)");
        Properties sysEnvProperties = new Properties();
        sysEnvProperties.putAll(map);
        saveProperties($this$loadEnvironmentProperties, sysEnvProperties);
    }
}
