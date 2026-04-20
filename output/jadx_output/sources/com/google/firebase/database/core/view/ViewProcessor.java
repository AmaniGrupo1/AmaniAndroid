package com.google.firebase.database.core.view;

import com.google.firebase.database.core.CompoundWrite;
import com.google.firebase.database.core.Path;
import com.google.firebase.database.core.WriteTreeRef;
import com.google.firebase.database.core.operation.AckUserWrite;
import com.google.firebase.database.core.operation.Merge;
import com.google.firebase.database.core.operation.Operation;
import com.google.firebase.database.core.operation.Overwrite;
import com.google.firebase.database.core.utilities.ImmutableTree;
import com.google.firebase.database.core.utilities.Utilities;
import com.google.firebase.database.core.view.filter.ChildChangeAccumulator;
import com.google.firebase.database.core.view.filter.NodeFilter;
import com.google.firebase.database.snapshot.ChildKey;
import com.google.firebase.database.snapshot.ChildrenNode;
import com.google.firebase.database.snapshot.EmptyNode;
import com.google.firebase.database.snapshot.Index;
import com.google.firebase.database.snapshot.IndexedNode;
import com.google.firebase.database.snapshot.KeyIndex;
import com.google.firebase.database.snapshot.NamedNode;
import com.google.firebase.database.snapshot.Node;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes22.dex */
public class ViewProcessor {
    private static NodeFilter.CompleteChildSource NO_COMPLETE_SOURCE = new NodeFilter.CompleteChildSource() { // from class: com.google.firebase.database.core.view.ViewProcessor.1
        @Override // com.google.firebase.database.core.view.filter.NodeFilter.CompleteChildSource
        public Node getCompleteChild(ChildKey childKey) {
            return null;
        }

        @Override // com.google.firebase.database.core.view.filter.NodeFilter.CompleteChildSource
        public NamedNode getChildAfterChild(Index index, NamedNode child, boolean reverse) {
            return null;
        }
    };
    private final NodeFilter filter;

    public ViewProcessor(NodeFilter filter) {
        this.filter = filter;
    }

    public static class ProcessorResult {
        public final List<Change> changes;
        public final ViewCache viewCache;

        public ProcessorResult(ViewCache viewCache, List<Change> changes) {
            this.viewCache = viewCache;
            this.changes = changes;
        }
    }

    public ProcessorResult applyOperation(ViewCache oldViewCache, Operation operation, WriteTreeRef writesCache, Node optCompleteCache) {
        ViewCache oldViewCache2;
        ViewCache oldViewCache3;
        ChildChangeAccumulator accumulator = new ChildChangeAccumulator();
        switch (operation.getType()) {
            case Overwrite:
                Overwrite overwrite = (Overwrite) operation;
                if (overwrite.getSource().isFromUser()) {
                    oldViewCache2 = oldViewCache;
                    oldViewCache3 = applyUserOverwrite(oldViewCache2, overwrite.getPath(), overwrite.getSnapshot(), writesCache, optCompleteCache, accumulator);
                } else {
                    Utilities.hardAssert(overwrite.getSource().isFromServer());
                    if (overwrite.getSource().isTagged() || (oldViewCache.getServerCache().isFiltered() && !overwrite.getPath().isEmpty())) {
                        filterServerNode = true;
                    }
                    oldViewCache2 = oldViewCache;
                    ViewCache newViewCache = applyServerOverwrite(oldViewCache2, overwrite.getPath(), overwrite.getSnapshot(), writesCache, optCompleteCache, filterServerNode, accumulator);
                    accumulator = accumulator;
                    oldViewCache3 = newViewCache;
                }
                break;
            case Merge:
                Merge merge = (Merge) operation;
                if (merge.getSource().isFromUser()) {
                    oldViewCache2 = oldViewCache;
                    oldViewCache3 = applyUserMerge(oldViewCache2, merge.getPath(), merge.getChildren(), writesCache, optCompleteCache, accumulator);
                } else {
                    Utilities.hardAssert(merge.getSource().isFromServer());
                    filterServerNode = merge.getSource().isTagged() || oldViewCache.getServerCache().isFiltered();
                    oldViewCache2 = oldViewCache;
                    ViewCache newViewCache2 = applyServerMerge(oldViewCache2, merge.getPath(), merge.getChildren(), writesCache, optCompleteCache, filterServerNode, accumulator);
                    accumulator = accumulator;
                    oldViewCache3 = newViewCache2;
                }
                break;
            case AckUserWrite:
                oldViewCache2 = oldViewCache;
                AckUserWrite ackUserWrite = (AckUserWrite) operation;
                if (!ackUserWrite.isRevert()) {
                    oldViewCache3 = ackUserWrite(oldViewCache2, ackUserWrite.getPath(), ackUserWrite.getAffectedTree(), writesCache, optCompleteCache, accumulator);
                } else {
                    ViewCache newViewCache3 = revertUserWrite(oldViewCache2, ackUserWrite.getPath(), writesCache, optCompleteCache, accumulator);
                    oldViewCache3 = newViewCache3;
                }
                break;
            case ListenComplete:
                oldViewCache2 = oldViewCache;
                oldViewCache3 = listenComplete(oldViewCache2, operation.getPath(), writesCache, optCompleteCache, accumulator);
                break;
            default:
                throw new AssertionError("Unknown operation: " + operation.getType());
        }
        List<Change> changes = new ArrayList<>(accumulator.getChanges());
        maybeAddValueEvent(oldViewCache2, oldViewCache3, changes);
        return new ProcessorResult(oldViewCache3, changes);
    }

