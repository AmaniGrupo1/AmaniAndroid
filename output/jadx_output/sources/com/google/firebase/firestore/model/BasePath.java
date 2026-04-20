package com.google.firebase.firestore.model;

import com.google.firebase.firestore.model.BasePath;
import com.google.firebase.firestore.util.Assert;
import com.google.firebase.firestore.util.Util;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes22.dex */
public abstract class BasePath<B extends BasePath<B>> implements Comparable<B>, Iterable<String> {
    final List<String> segments;

    public abstract String canonicalString();

    abstract B createPathWithSegments(List<String> list);

    BasePath(List<String> segments) {
        this.segments = segments;
    }

    @Override // java.lang.Iterable
    public Iterator<String> iterator() {
        return this.segments.iterator();
    }

    public String getSegment(int index) {
        return this.segments.get(index);
    }

    public B append(String str) {
        ArrayList arrayList = new ArrayList(this.segments);
        arrayList.add(str);
        return (B) createPathWithSegments(arrayList);
    }

    public B append(B b) {
        ArrayList arrayList = new ArrayList(this.segments);
        arrayList.addAll(b.segments);
        return (B) createPathWithSegments(arrayList);
    }

    public B popFirst() {
        return (B) popFirst(1);
    }

    public B popFirst(int i) {
        int length = length();
        Assert.hardAssert(length >= i, "Can't call popFirst with count > length() (%d > %d)", Integer.valueOf(i), Integer.valueOf(length));
        return (B) createPathWithSegments(this.segments.subList(i, length));
    }

    public B popLast() {
        return (B) createPathWithSegments(this.segments.subList(0, length() - 1));
    }

    public B keepFirst(int i) {
        return (B) createPathWithSegments(this.segments.subList(0, i));
    }

    @Override // java.lang.Comparable
    public int compareTo(B o) {
        int myLength = length();
        int theirLength = o.length();
        for (int i = 0; i < myLength && i < theirLength; i++) {
            int localCompare = compareSegments(getSegment(i), o.getSegment(i));
            if (localCompare != 0) {
                return localCompare;
            }
        }
        return Integer.compare(myLength, theirLength);
    }

    private static int compareSegments(String lhs, String rhs) {
        boolean isLhsNumeric = isNumericId(lhs);
        boolean isRhsNumeric = isNumericId(rhs);
        if (isLhsNumeric && !isRhsNumeric) {
            return -1;
        }
        if (!isLhsNumeric && isRhsNumeric) {
            return 1;
        }
        if (isLhsNumeric && isRhsNumeric) {
            return Long.compare(extractNumericId(lhs), extractNumericId(rhs));
        }
        return Util.compareUtf8Strings(lhs, rhs);
    }

    private static boolean isNumericId(String segment) {
        return segment.startsWith("__id") && segment.endsWith("__");
    }

    private static long extractNumericId(String segment) {
        return Long.parseLong(segment.substring(4, segment.length() - 2));
    }

    public String getLastSegment() {
        return this.segments.get(length() - 1);
    }

    public String getFirstSegment() {
        return this.segments.get(0);
    }

    public boolean isEmpty() {
        return length() == 0;
    }

    public boolean isPrefixOf(B path) {
        if (length() > path.length()) {
            return false;
        }
        for (int i = 0; i < length(); i++) {
            if (!getSegment(i).equals(path.getSegment(i))) {
                return false;
            }
        }
        return true;
    }

    public boolean isImmediateParentOf(B potentialChild) {
        if (length() + 1 != potentialChild.length()) {
            return false;
        }
        for (int i = 0; i < length(); i++) {
            if (!getSegment(i).equals(potentialChild.getSegment(i))) {
                return false;
            }
        }
        return true;
    }

    public String toString() {
        return canonicalString();
    }

    public int length() {
        return this.segments.size();
    }

    public final boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        return (o instanceof BasePath) && compareTo((BasePath) o) == 0;
    }

    public int hashCode() {
        int result = (37 * 1) + getClass().hashCode();
        return (37 * result) + this.segments.hashCode();
    }
}
