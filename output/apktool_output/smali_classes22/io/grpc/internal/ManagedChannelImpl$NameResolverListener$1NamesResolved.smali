.class final Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;
.super Ljava/lang/Object;
.source "ManagedChannelImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->onResult(Lio/grpc/NameResolver$ResolutionResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "NamesResolved"
.end annotation


# instance fields
.field final synthetic this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

.field final synthetic val$resolutionResult:Lio/grpc/NameResolver$ResolutionResult;


# direct methods
.method constructor <init>(Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;Lio/grpc/NameResolver$ResolutionResult;)V
    .locals 0
    .param p1, "this$1"    # Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1750
    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iput-object p2, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->val$resolutionResult:Lio/grpc/NameResolver$ResolutionResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 1755
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$6800(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/NameResolver;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v1, v1, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->resolver:Lio/grpc/NameResolver;

    if-eq v0, v1, :cond_0

    .line 1756
    return-void

    .line 1759
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->val$resolutionResult:Lio/grpc/NameResolver$ResolutionResult;

    invoke-virtual {v0}, Lio/grpc/NameResolver$ResolutionResult;->getAddresses()Ljava/util/List;

    move-result-object v0

    .line 1760
    .local v0, "servers":Ljava/util/List;, "Ljava/util/List<Lio/grpc/EquivalentAddressGroup;>;"
    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v1, v1, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v1}, Lio/grpc/internal/ManagedChannelImpl;->access$2800(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/ChannelLogger;

    move-result-object v1

    sget-object v2, Lio/grpc/ChannelLogger$ChannelLogLevel;->DEBUG:Lio/grpc/ChannelLogger$ChannelLogLevel;

    iget-object v3, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->val$resolutionResult:Lio/grpc/NameResolver$ResolutionResult;

    .line 1764
    invoke-virtual {v3}, Lio/grpc/NameResolver$ResolutionResult;->getAttributes()Lio/grpc/Attributes;

    move-result-object v3

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 1760
    const-string v4, "Resolved address: {0}, config={1}"

    invoke-virtual {v1, v2, v4, v3}, Lio/grpc/ChannelLogger;->log(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1766
    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v1, v1, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v1}, Lio/grpc/internal/ManagedChannelImpl;->access$6900(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ManagedChannelImpl$ResolutionState;

    move-result-object v1

    sget-object v2, Lio/grpc/internal/ManagedChannelImpl$ResolutionState;->SUCCESS:Lio/grpc/internal/ManagedChannelImpl$ResolutionState;

    if-eq v1, v2, :cond_1

    .line 1767
    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v1, v1, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v1}, Lio/grpc/internal/ManagedChannelImpl;->access$2800(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/ChannelLogger;

    move-result-object v1

    sget-object v2, Lio/grpc/ChannelLogger$ChannelLogLevel;->INFO:Lio/grpc/ChannelLogger$ChannelLogLevel;

    const-string v3, "Address resolved: {0}"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lio/grpc/ChannelLogger;->log(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1768
    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v1, v1, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    sget-object v2, Lio/grpc/internal/ManagedChannelImpl$ResolutionState;->SUCCESS:Lio/grpc/internal/ManagedChannelImpl$ResolutionState;

    invoke-static {v1, v2}, Lio/grpc/internal/ManagedChannelImpl;->access$6902(Lio/grpc/internal/ManagedChannelImpl;Lio/grpc/internal/ManagedChannelImpl$ResolutionState;)Lio/grpc/internal/ManagedChannelImpl$ResolutionState;

    .line 1771
    :cond_1
    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->val$resolutionResult:Lio/grpc/NameResolver$ResolutionResult;

    invoke-virtual {v1}, Lio/grpc/NameResolver$ResolutionResult;->getServiceConfig()Lio/grpc/NameResolver$ConfigOrError;

    move-result-object v1

    .line 1772
    .local v1, "configOrError":Lio/grpc/NameResolver$ConfigOrError;
    iget-object v2, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->val$resolutionResult:Lio/grpc/NameResolver$ResolutionResult;

    invoke-virtual {v2}, Lio/grpc/NameResolver$ResolutionResult;->getAttributes()Lio/grpc/Attributes;

    move-result-object v2

    sget-object v3, Lio/grpc/internal/RetryingNameResolver;->RESOLUTION_RESULT_LISTENER_KEY:Lio/grpc/Attributes$Key;

    .line 1773
    invoke-virtual {v2, v3}, Lio/grpc/Attributes;->get(Lio/grpc/Attributes$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/internal/RetryingNameResolver$ResolutionResultListener;

    .line 1774
    .local v2, "resolutionResultListener":Lio/grpc/internal/RetryingNameResolver$ResolutionResultListener;
    iget-object v3, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->val$resolutionResult:Lio/grpc/NameResolver$ResolutionResult;

    .line 1775
    invoke-virtual {v3}, Lio/grpc/NameResolver$ResolutionResult;->getAttributes()Lio/grpc/Attributes;

    move-result-object v3

    sget-object v4, Lio/grpc/InternalConfigSelector;->KEY:Lio/grpc/Attributes$Key;

    invoke-virtual {v3, v4}, Lio/grpc/Attributes;->get(Lio/grpc/Attributes$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/InternalConfigSelector;

    .line 1777
    .local v3, "resolvedConfigSelector":Lio/grpc/InternalConfigSelector;
    const/4 v4, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lio/grpc/NameResolver$ConfigOrError;->getConfig()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1778
    invoke-virtual {v1}, Lio/grpc/NameResolver$ConfigOrError;->getConfig()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/grpc/internal/ManagedChannelServiceConfig;

    goto :goto_0

    .line 1779
    :cond_2
    move-object v5, v4

    :goto_0
    nop

    .line 1780
    .local v5, "validServiceConfig":Lio/grpc/internal/ManagedChannelServiceConfig;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lio/grpc/NameResolver$ConfigOrError;->getError()Lio/grpc/Status;

    move-result-object v6

    goto :goto_1

    :cond_3
    move-object v6, v4

    .line 1783
    .local v6, "serviceConfigError":Lio/grpc/Status;
    :goto_1
    iget-object v7, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v7, v7, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v7}, Lio/grpc/internal/ManagedChannelImpl;->access$7000(Lio/grpc/internal/ManagedChannelImpl;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 1784
    if-eqz v5, :cond_4

    .line 1785
    iget-object v4, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v4, v4, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v4}, Lio/grpc/internal/ManagedChannelImpl;->access$2800(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/ChannelLogger;

    move-result-object v4

    sget-object v7, Lio/grpc/ChannelLogger$ChannelLogLevel;->INFO:Lio/grpc/ChannelLogger$ChannelLogLevel;

    const-string v8, "Service config from name resolver discarded by channel settings"

    invoke-virtual {v4, v7, v8}, Lio/grpc/ChannelLogger;->log(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;)V

    .line 1790
    :cond_4
    iget-object v4, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v4, v4, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v4}, Lio/grpc/internal/ManagedChannelImpl;->access$7100(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ManagedChannelServiceConfig;

    move-result-object v4

    if-nez v4, :cond_5

    invoke-static {}, Lio/grpc/internal/ManagedChannelImpl;->access$7200()Lio/grpc/internal/ManagedChannelServiceConfig;

    move-result-object v4

    goto :goto_2

    :cond_5
    iget-object v4, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v4, v4, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v4}, Lio/grpc/internal/ManagedChannelImpl;->access$7100(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ManagedChannelServiceConfig;

    move-result-object v4

    .line 1791
    .local v4, "effectiveServiceConfig":Lio/grpc/internal/ManagedChannelServiceConfig;
    :goto_2
    if-eqz v3, :cond_6

    .line 1792
    iget-object v7, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v7, v7, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v7}, Lio/grpc/internal/ManagedChannelImpl;->access$2800(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/ChannelLogger;

    move-result-object v7

    sget-object v8, Lio/grpc/ChannelLogger$ChannelLogLevel;->INFO:Lio/grpc/ChannelLogger$ChannelLogLevel;

    const-string v9, "Config selector from name resolver discarded by channel settings"

    invoke-virtual {v7, v8, v9}, Lio/grpc/ChannelLogger;->log(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;)V

    .line 1796
    :cond_6
    iget-object v7, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v7, v7, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v7}, Lio/grpc/internal/ManagedChannelImpl;->access$7300(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ManagedChannelImpl$RealChannel;

    move-result-object v7

    invoke-virtual {v4}, Lio/grpc/internal/ManagedChannelServiceConfig;->getDefaultConfigSelector()Lio/grpc/InternalConfigSelector;

    move-result-object v8

    invoke-virtual {v7, v8}, Lio/grpc/internal/ManagedChannelImpl$RealChannel;->updateConfigSelector(Lio/grpc/InternalConfigSelector;)V

    goto/16 :goto_5

    .line 1800
    .end local v4    # "effectiveServiceConfig":Lio/grpc/internal/ManagedChannelServiceConfig;
    :cond_7
    if-eqz v5, :cond_9

    .line 1801
    move-object v4, v5

    .line 1802
    .restart local v4    # "effectiveServiceConfig":Lio/grpc/internal/ManagedChannelServiceConfig;
    nop

    .line 1811
    iget-object v7, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    .line 1802
    if-eqz v3, :cond_8

    .line 1803
    iget-object v7, v7, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v7}, Lio/grpc/internal/ManagedChannelImpl;->access$7300(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ManagedChannelImpl$RealChannel;

    move-result-object v7

    invoke-virtual {v7, v3}, Lio/grpc/internal/ManagedChannelImpl$RealChannel;->updateConfigSelector(Lio/grpc/InternalConfigSelector;)V

    .line 1804
    invoke-virtual {v4}, Lio/grpc/internal/ManagedChannelServiceConfig;->getDefaultConfigSelector()Lio/grpc/InternalConfigSelector;

    move-result-object v7

    if-eqz v7, :cond_e

    .line 1805
    iget-object v7, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v7, v7, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v7}, Lio/grpc/internal/ManagedChannelImpl;->access$2800(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/ChannelLogger;

    move-result-object v7

    sget-object v8, Lio/grpc/ChannelLogger$ChannelLogLevel;->DEBUG:Lio/grpc/ChannelLogger$ChannelLogLevel;

    const-string v9, "Method configs in service config will be discarded due to presence ofconfig-selector"

    invoke-virtual {v7, v8, v9}, Lio/grpc/ChannelLogger;->log(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1811
    :cond_8
    iget-object v7, v7, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v7}, Lio/grpc/internal/ManagedChannelImpl;->access$7300(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ManagedChannelImpl$RealChannel;

    move-result-object v7

    invoke-virtual {v4}, Lio/grpc/internal/ManagedChannelServiceConfig;->getDefaultConfigSelector()Lio/grpc/InternalConfigSelector;

    move-result-object v8

    invoke-virtual {v7, v8}, Lio/grpc/internal/ManagedChannelImpl$RealChannel;->updateConfigSelector(Lio/grpc/InternalConfigSelector;)V

    goto/16 :goto_3

    .line 1813
    .end local v4    # "effectiveServiceConfig":Lio/grpc/internal/ManagedChannelServiceConfig;
    :cond_9
    iget-object v7, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v7, v7, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v7}, Lio/grpc/internal/ManagedChannelImpl;->access$7100(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ManagedChannelServiceConfig;

    move-result-object v7

    if-eqz v7, :cond_a

    .line 1814
    iget-object v4, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v4, v4, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v4}, Lio/grpc/internal/ManagedChannelImpl;->access$7100(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ManagedChannelServiceConfig;

    move-result-object v4

    .line 1815
    .restart local v4    # "effectiveServiceConfig":Lio/grpc/internal/ManagedChannelServiceConfig;
    iget-object v7, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v7, v7, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v7}, Lio/grpc/internal/ManagedChannelImpl;->access$7300(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ManagedChannelImpl$RealChannel;

    move-result-object v7

    invoke-virtual {v4}, Lio/grpc/internal/ManagedChannelServiceConfig;->getDefaultConfigSelector()Lio/grpc/InternalConfigSelector;

    move-result-object v8

    invoke-virtual {v7, v8}, Lio/grpc/internal/ManagedChannelImpl$RealChannel;->updateConfigSelector(Lio/grpc/InternalConfigSelector;)V

    .line 1816
    iget-object v7, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v7, v7, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v7}, Lio/grpc/internal/ManagedChannelImpl;->access$2800(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/ChannelLogger;

    move-result-object v7

    sget-object v8, Lio/grpc/ChannelLogger$ChannelLogLevel;->INFO:Lio/grpc/ChannelLogger$ChannelLogLevel;

    const-string v9, "Received no service config, using default service config"

    invoke-virtual {v7, v8, v9}, Lio/grpc/ChannelLogger;->log(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;)V

    goto :goto_3

    .line 1819
    .end local v4    # "effectiveServiceConfig":Lio/grpc/internal/ManagedChannelServiceConfig;
    :cond_a
    if-eqz v6, :cond_d

    .line 1820
    iget-object v4, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v4, v4, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v4}, Lio/grpc/internal/ManagedChannelImpl;->access$7400(Lio/grpc/internal/ManagedChannelImpl;)Z

    move-result v4

    .line 1835
    iget-object v7, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    .line 1820
    if-nez v4, :cond_c

    .line 1822
    iget-object v4, v7, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v4}, Lio/grpc/internal/ManagedChannelImpl;->access$2800(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/ChannelLogger;

    move-result-object v4

    sget-object v7, Lio/grpc/ChannelLogger$ChannelLogLevel;->INFO:Lio/grpc/ChannelLogger$ChannelLogLevel;

    const-string v8, "Fallback to error due to invalid first service config without default config"

    invoke-virtual {v4, v7, v8}, Lio/grpc/ChannelLogger;->log(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;)V

    .line 1829
    iget-object v4, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    invoke-virtual {v1}, Lio/grpc/NameResolver$ConfigOrError;->getError()Lio/grpc/Status;

    move-result-object v7

    invoke-virtual {v4, v7}, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->onError(Lio/grpc/Status;)V

    .line 1830
    if-eqz v2, :cond_b

    .line 1831
    invoke-virtual {v1}, Lio/grpc/NameResolver$ConfigOrError;->getError()Lio/grpc/Status;

    move-result-object v4

    invoke-virtual {v2, v4}, Lio/grpc/internal/RetryingNameResolver$ResolutionResultListener;->resolutionAttempted(Lio/grpc/Status;)V

    .line 1833
    :cond_b
    return-void

    .line 1835
    :cond_c
    iget-object v4, v7, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v4}, Lio/grpc/internal/ManagedChannelImpl;->access$7500(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ManagedChannelServiceConfig;

    move-result-object v4

    .restart local v4    # "effectiveServiceConfig":Lio/grpc/internal/ManagedChannelServiceConfig;
    goto :goto_3

    .line 1838
    .end local v4    # "effectiveServiceConfig":Lio/grpc/internal/ManagedChannelServiceConfig;
    :cond_d
    invoke-static {}, Lio/grpc/internal/ManagedChannelImpl;->access$7200()Lio/grpc/internal/ManagedChannelServiceConfig;

    move-result-object v7

    .line 1839
    .local v7, "effectiveServiceConfig":Lio/grpc/internal/ManagedChannelServiceConfig;
    iget-object v8, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v8, v8, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v8}, Lio/grpc/internal/ManagedChannelImpl;->access$7300(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ManagedChannelImpl$RealChannel;

    move-result-object v8

    invoke-virtual {v8, v4}, Lio/grpc/internal/ManagedChannelImpl$RealChannel;->updateConfigSelector(Lio/grpc/InternalConfigSelector;)V

    move-object v4, v7

    .line 1841
    .end local v7    # "effectiveServiceConfig":Lio/grpc/internal/ManagedChannelServiceConfig;
    .restart local v4    # "effectiveServiceConfig":Lio/grpc/internal/ManagedChannelServiceConfig;
    :cond_e
    :goto_3
    iget-object v7, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v7, v7, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v7}, Lio/grpc/internal/ManagedChannelImpl;->access$7500(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ManagedChannelServiceConfig;

    move-result-object v7

    invoke-virtual {v4, v7}, Lio/grpc/internal/ManagedChannelServiceConfig;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_10

    .line 1842
    iget-object v7, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v7, v7, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v7}, Lio/grpc/internal/ManagedChannelImpl;->access$2800(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/ChannelLogger;

    move-result-object v7

    sget-object v8, Lio/grpc/ChannelLogger$ChannelLogLevel;->INFO:Lio/grpc/ChannelLogger$ChannelLogLevel;

    .line 1845
    invoke-static {}, Lio/grpc/internal/ManagedChannelImpl;->access$7200()Lio/grpc/internal/ManagedChannelServiceConfig;

    move-result-object v9

    if-ne v4, v9, :cond_f

    const-string v9, " to empty"

    goto :goto_4

    :cond_f
    const-string v9, ""

    :goto_4
    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    .line 1842
    const-string v10, "Service config changed{0}"

    invoke-virtual {v7, v8, v10, v9}, Lio/grpc/ChannelLogger;->log(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1846
    iget-object v7, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v7, v7, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v7, v4}, Lio/grpc/internal/ManagedChannelImpl;->access$7502(Lio/grpc/internal/ManagedChannelImpl;Lio/grpc/internal/ManagedChannelServiceConfig;)Lio/grpc/internal/ManagedChannelServiceConfig;

    .line 1847
    iget-object v7, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v7, v7, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v7}, Lio/grpc/internal/ManagedChannelImpl;->access$3600(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider;

    move-result-object v7

    invoke-virtual {v4}, Lio/grpc/internal/ManagedChannelServiceConfig;->getRetryThrottling()Lio/grpc/internal/RetriableStream$Throttle;

    move-result-object v8

    iput-object v8, v7, Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider;->throttle:Lio/grpc/internal/RetriableStream$Throttle;

    .line 1854
    :cond_10
    :try_start_0
    iget-object v7, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v7, v7, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lio/grpc/internal/ManagedChannelImpl;->access$7402(Lio/grpc/internal/ManagedChannelImpl;Z)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1860
    goto :goto_5

    .line 1855
    :catch_0
    move-exception v7

    .line 1856
    .local v7, "re":Ljava/lang/RuntimeException;
    sget-object v8, Lio/grpc/internal/ManagedChannelImpl;->logger:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v11, v11, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    .line 1858
    invoke-virtual {v11}, Lio/grpc/internal/ManagedChannelImpl;->getLogId()Lio/grpc/InternalLogId;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] Unexpected exception from parsing service config"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1856
    invoke-virtual {v8, v9, v10, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1863
    .end local v7    # "re":Ljava/lang/RuntimeException;
    :goto_5
    iget-object v7, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->val$resolutionResult:Lio/grpc/NameResolver$ResolutionResult;

    invoke-virtual {v7}, Lio/grpc/NameResolver$ResolutionResult;->getAttributes()Lio/grpc/Attributes;

    move-result-object v7

    .line 1865
    .local v7, "effectiveAttrs":Lio/grpc/Attributes;
    iget-object v8, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v8, v8, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->helper:Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;

    iget-object v9, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v9, v9, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v9}, Lio/grpc/internal/ManagedChannelImpl;->access$900(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;

    move-result-object v9

    if-ne v8, v9, :cond_12

    .line 1866
    nop

    .line 1867
    invoke-virtual {v7}, Lio/grpc/Attributes;->toBuilder()Lio/grpc/Attributes$Builder;

    move-result-object v8

    sget-object v9, Lio/grpc/InternalConfigSelector;->KEY:Lio/grpc/Attributes$Key;

    invoke-virtual {v8, v9}, Lio/grpc/Attributes$Builder;->discard(Lio/grpc/Attributes$Key;)Lio/grpc/Attributes$Builder;

    move-result-object v8

    .line 1868
    .local v8, "attrBuilder":Lio/grpc/Attributes$Builder;
    nop

    .line 1869
    invoke-virtual {v4}, Lio/grpc/internal/ManagedChannelServiceConfig;->getHealthCheckingConfig()Ljava/util/Map;

    move-result-object v9

    .line 1870
    .local v9, "healthCheckingConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    if-eqz v9, :cond_11

    .line 1871
    sget-object v10, Lio/grpc/LoadBalancer;->ATTR_HEALTH_CHECKING_CONFIG:Lio/grpc/Attributes$Key;

    .line 1872
    invoke-virtual {v8, v10, v9}, Lio/grpc/Attributes$Builder;->set(Lio/grpc/Attributes$Key;Ljava/lang/Object;)Lio/grpc/Attributes$Builder;

    move-result-object v10

    .line 1873
    invoke-virtual {v10}, Lio/grpc/Attributes$Builder;->build()Lio/grpc/Attributes;

    .line 1875
    :cond_11
    invoke-virtual {v8}, Lio/grpc/Attributes$Builder;->build()Lio/grpc/Attributes;

    move-result-object v10

    .line 1877
    .local v10, "attributes":Lio/grpc/Attributes;
    iget-object v11, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v11, v11, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->helper:Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;

    iget-object v11, v11, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->lb:Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$AutoConfiguredLoadBalancer;

    .line 1878
    invoke-static {}, Lio/grpc/LoadBalancer$ResolvedAddresses;->newBuilder()Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;

    move-result-object v12

    .line 1879
    invoke-virtual {v12, v0}, Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;->setAddresses(Ljava/util/List;)Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;

    move-result-object v12

    .line 1880
    invoke-virtual {v12, v10}, Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;->setAttributes(Lio/grpc/Attributes;)Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;

    move-result-object v12

    .line 1881
    invoke-virtual {v4}, Lio/grpc/internal/ManagedChannelServiceConfig;->getLoadBalancingConfig()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;->setLoadBalancingPolicyConfig(Ljava/lang/Object;)Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;

    move-result-object v12

    .line 1882
    invoke-virtual {v12}, Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;->build()Lio/grpc/LoadBalancer$ResolvedAddresses;

    move-result-object v12

    .line 1877
    invoke-virtual {v11, v12}, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$AutoConfiguredLoadBalancer;->tryAcceptResolvedAddresses(Lio/grpc/LoadBalancer$ResolvedAddresses;)Lio/grpc/Status;

    move-result-object v11

    .line 1884
    .local v11, "addressAcceptanceStatus":Lio/grpc/Status;
    if-eqz v2, :cond_12

    .line 1885
    invoke-virtual {v2, v11}, Lio/grpc/internal/RetryingNameResolver$ResolutionResultListener;->resolutionAttempted(Lio/grpc/Status;)V

    .line 1888
    .end local v8    # "attrBuilder":Lio/grpc/Attributes$Builder;
    .end local v9    # "healthCheckingConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    .end local v10    # "attributes":Lio/grpc/Attributes;
    .end local v11    # "addressAcceptanceStatus":Lio/grpc/Status;
    :cond_12
    return-void
.end method
