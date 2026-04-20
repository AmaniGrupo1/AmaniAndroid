package org.ies.tierno.applicationamani.data.local;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AuthEventChannel.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0002\u0004\u0005B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0002\u0006\u0007¨\u0006\b"}, d2 = {"Lorg/ies/tierno/applicationamani/data/local/AuthEvent;", "", "<init>", "()V", "Unauthorized", "TokenRefreshed", "Lorg/ies/tierno/applicationamani/data/local/AuthEvent$TokenRefreshed;", "Lorg/ies/tierno/applicationamani/data/local/AuthEvent$Unauthorized;", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public abstract class AuthEvent {
    public static final int $stable = 0;

    public /* synthetic */ AuthEvent(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private AuthEvent() {
    }

    /* JADX INFO: compiled from: AuthEventChannel.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÇ\n\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0013\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÖ\u0003J\t\u0010\b\u001a\u00020\tHÖ\u0001J\t\u0010\n\u001a\u00020\u000bHÖ\u0001¨\u0006\f"}, d2 = {"Lorg/ies/tierno/applicationamani/data/local/AuthEvent$Unauthorized;", "Lorg/ies/tierno/applicationamani/data/local/AuthEvent;", "<init>", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final /* data */ class Unauthorized extends AuthEvent {
        public static final int $stable = 0;
        public static final Unauthorized INSTANCE = new Unauthorized();

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Unauthorized)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return 1137456307;
        }

        public String toString() {
            return "Unauthorized";
        }

        private Unauthorized() {
            super(null);
        }
    }

    /* JADX INFO: compiled from: AuthEventChannel.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, d2 = {"Lorg/ies/tierno/applicationamani/data/local/AuthEvent$TokenRefreshed;", "Lorg/ies/tierno/applicationamani/data/local/AuthEvent;", "newToken", "", "<init>", "(Ljava/lang/String;)V", "getNewToken", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final /* data */ class TokenRefreshed extends AuthEvent {
        public static final int $stable = 0;
        private final String newToken;

        public static /* synthetic */ TokenRefreshed copy$default(TokenRefreshed tokenRefreshed, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = tokenRefreshed.newToken;
            }
            return tokenRefreshed.copy(str);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getNewToken() {
            return this.newToken;
        }

        public final TokenRefreshed copy(String newToken) {
            Intrinsics.checkNotNullParameter(newToken, "newToken");
            return new TokenRefreshed(newToken);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof TokenRefreshed) && Intrinsics.areEqual(this.newToken, ((TokenRefreshed) other).newToken);
        }

        public int hashCode() {
            return this.newToken.hashCode();
        }

        public String toString() {
            return "TokenRefreshed(newToken=" + this.newToken + ")";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TokenRefreshed(String newToken) {
            super(null);
            Intrinsics.checkNotNullParameter(newToken, "newToken");
            this.newToken = newToken;
        }

        public final String getNewToken() {
            return this.newToken;
        }
    }
}
