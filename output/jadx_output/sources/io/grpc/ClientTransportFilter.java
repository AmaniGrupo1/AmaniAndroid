package io.grpc;

/* JADX INFO: loaded from: classes22.dex */
public abstract class ClientTransportFilter {
    public Attributes transportReady(Attributes transportAttrs) {
        return transportAttrs;
    }

    public void transportTerminated(Attributes transportAttrs) {
    }
}
