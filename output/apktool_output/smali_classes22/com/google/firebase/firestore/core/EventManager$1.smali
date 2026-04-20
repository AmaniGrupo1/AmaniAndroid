.class synthetic Lcom/google/firebase/firestore/core/EventManager$1;
.super Ljava/lang/Object;
.source "EventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/core/EventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$firebase$firestore$core$EventManager$ListenerRemovalAction:[I

.field static final synthetic $SwitchMap$com$google$firebase$firestore$core$EventManager$ListenerSetupAction:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 187
    invoke-static {}, Lcom/google/firebase/firestore/core/EventManager$ListenerRemovalAction;->values()[Lcom/google/firebase/firestore/core/EventManager$ListenerRemovalAction;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/firebase/firestore/core/EventManager$1;->$SwitchMap$com$google$firebase$firestore$core$EventManager$ListenerRemovalAction:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/google/firebase/firestore/core/EventManager$1;->$SwitchMap$com$google$firebase$firestore$core$EventManager$ListenerRemovalAction:[I

    sget-object v2, Lcom/google/firebase/firestore/core/EventManager$ListenerRemovalAction;->TERMINATE_LOCAL_LISTEN_AND_REQUIRE_WATCH_DISCONNECTION:Lcom/google/firebase/firestore/core/EventManager$ListenerRemovalAction;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/core/EventManager$ListenerRemovalAction;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lcom/google/firebase/firestore/core/EventManager$1;->$SwitchMap$com$google$firebase$firestore$core$EventManager$ListenerRemovalAction:[I

    sget-object v3, Lcom/google/firebase/firestore/core/EventManager$ListenerRemovalAction;->TERMINATE_LOCAL_LISTEN_ONLY:Lcom/google/firebase/firestore/core/EventManager$ListenerRemovalAction;

    invoke-virtual {v3}, Lcom/google/firebase/firestore/core/EventManager$ListenerRemovalAction;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    :goto_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/google/firebase/firestore/core/EventManager$1;->$SwitchMap$com$google$firebase$firestore$core$EventManager$ListenerRemovalAction:[I

    sget-object v4, Lcom/google/firebase/firestore/core/EventManager$ListenerRemovalAction;->REQUIRE_WATCH_DISCONNECTION_ONLY:Lcom/google/firebase/firestore/core/EventManager$ListenerRemovalAction;

    invoke-virtual {v4}, Lcom/google/firebase/firestore/core/EventManager$ListenerRemovalAction;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v3

    .line 143
    :goto_2
    invoke-static {}, Lcom/google/firebase/firestore/core/EventManager$ListenerSetupAction;->values()[Lcom/google/firebase/firestore/core/EventManager$ListenerSetupAction;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/google/firebase/firestore/core/EventManager$1;->$SwitchMap$com$google$firebase$firestore$core$EventManager$ListenerSetupAction:[I

    :try_start_3
    sget-object v3, Lcom/google/firebase/firestore/core/EventManager$1;->$SwitchMap$com$google$firebase$firestore$core$EventManager$ListenerSetupAction:[I

    sget-object v4, Lcom/google/firebase/firestore/core/EventManager$ListenerSetupAction;->INITIALIZE_LOCAL_LISTEN_AND_REQUIRE_WATCH_CONNECTION:Lcom/google/firebase/firestore/core/EventManager$ListenerSetupAction;

    invoke-virtual {v4}, Lcom/google/firebase/firestore/core/EventManager$ListenerSetupAction;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    :goto_3
    :try_start_4
    sget-object v0, Lcom/google/firebase/firestore/core/EventManager$1;->$SwitchMap$com$google$firebase$firestore$core$EventManager$ListenerSetupAction:[I

    sget-object v3, Lcom/google/firebase/firestore/core/EventManager$ListenerSetupAction;->INITIALIZE_LOCAL_LISTEN_ONLY:Lcom/google/firebase/firestore/core/EventManager$ListenerSetupAction;

    invoke-virtual {v3}, Lcom/google/firebase/firestore/core/EventManager$ListenerSetupAction;->ordinal()I

    move-result v3

    aput v1, v0, v3
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    :goto_4
    :try_start_5
    sget-object v0, Lcom/google/firebase/firestore/core/EventManager$1;->$SwitchMap$com$google$firebase$firestore$core$EventManager$ListenerSetupAction:[I

    sget-object v1, Lcom/google/firebase/firestore/core/EventManager$ListenerSetupAction;->REQUIRE_WATCH_CONNECTION_ONLY:Lcom/google/firebase/firestore/core/EventManager$ListenerSetupAction;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/EventManager$ListenerSetupAction;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v0

    :goto_5
    return-void
.end method