    private void maybeAddValueEvent(ViewCache oldViewCache, ViewCache newViewCache, List<Change> accumulator) {
        CacheNode eventSnap = newViewCache.getEventCache();
        if (eventSnap.isFullyInitialized()) {
            boolean isLeafOrEmpty = eventSnap.getNode().isLeafNode() || eventSnap.getNode().isEmpty();
            if (!accumulator.isEmpty() || !oldViewCache.getEventCache().isFullyInitialized() || ((isLeafOrEmpty && !eventSnap.getNode().equals(oldViewCache.getCompleteEventSnap())) || !eventSnap.getNode().getPriority().equals(oldViewCache.getCompleteEventSnap().getPriority()))) {
                accumulator.add(Change.valueChange(eventSnap.getIndexedNode()));
            }
        }
    }

    private ViewCache generateEventCacheAfterServerEvent(ViewCache viewCache, Path changePath, WriteTreeRef writesCache, NodeFilter.CompleteChildSource source, ChildChangeAccumulator accumulator) {
        Node newEventChild;
        IndexedNode newEventCache;
        Node newEventChild2;
        Node serverCache;
        CacheNode oldEventSnap = viewCache.getEventCache();
        if (writesCache.shadowingWrite(changePath) != null) {
            return viewCache;
        }
        if (changePath.isEmpty()) {
            Utilities.hardAssert(viewCache.getServerCache().isFullyInitialized(), "If change path is empty, we must have complete server data");
            if (viewCache.getServerCache().isFiltered()) {
                Node serverCache2 = viewCache.getCompleteServerSnap();
                Node completeChildren = serverCache2 instanceof ChildrenNode ? serverCache2 : EmptyNode.Empty();
                serverCache = writesCache.calcCompleteEventChildren(completeChildren);
            } else {
                serverCache = writesCache.calcCompleteEventCache(viewCache.getCompleteServerSnap());
            }
            IndexedNode indexedNode = IndexedNode.from(serverCache, this.filter.getIndex());
            newEventCache = this.filter.updateFullNode(viewCache.getEventCache().getIndexedNode(), indexedNode, accumulator);
        } else {
            ChildKey childKey = changePath.getFront();
            if (childKey.isPriorityChildName()) {
                Utilities.hardAssert(changePath.size() == 1, "Can't have a priority with additional path components");
                Node oldEventNode = oldEventSnap.getNode();
                Node serverNode = viewCache.getServerCache().getNode();
                Node updatedPriority = writesCache.calcEventCacheAfterServerOverwrite(changePath, oldEventNode, serverNode);
                if (updatedPriority != null) {
                    newEventCache = this.filter.updatePriority(oldEventSnap.getIndexedNode(), updatedPriority);
                } else {
                    IndexedNode newEventCache2 = oldEventSnap.getIndexedNode();
                    newEventCache = newEventCache2;
                }
            } else {
                Path childChangePath = changePath.popFront();
                if (oldEventSnap.isCompleteForChild(childKey)) {
                    Node serverNode2 = viewCache.getServerCache().getNode();
                    Node eventChildUpdate = writesCache.calcEventCacheAfterServerOverwrite(changePath, oldEventSnap.getNode(), serverNode2);
                    if (eventChildUpdate != null) {
                        newEventChild2 = oldEventSnap.getNode().getImmediateChild(childKey).updateChild(childChangePath, eventChildUpdate);
                    } else {
                        Node newEventChild3 = oldEventSnap.getNode();
                        newEventChild2 = newEventChild3.getImmediateChild(childKey);
                    }
                    newEventChild = newEventChild2;
                } else {
                    newEventChild = writesCache.calcCompleteChild(childKey, viewCache.getServerCache());
                }
                if (newEventChild != null) {
                    newEventCache = this.filter.updateChild(oldEventSnap.getIndexedNode(), childKey, newEventChild, childChangePath, source, accumulator);
                } else {
                    newEventCache = oldEventSnap.getIndexedNode();
                }
            }
        }
        return viewCache.updateEventSnap(newEventCache, oldEventSnap.isFullyInitialized() || changePath.isEmpty(), this.filter.filtersNodes());
    }

