package org.koin.ext;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: StringExt.kt */
/* JADX INFO: loaded from: classes23.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u000e\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0001¨\u0006\u0002"}, d2 = {"clearQuotes", "", "koin-core"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class StringExtKt {
    public static final String clearQuotes(String $this$clearQuotes) {
        Intrinsics.checkNotNullParameter($this$clearQuotes, "<this>");
        if ($this$clearQuotes.length() <= 1 || StringsKt.first($this$clearQuotes) != '\"' || StringsKt.last($this$clearQuotes) != '\"') {
            return $this$clearQuotes;
        }
        String strSubstring = $this$clearQuotes.substring(1, StringsKt.getLastIndex($this$clearQuotes));
        Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
        return strSubstring;
    }
}
