package com.google.common.base;

import j$.time.Duration;

/* JADX INFO: loaded from: classes.dex */
@ElementTypesAreNonnullByDefault
final class Internal {
    static long toNanosSaturated(Duration duration) {
        try {
            return duration.toNanos();
        } catch (ArithmeticException e) {
            return duration.isNegative() ? Long.MIN_VALUE : Long.MAX_VALUE;
        }
    }

    private Internal() {
    }
}