    private ViewCache applyServerOverwrite(ViewCache oldViewCache, Path changePath, Node changedSnap, WriteTreeRef writesCache, Node optCompleteCache, boolean filterServerNode, ChildChangeAccumulator accumulator) {
        Path path;
        NodeFilter serverFilter;
        IndexedNode newServerCache;
        CacheNode oldServerSnap = oldViewCache.getServerCache();
        NodeFilter indexedFilter = this.filter;
        if (!filterServerNode) {
            indexedFilter = indexedFilter.getIndexedFilter();
        }
        NodeFilter serverFilter2 = indexedFilter;
        boolean z = true;
        if (changePath.isEmpty()) {
            newServerCache = serverFilter2.updateFullNode(oldServerSnap.getIndexedNode(), IndexedNode.from(changedSnap, serverFilter2.getIndex()), null);
            serverFilter = serverFilter2;
            path = changePath;
        } else if (serverFilter2.filtersNodes() && !oldServerSnap.isFiltered()) {
            Utilities.hardAssert(!changePath.isEmpty(), "An empty path should have been caught in the other branch");
            ChildKey childKey = changePath.getFront();
            Path updatePath = changePath.popFront();
            Node newChild = oldServerSnap.getNode().getImmediateChild(childKey).updateChild(updatePath, changedSnap);
            IndexedNode newServerNode = oldServerSnap.getIndexedNode().updateChild(childKey, newChild);
            IndexedNode newServerCache2 = serverFilter2.updateFullNode(oldServerSnap.getIndexedNode(), newServerNode, null);
            newServerCache = newServerCache2;
            serverFilter = serverFilter2;
            path = changePath;
        } else {
            ChildKey childKey2 = changePath.getFront();
            path = changePath;
            if (!oldServerSnap.isCompleteForPath(path) && path.size() > 1) {
                return oldViewCache;
            }
            Path childChangePath = path.popFront();
            Node childNode = oldServerSnap.getNode().getImmediateChild(childKey2);
            Node newChildNode = childNode.updateChild(childChangePath, changedSnap);
            if (childKey2.isPriorityChildName()) {
                serverFilter = serverFilter2;
                newServerCache = serverFilter2.updatePriority(oldServerSnap.getIndexedNode(), newChildNode);
            } else {
                IndexedNode indexedNodeUpdateChild = serverFilter2.updateChild(oldServerSnap.getIndexedNode(), childKey2, newChildNode, childChangePath, NO_COMPLETE_SOURCE, null);
                serverFilter = serverFilter2;
                newServerCache = indexedNodeUpdateChild;
            }
        }
        if (!oldServerSnap.isFullyInitialized() && !path.isEmpty()) {
            z = false;
        }
        ViewCache newViewCache = oldViewCache.updateServerSnap(newServerCache, z, serverFilter.filtersNodes());
        NodeFilter.CompleteChildSource source = new WriteTreeCompleteChildSource(writesCache, newViewCache, optCompleteCache);
        return generateEventCacheAfterServerEvent(newViewCache, path, writesCache, source, accumulator);
    }

