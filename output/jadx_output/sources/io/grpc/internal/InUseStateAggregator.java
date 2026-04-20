package io.grpc.internal;

import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Set;

/* JADX INFO: loaded from: classes22.dex */
public abstract class InUseStateAggregator<T> {
    private final Set<T> inUseObjects = Collections.newSetFromMap(new IdentityHashMap());

    protected abstract void handleInUse();

    protected abstract void handleNotInUse();

    public final void updateObjectInUse(T object, boolean inUse) {
        int origSize = this.inUseObjects.size();
        Set<T> set = this.inUseObjects;
        if (inUse) {
            set.add(object);
            if (origSize == 0) {
                handleInUse();
                return;
            }
            return;
        }
        boolean removed = set.remove(object);
        if (removed && origSize == 1) {
            handleNotInUse();
        }
    }

    public final boolean isInUse() {
        return !this.inUseObjects.isEmpty();
    }

    public final boolean anyObjectInUse(Object... objects) {
        for (Object object : objects) {
            if (this.inUseObjects.contains(object)) {
                return true;
            }
        }
        return false;
    }
}
