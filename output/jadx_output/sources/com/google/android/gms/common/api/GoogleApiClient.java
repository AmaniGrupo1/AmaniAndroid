package com.google.android.gms.common.api;

import android.accounts.Account;
import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import androidx.collection.ArrayMap;
import androidx.fragment.app.FragmentActivity;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.api.internal.LifecycleActivity;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.api.internal.SignInConnectionListener;
import com.google.android.gms.common.api.internal.zaaz;
import com.google.android.gms.common.api.internal.zacs;
import com.google.android.gms.common.api.internal.zak;
import com.google.android.gms.common.api.internal.zas;
import com.google.android.gms.common.internal.AccountType;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.signin.SignInOptions;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.9.0 */
/* JADX INFO: loaded from: classes21.dex */
@Deprecated
public abstract class GoogleApiClient {
    public static final String DEFAULT_ACCOUNT = "<<default account>>";
    public static final int SIGN_IN_MODE_OPTIONAL = 2;
    public static final int SIGN_IN_MODE_REQUIRED = 1;
    private static final Set zaa = Collections.newSetFromMap(new WeakHashMap());

    /* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.9.0 */
    @Deprecated
    public interface ConnectionCallbacks extends com.google.android.gms.common.api.internal.ConnectionCallbacks {
        public static final int CAUSE_NETWORK_LOST = 2;
        public static final int CAUSE_SERVICE_DISCONNECTED = 1;
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.9.0 */
    @Deprecated
    public interface OnConnectionFailedListener extends com.google.android.gms.common.api.internal.OnConnectionFailedListener {
    }

    public static void dumpAll(String prefix, FileDescriptor fd, PrintWriter writer, String[] args) {
        Set<GoogleApiClient> set = zaa;
        synchronized (set) {
            StringBuilder sb = new StringBuilder(String.valueOf(prefix).length() + 2);
            sb.append(prefix);
            sb.append("  ");
            String string = sb.toString();
            int i = 0;
            for (GoogleApiClient googleApiClient : set) {
                writer.append((CharSequence) prefix).append("GoogleApiClient#").println(i);
                googleApiClient.dump(string, fd, writer, args);
                i++;
            }
        }
    }

    public static Set<GoogleApiClient> getAllClients() {
        Set<GoogleApiClient> set = zaa;
        synchronized (set) {
        }
        return set;
    }

    public abstract ConnectionResult blockingConnect();

    public abstract ConnectionResult blockingConnect(long j, TimeUnit timeUnit);

    public abstract PendingResult<Status> clearDefaultAccountAndReconnect();

    public abstract void connect();

    public void connect(int i) {
        throw new UnsupportedOperationException();
    }

    public abstract void disconnect();

    public abstract void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

    public <A extends Api.AnyClient, R extends Result, T extends BaseImplementation.ApiMethodImpl<R, A>> T enqueue(T t) {
        throw new UnsupportedOperationException();
    }

    public <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T execute(T t) {
        throw new UnsupportedOperationException();
    }

    public <C extends Api.Client> C getClient(Api.AnyClientKey<C> anyClientKey) {
        throw new UnsupportedOperationException();
    }

    public abstract ConnectionResult getConnectionResult(Api<?> api);

    public Context getContext() {
        throw new UnsupportedOperationException();
    }

    public Looper getLooper() {
        throw new UnsupportedOperationException();
    }

    public boolean hasApi(Api<?> api) {
        throw new UnsupportedOperationException();
    }

    public abstract boolean hasConnectedApi(Api<?> api);

    public abstract boolean isConnected();

    public abstract boolean isConnecting();

    public abstract boolean isConnectionCallbacksRegistered(ConnectionCallbacks connectionCallbacks);

    public abstract boolean isConnectionFailedListenerRegistered(OnConnectionFailedListener onConnectionFailedListener);

    public boolean maybeSignIn(SignInConnectionListener signInConnectionListener) {
        throw new UnsupportedOperationException();
    }

    public void maybeSignOut() {
        throw new UnsupportedOperationException();
    }

    public abstract void reconnect();

    public abstract void registerConnectionCallbacks(ConnectionCallbacks connectionCallbacks);

    public abstract void registerConnectionFailedListener(OnConnectionFailedListener onConnectionFailedListener);

    public <L> ListenerHolder<L> registerListener(L l) {
        throw new UnsupportedOperationException();
    }

    public abstract void stopAutoManage(FragmentActivity fragmentActivity);

    public abstract void unregisterConnectionCallbacks(ConnectionCallbacks connectionCallbacks);

    public abstract void unregisterConnectionFailedListener(OnConnectionFailedListener onConnectionFailedListener);