    private ViewCache applyUserOverwrite(ViewCache oldViewCache, Path changePath, Node changedSnap, WriteTreeRef writesCache, Node optCompleteCache, ChildChangeAccumulator accumulator) {
        Node newChild;
        CacheNode oldEventSnap = oldViewCache.getEventCache();
        NodeFilter.CompleteChildSource source = new WriteTreeCompleteChildSource(writesCache, oldViewCache, optCompleteCache);
        if (changePath.isEmpty()) {
            IndexedNode newIndexed = IndexedNode.from(changedSnap, this.filter.getIndex());
            IndexedNode newEventCache = this.filter.updateFullNode(oldViewCache.getEventCache().getIndexedNode(), newIndexed, accumulator);
            ViewCache newViewCache = oldViewCache.updateEventSnap(newEventCache, true, this.filter.filtersNodes());
            return newViewCache;
        }
        ChildKey childKey = changePath.getFront();
        if (childKey.isPriorityChildName()) {
            IndexedNode newEventCache2 = this.filter.updatePriority(oldViewCache.getEventCache().getIndexedNode(), changedSnap);
            ViewCache newViewCache2 = oldViewCache.updateEventSnap(newEventCache2, oldEventSnap.isFullyInitialized(), oldEventSnap.isFiltered());
            return newViewCache2;
        }
        Path childChangePath = changePath.popFront();
        Node oldChild = oldEventSnap.getNode().getImmediateChild(childKey);
        if (childChangePath.isEmpty()) {
            newChild = changedSnap;
        } else {
            Node childNode = source.getCompleteChild(childKey);
            if (childNode != null) {
                if (childChangePath.getBack().isPriorityChildName() && childNode.getChild(childChangePath.getParent()).isEmpty()) {
                    newChild = childNode;
                } else {
                    Node newChild2 = childNode.updateChild(childChangePath, changedSnap);
                    newChild = newChild2;
                }
            } else {
                Node newChild3 = EmptyNode.Empty();
                newChild = newChild3;
            }
        }
        if (oldChild.equals(newChild)) {
            return oldViewCache;
        }
        IndexedNode newEventSnap = this.filter.updateChild(oldEventSnap.getIndexedNode(), childKey, newChild, childChangePath, source, accumulator);
        ViewCache newViewCache3 = oldViewCache.updateEventSnap(newEventSnap, oldEventSnap.isFullyInitialized(), this.filter.filtersNodes());
        return newViewCache3;
    }

    private static boolean cacheHasChild(ViewCache viewCache, ChildKey childKey) {
        return viewCache.getEventCache().isCompleteForChild(childKey);
    }

    private ViewCache applyUserMerge(ViewCache viewCache, Path path, CompoundWrite changedChildren, WriteTreeRef writesCache, Node serverCache, ChildChangeAccumulator accumulator) {
        Utilities.hardAssert(changedChildren.rootWrite() == null, "Can't have a merge that is an overwrite");
        ViewCache currentViewCache = viewCache;
        for (Map.Entry<Path, Node> entry : changedChildren) {
            Path writePath = path.child(entry.getKey());
            if (cacheHasChild(viewCache, writePath.getFront())) {
                currentViewCache = applyUserOverwrite(currentViewCache, writePath, entry.getValue(), writesCache, serverCache, accumulator);
            }
        }
        ViewCache currentViewCache2 = currentViewCache;
        for (Map.Entry<Path, Node> entry2 : changedChildren) {
            Path writePath2 = path.child(entry2.getKey());
            if (!cacheHasChild(viewCache, writePath2.getFront())) {
                currentViewCache2 = applyUserOverwrite(currentViewCache2, writePath2, entry2.getValue(), writesCache, serverCache, accumulator);
            }
        }
        return currentViewCache2;
    }

