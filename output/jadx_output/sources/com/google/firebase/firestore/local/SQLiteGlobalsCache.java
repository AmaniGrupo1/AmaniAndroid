package com.google.firebase.firestore.local;

import android.database.Cursor;
import com.google.firebase.firestore.util.Function;
import com.google.protobuf.ByteString;

/* JADX INFO: loaded from: classes22.dex */
public class SQLiteGlobalsCache implements GlobalsCache {
    private static final String SESSION_TOKEN = "sessionToken";
    private final SQLitePersistence db;

    public SQLiteGlobalsCache(SQLitePersistence persistence) {
        this.db = persistence;
    }

    @Override // com.google.firebase.firestore.local.GlobalsCache
    public ByteString getSessionsToken() {
        byte[] bytes = get(SESSION_TOKEN);
        return bytes == null ? ByteString.EMPTY : ByteString.copyFrom(bytes);
    }

    @Override // com.google.firebase.firestore.local.GlobalsCache
    public void setSessionToken(ByteString value) {
        set(SESSION_TOKEN, value.toByteArray());
    }

    private byte[] get(String name) {
        return (byte[]) this.db.query("SELECT value FROM globals WHERE name = ?").binding(name).firstValue(new Function() { // from class: com.google.firebase.firestore.local.SQLiteGlobalsCache$$ExternalSyntheticLambda0
            @Override // com.google.firebase.firestore.util.Function
            public final Object apply(Object obj) {
                return ((Cursor) obj).getBlob(0);
            }
        });
    }

    private void set(String name, byte[] value) {
        this.db.execute("INSERT OR REPLACE INTO globals (name, value) VALUES (?, ?)", name, value);
    }
}
