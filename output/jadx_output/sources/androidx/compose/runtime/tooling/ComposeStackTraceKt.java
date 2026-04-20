package androidx.compose.runtime.tooling;

import androidx.compose.runtime.ComposerImplKt;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MovableContentKt;
import java.util.ArrayList;
import java.util.List;
import kotlin.ExceptionsKt;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: compiled from: ComposeStackTrace.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000<\n\u0000\n\u0002\u0010\u000b\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\u001a\u001c\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u000e\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004H\u0000\u001a\u001c\u0010\u0006\u001a\u00020\u0002*\u00020\u00022\u000e\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004H\u0000\u001a\u0018\u0010\u0007\u001a\u00020\b*\u00060\tj\u0002`\n2\u0006\u0010\u0003\u001a\u00020\u0005H\u0000\u001a\u0018\u0010\u000b\u001a\u00020\b*\u00060\tj\u0002`\n2\u0006\u0010\u0003\u001a\u00020\u0005H\u0000\u001a\u0012\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000e0\r*\u00020\u0005H\u0000\u001a\u0018\u0010\u000f\u001a\u00020\b*\u00060\tj\u0002`\n2\u0006\u0010\u0003\u001a\u00020\u0005H\u0000\"\u000e\u0010\u0010\u001a\u00020\u0011X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0012\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"tryAttachComposeStackTrace", "", "", "trace", "Lkotlin/Function0;", "Landroidx/compose/runtime/tooling/ComposeStackTrace;", "attachComposeStackTrace", "appendStackTrace", "", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "appendSourceInformationStackTrace", "filterInternalFramesByGroupKey", "", "Landroidx/compose/runtime/tooling/ComposeStackTraceFrame;", "appendGroupKeyStackTrace", "RuntimePackageHash", "", "IncludeDebugInfo", "runtime"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class ComposeStackTraceKt {
    private static final boolean IncludeDebugInfo = false;
    private static final String RuntimePackageHash = "9igjgp";

    public static final boolean tryAttachComposeStackTrace(Throwable $this$tryAttachComposeStackTrace, Function0<ComposeStackTrace> function0) {
        boolean z;
        boolean z2;
        Throwable traceException;
        Throwable diagnosticComposeException;
        boolean result = false;
        List<Throwable> suppressedExceptions = ExceptionsKt.getSuppressedExceptions($this$tryAttachComposeStackTrace);
        int index$iv$iv = 0;
        int size = suppressedExceptions.size();
        while (true) {
            z = false;
            if (index$iv$iv < size) {
                Object item$iv$iv = suppressedExceptions.get(index$iv$iv);
                Throwable it = (Throwable) item$iv$iv;
                if (it instanceof DiagnosticComposeException) {
                    z2 = false;
                    break;
                }
                index$iv$iv++;
            } else {
                z2 = true;
                break;
            }
        }
        if (z2) {
            try {
                ComposeStackTrace stackTrace = function0.invoke();
                if (stackTrace != null && !stackTrace.getFrames().isEmpty()) {
                    z = true;
                }
                result = z;
                if (result) {
                    Intrinsics.checkNotNull(stackTrace);
                    diagnosticComposeException = new DiagnosticComposeException(stackTrace);
                } else {
                    diagnosticComposeException = null;
                }
                traceException = diagnosticComposeException;
            } catch (Throwable th) {
                traceException = th;
            }
            if (traceException != null) {
                ExceptionsKt.addSuppressed($this$tryAttachComposeStackTrace, traceException);
            }
        }
        return result;
    }

    public static final Throwable attachComposeStackTrace(Throwable $this$attachComposeStackTrace, Function0<ComposeStackTrace> function0) {
        tryAttachComposeStackTrace($this$attachComposeStackTrace, function0);
        return $this$attachComposeStackTrace;
    }

    public static final void appendStackTrace(StringBuilder $this$appendStackTrace, ComposeStackTrace trace) {
        if (trace.getHasSourceInformation()) {
            appendSourceInformationStackTrace($this$appendStackTrace, trace);
        } else {
            appendGroupKeyStackTrace($this$appendStackTrace, trace);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00ee  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void appendSourceInformationStackTrace(StringBuilder $this$appendSourceInformationStackTrace, ComposeStackTrace trace) {
        List list;
        String traceLine;
        String traceLine2 = null;
        String str = null;
        List $this$appendSourceInformationStackTrace_u24lambda_u240 = CollectionsKt.createListBuilder();
        List $this$fastForEach$iv = CollectionsKt.asReversed(trace.getFrames());
        int index$iv = 0;
        int size = $this$fastForEach$iv.size();
        while (index$iv < size) {
            Object item$iv = $this$fastForEach$iv.get(index$iv);
            ComposeStackTraceFrame frame = (ComposeStackTraceFrame) item$iv;
            SourceInformation sourceInfo = frame.getSourceInfo();
            if (sourceInfo != null) {
                String functionName = sourceInfo.getFunctionName();
                if (functionName == null) {
                    functionName = sourceInfo.getIsCall() ? "<lambda>" : null;
                    if (functionName == null) {
                        functionName = traceLine2 == null ? "<unknown function>" : traceLine2;
                    }
                }
                String fileName = sourceInfo.getSourceFile();
                if (fileName == null) {
                    fileName = str == null ? "<unknown file>" : str;
                }
                List<LocationSourceInformation> locations = sourceInfo.getLocations();
                if (frame.getGroupOffset() != null) {
                    list = $this$appendSourceInformationStackTrace_u24lambda_u240;
                    String resolvedLine = frame.getGroupOffset().intValue() < locations.size() ? String.valueOf(locations.get(frame.getGroupOffset().intValue()).getLineNumber()) : "<unknown line>";
                    StringBuilder $this$appendSourceInformationStackTrace_u24lambda_u240_u240_u242 = new StringBuilder();
                    $this$appendSourceInformationStackTrace_u24lambda_u240_u240_u242.append(functionName);
                    $this$appendSourceInformationStackTrace_u24lambda_u240_u240_u242.append('(');
                    $this$appendSourceInformationStackTrace_u24lambda_u240_u240_u242.append(fileName);
                    $this$appendSourceInformationStackTrace_u24lambda_u240_u240_u242.append(AbstractJsonLexerKt.COLON);
                    $this$appendSourceInformationStackTrace_u24lambda_u240_u240_u242.append(resolvedLine);
                    $this$appendSourceInformationStackTrace_u24lambda_u240_u240_u242.append(')');
                    traceLine = $this$appendSourceInformationStackTrace_u24lambda_u240_u240_u242.toString();
                    Intrinsics.checkNotNullExpressionValue(traceLine, "toString(...)");
                    if (!sourceInfo.getIsCall()) {
                    }
                    if (Intrinsics.areEqual(sourceInfo.getFunctionName(), "rememberCompositionContext") || !Intrinsics.areEqual(sourceInfo.getPackageHash(), RuntimePackageHash)) {
                        $this$appendSourceInformationStackTrace_u24lambda_u240.add(traceLine);
                    }
                    traceLine2 = functionName;
                    str = fileName;
                } else {
                    list = $this$appendSourceInformationStackTrace_u24lambda_u240;
                }
                StringBuilder $this$appendSourceInformationStackTrace_u24lambda_u240_u240_u2422 = new StringBuilder();
                $this$appendSourceInformationStackTrace_u24lambda_u240_u240_u2422.append(functionName);
                $this$appendSourceInformationStackTrace_u24lambda_u240_u240_u2422.append('(');
                $this$appendSourceInformationStackTrace_u24lambda_u240_u240_u2422.append(fileName);
                $this$appendSourceInformationStackTrace_u24lambda_u240_u240_u2422.append(AbstractJsonLexerKt.COLON);
                $this$appendSourceInformationStackTrace_u24lambda_u240_u240_u2422.append(resolvedLine);
                $this$appendSourceInformationStackTrace_u24lambda_u240_u240_u2422.append(')');
                traceLine = $this$appendSourceInformationStackTrace_u24lambda_u240_u240_u2422.toString();
                Intrinsics.checkNotNullExpressionValue(traceLine, "toString(...)");
                if (!sourceInfo.getIsCall()) {
                }
                if (Intrinsics.areEqual(sourceInfo.getFunctionName(), "rememberCompositionContext")) {
                    $this$appendSourceInformationStackTrace_u24lambda_u240.add(traceLine);
                    traceLine2 = functionName;
                    str = fileName;
                }
            } else {
                list = $this$appendSourceInformationStackTrace_u24lambda_u240;
            }
            index$iv++;
            $this$appendSourceInformationStackTrace_u24lambda_u240 = list;
        }
        List lines = CollectionsKt.build($this$appendSourceInformationStackTrace_u24lambda_u240);
        List $this$fastForEach$iv2 = CollectionsKt.asReversed(lines);
        int size2 = $this$fastForEach$iv2.size();
        for (int index$iv2 = 0; index$iv2 < size2; index$iv2++) {
            Object item$iv2 = $this$fastForEach$iv2.get(index$iv2);
            String it = (String) item$iv2;
            $this$appendSourceInformationStackTrace.append("\tat ");
            StringBuilder sbAppend = $this$appendSourceInformationStackTrace.append(it);
            Intrinsics.checkNotNullExpressionValue(sbAppend, "append(...)");
            Intrinsics.checkNotNullExpressionValue(sbAppend.append('\n'), "append(...)");
        }
    }

    public static final List<ComposeStackTraceFrame> filterInternalFramesByGroupKey(ComposeStackTrace $this$filterInternalFramesByGroupKey) {
        int[] knownKeys = {201, 202, ComposerKt.providerMapsKey, ComposerKt.referenceKey, ComposerKt.reuseKey, ComposerImplKt.nodeKey, ComposerKt.defaultsKey, MovableContentKt.movableContentKey, 200};
        int i = 0;
        int fCount = $this$filterInternalFramesByGroupKey.getFrames().size();
        List filteredFrames = new ArrayList();
        while (i < fCount) {
            int i2 = i + 1;
            ComposeStackTraceFrame frame = $this$filterInternalFramesByGroupKey.getFrames().get(i);
            if (!ArraysKt.contains(knownKeys, frame.getGroupKey())) {
                if (frame.getGroupKey() != 100) {
                    filteredFrames.add(frame);
                } else {
                    if (i2 + 1 < fCount && $this$filterInternalFramesByGroupKey.getFrames().get(i2 + 1).getGroupKey() == 1000) {
                        break;
                    }
                    CollectionsKt.removeLastOrNull(filteredFrames);
                }
            }
            i = i2;
        }
        return filteredFrames;
    }

    public static final void appendGroupKeyStackTrace(StringBuilder $this$appendGroupKeyStackTrace, ComposeStackTrace trace) {
        List<ComposeStackTraceFrame> listFilterInternalFramesByGroupKey = filterInternalFramesByGroupKey(trace);
        int size = listFilterInternalFramesByGroupKey.size();
        for (int index$iv = 0; index$iv < size; index$iv++) {
            Object item$iv = listFilterInternalFramesByGroupKey.get(index$iv);
            ComposeStackTraceFrame it = (ComposeStackTraceFrame) item$iv;
            $this$appendGroupKeyStackTrace.append("\tat $$compose.m$");
            $this$appendGroupKeyStackTrace.append(it.getGroupKey());
            $this$appendGroupKeyStackTrace.append("(SourceFile:1)");
            Intrinsics.checkNotNullExpressionValue($this$appendGroupKeyStackTrace.append('\n'), "append(...)");
        }
    }
}
