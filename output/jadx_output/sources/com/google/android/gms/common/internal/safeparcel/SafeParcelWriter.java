package com.google.android.gms.common.internal.safeparcel;

import android.app.PendingIntent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import android.util.SparseLongArray;
import androidx.core.internal.view.SupportMenu;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.9.0 */
/* JADX INFO: loaded from: classes21.dex */
public class SafeParcelWriter {
    private SafeParcelWriter() {
    }

    public static int beginObjectHeader(Parcel p) {
        return zzb(p, 20293);
    }

    public static void finishObjectHeader(Parcel p, int start) {
        zzc(p, start);
    }

    public static void writeBigDecimal(Parcel p, int id, BigDecimal val, boolean writeNull) {
        if (val == null) {
            if (writeNull) {
                zza(p, id, 0);
            }
        } else {
            int iZzb = zzb(p, id);
            p.writeByteArray(val.unscaledValue().toByteArray());
            p.writeInt(val.scale());
            zzc(p, iZzb);
        }
    }

    public static void writeBigDecimalArray(Parcel p, int id, BigDecimal[] val, boolean writeNull) {
        if (val == null) {
            if (writeNull) {
                zza(p, id, 0);
                return;
            }
            return;
        }
        int iZzb = zzb(p, id);
        int length = val.length;
        p.writeInt(length);
        for (int i = 0; i < length; i++) {
            p.writeByteArray(val[i].unscaledValue().toByteArray());
            p.writeInt(val[i].scale());
        }
        zzc(p, iZzb);
    }

    public static void writeBigInteger(Parcel p, int id, BigInteger val, boolean writeNull) {
        if (val == null) {
            if (writeNull) {
                zza(p, id, 0);
            }
        } else {
            int iZzb = zzb(p, id);
            p.writeByteArray(val.toByteArray());
            zzc(p, iZzb);
        }
    }

    public static void writeBigIntegerArray(Parcel p, int id, BigInteger[] val, boolean writeNull) {
        if (val == null) {
            if (writeNull) {
                zza(p, id, 0);
                return;
            }
            return;
        }
        int iZzb = zzb(p, id);
        p.writeInt(val.length);
        for (BigInteger bigInteger : val) {
            p.writeByteArray(bigInteger.toByteArray());
        }
        zzc(p, iZzb);
    }

    public static void writeBoolean(Parcel parcel, int i, boolean z) {
        zza(parcel, i, 4);
        parcel.writeInt(z ? 1 : 0);
    }

    public static void writeBooleanArray(Parcel p, int id, boolean[] val, boolean writeNull) {
        if (val == null) {
            if (writeNull) {
                zza(p, id, 0);
            }
        } else {
            int iZzb = zzb(p, id);
            p.writeBooleanArray(val);
            zzc(p, iZzb);
        }
    }

