package com.google.firebase.firestore;

import androidx.exifinterface.media.ExifInterface;
import com.google.firebase.firestore.DocumentChange;
import com.google.firebase.firestore.core.DocumentViewChange;
import com.google.firebase.firestore.core.ViewSnapshot;
import com.google.firebase.firestore.model.Document;
import com.google.firebase.firestore.model.DocumentSet;
import com.google.firebase.firestore.util.Assert;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: RealtimePipeline.kt */
/* JADX INFO: loaded from: classes22.dex */
@Metadata(d1 = {"\u00000\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u001aJ\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062$\u0010\u0007\u001a \u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u0002H\u00020\bH\u0000\u001a\u0010\u0010\f\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000eH\u0002¨\u0006\u000f"}, d2 = {"changesFromSnapshot", "", ExifInterface.GPS_DIRECTION_TRUE, "metadataChanges", "Lcom/google/firebase/firestore/MetadataChanges;", "snapshot", "Lcom/google/firebase/firestore/core/ViewSnapshot;", "fromDocument", "Lkotlin/Function4;", "Lcom/google/firebase/firestore/model/Document;", "Lcom/google/firebase/firestore/DocumentChange$Type;", "", "getType", "change", "Lcom/google/firebase/firestore/core/DocumentViewChange;", "com.google.firebase-firebase-firestore"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class RealtimePipelineKt {

    /* JADX INFO: compiled from: RealtimePipeline.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[DocumentViewChange.Type.values().length];
            try {
                iArr[DocumentViewChange.Type.ADDED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                iArr[DocumentViewChange.Type.METADATA.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                iArr[DocumentViewChange.Type.MODIFIED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                iArr[DocumentViewChange.Type.REMOVED.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final <T> List<T> changesFromSnapshot(MetadataChanges metadataChanges, ViewSnapshot snapshot, Function4<? super Document, ? super DocumentChange.Type, ? super Integer, ? super Integer, ? extends T> fromDocument) {
        int oldIndex;
        int newIndex;
        Intrinsics.checkNotNullParameter(metadataChanges, "metadataChanges");
        Intrinsics.checkNotNullParameter(snapshot, "snapshot");
        Intrinsics.checkNotNullParameter(fromDocument, "fromDocument");
        List documentChanges = new ArrayList();
        if (snapshot.getOldDocuments().isEmpty()) {
            int index = 0;
            Document lastDoc = null;
            for (DocumentViewChange change : snapshot.getChanges()) {
                Document document = change.getDocument();
                Assert.hardAssert(change.getType() == DocumentViewChange.Type.ADDED, "Invalid added event for first snapshot", new Object[0]);
                Assert.hardAssert(lastDoc == null || snapshot.getQuery().comparator().compare(lastDoc, document) < 0, "Got added events in wrong order", new Object[0]);
                Intrinsics.checkNotNull(document);
                documentChanges.add(fromDocument.invoke(document, DocumentChange.Type.ADDED, -1, Integer.valueOf(index)));
                lastDoc = document;
                index++;
            }
        } else {
            DocumentSet indexTracker = snapshot.getOldDocuments();
            for (DocumentViewChange change2 : snapshot.getChanges()) {
                if (metadataChanges != MetadataChanges.EXCLUDE || change2.getType() != DocumentViewChange.Type.METADATA) {
                    Document document2 = change2.getDocument();
                    Intrinsics.checkNotNull(change2);
                    DocumentChange.Type type = getType(change2);
                    if (type != DocumentChange.Type.ADDED) {
                        oldIndex = indexTracker.indexOf(document2.getKey());
                        Assert.hardAssert(oldIndex >= 0, "Index for document not found", new Object[0]);
                        indexTracker = indexTracker.remove(document2.getKey());
                    } else {
                        oldIndex = -1;
                    }
                    if (type != DocumentChange.Type.REMOVED) {
                        indexTracker = indexTracker.add(document2);
                        newIndex = indexTracker.indexOf(document2.getKey());
                        Assert.hardAssert(newIndex >= 0, "Index for document not found", new Object[0]);
                    } else {
                        newIndex = -1;
                    }
                    Intrinsics.checkNotNull(document2);
                    documentChanges.add(fromDocument.invoke(document2, type, Integer.valueOf(oldIndex), Integer.valueOf(newIndex)));
                }
            }
        }
        return documentChanges;
    }

    private static final DocumentChange.Type getType(DocumentViewChange change) {
        DocumentViewChange.Type type = change.getType();
        switch (type == null ? -1 : WhenMappings.$EnumSwitchMapping$0[type.ordinal()]) {
            case 1:
                return DocumentChange.Type.ADDED;
            case 2:
            case 3:
                return DocumentChange.Type.MODIFIED;
            case 4:
                return DocumentChange.Type.REMOVED;
            default:
                throw new IllegalArgumentException("Unknown view change type: " + change.getType());
        }
    }
}
