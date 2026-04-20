package org.koin.androidx.scope;

import android.os.Bundle;
import androidx.appcompat.app.AppCompatActivity;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.koin.android.scope.AndroidScopeComponent;
import org.koin.core.scope.Scope;

/* JADX INFO: compiled from: RetainedScopeActivity.kt */
/* JADX INFO: loaded from: classes23.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b&\u0018\u00002\u00020\u00012\u00020\u0002B\u0011\u0012\b\b\u0003\u0010\u0003\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006J\u0012\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0014R\u001b\u0010\u0007\u001a\u00020\b8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\t\u0010\n¨\u0006\u0011"}, d2 = {"Lorg/koin/androidx/scope/RetainedScopeActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "Lorg/koin/android/scope/AndroidScopeComponent;", "contentLayoutId", "", "<init>", "(I)V", "scope", "Lorg/koin/core/scope/Scope;", "getScope", "()Lorg/koin/core/scope/Scope;", "scope$delegate", "Lkotlin/Lazy;", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "koin-android_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class RetainedScopeActivity extends AppCompatActivity implements AndroidScopeComponent {

    /* JADX INFO: renamed from: scope$delegate, reason: from kotlin metadata */
    private final Lazy scope;

    public RetainedScopeActivity() {
        this(0, 1, null);
    }

    public RetainedScopeActivity(int contentLayoutId) {
        super(contentLayoutId);
        this.scope = ComponentActivityExtKt.activityRetainedScope(this);
    }

    public /* synthetic */ RetainedScopeActivity(int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 0 : i);
    }

    @Override // org.koin.android.scope.AndroidScopeComponent
    public /* bridge */ void onCloseScope() {
        super.onCloseScope();
    }

    @Override // org.koin.android.scope.AndroidScopeComponent
    public Scope getScope() {
        return (Scope) this.scope.getValue();
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (getScope() == null) {
            throw new IllegalStateException("Required value was null.".toString());
        }
    }
}
