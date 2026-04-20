package org.koin.androidx.scope;

import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;
import kotlin.Metadata;
import kotlin.jvm.internal.Reflection;
import org.koin.core.qualifier.TypeQualifier;

/* JADX INFO: compiled from: AndroidScopeArchetypes.kt */
/* JADX INFO: loaded from: classes23.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\"\u0011\u0010\u0000\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0003\"\u0011\u0010\u0004\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0003\"\u0011\u0010\u0006\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\u0003¨\u0006\b"}, d2 = {"ActivityScopeArchetype", "Lorg/koin/core/qualifier/TypeQualifier;", "getActivityScopeArchetype", "()Lorg/koin/core/qualifier/TypeQualifier;", "ActivityRetainedScopeArchetype", "getActivityRetainedScopeArchetype", "FragmentScopeArchetype", "getFragmentScopeArchetype", "koin-android_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class AndroidScopeArchetypesKt {
    private static final TypeQualifier ActivityScopeArchetype = new TypeQualifier(Reflection.getOrCreateKotlinClass(AppCompatActivity.class));
    private static final TypeQualifier ActivityRetainedScopeArchetype = new TypeQualifier(Reflection.getOrCreateKotlinClass(RetainedScopeActivity.class));
    private static final TypeQualifier FragmentScopeArchetype = new TypeQualifier(Reflection.getOrCreateKotlinClass(Fragment.class));

    public static final TypeQualifier getActivityScopeArchetype() {
        return ActivityScopeArchetype;
    }

    public static final TypeQualifier getActivityRetainedScopeArchetype() {
        return ActivityRetainedScopeArchetype;
    }

    public static final TypeQualifier getFragmentScopeArchetype() {
        return FragmentScopeArchetype;
    }
}