    public static void writeBooleanList(Parcel parcel, int i, List<Boolean> list, boolean z) {
        if (list == null) {
            if (z) {
                zza(parcel, i, 0);
                return;
            }
            return;
        }
        int iZzb = zzb(parcel, i);
        int size = list.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            parcel.writeInt(list.get(i2).booleanValue() ? 1 : 0);
        }
        zzc(parcel, iZzb);
    }

    public static void writeBooleanObject(Parcel parcel, int i, Boolean bool, boolean z) {
        if (bool != null) {
            zza(parcel, i, 4);
            parcel.writeInt(bool.booleanValue() ? 1 : 0);
        } else if (z) {
            zza(parcel, i, 0);
        }
    }

    public static void writeBundle(Parcel p, int id, Bundle val, boolean writeNull) {
        if (val == null) {
            if (writeNull) {
                zza(p, id, 0);
            }
        } else {
            int iZzb = zzb(p, id);
            p.writeBundle(val);
            zzc(p, iZzb);
        }
    }

    public static void writeByte(Parcel p, int id, byte val) {
        zza(p, id, 4);
        p.writeInt(val);
    }

    public static void writeByteArray(Parcel p, int id, byte[] buf, boolean writeNull) {
        if (buf == null) {
            if (writeNull) {
                zza(p, id, 0);
            }
        } else {
            int iZzb = zzb(p, id);
            p.writeByteArray(buf);
            zzc(p, iZzb);
        }
    }

    public static void writeByteArrayArray(Parcel p, int id, byte[][] buf, boolean writeNull) {
        if (buf == null) {
            if (writeNull) {
                zza(p, id, 0);
                return;
            }
            return;
        }
        int iZzb = zzb(p, id);
        p.writeInt(buf.length);
        for (byte[] bArr : buf) {
            p.writeByteArray(bArr);
        }
        zzc(p, iZzb);
    }

    public static void writeByteArraySparseArray(Parcel p, int id, SparseArray<byte[]> sparseArray, boolean writeNull) {
        if (sparseArray == null) {
            if (writeNull) {
                zza(p, id, 0);
                return;
            }
            return;
        }
        int iZzb = zzb(p, id);
        int size = sparseArray.size();
        p.writeInt(size);
        for (int i = 0; i < size; i++) {
            p.writeInt(sparseArray.keyAt(i));
            p.writeByteArray(sparseArray.valueAt(i));
        }
        zzc(p, iZzb);
    }

    public static void writeChar(Parcel p, int id, char val) {
        zza(p, id, 4);
        p.writeInt(val);
    }

    public static void writeCharArray(Parcel p, int id, char[] val, boolean writeNull) {
        if (val == null) {
            if (writeNull) {
                zza(p, id, 0);
            }
        } else {
            int iZzb = zzb(p, id);
            p.writeCharArray(val);
            zzc(p, iZzb);
        }
    }

    public static void writeDouble(Parcel p, int id, double val) {
        zza(p, id, 8);
        p.writeDouble(val);
    }

    public static void writeDoubleArray(Parcel p, int id, double[] val, boolean writeNull) {
        if (val == null) {
            if (writeNull) {
                zza(p, id, 0);
            }
        } else {
            int iZzb = zzb(p, id);
            p.writeDoubleArray(val);
            zzc(p, iZzb);
        }
    }

    public static void writeDoubleList(Parcel p, int id, List<Double> list, boolean writeNull) {
        if (list == null) {
            if (writeNull) {
                zza(p, id, 0);
                return;
            }
            return;
        }
        int iZzb = zzb(p, id);
        int size = list.size();
        p.writeInt(size);
        for (int i = 0; i < size; i++) {
            p.writeDouble(list.get(i).doubleValue());
        }
        zzc(p, iZzb);
    }

    public static void writeDoubleObject(Parcel p, int id, Double val, boolean writeNull) {
        if (val != null) {
            zza(p, id, 8);
            p.writeDouble(val.doubleValue());
        } else if (writeNull) {
            zza(p, id, 0);
        }
    }

    public static void writeDoubleSparseArray(Parcel p, int id, SparseArray<Double> sparseArray, boolean writeNull) {
        if (sparseArray == null) {
            if (writeNull) {
                zza(p, id, 0);
                return;
            }
            return;
        }
        int iZzb = zzb(p, id);
        int size = sparseArray.size();
        p.writeInt(size);
        for (int i = 0; i < size; i++) {
            p.writeInt(sparseArray.keyAt(i));
            p.writeDouble(sparseArray.valueAt(i).doubleValue());
        }
        zzc(p, iZzb);
    }

    public static void writeFloat(Parcel p, int id, float val) {
        zza(p, id, 4);
        p.writeFloat(val);
    }

    public static void writeFloatArray(Parcel p, int id, float[] val, boolean writeNull) {
        if (val == null) {
            if (writeNull) {
                zza(p, id, 0);
            }
        } else {
            int iZzb = zzb(p, id);
            p.writeFloatArray(val);
            zzc(p, iZzb);
        }
    }

    public static void writeFloatList(Parcel p, int id, List<Float> list, boolean writeNull) {
        if (list == null) {
            if (writeNull) {
                zza(p, id, 0);
                return;
            }
            return;
        }
        int iZzb = zzb(p, id);
        int size = list.size();
        p.writeInt(size);
        for (int i = 0; i < size; i++) {
            p.writeFloat(list.get(i).floatValue());
        }
        zzc(p, iZzb);
    }

    public static void writeFloatObject(Parcel p, int id, Float val, boolean writeNull) {
        if (val != null) {
            zza(p, id, 4);
            p.writeFloat(val.floatValue());
        } else if (writeNull) {
            zza(p, id, 0);
        }
    }

    public static void writeFloatSparseArray(Parcel p, int id, SparseArray<Float> sparseArray, boolean writeNull) {
        if (sparseArray == null) {
            if (writeNull) {
                zza(p, id, 0);
                return;
            }
            return;
        }
        int iZzb = zzb(p, id);
        int size = sparseArray.size();
        p.writeInt(size);
        for (int i = 0; i < size; i++) {
            p.writeInt(sparseArray.keyAt(i));
            p.writeFloat(sparseArray.valueAt(i).floatValue());
        }
        zzc(p, iZzb);
    }

    public static void writeIBinder(Parcel p, int id, IBinder val, boolean writeNull) {
        if (val == null) {
            if (writeNull) {
                zza(p, id, 0);
            }
        } else {
            int iZzb = zzb(p, id);
            p.writeStrongBinder(val);
            zzc(p, iZzb);
        }
    }

    public static void writeIBinderArray(Parcel p, int id, IBinder[] val, boolean writeNull) {
        if (val == null) {
            if (writeNull) {
                zza(p, id, 0);
            }
        } else {
            int iZzb = zzb(p, id);
            p.writeBinderArray(val);
            zzc(p, iZzb);
        }
    }

    public static void writeIBinderList(Parcel p, int id, List<IBinder> list, boolean writeNull) {
        if (list == null) {
            if (writeNull) {
                zza(p, id, 0);
            }
        } else {
            int iZzb = zzb(p, id);
            p.writeBinderList(list);
            zzc(p, iZzb);
        }
    }

    public static void writeIBinderSparseArray(Parcel p, int id, SparseArray<IBinder> sparseArray, boolean writeNull) {
        if (sparseArray == null) {
            if (writeNull) {
                zza(p, id, 0);
                return;
            }
            return;
        }
        int iZzb = zzb(p, id);
        int size = sparseArray.size();
        p.writeInt(size);
        for (int i = 0; i < size; i++) {
            p.writeInt(sparseArray.keyAt(i));
            p.writeStrongBinder(sparseArray.valueAt(i));
        }
        zzc(p, iZzb);
    }

    public static void writeInt(Parcel p, int id, int val) {
        zza(p, id, 4);
        p.writeInt(val);
    }

    public static void writeIntArray(Parcel p, int id, int[] val, boolean writeNull) {
        if (val == null) {
            if (writeNull) {
                zza(p, id, 0);
            }
        } else {
            int iZzb = zzb(p, id);
            p.writeIntArray(val);
            zzc(p, iZzb);
        }
    }

    public static void writeIntegerList(Parcel p, int id, List<Integer> list, boolean writeNull) {
        if (list == null) {
            if (writeNull) {
                zza(p, id, 0);
                return;
            }
            return;
        }
        int iZzb = zzb(p, id);
        int size = list.size();
        p.writeInt(size);
        for (int i = 0; i < size; i++) {
            p.writeInt(list.get(i).intValue());
        }
        zzc(p, iZzb);
    }

    public static void writeIntegerObject(Parcel p, int id, Integer val, boolean writeNull) {
        if (val != null) {
            zza(p, id, 4);
            p.writeInt(val.intValue());
        } else if (writeNull) {
            zza(p, id, 0);
        }
    }

    public static void writeList(Parcel p, int id, List list, boolean writeNull) {
        if (list == null) {
            if (writeNull) {
                zza(p, id, 0);
            }
        } else {
            int iZzb = zzb(p, id);
            p.writeList(list);
            zzc(p, iZzb);
        }
    }

    public static void writeLong(Parcel p, int id, long val) {
        zza(p, id, 8);
        p.writeLong(val);
    }

    public static void writeLongArray(Parcel p, int id, long[] val, boolean writeNull) {
        if (val == null) {
            if (writeNull) {
                zza(p, id, 0);
            }
        } else {
            int iZzb = zzb(p, id);
            p.writeLongArray(val);
            zzc(p, iZzb);
        }
    }

    public static void writeLongList(Parcel p, int id, List<Long> list, boolean writeNull) {
        if (list == null) {
            if (writeNull) {
                zza(p, id, 0);
                return;
            }
            return;
        }
        int iZzb = zzb(p, id);
        int size = list.size();
        p.writeInt(size);
        for (int i = 0; i < size; i++) {
            p.writeLong(list.get(i).longValue());
        }
        zzc(p, iZzb);
    }

    public static void writeLongObject(Parcel p, int id, Long val, boolean writeNull) {
        if (val != null) {
            zza(p, id, 8);
            p.writeLong(val.longValue());
        } else if (writeNull) {
            zza(p, id, 0);
        }
    }

    public static void writeParcel(Parcel p, int id, Parcel val, boolean writeNull) {
        if (val == null) {
            if (writeNull) {
                zza(p, id, 0);
            }
        } else {
            int iZzb = zzb(p, id);
            p.appendFrom(val, 0, val.dataSize());
            zzc(p, iZzb);
        }
    }

    public static void writeParcelArray(Parcel p, int id, Parcel[] val, boolean writeNull) {
        if (val == null) {
            if (writeNull) {
                zza(p, id, 0);
                return;
            }
            return;
        }
        int iZzb = zzb(p, id);
        p.writeInt(val.length);
        for (Parcel parcel : val) {
            if (parcel != null) {
                p.writeInt(parcel.dataSize());
                p.appendFrom(parcel, 0, parcel.dataSize());
            } else {
                p.writeInt(0);
            }
        }
        zzc(p, iZzb);
    }

    public static void writeParcelList(Parcel p, int id, List<Parcel> list, boolean writeNull) {
        if (list == null) {
            if (writeNull) {
                zza(p, id, 0);
                return;
            }
            return;
        }
        int iZzb = zzb(p, id);
        int size = list.size();
        p.writeInt(size);
        for (int i = 0; i < size; i++) {
            Parcel parcel = list.get(i);
            if (parcel != null) {
                p.writeInt(parcel.dataSize());
                p.appendFrom(parcel, 0, parcel.dataSize());
            } else {
                p.writeInt(0);
            }
        }
        zzc(p, iZzb);
    }

    public static void writeParcelSparseArray(Parcel p, int id, SparseArray<Parcel> sparseArray, boolean writeNull) {
        if (sparseArray == null) {
            if (writeNull) {
                zza(p, id, 0);
                return;
            }
            return;
        }
        int iZzb = zzb(p, id);
        int size = sparseArray.size();
        p.writeInt(size);
        for (int i = 0; i < size; i++) {
            p.writeInt(sparseArray.keyAt(i));
            Parcel parcelValueAt = sparseArray.valueAt(i);
            if (parcelValueAt != null) {
                p.writeInt(parcelValueAt.dataSize());
                p.appendFrom(parcelValueAt, 0, parcelValueAt.dataSize());
            } else {
                p.writeInt(0);
            }
        }
        zzc(p, iZzb);
    }

    public static void writeParcelable(Parcel p, int id, Parcelable val, int parcelableFlags, boolean writeNull) {
        if (val == null) {
            if (writeNull) {
                zza(p, id, 0);
            }
        } else {
            int iZzb = zzb(p, id);
            val.writeToParcel(p, parcelableFlags);
            zzc(p, iZzb);
        }
    }

    public static void writePendingIntent(Parcel p, int id, PendingIntent val, boolean writeNull) {
        if (val == null) {
            if (writeNull) {
                zza(p, id, 0);
            }
        } else {
            int iZzb = zzb(p, id);
            PendingIntent.writePendingIntentOrNullToParcel(val, p);
            zzc(p, iZzb);
        }
    }

    public static void writeShort(Parcel p, int id, short val) {
        zza(p, id, 4);
        p.writeInt(val);
    }

    public static void writeSparseBooleanArray(Parcel p, int id, SparseBooleanArray val, boolean writeNull) {
        if (val == null) {
            if (writeNull) {
                zza(p, id, 0);
            }
        } else {
            int iZzb = zzb(p, id);
            p.writeSparseBooleanArray(val);
            zzc(p, iZzb);
        }
    }

    public static void writeSparseIntArray(Parcel p, int id, SparseIntArray val, boolean writeNull) {
        if (val == null) {
            if (writeNull) {
                zza(p, id, 0);
                return;
            }
            return;
        }
        int iZzb = zzb(p, id);
        int size = val.size();
        p.writeInt(size);
        for (int i = 0; i < size; i++) {
            p.writeInt(val.keyAt(i));
            p.writeInt(val.valueAt(i));
        }
        zzc(p, iZzb);
    }

    public static void writeSparseLongArray(Parcel p, int id, SparseLongArray val, boolean writeNull) {
        if (val == null) {
            if (writeNull) {
                zza(p, id, 0);
                return;
            }
            return;
        }
        int iZzb = zzb(p, id);
        int size = val.size();
        p.writeInt(size);
        for (int i = 0; i < size; i++) {
            p.writeInt(val.keyAt(i));
            p.writeLong(val.valueAt(i));
        }
        zzc(p, iZzb);
    }

    public static void writeString(Parcel p, int id, String val, boolean writeNull) {
        if (val == null) {
            if (writeNull) {
                zza(p, id, 0);
            }
        } else {
            int iZzb = zzb(p, id);
            p.writeString(val);
            zzc(p, iZzb);
        }
    }

    public static void writeStringArray(Parcel p, int id, String[] val, boolean writeNull) {
        if (val == null) {
            if (writeNull) {
                zza(p, id, 0);
            }
        } else {
            int iZzb = zzb(p, id);
            p.writeStringArray(val);
            zzc(p, iZzb);
        }
    }

    public static void writeStringList(Parcel p, int id, List<String> list, boolean writeNull) {
        if (list == null) {
            if (writeNull) {
                zza(p, id, 0);
            }
        } else {
            int iZzb = zzb(p, id);
            p.writeStringList(list);
            zzc(p, iZzb);
        }
    }

    public static void writeStringSparseArray(Parcel p, int id, SparseArray<String> sparseArray, boolean writeNull) {
        if (sparseArray == null) {
            if (writeNull) {
                zza(p, id, 0);
                return;
            }
            return;
        }
        int iZzb = zzb(p, id);
        int size = sparseArray.size();
        p.writeInt(size);
        for (int i = 0; i < size; i++) {
            p.writeInt(sparseArray.keyAt(i));
            p.writeString(sparseArray.valueAt(i));
        }
        zzc(p, iZzb);
    }

    public static <T extends Parcelable> void writeTypedArray(Parcel p, int id, T[] tArr, int parcelableFlags, boolean writeNull) {
        if (tArr == null) {
            if (writeNull) {
                zza(p, id, 0);
                return;
            }
            return;
        }
        int iZzb = zzb(p, id);
        p.writeInt(tArr.length);
        for (T t : tArr) {
            if (t == null) {
                p.writeInt(0);
            } else {
                zzd(p, t, parcelableFlags);
            }
        }
        zzc(p, iZzb);
    }

    public static <T extends Parcelable> void writeTypedList(Parcel p, int id, List<T> list, boolean writeNull) {
        if (list == null) {
            if (writeNull) {
                zza(p, id, 0);
                return;
            }
            return;
        }
        int iZzb = zzb(p, id);
        int size = list.size();
        p.writeInt(size);
        for (int i = 0; i < size; i++) {
            T t = list.get(i);
            if (t == null) {
                p.writeInt(0);
            } else {
                zzd(p, t, 0);
            }
        }
        zzc(p, iZzb);
    }

    public static <T extends Parcelable> void writeTypedSparseArray(Parcel p, int id, SparseArray<T> sparseArray, boolean writeNull) {
        if (sparseArray == null) {
            if (writeNull) {
                zza(p, id, 0);
                return;
            }
            return;
        }
        int iZzb = zzb(p, id);
        int size = sparseArray.size();
        p.writeInt(size);
        for (int i = 0; i < size; i++) {
            p.writeInt(sparseArray.keyAt(i));
            T tValueAt = sparseArray.valueAt(i);
            if (tValueAt == null) {
                p.writeInt(0);
            } else {
                zzd(p, tValueAt, 0);
            }
        }
        zzc(p, iZzb);
    }

    private static void zza(Parcel parcel, int i, int i2) {
        parcel.writeInt(i | (i2 << 16));
    }

    private static int zzb(Parcel parcel, int i) {
        parcel.writeInt(i | SupportMenu.CATEGORY_MASK);
        parcel.writeInt(0);
        return parcel.dataPosition();
    }

    private static void zzc(Parcel parcel, int i) {
        int iDataPosition = parcel.dataPosition();
        parcel.setDataPosition(i - 4);
        parcel.writeInt(iDataPosition - i);
        parcel.setDataPosition(iDataPosition);
    }

    private static void zzd(Parcel parcel, Parcelable parcelable, int i) {
        int iDataPosition = parcel.dataPosition();
        parcel.writeInt(1);
        int iDataPosition2 = parcel.dataPosition();
        parcelable.writeToParcel(parcel, i);
        int iDataPosition3 = parcel.dataPosition();
        parcel.setDataPosition(iDataPosition);
        parcel.writeInt(iDataPosition3 - iDataPosition2);
        parcel.setDataPosition(iDataPosition3);
    }
}
