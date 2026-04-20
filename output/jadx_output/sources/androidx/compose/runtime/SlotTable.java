package androidx.compose.runtime;

import androidx.autofill.HintConstants;
import androidx.collection.MutableIntObjectMap;
import androidx.collection.MutableIntSet;
import androidx.compose.runtime.tooling.CompositionData;
import androidx.compose.runtime.tooling.CompositionGroup;
import androidx.exifinterface.media.ExifInterface;
import androidx.media3.common.C;
import com.google.firebase.firestore.model.Values;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: SlotTable.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000°\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u001c\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0015\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010(\n\u0002\b\u0003\b\u0001\u0018\u00002\u00020\u00012\b\u0012\u0004\u0012\u00020\u00030\u0002B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J7\u0010;\u001a\u0002H<\"\u0004\b\u0000\u0010<2!\u0010=\u001a\u001d\u0012\u0013\u0012\u00110?¢\u0006\f\b@\u0012\b\bA\u0012\u0004\b\b(B\u0012\u0004\u0012\u0002H<0>H\u0086\b¢\u0006\u0002\u0010CJ7\u0010D\u001a\u0002H<\"\u0004\b\u0000\u0010<2!\u0010=\u001a\u001d\u0012\u0013\u0012\u00110E¢\u0006\f\b@\u0012\b\bA\u0012\u0004\b\b(\u001c\u0012\u0004\u0012\u0002H<0>H\u0086\b¢\u0006\u0002\u0010CJ\u0006\u0010F\u001a\u00020?J\u0006\u0010G\u001a\u00020EJ\u000e\u0010H\u001a\u00020%2\u0006\u0010I\u001a\u00020\u000bJ\u0012\u0010J\u001a\u0004\u0018\u00010%2\u0006\u0010I\u001a\u00020\u000bH\u0002J\u000e\u0010K\u001a\u00020\u000b2\u0006\u0010H\u001a\u00020%J\u000e\u0010L\u001a\u00020\u001b2\u0006\u0010H\u001a\u00020%J\u0016\u0010M\u001a\u00020\u001b2\u0006\u0010N\u001a\u00020\u000b2\u0006\u0010H\u001a\u00020%J=\u0010O\u001a\u00020P2\u0006\u0010B\u001a\u00020?2&\u0010+\u001a\"\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020-\u0018\u00010,j\u0010\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020-\u0018\u0001`.H\u0000¢\u0006\u0002\bQJ\u008f\u0001\u0010O\u001a\u00020P2\u0006\u0010\u001c\u001a\u00020E2\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u000b2\u000e\u0010\u0011\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000f2\u0006\u0010\u0015\u001a\u00020\u000b2\u0016\u0010#\u001a\u0012\u0012\u0004\u0012\u00020%0$j\b\u0012\u0004\u0012\u00020%`&2&\u0010+\u001a\"\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020-\u0018\u00010,j\u0010\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020-\u0018\u0001`.2\u000e\u00103\u001a\n\u0012\u0004\u0012\u000205\u0018\u000104H\u0000¢\u0006\u0004\bQ\u0010RJ\u0087\u0001\u0010S\u001a\u00020P2\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u000b2\u000e\u0010\u0011\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000f2\u0006\u0010\u0015\u001a\u00020\u000b2\u0016\u0010#\u001a\u0012\u0012\u0004\u0012\u00020%0$j\b\u0012\u0004\u0012\u00020%`&2&\u0010+\u001a\"\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020-\u0018\u00010,j\u0010\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020-\u0018\u0001`.2\u000e\u00103\u001a\n\u0012\u0004\u0012\u000205\u0018\u000104H\u0000¢\u0006\u0004\bT\u0010UJ\u001d\u0010V\u001a\n\u0012\u0004\u0012\u00020X\u0018\u00010W2\u0006\u0010Y\u001a\u00020\u000bH\u0000¢\u0006\u0002\bZJ\u0006\u0010[\u001a\u00020\u001bJ\u0010\u0010\\\u001a\u0004\u0018\u00010-2\u0006\u0010]\u001a\u00020\u000bJ\u0012\u0010^\u001a\u0004\u0018\u00010X2\u0006\u0010]\u001a\u00020\u000bH\u0002J\u0006\u0010_\u001a\u00020PJ\u0006\u0010`\u001a\u00020PJ\u0006\u0010a\u001a\u00020PJ\u0006\u0010b\u001a\u00020cJ \u0010d\u001a\u00020\u000b*\u00060ej\u0002`f2\u0006\u0010I\u001a\u00020\u000b2\u0006\u0010g\u001a\u00020\u000bH\u0002J\u000e\u0010h\u001a\b\u0012\u0004\u0012\u00020\u000b0WH\u0002J\u000e\u0010i\u001a\b\u0012\u0004\u0012\u00020\u000b0WH\u0002J\u000e\u0010j\u001a\b\u0012\u0004\u0012\u00020\u000b0WH\u0002J\u000e\u0010k\u001a\b\u0012\u0004\u0012\u00020\u000b0WH\u0002J\u000e\u0010l\u001a\b\u0012\u0004\u0012\u00020\u000b0WH\u0002J\u001d\u0010m\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100W2\u0006\u0010]\u001a\u00020\u000bH\u0000¢\u0006\u0002\bnJ\u001f\u0010o\u001a\u0004\u0018\u00010\u00102\u0006\u0010]\u001a\u00020\u000b2\u0006\u0010p\u001a\u00020\u000bH\u0000¢\u0006\u0002\bqJ\u000f\u0010u\u001a\b\u0012\u0004\u0012\u00020\u00030vH\u0096\u0002J\u0012\u0010w\u001a\u0004\u0018\u00010\u00032\u0006\u0010x\u001a\u00020\u0010H\u0016R\u001e\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0007@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u001e\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u000b@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR0\u0010\u0011\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000f2\u000e\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000f@BX\u0086\u000e¢\u0006\n\n\u0002\u0010\u0014\u001a\u0004\b\u0012\u0010\u0013R\u001e\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u000b@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u000eR\u000e\u0010\u0017\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0018\u001a\u00060\u0010j\u0002`\u0019X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u001aR\u001e\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u0006\u001a\u00020\u001b@BX\u0080\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001eR\u001a\u0010\u001f\u001a\u00020\u000bX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\u000e\"\u0004\b!\u0010\"R*\u0010#\u001a\u0012\u0012\u0004\u0012\u00020%0$j\b\u0012\u0004\u0012\u00020%`&X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*R:\u0010+\u001a\"\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020-\u0018\u00010,j\u0010\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020-\u0018\u0001`.X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b/\u00100\"\u0004\b1\u00102R\"\u00103\u001a\n\u0012\u0004\u0012\u000205\u0018\u000104X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b6\u00107\"\u0004\b8\u00109R\u0014\u0010:\u001a\u00020\u001b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b:\u0010\u001eR\u001a\u0010r\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bs\u0010t¨\u0006y"}, d2 = {"Landroidx/compose/runtime/SlotTable;", "Landroidx/compose/runtime/tooling/CompositionData;", "", "Landroidx/compose/runtime/tooling/CompositionGroup;", "<init>", "()V", Values.VECTOR_MAP_VECTORS_KEY, "", "groups", "getGroups", "()[I", "", "groupsSize", "getGroupsSize", "()I", "", "", "slots", "getSlots", "()[Ljava/lang/Object;", "[Ljava/lang/Object;", "slotsSize", "getSlotsSize", "readers", "lock", "Landroidx/compose/runtime/platform/SynchronizedObject;", "Ljava/lang/Object;", "", "writer", "getWriter$runtime", "()Z", "version", "getVersion$runtime", "setVersion$runtime", "(I)V", "anchors", "Ljava/util/ArrayList;", "Landroidx/compose/runtime/Anchor;", "Lkotlin/collections/ArrayList;", "getAnchors$runtime", "()Ljava/util/ArrayList;", "setAnchors$runtime", "(Ljava/util/ArrayList;)V", "sourceInformationMap", "Ljava/util/HashMap;", "Landroidx/compose/runtime/GroupSourceInformation;", "Lkotlin/collections/HashMap;", "getSourceInformationMap$runtime", "()Ljava/util/HashMap;", "setSourceInformationMap$runtime", "(Ljava/util/HashMap;)V", "calledByMap", "Landroidx/collection/MutableIntObjectMap;", "Landroidx/collection/MutableIntSet;", "getCalledByMap$runtime", "()Landroidx/collection/MutableIntObjectMap;", "setCalledByMap$runtime", "(Landroidx/collection/MutableIntObjectMap;)V", "isEmpty", "read", ExifInterface.GPS_DIRECTION_TRUE, "block", "Lkotlin/Function1;", "Landroidx/compose/runtime/SlotReader;", "Lkotlin/ParameterName;", HintConstants.AUTOFILL_HINT_NAME, "reader", "(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "write", "Landroidx/compose/runtime/SlotWriter;", "openReader", "openWriter", "anchor", "index", "tryAnchor", "anchorIndex", "ownsAnchor", "groupContainsAnchor", "groupIndex", "close", "", "close$runtime", "(Landroidx/compose/runtime/SlotWriter;[II[Ljava/lang/Object;ILjava/util/ArrayList;Ljava/util/HashMap;Landroidx/collection/MutableIntObjectMap;)V", "setTo", "setTo$runtime", "([II[Ljava/lang/Object;ILjava/util/ArrayList;Ljava/util/HashMap;Landroidx/collection/MutableIntObjectMap;)V", "invalidateGroupsWithKey", "", "Landroidx/compose/runtime/RecomposeScopeImpl;", "target", "invalidateGroupsWithKey$runtime", "containsMark", "sourceInformationOf", "group", "findEffectiveRecomposeScope", "verifyWellFormed", "collectCalledByInformation", "collectSourceInformation", "toDebugString", "", "emitGroup", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "level", "keys", "nodes", "parentIndexes", "dataIndexes", "groupSizes", "slotsOf", "slotsOf$runtime", "slot", "slotIndex", "slot$runtime", "compositionGroups", "getCompositionGroups", "()Ljava/lang/Iterable;", "iterator", "", "find", "identityToFind", "runtime"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class SlotTable implements CompositionData, Iterable<CompositionGroup>, KMappedMarker {
    public static final int $stable = 8;
    private MutableIntObjectMap<MutableIntSet> calledByMap;
    private int groupsSize;
    private int readers;
    private int slotsSize;
    private HashMap<Anchor, GroupSourceInformation> sourceInformationMap;
    private int version;
    private boolean writer;
    private int[] groups = new int[0];
    private Object[] slots = new Object[0];
    private final Object lock = new Object();
    private ArrayList<Anchor> anchors = new ArrayList<>();

    public final int[] getGroups() {
        return this.groups;
    }

    public final int getGroupsSize() {
        return this.groupsSize;
    }

    public final Object[] getSlots() {
        return this.slots;
    }

    public final int getSlotsSize() {
        return this.slotsSize;
    }

    /* JADX INFO: renamed from: getWriter$runtime, reason: from getter */
    public final boolean getWriter() {
        return this.writer;
    }

    /* JADX INFO: renamed from: getVersion$runtime, reason: from getter */
    public final int getVersion() {
        return this.version;
    }

    public final void setVersion$runtime(int i) {
        this.version = i;
    }

    public final ArrayList<Anchor> getAnchors$runtime() {
        return this.anchors;
    }

    public final void setAnchors$runtime(ArrayList<Anchor> arrayList) {
        this.anchors = arrayList;
    }

    public final HashMap<Anchor, GroupSourceInformation> getSourceInformationMap$runtime() {
        return this.sourceInformationMap;
    }

    public final void setSourceInformationMap$runtime(HashMap<Anchor, GroupSourceInformation> map) {
        this.sourceInformationMap = map;
    }

    public final MutableIntObjectMap<MutableIntSet> getCalledByMap$runtime() {
        return this.calledByMap;
    }

    public final void setCalledByMap$runtime(MutableIntObjectMap<MutableIntSet> mutableIntObjectMap) {
        this.calledByMap = mutableIntObjectMap;
    }

    @Override // androidx.compose.runtime.tooling.CompositionData
    public boolean isEmpty() {
        return this.groupsSize == 0;
    }

    public final <T> T read(Function1<? super SlotReader, ? extends T> block) {
        SlotReader reader = openReader();
        try {
            return block.invoke(reader);
        } finally {
            reader.close();
        }
    }

    public final <T> T write(Function1<? super SlotWriter, ? extends T> block) {
        SlotWriter writer = openWriter();
        boolean normalClose = false;
        try {
            normalClose = true;
            return block.invoke(writer);
        } finally {
            writer.close(normalClose);
        }
    }

    public final SlotReader openReader() {
        if (this.writer) {
            throw new IllegalStateException("Cannot read while a writer is pending".toString());
        }
        this.readers++;
        return new SlotReader(this);
    }

    public final SlotWriter openWriter() {
        boolean value$iv = !this.writer;
        if (!value$iv) {
            ComposerKt.composeImmediateRuntimeError("Cannot start a writer when another writer is pending");
        }
        boolean value$iv2 = this.readers <= 0;
        if (!value$iv2) {
            ComposerKt.composeImmediateRuntimeError("Cannot start a writer when a reader is pending");
        }
        this.writer = true;
        this.version++;
        return new SlotWriter(this);
    }

    public final Anchor anchor(int index) {
        boolean value$iv = !this.writer;
        if (!value$iv) {
            ComposerKt.composeImmediateRuntimeError("use active SlotWriter to create an anchor location instead");
        }
        boolean value$iv2 = index >= 0 && index < this.groupsSize;
        if (!value$iv2) {
            PreconditionsKt.throwIllegalArgumentException("Parameter index is out of range");
        }
        ArrayList<Anchor> arrayList = this.anchors;
        int effectiveSize$iv = this.groupsSize;
        int location$iv = SlotTableKt.search(arrayList, index, effectiveSize$iv);
        if (location$iv < 0) {
            Anchor anchor$iv = new Anchor(index);
            arrayList.add(-(location$iv + 1), anchor$iv);
            return anchor$iv;
        }
        return arrayList.get(location$iv);
    }

    private final Anchor tryAnchor(int index) {
        boolean value$iv = !this.writer;
        if (!value$iv) {
            ComposerKt.composeImmediateRuntimeError("use active SlotWriter to crate an anchor for location instead");
        }
        if (index >= 0 && index < this.groupsSize) {
            return SlotTableKt.find(this.anchors, index, this.groupsSize);
        }
        return null;
    }

    public final int anchorIndex(Anchor anchor) {
        boolean value$iv = !this.writer;
        if (!value$iv) {
            ComposerKt.composeImmediateRuntimeError("Use active SlotWriter to determine anchor location instead");
        }
        boolean value$iv2 = anchor.getValid();
        if (!value$iv2) {
            PreconditionsKt.throwIllegalArgumentException("Anchor refers to a group that was removed");
        }
        return anchor.getLocation();
    }

    public final boolean ownsAnchor(Anchor anchor) {
        if (!anchor.getValid()) {
            return false;
        }
        int it = SlotTableKt.search(this.anchors, anchor.getLocation(), this.groupsSize);
        return ((it < 0 || !Intrinsics.areEqual(this.anchors.get(it), anchor)) ? 0 : 1) != 0;
    }

    public final boolean groupContainsAnchor(int groupIndex, Anchor anchor) {
        boolean value$iv = !this.writer;
        if (!value$iv) {
            ComposerKt.composeImmediateRuntimeError("Writer is active");
        }
        boolean value$iv2 = groupIndex >= 0 && groupIndex < this.groupsSize;
        if (!value$iv2) {
            ComposerKt.composeImmediateRuntimeError("Invalid group index");
        }
        boolean value$iv3 = ownsAnchor(anchor);
        if (value$iv3) {
            int iGroupSize = SlotTableKt.groupSize(this.groups, groupIndex) + groupIndex;
            int location = anchor.getLocation();
            if (groupIndex <= location && location < iGroupSize) {
                return true;
            }
        }
        return false;
    }

    public final void close$runtime(SlotReader reader, HashMap<Anchor, GroupSourceInformation> sourceInformationMap) {
        boolean value$iv = reader.getTable() == this && this.readers > 0;
        if (!value$iv) {
            ComposerKt.composeImmediateRuntimeError("Unexpected reader close()");
        }
        this.readers--;
        if (sourceInformationMap != null) {
            Object lock$iv = this.lock;
            synchronized (lock$iv) {
                HashMap<Anchor, GroupSourceInformation> map = this.sourceInformationMap;
                if (map != null) {
                    map.putAll(sourceInformationMap);
                } else {
                    this.sourceInformationMap = sourceInformationMap;
                }
                Unit unit = Unit.INSTANCE;
            }
        }
    }

    public final void close$runtime(SlotWriter writer, int[] groups, int groupsSize, Object[] slots, int slotsSize, ArrayList<Anchor> anchors, HashMap<Anchor, GroupSourceInformation> sourceInformationMap, MutableIntObjectMap<MutableIntSet> calledByMap) {
        boolean value$iv = writer.getTable() == this && this.writer;
        if (!value$iv) {
            PreconditionsKt.throwIllegalArgumentException("Unexpected writer close()");
        }
        this.writer = false;
        setTo$runtime(groups, groupsSize, slots, slotsSize, anchors, sourceInformationMap, calledByMap);
    }

    public final void setTo$runtime(int[] groups, int groupsSize, Object[] slots, int slotsSize, ArrayList<Anchor> anchors, HashMap<Anchor, GroupSourceInformation> sourceInformationMap, MutableIntObjectMap<MutableIntSet> calledByMap) {
        this.groups = groups;
        this.groupsSize = groupsSize;
        this.slots = slots;
        this.slotsSize = slotsSize;
        this.anchors = anchors;
        this.sourceInformationMap = sourceInformationMap;
        this.calledByMap = calledByMap;
    }

    public final List<RecomposeScopeImpl> invalidateGroupsWithKey$runtime(int target) throws Throwable {
        MutableIntSet set;
        MutableIntSet it;
        List anchors = new ArrayList();
        List scopes = new ArrayList();
        Ref.BooleanRef allScopesFound = new Ref.BooleanRef();
        allScopesFound.element = true;
        MutableIntSet set2 = new MutableIntSet(0, 1, null);
        set2.add(target);
        set2.add(-3);
        MutableIntObjectMap<MutableIntSet> mutableIntObjectMap = this.calledByMap;
        if (mutableIntObjectMap != null && (it = mutableIntObjectMap.get(target)) != null) {
            set2.addAll(it);
        }
        SlotReader reader$iv = openReader();
        try {
            invalidateGroupsWithKey$lambda$2$scanGroup(reader$iv, set2, anchors, allScopesFound, this, scopes);
            Unit unit = Unit.INSTANCE;
            reader$iv.close();
            SlotTable this_$iv = this;
            SlotWriter writer$iv = this_$iv.openWriter();
            try {
                writer$iv.startGroup();
                int index$iv = 0;
                int size = anchors.size();
                while (index$iv < size) {
                    Object item$iv = anchors.get(index$iv);
                    Anchor anchor = (Anchor) item$iv;
                    SlotTable this_$iv2 = this_$iv;
                    try {
                        set = set2;
                    } catch (Throwable th) {
                        th = th;
                        writer$iv.close(false);
                        throw th;
                    }
                    try {
                        if (anchor.toIndexFor(writer$iv) >= writer$iv.getCurrentGroup()) {
                            writer$iv.seek(anchor);
                            writer$iv.bashCurrentGroup();
                        }
                        index$iv++;
                        this_$iv = this_$iv2;
                        set2 = set;
                    } catch (Throwable th2) {
                        th = th2;
                        writer$iv.close(false);
                        throw th;
                    }
                }
                writer$iv.skipToGroupEnd();
                writer$iv.endGroup();
                writer$iv.close(true);
                if (allScopesFound.element) {
                    return scopes;
                }
                return null;
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Throwable th4) {
            reader$iv.close();
            throw th4;
        }
    }

    private static final void invalidateGroupsWithKey$lambda$2$scanGroup(SlotReader $reader, MutableIntSet set, List<Anchor> list, Ref.BooleanRef allScopesFound, SlotTable this$0, List<RecomposeScopeImpl> list2) {
        RecomposeScopeImpl parentScope;
        int key = $reader.getGroupKey();
        if (set.contains(key)) {
            if (key != -3) {
                list.add(SlotReader.anchor$default($reader, 0, 1, null));
            }
            if (allScopesFound.element) {
                RecomposeScopeImpl nearestScope = this$0.findEffectiveRecomposeScope($reader.getCurrent());
                if (nearestScope != null) {
                    list2.add(nearestScope);
                    Anchor anchor = nearestScope.getAnchor();
                    if ((anchor != null && anchor.getLocation() == $reader.getCurrent()) && (parentScope = this$0.findEffectiveRecomposeScope($reader.getParent())) != null) {
                        list2.add(parentScope);
                    }
                } else {
                    allScopesFound.element = false;
                    list2.clear();
                }
            }
            $reader.skipGroup();
            return;
        }
        $reader.startGroup();
        while (!$reader.isGroupEnd()) {
            invalidateGroupsWithKey$lambda$2$scanGroup($reader, set, list, allScopesFound, this$0, list2);
        }
        $reader.endGroup();
    }

    public final boolean containsMark() {
        if (this.groupsSize <= 0) {
            return false;
        }
        int[] $this$containsMark$iv = this.groups;
        return ($this$containsMark$iv[(0 * 5) + 1] & 67108864) != 0;
    }

    public final GroupSourceInformation sourceInformationOf(int group) {
        Anchor anchor;
        HashMap<Anchor, GroupSourceInformation> map = this.sourceInformationMap;
        if (map == null || (anchor = tryAnchor(group)) == null) {
            return null;
        }
        return map.get(anchor);
    }

    private final RecomposeScopeImpl findEffectiveRecomposeScope(int group) {
        int current = group;
        while (current > 0) {
            for (Object data : new DataIterator(this, current)) {
                if (data instanceof RecomposeScopeImpl) {
                    if (((RecomposeScopeImpl) data).getUsed() && current != group) {
                        return (RecomposeScopeImpl) data;
                    }
                    ((RecomposeScopeImpl) data).setForcedRecompose(true);
                }
            }
            int[] $this$parentAnchor$iv = this.groups;
            int address$iv = current;
            current = $this$parentAnchor$iv[(address$iv * 5) + 2];
        }
        return null;
    }

    public final void verifyWellFormed() {
        Ref.IntRef current = new Ref.IntRef();
        if (this.groupsSize > 0) {
            while (current.element < this.groupsSize) {
                verifyWellFormed$validateGroup(current, this, -1, current.element + SlotTableKt.groupSize(this.groups, current.element));
            }
            boolean value$iv = current.element == this.groupsSize;
            if (!value$iv) {
                PreconditionsKt.throwIllegalStateException("Incomplete group at root " + current.element + " expected to be " + this.groupsSize);
            }
        }
        int length = this.slots.length;
        for (int index = this.slotsSize; index < length; index++) {
            boolean value$iv2 = this.slots[index] == null;
            if (!value$iv2) {
                PreconditionsKt.throwIllegalStateException("Non null value in the slot gap at index " + index);
            }
        }
        int lastLocation = -1;
        List $this$fastForEach$iv = this.anchors;
        int size = $this$fastForEach$iv.size();
        for (int index$iv = 0; index$iv < size; index$iv++) {
            Object item$iv = $this$fastForEach$iv.get(index$iv);
            int location = ((Anchor) item$iv).toIndexFor(this);
            boolean value$iv3 = location >= 0 && location <= this.groupsSize;
            if (!value$iv3) {
                PreconditionsKt.throwIllegalArgumentException("Invalid anchor, location out of bound");
            }
            boolean value$iv4 = lastLocation < location;
            if (!value$iv4) {
                PreconditionsKt.throwIllegalArgumentException("Anchor is out of order");
            }
            lastLocation = location;
        }
        HashMap<Anchor, GroupSourceInformation> map = this.sourceInformationMap;
        if (map != null) {
            for (Map.Entry<Anchor, GroupSourceInformation> entry : map.entrySet()) {
                Anchor anchor = entry.getKey();
                GroupSourceInformation sourceGroup = entry.getValue();
                boolean value$iv5 = anchor.getValid();
                if (!value$iv5) {
                    PreconditionsKt.throwIllegalArgumentException("Source map contains invalid anchor");
                }
                boolean value$iv6 = ownsAnchor(anchor);
                if (!value$iv6) {
                    PreconditionsKt.throwIllegalArgumentException("Source map anchor is not owned by the slot table");
                }
                verifyWellFormed$verifySourceGroup(this, sourceGroup);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:116:0x02a9  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x01b8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static final int verifyWellFormed$validateGroup(Ref.IntRef current, SlotTable this$0, int parent, int parentEnd) {
        int dataEnd;
        int i;
        int i2;
        int i3;
        int nodeCount;
        int group = current.element;
        current.element = group + 1;
        int[] $this$parentAnchor$iv = this$0.groups;
        int parentIndex = $this$parentAnchor$iv[(group * 5) + 2];
        boolean value$iv = parentIndex == parent;
        if (!value$iv) {
            PreconditionsKt.throwIllegalStateException("Invalid parent index detected at " + group + ", expected parent index to be " + parent + " found " + parentIndex);
        }
        int end = SlotTableKt.groupSize(this$0.groups, group) + group;
        boolean value$iv2 = end <= this$0.groupsSize;
        if (!value$iv2) {
            PreconditionsKt.throwIllegalStateException("A group extends past the end of the table at " + group);
        }
        boolean value$iv3 = end <= parentEnd;
        if (!value$iv3) {
            PreconditionsKt.throwIllegalStateException("A group extends past its parent group at " + group);
        }
        int[] $this$dataAnchor$iv = this$0.groups;
        int dataStart = $this$dataAnchor$iv[(group * 5) + 4];
        if (group >= this$0.groupsSize - 1) {
            dataEnd = this$0.slotsSize;
        } else {
            int[] $this$dataAnchor$iv2 = this$0.groups;
            int address$iv = group + 1;
            dataEnd = $this$dataAnchor$iv2[(address$iv * 5) + 4];
        }
        boolean value$iv4 = dataEnd <= this$0.slots.length;
        if (!value$iv4) {
            PreconditionsKt.throwIllegalStateException("Slots for " + group + " extend past the end of the slot table");
        }
        boolean value$iv5 = dataStart <= dataEnd;
        if (!value$iv5) {
            PreconditionsKt.throwIllegalStateException("Invalid data anchor at " + group);
        }
        int slotStart = SlotTableKt.slotAnchor(this$0.groups, group);
        boolean value$iv6 = slotStart <= dataEnd;
        if (!value$iv6) {
            PreconditionsKt.throwIllegalStateException("Slots start out of range at " + group);
        }
        int[] $this$isNode$iv = this$0.groups;
        int i4 = ($this$isNode$iv[(group * 5) + 1] & 1073741824) != 0 ? 1 : 0;
        int[] $this$hasObjectKey$iv = this$0.groups;
        int i5 = i4 + (($this$hasObjectKey$iv[(group * 5) + 1] & C.BUFFER_FLAG_LAST_SAMPLE) != 0 ? 1 : 0);
        int[] $this$hasAux$iv = this$0.groups;
        int minSlotsNeeded = i5 + (($this$hasAux$iv[(group * 5) + 1] & 268435456) != 0 ? 1 : 0);
        boolean value$iv7 = dataEnd - dataStart >= minSlotsNeeded;
        if (value$iv7) {
            i = 1;
            i2 = 1073741824;
        } else {
            i = 1;
            i2 = 1073741824;
            PreconditionsKt.throwIllegalStateException("Not enough slots added for group " + group);
        }
        int[] $this$isNode$iv2 = this$0.groups;
        int i6 = ($this$isNode$iv2[(group * 5) + 1] & i2) != 0 ? i : 0;
        if (i6 != 0) {
            Object[] objArr = this$0.slots;
            int[] $this$nodeIndex$iv = this$0.groups;
            i3 = objArr[$this$nodeIndex$iv[(group * 5) + 4]] != null ? i : 0;
        }
        if (i3 == 0) {
            PreconditionsKt.throwIllegalStateException("No node recorded for a node group at " + group);
        }
        int nodeCount2 = 0;
        while (current.element < end) {
            nodeCount2 += verifyWellFormed$validateGroup(current, this$0, group, end);
        }
        int[] $this$nodeCount$iv = this$0.groups;
        int expectedNodeCount = $this$nodeCount$iv[(group * 5) + 1] & 67108863;
        int expectedSlotCount = SlotTableKt.groupSize(this$0.groups, group);
        int i7 = i6;
        if ((expectedNodeCount == nodeCount2 ? i : 0) == 0) {
            PreconditionsKt.throwIllegalStateException("Incorrect node count detected at " + group + ", expected " + expectedNodeCount + ", received " + nodeCount2);
        }
        int actualSlotCount = current.element - group;
        if ((expectedSlotCount == actualSlotCount ? i : 0) == 0) {
            nodeCount = nodeCount2;
            PreconditionsKt.throwIllegalStateException("Incorrect slot count detected at " + group + ", expected " + expectedSlotCount + ", received " + actualSlotCount);
        } else {
            nodeCount = nodeCount2;
        }
        int[] $this$containsAnyMark$iv = this$0.groups;
        if ((($this$containsAnyMark$iv[(group * 5) + 1] & 201326592) != 0 ? i : 0) != 0) {
            if (group > 0) {
                int[] $this$containsMark$iv = this$0.groups;
                int i8 = (($this$containsMark$iv[(parent * 5) + 1] & 67108864) != 0 ? i : 0) != 0 ? i : 0;
                if (i8 == 0) {
                    PreconditionsKt.throwIllegalStateException("Expected group " + parent + " to record it contains a mark because " + group + " does");
                }
            }
        }
        return i7 != 0 ? i : nodeCount;
    }

    private static final void verifyWellFormed$verifySourceGroup(SlotTable this$0, GroupSourceInformation group) {
        List groups = group.getGroups();
        if (groups == null) {
            return;
        }
        List $this$fastForEach$iv = groups;
        int size = $this$fastForEach$iv.size();
        for (int index$iv = 0; index$iv < size; index$iv++) {
            Object item$iv = $this$fastForEach$iv.get(index$iv);
            if (item$iv instanceof Anchor) {
                boolean value$iv = ((Anchor) item$iv).getValid();
                if (!value$iv) {
                    PreconditionsKt.throwIllegalArgumentException("Source map contains invalid anchor");
                }
                boolean value$iv2 = this$0.ownsAnchor((Anchor) item$iv);
                if (!value$iv2) {
                    PreconditionsKt.throwIllegalArgumentException("Source map anchor is not owned by the slot table");
                }
            } else if (item$iv instanceof GroupSourceInformation) {
                verifyWellFormed$verifySourceGroup(this$0, (GroupSourceInformation) item$iv);
            }
        }
    }

    public final void collectCalledByInformation() {
        this.calledByMap = new MutableIntObjectMap<>(0, 1, null);
    }

    public final void collectSourceInformation() {
        this.sourceInformationMap = new HashMap<>();
    }

    public final String toDebugString() {
        if (this.writer) {
            return super.toString();
        }
        StringBuilder $this$toDebugString_u24lambda_u240 = new StringBuilder();
        $this$toDebugString_u24lambda_u240.append(super.toString());
        $this$toDebugString_u24lambda_u240.append('\n');
        int groupsSize = this.groupsSize;
        if (groupsSize > 0) {
            int current = 0;
            while (current < groupsSize) {
                current += emitGroup($this$toDebugString_u24lambda_u240, current, 0);
            }
        } else {
            $this$toDebugString_u24lambda_u240.append("<EMPTY>");
        }
        String string = $this$toDebugString_u24lambda_u240.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }

    private final int emitGroup(StringBuilder $this$emitGroup, int index, int level) {
        String it;
        for (int i = 0; i < level; i++) {
            $this$emitGroup.append(' ');
        }
        $this$emitGroup.append("Group(");
        $this$emitGroup.append(index);
        $this$emitGroup.append(")");
        GroupSourceInformation groupSourceInformationSourceInformationOf = sourceInformationOf(index);
        if (groupSourceInformationSourceInformationOf != null && (it = groupSourceInformationSourceInformationOf.getSourceInformation()) != null && (StringsKt.startsWith$default(it, "C(", false, 2, (Object) null) || StringsKt.startsWith$default(it, "CC(", false, 2, (Object) null))) {
            int start = StringsKt.indexOf$default((CharSequence) it, "(", 0, false, 6, (Object) null) + 1;
            int endParen = StringsKt.indexOf$default((CharSequence) it, ')', 0, false, 6, (Object) null);
            $this$emitGroup.append(" ");
            String strSubstring = it.substring(start, endParen);
            Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
            $this$emitGroup.append(strSubstring);
            $this$emitGroup.append("()");
        }
        $this$emitGroup.append(" key=");
        int[] $this$key$iv = this.groups;
        $this$emitGroup.append($this$key$iv[index * 5]);
        int groupSize = SlotTableKt.groupSize(this.groups, index);
        $this$emitGroup.append(", nodes=");
        int[] $this$nodeCount$iv = this.groups;
        $this$emitGroup.append($this$nodeCount$iv[(index * 5) + 1] & 67108863);
        $this$emitGroup.append(", size=");
        $this$emitGroup.append(groupSize);
        int[] $this$hasMark$iv = this.groups;
        if (($this$hasMark$iv[(index * 5) + 1] & C.BUFFER_FLAG_FIRST_SAMPLE) != 0) {
            $this$emitGroup.append(", mark");
        }
        int[] $this$containsMark$iv = this.groups;
        if (($this$containsMark$iv[(index * 5) + 1] & 67108864) != 0) {
            $this$emitGroup.append(", contains mark");
        }
        int dataStart = emitGroup$dataIndex(this, index);
        int dataEnd = emitGroup$dataIndex(this, index + 1);
        if ((dataStart >= 0 && dataStart <= dataEnd) && dataEnd <= this.slotsSize) {
            int[] $this$hasObjectKey$iv = this.groups;
            if (($this$hasObjectKey$iv[(index * 5) + 1] & C.BUFFER_FLAG_LAST_SAMPLE) != 0) {
                $this$emitGroup.append(" objectKey=" + SlotTableKt.summarize(String.valueOf(this.slots[SlotTableKt.objectKeyIndex(this.groups, index)]), 10));
            }
            int[] $this$isNode$iv = this.groups;
            if (($this$isNode$iv[(index * 5) + 1] & 1073741824) != 0) {
                StringBuilder sbAppend = new StringBuilder().append(" node=");
                Object[] objArr = this.slots;
                int[] $this$nodeIndex$iv = this.groups;
                $this$emitGroup.append(sbAppend.append(SlotTableKt.summarize(String.valueOf(objArr[$this$nodeIndex$iv[(index * 5) + 4]]), 10)).toString());
            }
            int[] $this$hasAux$iv = this.groups;
            if (($this$hasAux$iv[(index * 5) + 1] & 268435456) != 0) {
                $this$emitGroup.append(" aux=" + SlotTableKt.summarize(String.valueOf(this.slots[SlotTableKt.auxIndex(this.groups, index)]), 10));
            }
            int slotStart = SlotTableKt.slotAnchor(this.groups, index);
            if (slotStart < dataEnd) {
                $this$emitGroup.append(", slots=[");
                $this$emitGroup.append(slotStart);
                $this$emitGroup.append(": ");
                for (int dataIndex = slotStart; dataIndex < dataEnd; dataIndex++) {
                    if (dataIndex != slotStart) {
                        $this$emitGroup.append(", ");
                    }
                    $this$emitGroup.append(SlotTableKt.summarize(String.valueOf(this.slots[dataIndex]), 10));
                }
                $this$emitGroup.append("]");
            }
        } else {
            $this$emitGroup.append(", *invalid data offsets " + dataStart + '-' + dataEnd + '*');
        }
        $this$emitGroup.append('\n');
        int current = index + 1;
        int end = index + groupSize;
        while (current < end) {
            current += emitGroup($this$emitGroup, current, level + 1);
        }
        return groupSize;
    }

    private static final int emitGroup$dataIndex(SlotTable this$0, int index) {
        if (index >= this$0.groupsSize) {
            return this$0.slotsSize;
        }
        int[] $this$dataAnchor$iv = this$0.groups;
        return $this$dataAnchor$iv[(index * 5) + 4];
    }

    private final List<Integer> keys() {
        return SlotTableKt.keys(this.groups, this.groupsSize * 5);
    }

    private final List<Integer> nodes() {
        return SlotTableKt.nodeCounts(this.groups, this.groupsSize * 5);
    }

    private final List<Integer> parentIndexes() {
        return SlotTableKt.parentAnchors(this.groups, this.groupsSize * 5);
    }

    private final List<Integer> dataIndexes() {
        return SlotTableKt.dataAnchors(this.groups, this.groupsSize * 5);
    }

    private final List<Integer> groupSizes() {
        return SlotTableKt.groupSizes(this.groups, this.groupsSize * 5);
    }

    public final List<Object> slotsOf$runtime(int group) {
        int end;
        int[] $this$dataAnchor$iv = this.groups;
        int start = $this$dataAnchor$iv[(group * 5) + 4];
        if (group + 1 >= this.groupsSize) {
            end = this.slots.length;
        } else {
            int[] $this$dataAnchor$iv2 = this.groups;
            int address$iv = group + 1;
            end = $this$dataAnchor$iv2[(address$iv * 5) + 4];
        }
        return ArraysKt.toList(this.slots).subList(start, end);
    }

    public final Object slot$runtime(int group, int slotIndex) {
        int end;
        int start = SlotTableKt.slotAnchor(this.groups, group);
        if (group + 1 >= this.groupsSize) {
            end = this.slots.length;
        } else {
            int[] $this$dataAnchor$iv = this.groups;
            int address$iv = group + 1;
            end = $this$dataAnchor$iv[(address$iv * 5) + 4];
        }
        int len = end - start;
        boolean z = false;
        if (slotIndex >= 0 && slotIndex < len) {
            z = true;
        }
        return z ? this.slots[start + slotIndex] : Composer.INSTANCE.getEmpty();
    }

    @Override // androidx.compose.runtime.tooling.CompositionData
    public Iterable<CompositionGroup> getCompositionGroups() {
        return this;
    }

    @Override // java.lang.Iterable
    public Iterator<CompositionGroup> iterator() {
        return new GroupIterator(this, 0, this.groupsSize);
    }

    @Override // androidx.compose.runtime.tooling.CompositionData
    public CompositionGroup find(Object identityToFind) {
        return new SlotTableGroup(this, 0, 0, 4, null).find(identityToFind);
    }
}
