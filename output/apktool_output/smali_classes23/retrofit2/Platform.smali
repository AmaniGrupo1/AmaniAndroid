.class final Lretrofit2/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


# static fields
.field static final builtInFactories:Lretrofit2/BuiltInFactories;

.field static final callbackExecutor:Ljava/util/concurrent/Executor;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field static final reflection:Lretrofit2/Reflection;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    const-string v0, "java.vm.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "Dalvik"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v1, "RoboVM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 48
    sput-object v1, Lretrofit2/Platform;->callbackExecutor:Ljava/util/concurrent/Executor;

    .line 49
    new-instance v0, Lretrofit2/Reflection$Java8;

    invoke-direct {v0}, Lretrofit2/Reflection$Java8;-><init>()V

    sput-object v0, Lretrofit2/Platform;->reflection:Lretrofit2/Reflection;

    .line 50
    new-instance v0, Lretrofit2/BuiltInFactories$Java8;

    invoke-direct {v0}, Lretrofit2/BuiltInFactories$Java8;-><init>()V

    sput-object v0, Lretrofit2/Platform;->builtInFactories:Lretrofit2/BuiltInFactories;

    goto :goto_2

    .line 42
    :pswitch_0
    sput-object v1, Lretrofit2/Platform;->callbackExecutor:Ljava/util/concurrent/Executor;

    .line 43
    new-instance v0, Lretrofit2/Reflection;

    invoke-direct {v0}, Lretrofit2/Reflection;-><init>()V

    sput-object v0, Lretrofit2/Platform;->reflection:Lretrofit2/Reflection;

    .line 44
    new-instance v0, Lretrofit2/BuiltInFactories;

    invoke-direct {v0}, Lretrofit2/BuiltInFactories;-><init>()V

    sput-object v0, Lretrofit2/Platform;->builtInFactories:Lretrofit2/BuiltInFactories;

    .line 45
    goto :goto_2

    .line 31
    :pswitch_1
    new-instance v0, Lretrofit2/AndroidMainExecutor;

    invoke-direct {v0}, Lretrofit2/AndroidMainExecutor;-><init>()V

    sput-object v0, Lretrofit2/Platform;->callbackExecutor:Ljava/util/concurrent/Executor;

    .line 32
    nop

    .line 33
    new-instance v0, Lretrofit2/Reflection$Android24;

    invoke-direct {v0}, Lretrofit2/Reflection$Android24;-><init>()V

    sput-object v0, Lretrofit2/Platform;->reflection:Lretrofit2/Reflection;

    .line 34
    new-instance v0, Lretrofit2/BuiltInFactories$Java8;

    invoke-direct {v0}, Lretrofit2/BuiltInFactories$Java8;-><init>()V

    sput-object v0, Lretrofit2/Platform;->builtInFactories:Lretrofit2/BuiltInFactories;

    .line 53
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6dc8345f -> :sswitch_1
        0x79935249 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
