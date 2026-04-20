package j$.jdk.internal.util;

import j$.time.Duration;
import java.util.List;
import java.util.function.BiFunction;
import java.util.function.Function;

/* JADX INFO: loaded from: classes19.dex */
public class Preconditions {
    private static RuntimeException outOfBounds(BiFunction<String, List<Integer>, ? extends RuntimeException> oobef, String checkKind, Integer... args) {
        List<Integer> largs = Duration.DurationUnits.AnonymousClass0.m(args);
        RuntimeException e = oobef == null ? null : oobef.apply(checkKind, largs);
        return e == null ? new IndexOutOfBoundsException(outOfBoundsMessage(checkKind, largs)) : e;
    }

    private static RuntimeException outOfBoundsCheckIndex(BiFunction<String, List<Integer>, ? extends RuntimeException> oobe, int index, int length) {
        return outOfBounds(oobe, "checkIndex", Integer.valueOf(index), Integer.valueOf(length));
    }

    private static RuntimeException outOfBoundsCheckFromToIndex(BiFunction<String, List<Integer>, ? extends RuntimeException> oobe, int fromIndex, int toIndex, int length) {
        return outOfBounds(oobe, "checkFromToIndex", Integer.valueOf(fromIndex), Integer.valueOf(toIndex), Integer.valueOf(length));
    }

    private static RuntimeException outOfBoundsCheckFromIndexSize(BiFunction<String, List<Integer>, ? extends RuntimeException> oobe, int fromIndex, int size, int length) {
        return outOfBounds(oobe, "checkFromIndexSize", Integer.valueOf(fromIndex), Integer.valueOf(size), Integer.valueOf(length));
    }

    public static <X extends RuntimeException> BiFunction<String, List<Integer>, X> outOfBoundsExceptionFormatter(final Function<String, X> function) {
        return (BiFunction<String, List<Integer>, X>) new BiFunction<String, List<Integer>, X>() { // from class: j$.jdk.internal.util.Preconditions.1
            @Override // java.util.function.BiFunction
            public /* bridge */ /* synthetic */ Object apply(String str, List<Integer> list) {
                return apply2(str, (List) list);
            }

            /* JADX WARN: Incorrect return type in method signature: (Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;)TX; */
            /* JADX INFO: renamed from: apply, reason: avoid collision after fix types in other method */
            public RuntimeException apply2(String checkKind, List list) {
                return (RuntimeException) function.apply(Preconditions.outOfBoundsMessage(checkKind, list));
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String outOfBoundsMessage(String checkKind, List<Integer> args) {
        int argSize;
        if (checkKind == null && args == null) {
            return String.format("Range check failed", new Object[0]);
        }
        if (checkKind == null) {
            return String.format("Range check failed: %s", args);
        }
        if (args == null) {
            return String.format("Range check failed: %s", checkKind);
        }
        argSize = 0;
        switch (checkKind) {
            case "checkIndex":
                argSize = 2;
                break;
            case "checkFromToIndex":
            case "checkFromIndexSize":
                argSize = 3;
                break;
        }
        switch (args.size() != argSize ? "" : checkKind) {
            case "checkIndex":
                return String.format("Index %d out of bounds for length %d", args.get(0), args.get(1));
            case "checkFromToIndex":
                return String.format("Range [%d, %d) out of bounds for length %d", args.get(0), args.get(1), args.get(2));
            case "checkFromIndexSize":
                return String.format("Range [%d, %<d + %d) out of bounds for length %d", args.get(0), args.get(1), args.get(2));
            default:
                return String.format("Range check failed: %s %s", checkKind, args);
        }
    }

    public static <X extends RuntimeException> int checkIndex(int index, int length, BiFunction<String, List<Integer>, X> oobef) {
        if (index < 0 || index >= length) {
            throw outOfBoundsCheckIndex(oobef, index, length);
        }
        return index;
    }

    public static <X extends RuntimeException> int checkFromToIndex(int fromIndex, int toIndex, int length, BiFunction<String, List<Integer>, X> oobef) {
        if (fromIndex < 0 || fromIndex > toIndex || toIndex > length) {
            throw outOfBoundsCheckFromToIndex(oobef, fromIndex, toIndex, length);
        }
        return fromIndex;
    }

    public static <X extends RuntimeException> int checkFromIndexSize(int fromIndex, int size, int length, BiFunction<String, List<Integer>, X> oobef) {
        if ((length | fromIndex | size) < 0 || size > length - fromIndex) {
            throw outOfBoundsCheckFromIndexSize(oobef, fromIndex, size, length);
        }
        return fromIndex;
    }
}
