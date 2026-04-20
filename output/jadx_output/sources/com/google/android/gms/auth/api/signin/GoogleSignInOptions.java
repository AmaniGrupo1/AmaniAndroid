package com.google.android.gms.auth.api.signin;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.auth.api.signin.internal.GoogleSignInOptionsExtensionParcelable;
import com.google.android.gms.auth.api.signin.internal.HashAccumulator;
import com.google.android.gms.common.Scopes;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.AccountType;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.9.0 */
/* JADX INFO: loaded from: classes21.dex */
@Deprecated
public class GoogleSignInOptions extends AbstractSafeParcelable implements Api.ApiOptions.Optional, ReflectedParcelable {
    public static final Parcelable.Creator<GoogleSignInOptions> CREATOR;
    public static final GoogleSignInOptions DEFAULT_GAMES_SIGN_IN;
    public static final GoogleSignInOptions DEFAULT_SIGN_IN;
    public static final Scope zaa = new Scope(Scopes.PROFILE);
    public static final Scope zab = new Scope("email");
    public static final Scope zac = new Scope(Scopes.OPEN_ID);
    public static final Scope zad = new Scope(Scopes.GAMES_LITE);
    public static final Scope zae = new Scope(Scopes.GAMES);
    private static final Comparator zaq;
    final int zaf;
    private final ArrayList zag;
    private Account zah;
    private boolean zai;
    private final boolean zaj;
    private final boolean zak;
    private String zal;
    private String zam;
    private ArrayList zan;
    private String zao;
    private Map zap;

    /* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.9.0 */
    @Deprecated
    public static final class Builder {
        private Set zaa;
        private boolean zab;
        private boolean zac;
        private boolean zad;
        private String zae;
        private Account zaf;
        private String zag;
        private Map zah;
        private String zai;

        public Builder() {
            this.zaa = new HashSet();
            this.zah = new HashMap();
        }

        private final String zaa(String str) {
            Preconditions.checkNotEmpty(str);
            String str2 = this.zae;
            boolean z = true;
            if (str2 != null && !str2.equals(str)) {
                z = false;
            }
            Preconditions.checkArgument(z, "two different server client ids provided");
            return str;
        }

        public Builder addExtension(GoogleSignInOptionsExtension extension) {
            if (this.zah.containsKey(Integer.valueOf(extension.getExtensionType()))) {
                throw new IllegalStateException("Only one extension per type may be added");
            }
            List<Scope> impliedScopes = extension.getImpliedScopes();
            if (impliedScopes != null) {
                this.zaa.addAll(impliedScopes);
            }
            this.zah.put(Integer.valueOf(extension.getExtensionType()), new GoogleSignInOptionsExtensionParcelable(extension));
            return this;
        }

        public GoogleSignInOptions build() {
            if (this.zaa.contains(GoogleSignInOptions.zae)) {
                Set set = this.zaa;
                Scope scope = GoogleSignInOptions.zad;
                if (set.contains(scope)) {
                    this.zaa.remove(scope);
                }
            }
            if (this.zad && (this.zaf == null || !this.zaa.isEmpty())) {
                requestId();
            }
            return new GoogleSignInOptions(3, new ArrayList(this.zaa), this.zaf, this.zad, this.zab, this.zac, this.zae, this.zag, this.zah, this.zai, null);
        }

        public Builder requestEmail() {
            this.zaa.add(GoogleSignInOptions.zab);
            return this;
        }

        public Builder requestId() {
            this.zaa.add(GoogleSignInOptions.zac);
            return this;
        }

        public Builder requestIdToken(String serverClientId) {
            this.zad = true;
            zaa(serverClientId);
            this.zae = serverClientId;
            return this;
        }

        public Builder requestProfile() {
            this.zaa.add(GoogleSignInOptions.zaa);
            return this;
        }

        public Builder requestScopes(Scope scope, Scope... scopes) {
            this.zaa.add(scope);
            this.zaa.addAll(Arrays.asList(scopes));
            return this;
        }

        public Builder requestServerAuthCode(String serverClientId) {
            requestServerAuthCode(serverClientId, false);
            return this;
        }

        public Builder setAccountName(String accountName) {
            this.zaf = new Account(Preconditions.checkNotEmpty(accountName), AccountType.GOOGLE);
            return this;
        }

        public Builder setHostedDomain(String hostedDomain) {
            this.zag = Preconditions.checkNotEmpty(hostedDomain);
            return this;
        }

        public Builder setLogSessionId(String str) {
            this.zai = str;
            return this;
        }

        public Builder requestServerAuthCode(String serverClientId, boolean forceCodeForRefreshToken) {
            this.zab = true;
            zaa(serverClientId);
            this.zae = serverClientId;
            this.zac = forceCodeForRefreshToken;
            return this;
        }

