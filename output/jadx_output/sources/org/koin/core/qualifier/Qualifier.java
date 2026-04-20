package org.koin.core.qualifier;

import com.google.firebase.firestore.model.Values;
import kotlin.Metadata;

/* JADX INFO: compiled from: Qualifier.kt */
/* JADX INFO: loaded from: classes23.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001R\u0016\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007À\u0006\u0003"}, d2 = {"Lorg/koin/core/qualifier/Qualifier;", "", Values.VECTOR_MAP_VECTORS_KEY, "", "Lorg/koin/core/qualifier/QualifierValue;", "getValue", "()Ljava/lang/String;", "koin-core"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface Qualifier {
    String getValue();
}
