package com.google.common.util.concurrent;

import java.util.logging.Logger;

/* JADX INFO: loaded from: classes22.dex */
@ElementTypesAreNonnullByDefault
final class LazyLogger {
    private final Object lock = new Object();
    private volatile Logger logger;
    private final String loggerName;

    LazyLogger(Class<?> ownerOfLogger) {
        this.loggerName = ownerOfLogger.getName();
    }

    Logger get() {
        Logger local = this.logger;
        if (local != null) {
            return local;
        }
        synchronized (this.lock) {
            Logger local2 = this.logger;
            if (local2 != null) {
                return local2;
            }
            Logger logger = Logger.getLogger(this.loggerName);
            this.logger = logger;
            return logger;
        }
    }
}