    private ViewCache applyServerMerge(ViewCache viewCache, Path path, CompoundWrite changedChildren, WriteTreeRef writesCache, Node serverCache, boolean filterServerNode, ChildChangeAccumulator accumulator) {
        CompoundWrite actualMerge;
        if (viewCache.getServerCache().getNode().isEmpty() && !viewCache.getServerCache().isFullyInitialized()) {
            return viewCache;
        }
        Utilities.hardAssert(changedChildren.rootWrite() == null, "Can't have a merge that is an overwrite");
        if (path.isEmpty()) {
            actualMerge = changedChildren;
        } else {
            CompoundWrite actualMerge2 = CompoundWrite.emptyWrite();
            actualMerge = actualMerge2.addWrites(path, changedChildren);
        }
        Node serverNode = viewCache.getServerCache().getNode();
        Map<ChildKey, CompoundWrite> childCompoundWrites = actualMerge.childCompoundWrites();
        ViewCache curViewCache = viewCache;
        for (Map.Entry<ChildKey, CompoundWrite> childMerge : childCompoundWrites.entrySet()) {
            ChildKey childKey = childMerge.getKey();
            if (serverNode.hasChild(childKey)) {
                Node serverChild = serverNode.getImmediateChild(childKey);
                Node newChild = childMerge.getValue().apply(serverChild);
                curViewCache = applyServerOverwrite(curViewCache, new Path(childKey), newChild, writesCache, serverCache, filterServerNode, accumulator);
            }
        }
        ViewCache curViewCache2 = curViewCache;
        for (Map.Entry<ChildKey, CompoundWrite> childMerge2 : childCompoundWrites.entrySet()) {
            ChildKey childKey2 = childMerge2.getKey();
            CompoundWrite childCompoundWrite = childMerge2.getValue();
            boolean isUnknownDeepMerge = !viewCache.getServerCache().isCompleteForChild(childKey2) && childCompoundWrite.rootWrite() == null;
            if (!serverNode.hasChild(childKey2) && !isUnknownDeepMerge) {
                Node serverChild2 = serverNode.getImmediateChild(childKey2);
                Node newChild2 = childMerge2.getValue().apply(serverChild2);
                curViewCache2 = applyServerOverwrite(curViewCache2, new Path(childKey2), newChild2, writesCache, serverCache, filterServerNode, accumulator);
            }
        }
        return curViewCache2;
    }

