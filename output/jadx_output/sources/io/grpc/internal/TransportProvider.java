package io.grpc.internal;

import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes22.dex */
interface TransportProvider {
    @Nullable
    ClientTransport obtainActiveTransport();
}
