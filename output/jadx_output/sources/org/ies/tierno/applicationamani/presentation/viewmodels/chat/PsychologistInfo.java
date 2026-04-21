package org.ies.tierno.applicationamani.presentation.viewmodels.chat;

import androidx.autofill.HintConstants;
import androidx.media3.extractor.text.ttml.TtmlNode;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ChatViewModel.kt */
/* JADX INFO: loaded from: classes16.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u000f\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0007HÆ\u0003J3\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0014\u001a\u00020\u00072\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000bR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u000e¨\u0006\u0019"}, d2 = {"Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/PsychologistInfo;", "", TtmlNode.ATTR_ID, "", HintConstants.AUTOFILL_HINT_NAME, "avatarUrl", "isOnline", "", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V", "getId", "()Ljava/lang/String;", "getName", "getAvatarUrl", "()Z", "component1", "component2", "component3", "component4", "copy", "equals", "other", "hashCode", "", "toString", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final /* data */ class PsychologistInfo {
    public static final int $stable = 0;
    private final String avatarUrl;
    private final String id;
    private final boolean isOnline;
    private final String name;

    public static /* synthetic */ PsychologistInfo copy$default(PsychologistInfo psychologistInfo, String str, String str2, String str3, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            str = psychologistInfo.id;
        }
        if ((i & 2) != 0) {
            str2 = psychologistInfo.name;
        }
        if ((i & 4) != 0) {
            str3 = psychologistInfo.avatarUrl;
        }
        if ((i & 8) != 0) {
            z = psychologistInfo.isOnline;
        }
        return psychologistInfo.copy(str, str2, str3, z);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getName() {
        return this.name;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getAvatarUrl() {
        return this.avatarUrl;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final boolean getIsOnline() {
        return this.isOnline;
    }

    public final PsychologistInfo copy(String id, String name, String avatarUrl, boolean isOnline) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(name, "name");
        return new PsychologistInfo(id, name, avatarUrl, isOnline);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PsychologistInfo)) {
            return false;
        }
        PsychologistInfo psychologistInfo = (PsychologistInfo) other;
        return Intrinsics.areEqual(this.id, psychologistInfo.id) && Intrinsics.areEqual(this.name, psychologistInfo.name) && Intrinsics.areEqual(this.avatarUrl, psychologistInfo.avatarUrl) && this.isOnline == psychologistInfo.isOnline;
    }

    public int hashCode() {
        return (((((this.id.hashCode() * 31) + this.name.hashCode()) * 31) + (this.avatarUrl == null ? 0 : this.avatarUrl.hashCode())) * 31) + Boolean.hashCode(this.isOnline);
    }

    public String toString() {
        return "PsychologistInfo(id=" + this.id + ", name=" + this.name + ", avatarUrl=" + this.avatarUrl + ", isOnline=" + this.isOnline + ")";
    }

    public PsychologistInfo(String id, String name, String avatarUrl, boolean isOnline) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(name, "name");
        this.id = id;
        this.name = name;
        this.avatarUrl = avatarUrl;
        this.isOnline = isOnline;
    }

    public final String getId() {
        return this.id;
    }

    public final String getName() {
        return this.name;
    }

    public final String getAvatarUrl() {
        return this.avatarUrl;
    }

    public final boolean isOnline() {
        return this.isOnline;
    }
}