    private ViewCache ackUserWrite(ViewCache viewCache, Path ackPath, ImmutableTree<Boolean> affectedTree, WriteTreeRef writesCache, Node optCompleteCache, ChildChangeAccumulator accumulator) {
        if (writesCache.shadowingWrite(ackPath) != null) {
            return viewCache;
        }
        boolean filterServerNode = viewCache.getServerCache().isFiltered();
        CacheNode serverCache = viewCache.getServerCache();
        if (affectedTree.getValue() != null) {
            if ((ackPath.isEmpty() && serverCache.isFullyInitialized()) || serverCache.isCompleteForPath(ackPath)) {
                return applyServerOverwrite(viewCache, ackPath, serverCache.getNode().getChild(ackPath), writesCache, optCompleteCache, filterServerNode, accumulator);
            }
            if (!ackPath.isEmpty()) {
                return viewCache;
            }
            CompoundWrite changedChildren = CompoundWrite.emptyWrite();
            CompoundWrite changedChildren2 = changedChildren;
            for (NamedNode child : serverCache.getNode()) {
                changedChildren2 = changedChildren2.addWrite(child.getName(), child.getNode());
            }
            return applyServerMerge(viewCache, ackPath, changedChildren2, writesCache, optCompleteCache, filterServerNode, accumulator);
        }
        CompoundWrite changedChildren3 = CompoundWrite.emptyWrite();
        CompoundWrite changedChildren4 = changedChildren3;
        for (Map.Entry<Path, Boolean> entry : affectedTree) {
            Path mergePath = entry.getKey();
            Path serverCachePath = ackPath.child(mergePath);
            if (serverCache.isCompleteForPath(serverCachePath)) {
                changedChildren4 = changedChildren4.addWrite(mergePath, serverCache.getNode().getChild(serverCachePath));
            }
        }
        return applyServerMerge(viewCache, ackPath, changedChildren4, writesCache, optCompleteCache, filterServerNode, accumulator);
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x00f8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public ViewCache revertUserWrite(ViewCache viewCache, Path path, WriteTreeRef writesCache, Node optCompleteServerCache, ChildChangeAccumulator accumulator) {
        IndexedNode newEventCache;
        Node newNode;
        Node newChild;
        ChildChangeAccumulator accumulator2;
        if (writesCache.shadowingWrite(path) != null) {
            return viewCache;
        }
        NodeFilter.CompleteChildSource source = new WriteTreeCompleteChildSource(writesCache, viewCache, optCompleteServerCache);
        IndexedNode oldEventCache = viewCache.getEventCache().getIndexedNode();
        if (path.isEmpty() || path.getFront().isPriorityChildName()) {
            ChildChangeAccumulator accumulator3 = accumulator;
            if (viewCache.getServerCache().isFullyInitialized()) {
                newNode = writesCache.calcCompleteEventCache(viewCache.getCompleteServerSnap());
            } else {
                newNode = writesCache.calcCompleteEventChildren(viewCache.getServerCache().getNode());
            }
            IndexedNode indexedNode = IndexedNode.from(newNode, this.filter.getIndex());
            newEventCache = this.filter.updateFullNode(oldEventCache, indexedNode, accumulator3);
            return viewCache.updateEventSnap(newEventCache, (viewCache.getServerCache().isFullyInitialized() && writesCache.shadowingWrite(Path.getEmptyPath()) == null) ? false : true, this.filter.filtersNodes());
        }
        ChildKey childKey = path.getFront();
        Node newChild2 = writesCache.calcCompleteChild(childKey, viewCache.getServerCache());
        if (newChild2 == null && viewCache.getServerCache().isCompleteForChild(childKey)) {
            newChild = oldEventCache.getNode().getImmediateChild(childKey);
        } else {
            newChild = newChild2;
        }
        if (newChild != null) {
            accumulator2 = accumulator;
            newEventCache = this.filter.updateChild(oldEventCache, childKey, newChild, path.popFront(), source, accumulator2);
        } else {
            accumulator2 = accumulator;
            if (newChild == null && viewCache.getEventCache().getNode().hasChild(childKey)) {
                newEventCache = this.filter.updateChild(oldEventCache, childKey, EmptyNode.Empty(), path.popFront(), source, accumulator2);
            } else {
                newEventCache = oldEventCache;
            }
        }
        if (newEventCache.getNode().isEmpty() && viewCache.getServerCache().isFullyInitialized()) {
            Node complete = writesCache.calcCompleteEventCache(viewCache.getCompleteServerSnap());
            if (complete.isLeafNode()) {
                IndexedNode indexedNode2 = IndexedNode.from(complete, this.filter.getIndex());
                newEventCache = this.filter.updateFullNode(newEventCache, indexedNode2, accumulator2);
            }
        }
        return viewCache.updateEventSnap(newEventCache, (viewCache.getServerCache().isFullyInitialized() && writesCache.shadowingWrite(Path.getEmptyPath()) == null) ? false : true, this.filter.filtersNodes());
    }

    private ViewCache listenComplete(ViewCache viewCache, Path path, WriteTreeRef writesCache, Node serverCache, ChildChangeAccumulator accumulator) {
        CacheNode oldServerNode = viewCache.getServerCache();
        ViewCache newViewCache = viewCache.updateServerSnap(oldServerNode.getIndexedNode(), oldServerNode.isFullyInitialized() || path.isEmpty(), oldServerNode.isFiltered());
        return generateEventCacheAfterServerEvent(newViewCache, path, writesCache, NO_COMPLETE_SOURCE, accumulator);
    }

    private static class WriteTreeCompleteChildSource implements NodeFilter.CompleteChildSource {
        private final Node optCompleteServerCache;
        private final ViewCache viewCache;
        private final WriteTreeRef writes;

        public WriteTreeCompleteChildSource(WriteTreeRef writes, ViewCache viewCache, Node optCompleteServerCache) {
            this.writes = writes;
            this.viewCache = viewCache;
            this.optCompleteServerCache = optCompleteServerCache;
        }

        @Override // com.google.firebase.database.core.view.filter.NodeFilter.CompleteChildSource
        public Node getCompleteChild(ChildKey childKey) {
            CacheNode serverNode;
            CacheNode node = this.viewCache.getEventCache();
            if (node.isCompleteForChild(childKey)) {
                return node.getNode().getImmediateChild(childKey);
            }
            if (this.optCompleteServerCache != null) {
                serverNode = new CacheNode(IndexedNode.from(this.optCompleteServerCache, KeyIndex.getInstance()), true, false);
            } else {
                serverNode = this.viewCache.getServerCache();
            }
            return this.writes.calcCompleteChild(childKey, serverNode);
        }

        @Override // com.google.firebase.database.core.view.filter.NodeFilter.CompleteChildSource
        public NamedNode getChildAfterChild(Index index, NamedNode child, boolean reverse) {
            Node completeServerData;
            if (this.optCompleteServerCache != null) {
                completeServerData = this.optCompleteServerCache;
            } else {
                completeServerData = this.viewCache.getCompleteServerSnap();
            }
            return this.writes.calcNextNodeAfterPost(completeServerData, child, reverse, index);
        }
    }
}