        public Builder(GoogleSignInOptions googleSignInOptions) {
            this.zaa = new HashSet();
            this.zah = new HashMap();
            Preconditions.checkNotNull(googleSignInOptions);
            this.zaa = new HashSet(googleSignInOptions.zad());
            this.zab = googleSignInOptions.zag();
            this.zac = googleSignInOptions.zah();
            this.zad = googleSignInOptions.zaf();
            this.zae = googleSignInOptions.zai();
            this.zaf = googleSignInOptions.zae();
            this.zag = googleSignInOptions.zaj();
            this.zah = GoogleSignInOptions.zam(googleSignInOptions.zak());
            this.zai = googleSignInOptions.zal();
        }
    }

    static {
        Builder builder = new Builder();
        builder.requestId();
        builder.requestProfile();
        DEFAULT_SIGN_IN = builder.build();
        Builder builder2 = new Builder();
        builder2.requestScopes(zad, new Scope[0]);
        DEFAULT_GAMES_SIGN_IN = builder2.build();
        CREATOR = new zad();
        zaq = new zac();
    }

    GoogleSignInOptions(int i, ArrayList arrayList, Account account, boolean z, boolean z2, boolean z3, String str, String str2, ArrayList arrayList2, String str3) {
        this(i, arrayList, account, z, z2, z3, str, str2, zam(arrayList2), str3);
    }

    /* synthetic */ GoogleSignInOptions(int i, ArrayList arrayList, Account account, boolean z, boolean z2, boolean z3, String str, String str2, Map map, String str3, byte[] bArr) {
        this(3, arrayList, account, z, z2, z3, str, str2, map, str3);
    }

