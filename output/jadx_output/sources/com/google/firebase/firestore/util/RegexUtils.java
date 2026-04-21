package com.google.firebase.firestore.util;

import com.google.firebase.firestore.model.Values;
import com.google.firestore.v1.Value;
import com.google.re2j.Matcher;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: RegexUtils.kt */
/* JADX INFO: loaded from: classes22.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0000\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lcom/google/firebase/firestore/util/RegexUtils;", "", "<init>", "()V", "Companion", "com.google.firebase-firebase-firestore"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class RegexUtils {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: compiled from: RegexUtils.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007¨\u0006\b"}, d2 = {"Lcom/google/firebase/firestore/util/RegexUtils$Companion;", "", "<init>", "()V", "handleMatch", "Lcom/google/firestore/v1/Value;", "matcher", "Lcom/google/re2j/Matcher;", "com.google.firebase-firebase-firestore"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final Value handleMatch(Matcher matcher) {
            Intrinsics.checkNotNullParameter(matcher, "matcher");
            if (matcher.groupCount() > 1) {
                throw new IllegalArgumentException("At most one capture group is supported");
            }
            if (matcher.groupCount() == 0) {
                String strGroup = matcher.group();
                Intrinsics.checkNotNullExpressionValue(strGroup, "group(...)");
                return Values.encodeValue(strGroup);
            }
            if (matcher.group(1) != null) {
                String strGroup2 = matcher.group(1);
                Intrinsics.checkNotNullExpressionValue(strGroup2, "group(...)");
                return Values.encodeValue(strGroup2);
            }
            return Values.NULL_VALUE;
        }
    }
}
