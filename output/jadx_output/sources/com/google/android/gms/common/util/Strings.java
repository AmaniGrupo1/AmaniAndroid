package com.google.android.gms.common.util;

import android.text.TextUtils;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.9.0 */
/* JADX INFO: loaded from: classes21.dex */
public class Strings {
    private static final Pattern zza = Pattern.compile("\\$\\{(.*?)\\}");

    private Strings() {
    }

    public static String emptyToNull(String string) {
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        return string;
    }

    public static boolean isEmptyOrWhitespace(String string) {
        return string == null || string.trim().isEmpty();
    }
}
