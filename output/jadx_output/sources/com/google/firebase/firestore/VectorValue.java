package com.google.firebase.firestore;

import java.util.Arrays;

/* JADX INFO: loaded from: classes22.dex */
public class VectorValue {
    private final double[] values;

    VectorValue(double[] values) {
        this.values = values == null ? new double[0] : (double[]) values.clone();
    }

    public double[] toArray() {
        return (double[]) this.values.clone();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        VectorValue otherArray = (VectorValue) obj;
        return Arrays.equals(this.values, otherArray.values);
    }

    public int hashCode() {
        return Arrays.hashCode(this.values);
    }
}
