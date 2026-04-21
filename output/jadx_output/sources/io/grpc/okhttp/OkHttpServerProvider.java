package io.grpc.okhttp;

import io.grpc.ServerCredentials;
import io.grpc.ServerProvider;
import io.grpc.okhttp.OkHttpServerBuilder;
import java.net.InetSocketAddress;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes22.dex */
public final class OkHttpServerProvider extends ServerProvider {
    @Override // io.grpc.ServerProvider
    protected boolean isAvailable() {
        return true;
    }

    @Override // io.grpc.ServerProvider
    protected int priority() {
        return 4;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.grpc.ServerProvider
    public OkHttpServerBuilder builderForPort(int port) {
        throw new UnsupportedOperationException("Use Grpc.newServerBuilderForPort() instead");
    }

    @Override // io.grpc.ServerProvider
    protected ServerProvider.NewServerBuilderResult newServerBuilderForPort(int port, ServerCredentials creds) throws GeneralSecurityException {
        OkHttpServerBuilder.HandshakerSocketFactoryResult result = OkHttpServerBuilder.handshakerSocketFactoryFrom(creds);
        if (result.error != null) {
            return ServerProvider.NewServerBuilderResult.error(result.error);
        }
        return ServerProvider.NewServerBuilderResult.serverBuilder(new OkHttpServerBuilder(new InetSocketAddress(port), result.factory));
    }
}
