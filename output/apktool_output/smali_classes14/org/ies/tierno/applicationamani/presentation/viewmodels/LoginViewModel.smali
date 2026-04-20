.class public final Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "LoginViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLoginViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoginViewModel.kt\norg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 4 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n+ 5 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt\n+ 6 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,699:1\n49#2:700\n51#2:704\n46#3:701\n51#3:703\n105#4:702\n105#4:706\n105#4:714\n233#5:705\n235#5:707\n283#5:708\n284#5:713\n37#6:709\n36#6,3:710\n*S KotlinDebug\n*F\n+ 1 LoginViewModel.kt\norg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel\n*L\n296#1:700\n296#1:704\n296#1:701\n296#1:703\n296#1:702\n324#1:706\n329#1:714\n324#1:705\n324#1:707\n329#1:708\n329#1:713\n329#1:709\n329#1:710,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u00088\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u001e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008O\u0008\u0007\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0018\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\nH\u0082@\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0017\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0017\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0013J\u0017\u0010\u0017\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0013J\u0017\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0019\u001a\u00020\u0018H\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0017\u0010\u001d\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u0018H\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0015\u0010 \u001a\u00020\u000c2\u0006\u0010\u001f\u001a\u00020\u000f\u00a2\u0006\u0004\u0008 \u0010!J\u0015\u0010\"\u001a\u00020\u000c2\u0006\u0010\u0014\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\"\u0010!J\r\u0010#\u001a\u00020\u000c\u00a2\u0006\u0004\u0008#\u0010$J\r\u0010%\u001a\u00020\u000c\u00a2\u0006\u0004\u0008%\u0010$J\r\u0010&\u001a\u00020\u000c\u00a2\u0006\u0004\u0008&\u0010$J\r\u0010\'\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\'\u0010(J\u0015\u0010*\u001a\u00020\u000c2\u0006\u0010)\u001a\u00020\u000f\u00a2\u0006\u0004\u0008*\u0010!J\u0015\u0010+\u001a\u00020\u000c2\u0006\u0010)\u001a\u00020\u000f\u00a2\u0006\u0004\u0008+\u0010!J\u0015\u0010,\u001a\u00020\u000c2\u0006\u0010)\u001a\u00020\u000f\u00a2\u0006\u0004\u0008,\u0010!J\u0015\u0010-\u001a\u00020\u000c2\u0006\u0010)\u001a\u00020\u000f\u00a2\u0006\u0004\u0008-\u0010!J\u0015\u0010.\u001a\u00020\u000c2\u0006\u0010)\u001a\u00020\u000f\u00a2\u0006\u0004\u0008.\u0010!J\u0015\u0010/\u001a\u00020\u000c2\u0006\u0010)\u001a\u00020\u000f\u00a2\u0006\u0004\u0008/\u0010!J\u0015\u00100\u001a\u00020\u000c2\u0006\u0010)\u001a\u00020\u000f\u00a2\u0006\u0004\u00080\u0010!J\u0015\u00101\u001a\u00020\u000c2\u0006\u0010)\u001a\u00020\u000f\u00a2\u0006\u0004\u00081\u0010!J\u0015\u00102\u001a\u00020\u000c2\u0006\u0010)\u001a\u00020\u000f\u00a2\u0006\u0004\u00082\u0010!J\u0015\u00103\u001a\u00020\u000c2\u0006\u0010)\u001a\u00020\u000f\u00a2\u0006\u0004\u00083\u0010!J\u0015\u00104\u001a\u00020\u000c2\u0006\u0010)\u001a\u00020\u000f\u00a2\u0006\u0004\u00084\u0010!J\u0015\u00105\u001a\u00020\u000c2\u0006\u0010)\u001a\u00020\u000f\u00a2\u0006\u0004\u00085\u0010!J\u0015\u00106\u001a\u00020\u000c2\u0006\u0010)\u001a\u00020\u000f\u00a2\u0006\u0004\u00086\u0010!J\u0015\u00107\u001a\u00020\u000c2\u0006\u0010)\u001a\u00020\u000f\u00a2\u0006\u0004\u00087\u0010!J\u0017\u00108\u001a\u00020\u000c2\u0008\u0010)\u001a\u0004\u0018\u00010\u001a\u00a2\u0006\u0004\u00088\u00109J\u0017\u0010:\u001a\u00020\u000c2\u0008\u0010)\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0004\u0008:\u0010!J\u0017\u0010;\u001a\u00020\u000c2\u0008\u0010)\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0004\u0008;\u0010!J\u0015\u0010=\u001a\u00020\u000c2\u0006\u0010<\u001a\u00020\u0018\u00a2\u0006\u0004\u0008=\u0010>J\u0015\u0010@\u001a\u00020\u000c2\u0006\u0010?\u001a\u00020\u0011\u00a2\u0006\u0004\u0008@\u0010AJ\u0017\u0010C\u001a\u00020\u000c2\u0008\u0010B\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0004\u0008C\u0010!J\u0017\u0010D\u001a\u00020\u000c2\u0008\u0010B\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0004\u0008D\u0010!J\u0017\u0010E\u001a\u00020\u000c2\u0008\u0010B\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0004\u0008E\u0010!J\u0017\u0010F\u001a\u00020\u000c2\u0008\u0010B\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0004\u0008F\u0010!J\u0015\u0010G\u001a\u00020\u000c2\u0006\u0010)\u001a\u00020\u0011\u00a2\u0006\u0004\u0008G\u0010AJ\u0015\u0010H\u001a\u00020\u000c2\u0006\u0010)\u001a\u00020\u000f\u00a2\u0006\u0004\u0008H\u0010!J\r\u0010I\u001a\u00020\u000c\u00a2\u0006\u0004\u0008I\u0010$J\u0015\u0010J\u001a\u00020\u000c2\u0006\u0010)\u001a\u00020\u000f\u00a2\u0006\u0004\u0008J\u0010!J\u0015\u0010K\u001a\u00020\u000c2\u0006\u0010)\u001a\u00020\u000f\u00a2\u0006\u0004\u0008K\u0010!J\u0015\u0010L\u001a\u00020\u000c2\u0006\u0010)\u001a\u00020\u000f\u00a2\u0006\u0004\u0008L\u0010!J\u0015\u0010M\u001a\u00020\u000c2\u0006\u0010)\u001a\u00020\u000f\u00a2\u0006\u0004\u0008M\u0010!J\u0015\u0010N\u001a\u00020\u000c2\u0006\u0010)\u001a\u00020\u000f\u00a2\u0006\u0004\u0008N\u0010!J\r\u0010O\u001a\u00020\u000c\u00a2\u0006\u0004\u0008O\u0010$J\r\u0010P\u001a\u00020\u000c\u00a2\u0006\u0004\u0008P\u0010$J\r\u0010Q\u001a\u00020\u000c\u00a2\u0006\u0004\u0008Q\u0010$J\r\u0010R\u001a\u00020\u000c\u00a2\u0006\u0004\u0008R\u0010$J\u001d\u0010V\u001a\u00020\u000c2\u0006\u0010T\u001a\u00020S2\u0006\u0010U\u001a\u00020S\u00a2\u0006\u0004\u0008V\u0010WJ\r\u0010X\u001a\u00020\u000c\u00a2\u0006\u0004\u0008X\u0010$J\r\u0010Y\u001a\u00020\u000c\u00a2\u0006\u0004\u0008Y\u0010$J\u001b\u0010[\u001a\u0010\u0012\u0004\u0012\u00020\u0011\u0012\u0006\u0012\u0004\u0018\u00010\u000f0Z\u00a2\u0006\u0004\u0008[\u0010\\J\r\u0010]\u001a\u00020\u000c\u00a2\u0006\u0004\u0008]\u0010$R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010^R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010_R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010`R\u001a\u0010b\u001a\u0008\u0012\u0004\u0012\u00020\u000f0a8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008b\u0010cR\u001d\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u000f0d8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010e\u001a\u0004\u0008f\u0010gR\u001a\u0010h\u001a\u0008\u0012\u0004\u0012\u00020\u000f0a8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008h\u0010cR\u001d\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u000f0d8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010e\u001a\u0004\u0008i\u0010gR\"\u0010k\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\n\u0018\u00010j0a8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008k\u0010cR%\u0010l\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\n\u0018\u00010j0d8\u0006\u00a2\u0006\u000c\n\u0004\u0008l\u0010e\u001a\u0004\u0008m\u0010gR\u001a\u0010n\u001a\u0008\u0012\u0004\u0012\u00020\u00110a8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008n\u0010cR\u001d\u0010o\u001a\u0008\u0012\u0004\u0012\u00020\u00110d8\u0006\u00a2\u0006\u000c\n\u0004\u0008o\u0010e\u001a\u0004\u0008o\u0010gR\u001c\u0010p\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0a8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008p\u0010cR\u001f\u0010q\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0d8\u0006\u00a2\u0006\u000c\n\u0004\u0008q\u0010e\u001a\u0004\u0008r\u0010gR\u001d\u0010s\u001a\u0008\u0012\u0004\u0012\u00020\u000f0a8\u0006\u00a2\u0006\u000c\n\u0004\u0008s\u0010c\u001a\u0004\u0008t\u0010uR\u001d\u0010v\u001a\u0008\u0012\u0004\u0012\u00020\u000f0a8\u0006\u00a2\u0006\u000c\n\u0004\u0008v\u0010c\u001a\u0004\u0008w\u0010uR\u001d\u0010x\u001a\u0008\u0012\u0004\u0012\u00020\u000f0a8\u0006\u00a2\u0006\u000c\n\u0004\u0008x\u0010c\u001a\u0004\u0008y\u0010uR\u001d\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000f0a8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010c\u001a\u0004\u0008z\u0010uR\u001d\u0010{\u001a\u0008\u0012\u0004\u0012\u00020\u000f0a8\u0006\u00a2\u0006\u000c\n\u0004\u0008{\u0010c\u001a\u0004\u0008|\u0010uR\u001d\u0010}\u001a\u0008\u0012\u0004\u0012\u00020\u000f0a8\u0006\u00a2\u0006\u000c\n\u0004\u0008}\u0010c\u001a\u0004\u0008~\u0010uR\u001e\u0010\u007f\u001a\u0008\u0012\u0004\u0012\u00020\u000f0a8\u0006\u00a2\u0006\r\n\u0004\u0008\u007f\u0010c\u001a\u0005\u0008\u0080\u0001\u0010uR \u0010\u0081\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u000f0a8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u0081\u0001\u0010c\u001a\u0005\u0008\u0082\u0001\u0010uR \u0010\u0083\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00110a8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u0083\u0001\u0010c\u001a\u0005\u0008\u0084\u0001\u0010uR \u0010\u0085\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00110a8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u0085\u0001\u0010c\u001a\u0005\u0008\u0086\u0001\u0010uR \u0010\u0087\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00110a8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u0087\u0001\u0010c\u001a\u0005\u0008\u0088\u0001\u0010uR!\u0010\u008a\u0001\u001a\t\u0012\u0005\u0012\u00030\u0089\u00010a8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u008a\u0001\u0010c\u001a\u0005\u0008\u008b\u0001\u0010uR\'\u0010\u008d\u0001\u001a\u000f\u0012\u000b\u0012\t\u0012\u0004\u0012\u00020S0\u008c\u00010a8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u008d\u0001\u0010c\u001a\u0005\u0008\u008e\u0001\u0010uR \u0010\u008f\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u000f0a8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u008f\u0001\u0010c\u001a\u0005\u0008\u0090\u0001\u0010uR \u0010\u0091\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u000f0a8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u0091\u0001\u0010c\u001a\u0005\u0008\u0092\u0001\u0010uR \u0010\u0093\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u000f0a8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u0093\u0001\u0010c\u001a\u0005\u0008\u0094\u0001\u0010uR \u0010\u0095\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u000f0a8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u0095\u0001\u0010c\u001a\u0005\u0008\u0096\u0001\u0010uR \u0010\u0097\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u000f0a8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u0097\u0001\u0010c\u001a\u0005\u0008\u0098\u0001\u0010uR \u0010\u0099\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u000f0a8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u0099\u0001\u0010c\u001a\u0005\u0008\u009a\u0001\u0010uR\"\u0010\u009b\u0001\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001a0a8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u009b\u0001\u0010c\u001a\u0005\u0008\u009c\u0001\u0010uR\"\u0010\u009d\u0001\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0a8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u009d\u0001\u0010c\u001a\u0005\u0008\u009e\u0001\u0010uR\"\u0010\u009f\u0001\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0a8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u009f\u0001\u0010c\u001a\u0005\u0008\u00a0\u0001\u0010uR\u001c\u0010\u00a1\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00110a8\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008\u00a1\u0001\u0010cR \u0010\u00a2\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00110d8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u00a2\u0001\u0010e\u001a\u0005\u0008\u00a2\u0001\u0010gR\u001e\u0010\u00a3\u0001\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0a8\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008\u00a3\u0001\u0010cR\"\u0010\u00a4\u0001\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0d8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u00a4\u0001\u0010e\u001a\u0005\u0008\u00a5\u0001\u0010gR\u001c\u0010\u00a6\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00110a8\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008\u00a6\u0001\u0010cR \u0010\u00a7\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00110d8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u00a7\u0001\u0010e\u001a\u0005\u0008\u00a8\u0001\u0010gR\u001e\u0010\u00a9\u0001\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00180a8\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008\u00a9\u0001\u0010cR \u0010\u0019\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00180d8\u0006\u00a2\u0006\r\n\u0004\u0008\u0019\u0010e\u001a\u0005\u0008\u00aa\u0001\u0010gR\u001c\u0010\u00ab\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00110a8\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008\u00ab\u0001\u0010cR \u0010\u00ac\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00110d8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u00ac\u0001\u0010e\u001a\u0005\u0008\u00ad\u0001\u0010gR\u001e\u0010\u00ae\u0001\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0a8\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008\u00ae\u0001\u0010cR\"\u0010\u00af\u0001\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0d8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u00af\u0001\u0010e\u001a\u0005\u0008\u00b0\u0001\u0010gR\u001e\u0010\u00b1\u0001\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0a8\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008\u00b1\u0001\u0010cR\"\u0010\u00b2\u0001\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0d8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u00b2\u0001\u0010e\u001a\u0005\u0008\u00b3\u0001\u0010gR\u001e\u0010\u00b4\u0001\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0a8\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008\u00b4\u0001\u0010cR\"\u0010\u00b5\u0001\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0d8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u00b5\u0001\u0010e\u001a\u0005\u0008\u00b6\u0001\u0010gR\u001e\u0010\u00b7\u0001\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0a8\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008\u00b7\u0001\u0010cR\"\u0010\u00b8\u0001\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0d8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u00b8\u0001\u0010e\u001a\u0005\u0008\u00b9\u0001\u0010gR \u0010\u00ba\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00110a8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u00ba\u0001\u0010c\u001a\u0005\u0008\u00bb\u0001\u0010uR \u0010\u00bc\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u000f0a8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u00bc\u0001\u0010c\u001a\u0005\u0008\u00bd\u0001\u0010uR \u0010\u00be\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u000f0a8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u00be\u0001\u0010c\u001a\u0005\u0008\u00bf\u0001\u0010uR \u0010\u00c0\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u000f0a8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u00c0\u0001\u0010c\u001a\u0005\u0008\u00c1\u0001\u0010uR \u0010\u00c2\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u000f0a8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u00c2\u0001\u0010c\u001a\u0005\u0008\u00c3\u0001\u0010uR \u0010\u00c4\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u000f0a8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u00c4\u0001\u0010c\u001a\u0005\u0008\u00c5\u0001\u0010uR \u0010\u00c6\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00110d8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u00c6\u0001\u0010e\u001a\u0005\u0008\u00c7\u0001\u0010gR \u0010\u00c8\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00110d8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u00c8\u0001\u0010e\u001a\u0005\u0008\u00c9\u0001\u0010gR \u0010\u00ca\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00110d8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u00ca\u0001\u0010e\u001a\u0005\u0008\u00cb\u0001\u0010gR \u0010\u00cc\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00110d8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u00cc\u0001\u0010e\u001a\u0005\u0008\u00cd\u0001\u0010gR \u0010\u00ce\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00110d8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u00ce\u0001\u0010e\u001a\u0005\u0008\u00cf\u0001\u0010gR\u001e\u0010\u00d0\u0001\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0a8\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008\u00d0\u0001\u0010cR\"\u0010\u00d1\u0001\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0d8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u00d1\u0001\u0010e\u001a\u0005\u0008\u00d2\u0001\u0010gR\u001c\u0010\u00d3\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00110a8\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008\u00d3\u0001\u0010cR \u0010\u00d4\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00110d8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u00d4\u0001\u0010e\u001a\u0005\u0008\u00d5\u0001\u0010gR\u001e\u0010\u00d6\u0001\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0a8\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008\u00d6\u0001\u0010cR\"\u0010\u00d7\u0001\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0d8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u00d7\u0001\u0010e\u001a\u0005\u0008\u00d8\u0001\u0010gR\u001c\u0010\u00d9\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00110a8\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008\u00d9\u0001\u0010cR \u0010\u00da\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00110d8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u00da\u0001\u0010e\u001a\u0005\u0008\u00da\u0001\u0010g\u00a8\u0006\u00db\u0001"
    }
    d2 = {
        "Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase;",
        "loginUseCase",
        "Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/AsignarPacienteAlPsicologoUseCase;",
        "asignarPacienteAlPsicologoUseCase",
        "Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;",
        "userSessionDataStore",
        "<init>",
        "(Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase;Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/AsignarPacienteAlPsicologoUseCase;Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;)V",
        "Lorg/ies/tierno/applicationamani/domain/models/login/LoginResponseDTO;",
        "loginResponse",
        "",
        "saveUserSession",
        "(Lorg/ies/tierno/applicationamani/domain/models/login/LoginResponseDTO;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "",
        "email",
        "",
        "isValidEmail",
        "(Ljava/lang/String;)Z",
        "password",
        "isValidPassword",
        "phone",
        "isValidPhone",
        "j$/time/LocalDate",
        "dateOfBirth",
        "",
        "calculateAge",
        "(Lj$/time/LocalDate;)I",
        "isAdult",
        "(Lj$/time/LocalDate;)Z",
        "username",
        "setUsername",
        "(Ljava/lang/String;)V",
        "setPassword",
        "login",
        "()V",
        "clearLoginFields",
        "resetLoginState",
        "isLoginFormValid",
        "()Z",
        "value",
        "setNombre",
        "setApellido",
        "setDni",
        "setEmail",
        "setRegPassword",
        "setTelefono",
        "setGenero",
        "setFechaNacimiento",
        "setTutorNombre",
        "setTutorTelefono",
        "setTutorEmail",
        "setTutorDni",
        "setTutorTipo",
        "setRegistroEspecialidad",
        "setRegistroExperiencia",
        "(Ljava/lang/Integer;)V",
        "setRegistroDescripcion",
        "setRegistroLicencia",
        "date",
        "setDateOfBirth",
        "(Lj$/time/LocalDate;)V",
        "show",
        "setShowDatePicker",
        "(Z)V",
        "error",
        "setDateError",
        "setPhoneError",
        "setEmailError",
        "setPasswordError",
        "setAceptaTerminosPsicologo",
        "setTelefonoPsicologo",
        "resetRegisterState",
        "setCalle",
        "setCiudad",
        "setProvincia",
        "setCodigoPostal",
        "setPais",
        "limpiarFormularioPsicologo",
        "registrarAdmin",
        "registrarPaciente",
        "limpiarFormulario",
        "",
        "idPaciente",
        "idPsicologo",
        "asignarPaciente",
        "(JJ)V",
        "clearAsignarPsicologoResult",
        "clearAllErrors",
        "Lkotlin/Pair;",
        "validatePsychologistForm",
        "()Lkotlin/Pair;",
        "registrarPsicologo",
        "Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase;",
        "Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/AsignarPacienteAlPsicologoUseCase;",
        "Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "_username",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "getUsername",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "_password",
        "getPassword",
        "Lkotlin/Result;",
        "_loginResult",
        "loginResult",
        "getLoginResult",
        "_isLoggingIn",
        "isLoggingIn",
        "_loginError",
        "loginError",
        "getLoginError",
        "nombre",
        "getNombre",
        "()Lkotlinx/coroutines/flow/MutableStateFlow;",
        "apellido",
        "getApellido",
        "dni",
        "getDni",
        "getEmail",
        "regPassword",
        "getRegPassword",
        "telefono",
        "getTelefono",
        "genero",
        "getGenero",
        "fechaNacimiento",
        "getFechaNacimiento",
        "aceptaTerminos",
        "getAceptaTerminos",
        "aceptaVideoconferencia",
        "getAceptaVideoconferencia",
        "aceptaComunicacion",
        "getAceptaComunicacion",
        "Lorg/ies/tierno/applicationamani/domain/models/enumm/MetodoPago;",
        "metodoPago",
        "getMetodoPago",
        "",
        "situacionesIds",
        "getSituacionesIds",
        "tutorNombre",
        "getTutorNombre",
        "tutorTelefono",
        "getTutorTelefono",
        "tutorEmail",
        "getTutorEmail",
        "tutorDni",
        "getTutorDni",
        "tutorTipo",
        "getTutorTipo",
        "registroEspecialidad",
        "getRegistroEspecialidad",
        "registroExperiencia",
        "getRegistroExperiencia",
        "registroDescripcion",
        "getRegistroDescripcion",
        "registroLicencia",
        "getRegistroLicencia",
        "_isRegistering",
        "isRegistering",
        "_registerError",
        "registerError",
        "getRegisterError",
        "_registerSuccess",
        "registerSuccess",
        "getRegisterSuccess",
        "_dateOfBirth",
        "getDateOfBirth",
        "_showDatePicker",
        "showDatePicker",
        "getShowDatePicker",
        "_dateError",
        "dateError",
        "getDateError",
        "_phoneError",
        "phoneError",
        "getPhoneError",
        "_emailError",
        "emailError",
        "getEmailError",
        "_passwordError",
        "passwordError",
        "getPasswordError",
        "aceptaTerminosPsicologo",
        "getAceptaTerminosPsicologo",
        "calle",
        "getCalle",
        "ciudad",
        "getCiudad",
        "provincia",
        "getProvincia",
        "codigoPostal",
        "getCodigoPostal",
        "pais",
        "getPais",
        "esMenor",
        "getEsMenor",
        "tutorValido",
        "getTutorValido",
        "direccionValida",
        "getDireccionValida",
        "formularioValido",
        "getFormularioValido",
        "formularioCompletoValido",
        "getFormularioCompletoValido",
        "_successMessage",
        "successMessage",
        "getSuccessMessage",
        "_asignarPacienteSuccess",
        "asignarPacienteSuccess",
        "getAsignarPacienteSuccess",
        "_asignarPacienteError",
        "asignarPacienteError",
        "getAsignarPacienteError",
        "_isAsignandoPaciente",
        "isAsignandoPaciente",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private final _asignarPacienteError:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final _asignarPacienteSuccess:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final _dateError:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final _dateOfBirth:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lj$/time/LocalDate;",
            ">;"
        }
    .end annotation