    public static GoogleSignInOptions zaa(String str) throws JSONException {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        JSONObject jSONObject = new JSONObject(str);
        HashSet hashSet = new HashSet();
        JSONArray jSONArray = jSONObject.getJSONArray("scopes");
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            hashSet.add(new Scope(jSONArray.getString(i)));
        }
        String strOptString = jSONObject.has("accountName") ? jSONObject.optString("accountName") : null;
        return new GoogleSignInOptions(3, new ArrayList(hashSet), !TextUtils.isEmpty(strOptString) ? new Account(strOptString, AccountType.GOOGLE) : null, jSONObject.getBoolean("idTokenRequested"), jSONObject.getBoolean("serverAuthRequested"), jSONObject.getBoolean("forceCodeForRefreshToken"), jSONObject.has("serverClientId") ? jSONObject.optString("serverClientId") : null, jSONObject.has("hostedDomain") ? jSONObject.optString("hostedDomain") : null, new HashMap(), (String) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Map zam(List list) {
        HashMap map = new HashMap();
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                GoogleSignInOptionsExtensionParcelable googleSignInOptionsExtensionParcelable = (GoogleSignInOptionsExtensionParcelable) it.next();
                map.put(Integer.valueOf(googleSignInOptionsExtensionParcelable.getType()), googleSignInOptionsExtensionParcelable);
            }
        }
        return map;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0052 A[Catch: ClassCastException -> 0x0093, TryCatch #0 {ClassCastException -> 0x0093, blocks: (B:5:0x0005, B:7:0x000f, B:10:0x0019, B:12:0x0029, B:15:0x0034, B:17:0x0038, B:23:0x004a, B:25:0x0052, B:31:0x006a, B:33:0x0072, B:35:0x007a, B:37:0x0082, B:28:0x005d, B:20:0x003f), top: B:46:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x005d A[Catch: ClassCastException -> 0x0093, TryCatch #0 {ClassCastException -> 0x0093, blocks: (B:5:0x0005, B:7:0x000f, B:10:0x0019, B:12:0x0029, B:15:0x0034, B:17:0x0038, B:23:0x004a, B:25:0x0052, B:31:0x006a, B:33:0x0072, B:35:0x007a, B:37:0x0082, B:28:0x005d, B:20:0x003f), top: B:46:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x008e A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        try {
            GoogleSignInOptions googleSignInOptions = (GoogleSignInOptions) obj;
            if (this.zan.isEmpty() && googleSignInOptions.zan.isEmpty()) {
                ArrayList arrayList = this.zag;
                if (arrayList.size() == googleSignInOptions.getScopes().size() && arrayList.containsAll(googleSignInOptions.getScopes())) {
                    Account account = this.zah;
                    if (account == null) {
                        if (googleSignInOptions.getAccount() == null) {
                            if (TextUtils.isEmpty(this.zal)) {
                                if (this.zal.equals(googleSignInOptions.getServerClientId())) {
                                    if (this.zak == googleSignInOptions.isForceCodeForRefreshToken()) {
                                        if (!TextUtils.equals(this.zao, googleSignInOptions.getLogSessionId())) {
                                        }
                                    }
                                }
                            } else if (TextUtils.isEmpty(googleSignInOptions.getServerClientId())) {
                                if (this.zak == googleSignInOptions.isForceCodeForRefreshToken() && this.zai == googleSignInOptions.isIdTokenRequested() && this.zaj == googleSignInOptions.isServerAuthCodeRequested()) {
                                    if (!TextUtils.equals(this.zao, googleSignInOptions.getLogSessionId())) {
                                        return true;
                                    }
                                }
                            }
                        }
                    } else if (account.equals(googleSignInOptions.getAccount())) {
                        if (TextUtils.isEmpty(this.zal)) {
                        }
                    }
                    return false;
                }
                return false;
            }
            return false;
        } catch (ClassCastException e) {
            return false;
        }
    }

    public Account getAccount() {
        return this.zah;
    }

    public ArrayList<GoogleSignInOptionsExtensionParcelable> getExtensions() {
        return this.zan;
    }

    public String getLogSessionId() {
        return this.zao;
    }

    public Scope[] getScopeArray() {
        ArrayList arrayList = this.zag;
        return (Scope[]) arrayList.toArray(new Scope[arrayList.size()]);
    }

    public ArrayList<Scope> getScopes() {
        return new ArrayList<>(this.zag);
    }

    public String getServerClientId() {
        return this.zal;
    }

    public int hashCode() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = this.zag;
        int size = arrayList2.size();
        for (int i = 0; i < size; i++) {
            arrayList.add(((Scope) arrayList2.get(i)).getScopeUri());
        }
        Collections.sort(arrayList);
        HashAccumulator hashAccumulator = new HashAccumulator();
        hashAccumulator.addObject(arrayList);
        hashAccumulator.addObject(this.zah);
        hashAccumulator.addObject(this.zal);
        hashAccumulator.zaa(this.zak);
        hashAccumulator.zaa(this.zai);
        hashAccumulator.zaa(this.zaj);
        hashAccumulator.addObject(this.zao);
        return hashAccumulator.hash();
    }

    public boolean isForceCodeForRefreshToken() {
        return this.zak;
    }

    public boolean isIdTokenRequested() {
        return this.zai;
    }

    public boolean isServerAuthCodeRequested() {
        return this.zaj;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel out, int flags) {
        int i = this.zaf;
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(out);
        SafeParcelWriter.writeInt(out, 1, i);
        SafeParcelWriter.writeTypedList(out, 2, getScopes(), false);
        SafeParcelWriter.writeParcelable(out, 3, getAccount(), flags, false);
        SafeParcelWriter.writeBoolean(out, 4, isIdTokenRequested());
        SafeParcelWriter.writeBoolean(out, 5, isServerAuthCodeRequested());
        SafeParcelWriter.writeBoolean(out, 6, isForceCodeForRefreshToken());
        SafeParcelWriter.writeString(out, 7, getServerClientId(), false);
        SafeParcelWriter.writeString(out, 8, this.zam, false);
        SafeParcelWriter.writeTypedList(out, 9, getExtensions(), false);
        SafeParcelWriter.writeString(out, 10, getLogSessionId(), false);
        SafeParcelWriter.finishObjectHeader(out, iBeginObjectHeader);
    }

    public final String zab() {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONArray jSONArray = new JSONArray();
            ArrayList arrayList = this.zag;
            Collections.sort(arrayList, zaq);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                jSONArray.put(((Scope) it.next()).getScopeUri());
            }
            jSONObject.put("scopes", jSONArray);
            Account account = this.zah;
            if (account != null) {
                jSONObject.put("accountName", account.name);
            }
            jSONObject.put("idTokenRequested", this.zai);
            jSONObject.put("forceCodeForRefreshToken", this.zak);
            jSONObject.put("serverAuthRequested", this.zaj);
            if (!TextUtils.isEmpty(this.zal)) {
                jSONObject.put("serverClientId", this.zal);
            }
            if (!TextUtils.isEmpty(this.zam)) {
                jSONObject.put("hostedDomain", this.zam);
            }
            return jSONObject.toString();
        } catch (JSONException e) {
            throw new RuntimeException(e);
        }
    }

    final /* synthetic */ ArrayList zad() {
        return this.zag;
    }

    final /* synthetic */ Account zae() {
        return this.zah;
    }

    final /* synthetic */ boolean zaf() {
        return this.zai;
    }

    final /* synthetic */ boolean zag() {
        return this.zaj;
    }

    final /* synthetic */ boolean zah() {
        return this.zak;
    }

    final /* synthetic */ String zai() {
        return this.zal;
    }

    final /* synthetic */ String zaj() {
        return this.zam;
    }

    final /* synthetic */ ArrayList zak() {
        return this.zan;
    }

    final /* synthetic */ String zal() {
        return this.zao;
    }

    private GoogleSignInOptions(int i, ArrayList arrayList, Account account, boolean z, boolean z2, boolean z3, String str, String str2, Map map, String str3) {
        this.zaf = i;
        this.zag = arrayList;
        this.zah = account;
        this.zai = z;
        this.zaj = z2;
        this.zak = z3;
        this.zal = str;
        this.zam = str2;
        this.zan = new ArrayList(map.values());
        this.zap = map;
        this.zao = str3;
    }
}
