package org.koin.compose;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: ComposeContextWrapper.kt */
/* JADX INFO: loaded from: classes23.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\b\u0007\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B%\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00018\u0000\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\r\u0010\f\u001a\u0004\u0018\u00018\u0000¢\u0006\u0002\u0010\rJ\u000b\u0010\u000e\u001a\u00028\u0000¢\u0006\u0002\u0010\rR\u0019\u0010\u0004\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0012\u0010\n\u001a\u0004\u0018\u00018\u0000X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u000b¨\u0006\u000f"}, d2 = {"Lorg/koin/compose/ComposeContextWrapper;", ExifInterface.GPS_DIRECTION_TRUE, "", "initValue", "setValue", "Lkotlin/Function0;", "<init>", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V", "getSetValue", "()Lkotlin/jvm/functions/Function0;", "_value", "Ljava/lang/Object;", "resetValue", "()Ljava/lang/Object;", "getValue", "koin-compose_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ComposeContextWrapper<T> {
    public static final int $stable = 8;
    private T _value;
    private final Function0<T> setValue;

    /* JADX WARN: Multi-variable type inference failed */
    public ComposeContextWrapper() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ComposeContextWrapper(T t, Function0<? extends T> function0) {
        this.setValue = function0;
        this._value = t;
    }

    public /* synthetic */ ComposeContextWrapper(Object obj, Function0 function0, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : obj, (i & 2) != 0 ? null : function0);
    }

    public final Function0<T> getSetValue() {
        return this.setValue;
    }

    public final T resetValue() {
        Function0<T> function0 = this.setValue;
        this._value = function0 != null ? function0.invoke() : null;
        return this._value;
    }

    public final T getValue() {
        if (this._value == null) {
            Function0<T> function0 = this.setValue;
            this._value = function0 != null ? function0.invoke() : null;
        }
        T t = this._value;
        if (t != null) {
            return t;
        }
        throw new IllegalStateException("Can't retrieve Koin context value. Ensure Koin is properly initialized with startKoin() or KoinApplication.".toString());
    }
}
