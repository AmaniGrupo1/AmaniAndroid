package androidx.work.impl.workers;

import androidx.autofill.HintConstants;
import androidx.work.Logger;
import androidx.work.impl.model.SystemIdInfo;
import androidx.work.impl.model.SystemIdInfoDao;
import androidx.work.impl.model.WorkNameDao;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecKt;
import androidx.work.impl.model.WorkTagDao;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DiagnosticsWorker.kt */
/* JADX INFO: loaded from: classes21.dex */
@Metadata(d1 = {"\u00004\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\u001a.\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bH\u0002\u001a/\u0010\r\u001a\u00020\u00012\u0006\u0010\u000e\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u00012\b\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u0001H\u0002¢\u0006\u0002\u0010\u0013\"\u0013\u0010\u0000\u001a\u00070\u0001¢\u0006\u0002\b\u0002X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"TAG", "", "Lorg/jspecify/annotations/NonNull;", "workSpecRows", "workNameDao", "Landroidx/work/impl/model/WorkNameDao;", "workTagDao", "Landroidx/work/impl/model/WorkTagDao;", "systemIdInfoDao", "Landroidx/work/impl/model/SystemIdInfoDao;", "workSpecs", "", "Landroidx/work/impl/model/WorkSpec;", "workSpecRow", "workSpec", HintConstants.AUTOFILL_HINT_NAME, "systemId", "", "tags", "(Landroidx/work/impl/model/WorkSpec;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;", "work-runtime_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class DiagnosticsWorkerKt {
    private static final String TAG;

    static {
        String strTagWithPrefix = Logger.tagWithPrefix("DiagnosticsWrkr");
        Intrinsics.checkNotNullExpressionValue(strTagWithPrefix, "tagWithPrefix(...)");
        TAG = strTagWithPrefix;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String workSpecRows(WorkNameDao workNameDao, WorkTagDao workTagDao, SystemIdInfoDao systemIdInfoDao, List<WorkSpec> list) {
        StringBuilder $this$workSpecRows_u24lambda_u241 = new StringBuilder();
        int i = 0;
        String header = "\n Id \t Class Name\t Job Id\t State\t Unique Name\t Tags\t";
        $this$workSpecRows_u24lambda_u241.append(header);
        List<WorkSpec> $this$forEach$iv = list;
        for (Object element$iv : $this$forEach$iv) {
            WorkSpec workSpec = (WorkSpec) element$iv;
            SystemIdInfo systemIdInfo = systemIdInfoDao.getSystemIdInfo(WorkSpecKt.generationalId(workSpec));
            Integer systemId = systemIdInfo != null ? Integer.valueOf(systemIdInfo.systemId) : null;
            String names = CollectionsKt.joinToString$default(workNameDao.getNamesForWorkSpecId(workSpec.id), ",", null, null, 0, null, null, 62, null);
            StringBuilder sb = $this$workSpecRows_u24lambda_u241;
            String tags = CollectionsKt.joinToString$default(workTagDao.getTagsForWorkSpecId(workSpec.id), ",", null, null, 0, null, null, 62, null);
            $this$workSpecRows_u24lambda_u241.append(workSpecRow(workSpec, names, systemId, tags));
            $this$workSpecRows_u24lambda_u241 = sb;
            i = i;
        }
        return $this$workSpecRows_u24lambda_u241.toString();
    }

    private static final String workSpecRow(WorkSpec workSpec, String name, Integer systemId, String tags) {
        return '\n' + workSpec.id + "\t " + workSpec.workerClassName + "\t " + systemId + "\t " + workSpec.state.name() + "\t " + name + "\t " + tags + '\t';
    }
}
