package okio.internal;

import androidx.media3.extractor.metadata.dvbsi.AppInfoTableDecoder;
import androidx.media3.extractor.ts.TsExtractor;
import java.io.Closeable;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import kotlin.ExceptionsKt;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArrayDeque;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequenceScope;
import kotlin.sequences.SequencesKt;
import okio.BufferedSink;
import okio.FileMetadata;
import okio.Okio;
import okio.Path;
import okio.Source;

/* JADX INFO: renamed from: okio.internal.-FileSystem, reason: invalid class name */
/* JADX INFO: compiled from: FileSystem.kt */
/* JADX INFO: loaded from: classes23.dex */
@Metadata(d1 = {"\u00004\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\r\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001aF\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0004\u001a\u00020\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u00072\u0006\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0080@¢\u0006\u0002\u0010\f\u001a\u001c\u0010\r\u001a\u00020\u0001*\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0003H\u0000\u001a\u001c\u0010\u0010\u001a\u00020\u0001*\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\nH\u0000\u001a\u001c\u0010\u0013\u001a\u00020\u0001*\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\nH\u0000\u001a\u0014\u0010\u0016\u001a\u00020\n*\u00020\u00052\u0006\u0010\b\u001a\u00020\u0003H\u0000\u001a\"\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00030\u0018*\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\nH\u0000\u001a\u0014\u0010\u0019\u001a\u00020\u001a*\u00020\u00052\u0006\u0010\b\u001a\u00020\u0003H\u0000\u001a\u0016\u0010\u001b\u001a\u0004\u0018\u00010\u0003*\u00020\u00052\u0006\u0010\b\u001a\u00020\u0003H\u0000¨\u0006\u001c"}, d2 = {"collectRecursively", "", "Lkotlin/sequences/SequenceScope;", "Lokio/Path;", "fileSystem", "Lokio/FileSystem;", "stack", "Lkotlin/collections/ArrayDeque;", "path", "followSymlinks", "", "postorder", "(Lkotlin/sequences/SequenceScope;Lokio/FileSystem;Lkotlin/collections/ArrayDeque;Lokio/Path;ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "commonCopy", "source", "target", "commonCreateDirectories", "dir", "mustCreate", "commonDeleteRecursively", "fileOrDirectory", "mustExist", "commonExists", "commonListRecursively", "Lkotlin/sequences/Sequence;", "commonMetadata", "Lokio/FileMetadata;", "symlinkTarget", "okio"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class FileSystem {

    /* JADX INFO: renamed from: okio.internal.-FileSystem$collectRecursively$1, reason: invalid class name */
    /* JADX INFO: compiled from: FileSystem.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "okio.internal.-FileSystem", f = "FileSystem.kt", i = {0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1}, l = {AppInfoTableDecoder.APPLICATION_INFORMATION_TABLE_ID, TsExtractor.TS_STREAM_TYPE_E_AC3, 145}, m = "collectRecursively", n = {"$this$collectRecursively", "fileSystem", "stack", "path", "followSymlinks", "postorder", "$this$collectRecursively", "fileSystem", "stack", "path", "followSymlinks", "postorder"}, s = {"L$0", "L$1", "L$2", "L$3", "Z$0", "Z$1", "L$0", "L$1", "L$2", "L$3", "Z$0", "Z$1"})
    static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        boolean Z$0;
        boolean Z$1;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FileSystem.collectRecursively(null, null, null, null, false, false, this);
        }
    }

    public static final FileMetadata commonMetadata(okio.FileSystem $this$commonMetadata, Path path) throws IOException {
        Intrinsics.checkNotNullParameter($this$commonMetadata, "<this>");
        Intrinsics.checkNotNullParameter(path, "path");
        FileMetadata fileMetadataMetadataOrNull = $this$commonMetadata.metadataOrNull(path);
        if (fileMetadataMetadataOrNull != null) {
            return fileMetadataMetadataOrNull;
        }
        throw new FileNotFoundException("no such file: " + path);
    }

    public static final boolean commonExists(okio.FileSystem $this$commonExists, Path path) throws IOException {
        Intrinsics.checkNotNullParameter($this$commonExists, "<this>");
        Intrinsics.checkNotNullParameter(path, "path");
        return $this$commonExists.metadataOrNull(path) != null;
    }

    public static final void commonCreateDirectories(okio.FileSystem $this$commonCreateDirectories, Path dir, boolean mustCreate) throws IOException {
        Intrinsics.checkNotNullParameter($this$commonCreateDirectories, "<this>");
        Intrinsics.checkNotNullParameter(dir, "dir");
        ArrayDeque<Path> directories = new ArrayDeque();
        for (Path path = dir; path != null && !$this$commonCreateDirectories.exists(path); path = path.parent()) {
            directories.addFirst(path);
        }
        if (mustCreate && directories.isEmpty()) {
            throw new IOException(dir + " already exists.");
        }
        for (Path toCreate : directories) {
            $this$commonCreateDirectories.createDirectory(toCreate);
        }
    }

    public static final void commonDeleteRecursively(okio.FileSystem $this$commonDeleteRecursively, Path fileOrDirectory, boolean mustExist) throws IOException {
        Intrinsics.checkNotNullParameter($this$commonDeleteRecursively, "<this>");
        Intrinsics.checkNotNullParameter(fileOrDirectory, "fileOrDirectory");
        Sequence sequence = SequencesKt.sequence(new FileSystem$commonDeleteRecursively$sequence$1($this$commonDeleteRecursively, fileOrDirectory, null));
        Iterator iterator = sequence.iterator();
        while (iterator.hasNext()) {
            Path toDelete = (Path) iterator.next();
            $this$commonDeleteRecursively.delete(toDelete, mustExist && !iterator.hasNext());
        }
    }

    /* JADX INFO: renamed from: okio.internal.-FileSystem$commonListRecursively$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: FileSystem.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlin/sequences/SequenceScope;", "Lokio/Path;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "okio.internal.-FileSystem$commonListRecursively$1", f = "FileSystem.kt", i = {0, 0}, l = {96}, m = "invokeSuspend", n = {"$this$sequence", "stack"}, s = {"L$0", "L$1"})
    static final class C07891 extends RestrictedSuspendLambda implements Function2<SequenceScope<? super Path>, Continuation<? super Unit>, Object> {
        final /* synthetic */ Path $dir;
        final /* synthetic */ boolean $followSymlinks;
        final /* synthetic */ okio.FileSystem $this_commonListRecursively;
        private /* synthetic */ Object L$0;
        Object L$1;
        Object L$2;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C07891(Path path, okio.FileSystem fileSystem, boolean z, Continuation<? super C07891> continuation) {
            super(2, continuation);
            this.$dir = path;
            this.$this_commonListRecursively = fileSystem;
            this.$followSymlinks = z;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C07891 c07891 = new C07891(this.$dir, this.$this_commonListRecursively, this.$followSymlinks, continuation);
            c07891.L$0 = obj;
            return c07891;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(SequenceScope<? super Path> sequenceScope, Continuation<? super Unit> continuation) {
            return ((C07891) create(sequenceScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object $result) {
            C07891 c07891;
            ArrayDeque stack;
            SequenceScope $this$sequence;
            Iterator<Path> it;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    c07891 = this;
                    SequenceScope $this$sequence2 = (SequenceScope) c07891.L$0;
                    ArrayDeque stack2 = new ArrayDeque();
                    stack2.addLast(c07891.$dir);
                    stack = stack2;
                    $this$sequence = $this$sequence2;
                    it = c07891.$this_commonListRecursively.list(c07891.$dir).iterator();
                    break;
                case 1:
                    c07891 = this;
                    it = (Iterator) c07891.L$2;
                    ArrayDeque stack3 = (ArrayDeque) c07891.L$1;
                    SequenceScope $this$sequence3 = (SequenceScope) c07891.L$0;
                    ResultKt.throwOnFailure($result);
                    stack = stack3;
                    $this$sequence = $this$sequence3;
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            while (it.hasNext()) {
                Path child = it.next();
                c07891.L$0 = $this$sequence;
                c07891.L$1 = stack;
                c07891.L$2 = it;
                c07891.label = 1;
                if (FileSystem.collectRecursively($this$sequence, c07891.$this_commonListRecursively, stack, child, c07891.$followSymlinks, false, c07891) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
            return Unit.INSTANCE;
        }
    }

    public static final Sequence<Path> commonListRecursively(okio.FileSystem $this$commonListRecursively, Path dir, boolean followSymlinks) throws IOException {
        Intrinsics.checkNotNullParameter($this$commonListRecursively, "<this>");
        Intrinsics.checkNotNullParameter(dir, "dir");
        return SequencesKt.sequence(new C07891(dir, $this$commonListRecursively, followSymlinks, null));
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0150  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0016  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object collectRecursively(SequenceScope<? super Path> sequenceScope, okio.FileSystem fileSystem, ArrayDeque<Path> arrayDeque, Path path, boolean z, boolean z2, Continuation<? super Unit> continuation) throws Throwable {
        AnonymousClass1 anonymousClass1;
        SequenceScope $this$collectRecursively;
        ArrayDeque<Path> arrayDeque2;
        boolean followSymlinks;
        okio.FileSystem fileSystem2;
        Path path2;
        boolean postorder;
        List<Path> listListOrNull;
        ArrayDeque<Path> arrayDeque3;
        SequenceScope $this$collectRecursively2;
        okio.FileSystem fileSystem3;
        Path path3;
        Iterator<Path> it;
        if (continuation instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) continuation;
            if ((anonymousClass1.label & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label -= Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(continuation);
            }
        }
        Object $result = anonymousClass1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (anonymousClass1.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                $this$collectRecursively = sequenceScope;
                arrayDeque2 = arrayDeque;
                followSymlinks = z;
                fileSystem2 = fileSystem;
                path2 = path;
                postorder = z2;
                if (!postorder) {
                    anonymousClass1.L$0 = $this$collectRecursively;
                    anonymousClass1.L$1 = fileSystem2;
                    anonymousClass1.L$2 = arrayDeque2;
                    anonymousClass1.L$3 = path2;
                    anonymousClass1.Z$0 = followSymlinks;
                    anonymousClass1.Z$1 = postorder;
                    anonymousClass1.label = 1;
                    if ($this$collectRecursively.yield(path2, anonymousClass1) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
                listListOrNull = fileSystem2.listOrNull(path2);
                if (listListOrNull == null) {
                    listListOrNull = CollectionsKt.emptyList();
                }
                if (!listListOrNull.isEmpty()) {
                    Path symlinkPath = path2;
                    int symlinkCount = 0;
                    while (true) {
                        if (followSymlinks && arrayDeque2.contains(symlinkPath)) {
                            throw new IOException("symlink cycle at " + path2);
                        }
                        Path pathSymlinkTarget = symlinkTarget(fileSystem2, symlinkPath);
                        if (pathSymlinkTarget != null) {
                            symlinkPath = pathSymlinkTarget;
                            symlinkCount++;
                        } else if (followSymlinks || symlinkCount == 0) {
                            arrayDeque2.addLast(symlinkPath);
                            try {
                                Iterator<Path> it2 = listListOrNull.iterator();
                                $this$collectRecursively2 = $this$collectRecursively;
                                fileSystem3 = fileSystem2;
                                path3 = path2;
                                it = it2;
                            } catch (Throwable th) {
                                th = th;
                                arrayDeque3 = arrayDeque2;
                                arrayDeque3.removeLast();
                                throw th;
                            }
                        }
                        break;
                    }
                }
                if (postorder) {
                    anonymousClass1.L$0 = null;
                    anonymousClass1.L$1 = null;
                    anonymousClass1.L$2 = null;
                    anonymousClass1.L$3 = null;
                    anonymousClass1.L$4 = null;
                    anonymousClass1.label = 3;
                    if ($this$collectRecursively.yield(path2, anonymousClass1) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
                return Unit.INSTANCE;
            case 1:
                postorder = anonymousClass1.Z$1;
                followSymlinks = anonymousClass1.Z$0;
                path2 = (Path) anonymousClass1.L$3;
                arrayDeque2 = (ArrayDeque) anonymousClass1.L$2;
                fileSystem2 = (okio.FileSystem) anonymousClass1.L$1;
                $this$collectRecursively = (SequenceScope) anonymousClass1.L$0;
                ResultKt.throwOnFailure($result);
                listListOrNull = fileSystem2.listOrNull(path2);
                if (listListOrNull == null) {
                }
                if (!listListOrNull.isEmpty()) {
                }
                if (postorder) {
                }
                return Unit.INSTANCE;
            case 2:
                postorder = anonymousClass1.Z$1;
                followSymlinks = anonymousClass1.Z$0;
                it = (Iterator) anonymousClass1.L$4;
                Path path4 = (Path) anonymousClass1.L$3;
                arrayDeque3 = (ArrayDeque) anonymousClass1.L$2;
                fileSystem3 = (okio.FileSystem) anonymousClass1.L$1;
                $this$collectRecursively2 = (SequenceScope) anonymousClass1.L$0;
                try {
                    ResultKt.throwOnFailure($result);
                    path3 = path4;
                    arrayDeque2 = arrayDeque3;
                    while (it.hasNext()) {
                        try {
                            Path child = it.next();
                            boolean z3 = followSymlinks;
                            boolean z4 = postorder;
                            anonymousClass1.L$0 = $this$collectRecursively2;
                            anonymousClass1.L$1 = fileSystem3;
                            anonymousClass1.L$2 = arrayDeque2;
                            anonymousClass1.L$3 = path3;
                            anonymousClass1.L$4 = it;
                            anonymousClass1.Z$0 = followSymlinks;
                            anonymousClass1.Z$1 = postorder;
                            anonymousClass1.label = 2;
                            AnonymousClass1 anonymousClass12 = anonymousClass1;
                            ArrayDeque<Path> arrayDeque4 = arrayDeque2;
                            okio.FileSystem fileSystem4 = fileSystem3;
                            SequenceScope $this$collectRecursively3 = $this$collectRecursively2;
                            try {
                                if (collectRecursively($this$collectRecursively3, fileSystem4, arrayDeque4, child, z3, z4, anonymousClass12) == coroutine_suspended) {
                                    return coroutine_suspended;
                                }
                                anonymousClass1 = anonymousClass12;
                                arrayDeque2 = arrayDeque4;
                                fileSystem3 = fileSystem4;
                                $this$collectRecursively2 = $this$collectRecursively3;
                            } catch (Throwable th2) {
                                th = th2;
                                arrayDeque3 = arrayDeque4;
                                arrayDeque3.removeLast();
                                throw th;
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            arrayDeque3 = arrayDeque2;
                        }
                        break;
                    }
                    arrayDeque2.removeLast();
                    path2 = path3;
                    $this$collectRecursively = $this$collectRecursively2;
                    if (postorder) {
                    }
                    return Unit.INSTANCE;
                } catch (Throwable th4) {
                    th = th4;
                    arrayDeque3.removeLast();
                    throw th;
                }
            case 3:
                ResultKt.throwOnFailure($result);
                return Unit.INSTANCE;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public static final Path symlinkTarget(okio.FileSystem $this$symlinkTarget, Path path) throws IOException {
        Intrinsics.checkNotNullParameter($this$symlinkTarget, "<this>");
        Intrinsics.checkNotNullParameter(path, "path");
        Path target = $this$symlinkTarget.metadata(path).getSymlinkTarget();
        if (target == null) {
            return null;
        }
        Path pathParent = path.parent();
        Intrinsics.checkNotNull(pathParent);
        return pathParent.resolve(target);
    }

    public static final void commonCopy(okio.FileSystem $this$commonCopy, Path source, Path target) throws IOException {
        Throwable thrown$iv;
        Object result$iv;
        Intrinsics.checkNotNullParameter($this$commonCopy, "<this>");
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(target, "target");
        Closeable $this$use$iv = $this$commonCopy.source(source);
        Throwable thrown$iv2 = null;
        Object result$iv2 = null;
        try {
            Source bytesIn = (Source) $this$use$iv;
            Closeable $this$use$iv2 = Okio.buffer($this$commonCopy.sink(target));
            thrown$iv = null;
            try {
                BufferedSink bytesOut = (BufferedSink) $this$use$iv2;
                result$iv = Long.valueOf(bytesOut.writeAll(bytesIn));
                if ($this$use$iv2 != null) {
                    try {
                        $this$use$iv2.close();
                    } catch (Throwable t$iv) {
                        thrown$iv = t$iv;
                    }
                }
            } catch (Throwable t$iv2) {
                thrown$iv = t$iv2;
                if ($this$use$iv2 != null) {
                    try {
                        $this$use$iv2.close();
                    } catch (Throwable t$iv3) {
                        ExceptionsKt.addSuppressed(thrown$iv, t$iv3);
                    }
                }
                result$iv = null;
            }
        } catch (Throwable t$iv4) {
            thrown$iv2 = t$iv4;
            if ($this$use$iv != null) {
                try {
                    $this$use$iv.close();
                } catch (Throwable t$iv5) {
                    ExceptionsKt.addSuppressed(thrown$iv2, t$iv5);
                }
            }
        }
        if (thrown$iv != null) {
            throw thrown$iv;
        }
        result$iv2 = Long.valueOf(((Number) result$iv).longValue());
        if ($this$use$iv != null) {
            try {
                $this$use$iv.close();
            } catch (Throwable t$iv6) {
                thrown$iv2 = t$iv6;
            }
        }
        if (thrown$iv2 == null) {
        } else {
            throw thrown$iv2;
        }
    }
}
