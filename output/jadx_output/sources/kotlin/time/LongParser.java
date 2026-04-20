package kotlin.time;

import androidx.autofill.HintConstants;
import androidx.core.view.MotionEventCompat;
import com.google.firebase.firestore.model.Values;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Duration.kt */
/* JADX INFO: loaded from: classes21.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0000\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u0019\bB\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007Jw\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2K\u0010\u000f\u001aG\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u0011\u0012\b\b\u0012\u0012\u0004\b\b(\u0013\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u0011\u0012\b\b\u0012\u0012\u0004\b\b(\u0014\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\u0011\u0012\b\b\u0012\u0012\u0004\b\b(\u0015\u0012\u0004\u0012\u00020\u00160\u0010H\u0086\u0088\u0004ø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0003 \u0001R\u000f\u0010\u0002\u001a\u00020\u0003X\u0082\u0084\b¢\u0006\u0002\n\u0000R\u000f\u0010\u0004\u001a\u00020\u0005X\u0082\u0084\b¢\u0006\u0002\n\u0000R\u000f\u0010\b\u001a\u00020\u0003X\u0082\u0084\b¢\u0006\u0002\n\u0000R\u000f\u0010\t\u001a\u00020\u0003X\u0082\u0084\b¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0018"}, d2 = {"Lkotlin/time/LongParser;", "", "overflowLimit", "", "allowSign", "", "<init>", "(JZ)V", "overflowThreshold", "lastDigitMax", "parse", Values.VECTOR_MAP_VECTORS_KEY, "", "startIndex", "", "callback", "Lkotlin/Function3;", "Lkotlin/ParameterName;", HintConstants.AUTOFILL_HINT_NAME, "endIndex", "sign", "hasOverflow", "", "Companion", "kotlin-stdlib"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class LongParser {
    private final boolean allowSign;
    private final long lastDigitMax;
    private final long overflowLimit;
    private final long overflowThreshold;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final LongParser iso = new LongParser(4611686018427387903L, true);

    /* JADX INFO: renamed from: default, reason: not valid java name */
    private static final LongParser f165default = new LongParser(Long.MAX_VALUE, false);

    private LongParser(long overflowLimit, boolean allowSign) {
        this.overflowLimit = overflowLimit;
        this.allowSign = allowSign;
        long j = 10;
        this.overflowThreshold = this.overflowLimit / j;
        this.lastDigitMax = this.overflowLimit % j;
    }

    /* JADX WARN: Code restructure failed: missing block: B:50:0x00cf, code lost:
    
        r22.invoke(java.lang.Integer.valueOf(r8), java.lang.Integer.valueOf(r3), java.lang.Boolean.valueOf(r17));
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00de, code lost:
    
        return r4;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final long parse(String value, int startIndex, Function3<? super Integer, ? super Integer, ? super Boolean, Unit> callback) {
        char c;
        boolean z;
        boolean z2;
        boolean z3;
        Intrinsics.checkNotNullParameter(value, "value");
        Intrinsics.checkNotNullParameter(callback, "callback");
        int sign = 1;
        int index = startIndex;
        if (this.allowSign) {
            char firstChar = value.charAt(index);
            switch (firstChar) {
                case MotionEventCompat.AXIS_GENERIC_12 /* 43 */:
                    index++;
                    break;
                case '-':
                    sign = -1;
                    index++;
                    break;
            }
        }
        int startIndex$iv = index;
        int i$iv = startIndex$iv;
        while (true) {
            c = 1;
            if (i$iv < value.length()) {
                if ((value.charAt(i$iv) == '0' ? (char) 1 : (char) 0) != 0) {
                    i$iv++;
                }
            }
        }
        long result = 0;
        while (true) {
            if (i$iv >= value.length()) {
                z = false;
            } else {
                char ch = value.charAt(i$iv);
                if ((('0' > ch || ch >= ':') ? (char) 0 : c) == 0) {
                    z = false;
                } else {
                    int digit = ch - '0';
                    if (result > this.overflowThreshold) {
                        z2 = c;
                        z3 = false;
                    } else if (result != this.overflowThreshold || digit <= this.lastDigitMax) {
                        result = (result << 3) + (result << c) + ((long) digit);
                        i$iv++;
                        c = c;
                    } else {
                        z2 = c;
                        z3 = false;
                    }
                }
            }
        }
        int startIndex$iv2 = i$iv;
        int i$iv2 = startIndex$iv2;
        while (true) {
            boolean z4 = z3;
            if (i$iv2 < value.length()) {
                char it = value.charAt(i$iv2);
                if (('0' > it || it >= ':') ? z4 : z2) {
                    i$iv2++;
                    z3 = z4;
                }
            }
        }
        callback.invoke(Integer.valueOf(i$iv2), Integer.valueOf(sign), Boolean.valueOf(z2));
        return this.overflowLimit;
    }

    /* JADX INFO: compiled from: Duration.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\bB¢\u0006\u0004\b\u0002\u0010\u0003R\u0015\u0010\u0004\u001a\u00020\u0005X\u0086\u0084\b¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0015\u0010\b\u001a\u00020\u0005X\u0086\u0084\b¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\u0007¨\u0006\n"}, d2 = {"Lkotlin/time/LongParser$Companion;", "", "<init>", "()V", "iso", "Lkotlin/time/LongParser;", "getIso", "()Lkotlin/time/LongParser;", "default", "getDefault", "kotlin-stdlib"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final LongParser getIso() {
            return LongParser.iso;
        }

        public final LongParser getDefault() {
            return LongParser.f165default;
        }
    }
}