    public void zao(zacs zacsVar) {
        throw new UnsupportedOperationException();
    }

    public void zap(zacs zacsVar) {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.9.0 */
    @Deprecated
    public static final class Builder {
        private Account zaa;
        private final Set zab;
        private final Set zac;
        private int zad;
        private View zae;
        private String zaf;
        private String zag;
        private final Map zah;
        private final Context zai;
        private final Map zaj;
        private LifecycleActivity zak;
        private int zal;
        private OnConnectionFailedListener zam;
        private Looper zan;
        private GoogleApiAvailability zao;
        private Api.AbstractClientBuilder zap;
        private final ArrayList zaq;
        private final ArrayList zar;

        public Builder(Context context) {
            this.zab = new HashSet();
            this.zac = new HashSet();
            this.zah = new ArrayMap();
            this.zaj = new ArrayMap();
            this.zal = -1;
            this.zao = GoogleApiAvailability.getInstance();
            this.zap = com.google.android.gms.signin.zad.zac;
            this.zaq = new ArrayList();
            this.zar = new ArrayList();
            this.zai = context;
            this.zan = context.getMainLooper();
            this.zaf = context.getPackageName();
            this.zag = context.getClass().getName();
        }

        private final void zab(Api api, Api.ApiOptions apiOptions, Scope... scopeArr) {
            HashSet hashSet = new HashSet(((Api.BaseClientBuilder) Preconditions.checkNotNull(api.zaa(), "Base client builder must not be null")).getImpliedScopes(apiOptions));
            for (Scope scope : scopeArr) {
                hashSet.add(scope);
            }
            this.zah.put(api, new com.google.android.gms.common.internal.zae(hashSet));
        }

        public Builder addApi(Api<? extends Api.ApiOptions.NotRequiredOptions> api) {
            Preconditions.checkNotNull(api, "Api must not be null");
            this.zaj.put(api, null);
            List<Scope> impliedScopes = ((Api.BaseClientBuilder) Preconditions.checkNotNull(api.zaa(), "Base client builder must not be null")).getImpliedScopes(null);
            this.zac.addAll(impliedScopes);
            this.zab.addAll(impliedScopes);
            return this;
        }

        public <O extends Api.ApiOptions.HasOptions> Builder addApiIfAvailable(Api<O> api, O o, Scope... scopes) {
            Preconditions.checkNotNull(api, "Api must not be null");
            Preconditions.checkNotNull(o, "Null options are not permitted for this Api");
            this.zaj.put(api, o);
            zab(api, o, scopes);
            return this;
        }

        public Builder addConnectionCallbacks(ConnectionCallbacks listener) {
            Preconditions.checkNotNull(listener, "Listener must not be null");
            this.zaq.add(listener);
            return this;
        }

        public Builder addOnConnectionFailedListener(OnConnectionFailedListener listener) {
            Preconditions.checkNotNull(listener, "Listener must not be null");
            this.zar.add(listener);
            return this;
        }

        public Builder addScope(Scope scope) {
            Preconditions.checkNotNull(scope, "Scope must not be null");
            this.zab.add(scope);
            return this;
        }

        public GoogleApiClient build() {
            Map map = this.zaj;
            Preconditions.checkArgument(!map.isEmpty(), "must call addApi() to add at least one API");
            ClientSettings clientSettingsZaa = zaa();
            Map mapZaa = clientSettingsZaa.zaa();
            ArrayMap arrayMap = new ArrayMap();
            ArrayMap arrayMap2 = new ArrayMap();
            ArrayList arrayList = new ArrayList();
            Api api = null;
            boolean z = false;
            for (Api api2 : map.keySet()) {
                Object obj = map.get(api2);
                boolean z2 = mapZaa.get(api2) != null;
                arrayMap.put(api2, Boolean.valueOf(z2));
                zas zasVar = new zas(api2, z2);
                arrayList.add(zasVar);
                Api.AbstractClientBuilder abstractClientBuilder = (Api.AbstractClientBuilder) Preconditions.checkNotNull(api2.zab());
                Api.Client clientBuildClient = abstractClientBuilder.buildClient(this.zai, this.zan, clientSettingsZaa, obj, (ConnectionCallbacks) zasVar, (OnConnectionFailedListener) zasVar);
                arrayMap2.put(api2.zac(), clientBuildClient);
                if (abstractClientBuilder.getPriority() == 1) {
                    z = obj != null;
                }
                if (clientBuildClient.providesSignIn()) {
                    if (api != null) {
                        String strZad = api2.zad();
                        String strZad2 = api.zad();
                        StringBuilder sb = new StringBuilder(String.valueOf(strZad).length() + 21 + String.valueOf(strZad2).length());
                        sb.append(strZad);
                        sb.append(" cannot be used with ");
                        sb.append(strZad2);
                        throw new IllegalStateException(sb.toString());
                    }
                    api = api2;
                }
            }
            if (api != null) {
                if (z) {
                    String strZad3 = api.zad();
                    StringBuilder sb2 = new StringBuilder(String.valueOf(strZad3).length() + 82);
                    sb2.append("With using ");
                    sb2.append(strZad3);
                    sb2.append(", GamesOptions can only be specified within GoogleSignInOptions.Builder");
                    throw new IllegalStateException(sb2.toString());
                }
                Preconditions.checkState(this.zaa == null, "Must not set an account in GoogleApiClient.Builder when using %s. Set account in GoogleSignInOptions.Builder instead", api.zad());
                Preconditions.checkState(this.zab.equals(this.zac), "Must not set scopes in GoogleApiClient.Builder when using %s. Set account in GoogleSignInOptions.Builder instead.", api.zad());
            }
            zaaz zaazVar = new zaaz(this.zai, new ReentrantLock(), this.zan, clientSettingsZaa, this.zao, this.zap, arrayMap, this.zaq, this.zar, arrayMap2, this.zal, zaaz.zaf(arrayMap2.values(), true), arrayList);
            synchronized (GoogleApiClient.zaa) {
                GoogleApiClient.zaa.add(zaazVar);
            }
            if (this.zal >= 0) {
                zak.zaa(this.zak).zab(this.zal, zaazVar, this.zam);
            }
            return zaazVar;
        }

        public Builder enableAutoManage(FragmentActivity fragmentActivity, int clientId, OnConnectionFailedListener unresolvedConnectionFailedListener) {
            LifecycleActivity lifecycleActivity = new LifecycleActivity((Activity) fragmentActivity);
            Preconditions.checkArgument(clientId >= 0, "clientId must be non-negative");
            this.zal = clientId;
            this.zam = unresolvedConnectionFailedListener;
            this.zak = lifecycleActivity;
            return this;
        }

        public Builder setAccountName(String accountName) {
            this.zaa = accountName == null ? null : new Account(accountName, AccountType.GOOGLE);
            return this;
        }

        public Builder setGravityForPopups(int i) {
            this.zad = i;
            return this;
        }

        public Builder setHandler(Handler handler) {
            Preconditions.checkNotNull(handler, "Handler must not be null");
            this.zan = handler.getLooper();
            return this;
        }

        public Builder setViewForPopups(View viewForPopups) {
            Preconditions.checkNotNull(viewForPopups, "View must not be null");
            this.zae = viewForPopups;
            return this;
        }

        public Builder useDefaultAccount() {
            setAccountName("<<default account>>");
            return this;
        }

        public final ClientSettings zaa() {
            SignInOptions signInOptions = SignInOptions.zaa;
            Map map = this.zaj;
            Api api = com.google.android.gms.signin.zad.zag;
            return new ClientSettings(this.zaa, this.zab, this.zah, this.zad, this.zae, this.zaf, this.zag, map.containsKey(api) ? (SignInOptions) map.get(api) : signInOptions, false);
        }

        public Builder enableAutoManage(FragmentActivity fragmentActivity, OnConnectionFailedListener unresolvedConnectionFailedListener) {
            enableAutoManage(fragmentActivity, 0, unresolvedConnectionFailedListener);
            return this;
        }

        public <T extends Api.ApiOptions.NotRequiredOptions> Builder addApiIfAvailable(Api<? extends Api.ApiOptions.NotRequiredOptions> api, Scope... scopes) {
            Preconditions.checkNotNull(api, "Api must not be null");
            this.zaj.put(api, null);
            zab(api, null, scopes);
            return this;
        }

        public <O extends Api.ApiOptions.HasOptions> Builder addApi(Api<O> api, O o) {
            Preconditions.checkNotNull(api, "Api must not be null");
            Preconditions.checkNotNull(o, "Null options are not permitted for this Api");
            this.zaj.put(api, o);
            List<Scope> impliedScopes = ((Api.BaseClientBuilder) Preconditions.checkNotNull(api.zaa(), "Base client builder must not be null")).getImpliedScopes(o);
            this.zac.addAll(impliedScopes);
            this.zab.addAll(impliedScopes);
            return this;
        }

        public Builder(Context context, ConnectionCallbacks connectedListener, OnConnectionFailedListener connectionFailedListener) {
            this(context);
            Preconditions.checkNotNull(connectedListener, "Must provide a connected listener");
            this.zaq.add(connectedListener);
            Preconditions.checkNotNull(connectionFailedListener, "Must provide a connection failed listener");
            this.zar.add(connectionFailedListener);
        }
    }
}
