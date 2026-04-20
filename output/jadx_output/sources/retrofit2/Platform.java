package retrofit2;

import java.util.concurrent.Executor;
import javax.annotation.Nullable;
import retrofit2.BuiltInFactories;
import retrofit2.Reflection;

/* JADX INFO: loaded from: classes23.dex */
final class Platform {
    static final BuiltInFactories builtInFactories;

    @Nullable
    static final Executor callbackExecutor;
    static final Reflection reflection;

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0022  */
    static {
        switch (System.getProperty("java.vm.name")) {
            case "Dalvik":
                callbackExecutor = new AndroidMainExecutor();
                reflection = new Reflection.Android24();
                builtInFactories = new BuiltInFactories.Java8();
                break;
            case "RoboVM":
                callbackExecutor = null;
                reflection = new Reflection();
                builtInFactories = new BuiltInFactories();
                break;
            default:
                callbackExecutor = null;
                reflection = new Reflection.Java8();
                builtInFactories = new BuiltInFactories.Java8();
                break;
        }
    }

    private Platform() {
    }
}
