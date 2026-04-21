.class public final Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
.super Ljava/lang/Object;
.source "TextFieldSelectionState.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$InputType;,
        Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$TextFieldMouseSelectionObserver;,
        Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$TextFieldTextDragObserver;,
        Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextFieldSelectionState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextFieldSelectionState.kt\nandroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState\n+ 2 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 3 Offset.kt\nandroidx/compose/ui/geometry/OffsetKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 Snapshot.kt\nandroidx/compose/runtime/snapshots/Snapshot$Companion\n+ 6 IntSize.kt\nandroidx/compose/ui/unit/IntSize\n+ 7 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n+ 8 TransformedTextFieldState.kt\nandroidx/compose/foundation/text/input/internal/TransformedTextFieldStateKt\n+ 9 InlineClassHelper.kt\nandroidx/compose/foundation/internal/InlineClassHelperKt\n+ 10 Offset.kt\nandroidx/compose/ui/geometry/Offset\n+ 11 InlineClassHelper.jvm.kt\nandroidx/compose/ui/util/InlineClassHelper_jvmKt\n*L\n1#1,1951:1\n1443#1:2040\n1443#1:2041\n1484#1:2042\n1484#1:2043\n1540#1:2044\n1540#1:2045\n85#2:1952\n117#2,2:1953\n85#2:1955\n117#2,2:1956\n85#2:1958\n117#2,2:1959\n85#2:1963\n117#2,2:1964\n85#2:1966\n117#2,2:1967\n85#2:1969\n117#2,2:1970\n85#2:1972\n117#2,2:1973\n85#2:1975\n117#2,2:1976\n85#2:2011\n278#3:1961\n278#3:1962\n30#3:2017\n30#3:2024\n273#3:2046\n273#3:2047\n1#4:1978\n613#5,7:1979\n54#6:1986\n85#7:1987\n53#7,3:2018\n70#7:2022\n53#7,3:2025\n70#7:2029\n60#7:2032\n60#7:2035\n70#7:2038\n730#8,23:1988\n72#9,5:2012\n69#10:2021\n69#10:2028\n65#10:2031\n65#10:2034\n69#10:2037\n22#11:2023\n22#11:2030\n22#11:2033\n22#11:2036\n22#11:2039\n*S KotlinDebug\n*F\n+ 1 TextFieldSelectionState.kt\nandroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState\n*L\n1430#1:2040\n1464#1:2041\n1473#1:2042\n1507#1:2043\n1528#1:2044\n1595#1:2045\n162#1:1952\n162#1:1953,2\n180#1:1955\n180#1:1956,2\n198#1:1958\n198#1:1959,2\n230#1:1963\n230#1:1964,2\n243#1:1966\n243#1:1967,2\n246#1:1969\n246#1:1970,2\n252#1:1972\n252#1:1973,2\n255#1:1975\n255#1:1976,2\n1252#1:2011\n213#1:1961\n218#1:1962\n1313#1:2017\n1317#1:2024\n667#1:2046\n1127#1:2047\n336#1:1979,7\n414#1:1986\n414#1:1987\n1313#1:2018,3\n1314#1:2022\n1317#1:2025,3\n1318#1:2029\n1320#1:2032\n1321#1:2035\n1323#1:2038\n609#1:1988,23\n1295#1:2012,5\n1314#1:2021\n1318#1:2028\n1320#1:2031\n1321#1:2034\n1323#1:2037\n1314#1:2023\n1318#1:2030\n1320#1:2033\n1321#1:2036\n1323#1:2039\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ec\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008$\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0008\u0001\u0018\u00002\u00020\u0001:\u0006\u00e3\u0001\u00e4\u0001\u00e5\u0001Ba\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00020\t\u0012\u0006\u0010\u000c\u001a\u00020\t\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\u0006\u0010\u0013\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0015\u0010w\u001a\u00020x2\u0006\u0010y\u001a\u00020\tH\u0000\u00a2\u0006\u0002\u0008zJ\u0008\u0010{\u001a\u00020\tH\u0002J\u0006\u0010|\u001a\u00020}J\u0006\u0010~\u001a\u00020}J\u001c\u0010\u007f\u001a\u00020}2\u0008\u0010\u0080\u0001\u001a\u00030\u0081\u00012\u0008\u0010\u0082\u0001\u001a\u00030\u0083\u0001H\u0002J\u001d\u0010\u0084\u0001\u001a\u00020}2\u0008\u0010\u0080\u0001\u001a\u00030\u0081\u00012\u0008\u0010\u0082\u0001\u001a\u00030\u0083\u0001H\u0002J@\u0010\u0085\u0001\u001a\u0002022\u0006\u0010#\u001a\u00020$2\u0006\u0010\u0013\u001a\u00020\u00142\u0007\u0010\u0086\u0001\u001a\u00020*2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\tJ\u0015\u0010\u0087\u0001\u001a\u000202*\u00030\u0088\u0001H\u0086@\u00a2\u0006\u0003\u0010\u0089\u0001J\u001e\u0010\u008a\u0001\u001a\u000202*\u00030\u0088\u00012\u0007\u0010\u008b\u0001\u001a\u00020\tH\u0086@\u00a2\u0006\u0003\u0010\u008c\u0001J\u0010\u0010\u008d\u0001\u001a\u000202H\u0086@\u00a2\u0006\u0003\u0010\u008e\u0001J\u000f\u0010\u008f\u0001\u001a\u0002022\u0006\u0010]\u001a\u00020\\J\u0007\u0010\u0090\u0001\u001a\u000202J\u0015\u0010\u0091\u0001\u001a\u000202*\u00030\u0088\u0001H\u0086@\u00a2\u0006\u0003\u0010\u0089\u0001J?\u0010\u0092\u0001\u001a\u000202*\u00030\u0088\u00012\n\u0010\u0093\u0001\u001a\u0005\u0018\u00010\u0094\u00012\r\u0010\u0095\u0001\u001a\u0008\u0012\u0004\u0012\u000202012\r\u0010\u0096\u0001\u001a\u0008\u0012\u0004\u0012\u00020201H\u0086@\u00a2\u0006\u0003\u0010\u0097\u0001J\u0019\u0010\u0098\u0001\u001a\u00020\t2\u0007\u0010\u0099\u0001\u001a\u00020;\u00a2\u0006\u0006\u0008\u009a\u0001\u0010\u009b\u0001J\u0015\u0010\u009c\u0001\u001a\u000202*\u00030\u0088\u0001H\u0082@\u00a2\u0006\u0003\u0010\u0089\u0001J$\u0010\u009d\u0001\u001a\u000202*\u00030\u0088\u00012\r\u0010\u0095\u0001\u001a\u0008\u0012\u0004\u0012\u00020201H\u0086@\u00a2\u0006\u0003\u0010\u009e\u0001J\u0007\u0010\u009f\u0001\u001a\u000202J\u001e\u0010\u00a0\u0001\u001a\u000202*\u00030\u0088\u00012\u0007\u0010\u008b\u0001\u001a\u00020\tH\u0082@\u00a2\u0006\u0003\u0010\u008c\u0001J\u0010\u0010\u00a1\u0001\u001a\u000202H\u0082@\u00a2\u0006\u0003\u0010\u008e\u0001J\u0010\u0010\u00a2\u0001\u001a\u000202H\u0082@\u00a2\u0006\u0003\u0010\u008e\u0001J\t\u0010\u00a8\u0001\u001a\u00020}H\u0002J \u0010\u00a9\u0001\u001a\u00020x2\u0007\u0010\u008b\u0001\u001a\u00020\t2\u0006\u0010y\u001a\u00020\tH\u0000\u00a2\u0006\u0003\u0008\u00aa\u0001J\u001b\u0010\u00ab\u0001\u001a\u00020;2\u0007\u0010\u008b\u0001\u001a\u00020\tH\u0002\u00a2\u0006\u0006\u0008\u00ac\u0001\u0010\u00ad\u0001J\"\u0010\u00ae\u0001\u001a\u0002022\u0007\u0010\u00af\u0001\u001a\u00020J2\u0007\u0010\u00b0\u0001\u001a\u00020;\u00a2\u0006\u0006\u0008\u00b1\u0001\u0010\u00b2\u0001J\t\u0010\u00b3\u0001\u001a\u000202H\u0002J\u0007\u0010\u00b4\u0001\u001a\u000202J\u0007\u0010\u00b5\u0001\u001a\u00020\tJ\n\u0010\u00b6\u0001\u001a\u00020\tH\u0086\u0008J\u0010\u0010\u00b7\u0001\u001a\u000202H\u0086@\u00a2\u0006\u0003\u0010\u008e\u0001J\n\u0010\u00b8\u0001\u001a\u0005\u0018\u00010\u00b9\u0001J\u0007\u0010\u00ba\u0001\u001a\u00020\tJ\n\u0010\u00bb\u0001\u001a\u00020\tH\u0086\u0008J\u001b\u0010\u00bc\u0001\u001a\u0002022\t\u0008\u0002\u0010\u00bd\u0001\u001a\u00020\tH\u0086@\u00a2\u0006\u0003\u0010\u00be\u0001J\u001d\u0010\u00bf\u0001\u001a\u0005\u0018\u00010\u00b9\u00012\t\u0008\u0002\u0010\u00bd\u0001\u001a\u00020\tH\u0000\u00a2\u0006\u0003\u0008\u00c0\u0001J\u0010\u0010\u00c3\u0001\u001a\u000202H\u0086@\u00a2\u0006\u0003\u0010\u008e\u0001J\u0007\u0010\u00c4\u0001\u001a\u00020\tJ\n\u0010\u00c5\u0001\u001a\u00020\tH\u0086\u0008J\u0010\u0010\u00c6\u0001\u001a\u000202H\u0086@\u00a2\u0006\u0003\u0010\u008e\u0001J\u0010\u0010\u00c7\u0001\u001a\u000202H\u0082@\u00a2\u0006\u0003\u0010\u008e\u0001J\u0018\u0010\u00c8\u0001\u001a\u0002022\u0007\u0010 \u001a\u00030\u00b9\u0001H\u0000\u00a2\u0006\u0003\u0008\u00c9\u0001J\u0007\u0010\u00ca\u0001\u001a\u00020\tJ\u0007\u0010\u00cb\u0001\u001a\u000202J\u0007\u0010\u00cc\u0001\u001a\u00020\tJ\u0007\u0010\u00cd\u0001\u001a\u000202J\u0019\u0010\u0086\u0001\u001a\u0002022\u0007\u0010\u00ce\u0001\u001a\u00020}H\u0082@\u00a2\u0006\u0003\u0010\u00cf\u0001J\u0007\u0010\u00d0\u0001\u001a\u000202J\t\u0010\u00d1\u0001\u001a\u000202H\u0002JX\u0010\u00d2\u0001\u001a\u00030\u00d3\u00012\u0008\u0010\u00d4\u0001\u001a\u00030\u0083\u00012\u0007\u0010\u00d5\u0001\u001a\u00020p2\u0007\u0010\u00d6\u0001\u001a\u00020p2\u0007\u0010\u008b\u0001\u001a\u00020\t2\u0008\u0010\u00d7\u0001\u001a\u00030\u00d8\u00012\t\u0008\u0002\u0010\u00d9\u0001\u001a\u00020\t2\t\u0008\u0002\u0010\u00da\u0001\u001a\u00020\tH\u0000\u00a2\u0006\u0006\u0008\u00db\u0001\u0010\u00dc\u0001JD\u0010\u00dd\u0001\u001a\u00030\u00d3\u00012\u0007\u0010\u00de\u0001\u001a\u00020p2\u0007\u0010\u00df\u0001\u001a\u00020p2\n\u0010\u00e0\u0001\u001a\u0005\u0018\u00010\u00d3\u00012\u0007\u0010\u008b\u0001\u001a\u00020\t2\u0008\u0010\u00d7\u0001\u001a\u00030\u00d8\u0001H\u0002\u00a2\u0006\u0006\u0008\u00e1\u0001\u0010\u00e2\u0001R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u0004\u001a\u00020\u0005X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000b\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u000e\u0010\u000c\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001fR\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0008\u001a\u00020\t2\u0006\u0010 \u001a\u00020\t@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\u001bR\u001e\u0010\n\u001a\u00020\t2\u0006\u0010 \u001a\u00020\t@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010\u001bR\u001c\u0010#\u001a\u0004\u0018\u00010$X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(R\u0010\u0010)\u001a\u0004\u0018\u00010*X\u0082\u000e\u00a2\u0006\u0002\n\u0000R+\u0010,\u001a\u00020\t2\u0006\u0010+\u001a\u00020\t8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008.\u0010/\u001a\u0004\u0008,\u0010\u001b\"\u0004\u0008-\u0010\u001dR\"\u00100\u001a\n\u0012\u0004\u0012\u000202\u0018\u000101X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00083\u00104\"\u0004\u00085\u00106R$\u00107\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u000108\u0018\u000101X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00089\u00104\"\u0004\u0008:\u00106R+\u0010<\u001a\u00020;2\u0006\u0010+\u001a\u00020;8B@BX\u0082\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008A\u0010/\u001a\u0004\u0008=\u0010>\"\u0004\u0008?\u0010@R\u0014\u0010B\u001a\u00020;8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008C\u0010>R+\u0010D\u001a\u00020;2\u0006\u0010+\u001a\u00020;8B@BX\u0082\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008G\u0010/\u001a\u0004\u0008E\u0010>\"\u0004\u0008F\u0010@R\u0011\u0010H\u001a\u00020;8F\u00a2\u0006\u0006\u001a\u0004\u0008I\u0010>R/\u0010K\u001a\u0004\u0018\u00010J2\u0008\u0010+\u001a\u0004\u0018\u00010J8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008P\u0010/\u001a\u0004\u0008L\u0010M\"\u0004\u0008N\u0010OR+\u0010R\u001a\u00020Q2\u0006\u0010+\u001a\u00020Q8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008W\u0010/\u001a\u0004\u0008S\u0010T\"\u0004\u0008U\u0010VR+\u0010X\u001a\u00020\t2\u0006\u0010+\u001a\u00020\t8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008[\u0010/\u001a\u0004\u0008Y\u0010\u001b\"\u0004\u0008Z\u0010\u001dR+\u0010]\u001a\u00020\\2\u0006\u0010+\u001a\u00020\\8B@BX\u0082\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008b\u0010/\u001a\u0004\u0008^\u0010_\"\u0004\u0008`\u0010aR+\u0010c\u001a\u00020\t2\u0006\u0010+\u001a\u00020\t8F@@X\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008f\u0010/\u001a\u0004\u0008d\u0010\u001b\"\u0004\u0008e\u0010\u001dR\u0016\u0010g\u001a\u0004\u0018\u00010h8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008i\u0010jR\u0014\u0010k\u001a\u00020\t8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008l\u0010\u001bR\u0010\u0010m\u001a\u0004\u0018\u00010nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010o\u001a\u00020pX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010q\u001a\u0004\u0018\u00010rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008s\u0010t\"\u0004\u0008u\u0010vR\"\u0010\u00a3\u0001\u001a\u0004\u0018\u00010}8@X\u0080\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00a6\u0001\u0010\u00a7\u0001\u001a\u0006\u0008\u00a4\u0001\u0010\u00a5\u0001R\u0010\u0010\u00c1\u0001\u001a\u00030\u00c2\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u00e6\u0001"
    }
    d2 = {
        "Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;",
        "",
        "textFieldState",
        "Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;",
        "textLayoutState",
        "Landroidx/compose/foundation/text/input/internal/TextLayoutState;",
        "density",
        "Landroidx/compose/ui/unit/Density;",
        "enabled",
        "",
        "readOnly",
        "isFocused",
        "isPassword",
        "toolbarRequester",
        "Landroidx/compose/foundation/text/contextmenu/modifier/ToolbarRequester;",
        "coroutineScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "platformSelectionBehaviors",
        "Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors;",
        "clipboard",
        "Landroidx/compose/ui/platform/Clipboard;",
        "<init>",
        "(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Landroidx/compose/foundation/text/input/internal/TextLayoutState;Landroidx/compose/ui/unit/Density;ZZZZLandroidx/compose/foundation/text/contextmenu/modifier/ToolbarRequester;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors;Landroidx/compose/ui/platform/Clipboard;)V",
        "getTextFieldState$foundation",
        "()Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;",
        "getTextLayoutState$foundation",
        "()Landroidx/compose/foundation/text/input/internal/TextLayoutState;",
        "()Z",
        "setFocused",
        "(Z)V",
        "getPlatformSelectionBehaviors$foundation",
        "()Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors;",
        "value",
        "getEnabled",
        "getReadOnly",
        "hapticFeedBack",
        "Landroidx/compose/ui/hapticfeedback/HapticFeedback;",
        "getHapticFeedBack",
        "()Landroidx/compose/ui/hapticfeedback/HapticFeedback;",
        "setHapticFeedBack",
        "(Landroidx/compose/ui/hapticfeedback/HapticFeedback;)V",
        "textToolbarHandler",
        "Landroidx/compose/foundation/text/input/internal/selection/TextToolbarHandler;",
        "<set-?>",
        "isInTouchMode",
        "setInTouchMode",
        "isInTouchMode$delegate",
        "Landroidx/compose/runtime/MutableState;",
        "requestAutofillAction",
        "Lkotlin/Function0;",
        "",
        "getRequestAutofillAction",
        "()Lkotlin/jvm/functions/Function0;",
        "setRequestAutofillAction",
        "(Lkotlin/jvm/functions/Function0;)V",
        "receiveContentConfiguration",
        "Landroidx/compose/foundation/content/internal/ReceiveContentConfiguration;",
        "getReceiveContentConfiguration",
        "setReceiveContentConfiguration",
        "Landroidx/compose/ui/geometry/Offset;",
        "startTextLayoutPositionInWindow",
        "getStartTextLayoutPositionInWindow-F1C5BW0",
        "()J",
        "setStartTextLayoutPositionInWindow-k-4lQ0M",
        "(J)V",
        "startTextLayoutPositionInWindow$delegate",
        "currentTextLayoutPositionInWindow",
        "getCurrentTextLayoutPositionInWindow-F1C5BW0",
        "rawHandleDragPosition",
        "getRawHandleDragPosition-F1C5BW0",
        "setRawHandleDragPosition-k-4lQ0M",
        "rawHandleDragPosition$delegate",
        "handleDragPosition",
        "getHandleDragPosition-F1C5BW0",
        "Landroidx/compose/foundation/text/Handle;",
        "draggingHandle",
        "getDraggingHandle",
        "()Landroidx/compose/foundation/text/Handle;",
        "setDraggingHandle",
        "(Landroidx/compose/foundation/text/Handle;)V",
        "draggingHandle$delegate",
        "Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$InputType;",
        "directDragGestureInitiator",
        "getDirectDragGestureInitiator",
        "()Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$InputType;",
        "setDirectDragGestureInitiator",
        "(Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$InputType;)V",
        "directDragGestureInitiator$delegate",
        "showCursorHandle",
        "getShowCursorHandle",
        "setShowCursorHandle",
        "showCursorHandle$delegate",
        "Landroidx/compose/foundation/text/input/internal/selection/TextToolbarState;",
        "textToolbarState",
        "getTextToolbarState",
        "()Landroidx/compose/foundation/text/input/internal/selection/TextToolbarState;",
        "setTextToolbarState",
        "(Landroidx/compose/foundation/text/input/internal/selection/TextToolbarState;)V",
        "textToolbarState$delegate",
        "textToolbarShown",
        "getTextToolbarShown",
        "setTextToolbarShown$foundation",
        "textToolbarShown$delegate",
        "textLayoutCoordinates",
        "Landroidx/compose/ui/layout/LayoutCoordinates;",
        "getTextLayoutCoordinates",
        "()Landroidx/compose/ui/layout/LayoutCoordinates;",
        "editable",
        "getEditable$foundation",
        "previousSelectionLayout",
        "Landroidx/compose/foundation/text/selection/SelectionLayout;",
        "previousRawDragOffset",
        "",
        "pressInteraction",
        "Landroidx/compose/foundation/interaction/PressInteraction$Press;",
        "getPressInteraction",
        "()Landroidx/compose/foundation/interaction/PressInteraction$Press;",
        "setPressInteraction",
        "(Landroidx/compose/foundation/interaction/PressInteraction$Press;)V",
        "getCursorHandleState",
        "Landroidx/compose/foundation/text/input/internal/selection/TextFieldHandleState;",
        "includePosition",
        "getCursorHandleState$foundation",
        "isCursorHandleInVisibleBounds",
        "getCursorRect",
        "Landroidx/compose/ui/geometry/Rect;",
        "getFocusRect",
        "calculateCursorRect",
        "layoutResult",
        "Landroidx/compose/ui/text/TextLayoutResult;",
        "visualText",
        "Landroidx/compose/foundation/text/input/TextFieldCharSequence;",
        "calculateSelectionRect",
        "update",
        "showTextToolbar",
        "cursorHandleGestures",
        "Landroidx/compose/ui/input/pointer/PointerInputScope;",
        "(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "selectionHandleGestures",
        "isStartHandle",
        "(Landroidx/compose/ui/input/pointer/PointerInputScope;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "startToolbarAndHandlesVisibilityObserver",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "updateTextToolbarState",
        "dispose",
        "detectTouchMode",
        "detectTextFieldTapGestures",
        "interactionSource",
        "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
        "requestFocus",
        "showKeyboard",
        "(Landroidx/compose/ui/input/pointer/PointerInputScope;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "placeCursorAtNearestOffset",
        "offset",
        "placeCursorAtNearestOffset-k-4lQ0M",
        "(J)Z",
        "detectCursorHandleDragGestures",
        "textFieldSelectionGestures",
        "(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "maybeSuggestSelectionRange",
        "detectSelectionHandleDragGestures",
        "observeTextChanges",
        "observeTextToolbarVisibility",
        "derivedVisibleContentBounds",
        "getDerivedVisibleContentBounds$foundation",
        "()Landroidx/compose/ui/geometry/Rect;",
        "derivedVisibleContentBounds$delegate",
        "Landroidx/compose/runtime/State;",
        "getContentRect",
        "getSelectionHandleState",
        "getSelectionHandleState$foundation",
        "getHandlePosition",
        "getHandlePosition-tuRUvjQ",
        "(Z)J",
        "updateHandleDragging",
        "handle",
        "position",
        "updateHandleDragging-Uv8p0NA",
        "(Landroidx/compose/foundation/text/Handle;J)V",
        "markStartContentVisibleOffset",
        "clearHandleDragging",
        "canShowCutMenuItem",
        "isCutAllowed",
        "cut",
        "cutWithResult",
        "Landroidx/compose/ui/text/AnnotatedString;",
        "canShowCopyMenuItem",
        "isCopyAllowed",
        "copy",
        "cancelSelection",
        "(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "copyWithResult",
        "copyWithResult$foundation",
        "clipboardPasteState",
        "Landroidx/compose/foundation/text/input/internal/selection/ClipboardPasteState;",
        "updateClipboardEntry",
        "canShowPasteMenuItem",
        "isPasteAllowed",
        "paste",
        "pasteAsPlainText",
        "onPasteEvent",
        "onPasteEvent$foundation",
        "canShowSelectAllMenuItem",
        "selectAll",
        "canShowAutofillMenuItem",
        "autofill",
        "contentRect",
        "(Landroidx/compose/ui/geometry/Rect;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "deselect",
        "hideTextToolbar",
        "updateSelection",
        "Landroidx/compose/ui/text/TextRange;",
        "textFieldCharSequence",
        "startOffset",
        "endOffset",
        "adjustment",
        "Landroidx/compose/foundation/text/selection/SelectionAdjustment;",
        "allowPreviousSelectionCollapsed",
        "isStartOfSelection",
        "updateSelection-SsL-Rf8$foundation",
        "(Landroidx/compose/foundation/text/input/TextFieldCharSequence;IIZLandroidx/compose/foundation/text/selection/SelectionAdjustment;ZZ)J",
        "getTextFieldSelection",
        "rawStartOffset",
        "rawEndOffset",
        "previousSelection",
        "getTextFieldSelection-qeG_v_k",
        "(IILandroidx/compose/ui/text/TextRange;ZLandroidx/compose/foundation/text/selection/SelectionAdjustment;)J",
        "InputType",
        "TextFieldMouseSelectionObserver",
        "TextFieldTextDragObserver",
        "foundation"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private clipboard:Landroidx/compose/ui/platform/Clipboard;

.field private clipboardPasteState:Landroidx/compose/foundation/text/input/internal/selection/ClipboardPasteState;

.field private final coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field private density:Landroidx/compose/ui/unit/Density;

.field private final derivedVisibleContentBounds$delegate:Landroidx/compose/runtime/State;

.field private final directDragGestureInitiator$delegate:Landroidx/compose/runtime/MutableState;

.field private final draggingHandle$delegate:Landroidx/compose/runtime/MutableState;

.field private enabled:Z

.field private hapticFeedBack:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

.field private isFocused:Z

.field private final isInTouchMode$delegate:Landroidx/compose/runtime/MutableState;

.field private isPassword:Z

.field private final platformSelectionBehaviors:Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors;

.field private pressInteraction:Landroidx/compose/foundation/interaction/PressInteraction$Press;

.field private previousRawDragOffset:I

.field private previousSelectionLayout:Landroidx/compose/foundation/text/selection/SelectionLayout;

.field private final rawHandleDragPosition$delegate:Landroidx/compose/runtime/MutableState;

.field private readOnly:Z

.field private receiveContentConfiguration:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Landroidx/compose/foundation/content/internal/ReceiveContentConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private requestAutofillAction:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final showCursorHandle$delegate:Landroidx/compose/runtime/MutableState;

.field private final startTextLayoutPositionInWindow$delegate:Landroidx/compose/runtime/MutableState;

.field private final textFieldState:Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

.field private final textLayoutState:Landroidx/compose/foundation/text/input/internal/TextLayoutState;

.field private textToolbarHandler:Landroidx/compose/foundation/text/input/internal/selection/TextToolbarHandler;

.field private final textToolbarShown$delegate:Landroidx/compose/runtime/MutableState;

.field private final textToolbarState$delegate:Landroidx/compose/runtime/MutableState;

.field private final toolbarRequester:Landroidx/compose/foundation/text/contextmenu/modifier/ToolbarRequester;


# direct methods
.method public static synthetic $r8$lambda$9_kQI-PFxoiu5o4pm7KsR2mzK70(Landroidx/compose/ui/geometry/Rect;)Z
    .locals 0

    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->observeTextToolbarVisibility$lambda$1$0(Landroidx/compose/ui/geometry/Rect;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Landroidx/compose/foundation/text/input/internal/TextLayoutState;Landroidx/compose/ui/unit/Density;ZZZZLandroidx/compose/foundation/text/contextmenu/modifier/ToolbarRequester;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors;Landroidx/compose/ui/platform/Clipboard;)V
    .locals 17
    .param p1, "textFieldState"    # Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;
    .param p2, "textLayoutState"    # Landroidx/compose/foundation/text/input/internal/TextLayoutState;
    .param p3, "density"    # Landroidx/compose/ui/unit/Density;
    .param p4, "enabled"    # Z
    .param p5, "readOnly"    # Z
    .param p6, "isFocused"    # Z
    .param p7, "isPassword"    # Z
    .param p8, "toolbarRequester"    # Landroidx/compose/foundation/text/contextmenu/modifier/ToolbarRequester;
    .param p9, "coroutineScope"    # Lkotlinx/coroutines/CoroutineScope;
    .param p10, "platformSelectionBehaviors"    # Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors;
    .param p11, "clipboard"    # Landroidx/compose/ui/platform/Clipboard;

    .line 135
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 137
    move-object/from16 v1, p1

    iput-object v1, v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->textFieldState:Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    .line 138
    move-object/from16 v2, p2

    iput-object v2, v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->textLayoutState:Landroidx/compose/foundation/text/input/internal/TextLayoutState;

    .line 139
    move-object/from16 v3, p3

    iput-object v3, v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->density:Landroidx/compose/ui/unit/Density;

    .line 142
    move/from16 v4, p6

    iput-boolean v4, v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->isFocused:Z

    .line 143
    move/from16 v5, p7

    iput-boolean v5, v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->isPassword:Z

    .line 144
    move-object/from16 v6, p8

    iput-object v6, v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->toolbarRequester:Landroidx/compose/foundation/text/contextmenu/modifier/ToolbarRequester;

    .line 145
    move-object/from16 v7, p9

    iput-object v7, v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 146
    move-object/from16 v8, p10

    iput-object v8, v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->platformSelectionBehaviors:Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors;

    .line 147
    move-object/from16 v9, p11

    iput-object v9, v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->clipboard:Landroidx/compose/ui/platform/Clipboard;

    .line 149
    move/from16 v10, p4

    iput-boolean v10, v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->enabled:Z

    .line 152
    move/from16 v11, p5

    iput-boolean v11, v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->readOnly:Z

    .line 162
    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x2

    invoke-static {v12, v13, v14, v13}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v12

    iput-object v12, v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->isInTouchMode$delegate:Landroidx/compose/runtime/MutableState;

    .line 180
    sget-object v12, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v12}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v12

    invoke-static {v12, v13, v14, v13}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v12

    iput-object v12, v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->startTextLayoutPositionInWindow$delegate:Landroidx/compose/runtime/MutableState;

    .line 198
    sget-object v12, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v12}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v12

    invoke-static {v12, v13, v14, v13}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v12

    iput-object v12, v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->rawHandleDragPosition$delegate:Landroidx/compose/runtime/MutableState;

    .line 230
    invoke-static {v13, v13, v14, v13}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v12

    iput-object v12, v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->draggingHandle$delegate:Landroidx/compose/runtime/MutableState;

    .line 243
    sget-object v12, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$InputType;->None:Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$InputType;

    invoke-static {v12, v13, v14, v13}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v12

    iput-object v12, v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->directDragGestureInitiator$delegate:Landroidx/compose/runtime/MutableState;

    .line 246
    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-static {v12, v13, v14, v13}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v15

    iput-object v15, v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->showCursorHandle$delegate:Landroidx/compose/runtime/MutableState;

    .line 252
    sget-object v15, Landroidx/compose/foundation/text/input/internal/selection/TextToolbarState;->None:Landroidx/compose/foundation/text/input/internal/selection/TextToolbarState;

    invoke-static {v15, v13, v14, v13}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v15

    iput-object v15, v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->textToolbarState$delegate:Landroidx/compose/runtime/MutableState;

    .line 255
    invoke-static {v12, v13, v14, v13}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v12

    iput-object v12, v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->textToolbarShown$delegate:Landroidx/compose/runtime/MutableState;

    .line 277
    const/4 v12, -0x1

    iput v12, v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->previousRawDragOffset:I

    .line 1252
    new-instance v12, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$$ExternalSyntheticLambda2;

    invoke-direct {v12, v0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;)V

    invoke-static {v12}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object v12

    iput-object v12, v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->derivedVisibleContentBounds$delegate:Landroidx/compose/runtime/State;

    .line 1516
    new-instance v12, Landroidx/compose/foundation/text/input/internal/selection/ClipboardPasteState;

    iget-object v13, v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->clipboard:Landroidx/compose/ui/platform/Clipboard;

    invoke-direct {v12, v13}, Landroidx/compose/foundation/text/input/internal/selection/ClipboardPasteState;-><init>(Landroidx/compose/ui/platform/Clipboard;)V

    iput-object v12, v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->clipboardPasteState:Landroidx/compose/foundation/text/input/internal/selection/ClipboardPasteState;

    .line 136
    return-void
