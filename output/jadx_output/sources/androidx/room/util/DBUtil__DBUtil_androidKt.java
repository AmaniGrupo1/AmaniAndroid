package androidx.room.util;

import android.database.AbstractWindowedCursor;
import android.database.Cursor;
import android.os.CancellationSignal;
import androidx.room.RoomDatabase;
import androidx.room.RoomDatabaseKt;
import androidx.room.TransactionElement;
import androidx.room.coroutines.RunBlockingUninterruptible_androidKt;
import androidx.room.driver.SupportSQLiteConnection;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteQuery;
import com.google.android.gms.actions.SearchIntents;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: DBUtil.android.kt */
/* JADX INFO: loaded from: classes21.dex */
@Metadata(d1 = {"\u0000f\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a@\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u0002H\u00010\bH\u0087@¢\u0006\u0002\u0010\n\u001a?\u0010\u000b\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u0002H\u00010\bH\u0007¢\u0006\u0002\u0010\f\u001a:\u0010\r\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u001c\u0010\u0007\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00010\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\bH\u0087@¢\u0006\u0002\u0010\u0010\u001aB\u0010\u0011\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001*\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u001e\b\u0004\u0010\u0007\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00010\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\bH\u0082H¢\u0006\u0004\b\u0012\u0010\u0013\u001a\u001a\u0010\u0014\u001a\u00020\u0015*\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0080@¢\u0006\u0002\u0010\u0016\u001a \u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u0005H\u0007\u001a*\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u00052\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0007\u001a\u0010\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u0002\u001a\u00020 H\u0007\u001a\u0018\u0010!\u001a\u00020\u001f2\u0006\u0010\u0002\u001a\u00020 2\u0006\u0010\"\u001a\u00020#H\u0007\u001a\u0010\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020'H\u0007\u001a\b\u0010(\u001a\u00020\u001dH\u0007\u001a\u0010\u0010)\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020 H\u0007¨\u0006*"}, d2 = {"performSuspending", "R", "db", "Landroidx/room/RoomDatabase;", "isReadOnly", "", "inTransaction", "block", "Lkotlin/Function1;", "Landroidx/sqlite/SQLiteConnection;", "(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "performBlocking", "(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "performInTransactionSuspending", "Lkotlin/coroutines/Continuation;", "", "(Landroidx/room/RoomDatabase;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "compatCoroutineExecute", "compatCoroutineExecute$DBUtil__DBUtil_androidKt", "(Landroidx/room/RoomDatabase;ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getCoroutineContext", "Lkotlin/coroutines/CoroutineContext;", "(Landroidx/room/RoomDatabase;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", SearchIntents.EXTRA_QUERY, "Landroid/database/Cursor;", "sqLiteQuery", "Landroidx/sqlite/db/SupportSQLiteQuery;", "maybeCopy", "signal", "Landroid/os/CancellationSignal;", "dropFtsSyncTriggers", "", "Landroidx/sqlite/db/SupportSQLiteDatabase;", "foreignKeyCheck", "tableName", "", "readVersion", "", "databaseFile", "Ljava/io/File;", "createCancellationSignal", "toSQLiteConnection", "room-runtime_release"}, k = 5, mv = {2, 0, 0}, xi = 48, xs = "androidx/room/util/DBUtil")
final /* synthetic */ class DBUtil__DBUtil_androidKt {

    /* JADX INFO: renamed from: androidx.room.util.DBUtil__DBUtil_androidKt$performSuspending$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: DBUtil.android.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.room.util.DBUtil__DBUtil_androidKt", f = "DBUtil.android.kt", i = {1, 1, 1, 1}, l = {245, 247, 247}, m = "performSuspending", n = {"db", "block", "isReadOnly", "inTransaction"}, s = {"L$0", "L$1", "Z$0", "Z$1"})
    static final class C06451<R> extends ContinuationImpl {
        Object L$0;
        Object L$1;
        boolean Z$0;
        boolean Z$1;
        int label;
        /* synthetic */ Object result;

        C06451(Continuation<? super C06451> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return DBUtil.performSuspending(null, false, false, null, this);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0016  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final <R> Object performSuspending(RoomDatabase db, boolean isReadOnly, boolean inTransaction, Function1<? super SQLiteConnection, ? extends R> function1, Continuation<? super R> continuation) {
        C06451 c06451;
        Object obj;
        int $i$f$compatCoroutineExecute;
        boolean isReadOnly2;
        boolean isReadOnly3;
        Function1<? super SQLiteConnection, ? extends R> function12;
        RoomDatabase db2;
        boolean inTransaction2;
        boolean z;
        if (continuation instanceof C06451) {
            c06451 = (C06451) continuation;
            if ((c06451.label & Integer.MIN_VALUE) != 0) {
                c06451.label -= Integer.MIN_VALUE;
            } else {
                c06451 = new C06451(continuation);
            }
        }
        Object $result = c06451.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (c06451.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                if (db.inCompatibilityMode$room_runtime_release() && db.isOpenInternal() && db.inTransaction()) {
                    C06451 c064512 = c06451;
                    boolean z2 = isReadOnly;
                    if (inTransaction) {
                        inTransaction2 = z2;
                        z = true;
                    } else {
                        inTransaction2 = z2;
                        z = false;
                    }
                    DBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1 dBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1 = new DBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1(z, isReadOnly, db, null, function1);
                    c06451.label = 1;
                    Object objUseConnection$room_runtime_release = db.useConnection$room_runtime_release(inTransaction2, dBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1, c064512);
                    return objUseConnection$room_runtime_release == coroutine_suspended ? coroutine_suspended : objUseConnection$room_runtime_release;
                }
                boolean z3 = inTransaction;
                c06451.L$0 = db;
                c06451.L$1 = function1;
                c06451.Z$0 = isReadOnly;
                c06451.Z$1 = inTransaction;
                c06451.label = 2;
                Object coroutineContext = DBUtil.getCoroutineContext(db, z3, c06451);
                if (coroutineContext == coroutine_suspended) {
                    return coroutine_suspended;
                }
                obj = coroutineContext;
                $i$f$compatCoroutineExecute = 0;
                isReadOnly2 = isReadOnly;
                isReadOnly3 = inTransaction;
                function12 = function1;
                db2 = db;
                break;
            case 1:
                ResultKt.throwOnFailure($result);
                return $result;
            case 2:
                $i$f$compatCoroutineExecute = 0;
                boolean inTransaction3 = c06451.Z$1;
                boolean isReadOnly4 = c06451.Z$0;
                Function1<? super SQLiteConnection, ? extends R> function13 = (Function1) c06451.L$1;
                RoomDatabase db3 = (RoomDatabase) c06451.L$0;
                ResultKt.throwOnFailure($result);
                function12 = function13;
                isReadOnly2 = isReadOnly4;
                isReadOnly3 = inTransaction3;
                obj = $result;
                db2 = db3;
                break;
            case 3:
                ResultKt.throwOnFailure($result);
                return $result;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        CoroutineContext coroutineContext2 = (CoroutineContext) obj;
        DBUtil__DBUtil_androidKt$performSuspending$$inlined$compatCoroutineExecute$DBUtil__DBUtil_androidKt$1 dBUtil__DBUtil_androidKt$performSuspending$$inlined$compatCoroutineExecute$DBUtil__DBUtil_androidKt$1 = new DBUtil__DBUtil_androidKt$performSuspending$$inlined$compatCoroutineExecute$DBUtil__DBUtil_androidKt$1(null, db2, isReadOnly2, isReadOnly3, function12);
        c06451.L$0 = null;
        c06451.L$1 = null;
        c06451.label = 3;
        Object objWithContext = BuildersKt.withContext(coroutineContext2, dBUtil__DBUtil_androidKt$performSuspending$$inlined$compatCoroutineExecute$DBUtil__DBUtil_androidKt$1, c06451);
        return objWithContext == coroutine_suspended ? coroutine_suspended : objWithContext;
    }

    public static final <R> R performBlocking(RoomDatabase db, boolean z, boolean z2, Function1<? super SQLiteConnection, ? extends R> block) {
        Intrinsics.checkNotNullParameter(db, "db");
        Intrinsics.checkNotNullParameter(block, "block");
        db.assertNotMainThread();
        db.assertNotSuspendingTransaction();
        return (R) RunBlockingUninterruptible_androidKt.runBlockingUninterruptible(new AnonymousClass1(db, z, z2, block, null));
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* JADX INFO: renamed from: androidx.room.util.DBUtil__DBUtil_androidKt$performBlocking$1, reason: invalid class name */
    /* JADX INFO: compiled from: DBUtil.android.kt */
    @Metadata(d1 = {"\u0000\b\n\u0002\b\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "R", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.room.util.DBUtil__DBUtil_androidKt$performBlocking$1", f = "DBUtil.android.kt", i = {}, l = {243}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1<R> extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super R>, Object> {
        final /* synthetic */ Function1<SQLiteConnection, R> $block;
        final /* synthetic */ RoomDatabase $db;
        final /* synthetic */ boolean $inTransaction;
        final /* synthetic */ boolean $isReadOnly;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(RoomDatabase roomDatabase, boolean z, boolean z2, Function1<? super SQLiteConnection, ? extends R> function1, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$db = roomDatabase;
            this.$isReadOnly = z;
            this.$inTransaction = z2;
            this.$block = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$db, this.$isReadOnly, this.$inTransaction, this.$block, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super R> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object $result) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    RoomDatabase $this$internalPerform$iv = this.$db;
                    boolean isReadOnly$iv = this.$isReadOnly;
                    boolean inTransaction$iv = this.$inTransaction;
                    Function1<SQLiteConnection, R> function1 = this.$block;
                    boolean inTransaction$iv2 = inTransaction$iv;
                    boolean z = isReadOnly$iv;
                    this.label = 1;
                    Object objUseConnection$room_runtime_release = $this$internalPerform$iv.useConnection$room_runtime_release(isReadOnly$iv, new DBUtil__DBUtil_androidKt$performBlocking$1$invokeSuspend$$inlined$internalPerform$1(inTransaction$iv2, z, $this$internalPerform$iv, null, function1), this);
                    if (objUseConnection$room_runtime_release == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    return objUseConnection$room_runtime_release;
                case 1:
                    ResultKt.throwOnFailure($result);
                    return $result;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* JADX INFO: renamed from: androidx.room.util.DBUtil__DBUtil_androidKt$performInTransactionSuspending$2, reason: invalid class name */
    /* JADX INFO: compiled from: DBUtil.android.kt */
    @Metadata(d1 = {"\u0000\u0004\n\u0002\b\u0002\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001H\n"}, d2 = {"<anonymous>", "R"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.room.util.DBUtil__DBUtil_androidKt$performInTransactionSuspending$2", f = "DBUtil.android.kt", i = {}, l = {243}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2<R> extends SuspendLambda implements Function1<Continuation<? super R>, Object> {
        final /* synthetic */ Function1<Continuation<? super R>, Object> $block;
        final /* synthetic */ RoomDatabase $db;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass2(RoomDatabase roomDatabase, Function1<? super Continuation<? super R>, ? extends Object> function1, Continuation<? super AnonymousClass2> continuation) {
            super(1, continuation);
            this.$db = roomDatabase;
            this.$block = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return new AnonymousClass2(this.$db, this.$block, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super R> continuation) {
            return ((AnonymousClass2) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object $result) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    RoomDatabase $this$internalPerform$iv = this.$db;
                    this.label = 1;
                    Object objUseConnection$room_runtime_release = $this$internalPerform$iv.useConnection$room_runtime_release(false, new DBUtil__DBUtil_androidKt$performInTransactionSuspending$2$invokeSuspend$$inlined$internalPerform$1(true, false, $this$internalPerform$iv, null, this.$block), this);
                    if (objUseConnection$room_runtime_release == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    return objUseConnection$room_runtime_release;
                case 1:
                    ResultKt.throwOnFailure($result);
                    return $result;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    public static final <R> Object performInTransactionSuspending(RoomDatabase db, Function1<? super Continuation<? super R>, ? extends Object> function1, Continuation<? super R> continuation) {
        if (db.inCompatibilityMode$room_runtime_release()) {
            return RoomDatabaseKt.withTransactionContext(db, new AnonymousClass2(db, function1, null), continuation);
        }
        return BuildersKt.withContext(db.getCoroutineScope().getCoroutineContext(), new AnonymousClass3(db, function1, null), continuation);
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* JADX INFO: renamed from: androidx.room.util.DBUtil__DBUtil_androidKt$performInTransactionSuspending$3, reason: invalid class name */
    /* JADX INFO: compiled from: DBUtil.android.kt */
    @Metadata(d1 = {"\u0000\b\n\u0002\b\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "R", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.room.util.DBUtil__DBUtil_androidKt$performInTransactionSuspending$3", f = "DBUtil.android.kt", i = {}, l = {243}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass3<R> extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super R>, Object> {
        final /* synthetic */ Function1<Continuation<? super R>, Object> $block;
        final /* synthetic */ RoomDatabase $db;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass3(RoomDatabase roomDatabase, Function1<? super Continuation<? super R>, ? extends Object> function1, Continuation<? super AnonymousClass3> continuation) {
            super(2, continuation);
            this.$db = roomDatabase;
            this.$block = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass3(this.$db, this.$block, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super R> continuation) {
            return ((AnonymousClass3) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object $result) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    RoomDatabase $this$internalPerform$iv = this.$db;
                    this.label = 1;
                    Object objUseConnection$room_runtime_release = $this$internalPerform$iv.useConnection$room_runtime_release(false, new DBUtil__DBUtil_androidKt$performInTransactionSuspending$3$invokeSuspend$$inlined$internalPerform$1(true, false, $this$internalPerform$iv, null, this.$block), this);
                    if (objUseConnection$room_runtime_release == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    return objUseConnection$room_runtime_release;
                case 1:
                    ResultKt.throwOnFailure($result);
                    return $result;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    private static final <R> Object compatCoroutineExecute$DBUtil__DBUtil_androidKt(RoomDatabase $this$compatCoroutineExecute, boolean inTransaction, Function1<? super Continuation<? super R>, ? extends Object> function1, Continuation<? super R> continuation) {
        if ($this$compatCoroutineExecute.inCompatibilityMode$room_runtime_release() && $this$compatCoroutineExecute.isOpenInternal() && $this$compatCoroutineExecute.inTransaction()) {
            return function1.invoke(continuation);
        }
        return BuildersKt.withContext((CoroutineContext) DBUtil.getCoroutineContext($this$compatCoroutineExecute, inTransaction, continuation), new DBUtil__DBUtil_androidKt$compatCoroutineExecute$2(function1, null), continuation);
    }

    public static final Object getCoroutineContext(RoomDatabase $this$getCoroutineContext, boolean inTransaction, Continuation<? super CoroutineContext> continuation) {
        ContinuationInterceptor it;
        CoroutineContext coroutineContextPlus;
        if ($this$getCoroutineContext.inCompatibilityMode$room_runtime_release()) {
            TransactionElement transactionElement = (TransactionElement) continuation.get$context().get(TransactionElement.INSTANCE);
            if (transactionElement == null || (it = transactionElement.getTransactionDispatcher()) == null || (coroutineContextPlus = $this$getCoroutineContext.getQueryContext().plus(it)) == null) {
                return inTransaction ? $this$getCoroutineContext.getTransactionContext$room_runtime_release() : $this$getCoroutineContext.getQueryContext();
            }
            return coroutineContextPlus;
        }
        return $this$getCoroutineContext.getCoroutineScope().getCoroutineContext();
    }

    @Deprecated(message = "This is only used in the generated code and shouldn't be called directly.")
    public static final Cursor query(RoomDatabase db, SupportSQLiteQuery sqLiteQuery, boolean maybeCopy) {
        Intrinsics.checkNotNullParameter(db, "db");
        Intrinsics.checkNotNullParameter(sqLiteQuery, "sqLiteQuery");
        return DBUtil.query(db, sqLiteQuery, maybeCopy, null);
    }

    public static final Cursor query(RoomDatabase db, SupportSQLiteQuery sqLiteQuery, boolean maybeCopy, CancellationSignal signal) {
        int rowsInWindow;
        Intrinsics.checkNotNullParameter(db, "db");
        Intrinsics.checkNotNullParameter(sqLiteQuery, "sqLiteQuery");
        Cursor cursor = db.query(sqLiteQuery, signal);
        if (maybeCopy && (cursor instanceof AbstractWindowedCursor)) {
            int rowsInCursor = ((AbstractWindowedCursor) cursor).getCount();
            if (((AbstractWindowedCursor) cursor).hasWindow()) {
                rowsInWindow = ((AbstractWindowedCursor) cursor).getWindow().getNumRows();
            } else {
                rowsInWindow = rowsInCursor;
            }
            if (rowsInWindow < rowsInCursor) {
                return CursorUtil.copyAndClose(cursor);
            }
        }
        return cursor;
    }

    @Deprecated(message = "Replaced by dropFtsSyncTriggers(connection: SQLiteConnection)")
    public static final void dropFtsSyncTriggers(SupportSQLiteDatabase db) {
        Intrinsics.checkNotNullParameter(db, "db");
        DBUtil.dropFtsSyncTriggers(new SupportSQLiteConnection(db));
    }

    public static final void foreignKeyCheck(SupportSQLiteDatabase db, String tableName) {
        Intrinsics.checkNotNullParameter(db, "db");
        Intrinsics.checkNotNullParameter(tableName, "tableName");
        DBUtil.foreignKeyCheck(new SupportSQLiteConnection(db), tableName);
    }

    public static final int readVersion(File databaseFile) throws IOException {
        Intrinsics.checkNotNullParameter(databaseFile, "databaseFile");
        FileChannel channel = new FileInputStream(databaseFile).getChannel();
        try {
            FileChannel input = channel;
            ByteBuffer buffer = ByteBuffer.allocate(4);
            input.tryLock(60L, 4L, true);
            input.position(60L);
            int read = input.read(buffer);
            if (read != 4) {
                throw new IOException("Bad database header, unable to read 4 bytes at offset 60");
            }
            buffer.rewind();
            int i = buffer.getInt();
            CloseableKt.closeFinally(channel, null);
            return i;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                CloseableKt.closeFinally(channel, th);
                throw th2;
            }
        }
    }

    @Deprecated(message = "Use constructor", replaceWith = @ReplaceWith(expression = "CancellationSignal()", imports = {"android.os.CancellationSignal"}))
    public static final CancellationSignal createCancellationSignal() {
        return new CancellationSignal();
    }

    public static final SQLiteConnection toSQLiteConnection(SupportSQLiteDatabase db) {
        Intrinsics.checkNotNullParameter(db, "db");
        return new SupportSQLiteConnection(db);
    }
}
