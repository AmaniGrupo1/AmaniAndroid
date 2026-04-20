package org.koin.core.resolution;

import androidx.exifinterface.media.ExifInterface;
import java.util.ArrayList;
import kotlin.Metadata;
import org.koin.core.instance.ResolutionContext;
import org.koin.core.scope.Scope;

/* JADX INFO: compiled from: InstanceResolver.kt */
/* JADX INFO: loaded from: classes23.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b`\u0018\u00002\u00020\u0001J#\u0010\u0002\u001a\u0002H\u0003\"\u0004\b\u0000\u0010\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&¢\u0006\u0002\u0010\bJ\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH&R\"\u0010\r\u001a\u0012\u0012\u0004\u0012\u00020\f0\u000ej\b\u0012\u0004\u0012\u00020\f`\u000fX¦\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u0012À\u0006\u0003"}, d2 = {"Lorg/koin/core/resolution/InstanceResolver;", "", "resolveFromContext", ExifInterface.GPS_DIRECTION_TRUE, "scope", "Lorg/koin/core/scope/Scope;", "instanceContext", "Lorg/koin/core/instance/ResolutionContext;", "(Lorg/koin/core/scope/Scope;Lorg/koin/core/instance/ResolutionContext;)Ljava/lang/Object;", "addResolutionExtension", "", "resolutionExtension", "Lorg/koin/core/resolution/ResolutionExtension;", "extendedResolution", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "getExtendedResolution", "()Ljava/util/ArrayList;", "koin-core"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface InstanceResolver {
    void addResolutionExtension(ResolutionExtension resolutionExtension);

    ArrayList<ResolutionExtension> getExtendedResolution();

    <T> T resolveFromContext(Scope scope, ResolutionContext instanceContext);
}
