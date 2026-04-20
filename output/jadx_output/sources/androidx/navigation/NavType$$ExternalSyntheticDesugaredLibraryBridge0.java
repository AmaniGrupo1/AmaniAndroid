package androidx.navigation;

import androidx.navigation.NavType;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes21.dex */
public final /* synthetic */ class NavType$$ExternalSyntheticDesugaredLibraryBridge0 {
    public static /* synthetic */ NavType m(NavType.Companion companion, String str, String str2) {
        if (str == null || !str.startsWith("java")) {
            return companion.fromArgType(str, str2);
        }
        try {
            return companion.fromArgType("j$" + str.substring("java".length()), str2);
        } catch (RuntimeException e) {
            if (e.getCause() instanceof ClassNotFoundException) {
                return companion.fromArgType(str, str2);
            }
            throw e;
        }
    }
}
