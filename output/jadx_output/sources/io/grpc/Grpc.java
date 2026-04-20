package io.grpc;

import io.grpc.Attributes;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.net.SocketAddress;
import java.net.URI;
import java.net.URISyntaxException;
import javax.net.ssl.SSLSession;

/* JADX INFO: loaded from: classes22.dex */
public final class Grpc {
    public static final Attributes.Key<SocketAddress> TRANSPORT_ATTR_REMOTE_ADDR = Attributes.Key.create("io.grpc.Grpc.TRANSPORT_ATTR_REMOTE_ADDR");
    public static final Attributes.Key<SocketAddress> TRANSPORT_ATTR_LOCAL_ADDR = Attributes.Key.create("io.grpc.Grpc.TRANSPORT_ATTR_LOCAL_ADDR");
    public static final Attributes.Key<SSLSession> TRANSPORT_ATTR_SSL_SESSION = Attributes.Key.create("io.grpc.Grpc.TRANSPORT_ATTR_SSL_SESSION");

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface TransportAttr {
    }

    private Grpc() {
    }

    public static ManagedChannelBuilder<?> newChannelBuilder(String target, ChannelCredentials creds) {
        return ManagedChannelRegistry.getDefaultRegistry().newChannelBuilder(target, creds);
    }

    public static ManagedChannelBuilder<?> newChannelBuilderForAddress(String host, int port, ChannelCredentials creds) {
        return newChannelBuilder(authorityFromHostAndPort(host, port), creds);
    }

    private static String authorityFromHostAndPort(String host, int port) {
        String host2;
        int port2;
        URISyntaxException ex;
        try {
            host2 = host;
            port2 = port;
            try {
                return new URI(null, null, host2, port2, null, null, null).getAuthority();
            } catch (URISyntaxException e) {
                ex = e;
                throw new IllegalArgumentException("Invalid host or port: " + host2 + " " + port2, ex);
            }
        } catch (URISyntaxException e2) {
            host2 = host;
            port2 = port;
            ex = e2;
        }
    }

    public static ServerBuilder<?> newServerBuilderForPort(int port, ServerCredentials creds) {
        return ServerRegistry.getDefaultRegistry().newServerBuilderForPort(port, creds);
    }
}
