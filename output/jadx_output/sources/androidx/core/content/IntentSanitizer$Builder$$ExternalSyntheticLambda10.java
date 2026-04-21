package androidx.core.content;

import androidx.core.util.Predicate;
import com.android.tools.r8.annotations.LambdaMethod;
import com.android.tools.r8.annotations.SynthesizedClassV2;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes20.dex */
@LambdaMethod(holder = "Ljava/lang/String;", method = "equals", proto = "(Ljava/lang/Object;)Z")
@SynthesizedClassV2(apiLevel = -2, kind = 19, versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0")
public final /* synthetic */ class IntentSanitizer$Builder$$ExternalSyntheticLambda10 implements Predicate {
    public final /* synthetic */ String f$0;

    @Override // androidx.core.util.Predicate
    public final boolean test(Object obj) {
        return this.f$0.equals((String) obj);
    }
}