.end field

.field private final _emailError:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final _isAsignandoPaciente:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final _isLoggingIn:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final _isRegistering:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final _loginError:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final _loginResult:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lkotlin/Result<",
            "Lorg/ies/tierno/applicationamani/domain/models/login/LoginResponseDTO;",
            ">;>;"
        }
    .end annotation
.end field

.field private final _password:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final _passwordError:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final _phoneError:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final _registerError:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final _registerSuccess:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final _showDatePicker:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final _successMessage:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final _username:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final aceptaComunicacion:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final aceptaTerminos:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final aceptaTerminosPsicologo:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final aceptaVideoconferencia:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final apellido:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final asignarPacienteAlPsicologoUseCase:Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/AsignarPacienteAlPsicologoUseCase;

.field private final asignarPacienteError:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final asignarPacienteSuccess:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final calle:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final ciudad:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final codigoPostal:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final dateError:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final dateOfBirth:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lj$/time/LocalDate;",
            ">;"
        }
    .end annotation
.end field

.field private final direccionValida:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final dni:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final email:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final emailError:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final esMenor:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final fechaNacimiento:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final formularioCompletoValido:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final formularioValido:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final genero:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final isAsignandoPaciente:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final isLoggingIn:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final isRegistering:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final loginError:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final loginResult:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lkotlin/Result<",
            "Lorg/ies/tierno/applicationamani/domain/models/login/LoginResponseDTO;",
            ">;>;"
        }
    .end annotation
