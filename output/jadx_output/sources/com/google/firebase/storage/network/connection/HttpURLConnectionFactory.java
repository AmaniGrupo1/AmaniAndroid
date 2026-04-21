package com.google.firebase.storage.network.connection;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;

/* JADX INFO: loaded from: classes22.dex */
public interface HttpURLConnectionFactory {
    HttpURLConnection createInstance(URL url) throws IOException;
}
