package androidx.datastore.core;

import androidx.autofill.HintConstants;
import androidx.exifinterface.media.ExifInterface;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.ExceptionsKt;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* JADX INFO: compiled from: DataMigrationInitializer.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0000\u0018\u0000 \u0005*\u0004\b\u0000\u0010\u00012\u00020\u0002:\u0001\u0005B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0006"}, d2 = {"Landroidx/datastore/core/DataMigrationInitializer;", ExifInterface.GPS_DIRECTION_TRUE, "", "<init>", "()V", "Companion", "datastore-core"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class DataMigrationInitializer<T> {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: compiled from: DataMigrationInitializer.kt */
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003JV\u0010\u0004\u001a3\b\u0001\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u0002H\u00070\u0006¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0005\"\u0004\b\u0001\u0010\u00072\u0012\u0010\r\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00070\u000f0\u000e¢\u0006\u0002\u0010\u0010J6\u0010\u0011\u001a\u00020\f\"\u0004\b\u0001\u0010\u00072\u0012\u0010\r\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00070\u000f0\u000e2\f\u0010\n\u001a\b\u0012\u0004\u0012\u0002H\u00070\u0006H\u0082@¢\u0006\u0002\u0010\u0012¨\u0006\u0013"}, d2 = {"Landroidx/datastore/core/DataMigrationInitializer$Companion;", "", "<init>", "()V", "getInitializer", "Lkotlin/Function2;", "Landroidx/datastore/core/InitializerApi;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/ParameterName;", HintConstants.AUTOFILL_HINT_NAME, "api", "Lkotlin/coroutines/Continuation;", "", "migrations", "", "Landroidx/datastore/core/DataMigration;", "(Ljava/util/List;)Lkotlin/jvm/functions/Function2;", "runMigrations", "(Ljava/util/List;Landroidx/datastore/core/InitializerApi;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "datastore-core"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final <T> Function2<InitializerApi<T>, Continuation<? super Unit>, Object> getInitializer(List<? extends DataMigration<T>> migrations) {
            Intrinsics.checkNotNullParameter(migrations, "migrations");
            return new DataMigrationInitializer$Companion$getInitializer$1(migrations, null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Removed duplicated region for block: B:25:0x0078  */
        /* JADX WARN: Removed duplicated region for block: B:35:0x0098  */
        /* JADX WARN: Removed duplicated region for block: B:36:0x009b  */
        /* JADX WARN: Removed duplicated region for block: B:40:0x00ae  */
        /* JADX WARN: Removed duplicated region for block: B:42:0x00b1  */
        /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x0098 -> B:23:0x0072). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x009b -> B:23:0x0072). Please report as a decompilation issue!!! */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final <T> Object runMigrations(List<? extends DataMigration<T>> list, InitializerApi<T> initializerApi, Continuation<? super Unit> continuation) throws Throwable {
            DataMigrationInitializer$Companion$runMigrations$1 dataMigrationInitializer$Companion$runMigrations$1;
            List list2;
            Iterator<T> it;
            Ref.ObjectRef objectRef;
            Object obj;
            Throwable th;
            if (continuation instanceof DataMigrationInitializer$Companion$runMigrations$1) {
                dataMigrationInitializer$Companion$runMigrations$1 = (DataMigrationInitializer$Companion$runMigrations$1) continuation;
                if ((dataMigrationInitializer$Companion$runMigrations$1.label & Integer.MIN_VALUE) != 0) {
                    dataMigrationInitializer$Companion$runMigrations$1.label -= Integer.MIN_VALUE;
                } else {
                    dataMigrationInitializer$Companion$runMigrations$1 = new DataMigrationInitializer$Companion$runMigrations$1(this, continuation);
                }
            }
            Object obj2 = dataMigrationInitializer$Companion$runMigrations$1.result;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (dataMigrationInitializer$Companion$runMigrations$1.label) {
                case 0:
                    ResultKt.throwOnFailure(obj2);
                    ArrayList arrayList = new ArrayList();
                    Function2<? super T, ? super Continuation<? super T>, ? extends Object> dataMigrationInitializer$Companion$runMigrations$2 = new DataMigrationInitializer$Companion$runMigrations$2<>(list, arrayList, null);
                    dataMigrationInitializer$Companion$runMigrations$1.L$0 = arrayList;
                    dataMigrationInitializer$Companion$runMigrations$1.label = 1;
                    if (initializerApi.updateData(dataMigrationInitializer$Companion$runMigrations$2, dataMigrationInitializer$Companion$runMigrations$1) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    list2 = arrayList;
                    Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
                    it = list2.iterator();
                    objectRef = objectRef2;
                    while (it.hasNext()) {
                        Function1 function1 = (Function1) it.next();
                        try {
                        } catch (Throwable th2) {
                            obj = (T) th2;
                            if (objectRef.element != null) {
                                objectRef.element = (T) obj;
                            } else {
                                T t = objectRef.element;
                                Intrinsics.checkNotNull(t);
                                ExceptionsKt.addSuppressed((Throwable) t, (Throwable) obj);
                            }
                            while (it.hasNext()) {
                            }
                            th = (Throwable) objectRef.element;
                            if (th != null) {
                            }
                        }
                        dataMigrationInitializer$Companion$runMigrations$1.L$0 = objectRef;
                        dataMigrationInitializer$Companion$runMigrations$1.L$1 = it;
                        dataMigrationInitializer$Companion$runMigrations$1.label = 2;
                        if (function1.invoke(dataMigrationInitializer$Companion$runMigrations$1) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    }
                    th = (Throwable) objectRef.element;
                    if (th != null) {
                        return Unit.INSTANCE;
                    }
                    throw th;
                case 1:
                    list2 = (List) dataMigrationInitializer$Companion$runMigrations$1.L$0;
                    ResultKt.throwOnFailure(obj2);
                    Ref.ObjectRef objectRef22 = new Ref.ObjectRef();
                    it = list2.iterator();
                    objectRef = objectRef22;
                    while (it.hasNext()) {
                    }
                    th = (Throwable) objectRef.element;
                    if (th != null) {
                    }
                    break;
                case 2:
                    it = (Iterator) dataMigrationInitializer$Companion$runMigrations$1.L$1;
                    objectRef = (Ref.ObjectRef) dataMigrationInitializer$Companion$runMigrations$1.L$0;
                    try {
                        ResultKt.throwOnFailure(obj2);
                        break;
                    } catch (Throwable 
                    /*  JADX ERROR: Method code generation error
                        java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.SSAVar.getCodeVar()" because "ssaVar" is null
                        	at jadx.core.codegen.RegionGen.makeCatchBlock(RegionGen.java:372)
                        	at jadx.core.codegen.RegionGen.makeTryCatch(RegionGen.java:335)
                        	at jadx.core.dex.regions.TryCatchRegion.generate(TryCatchRegion.java:85)
                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                        	at jadx.core.dex.regions.Region.generate(Region.java:35)
                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                        	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                        	at jadx.core.codegen.RegionGen.makeSwitch(RegionGen.java:267)
                        	at jadx.core.dex.regions.SwitchRegion.generate(SwitchRegion.java:88)
                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                        	at jadx.core.dex.regions.Region.generate(Region.java:35)
                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                        	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:305)
                        	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:284)
                        	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:412)
                        	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:337)
                        	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:303)
                        	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
                        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                        	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
                        	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:258)
                        */
                    /*
                        this = this;
                        boolean r0 = r11 instanceof androidx.datastore.core.DataMigrationInitializer$Companion$runMigrations$1
                        if (r0 == 0) goto L14
                        r0 = r11
                        androidx.datastore.core.DataMigrationInitializer$Companion$runMigrations$1 r0 = (androidx.datastore.core.DataMigrationInitializer$Companion$runMigrations$1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r1 = r1 & r2
                        if (r1 == 0) goto L14
                        int r1 = r0.label
                        int r1 = r1 - r2
                        r0.label = r1
                        goto L19
                    L14:
                        androidx.datastore.core.DataMigrationInitializer$Companion$runMigrations$1 r0 = new androidx.datastore.core.DataMigrationInitializer$Companion$runMigrations$1
                        r0.<init>(r8, r11)
                    L19:
                        java.lang.Object r1 = r0.result
                        java.lang.Object r2 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                        int r3 = r0.label
                        switch(r3) {
                            case 0: goto L44;
                            case 1: goto L3c;
                            case 2: goto L2c;
                            default: goto L24;
                        }
                    L24:
                        java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
                        java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
                        r9.<init>(r10)
                        throw r9
                    L2c:
                        r9 = 0
                        r10 = 0
                        java.lang.Object r3 = r0.L$1
                        java.util.Iterator r3 = (java.util.Iterator) r3
                        java.lang.Object r4 = r0.L$0
                        kotlin.jvm.internal.Ref$ObjectRef r4 = (kotlin.jvm.internal.Ref.ObjectRef) r4
                        kotlin.ResultKt.throwOnFailure(r1)     // Catch: java.lang.Throwable -> L3a
                        goto L8f
                    L3a:
                        r5 = move-exception
                        goto L94
                    L3c:
                        java.lang.Object r9 = r0.L$0
                        java.util.List r9 = (java.util.List) r9
                        kotlin.ResultKt.throwOnFailure(r1)
                        goto L63
                    L44:
                        kotlin.ResultKt.throwOnFailure(r1)
                        java.util.ArrayList r3 = new java.util.ArrayList
                        r3.<init>()
                        java.util.List r3 = (java.util.List) r3
                        androidx.datastore.core.DataMigrationInitializer$Companion$runMigrations$2 r4 = new androidx.datastore.core.DataMigrationInitializer$Companion$runMigrations$2
                        r5 = 0
                        r4.<init>(r9, r3, r5)
                        kotlin.jvm.functions.Function2 r4 = (kotlin.jvm.functions.Function2) r4
                        r0.L$0 = r3
                        r5 = 1
                        r0.label = r5
                        java.lang.Object r9 = r10.updateData(r4, r0)
                        if (r9 != r2) goto L62
                        return r2
                    L62:
                        r9 = r3
                    L63:
                        kotlin.jvm.internal.Ref$ObjectRef r10 = new kotlin.jvm.internal.Ref$ObjectRef
                        r10.<init>()
                        java.lang.Iterable r9 = (java.lang.Iterable) r9
                        r3 = 0
                        java.util.Iterator r4 = r9.iterator()
                        r9 = r3
                        r3 = r4
                        r4 = r10
                    L72:
                        boolean r10 = r3.hasNext()
                        if (r10 == 0) goto La7
                        java.lang.Object r10 = r3.next()
                        kotlin.jvm.functions.Function1 r10 = (kotlin.jvm.functions.Function1) r10
                        r5 = 0
                        r0.L$0 = r4     // Catch: java.lang.Throwable -> L90
                        r0.L$1 = r3     // Catch: java.lang.Throwable -> L90
                        r6 = 2
                        r0.label = r6     // Catch: java.lang.Throwable -> L90
                        java.lang.Object r6 = r10.invoke(r0)     // Catch: java.lang.Throwable -> L90
                        if (r6 != r2) goto L8e
                        return r2
                    L8e:
                        r10 = r5
                    L8f:
                        goto La5
                    L90:
                        r10 = move-exception
                        r7 = r5
                        r5 = r10
                        r10 = r7
                    L94:
                        T r6 = r4.element
                        if (r6 != 0) goto L9b
                        r4.element = r5
                        goto La5
                    L9b:
                        T r6 = r4.element
                        kotlin.jvm.internal.Intrinsics.checkNotNull(r6)
                        java.lang.Throwable r6 = (java.lang.Throwable) r6
                        kotlin.ExceptionsKt.addSuppressed(r6, r5)
                    La5:
                        goto L72
                    La7:
                        T r9 = r4.element
                        java.lang.Throwable r9 = (java.lang.Throwable) r9
                        if (r9 != 0) goto Lb1
                        kotlin.Unit r9 = kotlin.Unit.INSTANCE
                        return r9
                    Lb1:
                        r10 = 0
                        throw r9
                    */
                    throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.DataMigrationInitializer.Companion.runMigrations(java.util.List, androidx.datastore.core.InitializerApi, kotlin.coroutines.Continuation):java.lang.Object");
                }
            }
        }
