package androidx.media3.extractor.metadata.dvbsi;

import androidx.media3.common.Metadata;

/* JADX INFO: loaded from: classes21.dex */
public final class AppInfoTable implements Metadata.Entry {
    public static final int CONTROL_CODE_AUTOSTART = 1;
    public static final int CONTROL_CODE_PRESENT = 2;
    public final int controlCode;
    public final String url;

    public AppInfoTable(int controlCode, String url) {
        this.controlCode = controlCode;
        this.url = url;
    }

    public String toString() {
        return "Ait(controlCode=" + this.controlCode + ",url=" + this.url + ")";
    }
}
