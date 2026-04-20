package androidx.compose.ui.graphics.vector;

import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.graphics.Path;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PathParser.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0014\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u0010\f\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u000eJ8\u0010\u000f\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u0005j\b\u0012\u0004\u0012\u00020\u0006`\u00072\u0006\u0010\r\u001a\u00020\u000e2\u0018\b\u0002\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u0005j\b\u0012\u0004\u0012\u00020\u0006`\u0007J\u0011\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u0012H\u0082\bJ\u0014\u0010\u0013\u001a\u00020\u00002\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0014J\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00060\u0014J\u0010\u0010\u0016\u001a\u00020\u00172\b\b\u0002\u0010\u0018\u001a\u00020\u0017R\"\u0010\u0004\u001a\u0016\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005j\n\u0012\u0004\u0012\u00020\u0006\u0018\u0001`\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Landroidx/compose/ui/graphics/vector/PathParser;", "", "<init>", "()V", "nodes", "Ljava/util/ArrayList;", "Landroidx/compose/ui/graphics/vector/PathNode;", "Lkotlin/collections/ArrayList;", "nodeData", "", "clear", "", "parsePathString", "pathData", "", "pathStringToNodes", "resizeNodeData", "dataCount", "", "addPathNodes", "", "toNodes", "toPath", "Landroidx/compose/ui/graphics/Path;", "target", "ui-graphics"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class PathParser {
    public static final int $stable = 8;
    private float[] nodeData = new float[64];
    private ArrayList<PathNode> nodes;

    public final void clear() {
        ArrayList<PathNode> arrayList = this.nodes;
        if (arrayList != null) {
            arrayList.clear();
        }
    }

    public final PathParser parsePathString(String pathData) {
        ArrayList<PathNode> arrayList = this.nodes;
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            this.nodes = arrayList;
        } else {
            arrayList.clear();
        }
        pathStringToNodes(pathData, arrayList);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ArrayList pathStringToNodes$default(PathParser pathParser, String str, ArrayList arrayList, int i, Object obj) {
        if ((i & 2) != 0) {
            arrayList = new ArrayList();
        }
        return pathParser.pathStringToNodes(str, arrayList);
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x00f9 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final ArrayList<PathNode> pathStringToNodes(String pathData, ArrayList<PathNode> nodes) {
        int i;
        int index;
        int start;
        int i2;
        long result;
        float value;
        int start2;
        int start3 = 0;
        int end = pathData.length();
        int dataCount = 0;
        while (true) {
            i = 32;
            if (start3 >= end || Intrinsics.compare((int) pathData.charAt(start3), 32) > 0) {
                break;
            }
            start3++;
        }
        while (end > start3 && Intrinsics.compare((int) pathData.charAt(end - 1), 32) <= 0) {
            end--;
        }
        int index2 = start3;
        while (index2 < end) {
            char command = 0;
            while (true) {
                index = index2 + 1;
                char c = pathData.charAt(index2);
                int lowerChar = c | ' ';
                if ((lowerChar - 97) * (lowerChar - 122) <= 0 && lowerChar != 101) {
                    command = c;
                    break;
                }
                if (index >= end) {
                    break;
                }
                index2 = index;
            }
            if (command != 0) {
                if ((command | ' ') == 122) {
                    start = start3;
                    i2 = i;
                } else {
                    int dataCount2 = 0;
                    while (index < end && Intrinsics.compare((int) pathData.charAt(index), i) <= 0) {
                        index++;
                    }
                    boolean isThisAnArcCommand = (command | ' ') == 97;
                    while (true) {
                        if (isThisAnArcCommand) {
                            int i3 = dataCount2 - 0;
                            if (3 <= i3 && i3 < 5) {
                                result = FastFloatParserKt.nextFloat(pathData, index, Math.min(index + 1, end));
                            }
                            long $this$index$iv = result;
                            int index3 = (int) ($this$index$iv >>> i);
                            boolean isThisAnArcCommand2 = isThisAnArcCommand;
                            int bits$iv$iv = (int) (result & 4294967295L);
                            value = Float.intBitsToFloat(bits$iv$iv);
                            if (!Float.isNaN(value)) {
                            }
                            while (true) {
                                if (index < end) {
                                }
                                index++;
                            }
                            if (index >= end) {
                                break;
                            }
                            break;
                            break;
                        }
                        result = FastFloatParserKt.nextFloat(pathData, index, end);
                        long $this$index$iv2 = result;
                        int index32 = (int) ($this$index$iv2 >>> i);
                        boolean isThisAnArcCommand22 = isThisAnArcCommand;
                        int bits$iv$iv2 = (int) (result & 4294967295L);
                        value = Float.intBitsToFloat(bits$iv$iv2);
                        if (!Float.isNaN(value)) {
                            start = start3;
                            start2 = dataCount2;
                            index = index32;
                        } else {
                            int dataCount3 = dataCount2 + 1;
                            this.nodeData[dataCount2] = value;
                            if (dataCount3 < this.nodeData.length) {
                                start = start3;
                            } else {
                                float[] src$iv = this.nodeData;
                                this.nodeData = new float[dataCount3 * 2];
                                float[] fArr = this.nodeData;
                                start = start3;
                                int start4 = src$iv.length;
                                ArraysKt.copyInto(src$iv, fArr, 0, 0, start4);
                            }
                            start2 = dataCount3;
                            index = index32;
                        }
                        while (true) {
                            if (index < end) {
                                i2 = 32;
                                break;
                            }
                            i2 = 32;
                            if (Intrinsics.compare((int) pathData.charAt(index), 32) > 0 && pathData.charAt(index) != ',') {
                                break;
                            }
                            index++;
                        }
                        if (index >= end || Float.isNaN(value)) {
                            break;
                        }
                        dataCount2 = start2;
                        i = i2;
                        start3 = start;
                        isThisAnArcCommand = isThisAnArcCommand22;
                    }
                    dataCount = start2;
                }
                index2 = index;
                PathNodeKt.addPathNodes(command, nodes, this.nodeData, dataCount);
                i = i2;
                start3 = start;
            } else {
                index2 = index;
            }
        }
        return nodes;
    }

    private final void resizeNodeData(int dataCount) {
        if (dataCount >= this.nodeData.length) {
            float[] src = this.nodeData;
            this.nodeData = new float[dataCount * 2];
            ArraysKt.copyInto(src, this.nodeData, 0, 0, src.length);
        }
    }

    public final PathParser addPathNodes(List<? extends PathNode> nodes) {
        ArrayList<PathNode> arrayList = this.nodes;
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            this.nodes = arrayList;
        }
        arrayList.addAll(nodes);
        return this;
    }

    public final List<PathNode> toNodes() {
        ArrayList<PathNode> arrayList = this.nodes;
        return arrayList != null ? arrayList : CollectionsKt.emptyList();
    }

    public static /* synthetic */ Path toPath$default(PathParser pathParser, Path path, int i, Object obj) {
        if ((i & 1) != 0) {
            path = AndroidPath_androidKt.Path();
        }
        return pathParser.toPath(path);
    }

    public final Path toPath(Path target) {
        Path path;
        ArrayList<PathNode> arrayList = this.nodes;
        return (arrayList == null || (path = PathParserKt.toPath(arrayList, target)) == null) ? AndroidPath_androidKt.Path() : path;
    }
}
