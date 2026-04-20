package kotlin.io.path;

import androidx.media3.extractor.text.ttml.TtmlNode;
import java.nio.file.FileSystemLoopException;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArrayDeque;
import kotlin.collections.ArraysKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.coroutines.jvm.internal.SpillingKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequenceScope;
import kotlin.sequences.SequencesKt;

/* JADX INFO: compiled from: PathTreeWalk.kt */
/* JADX INFO: loaded from: classes21.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010(\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\u0004\b\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B!\bF\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u000e\u0010\u0004\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00060\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00020\u0016H\u0096\u0082\u0004JC\u0010\u0017\u001a\u00020\u0018*\b\u0012\u0004\u0012\u00020\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0018\u0010\u001e\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001b0 \u0012\u0004\u0012\u00020\u00180\u001fH\u0082È\u0004¢\u0006\u0002\u0010!J\u0010\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u00020\u0016H\u0082\u0080\u0004J\u0010\u0010#\u001a\b\u0012\u0004\u0012\u00020\u00020\u0016H\u0082\u0080\u0004R\u000f\u0010\u0003\u001a\u00020\u0002X\u0082\u0084\b¢\u0006\u0002\n\u0000R\u0019\u0010\u0004\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00060\u0005X\u0082\u0084\b¢\u0006\u0004\n\u0002\u0010\tR\u0015\u0010\n\u001a\u00020\u000b8BX\u0082\u0084\b¢\u0006\u0006\u001a\u0004\b\f\u0010\rR\u001b\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00058BX\u0082\u0084\b¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011R\u0015\u0010\u0012\u001a\u00020\u000b8BX\u0082\u0084\b¢\u0006\u0006\u001a\u0004\b\u0013\u0010\rR\u0015\u0010\u0014\u001a\u00020\u000b8BX\u0082\u0084\b¢\u0006\u0006\u001a\u0004\b\u0014\u0010\r¨\u0006$"}, d2 = {"Lkotlin/io/path/PathTreeWalk;", "Lkotlin/sequences/Sequence;", "Ljava/nio/file/Path;", TtmlNode.START, "options", "", "Lkotlin/io/path/PathWalkOption;", "<init>", "(Ljava/nio/file/Path;[Lkotlin/io/path/PathWalkOption;)V", "[Lkotlin/io/path/PathWalkOption;", "followLinks", "", "getFollowLinks", "()Z", "linkOptions", "Ljava/nio/file/LinkOption;", "getLinkOptions", "()[Ljava/nio/file/LinkOption;", "includeDirectories", "getIncludeDirectories", "isBFS", "iterator", "", "yieldIfNeeded", "", "Lkotlin/sequences/SequenceScope;", "node", "Lkotlin/io/path/PathNode;", "entriesReader", "Lkotlin/io/path/DirectoryEntriesReader;", "entriesAction", "Lkotlin/Function1;", "", "(Lkotlin/sequences/SequenceScope;Lkotlin/io/path/PathNode;Lkotlin/io/path/DirectoryEntriesReader;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "dfsIterator", "bfsIterator", "kotlin-stdlib-jdk7"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class PathTreeWalk implements Sequence<Path> {
    private final PathWalkOption[] options;
    private final Path start;

    public PathTreeWalk(Path start, PathWalkOption[] options) {
        Intrinsics.checkNotNullParameter(start, "start");
        Intrinsics.checkNotNullParameter(options, "options");
        this.start = start;
        this.options = options;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean getFollowLinks() {
        return ArraysKt.contains(this.options, PathWalkOption.FOLLOW_LINKS);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final LinkOption[] getLinkOptions() {
        return LinkFollowing.INSTANCE.toLinkOptions(getFollowLinks());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean getIncludeDirectories() {
        return ArraysKt.contains(this.options, PathWalkOption.INCLUDE_DIRECTORIES);
    }

    private final boolean isBFS() {
        return ArraysKt.contains(this.options, PathWalkOption.BREADTH_FIRST);
    }

    @Override // kotlin.sequences.Sequence
    public Iterator<Path> iterator() {
        return isBFS() ? bfsIterator() : dfsIterator();
    }

    private final Object yieldIfNeeded(SequenceScope<? super Path> sequenceScope, PathNode node, DirectoryEntriesReader entriesReader, Function1<? super List<PathNode>, Unit> function1, Continuation<? super Unit> continuation) throws FileSystemLoopException {
        Path path = node.getPath();
        if (node.getParent() != null) {
            PathsKt.checkFileName(path);
        }
        LinkOption[] linkOptions = getLinkOptions();
        LinkOption[] linkOptionArr = (LinkOption[]) Arrays.copyOf(linkOptions, linkOptions.length);
        if (Files.isDirectory(path, (LinkOption[]) Arrays.copyOf(linkOptionArr, linkOptionArr.length))) {
            if (!PathTreeWalkKt.createsCycle(node)) {
                if (getIncludeDirectories()) {
                    sequenceScope.yield(path, continuation);
                }
                LinkOption[] linkOptions2 = getLinkOptions();
                LinkOption[] linkOptionArr2 = (LinkOption[]) Arrays.copyOf(linkOptions2, linkOptions2.length);
                if (Files.isDirectory(path, (LinkOption[]) Arrays.copyOf(linkOptionArr2, linkOptionArr2.length))) {
                    function1.invoke(entriesReader.readEntries(node));
                }
            } else {
                throw new FileSystemLoopException(path.toString());
            }
        } else if (Files.exists(path, (LinkOption[]) Arrays.copyOf(new LinkOption[]{LinkOption.NOFOLLOW_LINKS}, 1))) {
            sequenceScope.yield(path, continuation);
            return Unit.INSTANCE;
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: kotlin.io.path.PathTreeWalk$dfsIterator$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PathTreeWalk.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlin/sequences/SequenceScope;", "Ljava/nio/file/Path;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "kotlin.io.path.PathTreeWalk$dfsIterator$1", f = "PathTreeWalk.kt", i = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3}, l = {191, 197, 210, 216}, m = "invokeSuspend", n = {"$this$iterator", "stack", "entriesReader", "startNode", "this_$iv", "$this$yieldIfNeeded$iv", "node$iv", "entriesReader$iv", "path$iv", "$i$f$yieldIfNeeded", "$this$iterator", "stack", "entriesReader", "startNode", "this_$iv", "$this$yieldIfNeeded$iv", "node$iv", "entriesReader$iv", "path$iv", "$i$f$yieldIfNeeded", "$this$iterator", "stack", "entriesReader", "startNode", "topNode", "topIterator", "pathNode", "this_$iv", "$this$yieldIfNeeded$iv", "node$iv", "entriesReader$iv", "path$iv", "$i$f$yieldIfNeeded", "$this$iterator", "stack", "entriesReader", "startNode", "topNode", "topIterator", "pathNode", "this_$iv", "$this$yieldIfNeeded$iv", "node$iv", "entriesReader$iv", "path$iv", "$i$f$yieldIfNeeded"}, nl = {193, 199, 212, 218}, s = {"L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6", "L$7", "L$8", "I$0", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6", "L$7", "L$8", "I$0", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6", "L$7", "L$8", "L$9", "L$10", "L$11", "I$0", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6", "L$7", "L$8", "L$9", "L$10", "L$11", "I$0"}, v = 2)
    static final class C07091 extends RestrictedSuspendLambda implements Function2<SequenceScope<? super Path>, Continuation<? super Unit>, Object> {
        int I$0;
        private /* synthetic */ Object L$0;
        Object L$1;
        Object L$10;
        Object L$11;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        Object L$6;
        Object L$7;
        Object L$8;
        Object L$9;
        int label;

        C07091(Continuation<? super C07091> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C07091 c07091 = PathTreeWalk.this.new C07091(continuation);
            c07091.L$0 = obj;
            return c07091;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(SequenceScope<? super Path> sequenceScope, Continuation<? super Unit> continuation) {
            return ((C07091) create(sequenceScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:25:0x018c  */
        /* JADX WARN: Removed duplicated region for block: B:38:0x0216  */
        /* JADX WARN: Removed duplicated region for block: B:57:0x02db  */
        /* JADX WARN: Removed duplicated region for block: B:58:0x02ee  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:67:0x0361 -> B:68:0x036a). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object $result) throws FileSystemLoopException {
            char c;
            ArrayDeque stack;
            DirectoryEntriesReader entriesReader;
            PathNode startNode;
            PathTreeWalk this_$iv;
            PathNode node$iv;
            DirectoryEntriesReader entriesReader$iv;
            Path path$iv;
            C07091 c07091;
            Object obj;
            PathNode startNode2;
            DirectoryEntriesReader entriesReader2;
            ArrayDeque stack2;
            SequenceScope $this$iterator;
            Object $result2;
            LinkOption[] linkOptionArr;
            int $i$f$yieldIfNeeded;
            Path path$iv2;
            PathNode topNode;
            PathNode topNode2;
            DirectoryEntriesReader entriesReader3;
            ArrayDeque stack3;
            Iterator<PathNode> it;
            PathNode pathNode;
            PathTreeWalk this_$iv2;
            PathNode node$iv2;
            DirectoryEntriesReader entriesReader$iv2;
            Object $result3;
            Object $result4;
            Path path$iv3;
            LinkOption[] linkOptionArr2;
            Object $result5;
            Object obj2;
            C07091 c070912;
            SequenceScope $this$iterator2 = (SequenceScope) this.L$0;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    c = 0;
                    ResultKt.throwOnFailure($result);
                    stack = new ArrayDeque();
                    entriesReader = new DirectoryEntriesReader(PathTreeWalk.this.getFollowLinks());
                    startNode = new PathNode(PathTreeWalk.this.start, PathTreeWalkKt.keyOf(PathTreeWalk.this.start, PathTreeWalk.this.getLinkOptions()), null);
                    this_$iv = PathTreeWalk.this;
                    node$iv = startNode;
                    entriesReader$iv = entriesReader;
                    path$iv = node$iv.getPath();
                    if (node$iv.getParent() != null) {
                        PathsKt.checkFileName(path$iv);
                    }
                    LinkOption[] linkOptions = this_$iv.getLinkOptions();
                    LinkOption[] linkOptionArr3 = (LinkOption[]) Arrays.copyOf(linkOptions, linkOptions.length);
                    if (!Files.isDirectory(path$iv, (LinkOption[]) Arrays.copyOf(linkOptionArr3, linkOptionArr3.length))) {
                        if (!Files.exists(path$iv, (LinkOption[]) Arrays.copyOf(new LinkOption[]{LinkOption.NOFOLLOW_LINKS}, 1))) {
                            c07091 = this;
                            obj = coroutine_suspended;
                            startNode2 = startNode;
                            entriesReader2 = entriesReader;
                            stack2 = stack;
                            $this$iterator = $this$iterator2;
                            $result2 = $result;
                            while (!stack2.isEmpty()) {
                            }
                            return Unit.INSTANCE;
                        }
                        this.L$0 = $this$iterator2;
                        this.L$1 = stack;
                        this.L$2 = entriesReader;
                        this.L$3 = SpillingKt.nullOutSpilledVariable(startNode);
                        this.L$4 = SpillingKt.nullOutSpilledVariable(this_$iv);
                        this.L$5 = SpillingKt.nullOutSpilledVariable($this$iterator2);
                        this.L$6 = SpillingKt.nullOutSpilledVariable(node$iv);
                        this.L$7 = SpillingKt.nullOutSpilledVariable(entriesReader$iv);
                        this.L$8 = SpillingKt.nullOutSpilledVariable(path$iv);
                        this.I$0 = 0;
                        this.label = 2;
                        if ($this$iterator2.yield(path$iv, this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        c07091 = this;
                        obj = coroutine_suspended;
                        startNode2 = startNode;
                        entriesReader2 = entriesReader;
                        stack2 = stack;
                        $this$iterator = $this$iterator2;
                        $result2 = $result;
                        while (!stack2.isEmpty()) {
                        }
                        return Unit.INSTANCE;
                    }
                    if (PathTreeWalkKt.createsCycle(node$iv)) {
                        throw new FileSystemLoopException(path$iv.toString());
                    }
                    if (this_$iv.getIncludeDirectories()) {
                        this.L$0 = $this$iterator2;
                        this.L$1 = stack;
                        this.L$2 = entriesReader;
                        this.L$3 = startNode;
                        this.L$4 = this_$iv;
                        this.L$5 = SpillingKt.nullOutSpilledVariable($this$iterator2);
                        this.L$6 = node$iv;
                        this.L$7 = entriesReader$iv;
                        this.L$8 = path$iv;
                        this.I$0 = 0;
                        this.label = 1;
                        if ($this$iterator2.yield(path$iv, this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    }
                    LinkOption[] linkOptions2 = this_$iv.getLinkOptions();
                    linkOptionArr = (LinkOption[]) Arrays.copyOf(linkOptions2, linkOptions2.length);
                    if (Files.isDirectory(path$iv, (LinkOption[]) Arrays.copyOf(linkOptionArr, linkOptionArr.length))) {
                        startNode.setContentIterator(entriesReader$iv.readEntries(node$iv).iterator());
                        stack.addLast(startNode);
                    }
                    c07091 = this;
                    obj = coroutine_suspended;
                    startNode2 = startNode;
                    entriesReader2 = entriesReader;
                    stack2 = stack;
                    $this$iterator = $this$iterator2;
                    $result2 = $result;
                    while (!stack2.isEmpty()) {
                        PathNode topNode3 = (PathNode) stack2.last();
                        Iterator<PathNode> contentIterator = topNode3.getContentIterator();
                        Intrinsics.checkNotNull(contentIterator);
                        if (contentIterator.hasNext()) {
                            pathNode = contentIterator.next();
                            this_$iv2 = PathTreeWalk.this;
                            entriesReader$iv2 = entriesReader2;
                            node$iv2 = pathNode;
                            SequenceScope $this$yieldIfNeeded$iv = $this$iterator;
                            path$iv3 = node$iv2.getPath();
                            if (node$iv2.getParent() != null) {
                                PathsKt.checkFileName(path$iv3);
                            }
                            $result5 = $result2;
                            LinkOption[] linkOptions3 = this_$iv2.getLinkOptions();
                            it = contentIterator;
                            LinkOption[] linkOptionArr4 = (LinkOption[]) Arrays.copyOf(linkOptions3, linkOptions3.length);
                            if (!Files.isDirectory(path$iv3, (LinkOption[]) Arrays.copyOf(linkOptionArr4, linkOptionArr4.length))) {
                                LinkOption[] linkOptionArr5 = new LinkOption[1];
                                linkOptionArr5[c] = LinkOption.NOFOLLOW_LINKS;
                                if (Files.exists(path$iv3, (LinkOption[]) Arrays.copyOf(linkOptionArr5, 1))) {
                                    c07091.L$0 = $this$iterator;
                                    c07091.L$1 = stack2;
                                    c07091.L$2 = entriesReader2;
                                    c07091.L$3 = SpillingKt.nullOutSpilledVariable(startNode2);
                                    c07091.L$4 = SpillingKt.nullOutSpilledVariable(topNode3);
                                    c07091.L$5 = SpillingKt.nullOutSpilledVariable(it);
                                    c07091.L$6 = SpillingKt.nullOutSpilledVariable(pathNode);
                                    c07091.L$7 = SpillingKt.nullOutSpilledVariable(this_$iv2);
                                    c07091.L$8 = SpillingKt.nullOutSpilledVariable($this$yieldIfNeeded$iv);
                                    c07091.L$9 = SpillingKt.nullOutSpilledVariable(node$iv2);
                                    c07091.L$10 = SpillingKt.nullOutSpilledVariable(entriesReader$iv2);
                                    c07091.L$11 = SpillingKt.nullOutSpilledVariable(path$iv3);
                                    c07091.I$0 = 0;
                                    c07091.label = 4;
                                    if ($this$yieldIfNeeded$iv.yield(path$iv3, c07091) == obj) {
                                        return obj;
                                    }
                                    obj2 = obj;
                                    c070912 = c07091;
                                    $result2 = $result5;
                                    obj = obj2;
                                    c07091 = c070912;
                                    while (!stack2.isEmpty()) {
                                    }
                                }
                            } else {
                                if (PathTreeWalkKt.createsCycle(node$iv2)) {
                                    throw new FileSystemLoopException(path$iv3.toString());
                                }
                                if (this_$iv2.getIncludeDirectories()) {
                                    c07091.L$0 = $this$iterator;
                                    c07091.L$1 = stack2;
                                    c07091.L$2 = entriesReader2;
                                    c07091.L$3 = SpillingKt.nullOutSpilledVariable(startNode2);
                                    c07091.L$4 = SpillingKt.nullOutSpilledVariable(topNode3);
                                    c07091.L$5 = SpillingKt.nullOutSpilledVariable(it);
                                    c07091.L$6 = pathNode;
                                    c07091.L$7 = this_$iv2;
                                    c07091.L$8 = SpillingKt.nullOutSpilledVariable($this$yieldIfNeeded$iv);
                                    c07091.L$9 = node$iv2;
                                    c07091.L$10 = entriesReader$iv2;
                                    c07091.L$11 = path$iv3;
                                    c07091.I$0 = 0;
                                    c07091.label = 3;
                                    if ($this$yieldIfNeeded$iv.yield(path$iv3, c07091) == obj) {
                                        return obj;
                                    }
                                    $this$iterator2 = $this$iterator;
                                    coroutine_suspended = obj;
                                    $i$f$yieldIfNeeded = 0;
                                    topNode = topNode3;
                                    topNode2 = startNode2;
                                    entriesReader3 = entriesReader2;
                                    stack3 = stack2;
                                    path$iv2 = path$iv3;
                                    $result3 = $result5;
                                    obj = coroutine_suspended;
                                    $this$iterator = $this$iterator2;
                                    $result4 = $result3;
                                    path$iv3 = path$iv2;
                                    stack2 = stack3;
                                    entriesReader2 = entriesReader3;
                                    startNode2 = topNode2;
                                    Object $result6 = $result4;
                                    LinkOption[] linkOptions4 = this_$iv2.getLinkOptions();
                                    SequenceScope $this$iterator3 = $this$iterator;
                                    linkOptionArr2 = (LinkOption[]) Arrays.copyOf(linkOptions4, linkOptions4.length);
                                    if (Files.isDirectory(path$iv3, (LinkOption[]) Arrays.copyOf(linkOptionArr2, linkOptionArr2.length))) {
                                        pathNode.setContentIterator(entriesReader$iv2.readEntries(node$iv2).iterator());
                                        stack2.addLast(pathNode);
                                        $result2 = $result6;
                                        $this$iterator = $this$iterator3;
                                    } else {
                                        $result2 = $result6;
                                        $this$iterator = $this$iterator3;
                                    }
                                    while (!stack2.isEmpty()) {
                                    }
                                } else {
                                    $result4 = $result5;
                                    Object $result62 = $result4;
                                    LinkOption[] linkOptions42 = this_$iv2.getLinkOptions();
                                    SequenceScope $this$iterator32 = $this$iterator;
                                    linkOptionArr2 = (LinkOption[]) Arrays.copyOf(linkOptions42, linkOptions42.length);
                                    if (Files.isDirectory(path$iv3, (LinkOption[]) Arrays.copyOf(linkOptionArr2, linkOptionArr2.length))) {
                                    }
                                    while (!stack2.isEmpty()) {
                                    }
                                }
                            }
                        } else {
                            $result5 = $result2;
                            stack2.removeLast();
                        }
                        $result2 = $result5;
                    }
                    return Unit.INSTANCE;
                case 1:
                    c = 0;
                    int i = this.I$0;
                    path$iv = (Path) this.L$8;
                    entriesReader$iv = (DirectoryEntriesReader) this.L$7;
                    node$iv = (PathNode) this.L$6;
                    this_$iv = (PathTreeWalk) this.L$4;
                    startNode = (PathNode) this.L$3;
                    entriesReader = (DirectoryEntriesReader) this.L$2;
                    stack = (ArrayDeque) this.L$1;
                    ResultKt.throwOnFailure($result);
                    LinkOption[] linkOptions22 = this_$iv.getLinkOptions();
                    linkOptionArr = (LinkOption[]) Arrays.copyOf(linkOptions22, linkOptions22.length);
                    if (Files.isDirectory(path$iv, (LinkOption[]) Arrays.copyOf(linkOptionArr, linkOptionArr.length))) {
                    }
                    c07091 = this;
                    obj = coroutine_suspended;
                    startNode2 = startNode;
                    entriesReader2 = entriesReader;
                    stack2 = stack;
                    $this$iterator = $this$iterator2;
                    $result2 = $result;
                    while (!stack2.isEmpty()) {
                    }
                    return Unit.INSTANCE;
                case 2:
                    c = 0;
                    int i2 = this.I$0;
                    startNode = (PathNode) this.L$3;
                    entriesReader = (DirectoryEntriesReader) this.L$2;
                    stack = (ArrayDeque) this.L$1;
                    ResultKt.throwOnFailure($result);
                    c07091 = this;
                    obj = coroutine_suspended;
                    startNode2 = startNode;
                    entriesReader2 = entriesReader;
                    stack2 = stack;
                    $this$iterator = $this$iterator2;
                    $result2 = $result;
                    while (!stack2.isEmpty()) {
                    }
                    return Unit.INSTANCE;
                case 3:
                    c = 0;
                    $i$f$yieldIfNeeded = this.I$0;
                    path$iv2 = (Path) this.L$11;
                    DirectoryEntriesReader entriesReader$iv3 = (DirectoryEntriesReader) this.L$10;
                    PathNode node$iv3 = (PathNode) this.L$9;
                    PathTreeWalk this_$iv3 = (PathTreeWalk) this.L$7;
                    PathNode pathNode2 = (PathNode) this.L$6;
                    Iterator<PathNode> it2 = (Iterator) this.L$5;
                    topNode = (PathNode) this.L$4;
                    topNode2 = (PathNode) this.L$3;
                    entriesReader3 = (DirectoryEntriesReader) this.L$2;
                    stack3 = (ArrayDeque) this.L$1;
                    ResultKt.throwOnFailure($result);
                    it = it2;
                    pathNode = pathNode2;
                    this_$iv2 = this_$iv3;
                    node$iv2 = node$iv3;
                    entriesReader$iv2 = entriesReader$iv3;
                    c07091 = this;
                    $result3 = $result;
                    obj = coroutine_suspended;
                    $this$iterator = $this$iterator2;
                    $result4 = $result3;
                    path$iv3 = path$iv2;
                    stack2 = stack3;
                    entriesReader2 = entriesReader3;
                    startNode2 = topNode2;
                    Object $result622 = $result4;
                    LinkOption[] linkOptions422 = this_$iv2.getLinkOptions();
                    SequenceScope $this$iterator322 = $this$iterator;
                    linkOptionArr2 = (LinkOption[]) Arrays.copyOf(linkOptions422, linkOptions422.length);
                    if (Files.isDirectory(path$iv3, (LinkOption[]) Arrays.copyOf(linkOptionArr2, linkOptionArr2.length))) {
                    }
                    while (!stack2.isEmpty()) {
                    }
                    return Unit.INSTANCE;
                case 4:
                    int i3 = this.I$0;
                    startNode2 = (PathNode) this.L$3;
                    entriesReader2 = (DirectoryEntriesReader) this.L$2;
                    c = 0;
                    stack2 = (ArrayDeque) this.L$1;
                    ResultKt.throwOnFailure($result);
                    c070912 = this;
                    obj2 = coroutine_suspended;
                    $this$iterator = $this$iterator2;
                    $result2 = $result;
                    obj = obj2;
                    c07091 = c070912;
                    while (!stack2.isEmpty()) {
                    }
                    return Unit.INSTANCE;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    private final Iterator<Path> dfsIterator() {
        return SequencesKt.iterator(new C07091(null));
    }

    /* JADX INFO: renamed from: kotlin.io.path.PathTreeWalk$bfsIterator$1, reason: invalid class name */
    /* JADX INFO: compiled from: PathTreeWalk.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlin/sequences/SequenceScope;", "Ljava/nio/file/Path;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "kotlin.io.path.PathTreeWalk$bfsIterator$1", f = "PathTreeWalk.kt", i = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, l = {191, 197}, m = "invokeSuspend", n = {"$this$iterator", "queue", "entriesReader", "pathNode", "this_$iv", "$this$yieldIfNeeded$iv", "node$iv", "entriesReader$iv", "path$iv", "$i$f$yieldIfNeeded", "$this$iterator", "queue", "entriesReader", "pathNode", "this_$iv", "$this$yieldIfNeeded$iv", "node$iv", "entriesReader$iv", "path$iv", "$i$f$yieldIfNeeded"}, nl = {193, 199}, s = {"L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6", "L$7", "L$8", "I$0", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6", "L$7", "L$8", "I$0"}, v = 2)
    static final class AnonymousClass1 extends RestrictedSuspendLambda implements Function2<SequenceScope<? super Path>, Continuation<? super Unit>, Object> {
        int I$0;
        private /* synthetic */ Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        Object L$6;
        Object L$7;
        Object L$8;
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = PathTreeWalk.this.new AnonymousClass1(continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(SequenceScope<? super Path> sequenceScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(sequenceScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:11:0x00ba  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x013a  */
        /* JADX WARN: Removed duplicated region for block: B:27:0x0148  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x01a3 -> B:36:0x01ae). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object $result) throws FileSystemLoopException {
            ArrayDeque queue;
            DirectoryEntriesReader entriesReader;
            AnonymousClass1 anonymousClass1;
            Object obj;
            SequenceScope $this$iterator;
            DirectoryEntriesReader entriesReader$iv;
            PathNode node$iv;
            PathTreeWalk this_$iv;
            Path path$iv;
            LinkOption[] linkOptionArr;
            Object obj2;
            ArrayDeque queue2;
            DirectoryEntriesReader entriesReader2;
            AnonymousClass1 anonymousClass12;
            SequenceScope $this$iterator2 = (SequenceScope) this.L$0;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    ArrayDeque queue3 = new ArrayDeque();
                    DirectoryEntriesReader entriesReader3 = new DirectoryEntriesReader(PathTreeWalk.this.getFollowLinks());
                    queue3.addLast(new PathNode(PathTreeWalk.this.start, PathTreeWalkKt.keyOf(PathTreeWalk.this.start, PathTreeWalk.this.getLinkOptions()), null));
                    queue = queue3;
                    entriesReader = entriesReader3;
                    anonymousClass1 = this;
                    obj = coroutine_suspended;
                    $this$iterator = $this$iterator2;
                    while (!queue.isEmpty()) {
                        PathNode pathNode = (PathNode) queue.removeFirst();
                        this_$iv = PathTreeWalk.this;
                        entriesReader$iv = entriesReader;
                        node$iv = pathNode;
                        SequenceScope $this$yieldIfNeeded$iv = $this$iterator;
                        path$iv = node$iv.getPath();
                        if (node$iv.getParent() != null) {
                            PathsKt.checkFileName(path$iv);
                        }
                        LinkOption[] linkOptions = this_$iv.getLinkOptions();
                        LinkOption[] linkOptionArr2 = (LinkOption[]) Arrays.copyOf(linkOptions, linkOptions.length);
                        if (Files.isDirectory(path$iv, (LinkOption[]) Arrays.copyOf(linkOptionArr2, linkOptionArr2.length))) {
                            if (!PathTreeWalkKt.createsCycle(node$iv)) {
                                if (this_$iv.getIncludeDirectories()) {
                                    anonymousClass1.L$0 = $this$iterator;
                                    anonymousClass1.L$1 = queue;
                                    anonymousClass1.L$2 = entriesReader;
                                    anonymousClass1.L$3 = SpillingKt.nullOutSpilledVariable(pathNode);
                                    anonymousClass1.L$4 = this_$iv;
                                    anonymousClass1.L$5 = SpillingKt.nullOutSpilledVariable($this$yieldIfNeeded$iv);
                                    anonymousClass1.L$6 = node$iv;
                                    anonymousClass1.L$7 = entriesReader$iv;
                                    anonymousClass1.L$8 = path$iv;
                                    anonymousClass1.I$0 = 0;
                                    anonymousClass1.label = 1;
                                    if ($this$yieldIfNeeded$iv.yield(path$iv, anonymousClass1) == obj) {
                                        return obj;
                                    }
                                }
                                LinkOption[] linkOptions2 = this_$iv.getLinkOptions();
                                linkOptionArr = (LinkOption[]) Arrays.copyOf(linkOptions2, linkOptions2.length);
                                if (!Files.isDirectory(path$iv, (LinkOption[]) Arrays.copyOf(linkOptionArr, linkOptionArr.length))) {
                                    queue.addAll(entriesReader$iv.readEntries(node$iv));
                                }
                                while (!queue.isEmpty()) {
                                }
                            } else {
                                throw new FileSystemLoopException(path$iv.toString());
                            }
                        } else if (Files.exists(path$iv, (LinkOption[]) Arrays.copyOf(new LinkOption[]{LinkOption.NOFOLLOW_LINKS}, 1))) {
                            anonymousClass1.L$0 = $this$iterator;
                            anonymousClass1.L$1 = queue;
                            anonymousClass1.L$2 = entriesReader;
                            anonymousClass1.L$3 = SpillingKt.nullOutSpilledVariable(pathNode);
                            anonymousClass1.L$4 = SpillingKt.nullOutSpilledVariable(this_$iv);
                            anonymousClass1.L$5 = SpillingKt.nullOutSpilledVariable($this$yieldIfNeeded$iv);
                            anonymousClass1.L$6 = SpillingKt.nullOutSpilledVariable(node$iv);
                            anonymousClass1.L$7 = SpillingKt.nullOutSpilledVariable(entriesReader$iv);
                            anonymousClass1.L$8 = SpillingKt.nullOutSpilledVariable(path$iv);
                            anonymousClass1.I$0 = 0;
                            anonymousClass1.label = 2;
                            if ($this$yieldIfNeeded$iv.yield(path$iv, anonymousClass1) == obj) {
                                return obj;
                            }
                            obj2 = obj;
                            queue2 = queue;
                            entriesReader2 = entriesReader;
                            anonymousClass12 = anonymousClass1;
                            obj = obj2;
                            anonymousClass1 = anonymousClass12;
                            entriesReader = entriesReader2;
                            queue = queue2;
                            while (!queue.isEmpty()) {
                            }
                        }
                    }
                    return Unit.INSTANCE;
                case 1:
                    int $i$f$yieldIfNeeded = this.I$0;
                    Path path$iv2 = (Path) this.L$8;
                    entriesReader$iv = (DirectoryEntriesReader) this.L$7;
                    node$iv = (PathNode) this.L$6;
                    this_$iv = (PathTreeWalk) this.L$4;
                    entriesReader = (DirectoryEntriesReader) this.L$2;
                    queue = (ArrayDeque) this.L$1;
                    ResultKt.throwOnFailure($result);
                    path$iv = path$iv2;
                    anonymousClass1 = this;
                    obj = coroutine_suspended;
                    $this$iterator = $this$iterator2;
                    LinkOption[] linkOptions22 = this_$iv.getLinkOptions();
                    linkOptionArr = (LinkOption[]) Arrays.copyOf(linkOptions22, linkOptions22.length);
                    if (!Files.isDirectory(path$iv, (LinkOption[]) Arrays.copyOf(linkOptionArr, linkOptionArr.length))) {
                    }
                    while (!queue.isEmpty()) {
                    }
                    return Unit.INSTANCE;
                case 2:
                    int i = this.I$0;
                    DirectoryEntriesReader entriesReader4 = (DirectoryEntriesReader) this.L$2;
                    ArrayDeque queue4 = (ArrayDeque) this.L$1;
                    ResultKt.throwOnFailure($result);
                    queue2 = queue4;
                    entriesReader2 = entriesReader4;
                    anonymousClass12 = this;
                    obj2 = coroutine_suspended;
                    $this$iterator = $this$iterator2;
                    obj = obj2;
                    anonymousClass1 = anonymousClass12;
                    entriesReader = entriesReader2;
                    queue = queue2;
                    while (!queue.isEmpty()) {
                    }
                    return Unit.INSTANCE;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    private final Iterator<Path> bfsIterator() {
        return SequencesKt.iterator(new AnonymousClass1(null));
    }
}