.end method

.method public static final synthetic access$detectCursorHandleDragGestures(Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    .param p1, "$receiver"    # Landroidx/compose/ui/input/pointer/PointerInputScope;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 135
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->detectCursorHandleDragGestures(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$detectSelectionHandleDragGestures(Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;Landroidx/compose/ui/input/pointer/PointerInputScope;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    .param p1, "$receiver"    # Landroidx/compose/ui/input/pointer/PointerInputScope;
    .param p2, "isStartHandle"    # Z
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 135
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->detectSelectionHandleDragGestures(Landroidx/compose/ui/input/pointer/PointerInputScope;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getHandlePosition-tuRUvjQ(Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;Z)J
    .locals 2
    .param p0, "$this"    # Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    .param p1, "isStartHandle"    # Z

    .line 135
    invoke-direct {p0, p1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->getHandlePosition-tuRUvjQ(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic access$getTextToolbarState(Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;)Landroidx/compose/foundation/text/input/internal/selection/TextToolbarState;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;

    .line 135
    invoke-direct {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->getTextToolbarState()Landroidx/compose/foundation/text/input/internal/selection/TextToolbarState;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$hideTextToolbar(Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;

    .line 135
    invoke-direct {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->hideTextToolbar()V

    return-void
.end method

.method public static final synthetic access$isPassword$p(Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;)Z
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;

    .line 135
    iget-boolean v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->isPassword:Z

    return v0
.end method

.method public static final synthetic access$markStartContentVisibleOffset(Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;

    .line 135
    invoke-direct {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->markStartContentVisibleOffset()V

    return-void
.end method

.method public static final synthetic access$observeTextChanges(Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 135
    invoke-direct {p0, p1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->observeTextChanges(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$observeTextToolbarVisibility(Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 135
    invoke-direct {p0, p1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->observeTextToolbarVisibility(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$pasteAsPlainText(Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 135
    invoke-direct {p0, p1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->pasteAsPlainText(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$setPreviousRawDragOffset$p(Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;I)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    .param p1, "<set-?>"    # I

    .line 135
    iput p1, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->previousRawDragOffset:I

    return-void
.end method

.method public static final synthetic access$setTextToolbarState(Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;Landroidx/compose/foundation/text/input/internal/selection/TextToolbarState;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    .param p1, "<set-?>"    # Landroidx/compose/foundation/text/input/internal/selection/TextToolbarState;

    .line 135
    invoke-direct {p0, p1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->setTextToolbarState(Landroidx/compose/foundation/text/input/internal/selection/TextToolbarState;)V

    return-void
.end method

.method public static final synthetic access$showTextToolbar(Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;Landroidx/compose/ui/geometry/Rect;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    .param p1, "contentRect"    # Landroidx/compose/ui/geometry/Rect;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 135
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->showTextToolbar(Landroidx/compose/ui/geometry/Rect;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final calculateCursorRect(Landroidx/compose/ui/text/TextLayoutResult;Landroidx/compose/foundation/text/input/TextFieldCharSequence;)Landroidx/compose/ui/geometry/Rect;
    .locals 12
    .param p1, "layoutResult"    # Landroidx/compose/ui/text/TextLayoutResult;
    .param p2, "visualText"    # Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    .line 394
    invoke-virtual {p2}, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->getSelection-d9O1mEE()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroidx/compose/ui/geometry/Rect;->Companion:Landroidx/compose/ui/geometry/Rect$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect$Companion;->getZero()Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    return-object v0

    .line 396
    :cond_0
    invoke-virtual {p2}, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->getSelection-d9O1mEE()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/compose/ui/text/TextLayoutResult;->getCursorRect(I)Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    .line 398
    .local v0, "cursorRect":Landroidx/compose/ui/geometry/Rect;
    iget-object v1, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->density:Landroidx/compose/ui/unit/Density;

    .line 1978
    .local v1, "$this$calculateCursorRect_u24lambda_u240":Landroidx/compose/ui/unit/Density;
    const/4 v2, 0x0

    .line 398
    .local v2, "$i$a$-with-TextFieldSelectionState$calculateCursorRect$cursorWidth$1":I
    invoke-static {}, Landroidx/compose/foundation/text/TextFieldCursor_androidKt;->getDefaultCursorThickness()F

    move-result v3

    invoke-interface {v1, v3}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v4}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v1

    .line 402
    .end local v2    # "$i$a$-with-TextFieldSelectionState$calculateCursorRect$cursorWidth$1":I
    .local v1, "cursorWidth":F
    invoke-virtual {p1}, Landroidx/compose/ui/text/TextLayoutResult;->getLayoutInput()Landroidx/compose/ui/text/TextLayoutInput;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/text/TextLayoutInput;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v2

    sget-object v3, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    const/4 v4, 0x2

    if-ne v2, v3, :cond_1

    .line 403
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v2

    int-to-float v3, v4

    div-float v3, v1, v3

    add-float/2addr v2, v3

    goto :goto_0

    .line 405
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v2

    int-to-float v3, v4

    div-float v3, v1, v3

    sub-float/2addr v2, v3

    .line 402
    :goto_0
    nop

    .line 401
    nop

    .line 411
    .local v2, "cursorCenterX":F
    nop

    .line 414
    invoke-virtual {p1}, Landroidx/compose/ui/text/TextLayoutResult;->getSize-YbymL2g()J

    move-result-wide v5

    .local v5, "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    const/4 v3, 0x0

    .line 1986
    .local v3, "$i$f$getWidth-impl":I
    move-wide v7, v5

    .local v7, "value$iv$iv":J
    const/4 v9, 0x0

    .line 1987
    .local v9, "$i$f$unpackInt1":I
    const/16 v10, 0x20

    shr-long v10, v7, v10

    long-to-int v7, v10

    .line 1986
    .end local v7    # "value$iv$iv":J
    .end local v9    # "$i$f$unpackInt1":I
    nop

    .end local v3    # "$i$f$getWidth-impl":I
    .end local v5    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    int-to-float v3, v7

    .line 414
    int-to-float v5, v4

    div-float v6, v1, v5

    sub-float/2addr v3, v6

    invoke-static {v2, v3}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    move-result v3

    .line 415
    div-float v6, v1, v5

    invoke-static {v3, v6}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v3

    .line 416
    nop

    .local v3, "it":F
    const/4 v6, 0x0

    .line 419
    .local v6, "$i$a$-let-TextFieldSelectionState$calculateCursorRect$coercedCursorCenterX$1":I
    float-to-int v7, v1

    rem-int/2addr v7, v4

    const/4 v4, 0x1

    if-ne v7, v4, :cond_2

    .line 420
    float-to-double v7, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-float v4, v7

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v4, v7

    goto :goto_1

    .line 421
    :cond_2
    float-to-double v7, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->rint(D)D

    move-result-wide v7

    double-to-float v4, v7

    :goto_1
    nop

    .line 416
    .end local v3    # "it":F
    .end local v6    # "$i$a$-let-TextFieldSelectionState$calculateCursorRect$coercedCursorCenterX$1":I
    nop

    .line 410
    nop

    .line 425
    .local v4, "coercedCursorCenterX":F
    div-float v3, v1, v5

    sub-float v3, v4, v3

    .line 426
    div-float v5, v1, v5

    add-float/2addr v5, v4

    .line 427
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v6

    .line 428
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result v7

    .line 424
    new-instance v8, Landroidx/compose/ui/geometry/Rect;

    .line 425
    nop

    .line 427
    nop

    .line 426
    nop

    .line 428
    nop

    .line 424
    invoke-direct {v8, v3, v6, v5, v7}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    return-object v8
.end method

.method private final calculateSelectionRect(Landroidx/compose/ui/text/TextLayoutResult;Landroidx/compose/foundation/text/input/TextFieldCharSequence;)Landroidx/compose/ui/geometry/Rect;
    .locals 9
    .param p1, "layoutResult"    # Landroidx/compose/ui/text/TextLayoutResult;
    .param p2, "visualText"    # Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    .line 440
    invoke-virtual {p2}, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->getSelection-d9O1mEE()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/compose/ui/geometry/Rect;->Companion:Landroidx/compose/ui/geometry/Rect$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect$Companion;->getZero()Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    return-object v0

    .line 442
    :cond_0
    invoke-virtual {p2}, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->getSelection-d9O1mEE()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/compose/ui/text/TextLayoutResult;->getLineForOffset(I)I

    move-result v0

    .line 443
    .local v0, "lineStart":I
    invoke-virtual {p2}, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->getSelection-d9O1mEE()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/compose/ui/text/TextLayoutResult;->getLineForOffset(I)I

    move-result v1

    .line 444
    .local v1, "lineEnd":I
    if-ne v0, v1, :cond_1

    .line 447
    invoke-virtual {p2}, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->getSelection-d9O1mEE()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroidx/compose/ui/text/TextLayoutResult;->getHorizontalPosition(IZ)F

    move-result v2

    .line 446
    nop

    .line 448
    .local v2, "startHorizontal":F
    invoke-virtual {p2}, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->getSelection-d9O1mEE()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v4

    invoke-virtual {p1, v4, v3}, Landroidx/compose/ui/text/TextLayoutResult;->getHorizontalPosition(IZ)F

    move-result v3

    .line 449
    .local v3, "endHorizontal":F
    new-instance v4, Landroidx/compose/ui/geometry/Rect;

    .line 450
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 451
    invoke-virtual {p1, v0}, Landroidx/compose/ui/text/TextLayoutResult;->getLineTop(I)F

    move-result v6

    .line 452
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 453
    invoke-virtual {p1, v1}, Landroidx/compose/ui/text/TextLayoutResult;->getLineBottom(I)F

    move-result v8

    .line 449
    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    .end local v2    # "startHorizontal":F
    .end local v3    # "endHorizontal":F
    goto :goto_0

    .line 458
    :cond_1
    invoke-virtual {p2}, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->getSelection-d9O1mEE()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v2

    invoke-virtual {p2}, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->getSelection-d9O1mEE()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroidx/compose/ui/text/TextLayoutResult;->getPathForRange(II)Landroidx/compose/ui/graphics/Path;

    move-result-object v2

    .line 457
    nop

    .line 459
    .local v2, "path":Landroidx/compose/ui/graphics/Path;
    invoke-interface {v2}, Landroidx/compose/ui/graphics/Path;->getBounds()Landroidx/compose/ui/geometry/Rect;

    move-result-object v4

    .line 444
    .end local v2    # "path":Landroidx/compose/ui/graphics/Path;
    :goto_0
    return-object v4
.end method

.method public static synthetic copy$default(Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1494
    const/4 p4, 0x1

    and-int/2addr p3, p4

    if-eqz p3, :cond_0

    move p1, p4

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->copy(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic copyWithResult$foundation$default(Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;ZILjava/lang/Object;)Landroidx/compose/ui/text/AnnotatedString;
    .locals 0

    .line 1506
    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->copyWithResult$foundation(Z)Landroidx/compose/ui/text/AnnotatedString;

    move-result-object p0

    return-object p0
.end method

.method static final derivedVisibleContentBounds_delegate$lambda$0(Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;)Landroidx/compose/ui/geometry/Rect;
    .locals 11
    .param p0, "this$0"    # Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;

    .line 1253
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->textFieldState:Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->getVisualText()Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->getSelection-d9O1mEE()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v0

    .line 1257
    .local v0, "isCollapsedSelection":Z
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->getTextToolbarState()Landroidx/compose/foundation/text/input/internal/selection/TextToolbarState;

    move-result-object v3

    sget-object v4, Landroidx/compose/foundation/text/input/internal/selection/TextToolbarState;->Cursor:Landroidx/compose/foundation/text/input/internal/selection/TextToolbarState;

    if-eq v3, v4, :cond_1

    .line 1258
    :cond_0
    if-nez v0, :cond_2

    invoke-direct {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->getTextToolbarState()Landroidx/compose/foundation/text/input/internal/selection/TextToolbarState;

    move-result-object v3

    sget-object v4, Landroidx/compose/foundation/text/input/internal/selection/TextToolbarState;->Selection:Landroidx/compose/foundation/text/input/internal/selection/TextToolbarState;

    if-ne v3, v4, :cond_2

    :cond_1
    move v3, v1

    goto :goto_0

    :cond_2
    move v3, v2

    .line 1256
    :goto_0
    nop

    .line 1261
    .local v3, "textToolbarStateVisible":Z
    if-eqz v3, :cond_3

    .line 1262
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->getDraggingHandle()Landroidx/compose/foundation/text/Handle;

    move-result-object v4

    if-nez v4, :cond_3

    .line 1263
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->isInTouchMode()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    .line 1260
    :goto_1
    nop

    .line 1268
    .local v1, "textToolbarVisible":Z
    const/4 v2, 0x0

    if-nez v1, :cond_4

    return-object v2

    .line 1273
    :cond_4
    invoke-direct {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->getTextLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v4

    if-nez v4, :cond_5

    return-object v2

    .line 1274
    .local v4, "textLayoutCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    :cond_5
    invoke-static {v4}, Landroidx/compose/foundation/text/selection/SelectionManagerKt;->visibleBounds(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v5

    .line 1275
    .local v5, "visibleBounds":Landroidx/compose/ui/geometry/Rect;
    invoke-virtual {v5}, Landroidx/compose/ui/geometry/Rect;->getTopLeft-F1C5BW0()J

    move-result-wide v6

    invoke-interface {v4, v6, v7}, Landroidx/compose/ui/layout/LayoutCoordinates;->localToRoot-MK-Hz9U(J)J

    move-result-wide v6

    .line 1276
    .local v6, "visibleBoundsTopLeftInRoot":J
    invoke-virtual {v5}, Landroidx/compose/ui/geometry/Rect;->getSize-NH-jbRc()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Landroidx/compose/ui/geometry/RectKt;->Rect-tz77jQw(JJ)Landroidx/compose/ui/geometry/Rect;

    move-result-object v8

    .line 1280
    .local v8, "visibleBoundsInRoot":Landroidx/compose/ui/geometry/Rect;
    invoke-direct {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->getContentRect()Landroidx/compose/ui/geometry/Rect;

    move-result-object v9

    .line 1281
    .local v9, "contentRect":Landroidx/compose/ui/geometry/Rect;
    invoke-virtual {v9, v8}, Landroidx/compose/ui/geometry/Rect;->overlaps(Landroidx/compose/ui/geometry/Rect;)Z

    move-result v10

    if-nez v10, :cond_6

    return-object v2

    .line 1283
    :cond_6
    invoke-virtual {v9, v8}, Landroidx/compose/ui/geometry/Rect;->intersect(Landroidx/compose/ui/geometry/Rect;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v2

    return-object v2
.end method

.method private final detectCursorHandleDragGestures(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/PointerInputScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$detectCursorHandleDragGestures$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$detectCursorHandleDragGestures$1;

    iget v1, v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$detectCursorHandleDragGestures$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$detectCursorHandleDragGestures$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$detectCursorHandleDragGestures$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$detectCursorHandleDragGestures$1;

    invoke-direct {v0, p0, p2}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$detectCursorHandleDragGestures$1;-><init>(Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v6, v0

    .local v6, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v7, v6, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$detectCursorHandleDragGestures$1;->result:Ljava/lang/Object;

    .local v7, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 661
    iget v1, v6, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$detectCursorHandleDragGestures$1;->label:I

    packed-switch v1, :pswitch_data_0

    .end local v6    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v7    # "$result":Ljava/lang/Object;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v6    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v7    # "$result":Ljava/lang/Object;
    :pswitch_0
    move-object p1, p0

    .local p1, "this":Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    iget-object v0, v6, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$detectCursorHandleDragGestures$1;->L$1:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lkotlin/jvm/internal/Ref$LongRef;

    .local v1, "cursorDragDelta":Lkotlin/jvm/internal/Ref$LongRef;
    iget-object v0, v6, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$detectCursorHandleDragGestures$1;->L$0:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lkotlin/jvm/internal/Ref$LongRef;

    .local v2, "cursorDragStart":Lkotlin/jvm/internal/Ref$LongRef;
    :try_start_0
    invoke-static {v7}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 701
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 661
    .end local v1    # "cursorDragDelta":Lkotlin/jvm/internal/Ref$LongRef;
    .end local v2    # "cursorDragStart":Lkotlin/jvm/internal/Ref$LongRef;
    .end local p1    # "this":Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    :pswitch_1
    invoke-static {v7}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v8, p0

    .local v8, "this":Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    move-object v1, p1

    .line 662
    .local v1, "$this$detectCursorHandleDragGestures":Landroidx/compose/ui/input/pointer/PointerInputScope;
    new-instance p1, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .local p1, "cursorDragStart":Lkotlin/jvm/internal/Ref$LongRef;
    sget-object v2, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide v2

    iput-wide v2, p1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 663
    new-instance v2, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    move-object v9, v2

    .local v9, "cursorDragDelta":Lkotlin/jvm/internal/Ref$LongRef;
    sget-object v2, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide v2

    iput-wide v2, v9, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 675
    nop

    .line 676
    :try_start_1
    new-instance v2, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$$ExternalSyntheticLambda4;

    invoke-direct {v2, p1, v8, v9}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$$ExternalSyntheticLambda4;-><init>(Lkotlin/jvm/internal/Ref$LongRef;Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;Lkotlin/jvm/internal/Ref$LongRef;)V

    new-instance v3, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$$ExternalSyntheticLambda5;

    invoke-direct {v3, p1, v9, v8}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$$ExternalSyntheticLambda5;-><init>(Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;)V

    new-instance v4, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$$ExternalSyntheticLambda6;

    invoke-direct {v4, p1, v9, v8}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$$ExternalSyntheticLambda6;-><init>(Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;)V

    new-instance v5, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$$ExternalSyntheticLambda7;

    invoke-direct {v5, v9, v8, p1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$$ExternalSyntheticLambda7;-><init>(Lkotlin/jvm/internal/Ref$LongRef;Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;Lkotlin/jvm/internal/Ref$LongRef;)V

    iput-object p1, v6, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$detectCursorHandleDragGestures$1;->L$0:Ljava/lang/Object;

    iput-object v9, v6, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$detectCursorHandleDragGestures$1;->L$1:Ljava/lang/Object;

    const/4 v10, 0x1

    iput v10, v6, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$detectCursorHandleDragGestures$1;->label:I

    invoke-static/range {v1 .. v6}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->detectDragGestures(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v1    # "$this$detectCursorHandleDragGestures":Landroidx/compose/ui/input/pointer/PointerInputScope;
    if-ne v2, v0, :cond_1

    .line 661
    .end local v8    # "this":Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    return-object v0

    .line 676
    .restart local v8    # "this":Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    :cond_1
    move-object v2, p1

    move-object p1, v8

    move-object v1, v9

    .line 701
    .end local v8    # "this":Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    .end local v9    # "cursorDragDelta":Lkotlin/jvm/internal/Ref$LongRef;
    .local v1, "cursorDragDelta":Lkotlin/jvm/internal/Ref$LongRef;
    .restart local v2    # "cursorDragStart":Lkotlin/jvm/internal/Ref$LongRef;
    .local p1, "this":Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    :goto_1
    invoke-static {v2, v1, p1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->detectCursorHandleDragGestures$onDragStop(Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;)V

    .line 702
    .end local v1    # "cursorDragDelta":Lkotlin/jvm/internal/Ref$LongRef;
    .end local v2    # "cursorDragStart":Lkotlin/jvm/internal/Ref$LongRef;
    .end local p1    # "this":Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    nop

    .line 703
    .restart local v1    # "cursorDragDelta":Lkotlin/jvm/internal/Ref$LongRef;
    .restart local v2    # "cursorDragStart":Lkotlin/jvm/internal/Ref$LongRef;
    .restart local p1    # "this":Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 701
    .end local v1    # "cursorDragDelta":Lkotlin/jvm/internal/Ref$LongRef;
    .end local v2    # "cursorDragStart":Lkotlin/jvm/internal/Ref$LongRef;
    .restart local v8    # "this":Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    .restart local v9    # "cursorDragDelta":Lkotlin/jvm/internal/Ref$LongRef;
    .local p1, "cursorDragStart":Lkotlin/jvm/internal/Ref$LongRef;
    :catchall_1
    move-exception v0

    move-object v2, p1

    move-object p1, v8

    move-object v1, v9

    .end local v8    # "this":Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    .end local v9    # "cursorDragDelta":Lkotlin/jvm/internal/Ref$LongRef;
    .restart local v1    # "cursorDragDelta":Lkotlin/jvm/internal/Ref$LongRef;
    .restart local v2    # "cursorDragStart":Lkotlin/jvm/internal/Ref$LongRef;
    .local p1, "this":Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    :goto_2
    invoke-static {v2, v1, p1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->detectCursorHandleDragGestures$onDragStop(Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static final detectCursorHandleDragGestures$lambda$0(Lkotlin/jvm/internal/Ref$LongRef;Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;Lkotlin/jvm/internal/Ref$LongRef;Landroidx/compose/ui/geometry/Offset;)Lkotlin/Unit;
    .locals 3
    .param p0, "$cursorDragStart"    # Lkotlin/jvm/internal/Ref$LongRef;
    .param p1, "this$0"    # Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    .param p2, "$cursorDragDelta"    # Lkotlin/jvm/internal/Ref$LongRef;
    .param p3, "it"    # Landroidx/compose/ui/geometry/Offset;

    .line 679
    invoke-virtual {p1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->getCursorRect()Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->getBottomCenter-F1C5BW0()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/foundation/text/selection/SelectionHandlesKt;->getAdjustedCoordinates-k-4lQ0M(J)J

    move-result-wide v0

    iput-wide v0, p0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 680
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v0

    iput-wide v0, p2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 681
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->setInTouchMode(Z)V

    .line 682
    invoke-direct {p1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->markStartContentVisibleOffset()V

    .line 683
    sget-object v0, Landroidx/compose/foundation/text/Handle;->Cursor:Landroidx/compose/foundation/text/Handle;

    iget-wide v1, p0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-virtual {p1, v0, v1, v2}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->updateHandleDragging-Uv8p0NA(Landroidx/compose/foundation/text/Handle;J)V

    .line 684
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final detectCursorHandleDragGestures$lambda$1(Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;)Lkotlin/Unit;
    .locals 1
    .param p0, "$cursorDragStart"    # Lkotlin/jvm/internal/Ref$LongRef;
    .param p1, "$cursorDragDelta"    # Lkotlin/jvm/internal/Ref$LongRef;
    .param p2, "this$0"    # Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;

    .line 685
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->detectCursorHandleDragGestures$onDragStop(Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final detectCursorHandleDragGestures$lambda$2(Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;)Lkotlin/Unit;
    .locals 1
    .param p0, "$cursorDragStart"    # Lkotlin/jvm/internal/Ref$LongRef;
    .param p1, "$cursorDragDelta"    # Lkotlin/jvm/internal/Ref$LongRef;
    .param p2, "this$0"    # Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;

    .line 686
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->detectCursorHandleDragGestures$onDragStop(Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final detectCursorHandleDragGestures$lambda$3(Lkotlin/jvm/internal/Ref$LongRef;Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;Lkotlin/jvm/internal/Ref$LongRef;Landroidx/compose/ui/input/pointer/PointerInputChange;Landroidx/compose/ui/geometry/Offset;)Lkotlin/Unit;
    .locals 5
    .param p0, "$cursorDragDelta"    # Lkotlin/jvm/internal/Ref$LongRef;
    .param p1, "this$0"    # Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    .param p2, "$cursorDragStart"    # Lkotlin/jvm/internal/Ref$LongRef;
    .param p3, "change"    # Landroidx/compose/ui/input/pointer/PointerInputChange;
    .param p4, "dragAmount"    # Landroidx/compose/ui/geometry/Offset;

    .line 688
    iget-wide v0, p0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-virtual {p4}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 690
    sget-object v0, Landroidx/compose/foundation/text/Handle;->Cursor:Landroidx/compose/foundation/text/Handle;

    iget-wide v1, p2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    iget-wide v3, p0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->updateHandleDragging-Uv8p0NA(Landroidx/compose/foundation/text/Handle;J)V

    .line 692
    invoke-virtual {p1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->getHandleDragPosition-F1C5BW0()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->placeCursorAtNearestOffset-k-4lQ0M(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 693
    invoke-virtual {p3}, Landroidx/compose/ui/input/pointer/PointerInputChange;->consume()V

    .line 696
    iget-object v0, p1, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->hapticFeedBack:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    if-eqz v0, :cond_0

    sget-object v1, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType;->Companion:Landroidx/compose/ui/hapticfeedback/HapticFeedbackType$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType$Companion;->getTextHandleMove-5zf0vsI()I

    move-result v1

    invoke-interface {v0, v1}, Landroidx/compose/ui/hapticfeedback/HapticFeedback;->performHapticFeedback-CdsT49E(I)V

    .line 698
    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final detectCursorHandleDragGestures$onDragStop(Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;)V
    .locals 7
    .param p0, "cursorDragStart"    # Lkotlin/jvm/internal/Ref$LongRef;
    .param p1, "cursorDragDelta"    # Lkotlin/jvm/internal/Ref$LongRef;
    .param p2, "this$0"    # Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;

    .line 667
    iget-wide v0, p0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .local v0, "$v$c$androidx-compose-ui-geometry-Offset$-$this$isSpecified$0$iv":J
    const/4 v2, 0x0

    .line 2046
    .local v2, "$i$f$isSpecified-k-4lQ0M":I
    const-wide v3, 0x7fffffff7fffffffL

    and-long/2addr v3, v0

    const-wide v5, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 667
    .end local v0    # "$v$c$androidx-compose-ui-geometry-Offset$-$this$isSpecified$0$iv":J
    .end local v2    # "$i$f$isSpecified-k-4lQ0M":I
    :goto_0
    if-eqz v3, :cond_1

    .line 668
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide v0

    iput-wide v0, p0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 669
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide v0

    iput-wide v0, p1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 670
    invoke-virtual {p2}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->clearHandleDragging()V

    .line 672
    :cond_1
    return-void
.end method

.method private final detectSelectionHandleDragGestures(Landroidx/compose/ui/input/pointer/PointerInputScope;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/PointerInputScope;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p3

    instance-of v0, v1, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$detectSelectionHandleDragGestures$1;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$detectSelectionHandleDragGestures$1;

    iget v2, v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$detectSelectionHandleDragGestures$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v2, v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$detectSelectionHandleDragGestures$1;->label:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$detectSelectionHandleDragGestures$1;->label:I

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$detectSelectionHandleDragGestures$1;

    move-object/from16 v2, p0

    invoke-direct {v0, v2, v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$detectSelectionHandleDragGestures$1;-><init>(Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v8, v0

    .local v8, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v9, v8, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$detectSelectionHandleDragGestures$1;->result:Ljava/lang/Object;

    .local v9, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1118
    iget v3, v8, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$detectSelectionHandleDragGestures$1;->label:I

    packed-switch v3, :pswitch_data_0

    .end local v8    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v9    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v8    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v9    # "$result":Ljava/lang/Object;
    :pswitch_0
    move-object/from16 v3, p0

    .local v3, "this":Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    iget-object v0, v8, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$detectSelectionHandleDragGestures$1;->L$2:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroidx/compose/foundation/text/Handle;

    .local v4, "handle":Landroidx/compose/foundation/text/Handle;
    iget-object v0, v8, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$detectSelectionHandleDragGestures$1;->L$1:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/internal/Ref$LongRef;

    .local v5, "dragTotalDistance":Lkotlin/jvm/internal/Ref$LongRef;
    iget-object v0, v8, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$detectSelectionHandleDragGestures$1;->L$0:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/internal/Ref$LongRef;

    .local v6, "dragBeginPosition":Lkotlin/jvm/internal/Ref$LongRef;
    :try_start_0
    invoke-static {v9}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    .line 1191
    :catchall_0
    move-exception v0

    goto/16 :goto_4

    .line 1118
    .end local v3    # "this":Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    .end local v4    # "handle":Landroidx/compose/foundation/text/Handle;
    .end local v5    # "dragTotalDistance":Lkotlin/jvm/internal/Ref$LongRef;
    .end local v6    # "dragBeginPosition":Lkotlin/jvm/internal/Ref$LongRef;
    :pswitch_1
    invoke-static {v9}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v12, p0

    .local v12, "this":Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    move/from16 v3, p2

    .local v3, "isStartHandle":Z
    move-object/from16 v4, p1

    .line 1121
    .local v4, "$this$detectSelectionHandleDragGestures":Landroidx/compose/ui/input/pointer/PointerInputScope;
    new-instance v14, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v14}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .local v14, "dragBeginPosition":Lkotlin/jvm/internal/Ref$LongRef;
    sget-object v5, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide v5

    iput-wide v5, v14, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 1122
    new-instance v15, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v15}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .local v15, "dragTotalDistance":Lkotlin/jvm/internal/Ref$LongRef;
    sget-object v5, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v5

    iput-wide v5, v15, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 1123
    if-eqz v3, :cond_1

    sget-object v5, Landroidx/compose/foundation/text/Handle;->SelectionStart:Landroidx/compose/foundation/text/Handle;

    goto :goto_1

    :cond_1
    sget-object v5, Landroidx/compose/foundation/text/Handle;->SelectionEnd:Landroidx/compose/foundation/text/Handle;

    :goto_1
    move-object v13, v5

    .line 1136
    .local v13, "handle":Landroidx/compose/foundation/text/Handle;
    nop

    .line 1137
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_2

    move-object v11, v14

    move-object v14, v13

    move v13, v6

    goto :goto_2

    .end local v4    # "$this$detectSelectionHandleDragGestures":Landroidx/compose/ui/input/pointer/PointerInputScope;
    :cond_2
    move-object v11, v14

    move-object v14, v13

    move v13, v5

    .end local v13    # "handle":Landroidx/compose/foundation/text/Handle;
    .local v11, "dragBeginPosition":Lkotlin/jvm/internal/Ref$LongRef;
    .local v14, "handle":Landroidx/compose/foundation/text/Handle;
    :goto_2
    :try_start_1
    new-instance v10, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$$ExternalSyntheticLambda8;

    invoke-direct/range {v10 .. v15}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$$ExternalSyntheticLambda8;-><init>(Lkotlin/jvm/internal/Ref$LongRef;Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;ZLandroidx/compose/foundation/text/Handle;Lkotlin/jvm/internal/Ref$LongRef;)V

    move v7, v3

    move-object v3, v4

    move-object v4, v10

    .end local v3    # "isStartHandle":Z
    .local v7, "isStartHandle":Z
    move v10, v5

    new-instance v5, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$$ExternalSyntheticLambda9;

    invoke-direct {v5, v11, v12, v15}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$$ExternalSyntheticLambda9;-><init>(Lkotlin/jvm/internal/Ref$LongRef;Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;Lkotlin/jvm/internal/Ref$LongRef;)V

    new-instance v13, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$$ExternalSyntheticLambda10;

    invoke-direct {v13, v11, v12, v15}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$$ExternalSyntheticLambda10;-><init>(Lkotlin/jvm/internal/Ref$LongRef;Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;Lkotlin/jvm/internal/Ref$LongRef;)V

    if-eqz v7, :cond_3

    move v10, v6

    nop

    .end local v7    # "isStartHandle":Z
    :cond_3
    new-instance v7, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$$ExternalSyntheticLambda11;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move/from16 v16, v10

    move-object v10, v7

    move-object v7, v13

    move-object v13, v14

    move-object v14, v11

    move-object v11, v15

    move/from16 v15, v16

    .end local v15    # "dragTotalDistance":Lkotlin/jvm/internal/Ref$LongRef;
    .local v11, "dragTotalDistance":Lkotlin/jvm/internal/Ref$LongRef;
    .restart local v13    # "handle":Landroidx/compose/foundation/text/Handle;
    .local v14, "dragBeginPosition":Lkotlin/jvm/internal/Ref$LongRef;
    :try_start_2
    invoke-direct/range {v10 .. v15}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$$ExternalSyntheticLambda11;-><init>(Lkotlin/jvm/internal/Ref$LongRef;Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;Landroidx/compose/foundation/text/Handle;Lkotlin/jvm/internal/Ref$LongRef;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v15, v11

    move-object v11, v14

    move-object v14, v13

    .end local v13    # "handle":Landroidx/compose/foundation/text/Handle;
    .local v11, "dragBeginPosition":Lkotlin/jvm/internal/Ref$LongRef;
    .local v14, "handle":Landroidx/compose/foundation/text/Handle;
    .restart local v15    # "dragTotalDistance":Lkotlin/jvm/internal/Ref$LongRef;
    :try_start_3
    iput-object v11, v8, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$detectSelectionHandleDragGestures$1;->L$0:Ljava/lang/Object;

    iput-object v15, v8, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$detectSelectionHandleDragGestures$1;->L$1:Ljava/lang/Object;

    iput-object v14, v8, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$detectSelectionHandleDragGestures$1;->L$2:Ljava/lang/Object;

    iput v6, v8, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$detectSelectionHandleDragGestures$1;->label:I

    move-object v6, v7

    move-object v7, v10

    .local v3, "$this$detectSelectionHandleDragGestures":Landroidx/compose/ui/input/pointer/PointerInputScope;
    invoke-static/range {v3 .. v8}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->detectDragGestures(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .end local v3    # "$this$detectSelectionHandleDragGestures":Landroidx/compose/ui/input/pointer/PointerInputScope;
    if-ne v3, v0, :cond_4

    .line 1118
    .end local v12    # "this":Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    return-object v0

    .line 1137
    .restart local v12    # "this":Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    :cond_4
    move-object v6, v11

    move-object v3, v12

    move-object v4, v14

    move-object v5, v15

    .line 1191
    .end local v11    # "dragBeginPosition":Lkotlin/jvm/internal/Ref$LongRef;
    .end local v12    # "this":Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    .end local v14    # "handle":Landroidx/compose/foundation/text/Handle;
    .end local v15    # "dragTotalDistance":Lkotlin/jvm/internal/Ref$LongRef;
    .local v3, "this":Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    .local v4, "handle":Landroidx/compose/foundation/text/Handle;
    .restart local v5    # "dragTotalDistance":Lkotlin/jvm/internal/Ref$LongRef;
    .restart local v6    # "dragBeginPosition":Lkotlin/jvm/internal/Ref$LongRef;
    :goto_3
    new-instance v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$$ExternalSyntheticLambda12;

    invoke-direct {v0, v3, v4}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$$ExternalSyntheticLambda12;-><init>(Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;Landroidx/compose/foundation/text/Handle;)V

    invoke-static {v0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionStateKt;->access$logDebug(Lkotlin/jvm/functions/Function0;)V

    .line 1195
    invoke-virtual {v3}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->getDraggingHandle()Landroidx/compose/foundation/text/Handle;

    move-result-object v0

    if-ne v0, v4, :cond_5

    .line 1196
    .end local v4    # "handle":Landroidx/compose/foundation/text/Handle;
    invoke-static {v6, v3, v5}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->detectSelectionHandleDragGestures$onDragStop(Lkotlin/jvm/internal/Ref$LongRef;Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;Lkotlin/jvm/internal/Ref$LongRef;)V

    .line 1198
    .end local v3    # "this":Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    .end local v5    # "dragTotalDistance":Lkotlin/jvm/internal/Ref$LongRef;
    .end local v6    # "dragBeginPosition":Lkotlin/jvm/internal/Ref$LongRef;
    :cond_5
    nop

    .line 1199
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 1191
    .local v11, "dragTotalDistance":Lkotlin/jvm/internal/Ref$LongRef;
    .restart local v12    # "this":Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    .restart local v13    # "handle":Landroidx/compose/foundation/text/Handle;
    .local v14, "dragBeginPosition":Lkotlin/jvm/internal/Ref$LongRef;
    :catchall_1
    move-exception v0

    move-object v15, v11

    move-object v11, v14

    move-object v14, v13

    move-object v6, v11

    move-object v3, v12

    move-object v4, v14

    move-object v5, v15

    .end local v13    # "handle":Landroidx/compose/foundation/text/Handle;
    .local v11, "dragBeginPosition":Lkotlin/jvm/internal/Ref$LongRef;
    .local v14, "handle":Landroidx/compose/foundation/text/Handle;
    .restart local v15    # "dragTotalDistance":Lkotlin/jvm/internal/Ref$LongRef;
    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v6, v11

    move-object v3, v12

    move-object v4, v14

    move-object v5, v15

    .end local v11    # "dragBeginPosition":Lkotlin/jvm/internal/Ref$LongRef;
    .end local v12    # "this":Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    .end local v14    # "handle":Landroidx/compose/foundation/text/Handle;
    .end local v15    # "dragTotalDistance":Lkotlin/jvm/internal/Ref$LongRef;
    .restart local v3    # "this":Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    .restart local v4    # "handle":Landroidx/compose/foundation/text/Handle;
    .restart local v5    # "dragTotalDistance":Lkotlin/jvm/internal/Ref$LongRef;
    .restart local v6    # "dragBeginPosition":Lkotlin/jvm/internal/Ref$LongRef;
    :goto_4
    new-instance v7, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$$ExternalSyntheticLambda12;

    invoke-direct {v7, v3, v4}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$$ExternalSyntheticLambda12;-><init>(Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;Landroidx/compose/foundation/text/Handle;)V

    invoke-static {v7}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionStateKt;->access$logDebug(Lkotlin/jvm/functions/Function0;)V

    .line 1195
    invoke-virtual {v3}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->getDraggingHandle()Landroidx/compose/foundation/text/Handle;

    move-result-object v7

    if-ne v7, v4, :cond_6

    .line 1196
    .end local v4    # "handle":Landroidx/compose/foundation/text/Handle;
    invoke-static {v6, v3, v5}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->detectSelectionHandleDragGestures$onDragStop(Lkotlin/jvm/internal/Ref$LongRef;Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;Lkotlin/jvm/internal/Ref$LongRef;)V

    .end local v3    # "this":Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    .end local v5    # "dragTotalDistance":Lkotlin/jvm/internal/Ref$LongRef;
    .end local v6    # "dragBeginPosition":Lkotlin/jvm/internal/Ref$LongRef;
    :cond_6
    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static final detectSelectionHandleDragGestures$lambda$0(Lkotlin/jvm/internal/Ref$LongRef;Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;ZLandroidx/compose/foundation/text/Handle;Lkotlin/jvm/internal/Ref$LongRef;Landroidx/compose/ui/geometry/Offset;)Lkotlin/Unit;
    .locals 2
    .param p0, "$dragBeginPosition"    # Lkotlin/jvm/internal/Ref$LongRef;
    .param p1, "this$0"    # Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    .param p2, "$isStartHandle"    # Z
    .param p3, "$handle"    # Landroidx/compose/foundation/text/Handle;
    .param p4, "$dragTotalDistance"    # Lkotlin/jvm/internal/Ref$LongRef;
    .param p5, "it"    # Landroidx/compose/ui/geometry/Offset;

    .line 1141
    invoke-direct {p1, p2}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->getHandlePosition-tuRUvjQ(Z)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/foundation/text/selection/SelectionHandlesKt;->getAdjustedCoordinates-k-4lQ0M(J)J

    move-result-wide v0

    iput-wide v0, p0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 1145
    iget-wide v0, p0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-virtual {p1, p3, v0, v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->updateHandleDragging-Uv8p0NA(Landroidx/compose/foundation/text/Handle;J)V

    .line 1148
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v0

    iput-wide v0, p4, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 1150
    const/4 v0, -0x1

    iput v0, p1, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->previousRawDragOffset:I

    .line 1151
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final detectSelectionHandleDragGestures$lambda$1(Lkotlin/jvm/internal/Ref$LongRef;Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;Lkotlin/jvm/internal/Ref$LongRef;)Lkotlin/Unit;
    .locals 1
    .param p0, "$dragBeginPosition"    # Lkotlin/jvm/internal/Ref$LongRef;
    .param p1, "this$0"    # Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    .param p2, "$dragTotalDistance"    # Lkotlin/jvm/internal/Ref$LongRef;

    .line 1152
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->detectSelectionHandleDragGestures$onDragStop(Lkotlin/jvm/internal/Ref$LongRef;Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;Lkotlin/jvm/internal/Ref$LongRef;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final detectSelectionHandleDragGestures$lambda$2(Lkotlin/jvm/internal/Ref$LongRef;Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;Lkotlin/jvm/internal/Ref$LongRef;)Lkotlin/Unit;
    .locals 1
    .param p0, "$dragBeginPosition"    # Lkotlin/jvm/internal/Ref$LongRef;
    .param p1, "this$0"    # Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    .param p2, "$dragTotalDistance"    # Lkotlin/jvm/internal/Ref$LongRef;

    .line 1153
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->detectSelectionHandleDragGestures$onDragStop(Lkotlin/jvm/internal/Ref$LongRef;Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;Lkotlin/jvm/internal/Ref$LongRef;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final detectSelectionHandleDragGestures$lambda$3(Lkotlin/jvm/internal/Ref$LongRef;Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;Landroidx/compose/foundation/text/Handle;Lkotlin/jvm/internal/Ref$LongRef;ZLandroidx/compose/ui/input/pointer/PointerInputChange;Landroidx/compose/ui/geometry/Offset;)Lkotlin/Unit;
    .locals 16
    .param p0, "$dragTotalDistance"    # Lkotlin/jvm/internal/Ref$LongRef;
    .param p1, "this$0"    # Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    .param p2, "$handle"    # Landroidx/compose/foundation/text/Handle;
    .param p3, "$dragBeginPosition"    # Lkotlin/jvm/internal/Ref$LongRef;
    .param p4, "$isStartHandle"    # Z
    .param p6, "delta"    # Landroidx/compose/ui/geometry/Offset;

    .line 1155
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-wide v2, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-virtual/range {p6 .. p6}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 1156
    iget-object v2, v1, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->textLayoutState:Landroidx/compose/foundation/text/input/internal/TextLayoutState;

    invoke-virtual {v2}, Landroidx/compose/foundation/text/input/internal/TextLayoutState;->getLayoutResult()Landroidx/compose/ui/text/TextLayoutResult;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2

    :cond_0
    move-object v11, v2

    .line 1158
    .local v11, "layoutResult":Landroidx/compose/ui/text/TextLayoutResult;
    move-object/from16 v12, p3

    iget-wide v2, v12, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    iget-wide v4, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide v2

    move-object/from16 v13, p2

    invoke-virtual {v1, v13, v2, v3}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->updateHandleDragging-Uv8p0NA(Landroidx/compose/foundation/text/Handle;J)V

    .line 1161
    if-eqz p4, :cond_1

    .line 1162
    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->getHandleDragPosition-F1C5BW0()J

    move-result-wide v2

    invoke-virtual {v11, v2, v3}, Landroidx/compose/ui/text/TextLayoutResult;->getOffsetForPosition-k-4lQ0M(J)I

    move-result v2

    move v3, v2

    goto :goto_0

    .line 1164
    :cond_1
    iget-object v2, v1, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->textFieldState:Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    invoke-virtual {v2}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->getVisualText()Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->getSelection-d9O1mEE()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v2

    move v3, v2

    .line 1161
    :goto_0
    nop

    .line 1160
    nop

    .line 1168
    .local v3, "startOffset":I
    if-eqz p4, :cond_2

    .line 1169
    iget-object v2, v1, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->textFieldState:Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    invoke-virtual {v2}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->getVisualText()Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->getSelection-d9O1mEE()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v2

    move v4, v2

    goto :goto_1

    .line 1171
    :cond_2
    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->getHandleDragPosition-F1C5BW0()J

    move-result-wide v4

    invoke-virtual {v11, v4, v5}, Landroidx/compose/ui/text/TextLayoutResult;->getOffsetForPosition-k-4lQ0M(J)I

    move-result v2

    move v4, v2

    .line 1168
    :goto_1
    nop

    .line 1167
    nop

    .line 1174
    .local v4, "endOffset":I
    iget-object v2, v1, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->textFieldState:Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    invoke-virtual {v2}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->getVisualText()Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->getSelection-d9O1mEE()J

    move-result-wide v14

    .line 1176
    .local v14, "prevSelection":J
    nop

    .line 1177
    iget-object v2, v1, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->textFieldState:Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    invoke-virtual {v2}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->getVisualText()Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    move-result-object v2

    .line 1178
    nop

    .line 1179
    nop

    .line 1180
    nop

    .line 1181
    sget-object v5, Landroidx/compose/foundation/text/selection/SelectionAdjustment;->Companion:Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;

    invoke-virtual {v5}, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;->getCharacterWithWordAccelerate()Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    move-result-object v6

    .line 1176
    const/16 v9, 0x60

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move/from16 v5, p4

    invoke-static/range {v1 .. v10}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->updateSelection-SsL-Rf8$foundation$default(Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;Landroidx/compose/foundation/text/input/TextFieldCharSequence;IIZLandroidx/compose/foundation/text/selection/SelectionAdjustment;ZZILjava/lang/Object;)J

    move-result-wide v6

    .line 1175
    nop

    .line 1185
    .local v6, "newSelection":J
    invoke-static {v14, v15}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v6, v7}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1186
    :cond_3
    iget-object v2, v1, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->textFieldState:Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    invoke-virtual {v2, v6, v7}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->selectCharsIn-5zc-tL8(J)V

    .line 1188
    :cond_4
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2
.end method

.method static final detectSelectionHandleDragGestures$lambda$4(Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;Landroidx/compose/foundation/text/Handle;)Ljava/lang/String;
    .locals 2
    .param p0, "this$0"    # Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    .param p1, "$handle"    # Landroidx/compose/foundation/text/Handle;

    .line 1192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Selection Handle drag cancelled for draggingHandle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1193
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->getDraggingHandle()Landroidx/compose/foundation/text/Handle;

    move-result-object v1

    .line 1192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1193
    nop

    .line 1192
    const-string v1, " definedOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1193
    nop

    .line 1192
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1193
    return-object v0
.end method

.method private static final detectSelectionHandleDragGestures$onDragStop(Lkotlin/jvm/internal/Ref$LongRef;Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;Lkotlin/jvm/internal/Ref$LongRef;)V
    .locals 7
    .param p0, "dragBeginPosition"    # Lkotlin/jvm/internal/Ref$LongRef;
    .param p1, "this$0"    # Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    .param p2, "dragTotalDistance"    # Lkotlin/jvm/internal/Ref$LongRef;

    .line 1127
    iget-wide v0, p0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .local v0, "$v$c$androidx-compose-ui-geometry-Offset$-$this$isSpecified$0$iv":J
    const/4 v2, 0x0

    .line 2047
    .local v2, "$i$f$isSpecified-k-4lQ0M":I
    const-wide v3, 0x7fffffff7fffffffL

    and-long/2addr v3, v0

    const-wide v5, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1127
    .end local v0    # "$v$c$androidx-compose-ui-geometry-Offset$-$this$isSpecified$0$iv":J
    .end local v2    # "$i$f$isSpecified-k-4lQ0M":I
    :goto_0
    if-eqz v3, :cond_1

    .line 1128
    invoke-virtual {p1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->clearHandleDragging()V

    .line 1129
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide v0

    iput-wide v0, p0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 1130
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v0

    iput-wide v0, p2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 1131
    const/4 v0, -0x1

    iput v0, p1, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->previousRawDragOffset:I

    .line 1133
    :cond_1
    return-void
.end method

.method private final getContentRect()Landroidx/compose/ui/geometry/Rect;
    .locals 25

    .line 1295
    move-object/from16 v0, p0

    invoke-direct {v0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->getTextLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v1

    .local v1, "value$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 2012
    .local v2, "$i$f$checkPreconditionNotNull":I
    if-eqz v1, :cond_2

    .line 2016
    nop

    .line 1295
    .end local v1    # "value$iv":Ljava/lang/Object;
    .end local v2    # "$i$f$checkPreconditionNotNull":I
    nop

    .line 1294
    nop

    .line 1299
    .local v1, "textLayoutCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    iget-object v2, v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->textFieldState:Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    invoke-virtual {v2}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->getVisualText()Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    move-result-object v2

    .line 1303
    .local v2, "text":Landroidx/compose/foundation/text/input/TextFieldCharSequence;
    invoke-virtual {v2}, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->getSelection-d9O1mEE()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1304
    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->getCursorRect()Landroidx/compose/ui/geometry/Rect;

    move-result-object v3

    .line 1305
    .local v3, "cursorRect":Landroidx/compose/ui/geometry/Rect;
    invoke-virtual {v3}, Landroidx/compose/ui/geometry/Rect;->getTopLeft-F1C5BW0()J

    move-result-wide v4

    invoke-interface {v1, v4, v5}, Landroidx/compose/ui/layout/LayoutCoordinates;->localToRoot-MK-Hz9U(J)J

    move-result-wide v4

    .line 1306
    .local v4, "topLeft":J
    invoke-virtual {v3}, Landroidx/compose/ui/geometry/Rect;->getSize-NH-jbRc()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Landroidx/compose/ui/geometry/RectKt;->Rect-tz77jQw(JJ)Landroidx/compose/ui/geometry/Rect;

    move-result-object v6

    return-object v6

    .line 1308
    .end local v3    # "cursorRect":Landroidx/compose/ui/geometry/Rect;
    .end local v4    # "topLeft":J
    :cond_0
    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->getHandlePosition-tuRUvjQ(Z)J

    move-result-wide v3

    invoke-interface {v1, v3, v4}, Landroidx/compose/ui/layout/LayoutCoordinates;->localToRoot-MK-Hz9U(J)J

    move-result-wide v3

    .line 1309
    .local v3, "startOffset":J
    const/4 v5, 0x0

    invoke-direct {v0, v5}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->getHandlePosition-tuRUvjQ(Z)J

    move-result-wide v5

    invoke-interface {v1, v5, v6}, Landroidx/compose/ui/layout/LayoutCoordinates;->localToRoot-MK-Hz9U(J)J

    move-result-wide v5

    .line 1310
    .local v5, "endOffset":J
    iget-object v7, v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->textLayoutState:Landroidx/compose/foundation/text/input/internal/TextLayoutState;

    invoke-virtual {v7}, Landroidx/compose/foundation/text/input/internal/TextLayoutState;->getLayoutResult()Landroidx/compose/ui/text/TextLayoutResult;

    move-result-object v7

    if-nez v7, :cond_1

    sget-object v7, Landroidx/compose/ui/geometry/Rect;->Companion:Landroidx/compose/ui/geometry/Rect$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/geometry/Rect$Companion;->getZero()Landroidx/compose/ui/geometry/Rect;

    move-result-object v7

    return-object v7

    .line 1312
    .local v7, "layoutResult":Landroidx/compose/ui/text/TextLayoutResult;
    :cond_1
    nop

    .line 1313
    const/4 v8, 0x0

    .local v8, "x$iv":F
    invoke-virtual {v2}, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->getSelection-d9O1mEE()J

    move-result-wide v9

    invoke-static {v9, v10}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v9

    invoke-virtual {v7, v9}, Landroidx/compose/ui/text/TextLayoutResult;->getCursorRect(I)Landroidx/compose/ui/geometry/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v9

    .local v9, "y$iv":F
    const/4 v10, 0x0

    .line 2017
    .local v10, "$i$f$Offset":I
    move v11, v9

    .local v11, "val2$iv$iv":F
    move v12, v8

    .local v12, "val1$iv$iv":F
    const/4 v13, 0x0

    .line 2018
    .local v13, "$i$f$packFloats":I
    invoke-static {v12}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v14

    int-to-long v14, v14

    .line 2019
    .local v14, "v1$iv$iv":J
    invoke-static {v11}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    move-object/from16 v16, v2

    move-wide/from16 v17, v3

    .end local v2    # "text":Landroidx/compose/foundation/text/input/TextFieldCharSequence;
    .end local v3    # "startOffset":J
    .local v16, "text":Landroidx/compose/foundation/text/input/TextFieldCharSequence;
    .local v17, "startOffset":J
    int-to-long v2, v0

    .line 2020
    .local v2, "v2$iv$iv":J
    const/16 v0, 0x20

    shl-long v19, v14, v0

    const-wide v21, 0xffffffffL

    and-long v23, v2, v21

    or-long v2, v19, v23

    .line 2017
    .end local v2    # "v2$iv$iv":J
    .end local v11    # "val2$iv$iv":F
    .end local v12    # "val1$iv$iv":F
    .end local v13    # "$i$f$packFloats":I
    .end local v14    # "v1$iv$iv":J
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v2

    .line 1313
    .end local v8    # "x$iv":F
    .end local v9    # "y$iv":F
    .end local v10    # "$i$f$Offset":I
    invoke-interface {v1, v2, v3}, Landroidx/compose/ui/layout/LayoutCoordinates;->localToRoot-MK-Hz9U(J)J

    move-result-wide v2

    .line 1314
    nop

    .local v2, "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v4, 0x0

    .line 2021
    .local v4, "$i$f$getY-impl":I
    move-wide v8, v2

    .local v8, "value$iv$iv":J
    const/4 v10, 0x0

    .line 2022
    .local v10, "$i$f$unpackFloat2":I
    and-long v11, v8, v21

    long-to-int v11, v11

    .local v11, "bits$iv$iv$iv":I
    const/4 v12, 0x0

    .line 2023
    .local v12, "$i$f$floatFromBits":I
    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v11

    .line 2022
    .end local v11    # "bits$iv$iv$iv":I
    .end local v12    # "$i$f$floatFromBits":I
    nop

    .line 2021
    .end local v8    # "value$iv$iv":J
    .end local v10    # "$i$f$unpackFloat2":I
    nop

    .line 1314
    .end local v2    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v4    # "$i$f$getY-impl":I
    nop

    .line 1311
    nop

    .line 1316
    .local v11, "startTop":F
    nop

    .line 1317
    const/4 v2, 0x0

    .local v2, "x$iv":F
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->getSelection-d9O1mEE()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v3

    invoke-virtual {v7, v3}, Landroidx/compose/ui/text/TextLayoutResult;->getCursorRect(I)Landroidx/compose/ui/geometry/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v3

    .local v3, "y$iv":F
    const/4 v4, 0x0

    .line 2024
    .local v4, "$i$f$Offset":I
    move v8, v3

    .local v8, "val2$iv$iv":F
    move v9, v2

    .local v9, "val1$iv$iv":F
    const/4 v10, 0x0

    .line 2025
    .local v10, "$i$f$packFloats":I
    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v12

    int-to-long v12, v12

    .line 2026
    .local v12, "v1$iv$iv":J
    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v14

    int-to-long v14, v14

    .line 2027
    .local v14, "v2$iv$iv":J
    shl-long v19, v12, v0

    and-long v23, v14, v21

    or-long v8, v19, v23

    .line 2024
    .end local v8    # "val2$iv$iv":F
    .end local v9    # "val1$iv$iv":F
    .end local v10    # "$i$f$packFloats":I
    .end local v12    # "v1$iv$iv":J
    .end local v14    # "v2$iv$iv":J
    invoke-static {v8, v9}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v2

    .line 1317
    .end local v2    # "x$iv":F
    .end local v3    # "y$iv":F
    .end local v4    # "$i$f$Offset":I
    invoke-interface {v1, v2, v3}, Landroidx/compose/ui/layout/LayoutCoordinates;->localToRoot-MK-Hz9U(J)J

    move-result-wide v2

    .line 1318
    nop

    .local v2, "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v4, 0x0

    .line 2028
    .local v4, "$i$f$getY-impl":I
    move-wide v8, v2

    .local v8, "value$iv$iv":J
    const/4 v10, 0x0

    .line 2029
    .local v10, "$i$f$unpackFloat2":I
    and-long v12, v8, v21

    long-to-int v12, v12

    .local v12, "bits$iv$iv$iv":I
    const/4 v13, 0x0

    .line 2030
    .local v13, "$i$f$floatFromBits":I
    invoke-static {v12}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v12

    .line 2029
    .end local v12    # "bits$iv$iv$iv":I
    .end local v13    # "$i$f$floatFromBits":I
    nop

    .line 2028
    .end local v8    # "value$iv$iv":J
    .end local v10    # "$i$f$unpackFloat2":I
    nop

    .line 1318
    .end local v2    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v4    # "$i$f$getY-impl":I
    nop

    .line 1315
    nop

    .line 1320
    .local v12, "endTop":F
    move-wide/from16 v2, v17

    .restart local v2    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v4, 0x0

    .line 2031
    .local v4, "$i$f$getX-impl":I
    move-wide v8, v2

    .restart local v8    # "value$iv$iv":J
    const/4 v10, 0x0

    .line 2032
    .local v10, "$i$f$unpackFloat1":I
    shr-long v13, v8, v0

    long-to-int v13, v13

    .local v13, "bits$iv$iv$iv":I
    const/4 v14, 0x0

    .line 2033
    .local v14, "$i$f$floatFromBits":I
    invoke-static {v13}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v13

    .line 2032
    .end local v13    # "bits$iv$iv$iv":I
    .end local v14    # "$i$f$floatFromBits":I
    nop

    .line 2031
    .end local v8    # "value$iv$iv":J
    .end local v10    # "$i$f$unpackFloat1":I
    nop

    .line 1320
    .end local v2    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v4    # "$i$f$getX-impl":I
    move-wide v2, v5

    .restart local v2    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v4, 0x0

    .line 2031
    .restart local v4    # "$i$f$getX-impl":I
    move-wide v8, v2

    .restart local v8    # "value$iv$iv":J
    const/4 v10, 0x0

    .line 2032
    .restart local v10    # "$i$f$unpackFloat1":I
    shr-long v14, v8, v0

    long-to-int v14, v14

    .local v14, "bits$iv$iv$iv":I
    const/4 v15, 0x0

    .line 2033
    .local v15, "$i$f$floatFromBits":I
    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v14

    .line 2032
    .end local v14    # "bits$iv$iv$iv":I
    .end local v15    # "$i$f$floatFromBits":I
    nop

    .line 2031
    .end local v8    # "value$iv$iv":J
    .end local v10    # "$i$f$unpackFloat1":I
    nop

    .line 1320
    .end local v2    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v4    # "$i$f$getX-impl":I
    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 1321
    move-wide/from16 v3, v17

    .local v3, "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v8, 0x0

    .line 2034
    .local v8, "$i$f$getX-impl":I
    move-wide v9, v3

    .local v9, "value$iv$iv":J
    const/4 v13, 0x0

    .line 2035
    .local v13, "$i$f$unpackFloat1":I
    shr-long v14, v9, v0

    long-to-int v14, v14

    .restart local v14    # "bits$iv$iv$iv":I
    const/4 v15, 0x0

    .line 2036
    .restart local v15    # "$i$f$floatFromBits":I
    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v14

    .line 2035
    .end local v14    # "bits$iv$iv$iv":I
    .end local v15    # "$i$f$floatFromBits":I
    nop

    .line 2034
    .end local v9    # "value$iv$iv":J
    .end local v13    # "$i$f$unpackFloat1":I
    nop

    .line 1321
    .end local v3    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v8    # "$i$f$getX-impl":I
    move-wide v3, v5

    .restart local v3    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v8, 0x0

    .line 2034
    .restart local v8    # "$i$f$getX-impl":I
    move-wide v9, v3

    .restart local v9    # "value$iv$iv":J
    const/4 v13, 0x0

    .line 2035
    .restart local v13    # "$i$f$unpackFloat1":I
    move-object v15, v1

    .end local v1    # "textLayoutCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    .local v15, "textLayoutCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    shr-long v0, v9, v0

    long-to-int v0, v0

    .local v0, "bits$iv$iv$iv":I
    const/4 v1, 0x0

    .line 2036
    .local v1, "$i$f$floatFromBits":I
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 2035
    .end local v0    # "bits$iv$iv$iv":I
    .end local v1    # "$i$f$floatFromBits":I
    nop

    .line 2034
    .end local v9    # "value$iv$iv":J
    .end local v13    # "$i$f$unpackFloat1":I
    nop

    .line 1321
    .end local v3    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v8    # "$i$f$getX-impl":I
    invoke-static {v14, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 1322
    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 1323
    move-wide/from16 v3, v17

    .restart local v3    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v8, 0x0

    .line 2037
    .local v8, "$i$f$getY-impl":I
    move-wide v9, v3

    .restart local v9    # "value$iv$iv":J
    const/4 v13, 0x0

    .line 2038
    .local v13, "$i$f$unpackFloat2":I
    move-wide/from16 v19, v3

    .end local v3    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .local v19, "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    and-long v3, v9, v21

    long-to-int v3, v3

    .local v3, "bits$iv$iv$iv":I
    const/4 v4, 0x0

    .line 2039
    .local v4, "$i$f$floatFromBits":I
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    .line 2038
    .end local v3    # "bits$iv$iv$iv":I
    .end local v4    # "$i$f$floatFromBits":I
    nop

    .line 2037
    .end local v9    # "value$iv$iv":J
    .end local v13    # "$i$f$unpackFloat2":I
    nop

    .line 1323
    .end local v8    # "$i$f$getY-impl":I
    .end local v19    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    move-wide v8, v5

    .local v8, "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v4, 0x0

    .line 2037
    .local v4, "$i$f$getY-impl":I
    move-wide v13, v8

    .local v13, "value$iv$iv":J
    const/4 v10, 0x0

    .line 2038
    .local v10, "$i$f$unpackFloat2":I
    move-wide/from16 v19, v5

    move v6, v4

    .end local v4    # "$i$f$getY-impl":I
    .end local v5    # "endOffset":J
    .local v6, "$i$f$getY-impl":I
    .local v19, "endOffset":J
    and-long v4, v13, v21

    long-to-int v4, v4

    .local v4, "bits$iv$iv$iv":I
    const/4 v5, 0x0

    .line 2039
    .local v5, "$i$f$floatFromBits":I
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    .line 2038
    .end local v4    # "bits$iv$iv$iv":I
    .end local v5    # "$i$f$floatFromBits":I
    nop

    .line 2037
    .end local v10    # "$i$f$unpackFloat2":I
    .end local v13    # "value$iv$iv":J
    nop

    .line 1323
    .end local v6    # "$i$f$getY-impl":I
    .end local v8    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 1319
    new-instance v4, Landroidx/compose/ui/geometry/Rect;

    .line 1320
    nop

    .line 1322
    nop

    .line 1321
    nop

    .line 1323
    nop

    .line 1319
    invoke-direct {v4, v2, v1, v0, v3}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    return-object v4

    .line 2013
    .end local v7    # "layoutResult":Landroidx/compose/ui/text/TextLayoutResult;
    .end local v11    # "startTop":F
    .end local v12    # "endTop":F
    .end local v15    # "textLayoutCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    .end local v16    # "text":Landroidx/compose/foundation/text/input/TextFieldCharSequence;
    .end local v17    # "startOffset":J
    .end local v19    # "endOffset":J
    .local v1, "value$iv":Ljava/lang/Object;
    .local v2, "$i$f$checkPreconditionNotNull":I
    :cond_2
    const/4 v0, 0x0

    .line 1296
    .local v0, "$i$a$-checkPreconditionNotNull-TextFieldSelectionState$getContentRect$textLayoutCoordinates$1":I
    nop

    .line 2013
    .end local v0    # "$i$a$-checkPreconditionNotNull-TextFieldSelectionState$getContentRect$textLayoutCoordinates$1":I
    const-string/jumbo v0, "textLayoutCoordinates should not be null."

    invoke-static {v0}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalStateExceptionForNullCheck(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method private final getCurrentTextLayoutPositionInWindow-F1C5BW0()J
    .locals 2

    .line 184
    invoke-direct {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->getTextLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->positionInWindow(Landroidx/compose/ui/layout/LayoutCoordinates;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method private final getHandlePosition-tuRUvjQ(Z)J
    .locals 6
    .param p1, "isStartHandle"    # Z

    .line 1381
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->textLayoutState:Landroidx/compose/foundation/text/input/internal/TextLayoutState;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/TextLayoutState;->getLayoutResult()Landroidx/compose/ui/text/TextLayoutResult;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v0

    return-wide v0

    .line 1382
    .local v0, "layoutResult":Landroidx/compose/ui/text/TextLayoutResult;
    :cond_0
    iget-object v1, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->textFieldState:Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->getVisualText()Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->getSelection-d9O1mEE()J

    move-result-wide v1

    .line 1384
    .local v1, "selection":J
    if-eqz p1, :cond_1

    .line 1385
    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v3

    goto :goto_0

    .line 1387
    :cond_1
    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v3

    .line 1384
    :goto_0
    nop

    .line 1383
    nop

    .line 1390
    .local v3, "offset":I
    nop

    .line 1391
    nop

    .line 1392
    nop

    .line 1393
    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getReversed-impl(J)Z

    move-result v4

    .line 1389
    invoke-static {v0, v3, p1, v4}, Landroidx/compose/foundation/text/selection/TextSelectionDelegateKt;->getSelectionHandleCoordinates(Landroidx/compose/ui/text/TextLayoutResult;IZZ)J

    move-result-wide v4

    return-wide v4
.end method

.method private final getRawHandleDragPosition-F1C5BW0()J
    .locals 4

    .line 198
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->rawHandleDragPosition$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "thisObj$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 1958
    .local v3, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "thisObj$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Landroidx/compose/ui/geometry/Offset;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v0

    .line 198
    return-wide v0
.end method

.method private final getStartTextLayoutPositionInWindow-F1C5BW0()J
    .locals 4

    .line 180
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->startTextLayoutPositionInWindow$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "thisObj$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 1955
    .local v3, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "thisObj$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Landroidx/compose/ui/geometry/Offset;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v0

    .line 180
    return-wide v0
.end method

.method private final getTextFieldSelection-qeG_v_k(IILandroidx/compose/ui/text/TextRange;ZLandroidx/compose/foundation/text/selection/SelectionAdjustment;)J
    .locals 10
    .param p1, "rawStartOffset"    # I
    .param p2, "rawEndOffset"    # I
    .param p3, "previousSelection"    # Landroidx/compose/ui/text/TextRange;
    .param p4, "isStartHandle"    # Z
    .param p5, "adjustment"    # Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    .line 1722
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->textLayoutState:Landroidx/compose/foundation/text/input/internal/TextLayoutState;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/TextLayoutState;->getLayoutResult()Landroidx/compose/ui/text/TextLayoutResult;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Landroidx/compose/ui/text/TextRange;->Companion:Landroidx/compose/ui/text/TextRange$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/TextRange$Companion;->getZero-d9O1mEE()J

    move-result-wide v0

    return-wide v0

    :cond_0
    move-object v2, v0

    .line 1726
    .local v2, "layoutResult":Landroidx/compose/ui/text/TextLayoutResult;
    if-nez p3, :cond_1

    sget-object v0, Landroidx/compose/foundation/text/selection/SelectionAdjustment;->Companion:Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;->getCharacter()Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    move-result-object v0

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1727
    invoke-static {p1, p2}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide v0

    return-wide v0

    .line 1732
    :cond_1
    nop

    .line 1733
    nop

    .line 1734
    nop

    .line 1735
    iget v5, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->previousRawDragOffset:I

    .line 1736
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroidx/compose/ui/text/TextRange;->unbox-impl()J

    move-result-wide v0

    goto :goto_0

    :cond_2
    sget-object v0, Landroidx/compose/ui/text/TextRange;->Companion:Landroidx/compose/ui/text/TextRange$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/TextRange$Companion;->getZero-d9O1mEE()J

    move-result-wide v0

    :goto_0
    move-wide v6, v0

    .line 1737
    if-nez p3, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    move v8, v0

    .line 1738
    nop

    .line 1731
    move v3, p1

    move v4, p2

    move v9, p4

    .end local p1    # "rawStartOffset":I
    .end local p2    # "rawEndOffset":I
    .end local p4    # "isStartHandle":Z
    .local v3, "rawStartOffset":I
    .local v4, "rawEndOffset":I
    .local v9, "isStartHandle":Z
    invoke-static/range {v2 .. v9}, Landroidx/compose/foundation/text/selection/SelectionLayoutKt;->getTextFieldSelectionLayout-RcvT-LA(Landroidx/compose/ui/text/TextLayoutResult;IIIJZZ)Landroidx/compose/foundation/text/selection/SelectionLayout;

    move-result-object p1

    .line 1730
    nop

    .line 1741
    .local p1, "selectionLayout":Landroidx/compose/foundation/text/selection/SelectionLayout;
    nop

    .line 1742
    if-eqz p3, :cond_4

    .line 1743
    iget-object p2, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->previousSelectionLayout:Landroidx/compose/foundation/text/selection/SelectionLayout;

    invoke-interface {p1, p2}, Landroidx/compose/foundation/text/selection/SelectionLayout;->shouldRecomputeSelection(Landroidx/compose/foundation/text/selection/SelectionLayout;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 1745
    invoke-virtual {p3}, Landroidx/compose/ui/text/TextRange;->unbox-impl()J

    move-result-wide v0

    return-wide v0

    .line 1748
    :cond_4
    invoke-interface {p5, p1}, Landroidx/compose/foundation/text/selection/SelectionAdjustment;->adjust(Landroidx/compose/foundation/text/selection/SelectionLayout;)Landroidx/compose/foundation/text/selection/Selection;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/compose/foundation/text/selection/Selection;->toTextRange-d9O1mEE()J

    move-result-wide v0

    .line 1749
    .local v0, "result":J
    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->previousSelectionLayout:Landroidx/compose/foundation/text/selection/SelectionLayout;

    .line 1750
    if-eqz v9, :cond_5

    move p2, v3

    goto :goto_2

    :cond_5
    move p2, v4

    :goto_2
    iput p2, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->previousRawDragOffset:I

    .line 1752
    return-wide v0
.end method

.method private final getTextLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;
    .locals 4

    .line 260
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->textLayoutState:Landroidx/compose/foundation/text/input/internal/TextLayoutState;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/TextLayoutState;->getTextLayoutNodeCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v2, v0

    .line 1978
    .local v2, "it":Landroidx/compose/ui/layout/LayoutCoordinates;
    const/4 v3, 0x0

    .line 260
    .local v3, "$i$a$-takeIf-TextFieldSelectionState$textLayoutCoordinates$1":I
    invoke-interface {v2}, Landroidx/compose/ui/layout/LayoutCoordinates;->isAttached()Z

    move-result v2

    .end local v2    # "it":Landroidx/compose/ui/layout/LayoutCoordinates;
    .end local v3    # "$i$a$-takeIf-TextFieldSelectionState$textLayoutCoordinates$1":I
    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method private final getTextToolbarState()Landroidx/compose/foundation/text/input/internal/selection/TextToolbarState;
    .locals 4

    .line 252
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->textToolbarState$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "thisObj$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 1972
    .local v3, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "thisObj$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Landroidx/compose/foundation/text/input/internal/selection/TextToolbarState;

    .line 252
    return-object v0
.end method

.method private final hideTextToolbar()V
    .locals 1

    .line 1659
    sget-boolean v0, Landroidx/compose/foundation/ComposeFoundationFlags;->isNewContextMenuEnabled:Z

    if-eqz v0, :cond_0

    .line 1660
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->toolbarRequester:Landroidx/compose/foundation/text/contextmenu/modifier/ToolbarRequester;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/contextmenu/modifier/ToolbarRequester;->hide()V

    goto :goto_0

    .line 1662
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->textToolbarHandler:Landroidx/compose/foundation/text/input/internal/selection/TextToolbarHandler;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroidx/compose/foundation/text/input/internal/selection/TextToolbarHandler;->hideTextToolbar()V

    .line 1664
    :cond_1
    :goto_0
    return-void
.end method

.method private final isCursorHandleInVisibleBounds()Z
    .locals 8

    .line 336
    sget-object v0, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .local v0, "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    const/4 v1, 0x0

    .line 1979
    .local v1, "$i$f$withoutReadObservation":I
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->getCurrentThreadSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v2

    .line 1980
    .local v2, "previousSnapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/Snapshot;->getReadObserver()Lkotlin/jvm/functions/Function1;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1981
    .local v3, "observer$iv":Lkotlin/jvm/functions/Function1;
    :goto_0
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->makeCurrentNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v4

    .line 1982
    .local v4, "newSnapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    nop

    .line 1983
    const/4 v5, 0x0

    .line 336
    .local v5, "$i$a$-withoutReadObservation-TextFieldSelectionState$isCursorHandleInVisibleBounds$position$1":I
    :try_start_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->getCursorRect()Landroidx/compose/ui/geometry/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/ui/geometry/Rect;->getBottomCenter-F1C5BW0()J

    move-result-wide v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1983
    .end local v5    # "$i$a$-withoutReadObservation-TextFieldSelectionState$isCursorHandleInVisibleBounds$position$1":I
    nop

    .line 1985
    invoke-virtual {v0, v2, v4, v3}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 1983
    nop

    .line 336
    .end local v0    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .end local v1    # "$i$f$withoutReadObservation":I
    .end local v2    # "previousSnapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v3    # "observer$iv":Lkotlin/jvm/functions/Function1;
    .end local v4    # "newSnapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    nop

    .line 338
    .local v6, "position":J
    invoke-direct {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->getTextLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroidx/compose/foundation/text/selection/SelectionManagerKt;->visibleBounds(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0, v6, v7}, Landroidx/compose/foundation/text/selection/SelectionManagerKt;->containsInclusive-Uv8p0NA(Landroidx/compose/ui/geometry/Rect;J)Z

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 1985
    .end local v6    # "position":J
    .restart local v0    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .restart local v1    # "$i$f$withoutReadObservation":I
    .restart local v2    # "previousSnapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v3    # "observer$iv":Lkotlin/jvm/functions/Function1;
    .restart local v4    # "newSnapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    :catchall_0
    move-exception v5

    invoke-virtual {v0, v2, v4, v3}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    throw v5
.end method

.method private final markStartContentVisibleOffset()V
    .locals 2

    .line 1415
    invoke-direct {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->getCurrentTextLayoutPositionInWindow-F1C5BW0()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->setStartTextLayoutPositionInWindow-k-4lQ0M(J)V

    .line 1416
    return-void
.end method

.method private final observeTextChanges(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1202
    new-instance v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$$ExternalSyntheticLambda3;-><init>(Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;)V

    invoke-static {v0}, Landroidx/compose/runtime/SnapshotStateKt;->snapshotFlow(Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .line 1203
    sget-object v1, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$observeTextChanges$3;->INSTANCE:Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$observeTextChanges$3;

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .line 1205
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->drop(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .line 1206
    new-instance v1, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$observeTextChanges$4;

    invoke-direct {v1, p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$observeTextChanges$4;-><init>(Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;)V

    check-cast v1, Lkotlinx/coroutines/flow/FlowCollector;

    invoke-interface {v0, v1, p1}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1211
    return-object v0
.end method

.method static final observeTextChanges$lambda$0(Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;)Landroidx/compose/foundation/text/input/TextFieldCharSequence;
    .locals 1
    .param p0, "this$0"    # Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;

    .line 1202
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->textFieldState:Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->getVisualText()Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    move-result-object v0

    return-object v0
.end method

.method private final observeTextToolbarVisibility(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1227
    new-instance v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;)V

    invoke-static {v0}, Landroidx/compose/runtime/SnapshotStateKt;->snapshotFlow(Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .line 1228
    nop

    .local v0, "$this$observeTextToolbarVisibility_u24lambda_u241":Lkotlinx/coroutines/flow/Flow;
    const/4 v1, 0x0

    .line 1229
    .local v1, "$i$a$-run-TextFieldSelectionState$observeTextToolbarVisibility$3":I
    sget-boolean v2, Landroidx/compose/foundation/ComposeFoundationFlags;->isNewContextMenuEnabled:Z

    if-eqz v2, :cond_0

    .line 1238
    new-instance v2, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0, v2}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChangedBy(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v2

    goto :goto_0

    .line 1240
    :cond_0
    move-object v2, v0

    .line 1241
    :goto_0
    nop

    .line 1228
    .end local v0    # "$this$observeTextToolbarVisibility_u24lambda_u241":Lkotlinx/coroutines/flow/Flow;
    .end local v1    # "$i$a$-run-TextFieldSelectionState$observeTextToolbarVisibility$3":I
    nop

    .line 1243
    new-instance v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$observeTextToolbarVisibility$4;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$observeTextToolbarVisibility$4;-><init>(Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;)V

    check-cast v0, Lkotlinx/coroutines/flow/FlowCollector;

    invoke-interface {v2, v0, p1}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_1

    return-object v0

    :cond_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1250
    return-object v0
.end method

.method static final observeTextToolbarVisibility$lambda$0(Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;)Landroidx/compose/ui/geometry/Rect;
    .locals 1
    .param p0, "this$0"    # Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;

    .line 1227
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->getDerivedVisibleContentBounds$foundation()Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    return-object v0
.end method

.method private static final observeTextToolbarVisibility$lambda$1$0(Landroidx/compose/ui/geometry/Rect;)Z
    .locals 1
    .param p0, "it"    # Landroidx/compose/ui/geometry/Rect;

    .line 1238
    if-nez p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final pasteAsPlainText(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$pasteAsPlainText$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$pasteAsPlainText$1;

    iget v1, v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$pasteAsPlainText$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$pasteAsPlainText$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$pasteAsPlainText$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$pasteAsPlainText$1;

    invoke-direct {v0, p0, p1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$pasteAsPlainText$1;-><init>(Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$pasteAsPlainText$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 1576
    iget v3, v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$pasteAsPlainText$1;->label:I

    packed-switch v3, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    move-object v2, p0

    .local v2, "this":Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, v1

    goto :goto_3

    .end local v2    # "this":Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    :pswitch_1
    move-object v3, p0

    .local v3, "this":Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, v1

    goto :goto_2

    .end local v3    # "this":Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    :pswitch_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, p0

    .line 1577
    .restart local v3    # "this":Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    iget-object v4, v3, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->clipboard:Landroidx/compose/ui/platform/Clipboard;

    const/4 v5, 0x1

    iput v5, v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$pasteAsPlainText$1;->label:I

    invoke-interface {v4, v0}, Landroidx/compose/ui/platform/Clipboard;->getClipEntry(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v2, :cond_1

    .line 1576
    .end local v3    # "this":Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    :goto_1
    return-object v2

    .line 1577
    .restart local v3    # "this":Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    :cond_1
    :goto_2
    check-cast v4, Landroidx/compose/ui/platform/ClipEntry;

    if-eqz v4, :cond_4

    const/4 v5, 0x2

    iput v5, v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$pasteAsPlainText$1;->label:I

    invoke-static {v4, v0}, Landroidx/compose/foundation/internal/ClipboardUtils_androidKt;->readText(Landroidx/compose/ui/platform/ClipEntry;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v2, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, v3

    .end local v3    # "this":Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    .restart local v2    # "this":Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    :goto_3
    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_3

    goto :goto_4

    .line 1579
    .local v4, "clipboardText":Ljava/lang/String;
    :cond_3
    iget-object v5, v2, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->textFieldState:Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    .line 1580
    move-object v6, v4

    check-cast v6, Ljava/lang/CharSequence;

    .line 1579
    nop

    .line 1581
    sget-object v8, Landroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;->NeverMerge:Landroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;

    .line 1579
    const/16 v10, 0xa

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static/range {v5 .. v11}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->replaceSelectedText$default(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Ljava/lang/CharSequence;ZLandroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;ZILjava/lang/Object;)V

    .line 1583
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v3

    .line 1577
    .end local v2    # "this":Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    .end local v4    # "clipboardText":Ljava/lang/String;
    :cond_4
    :goto_4
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final setRawHandleDragPosition-k-4lQ0M(J)V
    .locals 5
    .param p1, "$v$c$androidx-compose-ui-geometry-Offset$-<set-?>$0"    # J

    .line 198
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->rawHandleDragPosition$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v2

    .local v2, "value$iv":Ljava/lang/Object;
    move-object v3, p0

    .local v3, "thisObj$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 1959
    .local v4, "$i$f$setValue":I
    invoke-interface {v0, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 1960
    nop

    .line 198
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v3    # "thisObj$iv":Ljava/lang/Object;
    .end local v4    # "$i$f$setValue":I
    return-void
.end method

.method private final setStartTextLayoutPositionInWindow-k-4lQ0M(J)V
    .locals 5
    .param p1, "$v$c$androidx-compose-ui-geometry-Offset$-<set-?>$0"    # J

    .line 180
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->startTextLayoutPositionInWindow$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v2

    .local v2, "value$iv":Ljava/lang/Object;
    move-object v3, p0

    .local v3, "thisObj$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 1956
    .local v4, "$i$f$setValue":I
    invoke-interface {v0, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 1957
    nop

    .line 180
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v3    # "thisObj$iv":Ljava/lang/Object;
    .end local v4    # "$i$f$setValue":I
    return-void
.end method

.method private final setTextToolbarState(Landroidx/compose/foundation/text/input/internal/selection/TextToolbarState;)V
    .locals 5
    .param p1, "<set-?>"    # Landroidx/compose/foundation/text/input/internal/selection/TextToolbarState;

    .line 252
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->textToolbarState$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p1

    .local v2, "value$iv":Ljava/lang/Object;
    move-object v3, p0

    .local v3, "thisObj$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 1973
    .local v4, "$i$f$setValue":I
    invoke-interface {v0, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 1974
    nop

    .line 252
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v3    # "thisObj$iv":Ljava/lang/Object;
    .end local v4    # "$i$f$setValue":I
    return-void
.end method

.method private final showTextToolbar(Landroidx/compose/ui/geometry/Rect;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p1, "contentRect"    # Landroidx/compose/ui/geometry/Rect;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/geometry/Rect;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1642
    sget-boolean v0, Landroidx/compose/foundation/ComposeFoundationFlags;->isNewContextMenuEnabled:Z

    if-eqz v0, :cond_0

    .line 1643
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->toolbarRequester:Landroidx/compose/foundation/text/contextmenu/modifier/ToolbarRequester;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/contextmenu/modifier/ToolbarRequester;->show()V

    goto :goto_0

    .line 1645
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->textToolbarHandler:Landroidx/compose/foundation/text/input/internal/selection/TextToolbarHandler;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0, p1, p2}, Landroidx/compose/foundation/text/input/internal/selection/TextToolbarHandler;->showTextToolbar(Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;Landroidx/compose/ui/geometry/Rect;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_1

    return-object v0

    :cond_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1647
    return-object v0

    :cond_2
    :goto_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public static synthetic updateSelection-SsL-Rf8$foundation$default(Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;Landroidx/compose/foundation/text/input/TextFieldCharSequence;IIZLandroidx/compose/foundation/text/selection/SelectionAdjustment;ZZILjava/lang/Object;)J
    .locals 1

    .line 1680
    and-int/lit8 p9, p8, 0x20

    const/4 v0, 0x0

    if-eqz p9, :cond_0

    .line 1686
    move p6, v0

    .line 1680
    :cond_0
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_1

    .line 1687
    move p7, v0

    .line 1680
    :cond_1
    invoke-virtual/range {p0 .. p7}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->updateSelection-SsL-Rf8$foundation(Landroidx/compose/foundation/text/input/TextFieldCharSequence;IIZLandroidx/compose/foundation/text/selection/SelectionAdjustment;ZZ)J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public final autofill()V
    .locals 1

    .line 1631
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->requestAutofillAction:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 1632
    :cond_0
    return-void
.end method

.method public final canShowAutofillMenuItem()Z
    .locals 2

    .line 1623
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->getEditable$foundation()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->textFieldState:Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->getVisualText()Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->getSelection-d9O1mEE()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final canShowCopyMenuItem()Z
    .locals 5

    .line 1473
    move-object v0, p0

    .local v0, "this_$iv":Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    const/4 v1, 0x0

    .line 2042
    .local v1, "$i$f$isCopyAllowed":I
    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->getTextFieldState$foundation()Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->getVisualText()Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->getSelection-d9O1mEE()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    invoke-static {v0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->access$isPassword$p(Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v4

    .line 1473
    .end local v0    # "this_$iv":Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    .end local v1    # "$i$f$isCopyAllowed":I
    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->clipboard:Landroidx/compose/ui/platform/Clipboard;

    invoke-static {v0}, Landroidx/compose/foundation/internal/ClipboardUtils_androidKt;->isWriteSupported(Landroidx/compose/ui/platform/Clipboard;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    return v3
.end method

.method public final canShowCutMenuItem()Z
    .locals 5

    .line 1430
    move-object v0, p0

    .local v0, "this_$iv":Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    const/4 v1, 0x0

    .line 2040
    .local v1, "$i$f$isCutAllowed":I
    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->getTextFieldState$foundation()Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->getVisualText()Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->getSelection-d9O1mEE()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->getEditable$foundation()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->access$isPassword$p(Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v4

    .line 1430
    .end local v0    # "this_$iv":Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    .end local v1    # "$i$f$isCutAllowed":I
    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->clipboard:Landroidx/compose/ui/platform/Clipboard;

    invoke-static {v0}, Landroidx/compose/foundation/internal/ClipboardUtils_androidKt;->isWriteSupported(Landroidx/compose/ui/platform/Clipboard;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    return v3
.end method

.method public final canShowPasteMenuItem()Z
    .locals 3

    .line 1528
    move-object v0, p0

    .local v0, "this_$iv":Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    const/4 v1, 0x0

    .line 2044
    .local v1, "$i$f$isPasteAllowed":I
    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->getEditable$foundation()Z

    move-result v0

    .line 1528
    .end local v0    # "this_$iv":Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    .end local v1    # "$i$f$isPasteAllowed":I
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->clipboard:Landroidx/compose/ui/platform/Clipboard;

    invoke-static {v0}, Landroidx/compose/foundation/internal/ClipboardUtils_androidKt;->isReadSupported(Landroidx/compose/ui/platform/Clipboard;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1530
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->clipboardPasteState:Landroidx/compose/foundation/text/input/internal/selection/ClipboardPasteState;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/selection/ClipboardPasteState;->getHasText()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 1532
    :cond_1
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->receiveContentConfiguration:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/content/internal/ReceiveContentConfiguration;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->clipboardPasteState:Landroidx/compose/foundation/text/input/internal/selection/ClipboardPasteState;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/selection/ClipboardPasteState;->getHasClip()Z

    move-result v0

    if-eqz v0, :cond_3

    move v1, v2

    :cond_3
    return v1

    .line 1528
    :cond_4
    :goto_1
    return v1
.end method

.method public final canShowSelectAllMenuItem()Z
    .locals 2

    .line 1607
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->textFieldState:Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->getVisualText()Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->getSelection-d9O1mEE()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getLength-impl(J)I

    move-result v0

    iget-object v1, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->textFieldState:Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->getVisualText()Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->length()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final clearHandleDragging()V
    .locals 2

    .line 1420
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->setDraggingHandle(Landroidx/compose/foundation/text/Handle;)V

    .line 1421
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->setRawHandleDragPosition-k-4lQ0M(J)V

    .line 1422
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->setStartTextLayoutPositionInWindow-k-4lQ0M(J)V

    .line 1423
    return-void
.end method

.method public final copy(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "cancelSelection"    # Z
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1495
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->copyWithResult$foundation(Z)Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 1496
    .local v0, "valueToCopy":Landroidx/compose/ui/text/AnnotatedString;
    :cond_0
    iget-object v1, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->clipboard:Landroidx/compose/ui/platform/Clipboard;

    invoke-static {v0}, Landroidx/compose/foundation/internal/ClipboardUtils_androidKt;->toClipEntry(Landroidx/compose/ui/text/AnnotatedString;)Landroidx/compose/ui/platform/ClipEntry;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Landroidx/compose/ui/platform/Clipboard;->setClipEntry(Landroidx/compose/ui/platform/ClipEntry;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_1

    return-object v1

    :cond_1
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1497
    return-object v1
.end method

.method public final copyWithResult$foundation(Z)Landroidx/compose/ui/text/AnnotatedString;
    .locals 5
    .param p1, "cancelSelection"    # Z

    .line 1507
    move-object v0, p0

    .local v0, "this_$iv":Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    const/4 v1, 0x0

    .line 2043
    .local v1, "$i$f$isCopyAllowed":I
    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->getTextFieldState$foundation()Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->getVisualText()Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->getSelection-d9O1mEE()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->access$isPassword$p(Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1507
    .end local v0    # "this_$iv":Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    .end local v1    # "$i$f$isCopyAllowed":I
    :goto_0
    const/4 v0, 0x0

    if-nez v2, :cond_1

    return-object v0

    .line 1508
    :cond_1
    iget-object v1, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->textFieldState:Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->getVisualText()Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/foundation/text/input/TextFieldCharSequenceKt;->getSelectedText(Landroidx/compose/foundation/text/input/TextFieldCharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1509
    .local v1, "selectedText":Ljava/lang/CharSequence;
    new-instance v2, Landroidx/compose/ui/text/AnnotatedString;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v2, v3, v0, v4, v0}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v0, v2

    .local v0, "it":Landroidx/compose/ui/text/AnnotatedString;
    const/4 v3, 0x0

    .line 1510
    .local v3, "$i$a$-also-TextFieldSelectionState$copyWithResult$1":I
    if-eqz p1, :cond_2

    iget-object v4, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->textFieldState:Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    invoke-virtual {v4}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->collapseSelectionToMax()V

    .line 1511
    :cond_2
    nop

    .line 1509
    .end local v0    # "it":Landroidx/compose/ui/text/AnnotatedString;
    .end local v3    # "$i$a$-also-TextFieldSelectionState$copyWithResult$1":I
    return-object v2
.end method

.method public final cursorHandleGestures(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p1, "$this$cursorHandleGestures"    # Landroidx/compose/ui/input/pointer/PointerInputScope;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/PointerInputScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 492
    new-instance v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$cursorHandleGestures$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$cursorHandleGestures$2;-><init>(Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, p2}, Lkotlinx/coroutines/CoroutineScopeKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 501
    return-object v0
.end method

.method public final cut(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1453
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->cutWithResult()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 1454
    .local v0, "cutValue":Landroidx/compose/ui/text/AnnotatedString;
    :cond_0
    iget-object v1, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->clipboard:Landroidx/compose/ui/platform/Clipboard;

    invoke-static {v0}, Landroidx/compose/foundation/internal/ClipboardUtils_androidKt;->toClipEntry(Landroidx/compose/ui/text/AnnotatedString;)Landroidx/compose/ui/platform/ClipEntry;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Landroidx/compose/ui/platform/Clipboard;->setClipEntry(Landroidx/compose/ui/platform/ClipEntry;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_1

    return-object v1

    :cond_1
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1455
    return-object v1
.end method

.method public final cutWithResult()Landroidx/compose/ui/text/AnnotatedString;
    .locals 5

    .line 1464
    move-object v0, p0

    .local v0, "this_$iv":Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    const/4 v1, 0x0

    .line 2041
    .local v1, "$i$f$isCutAllowed":I
    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->getTextFieldState$foundation()Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->getVisualText()Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->getSelection-d9O1mEE()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->getEditable$foundation()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->access$isPassword$p(Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1464
    .end local v0    # "this_$iv":Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    .end local v1    # "$i$f$isCutAllowed":I
    :goto_0
    const/4 v0, 0x0

    if-nez v2, :cond_1

    return-object v0

    .line 1465
    :cond_1
    iget-object v1, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->textFieldState:Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->getVisualText()Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/foundation/text/input/TextFieldCharSequenceKt;->getSelectedText(Landroidx/compose/foundation/text/input/TextFieldCharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1466
    .local v1, "selectedText":Ljava/lang/CharSequence;
    new-instance v2, Landroidx/compose/ui/text/AnnotatedString;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v2, v3, v0, v4, v0}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v0, v2

    .line 1978
    .local v0, "it":Landroidx/compose/ui/text/AnnotatedString;
    const/4 v3, 0x0

    .line 1466
    .local v3, "$i$a$-also-TextFieldSelectionState$cutWithResult$1":I
    iget-object v4, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->textFieldState:Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    invoke-virtual {v4}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->deleteSelectedText()V

    .end local v0    # "it":Landroidx/compose/ui/text/AnnotatedString;
    .end local v3    # "$i$a$-also-TextFieldSelectionState$cutWithResult$1":I
    return-object v2
.end method

.method public final deselect()V
    .locals 2

    .line 1650
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->textFieldState:Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->getVisualText()Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->getSelection-d9O1mEE()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1651
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->textFieldState:Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->collapseSelectionToEnd()V

    .line 1654
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->setShowCursorHandle(Z)V

    .line 1655
    sget-object v0, Landroidx/compose/foundation/text/input/internal/selection/TextToolbarState;->None:Landroidx/compose/foundation/text/input/internal/selection/TextToolbarState;

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->updateTextToolbarState(Landroidx/compose/foundation/text/input/internal/selection/TextToolbarState;)V

    .line 1656
    return-void
.end method

.method public final detectTextFieldTapGestures(Landroidx/compose/ui/input/pointer/PointerInputScope;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p1, "$this$detectTextFieldTapGestures"    # Landroidx/compose/ui/input/pointer/PointerInputScope;
    .param p2, "interactionSource"    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .param p3, "requestFocus"    # Lkotlin/jvm/functions/Function0;
    .param p4, "showKeyboard"    # Lkotlin/jvm/functions/Function0;
    .param p5, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/PointerInputScope;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 577
    nop

    .line 578
    nop

    .line 579
    nop

    .line 580
    nop

    .line 581
    nop

    .line 577
    invoke-static/range {p0 .. p5}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState_androidKt;->detectTextFieldTapGestures(Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;Landroidx/compose/ui/input/pointer/PointerInputScope;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 582
    return-object v0
.end method

.method public final detectTouchMode(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p1, "$this$detectTouchMode"    # Landroidx/compose/ui/input/pointer/PointerInputScope;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/PointerInputScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 564
    new-instance v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$detectTouchMode$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$detectTouchMode$2;-><init>(Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {p1, v0, p2}, Landroidx/compose/ui/input/pointer/PointerInputScope;->awaitPointerEventScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 570
    return-object v0
.end method

.method public final dispose()V
    .locals 1

    .line 554
    invoke-direct {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->hideTextToolbar()V

    .line 555
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->hapticFeedBack:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    .line 556
    return-void
.end method

.method public final getCursorHandleState$foundation(Z)Landroidx/compose/foundation/text/input/internal/selection/TextFieldHandleState;
    .locals 14
    .param p1, "includePosition"    # Z

    .line 297
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->textFieldState:Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->getVisualText()Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    move-result-object v0

    .line 298
    .local v0, "text":Landroidx/compose/foundation/text/input/TextFieldCharSequence;
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->getShowCursorHandle()Z

    move-result v1

    .line 299
    .local v1, "showCursorHandle":Z
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->getDirectDragGestureInitiator()Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$InputType;

    move-result-object v2

    sget-object v3, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$InputType;->None:Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$InputType;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v5

    .line 300
    .local v2, "notBeingDragged":Z
    :goto_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->getDraggingHandle()Landroidx/compose/foundation/text/Handle;

    move-result-object v3

    .line 303
    .local v3, "draggingHandle":Landroidx/compose/foundation/text/Handle;
    if-eqz v1, :cond_2

    .line 304
    if-eqz v2, :cond_2

    .line 305
    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->getSelection-d9O1mEE()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 306
    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->shouldShowSelection()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 307
    move-object v6, v0

    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_1

    move v6, v4

    goto :goto_1

    :cond_1
    move v6, v5

    :goto_1
    if-eqz v6, :cond_2

    .line 308
    sget-object v6, Landroidx/compose/foundation/text/Handle;->Cursor:Landroidx/compose/foundation/text/Handle;

    if-eq v3, v6, :cond_3

    invoke-direct {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->isCursorHandleInVisibleBounds()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    move v4, v5

    .line 302
    :cond_3
    :goto_2
    nop

    .line 310
    .local v4, "visible":Z
    if-nez v4, :cond_4

    sget-object v5, Landroidx/compose/foundation/text/input/internal/selection/TextFieldHandleState;->Companion:Landroidx/compose/foundation/text/input/internal/selection/TextFieldHandleState$Companion;

    invoke-virtual {v5}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldHandleState$Companion;->getHidden()Landroidx/compose/foundation/text/input/internal/selection/TextFieldHandleState;

    move-result-object v5

    return-object v5

    .line 314
    :cond_4
    const/4 v10, 0x0

    .line 317
    .local v10, "lineHeight":F
    new-instance v6, Landroidx/compose/foundation/text/input/internal/selection/TextFieldHandleState;

    .line 318
    nop

    .line 319
    if-eqz p1, :cond_5

    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->getCursorRect()Landroidx/compose/ui/geometry/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/ui/geometry/Rect;->getBottomCenter-F1C5BW0()J

    move-result-wide v7

    goto :goto_3

    :cond_5
    sget-object v5, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide v7

    :goto_3
    move-wide v8, v7

    .line 320
    nop

    .line 321
    sget-object v11, Landroidx/compose/ui/text/style/ResolvedTextDirection;->Ltr:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    .line 322
    nop

    .line 317
    const/4 v7, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v6 .. v13}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldHandleState;-><init>(ZJFLandroidx/compose/ui/text/style/ResolvedTextDirection;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6
.end method

.method public final getCursorRect()Landroidx/compose/ui/geometry/Rect;
    .locals 3

    .line 348
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->textLayoutState:Landroidx/compose/foundation/text/input/internal/TextLayoutState;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/TextLayoutState;->getLayoutResult()Landroidx/compose/ui/text/TextLayoutResult;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Landroidx/compose/ui/geometry/Rect;->Companion:Landroidx/compose/ui/geometry/Rect$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect$Companion;->getZero()Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    return-object v0

    .line 349
    .local v0, "layoutResult":Landroidx/compose/ui/text/TextLayoutResult;
    :cond_0
    iget-object v1, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->textFieldState:Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->getVisualText()Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    move-result-object v1

    .line 351
    .local v1, "value":Landroidx/compose/foundation/text/input/TextFieldCharSequence;
    invoke-direct {p0, v0, v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->calculateCursorRect(Landroidx/compose/ui/text/TextLayoutResult;Landroidx/compose/foundation/text/input/TextFieldCharSequence;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v2

    return-object v2
.end method

.method public final getDerivedVisibleContentBounds$foundation()Landroidx/compose/ui/geometry/Rect;
    .locals 4

    .line 1252
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->derivedVisibleContentBounds$delegate:Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "thisObj$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 2011
    .local v3, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "thisObj$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Landroidx/compose/ui/geometry/Rect;

    .line 1252
    return-object v0
.end method

.method public final getDirectDragGestureInitiator()Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$InputType;
    .locals 4

    .line 243
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->directDragGestureInitiator$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "thisObj$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 1966
    .local v3, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "thisObj$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$InputType;

    .line 243
    return-object v0
.end method

.method public final getDraggingHandle()Landroidx/compose/foundation/text/Handle;
    .locals 4

    .line 230
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->draggingHandle$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "thisObj$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 1963
    .local v3, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "thisObj$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Landroidx/compose/foundation/text/Handle;

    .line 230
    return-object v0
.end method

.method public final getEditable$foundation()Z
    .locals 1

    .line 264
    iget-boolean v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->enabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->readOnly:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getEnabled()Z
    .locals 1

    .line 149
    iget-boolean v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->enabled:Z

    return v0
.end method

.method public final getFocusRect()Landroidx/compose/ui/geometry/Rect;
    .locals 4

    .line 364
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->textLayoutState:Landroidx/compose/foundation/text/input/internal/TextLayoutState;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/TextLayoutState;->getLayoutResult()Landroidx/compose/ui/text/TextLayoutResult;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Landroidx/compose/ui/geometry/Rect;->Companion:Landroidx/compose/ui/geometry/Rect$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect$Companion;->getZero()Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    return-object v0

    .line 366
    .local v0, "layoutResult":Landroidx/compose/ui/text/TextLayoutResult;
    :cond_0
    iget-boolean v1, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->isFocused:Z

    if-nez v1, :cond_1

    sget-object v1, Landroidx/compose/ui/focus/FocusProperties;->Companion:Landroidx/compose/ui/focus/FocusProperties$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/focus/FocusProperties$Companion;->getUnsetFocusRect()Landroidx/compose/ui/geometry/Rect;

    move-result-object v1

    return-object v1

    .line 367
    :cond_1
    iget-object v1, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->textFieldState:Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->getVisualText()Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    move-result-object v1

    .line 370
    .local v1, "value":Landroidx/compose/foundation/text/input/TextFieldCharSequence;
    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->getSelection-d9O1mEE()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 371
    invoke-direct {p0, v0, v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->calculateCursorRect(Landroidx/compose/ui/text/TextLayoutResult;Landroidx/compose/foundation/text/input/TextFieldCharSequence;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v2

    goto :goto_0

    .line 373
    :cond_2
    invoke-direct {p0, v0, v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->calculateSelectionRect(Landroidx/compose/ui/text/TextLayoutResult;Landroidx/compose/foundation/text/input/TextFieldCharSequence;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v2

    .line 370
    :goto_0
    nop

    .line 369
    nop

    .line 376
    .local v2, "focusRectInTextLayout":Landroidx/compose/ui/geometry/Rect;
    iget-object v3, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->textLayoutState:Landroidx/compose/foundation/text/input/internal/TextLayoutState;

    invoke-static {v3, v2}, Landroidx/compose/foundation/text/input/internal/TextLayoutStateKt;->fromTextLayoutToDecoration(Landroidx/compose/foundation/text/input/internal/TextLayoutState;Landroidx/compose/ui/geometry/Rect;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v3

    return-object v3
.end method

.method public final getHandleDragPosition-F1C5BW0()J
    .locals 10

    .line 211
    nop

    .line 213
    invoke-direct {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->getRawHandleDragPosition-F1C5BW0()J

    move-result-wide v0

    .local v0, "$v$c$androidx-compose-ui-geometry-Offset$-$this$isUnspecified$0$iv":J
    const/4 v2, 0x0

    .line 1961
    .local v2, "$i$f$isUnspecified-k-4lQ0M":I
    const-wide v3, 0x7fffffff7fffffffL

    and-long v5, v0, v3

    const-wide v7, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long v5, v5, v7

    const/4 v6, 0x1

    const/4 v9, 0x0

    if-nez v5, :cond_0

    move v0, v6

    goto :goto_0

    :cond_0
    move v0, v9

    .line 213
    .end local v0    # "$v$c$androidx-compose-ui-geometry-Offset$-$this$isUnspecified$0$iv":J
    .end local v2    # "$i$f$isUnspecified-k-4lQ0M":I
    :goto_0
    if-eqz v0, :cond_1

    .line 214
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide v0

    goto :goto_2

    .line 218
    :cond_1
    invoke-direct {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->getStartTextLayoutPositionInWindow-F1C5BW0()J

    move-result-wide v0

    .restart local v0    # "$v$c$androidx-compose-ui-geometry-Offset$-$this$isUnspecified$0$iv":J
    const/4 v2, 0x0

    .line 1962
    .restart local v2    # "$i$f$isUnspecified-k-4lQ0M":I
    and-long/2addr v3, v0

    cmp-long v3, v3, v7

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    move v6, v9

    .line 218
    .end local v0    # "$v$c$androidx-compose-ui-geometry-Offset$-$this$isUnspecified$0$iv":J
    .end local v2    # "$i$f$isUnspecified-k-4lQ0M":I
    :goto_1
    if-eqz v6, :cond_3

    .line 219
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->textLayoutState:Landroidx/compose/foundation/text/input/internal/TextLayoutState;

    invoke-direct {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->getRawHandleDragPosition-F1C5BW0()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroidx/compose/foundation/text/input/internal/TextLayoutStateKt;->fromDecorationToTextLayout-Uv8p0NA(Landroidx/compose/foundation/text/input/internal/TextLayoutState;J)J

    move-result-wide v0

    goto :goto_2

    .line 224
    :cond_3
    invoke-direct {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->getRawHandleDragPosition-F1C5BW0()J

    move-result-wide v0

    .line 225
    invoke-direct {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->getStartTextLayoutPositionInWindow-F1C5BW0()J

    move-result-wide v2

    invoke-direct {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->getCurrentTextLayoutPositionInWindow-F1C5BW0()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v2

    .line 224
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide v0

    .line 227
    :goto_2
    return-wide v0
.end method

.method public final getHapticFeedBack()Landroidx/compose/ui/hapticfeedback/HapticFeedback;
    .locals 1

    .line 156
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->hapticFeedBack:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    return-object v0
.end method

.method public final getPlatformSelectionBehaviors$foundation()Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors;
    .locals 1

    .line 146
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->platformSelectionBehaviors:Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors;

    return-object v0
.end method

.method public final getPressInteraction()Landroidx/compose/foundation/interaction/PressInteraction$Press;
    .locals 1

    .line 279
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->pressInteraction:Landroidx/compose/foundation/interaction/PressInteraction$Press;

    return-object v0
.end method

.method public final getReadOnly()Z
    .locals 1

    .line 152
    iget-boolean v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->readOnly:Z

    return v0
.end method

.method public final getReceiveContentConfiguration()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Landroidx/compose/foundation/content/internal/ReceiveContentConfiguration;",
            ">;"
        }
    .end annotation

    .line 171
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->receiveContentConfiguration:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getRequestAutofillAction()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->requestAutofillAction:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getSelectionHandleState$foundation(ZZ)Landroidx/compose/foundation/text/input/internal/selection/TextFieldHandleState;
    .locals 18
    .param p1, "isStartHandle"    # Z
    .param p2, "includePosition"    # Z

    .line 1337
    move-object/from16 v0, p0

    if-eqz p1, :cond_0

    sget-object v1, Landroidx/compose/foundation/text/Handle;->SelectionStart:Landroidx/compose/foundation/text/Handle;

    goto :goto_0

    :cond_0
    sget-object v1, Landroidx/compose/foundation/text/Handle;->SelectionEnd:Landroidx/compose/foundation/text/Handle;

    .line 1339
    .local v1, "handle":Landroidx/compose/foundation/text/Handle;
    :goto_0
    iget-object v2, v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->textLayoutState:Landroidx/compose/foundation/text/input/internal/TextLayoutState;

    invoke-virtual {v2}, Landroidx/compose/foundation/text/input/internal/TextLayoutState;->getLayoutResult()Landroidx/compose/ui/text/TextLayoutResult;

    move-result-object v2

    if-nez v2, :cond_1

    sget-object v2, Landroidx/compose/foundation/text/input/internal/selection/TextFieldHandleState;->Companion:Landroidx/compose/foundation/text/input/internal/selection/TextFieldHandleState$Companion;

    invoke-virtual {v2}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldHandleState$Companion;->getHidden()Landroidx/compose/foundation/text/input/internal/selection/TextFieldHandleState;

    move-result-object v2

    return-object v2

    .line 1341
    .local v2, "layoutResult":Landroidx/compose/ui/text/TextLayoutResult;
    :cond_1
    iget-object v3, v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->textFieldState:Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    invoke-virtual {v3}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->getVisualText()Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->getSelection-d9O1mEE()J

    move-result-wide v3

    .line 1343
    .local v3, "selection":J
    invoke-static {v3, v4}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Landroidx/compose/foundation/text/input/internal/selection/TextFieldHandleState;->Companion:Landroidx/compose/foundation/text/input/internal/selection/TextFieldHandleState$Companion;

    invoke-virtual {v5}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldHandleState$Companion;->getHidden()Landroidx/compose/foundation/text/input/internal/selection/TextFieldHandleState;

    move-result-object v5

    return-object v5

    .line 1345
    :cond_2
    invoke-direct/range {p0 .. p1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->getHandlePosition-tuRUvjQ(Z)J

    move-result-wide v5

    .line 1348
    .local v5, "position":J
    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->getDirectDragGestureInitiator()Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$InputType;

    move-result-object v7

    sget-object v8, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$InputType;->None:Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$InputType;

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-ne v7, v8, :cond_5

    .line 1349
    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->getDraggingHandle()Landroidx/compose/foundation/text/Handle;

    move-result-object v7

    if-eq v7, v1, :cond_4

    .line 1350
    invoke-direct {v0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->getTextLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-static {v7}, Landroidx/compose/foundation/text/selection/SelectionManagerKt;->visibleBounds(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-static {v7, v5, v6}, Landroidx/compose/foundation/text/selection/SelectionManagerKt;->containsInclusive-Uv8p0NA(Landroidx/compose/ui/geometry/Rect;J)Z

    move-result v7

    goto :goto_1

    :cond_3
    move v7, v10

    :goto_1
    if-eqz v7, :cond_5

    :cond_4
    move v7, v9

    goto :goto_2

    :cond_5
    move v7, v10

    .line 1347
    :goto_2
    nop

    .line 1352
    .local v7, "visible":Z
    if-nez v7, :cond_6

    sget-object v8, Landroidx/compose/foundation/text/input/internal/selection/TextFieldHandleState;->Companion:Landroidx/compose/foundation/text/input/internal/selection/TextFieldHandleState$Companion;

    invoke-virtual {v8}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldHandleState$Companion;->getHidden()Landroidx/compose/foundation/text/input/internal/selection/TextFieldHandleState;

    move-result-object v8

    return-object v8

    .line 1354
    :cond_6
    iget-object v8, v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->textFieldState:Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    invoke-virtual {v8}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->getVisualText()Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->shouldShowSelection()Z

    move-result v8

    if-nez v8, :cond_7

    sget-object v8, Landroidx/compose/foundation/text/input/internal/selection/TextFieldHandleState;->Companion:Landroidx/compose/foundation/text/input/internal/selection/TextFieldHandleState$Companion;

    invoke-virtual {v8}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldHandleState$Companion;->getHidden()Landroidx/compose/foundation/text/input/internal/selection/TextFieldHandleState;

    move-result-object v8

    return-object v8

    .line 1356
    :cond_7
    if-eqz p1, :cond_8

    invoke-static {v3, v4}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v8

    goto :goto_3

    :cond_8
    invoke-static {v3, v4}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v8

    sub-int/2addr v8, v9

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1357
    .local v8, "directionOffset":I
    :goto_3
    invoke-virtual {v2, v8}, Landroidx/compose/ui/text/TextLayoutResult;->getBidiRunDirection(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;

    move-result-object v14

    .line 1358
    .local v14, "direction":Landroidx/compose/ui/text/style/ResolvedTextDirection;
    invoke-static {v3, v4}, Landroidx/compose/ui/text/TextRange;->getReversed-impl(J)Z

    move-result v15

    .line 1365
    .local v15, "handlesCrossed":Z
    if-eqz p2, :cond_a

    .line 1366
    invoke-direct {v0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->getTextLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v9

    if-eqz v9, :cond_9

    invoke-static {v9}, Landroidx/compose/foundation/text/selection/SelectionManagerKt;->visibleBounds(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v9

    if-eqz v9, :cond_9

    .line 1978
    .local v9, "it":Landroidx/compose/ui/geometry/Rect;
    const/4 v10, 0x0

    .line 1366
    .local v10, "$i$a$-let-TextFieldSelectionState$getSelectionHandleState$coercedPosition$1":I
    invoke-static {v5, v6, v9}, Landroidx/compose/foundation/text/input/internal/TextLayoutStateKt;->coerceIn-3MmeM6k(JLandroidx/compose/ui/geometry/Rect;)J

    move-result-wide v9

    move-wide v11, v9

    .end local v9    # "it":Landroidx/compose/ui/geometry/Rect;
    .end local v10    # "$i$a$-let-TextFieldSelectionState$getSelectionHandleState$coercedPosition$1":I
    goto :goto_4

    :cond_9
    move-wide v11, v5

    goto :goto_4

    .line 1368
    :cond_a
    sget-object v9, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide v9

    move-wide v11, v9

    .line 1365
    :goto_4
    nop

    .line 1364
    nop

    .line 1370
    .local v11, "coercedPosition":J
    if-eqz p1, :cond_b

    invoke-static {v3, v4}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v9

    goto :goto_5

    :cond_b
    invoke-static {v3, v4}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v9

    .line 1371
    .local v9, "handleOffset":I
    :goto_5
    new-instance v10, Landroidx/compose/foundation/text/input/internal/selection/TextFieldHandleState;

    .line 1372
    nop

    .line 1373
    nop

    .line 1374
    invoke-static {v2, v9}, Landroidx/compose/foundation/text/TextLayoutHelperKt;->getLineHeight(Landroidx/compose/ui/text/TextLayoutResult;I)F

    move-result v13

    .line 1375
    nop

    .line 1376
    nop

    .line 1371
    move/from16 v16, v9

    move-object v9, v10

    .end local v9    # "handleOffset":I
    .local v16, "handleOffset":I
    const/4 v10, 0x1

    move/from16 v17, v16

    .end local v16    # "handleOffset":I
    .local v17, "handleOffset":I
    const/16 v16, 0x0

    invoke-direct/range {v9 .. v16}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldHandleState;-><init>(ZJFLandroidx/compose/ui/text/style/ResolvedTextDirection;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v9
.end method

.method public final getShowCursorHandle()Z
    .locals 4

    .line 246
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->showCursorHandle$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "thisObj$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 1969
    .local v3, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "thisObj$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 246
    return v0
.end method

.method public final getTextFieldState$foundation()Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;
    .locals 1

    .line 137
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->textFieldState:Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    return-object v0
.end method

.method public final getTextLayoutState$foundation()Landroidx/compose/foundation/text/input/internal/TextLayoutState;
    .locals 1

    .line 138
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->textLayoutState:Landroidx/compose/foundation/text/input/internal/TextLayoutState;

    return-object v0
.end method

.method public final getTextToolbarShown()Z
    .locals 4

    .line 255
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->textToolbarShown$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "thisObj$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 1975
    .local v3, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "thisObj$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 255
    return v0
.end method

.method public final isCopyAllowed()Z
    .locals 3

    const/4 v0, 0x0

    .line 1484
    .local v0, "$i$f$isCopyAllowed":I
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->getTextFieldState$foundation()Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->getVisualText()Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->getSelection-d9O1mEE()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->access$isPassword$p(Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final isCutAllowed()Z
    .locals 3

    const/4 v0, 0x0

    .line 1443
    .local v0, "$i$f$isCutAllowed":I
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->getTextFieldState$foundation()Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->getVisualText()Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->getSelection-d9O1mEE()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->getEditable$foundation()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->access$isPassword$p(Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final isFocused()Z
    .locals 1

    .line 142
    iget-boolean v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->isFocused:Z

    return v0
.end method

.method public final isInTouchMode()Z
    .locals 4

    .line 162
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->isInTouchMode$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "thisObj$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 1952
    .local v3, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "thisObj$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 162
    return v0
.end method

.method public final isPasteAllowed()Z
    .locals 2

    const/4 v0, 0x0

    .line 1540
    .local v0, "$i$f$isPasteAllowed":I
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->getEditable$foundation()Z

    move-result v1

    return v1
.end method

.method public final maybeSuggestSelectionRange()V
    .locals 12

    .line 1089
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->platformSelectionBehaviors:Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors;

    if-nez v0, :cond_0

    return-void

    .line 1088
    :cond_0
    move-object v2, v0

    .line 1090
    .local v2, "platformSelectionBehaviors":Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors;
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->textFieldState:Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->getVisualText()Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 1091
    .local v3, "text":Ljava/lang/CharSequence;
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->textFieldState:Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->getVisualText()Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->getSelection-d9O1mEE()J

    move-result-wide v4

    .line 1092
    .local v4, "selection":J
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-static {v4, v5}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1093
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    sget-object v8, Lkotlinx/coroutines/CoroutineStart;->UNDISPATCHED:Lkotlinx/coroutines/CoroutineStart;

    new-instance v1, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$maybeSuggestSelectionRange$1;

    const/4 v7, 0x0

    move-object v6, p0

    invoke-direct/range {v1 .. v7}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$maybeSuggestSelectionRange$1;-><init>(Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors;Ljava/lang/CharSequence;JLandroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;Lkotlin/coroutines/Continuation;)V

    move-object v9, v1

    check-cast v9, Lkotlin/jvm/functions/Function2;

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v6, v0

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 1116
    :cond_2
    return-void
.end method

.method public final onPasteEvent$foundation(Landroidx/compose/ui/text/AnnotatedString;)V
    .locals 8
    .param p1, "value"    # Landroidx/compose/ui/text/AnnotatedString;

    .line 1595
    move-object v0, p0

    .local v0, "this_$iv":Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    const/4 v1, 0x0

    .line 2045
    .local v1, "$i$f$isPasteAllowed":I
    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->getEditable$foundation()Z

    move-result v0

    .line 1595
    .end local v0    # "this_$iv":Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    .end local v1    # "$i$f$isPasteAllowed":I
    if-nez v0, :cond_0

    return-void

    .line 1596
    :cond_0
    iget-object v1, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->textFieldState:Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    .line 1597
    invoke-virtual {p1}, Landroidx/compose/ui/text/AnnotatedString;->getText()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    .line 1596
    nop

    .line 1598
    sget-object v4, Landroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;->NeverMerge:Landroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;

    .line 1596
    const/16 v6, 0xa

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->replaceSelectedText$default(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Ljava/lang/CharSequence;ZLandroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;ZILjava/lang/Object;)V

    .line 1600
    return-void
.end method

.method public final paste(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$paste$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$paste$1;

    iget v1, v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$paste$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$paste$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$paste$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$paste$1;

    invoke-direct {v0, p0, p1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$paste$1;-><init>(Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$paste$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 1542
    iget v3, v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$paste$1;->label:I

    packed-switch v3, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_1
    move-object v3, p0

    .local v3, "this":Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    iget-object v4, v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$paste$1;->L$0:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/foundation/content/internal/ReceiveContentConfiguration;

    .local v4, "receiveContentConfiguration":Landroidx/compose/foundation/content/internal/ReceiveContentConfiguration;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, v1

    goto :goto_1

    .end local v3    # "this":Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    .end local v4    # "receiveContentConfiguration":Landroidx/compose/foundation/content/internal/ReceiveContentConfiguration;
    :pswitch_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_3
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, p0

    .line 1544
    .restart local v3    # "this":Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    iget-object v4, v3, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->receiveContentConfiguration:Lkotlin/jvm/functions/Function0;

    if-eqz v4, :cond_6

    invoke-interface {v4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/foundation/content/internal/ReceiveContentConfiguration;

    if-nez v4, :cond_1

    goto :goto_3

    .line 1543
    :cond_1
    nop

    .line 1546
    .restart local v4    # "receiveContentConfiguration":Landroidx/compose/foundation/content/internal/ReceiveContentConfiguration;
    iget-object v5, v3, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->clipboard:Landroidx/compose/ui/platform/Clipboard;

    iput-object v4, v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$paste$1;->L$0:Ljava/lang/Object;

    const/4 v6, 0x2

    iput v6, v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$paste$1;->label:I

    invoke-interface {v5, v0}, Landroidx/compose/ui/platform/Clipboard;->getClipEntry(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v2, :cond_2

    .line 1542
    .end local v3    # "this":Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    return-object v2

    .line 1546
    .restart local v3    # "this":Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    :cond_2
    :goto_1
    check-cast v5, Landroidx/compose/ui/platform/ClipEntry;

    if-nez v5, :cond_4

    .end local v3    # "this":Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    .end local v4    # "receiveContentConfiguration":Landroidx/compose/foundation/content/internal/ReceiveContentConfiguration;
    const/4 v4, 0x0

    iput-object v4, v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$paste$1;->L$0:Ljava/lang/Object;

    const/4 v4, 0x3

    iput v4, v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$paste$1;->label:I

    invoke-direct {v3, v0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->pasteAsPlainText(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_3

    .line 1542
    return-object v2

    .line 1547
    :cond_3
    :goto_2
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2

    .restart local v3    # "this":Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    .restart local v4    # "receiveContentConfiguration":Landroidx/compose/foundation/content/internal/ReceiveContentConfiguration;
    :cond_4
    nop

    .local v5, "clipEntry":Landroidx/compose/ui/platform/ClipEntry;
    invoke-virtual {v5}, Landroidx/compose/ui/platform/ClipEntry;->getClipMetadata()Landroidx/compose/ui/platform/ClipMetadata;

    move-result-object v6

    .line 1550
    .local v6, "clipMetadata":Landroidx/compose/ui/platform/ClipMetadata;
    invoke-virtual {v4}, Landroidx/compose/foundation/content/internal/ReceiveContentConfiguration;->getReceiveContentListener()Landroidx/compose/foundation/content/ReceiveContentListener;

    move-result-object v2

    .line 1553
    .end local v4    # "receiveContentConfiguration":Landroidx/compose/foundation/content/internal/ReceiveContentConfiguration;
    sget-object v4, Landroidx/compose/foundation/content/TransferableContent$Source;->Companion:Landroidx/compose/foundation/content/TransferableContent$Source$Companion;

    invoke-virtual {v4}, Landroidx/compose/foundation/content/TransferableContent$Source$Companion;->getClipboard-kB6V9T0()I

    move-result v7

    .line 1551
    new-instance v4, Landroidx/compose/foundation/content/TransferableContent;

    .line 1552
    nop

    .line 1554
    .end local v5    # "clipEntry":Landroidx/compose/ui/platform/ClipEntry;
    nop

    .line 1553
    .end local v6    # "clipMetadata":Landroidx/compose/ui/platform/ClipMetadata;
    nop

    .line 1551
    const/16 v9, 0x8

    const/4 v10, 0x0

    const/4 v8, 0x0

    .restart local v5    # "clipEntry":Landroidx/compose/ui/platform/ClipEntry;
    .restart local v6    # "clipMetadata":Landroidx/compose/ui/platform/ClipMetadata;
    invoke-direct/range {v4 .. v10}, Landroidx/compose/foundation/content/TransferableContent;-><init>(Landroidx/compose/ui/platform/ClipEntry;Landroidx/compose/ui/platform/ClipMetadata;ILandroidx/compose/foundation/content/PlatformTransferableContent;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1550
    .end local v5    # "clipEntry":Landroidx/compose/ui/platform/ClipEntry;
    .end local v6    # "clipMetadata":Landroidx/compose/ui/platform/ClipMetadata;
    invoke-interface {v2, v4}, Landroidx/compose/foundation/content/ReceiveContentListener;->onReceive(Landroidx/compose/foundation/content/TransferableContent;)Landroidx/compose/foundation/content/TransferableContent;

    move-result-object v2

    .line 1549
    nop

    .line 1560
    .local v2, "remaining":Landroidx/compose/foundation/content/TransferableContent;
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroidx/compose/foundation/content/TransferableContent;->getClipEntry()Landroidx/compose/ui/platform/ClipEntry;

    move-result-object v2

    .end local v2    # "remaining":Landroidx/compose/foundation/content/TransferableContent;
    if-eqz v2, :cond_5

    invoke-static {v2}, Landroidx/compose/foundation/content/TransferableContent_androidKt;->readPlainText(Landroidx/compose/ui/platform/ClipEntry;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .local v2, "clipboardText":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1561
    .local v4, "$i$a$-let-TextFieldSelectionState$paste$2":I
    iget-object v5, v3, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->textFieldState:Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    .line 1562
    .end local v3    # "this":Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    move-object v6, v2

    check-cast v6, Ljava/lang/CharSequence;

    .line 1561
    nop

    .line 1563
    sget-object v8, Landroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;->NeverMerge:Landroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;

    .line 1561
    const/16 v10, 0xa

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static/range {v5 .. v11}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->replaceSelectedText$default(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Ljava/lang/CharSequence;ZLandroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;ZILjava/lang/Object;)V

    .line 1565
    nop

    .line 1560
    .end local v2    # "clipboardText":Ljava/lang/String;
    .end local v4    # "$i$a$-let-TextFieldSelectionState$paste$2":I
    :cond_5
    nop

    .line 1566
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2

    .line 1544
    .restart local v3    # "this":Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    :cond_6
    :goto_3
    const/4 v4, 0x1

    iput v4, v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$paste$1;->label:I

    invoke-direct {v3, v0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->pasteAsPlainText(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "this":Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    if-ne v3, v2, :cond_7

    .line 1542
    return-object v2

    .line 1543
    :cond_7
    :goto_4
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final placeCursorAtNearestOffset-k-4lQ0M(J)Z
    .locals 24
    .param p1, "$v$c$androidx-compose-ui-geometry-Offset$-offset$0"    # J

    .line 598
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    iget-object v3, v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->textLayoutState:Landroidx/compose/foundation/text/input/internal/TextLayoutState;

    invoke-virtual {v3}, Landroidx/compose/foundation/text/input/internal/TextLayoutState;->getLayoutResult()Landroidx/compose/ui/text/TextLayoutResult;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return v4

    .line 601
    .local v3, "layoutResult":Landroidx/compose/ui/text/TextLayoutResult;
    :cond_0
    invoke-virtual {v3, v1, v2}, Landroidx/compose/ui/text/TextLayoutResult;->getOffsetForPosition-k-4lQ0M(J)I

    move-result v5

    .line 602
    .local v5, "index":I
    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    return v4

    .line 607
    :cond_1
    const/4 v6, 0x0

    .line 609
    .local v6, "newAffinity":Ljava/lang/Object;
    iget-object v7, v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->textFieldState:Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    .local v7, "$this$getIndexTransformationType$iv":Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;
    move v8, v5

    .local v8, "transformedQueryIndex$iv":I
    const/4 v9, 0x0

    .line 1988
    .local v9, "$i$f$getIndexTransformationType":I
    invoke-virtual {v7, v8}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->mapFromTransformed--jx7JFs(I)J

    move-result-wide v10

    .line 1989
    .local v10, "untransformed$iv":J
    invoke-virtual {v7, v10, v11}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->mapToTransformed-GEjPoXI(J)J

    move-result-wide v12

    .line 1991
    .local v12, "retransformed$iv":J
    nop

    .line 1992
    invoke-static {v10, v11}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-static {v12, v13}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 1994
    sget-object v14, Landroidx/compose/foundation/text/input/internal/IndexTransformationType;->Untransformed:Landroidx/compose/foundation/text/input/internal/IndexTransformationType;

    goto :goto_0

    .line 1996
    :cond_2
    invoke-static {v10, v11}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v14

    if-nez v14, :cond_3

    invoke-static {v12, v13}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v14

    if-nez v14, :cond_3

    .line 1999
    sget-object v14, Landroidx/compose/foundation/text/input/internal/IndexTransformationType;->Replacement:Landroidx/compose/foundation/text/input/internal/IndexTransformationType;

    goto :goto_0

    .line 2001
    :cond_3
    invoke-static {v10, v11}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-static {v12, v13}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v14

    if-nez v14, :cond_4

    .line 2003
    sget-object v14, Landroidx/compose/foundation/text/input/internal/IndexTransformationType;->Insertion:Landroidx/compose/foundation/text/input/internal/IndexTransformationType;

    goto :goto_0

    .line 2007
    :cond_4
    sget-object v14, Landroidx/compose/foundation/text/input/internal/IndexTransformationType;->Deletion:Landroidx/compose/foundation/text/input/internal/IndexTransformationType;

    .line 1991
    :goto_0
    nop

    .line 1990
    nop

    .line 2010
    .local v14, "type$iv":Landroidx/compose/foundation/text/input/internal/IndexTransformationType;
    move-object v15, v14

    .local v15, "type":Landroidx/compose/foundation/text/input/internal/IndexTransformationType;
    move-wide/from16 v16, v12

    .local v16, "retransformed":J
    move-wide/from16 v18, v10

    .local v18, "untransformed":J
    const/16 v20, 0x0

    .line 610
    .local v20, "$i$a$-getIndexTransformationType-TextFieldSelectionState$placeCursorAtNearestOffset$untransformedCursor$1":I
    sget-object v21, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v15}, Landroidx/compose/foundation/text/input/internal/IndexTransformationType;->ordinal()I

    move-result v22

    aget v21, v21, v22

    packed-switch v21, :pswitch_data_0

    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    .line 636
    :pswitch_0
    move/from16 v21, v4

    invoke-static/range {v16 .. v17}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/compose/ui/text/TextLayoutResult;->getCursorRect(I)Landroidx/compose/ui/geometry/Rect;

    move-result-object v4

    .line 637
    .local v4, "wedgeStartCursorRect":Landroidx/compose/ui/geometry/Rect;
    move/from16 v22, v5

    .end local v5    # "index":I
    .local v22, "index":I
    invoke-static/range {v16 .. v17}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v5

    invoke-virtual {v3, v5}, Landroidx/compose/ui/text/TextLayoutResult;->getCursorRect(I)Landroidx/compose/ui/geometry/Rect;

    move-result-object v5

    .line 638
    .local v5, "wedgeEndCursorRect":Landroidx/compose/ui/geometry/Rect;
    invoke-static {v1, v2, v4, v5}, Landroidx/compose/foundation/text/input/internal/MathUtilsKt;->findClosestRect-9KIMszo(JLandroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;)I

    move-result v23

    if-gez v23, :cond_5

    .line 639
    invoke-static/range {v18 .. v19}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v23

    goto :goto_2

    .line 641
    :cond_5
    invoke-static/range {v18 .. v19}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v23

    .end local v4    # "wedgeStartCursorRect":Landroidx/compose/ui/geometry/Rect;
    .end local v5    # "wedgeEndCursorRect":Landroidx/compose/ui/geometry/Rect;
    goto :goto_2

    .line 620
    .end local v22    # "index":I
    .local v5, "index":I
    :pswitch_1
    move/from16 v21, v4

    move/from16 v22, v5

    .end local v5    # "index":I
    .restart local v22    # "index":I
    invoke-static/range {v16 .. v17}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/compose/ui/text/TextLayoutResult;->getCursorRect(I)Landroidx/compose/ui/geometry/Rect;

    move-result-object v4

    .line 621
    .restart local v4    # "wedgeStartCursorRect":Landroidx/compose/ui/geometry/Rect;
    invoke-static/range {v16 .. v17}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v5

    invoke-virtual {v3, v5}, Landroidx/compose/ui/text/TextLayoutResult;->getCursorRect(I)Landroidx/compose/ui/geometry/Rect;

    move-result-object v5

    .line 622
    .local v5, "wedgeEndCursorRect":Landroidx/compose/ui/geometry/Rect;
    nop

    .line 623
    nop

    .line 624
    invoke-static {v1, v2, v4, v5}, Landroidx/compose/foundation/text/input/internal/MathUtilsKt;->findClosestRect-9KIMszo(JLandroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;)I

    move-result v23

    if-gez v23, :cond_6

    .line 626
    new-instance v1, Landroidx/compose/foundation/text/input/internal/SelectionWedgeAffinity;

    sget-object v2, Landroidx/compose/foundation/text/input/internal/WedgeAffinity;->Start:Landroidx/compose/foundation/text/input/internal/WedgeAffinity;

    invoke-direct {v1, v2}, Landroidx/compose/foundation/text/input/internal/SelectionWedgeAffinity;-><init>(Landroidx/compose/foundation/text/input/internal/WedgeAffinity;)V

    goto :goto_1

    .line 628
    :cond_6
    new-instance v1, Landroidx/compose/foundation/text/input/internal/SelectionWedgeAffinity;

    sget-object v2, Landroidx/compose/foundation/text/input/internal/WedgeAffinity;->End:Landroidx/compose/foundation/text/input/internal/WedgeAffinity;

    invoke-direct {v1, v2}, Landroidx/compose/foundation/text/input/internal/SelectionWedgeAffinity;-><init>(Landroidx/compose/foundation/text/input/internal/WedgeAffinity;)V

    .line 622
    :goto_1
    move-object v6, v1

    .line 630
    invoke-static/range {v18 .. v19}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v23

    .end local v4    # "wedgeStartCursorRect":Landroidx/compose/ui/geometry/Rect;
    .end local v5    # "wedgeEndCursorRect":Landroidx/compose/ui/geometry/Rect;
    goto :goto_2

    .line 615
    .end local v22    # "index":I
    .local v5, "index":I
    :pswitch_2
    move/from16 v21, v4

    move/from16 v22, v5

    .end local v5    # "index":I
    .restart local v22    # "index":I
    invoke-static/range {v18 .. v19}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v23

    goto :goto_2

    .line 611
    .end local v22    # "index":I
    .restart local v5    # "index":I
    :pswitch_3
    move/from16 v21, v4

    move/from16 v22, v5

    .end local v5    # "index":I
    .restart local v22    # "index":I
    invoke-static/range {v18 .. v19}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v23

    .line 644
    :goto_2
    nop

    .line 2010
    .end local v15    # "type":Landroidx/compose/foundation/text/input/internal/IndexTransformationType;
    .end local v16    # "retransformed":J
    .end local v18    # "untransformed":J
    .end local v20    # "$i$a$-getIndexTransformationType-TextFieldSelectionState$placeCursorAtNearestOffset$untransformedCursor$1":I
    nop

    .line 609
    .end local v7    # "$this$getIndexTransformationType$iv":Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;
    .end local v8    # "transformedQueryIndex$iv":I
    .end local v9    # "$i$f$getIndexTransformationType":I
    .end local v10    # "untransformed$iv":J
    .end local v12    # "retransformed$iv":J
    .end local v14    # "type$iv":Landroidx/compose/foundation/text/input/internal/IndexTransformationType;
    nop

    .line 608
    nop

    .line 646
    .local v23, "untransformedCursor":I
    invoke-static/range {v23 .. v23}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(I)J

    move-result-wide v1

    .line 649
    .local v1, "untransformedCursorRange":J
    nop

    .line 650
    iget-object v4, v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->textFieldState:Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    invoke-virtual {v4}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->getUntransformedText()Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->getSelection-d9O1mEE()J

    move-result-wide v4

    invoke-static {v1, v2, v4, v5}, Landroidx/compose/ui/text/TextRange;->equals-impl0(JJ)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 651
    if-eqz v6, :cond_7

    iget-object v4, v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->textFieldState:Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    invoke-virtual {v4}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->getSelectionWedgeAffinity()Landroidx/compose/foundation/text/input/internal/SelectionWedgeAffinity;

    move-result-object v4

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 653
    :cond_7
    return v21

    .line 656
    :cond_8
    iget-object v4, v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->textFieldState:Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    invoke-virtual {v4, v1, v2}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->selectUntransformedCharsIn-5zc-tL8(J)V

    .line 657
    if-eqz v6, :cond_9

    move-object v4, v6

    .line 1978
    .local v4, "it":Landroidx/compose/foundation/text/input/internal/SelectionWedgeAffinity;
    const/4 v5, 0x0

    .line 657
    .local v5, "$i$a$-let-TextFieldSelectionState$placeCursorAtNearestOffset$1":I
    iget-object v7, v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->textFieldState:Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    invoke-virtual {v7, v4}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->setSelectionWedgeAffinity(Landroidx/compose/foundation/text/input/internal/SelectionWedgeAffinity;)V

    .line 658
    .end local v4    # "it":Landroidx/compose/foundation/text/input/internal/SelectionWedgeAffinity;
    .end local v5    # "$i$a$-let-TextFieldSelectionState$placeCursorAtNearestOffset$1":I
    :cond_9
    const/4 v4, 0x1

    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final selectAll()V
    .locals 1

    .line 1615
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->textFieldState:Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->selectAll()V

    .line 1616
    return-void
.end method

.method public final selectionHandleGestures(Landroidx/compose/ui/input/pointer/PointerInputScope;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p1, "$this$selectionHandleGestures"    # Landroidx/compose/ui/input/pointer/PointerInputScope;
    .param p2, "isStartHandle"    # Z
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/PointerInputScope;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 505
    new-instance v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$selectionHandleGestures$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$selectionHandleGestures$2;-><init>(Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;Landroidx/compose/ui/input/pointer/PointerInputScope;ZLkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, p3}, Lkotlinx/coroutines/CoroutineScopeKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 529
    return-object v0
.end method

.method public final setDirectDragGestureInitiator(Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$InputType;)V
    .locals 5
    .param p1, "<set-?>"    # Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$InputType;

    .line 243
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->directDragGestureInitiator$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p1

    .local v2, "value$iv":Ljava/lang/Object;
    move-object v3, p0

    .local v3, "thisObj$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 1967
    .local v4, "$i$f$setValue":I
    invoke-interface {v0, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 1968
    nop

    .line 243
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v3    # "thisObj$iv":Ljava/lang/Object;
    .end local v4    # "$i$f$setValue":I
    return-void
.end method

.method public final setDraggingHandle(Landroidx/compose/foundation/text/Handle;)V
    .locals 5
    .param p1, "<set-?>"    # Landroidx/compose/foundation/text/Handle;

    .line 230
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->draggingHandle$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p1

    .local v2, "value$iv":Ljava/lang/Object;
    move-object v3, p0

    .local v3, "thisObj$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 1964
    .local v4, "$i$f$setValue":I
    invoke-interface {v0, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 1965
    nop

    .line 230
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v3    # "thisObj$iv":Ljava/lang/Object;
    .end local v4    # "$i$f$setValue":I
    return-void
.end method

.method public final setFocused(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 142
    iput-boolean p1, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->isFocused:Z

    return-void
.end method

.method public final setHapticFeedBack(Landroidx/compose/ui/hapticfeedback/HapticFeedback;)V
    .locals 0
    .param p1, "<set-?>"    # Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    .line 156
    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->hapticFeedBack:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    return-void
.end method

.method public final setInTouchMode(Z)V
    .locals 5
    .param p1, "<set-?>"    # Z

    .line 162
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->isInTouchMode$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .local v2, "value$iv":Ljava/lang/Object;
    move-object v3, p0

    .local v3, "thisObj$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 1953
    .local v4, "$i$f$setValue":I
    invoke-interface {v0, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 1954
    nop

    .line 162
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v3    # "thisObj$iv":Ljava/lang/Object;
    .end local v4    # "$i$f$setValue":I
    return-void
.end method

.method public final setPressInteraction(Landroidx/compose/foundation/interaction/PressInteraction$Press;)V
    .locals 0
    .param p1, "<set-?>"    # Landroidx/compose/foundation/interaction/PressInteraction$Press;

    .line 279
    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->pressInteraction:Landroidx/compose/foundation/interaction/PressInteraction$Press;

    return-void
.end method

.method public final setReceiveContentConfiguration(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .param p1, "<set-?>"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Landroidx/compose/foundation/content/internal/ReceiveContentConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 171
    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->receiveContentConfiguration:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setRequestAutofillAction(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .param p1, "<set-?>"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 165
    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->requestAutofillAction:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setShowCursorHandle(Z)V
    .locals 5
    .param p1, "<set-?>"    # Z

    .line 246
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->showCursorHandle$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .local v2, "value$iv":Ljava/lang/Object;
    move-object v3, p0

    .local v3, "thisObj$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 1970
    .local v4, "$i$f$setValue":I
    invoke-interface {v0, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 1971
    nop

    .line 246
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v3    # "thisObj$iv":Ljava/lang/Object;
    .end local v4    # "$i$f$setValue":I
    return-void
.end method

.method public final setTextToolbarShown$foundation(Z)V
    .locals 5
    .param p1, "<set-?>"    # Z

    .line 255
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->textToolbarShown$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .local v2, "value$iv":Ljava/lang/Object;
    move-object v3, p0

    .local v3, "thisObj$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 1976
    .local v4, "$i$f$setValue":I
    invoke-interface {v0, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 1977
    nop

    .line 255
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v3    # "thisObj$iv":Ljava/lang/Object;
    .end local v4    # "$i$f$setValue":I
    return-void
.end method

.method public final startToolbarAndHandlesVisibilityObserver(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$startToolbarAndHandlesVisibilityObserver$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$startToolbarAndHandlesVisibilityObserver$1;

    iget v1, v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$startToolbarAndHandlesVisibilityObserver$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$startToolbarAndHandlesVisibilityObserver$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$startToolbarAndHandlesVisibilityObserver$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$startToolbarAndHandlesVisibilityObserver$1;

    invoke-direct {v0, p0, p1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$startToolbarAndHandlesVisibilityObserver$1;-><init>(Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$startToolbarAndHandlesVisibilityObserver$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 535
    iget v3, v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$startToolbarAndHandlesVisibilityObserver$1;->label:I

    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    move-object v2, p0

    .local v2, "this":Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v1

    goto :goto_1

    .line 542
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 535
    .end local v2    # "this":Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, p0

    .line 536
    .local v3, "this":Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    nop

    .line 537
    :try_start_1
    new-instance v5, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$startToolbarAndHandlesVisibilityObserver$2;

    const/4 v6, 0x0

    invoke-direct {v5, v3, v6}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$startToolbarAndHandlesVisibilityObserver$2;-><init>(Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;Lkotlin/coroutines/Continuation;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x1

    iput v6, v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$startToolbarAndHandlesVisibilityObserver$1;->label:I

    invoke-static {v5, v0}, Lkotlinx/coroutines/CoroutineScopeKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v5, v2, :cond_1

    .line 535
    .end local v3    # "this":Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    return-object v2

    .line 537
    .restart local v3    # "this":Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    :cond_1
    move-object v2, v3

    .line 535
    .end local v3    # "this":Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    .restart local v2    # "this":Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    :goto_1
    :try_start_2
    check-cast v5, Lkotlinx/coroutines/Job;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 542
    invoke-virtual {v2, v4}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->setShowCursorHandle(Z)V

    .line 543
    invoke-direct {v2}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->getTextToolbarState()Landroidx/compose/foundation/text/input/internal/selection/TextToolbarState;

    move-result-object v3

    sget-object v4, Landroidx/compose/foundation/text/input/internal/selection/TextToolbarState;->None:Landroidx/compose/foundation/text/input/internal/selection/TextToolbarState;

    if-eq v3, v4, :cond_2

    .line 544
    invoke-direct {v2}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->hideTextToolbar()V

    .line 546
    .end local v2    # "this":Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    :cond_2
    nop

    .line 547
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2

    .line 542
    .restart local v3    # "this":Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    :catchall_1
    move-exception v2

    move-object v7, v3

    move-object v3, v2

    move-object v2, v7

    .end local v3    # "this":Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    .restart local v2    # "this":Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    :goto_2
    invoke-virtual {v2, v4}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->setShowCursorHandle(Z)V

    .line 543
    invoke-direct {v2}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->getTextToolbarState()Landroidx/compose/foundation/text/input/internal/selection/TextToolbarState;

    move-result-object v4

    sget-object v5, Landroidx/compose/foundation/text/input/internal/selection/TextToolbarState;->None:Landroidx/compose/foundation/text/input/internal/selection/TextToolbarState;

    if-eq v4, v5, :cond_3

    .line 544
    invoke-direct {v2}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->hideTextToolbar()V

    .end local v2    # "this":Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    :cond_3
    throw v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final textFieldSelectionGestures(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p1, "$this$textFieldSelectionGestures"    # Landroidx/compose/ui/input/pointer/PointerInputScope;
    .param p2, "requestFocus"    # Lkotlin/jvm/functions/Function0;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/PointerInputScope;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 725
    nop

    .line 726
    nop

    .line 727
    new-instance v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$TextFieldMouseSelectionObserver;

    invoke-direct {v0, p0, p2}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$TextFieldMouseSelectionObserver;-><init>(Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;Lkotlin/jvm/functions/Function0;)V

    check-cast v0, Landroidx/compose/foundation/text/selection/MouseSelectionObserver;

    .line 728
    new-instance v1, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$TextFieldTextDragObserver;

    invoke-direct {v1, p0, p2}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$TextFieldTextDragObserver;-><init>(Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;Lkotlin/jvm/functions/Function0;)V

    check-cast v1, Landroidx/compose/foundation/text/TextDragObserver;

    .line 725
    invoke-static {p0, p1, v0, v1, p3}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState_androidKt;->textFieldSelectionGestures(Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;Landroidx/compose/ui/input/pointer/PointerInputScope;Landroidx/compose/foundation/text/selection/MouseSelectionObserver;Landroidx/compose/foundation/text/TextDragObserver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 729
    return-object v0
.end method

.method public final update(Landroidx/compose/ui/hapticfeedback/HapticFeedback;Landroidx/compose/ui/platform/Clipboard;Landroidx/compose/foundation/text/input/internal/selection/TextToolbarHandler;Landroidx/compose/ui/unit/Density;ZZZ)V
    .locals 2
    .param p1, "hapticFeedBack"    # Landroidx/compose/ui/hapticfeedback/HapticFeedback;
    .param p2, "clipboard"    # Landroidx/compose/ui/platform/Clipboard;
    .param p3, "showTextToolbar"    # Landroidx/compose/foundation/text/input/internal/selection/TextToolbarHandler;
    .param p4, "density"    # Landroidx/compose/ui/unit/Density;
    .param p5, "enabled"    # Z
    .param p6, "readOnly"    # Z
    .param p7, "isPassword"    # Z

    .line 472
    if-nez p5, :cond_0

    .line 473
    invoke-direct {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->hideTextToolbar()V

    .line 475
    :cond_0
    move-object v0, p2

    .line 477
    .local v0, "previousClipboard":Landroidx/compose/ui/platform/Clipboard;
    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->hapticFeedBack:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    .line 478
    iput-object p2, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->clipboard:Landroidx/compose/ui/platform/Clipboard;

    .line 479
    iput-object p3, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->textToolbarHandler:Landroidx/compose/foundation/text/input/internal/selection/TextToolbarHandler;

    .line 480
    iput-object p4, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->density:Landroidx/compose/ui/unit/Density;

    .line 481
    iput-boolean p5, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->enabled:Z

    .line 482
    iput-boolean p6, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->readOnly:Z

    .line 483
    iput-boolean p7, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->isPassword:Z

    .line 485
    if-eq v0, p2, :cond_1

    .line 486
    new-instance v1, Landroidx/compose/foundation/text/input/internal/selection/ClipboardPasteState;

    invoke-direct {v1, p2}, Landroidx/compose/foundation/text/input/internal/selection/ClipboardPasteState;-><init>(Landroidx/compose/ui/platform/Clipboard;)V

    iput-object v1, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->clipboardPasteState:Landroidx/compose/foundation/text/input/internal/selection/ClipboardPasteState;

    .line 488
    :cond_1
    return-void
.end method

.method public final updateClipboardEntry(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1518
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->clipboardPasteState:Landroidx/compose/foundation/text/input/internal/selection/ClipboardPasteState;

    invoke-virtual {v0, p1}, Landroidx/compose/foundation/text/input/internal/selection/ClipboardPasteState;->update(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final updateHandleDragging-Uv8p0NA(Landroidx/compose/foundation/text/Handle;J)V
    .locals 0
    .param p1, "handle"    # Landroidx/compose/foundation/text/Handle;
    .param p2, "$v$c$androidx-compose-ui-geometry-Offset$-position$0"    # J

    .line 1405
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->setDraggingHandle(Landroidx/compose/foundation/text/Handle;)V

    .line 1406
    invoke-direct {p0, p2, p3}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->setRawHandleDragPosition-k-4lQ0M(J)V

    .line 1407
    return-void
.end method

.method public final updateSelection-SsL-Rf8$foundation(Landroidx/compose/foundation/text/input/TextFieldCharSequence;IIZLandroidx/compose/foundation/text/selection/SelectionAdjustment;ZZ)J
    .locals 12
    .param p1, "textFieldCharSequence"    # Landroidx/compose/foundation/text/input/TextFieldCharSequence;
    .param p2, "startOffset"    # I
    .param p3, "endOffset"    # I
    .param p4, "isStartHandle"    # Z
    .param p5, "adjustment"    # Landroidx/compose/foundation/text/selection/SelectionAdjustment;
    .param p6, "allowPreviousSelectionCollapsed"    # Z
    .param p7, "isStartOfSelection"    # Z

    .line 1690
    nop

    .line 1691
    nop

    .line 1692
    nop

    .line 1694
    invoke-virtual {p1}, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->getSelection-d9O1mEE()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->box-impl(J)Landroidx/compose/ui/text/TextRange;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/text/TextRange;->unbox-impl()J

    move-result-wide v1

    .local v1, "it":J
    const/4 v3, 0x0

    .line 1695
    .local v3, "$i$a$-takeIf-TextFieldSelectionState$updateSelection$newSelection$1":I
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez p7, :cond_1

    if-nez p6, :cond_0

    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v5

    .line 1694
    .end local v1    # "it":J
    .end local v3    # "$i$a$-takeIf-TextFieldSelectionState$updateSelection$newSelection$1":I
    :goto_0
    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    move-object v9, v0

    .line 1697
    nop

    .line 1698
    nop

    .line 1690
    move-object v6, p0

    move v7, p2

    move v8, p3

    move/from16 v10, p4

    move-object/from16 v11, p5

    invoke-direct/range {v6 .. v11}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->getTextFieldSelection-qeG_v_k(IILandroidx/compose/ui/text/TextRange;ZLandroidx/compose/foundation/text/selection/SelectionAdjustment;)J

    move-result-wide v0

    .line 1689
    nop

    .line 1701
    .local v0, "newSelection":J
    invoke-virtual {p1}, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->getSelection-d9O1mEE()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/text/TextRange;->equals-impl0(JJ)Z

    move-result v2

    if-eqz v2, :cond_3

    return-wide v0

    .line 1704
    :cond_3
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getReversed-impl(J)Z

    move-result v2

    invoke-virtual {p1}, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->getSelection-d9O1mEE()J

    move-result-wide v7

    invoke-static {v7, v8}, Landroidx/compose/ui/text/TextRange;->getReversed-impl(J)Z

    move-result v3

    if-eq v2, v3, :cond_4

    .line 1705
    move-wide v2, v0

    .line 1978
    .local v2, "$this$updateSelection_SsL_Rf8_u24lambda_u241":J
    const/4 v7, 0x0

    .line 1705
    .local v7, "$i$a$-run-TextFieldSelectionState$updateSelection$onlyChangeIsReversed$1":I
    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v8

    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v9

    invoke-static {v8, v9}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide v2

    .end local v2    # "$this$updateSelection_SsL_Rf8_u24lambda_u241":J
    .end local v7    # "$i$a$-run-TextFieldSelectionState$updateSelection$onlyChangeIsReversed$1":I
    invoke-virtual {p1}, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->getSelection-d9O1mEE()J

    move-result-wide v7

    invoke-static {v2, v3, v7, v8}, Landroidx/compose/ui/text/TextRange;->equals-impl0(JJ)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    move v4, v5

    .line 1703
    :goto_2
    nop

    .line 1708
    .local v4, "onlyChangeIsReversed":Z
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_5

    if-nez v4, :cond_5

    .line 1709
    iget-object v2, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->hapticFeedBack:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    if-eqz v2, :cond_5

    sget-object v3, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType;->Companion:Landroidx/compose/ui/hapticfeedback/HapticFeedbackType$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType$Companion;->getTextHandleMove-5zf0vsI()I

    move-result v3

    invoke-interface {v2, v3}, Landroidx/compose/ui/hapticfeedback/HapticFeedback;->performHapticFeedback-CdsT49E(I)V

    .line 1712
    :cond_5
    return-wide v0
.end method

.method public final updateTextToolbarState(Landroidx/compose/foundation/text/input/internal/selection/TextToolbarState;)V
    .locals 0
    .param p1, "textToolbarState"    # Landroidx/compose/foundation/text/input/internal/selection/TextToolbarState;

    .line 550
    invoke-direct {p0, p1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->setTextToolbarState(Landroidx/compose/foundation/text/input/internal/selection/TextToolbarState;)V

    .line 551
    return-void
.end method