.end field

.field private final loginUseCase:Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase;

.field private final metodoPago:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lorg/ies/tierno/applicationamani/domain/models/enumm/MetodoPago;",
            ">;"
        }
    .end annotation
.end field

.field private final nombre:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final pais:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final password:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final passwordError:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final phoneError:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final provincia:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final regPassword:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final registerError:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final registerSuccess:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final registroDescripcion:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final registroEspecialidad:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final registroExperiencia:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final registroLicencia:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final showDatePicker:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final situacionesIds:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private final successMessage:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final telefono:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final tutorDni:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final tutorEmail:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final tutorNombre:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final tutorTelefono:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final tutorTipo:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final tutorValido:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final userSessionDataStore:Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;

.field private final username:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->$stable:I

    return-void
.end method

.method public constructor <init>(Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase;Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/AsignarPacienteAlPsicologoUseCase;Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;)V
    .locals 10
    .param p1, "loginUseCase"    # Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase;
    .param p2, "asignarPacienteAlPsicologoUseCase"    # Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/AsignarPacienteAlPsicologoUseCase;
    .param p3, "userSessionDataStore"    # Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;

    const-string v0, "loginUseCase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asignarPacienteAlPsicologoUseCase"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userSessionDataStore"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->loginUseCase:Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase;

    .line 32
    iput-object p2, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->asignarPacienteAlPsicologoUseCase:Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/AsignarPacienteAlPsicologoUseCase;

    .line 33
    iput-object p3, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->userSessionDataStore:Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;

    .line 37
    const-string v0, ""

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    iput-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_username:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 38
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_username:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast v1, Lkotlinx/coroutines/flow/StateFlow;

    iput-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->username:Lkotlinx/coroutines/flow/StateFlow;

    .line 40
    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    iput-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_password:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 41
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_password:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast v1, Lkotlinx/coroutines/flow/StateFlow;

    iput-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->password:Lkotlinx/coroutines/flow/StateFlow;

    .line 43
    const/4 v1, 0x0

    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    iput-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_loginResult:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 44
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_loginResult:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast v2, Lkotlinx/coroutines/flow/StateFlow;

    iput-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->loginResult:Lkotlinx/coroutines/flow/StateFlow;

    .line 46
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    iput-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_isLoggingIn:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 47
    iget-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_isLoggingIn:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast v4, Lkotlinx/coroutines/flow/StateFlow;

    iput-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->isLoggingIn:Lkotlinx/coroutines/flow/StateFlow;

    .line 49
    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    iput-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_loginError:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 50
    iget-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_loginError:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast v4, Lkotlinx/coroutines/flow/StateFlow;

    iput-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->loginError:Lkotlinx/coroutines/flow/StateFlow;

    .line 176
    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    iput-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->nombre:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 177
    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    iput-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->apellido:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 178
    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    iput-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->dni:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 179
    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    iput-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->email:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 180
    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    iput-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->regPassword:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 181
    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    iput-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->telefono:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 182
    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    iput-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->genero:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 183
    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    iput-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->fechaNacimiento:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 184
    invoke-static {v3}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    iput-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->aceptaTerminos:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 185
    invoke-static {v3}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    iput-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->aceptaVideoconferencia:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 186
    invoke-static {v3}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    iput-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->aceptaComunicacion:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 187
    sget-object v4, Lorg/ies/tierno/applicationamani/domain/models/enumm/MetodoPago;->PRESENCIAL:Lorg/ies/tierno/applicationamani/domain/models/enumm/MetodoPago;

    invoke-static {v4}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    iput-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->metodoPago:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 188
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    iput-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->situacionesIds:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 191
    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    iput-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->tutorNombre:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 192
    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    iput-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->tutorTelefono:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 193
    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    iput-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->tutorEmail:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 194
    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    iput-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->tutorDni:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 195
    const-string v4, "PADRE"

    invoke-static {v4}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    iput-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->tutorTipo:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 198
    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    iput-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->registroEspecialidad:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 199
    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    iput-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->registroExperiencia:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 200
    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    iput-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->registroDescripcion:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 201
    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    iput-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->registroLicencia:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 204
    invoke-static {v3}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    iput-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_isRegistering:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 205
    iget-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_isRegistering:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast v4, Lkotlinx/coroutines/flow/StateFlow;

    iput-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->isRegistering:Lkotlinx/coroutines/flow/StateFlow;

    .line 207
    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    iput-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_registerError:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 208
    iget-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_registerError:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast v4, Lkotlinx/coroutines/flow/StateFlow;

    iput-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->registerError:Lkotlinx/coroutines/flow/StateFlow;

    .line 210
    invoke-static {v3}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    iput-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_registerSuccess:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 211
    iget-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_registerSuccess:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast v4, Lkotlinx/coroutines/flow/StateFlow;

    iput-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->registerSuccess:Lkotlinx/coroutines/flow/StateFlow;

    .line 214
    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    iput-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_dateOfBirth:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 215
    iget-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_dateOfBirth:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast v4, Lkotlinx/coroutines/flow/StateFlow;

    iput-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->dateOfBirth:Lkotlinx/coroutines/flow/StateFlow;

    .line 217
    invoke-static {v3}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    iput-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_showDatePicker:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 218
    iget-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_showDatePicker:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast v4, Lkotlinx/coroutines/flow/StateFlow;

    iput-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->showDatePicker:Lkotlinx/coroutines/flow/StateFlow;

    .line 220
    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    iput-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_dateError:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 221
    iget-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_dateError:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast v4, Lkotlinx/coroutines/flow/StateFlow;

    iput-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->dateError:Lkotlinx/coroutines/flow/StateFlow;

    .line 223
    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    iput-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_phoneError:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 224
    iget-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_phoneError:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast v4, Lkotlinx/coroutines/flow/StateFlow;

    iput-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->phoneError:Lkotlinx/coroutines/flow/StateFlow;

    .line 226
    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    iput-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_emailError:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 227
    iget-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_emailError:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast v4, Lkotlinx/coroutines/flow/StateFlow;

    iput-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->emailError:Lkotlinx/coroutines/flow/StateFlow;

    .line 229
    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    iput-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_passwordError:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 230
    iget-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_passwordError:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast v4, Lkotlinx/coroutines/flow/StateFlow;

    iput-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->passwordError:Lkotlinx/coroutines/flow/StateFlow;

    .line 233
    invoke-static {v3}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    iput-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->aceptaTerminosPsicologo:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 281
    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    iput-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->calle:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 282
    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    iput-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->ciudad:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 283
    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    iput-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->provincia:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 284
    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->codigoPostal:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 285
    const-string v0, "Espa\u00f1a"

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->pais:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 301
    nop

    .line 296
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->fechaNacimiento:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast v0, Lkotlinx/coroutines/flow/Flow;

    .local v0, "$this$map\\1":Lkotlinx/coroutines/flow/Flow;
    const/4 v4, 0x0

    .line 700
    .local v4, "$i$f$map\\1\\296":I
    move-object v5, v0

    .local v5, "$this$unsafeTransform\\2":Lkotlinx/coroutines/flow/Flow;
    const/4 v6, 0x0

    .line 701
    .local v6, "$i$f$unsafeTransform\\2\\700":I
    const/4 v7, 0x0

    .line 702
    .local v7, "$i$f$unsafeFlow\\3\\701":I
    new-instance v8, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$special$$inlined$map$1;

    invoke-direct {v8, v5}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    check-cast v8, Lkotlinx/coroutines/flow/Flow;

    .line 703
    .end local v7    # "$i$f$unsafeFlow\\3\\701":I
    nop

    .line 704
    .end local v5    # "$this$unsafeTransform\\2":Lkotlinx/coroutines/flow/Flow;
    .end local v6    # "$i$f$unsafeTransform\\2\\700":I
    nop

    .line 301
    .end local v0    # "$this$map\\1":Lkotlinx/coroutines/flow/Flow;
    .end local v4    # "$i$f$map\\1\\296":I
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    sget-object v4, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {v4}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->getLazily()Lkotlinx/coroutines/flow/SharingStarted;

    move-result-object v4

    invoke-static {v8, v0, v4, v3}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    iput-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->esMenor:Lkotlinx/coroutines/flow/StateFlow;

    .line 321
    nop

    .line 305
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->esMenor:Lkotlinx/coroutines/flow/StateFlow;

    move-object v4, v0

    check-cast v4, Lkotlinx/coroutines/flow/Flow;

    .line 306
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->tutorNombre:Lkotlinx/coroutines/flow/MutableStateFlow;

    move-object v5, v0

    check-cast v5, Lkotlinx/coroutines/flow/Flow;

    .line 307
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->tutorTelefono:Lkotlinx/coroutines/flow/MutableStateFlow;

    move-object v6, v0

    check-cast v6, Lkotlinx/coroutines/flow/Flow;

    .line 308
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->tutorEmail:Lkotlinx/coroutines/flow/MutableStateFlow;

    move-object v7, v0

    check-cast v7, Lkotlinx/coroutines/flow/Flow;

    .line 309
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->tutorDni:Lkotlinx/coroutines/flow/MutableStateFlow;

    move-object v8, v0

    check-cast v8, Lkotlinx/coroutines/flow/Flow;

    .line 304
    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$tutorValido$1;

    invoke-direct {v0, v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$tutorValido$1;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v9, v0

    check-cast v9, Lkotlin/jvm/functions/Function6;

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function6;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .line 321
    move-object v4, p0

    check-cast v4, Landroidx/lifecycle/ViewModel;

    invoke-static {v4}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v4

    sget-object v5, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {v5}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->getLazily()Lkotlinx/coroutines/flow/SharingStarted;

    move-result-object v5

    invoke-static {v0, v4, v5, v3}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    iput-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->tutorValido:Lkotlinx/coroutines/flow/StateFlow;

    .line 326
    nop

    .line 324
    const/4 v0, 0x1

    new-array v4, v0, [Lkotlinx/coroutines/flow/Flow;

    iget-object v5, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->calle:Lkotlinx/coroutines/flow/MutableStateFlow;

    aput-object v5, v4, v2

    .local v4, "flows\\4":[Lkotlinx/coroutines/flow/Flow;
    const/4 v5, 0x0

    .line 705
    .local v5, "$i$f$combine\\4\\324":I
    const/4 v6, 0x0

    .line 706
    .local v6, "$i$f$unsafeFlow\\5\\705":I
    new-instance v7, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$special$$inlined$combine$1;

    invoke-direct {v7, v4}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$special$$inlined$combine$1;-><init>([Lkotlinx/coroutines/flow/Flow;)V

    check-cast v7, Lkotlinx/coroutines/flow/Flow;

    .line 707
    .end local v6    # "$i$f$unsafeFlow\\5\\705":I
    nop

    .line 326
    .end local v4    # "flows\\4":[Lkotlinx/coroutines/flow/Flow;
    .end local v5    # "$i$f$combine\\4\\324":I
    move-object v4, p0

    check-cast v4, Landroidx/lifecycle/ViewModel;

    invoke-static {v4}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v4

    sget-object v5, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {v5}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->getLazily()Lkotlinx/coroutines/flow/SharingStarted;

    move-result-object v5

    invoke-static {v7, v4, v5, v3}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v4

    iput-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->direccionValida:Lkotlinx/coroutines/flow/StateFlow;

    .line 345
    nop

    .line 330
    const/16 v4, 0x9

    new-array v4, v4, [Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v5, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->nombre:Lkotlinx/coroutines/flow/MutableStateFlow;

    aput-object v5, v4, v2

    iget-object v5, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->apellido:Lkotlinx/coroutines/flow/MutableStateFlow;

    aput-object v5, v4, v0

    const/4 v0, 0x2

    iget-object v5, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->dni:Lkotlinx/coroutines/flow/MutableStateFlow;

    aput-object v5, v4, v0

    const/4 v0, 0x3

    iget-object v5, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->email:Lkotlinx/coroutines/flow/MutableStateFlow;

    aput-object v5, v4, v0

    const/4 v0, 0x4

    iget-object v5, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->regPassword:Lkotlinx/coroutines/flow/MutableStateFlow;

    aput-object v5, v4, v0

    const/4 v0, 0x5

    iget-object v5, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->telefono:Lkotlinx/coroutines/flow/MutableStateFlow;

    aput-object v5, v4, v0

    const/4 v0, 0x6

    iget-object v5, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->genero:Lkotlinx/coroutines/flow/MutableStateFlow;

    aput-object v5, v4, v0

    const/4 v0, 0x7

    iget-object v5, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->fechaNacimiento:Lkotlinx/coroutines/flow/MutableStateFlow;

    aput-object v5, v4, v0

    const/16 v0, 0x8

    iget-object v5, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->aceptaTerminos:Lkotlinx/coroutines/flow/MutableStateFlow;

    aput-object v5, v4, v0

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 329
    nop

    .local v0, "flows\\6":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 708
    .local v4, "$i$f$combine\\6\\329":I
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    .local v5, "$this$toTypedArray\\7":Ljava/util/Collection;
    const/4 v6, 0x0

    .line 709
    .local v6, "$i$f$toTypedArray\\7\\708":I
    nop

    .line 710
    move-object v7, v5

    .line 712
    .local v7, "this_\\7":Ljava/util/Collection;
    new-array v2, v2, [Lkotlinx/coroutines/flow/Flow;

    invoke-interface {v7, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .line 708
    .end local v5    # "$this$toTypedArray\\7":Ljava/util/Collection;
    .end local v6    # "$i$f$toTypedArray\\7\\708":I
    .end local v7    # "this_\\7":Ljava/util/Collection;
    check-cast v2, [Lkotlinx/coroutines/flow/Flow;

    .line 713
    .local v2, "flowArray\\6":[Lkotlinx/coroutines/flow/Flow;
    const/4 v5, 0x0

    .line 714
    .local v5, "$i$f$unsafeFlow\\8\\713":I
    new-instance v6, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$special$$inlined$combine$2;

    invoke-direct {v6, v2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$special$$inlined$combine$2;-><init>([Lkotlinx/coroutines/flow/Flow;)V

    check-cast v6, Lkotlinx/coroutines/flow/Flow;

    .line 713
    .end local v5    # "$i$f$unsafeFlow\\8\\713":I
    nop

    .line 345
    .end local v0    # "flows\\6":Ljava/lang/Iterable;
    .end local v2    # "flowArray\\6":[Lkotlinx/coroutines/flow/Flow;
    .end local v4    # "$i$f$combine\\6\\329":I
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    sget-object v2, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {v2}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->getLazily()Lkotlinx/coroutines/flow/SharingStarted;

    move-result-object v2

    invoke-static {v6, v0, v2, v3}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    iput-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->formularioValido:Lkotlinx/coroutines/flow/StateFlow;

    .line 356
    nop

    .line 350
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->formularioValido:Lkotlinx/coroutines/flow/StateFlow;

    check-cast v0, Lkotlinx/coroutines/flow/Flow;

    .line 351
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->tutorValido:Lkotlinx/coroutines/flow/StateFlow;

    check-cast v2, Lkotlinx/coroutines/flow/Flow;

    .line 352
    iget-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->direccionValida:Lkotlinx/coroutines/flow/StateFlow;

    check-cast v4, Lkotlinx/coroutines/flow/Flow;

    .line 349
    new-instance v5, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$formularioCompletoValido$1;

    invoke-direct {v5, v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$formularioCompletoValido$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v5, Lkotlin/jvm/functions/Function4;

    invoke-static {v0, v2, v4, v5}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function4;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .line 356
    move-object v2, p0

    check-cast v2, Landroidx/lifecycle/ViewModel;

    invoke-static {v2}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    sget-object v4, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {v4}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->getLazily()Lkotlinx/coroutines/flow/SharingStarted;

    move-result-object v4

    invoke-static {v0, v2, v4, v3}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    iput-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->formularioCompletoValido:Lkotlinx/coroutines/flow/StateFlow;

    .line 406
    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_successMessage:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 407
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_successMessage:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast v0, Lkotlinx/coroutines/flow/StateFlow;

    iput-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->successMessage:Lkotlinx/coroutines/flow/StateFlow;

    .line 519
    invoke-static {v3}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_asignarPacienteSuccess:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 520
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_asignarPacienteSuccess:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast v0, Lkotlinx/coroutines/flow/StateFlow;

    iput-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->asignarPacienteSuccess:Lkotlinx/coroutines/flow/StateFlow;

    .line 522
    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_asignarPacienteError:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 523
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_asignarPacienteError:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast v0, Lkotlinx/coroutines/flow/StateFlow;

    iput-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->asignarPacienteError:Lkotlinx/coroutines/flow/StateFlow;

    .line 525
    invoke-static {v3}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_isAsignandoPaciente:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 526
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_isAsignandoPaciente:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast v0, Lkotlinx/coroutines/flow/StateFlow;

    iput-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->isAsignandoPaciente:Lkotlinx/coroutines/flow/StateFlow;

    .line 30
    return-void
.end method

.method public static final synthetic access$getAsignarPacienteAlPsicologoUseCase$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;)Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/AsignarPacienteAlPsicologoUseCase;
    .locals 1
    .param p0, "$this"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    .line 30
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->asignarPacienteAlPsicologoUseCase:Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/AsignarPacienteAlPsicologoUseCase;

    return-object v0
.end method

.method public static final synthetic access$getLoginUseCase$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;)Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase;
    .locals 1
    .param p0, "$this"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    .line 30
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->loginUseCase:Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase;

    return-object v0
.end method

.method public static final synthetic access$get_asignarPacienteError$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .param p0, "$this"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    .line 30
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_asignarPacienteError:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public static final synthetic access$get_asignarPacienteSuccess$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .param p0, "$this"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    .line 30
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_asignarPacienteSuccess:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public static final synthetic access$get_emailError$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .param p0, "$this"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    .line 30
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_emailError:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public static final synthetic access$get_isAsignandoPaciente$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .param p0, "$this"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    .line 30
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_isAsignandoPaciente:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public static final synthetic access$get_isLoggingIn$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .param p0, "$this"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    .line 30
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_isLoggingIn:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public static final synthetic access$get_isRegistering$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .param p0, "$this"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    .line 30
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_isRegistering:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public static final synthetic access$get_loginError$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .param p0, "$this"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    .line 30
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_loginError:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public static final synthetic access$get_loginResult$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .param p0, "$this"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    .line 30
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_loginResult:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public static final synthetic access$get_registerError$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .param p0, "$this"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    .line 30
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_registerError:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public static final synthetic access$get_registerSuccess$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .param p0, "$this"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    .line 30
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_registerSuccess:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public static final synthetic access$get_successMessage$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .param p0, "$this"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    .line 30
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_successMessage:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public static final synthetic access$saveUserSession(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;Lorg/ies/tierno/applicationamani/domain/models/login/LoginResponseDTO;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;
    .param p1, "loginResponse"    # Lorg/ies/tierno/applicationamani/domain/models/login/LoginResponseDTO;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 30
    invoke-direct {p0, p1, p2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->saveUserSession(Lorg/ies/tierno/applicationamani/domain/models/login/LoginResponseDTO;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final calculateAge(Lj$/time/LocalDate;)I
    .locals 1
    .param p1, "dateOfBirth"    # Lj$/time/LocalDate;

    .line 585
    invoke-static {}, Lj$/time/LocalDate;->now()Lj$/time/LocalDate;

    move-result-object v0

    invoke-static {p1, v0}, Lj$/time/Period;->between(Lj$/time/LocalDate;Lj$/time/LocalDate;)Lj$/time/Period;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/Period;->getYears()I

    move-result v0

    return v0
.end method

.method private final isAdult(Lj$/time/LocalDate;)Z
    .locals 2
    .param p1, "dateOfBirth"    # Lj$/time/LocalDate;

    .line 592
    invoke-direct {p0, p1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->calculateAge(Lj$/time/LocalDate;)I

    move-result v0

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final isValidEmail(Ljava/lang/String;)Z
    .locals 2
    .param p1, "email"    # Ljava/lang/String;

    .line 564
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "^[A-Za-z0-9+_.-]+@(.+)$"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private final isValidPassword(Ljava/lang/String;)Z
    .locals 2
    .param p1, "password"    # Ljava/lang/String;

    .line 571
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final isValidPhone(Ljava/lang/String;)Z
    .locals 2
    .param p1, "phone"    # Ljava/lang/String;

    .line 578
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "^[0-9]{9}$"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private final saveUserSession(Lorg/ies/tierno/applicationamani/domain/models/login/LoginResponseDTO;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .param p1, "loginResponse"    # Lorg/ies/tierno/applicationamani/domain/models/login/LoginResponseDTO;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ies/tierno/applicationamani/domain/models/login/LoginResponseDTO;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$saveUserSession$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$saveUserSession$1;

    iget v1, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$saveUserSession$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$saveUserSession$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$saveUserSession$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$saveUserSession$1;

    invoke-direct {v0, p0, p2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$saveUserSession$1;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v1, v0

    .local v1, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v2, v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$saveUserSession$1;->result:Ljava/lang/Object;

    .local v2, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 126
    iget v3, v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$saveUserSession$1;->label:I

    packed-switch v3, :pswitch_data_0

    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v2    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v2    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget-object v0, v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$saveUserSession$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lorg/ies/tierno/applicationamani/data/local/UserSession;

    .local v0, "session":Lorg/ies/tierno/applicationamani/data/local/UserSession;
    iget-object v3, v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$saveUserSession$1;->L$0:Ljava/lang/Object;

    move-object p1, v3

    check-cast p1, Lorg/ies/tierno/applicationamani/domain/models/login/LoginResponseDTO;

    :try_start_0
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v2

    goto :goto_2

    .end local v0    # "session":Lorg/ies/tierno/applicationamani/data/local/UserSession;
    :pswitch_1
    iget-object v3, v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$saveUserSession$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lorg/ies/tierno/applicationamani/data/local/UserSession;

    .local v3, "session":Lorg/ies/tierno/applicationamani/data/local/UserSession;
    iget-object v4, v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$saveUserSession$1;->L$0:Ljava/lang/Object;

    move-object p1, v4

    check-cast p1, Lorg/ies/tierno/applicationamani/domain/models/login/LoginResponseDTO;

    :try_start_1
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .end local v3    # "session":Lorg/ies/tierno/applicationamani/data/local/UserSession;
    :pswitch_2
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 127
    nop

    .line 128
    :try_start_2
    new-instance v3, Lorg/ies/tierno/applicationamani/data/local/UserSession;

    .line 129
    invoke-virtual {p1}, Lorg/ies/tierno/applicationamani/domain/models/login/LoginResponseDTO;->getIdUsuario()J

    move-result-wide v4

    .line 130
    invoke-virtual {p1}, Lorg/ies/tierno/applicationamani/domain/models/login/LoginResponseDTO;->getNombre()Ljava/lang/String;

    move-result-object v6

    .line 131
    invoke-virtual {p1}, Lorg/ies/tierno/applicationamani/domain/models/login/LoginResponseDTO;->getRol()Ljava/lang/String;

    move-result-object v7

    .line 132
    invoke-virtual {p1}, Lorg/ies/tierno/applicationamani/domain/models/login/LoginResponseDTO;->getIdPsicologo()Ljava/lang/Long;

    move-result-object v8

    .line 133
    invoke-virtual {p1}, Lorg/ies/tierno/applicationamani/domain/models/login/LoginResponseDTO;->getIdPaciente()Ljava/lang/Long;

    move-result-object v9

    .line 128
    invoke-direct/range {v3 .. v9}, Lorg/ies/tierno/applicationamani/data/local/UserSession;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 136
    .restart local v3    # "session":Lorg/ies/tierno/applicationamani/data/local/UserSession;
    iget-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->userSessionDataStore:Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$saveUserSession$1;->L$0:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$saveUserSession$1;->L$1:Ljava/lang/Object;

    const/4 v5, 0x1

    iput v5, v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$saveUserSession$1;->label:I

    invoke-virtual {v4, v3, v1}, Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;->saveSession(Lorg/ies/tierno/applicationamani/data/local/UserSession;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_1

    .line 126
    return-object v0

    .line 139
    :cond_1
    :goto_1
    iget-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->userSessionDataStore:Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$saveUserSession$1;->L$0:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$saveUserSession$1;->L$1:Ljava/lang/Object;

    const/4 v5, 0x2

    iput v5, v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$saveUserSession$1;->label:I

    invoke-virtual {v4, v1}, Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;->getSession(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_2

    .line 126
    return-object v0

    .line 139
    :cond_2
    move-object v0, v3

    .line 126
    .end local v3    # "session":Lorg/ies/tierno/applicationamani/data/local/UserSession;
    .restart local v0    # "session":Lorg/ies/tierno/applicationamani/data/local/UserSession;
    :goto_2
    check-cast v4, Lorg/ies/tierno/applicationamani/data/local/UserSession;

    .line 140
    .local v4, "savedSession":Lorg/ies/tierno/applicationamani/data/local/UserSession;
    const-string v3, "=== SESI\u00d3N GUARDADA ==="

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5, v3}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 141
    const/4 v3, 0x0

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lorg/ies/tierno/applicationamani/data/local/UserSession;->getIdUsuario()J

    move-result-wide v5

    invoke-static {v5, v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v5

    goto :goto_3

    :cond_3
    move-object v5, v3

    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ID Usuario: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6, v5}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 142
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lorg/ies/tierno/applicationamani/data/local/UserSession;->getNombre()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_4
    move-object v5, v3

    :goto_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Nombre: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6, v5}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 143
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lorg/ies/tierno/applicationamani/data/local/UserSession;->getRol()Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    :cond_5
    move-object v5, v3

    :goto_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Rol: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6, v5}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 144
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lorg/ies/tierno/applicationamani/data/local/UserSession;->getIdPsicologo()Ljava/lang/Long;

    move-result-object v3

    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ID Psic\u00f3logo: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5, v3}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .end local v0    # "session":Lorg/ies/tierno/applicationamani/data/local/UserSession;
    .end local v4    # "savedSession":Lorg/ies/tierno/applicationamani/data/local/UserSession;
    goto :goto_6

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error al guardar la sesi\u00f3n: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 148
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_6
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final asignarPaciente(JJ)V
    .locals 9
    .param p1, "idPaciente"    # J
    .param p3, "idPsicologo"    # J

    .line 529
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_isAsignandoPaciente:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 530
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_asignarPacienteError:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 531
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_asignarPacienteSuccess:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 533
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v2, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$asignarPaciente$1;

    const/4 v8, 0x0

    move-object v3, p0

    move-wide v4, p1

    move-wide v6, p3

    .end local p1    # "idPaciente":J
    .end local p3    # "idPsicologo":J
    .local v4, "idPaciente":J
    .local v6, "idPsicologo":J
    invoke-direct/range {v2 .. v8}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$asignarPaciente$1;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;JJLkotlin/coroutines/Continuation;)V

    .end local v4    # "idPaciente":J
    .end local v6    # "idPsicologo":J
    .restart local p1    # "idPaciente":J
    .restart local p3    # "idPsicologo":J
    move-object v4, v2

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 552
    return-void
.end method

.method public final clearAllErrors()V
    .locals 2

    .line 599
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_dateError:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 600
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_phoneError:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 601
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_emailError:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 602
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_passwordError:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 603
    return-void
.end method

.method public final clearAsignarPsicologoResult()V
    .locals 2

    .line 554
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_asignarPacienteSuccess:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 555
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_asignarPacienteError:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 556
    return-void
.end method

.method public final clearLoginFields()V
    .locals 2

    .line 154
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_username:Lkotlinx/coroutines/flow/MutableStateFlow;

    const-string v1, ""

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 155
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_password:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 156
    return-void
.end method

.method public final getAceptaComunicacion()Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->aceptaComunicacion:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public final getAceptaTerminos()Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->aceptaTerminos:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public final getAceptaTerminosPsicologo()Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->aceptaTerminosPsicologo:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public final getAceptaVideoconferencia()Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->aceptaVideoconferencia:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public final getApellido()Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->apellido:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public final getAsignarPacienteError()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 523
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->asignarPacienteError:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final getAsignarPacienteSuccess()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 520
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->asignarPacienteSuccess:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final getCalle()Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 281
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->calle:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public final getCiudad()Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 282
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->ciudad:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public final getCodigoPostal()Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 284
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->codigoPostal:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public final getDateError()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 221
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->dateError:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final getDateOfBirth()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lj$/time/LocalDate;",
            ">;"
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->dateOfBirth:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final getDireccionValida()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 324
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->direccionValida:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final getDni()Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->dni:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public final getEmail()Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->email:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public final getEmailError()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->emailError:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final getEsMenor()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 296
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->esMenor:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final getFechaNacimiento()Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->fechaNacimiento:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public final getFormularioCompletoValido()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 349
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->formularioCompletoValido:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final getFormularioValido()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 329
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->formularioValido:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final getGenero()Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->genero:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public final getLoginError()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->loginError:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final getLoginResult()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lkotlin/Result<",
            "Lorg/ies/tierno/applicationamani/domain/models/login/LoginResponseDTO;",
            ">;>;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->loginResult:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final getMetodoPago()Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lorg/ies/tierno/applicationamani/domain/models/enumm/MetodoPago;",
            ">;"
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->metodoPago:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public final getNombre()Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->nombre:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public final getPais()Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 285
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->pais:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public final getPassword()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->password:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final getPasswordError()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 230
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->passwordError:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final getPhoneError()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->phoneError:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final getProvincia()Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->provincia:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public final getRegPassword()Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->regPassword:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public final getRegisterError()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->registerError:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final getRegisterSuccess()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->registerSuccess:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final getRegistroDescripcion()Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->registroDescripcion:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public final getRegistroEspecialidad()Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->registroEspecialidad:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public final getRegistroExperiencia()Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->registroExperiencia:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public final getRegistroLicencia()Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->registroLicencia:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public final getShowDatePicker()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->showDatePicker:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final getSituacionesIds()Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->situacionesIds:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public final getSuccessMessage()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 407
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->successMessage:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final getTelefono()Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->telefono:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public final getTutorDni()Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->tutorDni:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public final getTutorEmail()Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->tutorEmail:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public final getTutorNombre()Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->tutorNombre:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public final getTutorTelefono()Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->tutorTelefono:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public final getTutorTipo()Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->tutorTipo:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public final getTutorValido()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 304
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->tutorValido:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final getUsername()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->username:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final isAsignandoPaciente()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 526
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->isAsignandoPaciente:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final isLoggingIn()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->isLoggingIn:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final isLoginFormValid()Z
    .locals 3

    .line 171
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_username:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_username:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    new-instance v1, Lkotlin/text/Regex;

    const-string v2, "^[A-Za-z0-9+_.-]+@(.+)$"

    invoke-direct {v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_password:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 171
    :goto_0
    return v0
.end method

.method public final isRegistering()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->isRegistering:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final limpiarFormulario()V
    .locals 3

    .line 486
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->nombre:Lkotlinx/coroutines/flow/MutableStateFlow;

    const-string v1, ""

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 487
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->apellido:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 488
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->dni:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 489
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->email:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 490
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->regPassword:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 491
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->telefono:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 492
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->genero:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 493
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->fechaNacimiento:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 494
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->aceptaTerminos:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 495
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->aceptaVideoconferencia:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 496
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->aceptaComunicacion:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 497
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->tutorNombre:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 498
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->tutorTelefono:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 499
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->tutorEmail:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 500
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->tutorDni:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 501
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->tutorTipo:Lkotlinx/coroutines/flow/MutableStateFlow;

    const-string v2, "PADRE"

    invoke-interface {v0, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 502
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->metodoPago:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v2, Lorg/ies/tierno/applicationamani/domain/models/enumm/MetodoPago;->PRESENCIAL:Lorg/ies/tierno/applicationamani/domain/models/enumm/MetodoPago;

    invoke-interface {v0, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 503
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->situacionesIds:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 504
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->calle:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 505
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->ciudad:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 506
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->provincia:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 507
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->codigoPostal:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 508
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->pais:Lkotlinx/coroutines/flow/MutableStateFlow;

    const-string v2, "Espa\u00f1a"

    invoke-interface {v0, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 511
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->registroEspecialidad:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 512
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->registroExperiencia:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 513
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->registroDescripcion:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 514
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->registroLicencia:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 515
    invoke-virtual {p0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->resetRegisterState()V

    .line 516
    return-void
.end method

.method public final limpiarFormularioPsicologo()V
    .locals 2

    .line 362
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->nombre:Lkotlinx/coroutines/flow/MutableStateFlow;

    const-string v1, ""

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 363
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->apellido:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 364
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->email:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 365
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->regPassword:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 366
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->telefono:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 367
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->registroEspecialidad:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 368
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->registroExperiencia:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 369
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->registroDescripcion:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 370
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->registroLicencia:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 371
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_dateOfBirth:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 372
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->aceptaTerminosPsicologo:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 373
    invoke-virtual {p0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->clearAllErrors()V

    .line 374
    invoke-virtual {p0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->resetRegisterState()V

    .line 375
    return-void
.end method

.method public final login()V
    .locals 10

    .line 65
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_username:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 66
    .local v0, "usernameValue":Ljava/lang/String;
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_password:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 68
    .local v1, "passwordValue":Ljava/lang/String;
    nop

    .line 69
    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_loginError:Lkotlinx/coroutines/flow/MutableStateFlow;

    const-string v3, "El correo electr\u00f3nico es obligatorio"

    invoke-interface {v2, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 71
    return-void

    .line 73
    :cond_0
    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    new-instance v3, Lkotlin/text/Regex;

    const-string v4, "^[A-Za-z0-9+_.-]+@(.+)$"

    invoke-direct {v3, v4}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 74
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_loginError:Lkotlinx/coroutines/flow/MutableStateFlow;

    const-string v3, "Introduce un correo electr\u00f3nico v\u00e1lido"

    invoke-interface {v2, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 75
    return-void

    .line 77
    :cond_1
    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 78
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_loginError:Lkotlinx/coroutines/flow/MutableStateFlow;

    const-string v3, "La contrase\u00f1a es obligatoria"

    invoke-interface {v2, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 79
    return-void

    .line 83
    :cond_2
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_isLoggingIn:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 84
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_loginError:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 85
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_loginResult:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v2, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 87
    move-object v2, p0

    check-cast v2, Landroidx/lifecycle/ViewModel;

    invoke-static {v2}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v4

    new-instance v2, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$login$1;

    invoke-direct {v2, v0, v1, p0, v3}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$login$1;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v7, v2

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 121
    return-void
.end method

.method public final registrarAdmin()V
    .locals 8

    .line 378
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_isRegistering:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 379
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_registerError:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 380
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_registerSuccess:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 382
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$registrarAdmin$1;

    invoke-direct {v0, p0, v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$registrarAdmin$1;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 404
    return-void
.end method

.method public final registrarPaciente()V
    .locals 8

    .line 410
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->formularioCompletoValido:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 411
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_registerError:Lkotlinx/coroutines/flow/MutableStateFlow;

    const-string v1, "Complete todos los campos obligatorios"

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 412
    return-void

    .line 415
    :cond_0
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_isRegistering:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 416
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_registerError:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 417
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_registerSuccess:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 419
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$registrarPaciente$1;

    invoke-direct {v0, p0, v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$registrarPaciente$1;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 482
    return-void
.end method

.method public final registrarPsicologo()V
    .locals 10

    .line 641
    invoke-virtual {p0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->clearAllErrors()V

    .line 644
    invoke-virtual {p0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->validatePsychologistForm()Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .local v1, "isValid":Z
    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 645
    .local v0, "invalidField":Ljava/lang/String;
    if-nez v1, :cond_9

    .line 646
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "password"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_0

    .line 649
    :cond_0
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_passwordError:Lkotlinx/coroutines/flow/MutableStateFlow;

    const-string v3, "La contrase\u00f1a debe tener al menos 8 caracteres"

    invoke-interface {v2, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 646
    :sswitch_1
    const-string v2, "apellido"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 652
    :cond_1
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_registerError:Lkotlinx/coroutines/flow/MutableStateFlow;

    const-string v3, "El apellido es obligatorio"

    invoke-interface {v2, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 646
    :sswitch_2
    const-string v2, "fecha"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 647
    :cond_2
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_dateError:Lkotlinx/coroutines/flow/MutableStateFlow;

    const-string v3, "Debes ser mayor de 18 a\u00f1os"

    invoke-interface {v2, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 646
    :sswitch_3
    const-string v2, "email"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    .line 648
    :cond_3
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_emailError:Lkotlinx/coroutines/flow/MutableStateFlow;

    const-string v3, "Introduce un correo electr\u00f3nico v\u00e1lido"

    invoke-interface {v2, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 646
    :sswitch_4
    const-string v2, "especialidad"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    .line 653
    :cond_4
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_registerError:Lkotlinx/coroutines/flow/MutableStateFlow;

    const-string v3, "La especialidad es obligatoria"

    invoke-interface {v2, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 646
    :sswitch_5
    const-string v2, "nombre"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    .line 651
    :cond_5
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_registerError:Lkotlinx/coroutines/flow/MutableStateFlow;

    const-string v3, "El nombre es obligatorio"

    invoke-interface {v2, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 646
    :sswitch_6
    const-string v2, "terminos"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    .line 654
    :cond_6
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_registerError:Lkotlinx/coroutines/flow/MutableStateFlow;

    const-string v3, "Debes aceptar los t\u00e9rminos y condiciones"

    invoke-interface {v2, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 646
    :sswitch_7
    const-string v2, "telefono"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_0

    .line 650
    :cond_7
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_phoneError:Lkotlinx/coroutines/flow/MutableStateFlow;

    const-string v3, "El tel\u00e9fono debe tener 9 d\u00edgitos"

    invoke-interface {v2, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 656
    :cond_8
    :goto_0
    return-void

    .line 659
    :cond_9
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_isRegistering:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 660
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_registerError:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 661
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_registerSuccess:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 663
    move-object v2, p0

    check-cast v2, Landroidx/lifecycle/ViewModel;

    invoke-static {v2}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v4

    new-instance v2, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$registrarPsicologo$1;

    invoke-direct {v2, p0, v3}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$registrarPsicologo$1;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v7, v2

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 698
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5117950c -> :sswitch_7
        -0x46686bcb -> :sswitch_6
        -0x3dfbb037 -> :sswitch_5
        -0x2ae046ce -> :sswitch_4
        0x5c24b9c -> :sswitch_3
        0x5ccc77d -> :sswitch_2
        0x3389fcde -> :sswitch_1
        0x4889ba9b -> :sswitch_0
    .end sparse-switch
.end method

.method public final resetLoginState()V
    .locals 2

    .line 162
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_loginResult:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 163
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_loginError:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 164
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_isLoggingIn:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 165
    return-void
.end method

.method public final resetRegisterState()V
    .locals 3

    .line 269
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_isRegistering:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 270
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_registerError:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 271
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_registerSuccess:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 272
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_dateOfBirth:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 273
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_dateError:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 274
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_phoneError:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 275
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_emailError:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 276
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_passwordError:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 277
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->aceptaTerminosPsicologo:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 278
    return-void
.end method

.method public final setAceptaTerminosPsicologo(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 264
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->aceptaTerminosPsicologo:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setApellido(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->apellido:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setCalle(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->calle:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setCiudad(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->ciudad:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setCodigoPostal(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->codigoPostal:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setDateError(Ljava/lang/String;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/String;

    .line 260
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_dateError:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setDateOfBirth(Lj$/time/LocalDate;)V
    .locals 1
    .param p1, "date"    # Lj$/time/LocalDate;

    const-string v0, "date"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_dateOfBirth:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setDni(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->dni:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setEmail(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->email:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setEmailError(Ljava/lang/String;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/String;

    .line 262
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_emailError:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setFechaNacimiento(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->fechaNacimiento:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setGenero(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->genero:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setNombre(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->nombre:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setPais(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->pais:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setPassword(Ljava/lang/String;)V
    .locals 1
    .param p1, "password"    # Ljava/lang/String;

    const-string v0, "password"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_password:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setPasswordError(Ljava/lang/String;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/String;

    .line 263
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_passwordError:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setPhoneError(Ljava/lang/String;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/String;

    .line 261
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_phoneError:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setProvincia(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->provincia:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setRegPassword(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->regPassword:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setRegistroDescripcion(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 254
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->registroDescripcion:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setRegistroEspecialidad(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->registroEspecialidad:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setRegistroExperiencia(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Integer;

    .line 253
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->registroExperiencia:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setRegistroLicencia(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 255
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->registroLicencia:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setShowDatePicker(Z)V
    .locals 2
    .param p1, "show"    # Z

    .line 259
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_showDatePicker:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setTelefono(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->telefono:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setTelefonoPsicologo(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->telefono:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setTutorDni(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->tutorDni:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setTutorEmail(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->tutorEmail:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setTutorNombre(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->tutorNombre:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setTutorTelefono(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->tutorTelefono:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setTutorTipo(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->tutorTipo:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setUsername(Ljava/lang/String;)V
    .locals 1
    .param p1, "username"    # Ljava/lang/String;

    const-string v0, "username"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_username:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final validatePsychologistForm()Lkotlin/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 612
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->nombre:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v0, :cond_0

    new-instance v0, Lkotlin/Pair;

    const-string v2, "nombre"

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 614
    :cond_0
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->apellido:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lkotlin/Pair;

    const-string v2, "apellido"

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 616
    :cond_1
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->email:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, "email"

    if-eqz v0, :cond_2

    new-instance v0, Lkotlin/Pair;

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 617
    :cond_2
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->email:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->isValidEmail(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lkotlin/Pair;

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 619
    :cond_3
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->regPassword:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, "password"

    if-eqz v0, :cond_4

    new-instance v0, Lkotlin/Pair;

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 620
    :cond_4
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->regPassword:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->isValidPassword(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Lkotlin/Pair;

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 622
    :cond_5
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_dateOfBirth:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v2, "fecha"

    if-nez v0, :cond_6

    new-instance v0, Lkotlin/Pair;

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 623
    :cond_6
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->_dateOfBirth:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lj$/time/LocalDate;

    invoke-direct {p0, v0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->isAdult(Lj$/time/LocalDate;)Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Lkotlin/Pair;

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 625
    :cond_7
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->telefono:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, "telefono"

    if-eqz v0, :cond_8

    new-instance v0, Lkotlin/Pair;

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 626
    :cond_8
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->telefono:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->isValidPhone(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    new-instance v0, Lkotlin/Pair;

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 628
    :cond_9
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->registroEspecialidad:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Lkotlin/Pair;

    const-string v2, "especialidad"

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 630
    :cond_a
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->aceptaTerminosPsicologo:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_b

    new-instance v0, Lkotlin/Pair;

    const-string v2, "terminos"

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 632
    :cond_b
    new-instance v0, Lkotlin/Pair;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
