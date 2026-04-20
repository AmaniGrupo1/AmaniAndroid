package androidx.media3.common;

import android.util.SparseBooleanArray;
import com.google.common.base.Preconditions;

/* JADX INFO: loaded from: classes21.dex */
public final class FlagSet {
    private final SparseBooleanArray flags;

    public static final class Builder {
        private boolean buildCalled;
        private final SparseBooleanArray flags = new SparseBooleanArray();

        public Builder add(int flag) {
            Preconditions.checkState(!this.buildCalled);
            this.flags.append(flag, true);
            return this;
        }

        public Builder addIf(int flag, boolean condition) {
            if (condition) {
                return add(flag);
            }
            return this;
        }

        public Builder addAll(int... flags) {
            for (int flag : flags) {
                add(flag);
            }
            return this;
        }

        public Builder addAll(FlagSet flags) {
            for (int i = 0; i < flags.size(); i++) {
                add(flags.get(i));
            }
            return this;
        }

        public Builder remove(int flag) {
            Preconditions.checkState(!this.buildCalled);
            this.flags.delete(flag);
            return this;
        }

        public Builder removeIf(int flag, boolean condition) {
            if (condition) {
                return remove(flag);
            }
            return this;
        }

        public Builder removeAll(int... flags) {
            for (int flag : flags) {
                remove(flag);
            }
            return this;
        }

        public FlagSet build() {
            Preconditions.checkState(!this.buildCalled);
            this.buildCalled = true;
            return new FlagSet(this.flags);
        }
    }

    private FlagSet(SparseBooleanArray flags) {
        this.flags = flags;
    }

    public boolean contains(int flag) {
        return this.flags.get(flag);
    }

    public boolean containsAny(int... flags) {
        for (int flag : flags) {
            if (contains(flag)) {
                return true;
            }
        }
        return false;
    }

    public boolean containsAny(FlagSet other) {
        for (int i = 0; i < other.size(); i++) {
            if (contains(other.get(i))) {
                return true;
            }
        }
        return false;
    }

    public int size() {
        return this.flags.size();
    }

    public int get(int index) {
        Preconditions.checkElementIndex(index, size());
        return this.flags.keyAt(index);
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (!(o instanceof FlagSet)) {
            return false;
        }
        FlagSet that = (FlagSet) o;
        return this.flags.equals(that.flags);
    }

    public int hashCode() {
        return this.flags.hashCode();
    }
}
