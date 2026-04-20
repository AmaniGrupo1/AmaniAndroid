package io.grpc.internal;

import io.grpc.NameResolver;
import io.grpc.NameResolverProvider;
import java.net.URI;

/* JADX INFO: loaded from: classes22.dex */
public class NameResolverFactoryToProviderFacade extends NameResolverProvider {
    private NameResolver.Factory factory;

    NameResolverFactoryToProviderFacade(NameResolver.Factory factory) {
        this.factory = factory;
    }

    @Override // io.grpc.NameResolver.Factory
    public NameResolver newNameResolver(URI targetUri, NameResolver.Args args) {
        return this.factory.newNameResolver(targetUri, args);
    }

    @Override // io.grpc.NameResolver.Factory
    public String getDefaultScheme() {
        return this.factory.getDefaultScheme();
    }

    @Override // io.grpc.NameResolverProvider
    protected boolean isAvailable() {
        return true;
    }

    @Override // io.grpc.NameResolverProvider
    protected int priority() {
        return 5;
    }
}
