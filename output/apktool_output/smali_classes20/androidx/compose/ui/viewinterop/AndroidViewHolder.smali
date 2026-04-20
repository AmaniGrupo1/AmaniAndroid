.class public Landroidx/compose/ui/viewinterop/AndroidViewHolder;
.super Landroid/view/ViewGroup;
.source "AndroidViewHolder.android.kt"

# interfaces
.implements Landroidx/core/view/NestedScrollingParent3;
.implements Landroidx/compose/runtime/ComposeNodeLifecycleCallback;
.implements Landroidx/compose/ui/node/OwnerScope;
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/viewinterop/AndroidViewHolder$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidViewHolder.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidViewHolder.android.kt\nandroidx/compose/ui/viewinterop/AndroidViewHolder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 InlineClassHelper.kt\nandroidx/compose/ui/internal/InlineClassHelperKt\n+ 4 Offset.kt\nandroidx/compose/ui/geometry/OffsetKt\n+ 5 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n+ 6 Offset.kt\nandroidx/compose/ui/geometry/Offset\n+ 7 InlineClassHelper.jvm.kt\nandroidx/compose/ui/util/InlineClassHelper_jvmKt\n+ 8 MathHelpers.kt\nandroidx/compose/ui/util/MathHelpersKt\n+ 9 IntSize.kt\nandroidx/compose/ui/unit/IntSize\n*L\n1#1,782:1\n671#1,6:820\n677#1,2:827\n679#1:835\n680#1:846\n681#1,7:851\n671#1,6:858\n677#1,2:865\n679#1:873\n680#1:884\n681#1,7:889\n1#2:783\n57#3,4:784\n30#4:788\n30#4:792\n30#4:802\n30#4:806\n30#4:810\n30#4:847\n30#4:885\n30#4:910\n53#5,3:789\n53#5,3:793\n60#5:797\n70#5:800\n53#5,3:803\n53#5,3:807\n53#5,3:811\n60#5:815\n70#5:818\n85#5:831\n90#5:834\n53#5,3:848\n85#5:869\n90#5:872\n53#5,3:886\n85#5:900\n90#5:903\n85#5:906\n90#5:909\n53#5,3:911\n65#6:796\n69#6:799\n65#6:814\n69#6:817\n22#7:798\n22#7:801\n22#7:816\n22#7:819\n105#8:826\n105#8:864\n105#8:896\n105#8:897\n105#8:914\n105#8:915\n105#8:916\n105#8:917\n105#8:918\n105#8:919\n61#9:829\n54#9:830\n63#9:832\n59#9:833\n54#9,10:836\n61#9:867\n54#9:868\n63#9:870\n59#9:871\n54#9,10:874\n61#9:898\n54#9:899\n63#9:901\n59#9:902\n61#9:904\n54#9:905\n63#9:907\n59#9:908\n*S KotlinDebug\n*F\n+ 1 AndroidViewHolder.android.kt\nandroidx/compose/ui/viewinterop/AndroidViewHolder\n*L\n662#1:820,6\n662#1:827,2\n662#1:835\n662#1:846\n662#1:851,7\n666#1:858,6\n666#1:865,2\n666#1:873\n666#1:884\n666#1:889,7\n203#1:784,4\n588#1:788\n589#1:792\n606#1:802\n607#1:806\n616#1:810\n662#1:847\n666#1:885\n680#1:910\n588#1:789,3\n589#1:793,3\n592#1:797\n593#1:800\n606#1:803,3\n607#1:807,3\n616#1:811,3\n619#1:815\n620#1:818\n662#1:831\n662#1:834\n662#1:848,3\n666#1:869\n666#1:872\n666#1:886,3\n678#1:900\n678#1:903\n679#1:906\n679#1:909\n680#1:911,3\n592#1:796\n593#1:799\n619#1:814\n620#1:817\n592#1:798\n593#1:801\n619#1:816\n620#1:819\n662#1:826\n666#1:864\n676#1:896\n677#1:897\n681#1:914\n682#1:915\n693#1:916\n694#1:917\n695#1:918\n696#1:919\n662#1:829\n662#1:830\n662#1:832\n662#1:833\n662#1:836,10\n666#1:867\n666#1:868\n666#1:870\n666#1:871\n666#1:874,10\n678#1:898\n678#1:899\n678#1:901\n678#1:902\n679#1:904\n679#1:905\n679#1:907\n679#1:908\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0080\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0015\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\r\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0018\n\u0002\u0010\u0007\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0011\u0018\u0000 \u00ba\u00012\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u0005:\u0002\u00ba\u0001B9\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000e\u0010\u0016\u001a\n\u0018\u00010\u000fj\u0004\u0018\u0001`\u0017J\u0008\u0010d\u001a\u00020eH\u0016J\u0008\u0010f\u001a\u00020\u001aH\u0016J\u0008\u0010g\u001a\u00020\u001aH\u0016J\u0008\u0010h\u001a\u00020\u001aH\u0016J\u0018\u0010i\u001a\u00020\u001a2\u0006\u0010j\u001a\u00020\u000b2\u0006\u0010k\u001a\u00020\u000bH\u0014J\u0006\u0010l\u001a\u00020\u001aJ0\u0010m\u001a\u00020\u001a2\u0006\u0010n\u001a\u00020!2\u0006\u0010o\u001a\u00020\u000b2\u0006\u0010p\u001a\u00020\u000b2\u0006\u0010q\u001a\u00020\u000b2\u0006\u0010r\u001a\u00020\u000bH\u0014J\n\u0010s\u001a\u0004\u0018\u00010tH\u0016J\u0010\u0010u\u001a\u00020\u001a2\u0006\u0010v\u001a\u00020!H\u0016J\u0008\u0010w\u001a\u00020\u001aH\u0014J\u0008\u0010x\u001a\u00020\u001aH\u0014J\u001e\u0010y\u001a\u0004\u0018\u00010z2\u0008\u0010\\\u001a\u0004\u0018\u00010J2\u0008\u0010{\u001a\u0004\u0018\u00010|H\u0016J\u0018\u0010}\u001a\u00020\u001a2\u0006\u0010~\u001a\u00020\u000f2\u0006\u0010\u007f\u001a\u00020\u000fH\u0016J%\u0010\u0080\u0001\u001a\u00020!2\u0006\u0010~\u001a\u00020\u000f2\t\u0010\u0081\u0001\u001a\u0004\u0018\u00010|2\u0007\u0010\u0082\u0001\u001a\u00020!H\u0016J\u0007\u0010\u0083\u0001\u001a\u00020\u001aJ\u0012\u0010\u0084\u0001\u001a\u00020\u001a2\u0007\u0010\u0085\u0001\u001a\u00020\u000bH\u0014J\u0015\u0010\u0086\u0001\u001a\u00020!2\n\u0010\u0087\u0001\u001a\u0005\u0018\u00010\u0088\u0001H\u0016J$\u0010\u008d\u0001\u001a\u00020\u000b2\u0007\u0010\u008e\u0001\u001a\u00020\u000b2\u0007\u0010\u008f\u0001\u001a\u00020\u000b2\u0007\u0010\u0090\u0001\u001a\u00020\u000bH\u0002J\t\u0010\u0091\u0001\u001a\u00020!H\u0016J+\u0010\u0092\u0001\u001a\u00020!2\u0006\u0010~\u001a\u00020\u000f2\u0006\u0010\u007f\u001a\u00020\u000f2\u0007\u0010\u0093\u0001\u001a\u00020\u000b2\u0007\u0010\u0094\u0001\u001a\u00020\u000bH\u0016J\t\u0010\u0095\u0001\u001a\u00020\u000bH\u0016J+\u0010\u0096\u0001\u001a\u00020\u001a2\u0006\u0010~\u001a\u00020\u000f2\u0006\u0010\u007f\u001a\u00020\u000f2\u0007\u0010\u0093\u0001\u001a\u00020\u000b2\u0007\u0010\u0094\u0001\u001a\u00020\u000bH\u0016J\u001a\u0010\u0097\u0001\u001a\u00020\u001a2\u0006\u0010\u007f\u001a\u00020\u000f2\u0007\u0010\u0094\u0001\u001a\u00020\u000bH\u0016JG\u0010\u0098\u0001\u001a\u00020\u001a2\u0006\u0010\u007f\u001a\u00020\u000f2\u0007\u0010\u0099\u0001\u001a\u00020\u000b2\u0007\u0010\u009a\u0001\u001a\u00020\u000b2\u0007\u0010\u009b\u0001\u001a\u00020\u000b2\u0007\u0010\u009c\u0001\u001a\u00020\u000b2\u0007\u0010\u0094\u0001\u001a\u00020\u000b2\u0007\u0010\u009d\u0001\u001a\u00020JH\u0016J>\u0010\u0098\u0001\u001a\u00020\u001a2\u0006\u0010\u007f\u001a\u00020\u000f2\u0007\u0010\u0099\u0001\u001a\u00020\u000b2\u0007\u0010\u009a\u0001\u001a\u00020\u000b2\u0007\u0010\u009b\u0001\u001a\u00020\u000b2\u0007\u0010\u009c\u0001\u001a\u00020\u000b2\u0007\u0010\u0094\u0001\u001a\u00020\u000bH\u0016J5\u0010\u009e\u0001\u001a\u00020\u001a2\u0006\u0010\u007f\u001a\u00020\u000f2\u0007\u0010\u009f\u0001\u001a\u00020\u000b2\u0007\u0010\u00a0\u0001\u001a\u00020\u000b2\u0007\u0010\u009d\u0001\u001a\u00020J2\u0007\u0010\u0094\u0001\u001a\u00020\u000bH\u0016J.\u0010\u00a1\u0001\u001a\u00020!2\u0006\u0010\u007f\u001a\u00020\u000f2\u0008\u0010\u00a2\u0001\u001a\u00030\u00a3\u00012\u0008\u0010\u00a4\u0001\u001a\u00030\u00a3\u00012\u0007\u0010\u009d\u0001\u001a\u00020!H\u0016J%\u0010\u00a5\u0001\u001a\u00020!2\u0006\u0010\u007f\u001a\u00020\u000f2\u0008\u0010\u00a2\u0001\u001a\u00030\u00a3\u00012\u0008\u0010\u00a4\u0001\u001a\u00030\u00a3\u0001H\u0016J\t\u0010\u00a6\u0001\u001a\u00020!H\u0016J\u001a\u0010\u00a7\u0001\u001a\u00020O2\u0007\u0010\u00a8\u0001\u001a\u00020\u000f2\u0006\u0010N\u001a\u00020OH\u0016J\u0011\u0010\u00a9\u0001\u001a\u00020O2\u0006\u0010N\u001a\u00020OH\u0002J\u0014\u0010\u00aa\u0001\u001a\u00030\u00ab\u00012\u0008\u0010\u00ac\u0001\u001a\u00030\u00ab\u0001H\u0002J\u008e\u0001\u0010\u00ad\u0001\u001a\u0003H\u00ae\u0001\"\u0005\u0008\u0000\u0010\u00ae\u00012\u0007\u0010\u0018\u001a\u0003H\u00ae\u00012k\u0010\u00af\u0001\u001af\u0012\u0015\u0012\u00130\u000b\u00a2\u0006\u000e\u0008\u00b1\u0001\u0012\t\u0008\u00b2\u0001\u0012\u0004\u0008\u0008(o\u0012\u0015\u0012\u00130\u000b\u00a2\u0006\u000e\u0008\u00b1\u0001\u0012\t\u0008\u00b2\u0001\u0012\u0004\u0008\u0008(p\u0012\u0015\u0012\u00130\u000b\u00a2\u0006\u000e\u0008\u00b1\u0001\u0012\t\u0008\u00b2\u0001\u0012\u0004\u0008\u0008(q\u0012\u0015\u0012\u00130\u000b\u00a2\u0006\u000e\u0008\u00b1\u0001\u0012\t\u0008\u00b2\u0001\u0012\u0004\u0008\u0008(r\u0012\u0005\u0012\u0003H\u00ae\u00010\u00b0\u0001H\u0082\u0008\u00a2\u0006\u0003\u0010\u00b3\u0001J3\u0010\u00b4\u0001\u001a\u00030\u00b5\u0001*\u00030\u00b5\u00012\u0007\u0010\u00b6\u0001\u001a\u00020\u000b2\u0007\u0010\u00b7\u0001\u001a\u00020\u000b2\u0007\u0010\u00b8\u0001\u001a\u00020\u000b2\u0007\u0010\u00b9\u0001\u001a\u00020\u000bH\u0002R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R0\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u00192\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u0019@DX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u000e\u0010 \u001a\u00020!X\u0082\u000e\u00a2\u0006\u0002\n\u0000R0\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u00192\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u0019@DX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010\u001d\"\u0004\u0008$\u0010\u001fR0\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u00192\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u0019@DX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\u001d\"\u0004\u0008\'\u0010\u001fR$\u0010)\u001a\u00020(2\u0006\u0010\u0018\u001a\u00020(@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010+\"\u0004\u0008,\u0010-R(\u0010.\u001a\u0010\u0012\u0004\u0012\u00020(\u0012\u0004\u0012\u00020\u001a\u0018\u00010/X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00080\u00101\"\u0004\u00082\u00103R$\u00105\u001a\u0002042\u0006\u0010\u0018\u001a\u000204@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00086\u00107\"\u0004\u00088\u00109R(\u0010:\u001a\u0010\u0012\u0004\u0012\u000204\u0012\u0004\u0012\u00020\u001a\u0018\u00010/X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008;\u00101\"\u0004\u0008<\u00103R(\u0010>\u001a\u0004\u0018\u00010=2\u0008\u0010\u0018\u001a\u0004\u0018\u00010=@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008?\u0010@\"\u0004\u0008A\u0010BR(\u0010D\u001a\u0004\u0018\u00010C2\u0008\u0010\u0018\u001a\u0004\u0018\u00010C@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008E\u0010F\"\u0004\u0008G\u0010HR\u000e\u0010I\u001a\u00020JX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010K\u001a\u00020LX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010MR\u0010\u0010N\u001a\u0004\u0018\u00010OX\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010P\u001a\u0018\u0012\u0006\u0012\u0004\u0018\u00010Q\u0012\u0004\u0012\u00020\u001a\u0018\u00010/j\u0004\u0018\u0001`RX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010S\u001a\u00020T8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008U\u0010VR\u0014\u0010W\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010X\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000R(\u0010Y\u001a\u0010\u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00020\u001a\u0018\u00010/X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008Z\u00101\"\u0004\u0008[\u00103R\u000e\u0010\\\u001a\u00020JX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010]\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010^\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010_\u001a\u00020`X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010a\u001a\u00020!X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010b\u001a\u00020!8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008b\u0010cR\u0015\u0010\u0089\u0001\u001a\u00030\u008a\u0001\u00a2\u0006\n\n\u0000\u001a\u0006\u0008\u008b\u0001\u0010\u008c\u0001\u00a8\u0006\u00bb\u0001"
    }
    d2 = {
        "Landroidx/compose/ui/viewinterop/AndroidViewHolder;",
        "Landroid/view/ViewGroup;",
        "Landroidx/core/view/NestedScrollingParent3;",
        "Landroidx/compose/runtime/ComposeNodeLifecycleCallback;",
        "Landroidx/compose/ui/node/OwnerScope;",
        "Landroidx/core/view/OnApplyWindowInsetsListener;",
        "context",
        "Landroid/content/Context;",
        "parentContext",
        "Landroidx/compose/runtime/CompositionContext;",
        "compositeKeyHash",
        "",
        "dispatcher",
        "Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;",
        "view",
        "Landroid/view/View;",
        "owner",
        "Landroidx/compose/ui/node/Owner;",
        "<init>",
        "(Landroid/content/Context;Landroidx/compose/runtime/CompositionContext;ILandroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;Landroid/view/View;Landroidx/compose/ui/node/Owner;)V",
        "getView",
        "()Landroid/view/View;",
        "getInteropView",
        "Landroidx/compose/ui/viewinterop/InteropView;",
        "value",
        "Lkotlin/Function0;",
        "",
        "update",
        "getUpdate",
        "()Lkotlin/jvm/functions/Function0;",
        "setUpdate",
        "(Lkotlin/jvm/functions/Function0;)V",
        "hasUpdateBlock",
        "",
        "reset",
        "getReset",
        "setReset",
        "release",
        "getRelease",
        "setRelease",
        "Landroidx/compose/ui/Modifier;",
        "modifier",
        "getModifier",
        "()Landroidx/compose/ui/Modifier;",
        "setModifier",
        "(Landroidx/compose/ui/Modifier;)V",
        "onModifierChanged",
        "Lkotlin/Function1;",
        "getOnModifierChanged$ui",
        "()Lkotlin/jvm/functions/Function1;",
        "setOnModifierChanged$ui",
        "(Lkotlin/jvm/functions/Function1;)V",
        "Landroidx/compose/ui/unit/Density;",
        "density",
        "getDensity",
        "()Landroidx/compose/ui/unit/Density;",
        "setDensity",
        "(Landroidx/compose/ui/unit/Density;)V",
        "onDensityChanged",
        "getOnDensityChanged$ui",
        "setOnDensityChanged$ui",
        "Landroidx/lifecycle/LifecycleOwner;",
        "lifecycleOwner",
        "getLifecycleOwner",
        "()Landroidx/lifecycle/LifecycleOwner;",
        "setLifecycleOwner",
        "(Landroidx/lifecycle/LifecycleOwner;)V",
        "Landroidx/savedstate/SavedStateRegistryOwner;",
        "savedStateRegistryOwner",
        "getSavedStateRegistryOwner",
        "()Landroidx/savedstate/SavedStateRegistryOwner;",
        "setSavedStateRegistryOwner",
        "(Landroidx/savedstate/SavedStateRegistryOwner;)V",
        "position",
        "",
        "size",
        "Landroidx/compose/ui/unit/IntSize;",
        "J",
        "insets",
        "Landroidx/core/view/WindowInsetsCompat;",
        "bringIntoViewRequester",
        "Landroidx/compose/ui/geometry/Rect;",
        "Landroidx/compose/ui/viewinterop/BringIntoViewRequester;",
        "snapshotObserver",
        "Landroidx/compose/ui/node/OwnerSnapshotObserver;",
        "getSnapshotObserver",
        "()Landroidx/compose/ui/node/OwnerSnapshotObserver;",
        "runUpdate",
        "runInvalidate",
        "onRequestDisallowInterceptTouchEvent",
        "getOnRequestDisallowInterceptTouchEvent$ui",
        "setOnRequestDisallowInterceptTouchEvent$ui",
        "location",
        "lastWidthMeasureSpec",
        "lastHeightMeasureSpec",
        "nestedScrollingParentHelper",
        "Landroidx/core/view/NestedScrollingParentHelper;",
        "isDrawing",
        "isValidOwnerScope",
        "()Z",
        "getAccessibilityClassName",
        "",
        "onReuse",
        "onDeactivate",
        "onRelease",
        "onMeasure",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "remeasure",
        "onLayout",
        "changed",
        "l",
        "t",
        "r",
        "b",
        "getLayoutParams",
        "Landroid/view/ViewGroup$LayoutParams;",
        "requestDisallowInterceptTouchEvent",
        "disallowIntercept",
        "onAttachedToWindow",
        "onDetachedFromWindow",
        "invalidateChildInParent",
        "Landroid/view/ViewParent;",
        "dirty",
        "Landroid/graphics/Rect;",
        "onDescendantInvalidated",
        "child",
        "target",
        "requestChildRectangleOnScreen",
        "rectangle",
        "immediate",
        "invalidateOrDefer",
        "onWindowVisibilityChanged",
        "visibility",
        "gatherTransparentRegion",
        "region",
        "Landroid/graphics/Region;",
        "layoutNode",
        "Landroidx/compose/ui/node/LayoutNode;",
        "getLayoutNode",
        "()Landroidx/compose/ui/node/LayoutNode;",
        "obtainMeasureSpec",
        "min",
        "max",
        "preferred",
        "shouldDelayChildPressedState",
        "onStartNestedScroll",
        "axes",
        "type",
        "getNestedScrollAxes",
        "onNestedScrollAccepted",
        "onStopNestedScroll",
        "onNestedScroll",
        "dxConsumed",
        "dyConsumed",
        "dxUnconsumed",
        "dyUnconsumed",
        "consumed",
        "onNestedPreScroll",
        "dx",
        "dy",
        "onNestedFling",
        "velocityX",
        "",
        "velocityY",
        "onNestedPreFling",
        "isNestedScrollingEnabled",
        "onApplyWindowInsets",
        "v",
        "insetToLayoutPosition",
        "insetBounds",
        "Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;",
        "bounds",
        "insetValue",
        "T",
        "block",
        "Lkotlin/Function4;",
        "Lkotlin/ParameterName;",
        "name",
        "(Ljava/lang/Object;Lkotlin/jvm/functions/Function4;)Ljava/lang/Object;",
        "inset",
        "Landroidx/core/graphics/Insets;",
        "left",
        "top",
        "right",
        "bottom",
        "Companion",
        "ui"
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

.field public static final Companion:Landroidx/compose/ui/viewinterop/AndroidViewHolder$Companion;

.field private static final OnCommitAffectingUpdate:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/viewinterop/AndroidViewHolder;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bringIntoViewRequester:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/geometry/Rect;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final compositeKeyHash:I

.field private density:Landroidx/compose/ui/unit/Density;

.field private final dispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

.field private hasUpdateBlock:Z

.field private insets:Landroidx/core/view/WindowInsetsCompat;

.field private isDrawing:Z

.field private lastHeightMeasureSpec:I

.field private lastWidthMeasureSpec:I

.field private final layoutNode:Landroidx/compose/ui/node/LayoutNode;

.field private lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

.field private final location:[I

.field private modifier:Landroidx/compose/ui/Modifier;

.field private final nestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

.field private onDensityChanged:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/unit/Density;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onModifierChanged:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/Modifier;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onRequestDisallowInterceptTouchEvent:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final owner:Landroidx/compose/ui/node/Owner;

.field private final position:[I

.field private release:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private reset:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final runInvalidate:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final runUpdate:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private savedStateRegistryOwner:Landroidx/savedstate/SavedStateRegistryOwner;

.field private size:J

.field private update:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/viewinterop/AndroidViewHolder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->Companion:Landroidx/compose/ui/viewinterop/AndroidViewHolder$Companion;

    const/16 v0, 0x8

    sput v0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->$stable:I

    .line 701
    sget-object v0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$Companion$OnCommitAffectingUpdate$1;->INSTANCE:Landroidx/compose/ui/viewinterop/AndroidViewHolder$Companion$OnCommitAffectingUpdate$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    sput-object v0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->OnCommitAffectingUpdate:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/compose/runtime/CompositionContext;ILandroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;Landroid/view/View;Landroidx/compose/ui/node/Owner;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parentContext"    # Landroidx/compose/runtime/CompositionContext;
    .param p3, "compositeKeyHash"    # I
    .param p4, "dispatcher"    # Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;
    .param p5, "view"    # Landroid/view/View;
    .param p6, "owner"    # Landroidx/compose/ui/node/Owner;

    .line 93
    nop

    .line 101
    nop

    .line 93
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 96
    iput p3, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->compositeKeyHash:I

    .line 97
    iput-object p4, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->dispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    .line 98
    iput-object p5, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->view:Landroid/view/View;

    .line 99
    iput-object p6, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->owner:Landroidx/compose/ui/node/Owner;

    .line 107
    nop

    .line 111
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 783
    .local v0, "it":Landroidx/compose/runtime/CompositionContext;
    const/4 v1, 0x0

    .line 111
    .local v1, "$i$a$-let-AndroidViewHolder$1":I
    move-object v2, p0

    check-cast v2, Landroid/view/View;

    invoke-static {v2, v0}, Landroidx/compose/ui/platform/WindowRecomposer_androidKt;->setCompositionContext(Landroid/view/View;Landroidx/compose/runtime/CompositionContext;)V

    .line 113
    .end local v0    # "it":Landroidx/compose/runtime/CompositionContext;
    .end local v1    # "$i$a$-let-AndroidViewHolder$1":I
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->setSaveFromParentEnabled(Z)V

    .line 115
    iget-object v1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->view:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->addView(Landroid/view/View;)V

    .line 117
    move-object v1, p0

    check-cast v1, Landroid/view/View;

    .line 118
    new-instance v2, Landroidx/compose/ui/viewinterop/AndroidViewHolder$2;

    invoke-direct {v2, p0}, Landroidx/compose/ui/viewinterop/AndroidViewHolder$2;-><init>(Landroidx/compose/ui/viewinterop/AndroidViewHolder;)V

    check-cast v2, Landroidx/core/view/WindowInsetsAnimationCompat$Callback;

    .line 116
    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->setWindowInsetsAnimationCallback(Landroid/view/View;Landroidx/core/view/WindowInsetsAnimationCompat$Callback;)V

    .line 130
    move-object v1, p0

    check-cast v1, Landroid/view/View;

    move-object v2, p0

    check-cast v2, Landroidx/core/view/OnApplyWindowInsetsListener;

    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 131
    nop

    .line 137
    sget-object v1, Landroidx/compose/ui/viewinterop/AndroidViewHolder$update$1;->INSTANCE:Landroidx/compose/ui/viewinterop/AndroidViewHolder$update$1;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    iput-object v1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->update:Lkotlin/jvm/functions/Function0;

    .line 146
    sget-object v1, Landroidx/compose/ui/viewinterop/AndroidViewHolder$reset$1;->INSTANCE:Landroidx/compose/ui/viewinterop/AndroidViewHolder$reset$1;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    iput-object v1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->reset:Lkotlin/jvm/functions/Function0;

    .line 149
    sget-object v1, Landroidx/compose/ui/viewinterop/AndroidViewHolder$release$1;->INSTANCE:Landroidx/compose/ui/viewinterop/AndroidViewHolder$release$1;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    iput-object v1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->release:Lkotlin/jvm/functions/Function0;

    .line 153
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    iput-object v1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->modifier:Landroidx/compose/ui/Modifier;

    .line 164
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/unit/DensityKt;->Density$default(FFILjava/lang/Object;)Landroidx/compose/ui/unit/Density;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->density:Landroidx/compose/ui/unit/Density;

    .line 192
    new-array v1, v3, [I

    iput-object v1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->position:[I

    .line 193
    sget-object v1, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/unit/IntSize$Companion;->getZero-YbymL2g()J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->size:J

    .line 209
    new-instance v1, Landroidx/compose/ui/viewinterop/AndroidViewHolder$runUpdate$1;

    invoke-direct {v1, p0}, Landroidx/compose/ui/viewinterop/AndroidViewHolder$runUpdate$1;-><init>(Landroidx/compose/ui/viewinterop/AndroidViewHolder;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    iput-object v1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->runUpdate:Lkotlin/jvm/functions/Function0;

    .line 219
    new-instance v1, Landroidx/compose/ui/viewinterop/AndroidViewHolder$runInvalidate$1;

    invoke-direct {v1, p0}, Landroidx/compose/ui/viewinterop/AndroidViewHolder$runInvalidate$1;-><init>(Landroidx/compose/ui/viewinterop/AndroidViewHolder;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    iput-object v1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->runInvalidate:Lkotlin/jvm/functions/Function0;

    .line 223
    new-array v1, v3, [I

    iput-object v1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->location:[I

    .line 225
    const/high16 v1, -0x80000000

    iput v1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->lastWidthMeasureSpec:I

    .line 226
    iput v1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->lastHeightMeasureSpec:I

    .line 229
    new-instance v1, Landroidx/core/view/NestedScrollingParentHelper;

    move-object v2, p0

    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {v1, v2}, Landroidx/core/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->nestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    .line 381
    move-object v1, p0

    check-cast v1, Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    .local v1, "$this$layoutNode_u24lambda_u240":Landroidx/compose/ui/viewinterop/AndroidViewHolder;
    const/4 v2, 0x0

    .line 383
    .local v2, "$i$a$-run-AndroidViewHolder$layoutNode$1":I
    new-instance v3, Landroidx/compose/ui/node/LayoutNode;

    const/4 v5, 0x3

    invoke-direct {v3, v0, v0, v5, v4}, Landroidx/compose/ui/node/LayoutNode;-><init>(ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 385
    .local v3, "layoutNode":Landroidx/compose/ui/node/LayoutNode;
    invoke-virtual {v3, p0}, Landroidx/compose/ui/node/LayoutNode;->setInteropViewFactoryHolder$ui(Landroidx/compose/ui/viewinterop/AndroidViewHolder;)V

    .line 388
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    invoke-static {}, Landroidx/compose/ui/viewinterop/AndroidViewHolder_androidKt;->access$getNoOpScrollConnection$p()Landroidx/compose/ui/viewinterop/AndroidViewHolder_androidKt$NoOpScrollConnection$1;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    iget-object v5, v1, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->dispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    invoke-static {v0, v4, v5}, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierKt;->nestedScroll(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 389
    sget-object v4, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$coreModifier$1;->INSTANCE:Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$coreModifier$1;

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x1

    invoke-static {v0, v5, v4}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 390
    invoke-static {v0, v1}, Landroidx/compose/ui/input/pointer/PointerInteropFilter_androidKt;->pointerInteropFilter(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/viewinterop/AndroidViewHolder;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 391
    new-instance v4, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$coreModifier$2;

    invoke-direct {v4, v1, v3, p0}, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$coreModifier$2;-><init>(Landroidx/compose/ui/viewinterop/AndroidViewHolder;Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/viewinterop/AndroidViewHolder;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v4}, Landroidx/compose/ui/draw/DrawModifierKt;->drawBehind(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 403
    new-instance v4, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$coreModifier$3;

    invoke-direct {v4, v1, v3}, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$coreModifier$3;-><init>(Landroidx/compose/ui/viewinterop/AndroidViewHolder;Landroidx/compose/ui/node/LayoutNode;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v4}, Landroidx/compose/ui/layout/OnGloballyPositionedModifierKt;->onGloballyPositioned(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 436
    new-instance v4, Landroidx/compose/ui/viewinterop/BringIntoViewElement;

    new-instance v5, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$coreModifier$4;

    invoke-direct {v5, v1}, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$coreModifier$4;-><init>(Landroidx/compose/ui/viewinterop/AndroidViewHolder;)V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-direct {v4, v5}, Landroidx/compose/ui/viewinterop/BringIntoViewElement;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v4, Landroidx/compose/ui/Modifier;

    invoke-interface {v0, v4}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 387
    nop

    .line 437
    .local v0, "coreModifier":Landroidx/compose/ui/Modifier;
    iget v4, v1, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->compositeKeyHash:I

    invoke-virtual {v3, v4}, Landroidx/compose/ui/node/LayoutNode;->setCompositeKeyHash(I)V

    .line 438
    iget-object v4, v1, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->modifier:Landroidx/compose/ui/Modifier;

    invoke-interface {v4, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/compose/ui/node/LayoutNode;->setModifier(Landroidx/compose/ui/Modifier;)V

    .line 439
    new-instance v4, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$1;

    invoke-direct {v4, v3, v0}, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$1;-><init>(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/Modifier;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    iput-object v4, v1, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->onModifierChanged:Lkotlin/jvm/functions/Function1;

    .line 441
    iget-object v4, v1, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->density:Landroidx/compose/ui/unit/Density;

    invoke-virtual {v3, v4}, Landroidx/compose/ui/node/LayoutNode;->setDensity(Landroidx/compose/ui/unit/Density;)V

    .line 442
    new-instance v4, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$2;

    invoke-direct {v4, v3}, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$2;-><init>(Landroidx/compose/ui/node/LayoutNode;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    iput-object v4, v1, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->onDensityChanged:Lkotlin/jvm/functions/Function1;

    .line 444
    new-instance v4, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$3;

    invoke-direct {v4, v1, v3}, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$3;-><init>(Landroidx/compose/ui/viewinterop/AndroidViewHolder;Landroidx/compose/ui/node/LayoutNode;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v3, v4}, Landroidx/compose/ui/node/LayoutNode;->setOnAttach$ui(Lkotlin/jvm/functions/Function1;)V

    .line 448
    new-instance v4, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$4;

    invoke-direct {v4, v1}, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$4;-><init>(Landroidx/compose/ui/viewinterop/AndroidViewHolder;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v3, v4}, Landroidx/compose/ui/node/LayoutNode;->setOnDetach$ui(Lkotlin/jvm/functions/Function1;)V

    .line 457
    nop

    .line 458
    new-instance v4, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$5;

    invoke-direct {v4, v1, v3}, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$5;-><init>(Landroidx/compose/ui/viewinterop/AndroidViewHolder;Landroidx/compose/ui/node/LayoutNode;)V

    check-cast v4, Landroidx/compose/ui/layout/MeasurePolicy;

    .line 457
    invoke-virtual {v3, v4}, Landroidx/compose/ui/node/LayoutNode;->setMeasurePolicy(Landroidx/compose/ui/layout/MeasurePolicy;)V

    .line 525
    nop

    .line 381
    .end local v0    # "coreModifier":Landroidx/compose/ui/Modifier;
    .end local v1    # "$this$layoutNode_u24lambda_u240":Landroidx/compose/ui/viewinterop/AndroidViewHolder;
    .end local v2    # "$i$a$-run-AndroidViewHolder$layoutNode$1":I
    .end local v3    # "layoutNode":Landroidx/compose/ui/node/LayoutNode;
    iput-object v3, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 93
    return-void
.end method

.method public static final synthetic access$getDispatcher$p(Landroidx/compose/ui/viewinterop/AndroidViewHolder;)Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    .line 93
    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->dispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    return-object v0
.end method

.method public static final synthetic access$getHasUpdateBlock$p(Landroidx/compose/ui/viewinterop/AndroidViewHolder;)Z
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    .line 93
    iget-boolean v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->hasUpdateBlock:Z

    return v0
.end method

.method public static final synthetic access$getInsets$p(Landroidx/compose/ui/viewinterop/AndroidViewHolder;)Landroidx/core/view/WindowInsetsCompat;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    .line 93
    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->insets:Landroidx/core/view/WindowInsetsCompat;

    return-object v0
.end method

.method public static final synthetic access$getOnCommitAffectingUpdate$cp()Lkotlin/jvm/functions/Function1;
    .locals 1

    .line 93
    sget-object v0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->OnCommitAffectingUpdate:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final synthetic access$getOwner$p(Landroidx/compose/ui/viewinterop/AndroidViewHolder;)Landroidx/compose/ui/node/Owner;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    .line 93
    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->owner:Landroidx/compose/ui/node/Owner;

    return-object v0
.end method

.method public static final synthetic access$getPosition$p(Landroidx/compose/ui/viewinterop/AndroidViewHolder;)[I
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    .line 93
    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->position:[I

    return-object v0
.end method

.method public static final synthetic access$getRunUpdate$p(Landroidx/compose/ui/viewinterop/AndroidViewHolder;)Lkotlin/jvm/functions/Function0;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    .line 93
    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->runUpdate:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public static final synthetic access$getSize$p(Landroidx/compose/ui/viewinterop/AndroidViewHolder;)J
    .locals 2
    .param p0, "$this"    # Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    .line 93
    iget-wide v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->size:J

    return-wide v0
.end method

.method public static final synthetic access$getSnapshotObserver(Landroidx/compose/ui/viewinterop/AndroidViewHolder;)Landroidx/compose/ui/node/OwnerSnapshotObserver;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    .line 93
    invoke-direct {p0}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->getSnapshotObserver()Landroidx/compose/ui/node/OwnerSnapshotObserver;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$insetBounds(Landroidx/compose/ui/viewinterop/AndroidViewHolder;Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;)Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/viewinterop/AndroidViewHolder;
    .param p1, "bounds"    # Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;

    .line 93
    invoke-direct {p0, p1}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->insetBounds(Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;)Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$insetToLayoutPosition(Landroidx/compose/ui/viewinterop/AndroidViewHolder;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/viewinterop/AndroidViewHolder;
    .param p1, "insets"    # Landroidx/core/view/WindowInsetsCompat;

    .line 93
    invoke-direct {p0, p1}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->insetToLayoutPosition(Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$obtainMeasureSpec(Landroidx/compose/ui/viewinterop/AndroidViewHolder;III)I
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/viewinterop/AndroidViewHolder;
    .param p1, "min"    # I
    .param p2, "max"    # I
    .param p3, "preferred"    # I

    .line 93
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->obtainMeasureSpec(III)I

    move-result v0

    return v0
.end method

.method public static final synthetic access$setBringIntoViewRequester$p(Landroidx/compose/ui/viewinterop/AndroidViewHolder;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/ui/viewinterop/AndroidViewHolder;
    .param p1, "<set-?>"    # Lkotlin/jvm/functions/Function1;

    .line 93
    iput-object p1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->bringIntoViewRequester:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static final synthetic access$setDrawing$p(Landroidx/compose/ui/viewinterop/AndroidViewHolder;Z)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/ui/viewinterop/AndroidViewHolder;
    .param p1, "<set-?>"    # Z

    .line 93
    iput-boolean p1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->isDrawing:Z

    return-void
.end method

.method public static final synthetic access$setSize$p(Landroidx/compose/ui/viewinterop/AndroidViewHolder;J)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/ui/viewinterop/AndroidViewHolder;
    .param p1, "<set-?>"    # J

    .line 93
    iput-wide p1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->size:J

    return-void
.end method

.method private final getSnapshotObserver()Landroidx/compose/ui/node/OwnerSnapshotObserver;
    .locals 3

    .line 203
    invoke-virtual {p0}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->isAttachedToWindow()Z

    move-result v0

    .local v0, "value$iv":Z
    const/4 v1, 0x0

    .line 784
    .local v1, "$i$f$checkPrecondition":I
    if-nez v0, :cond_0

    .line 785
    const/4 v2, 0x0

    .line 204
    .local v2, "$i$a$-checkPrecondition-AndroidViewHolder$snapshotObserver$1":I
    nop

    .line 785
    .end local v2    # "$i$a$-checkPrecondition-AndroidViewHolder$snapshotObserver$1":I
    const-string v2, "Expected AndroidViewHolder to be attached when observing reads."

    invoke-static {v2}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 787
    :cond_0
    nop

    .line 206
    .end local v0    # "value$iv":Z
    .end local v1    # "$i$f$checkPrecondition":I
    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->owner:Landroidx/compose/ui/node/Owner;

    invoke-interface {v0}, Landroidx/compose/ui/node/Owner;->getSnapshotObserver()Landroidx/compose/ui/node/OwnerSnapshotObserver;

    move-result-object v0

    return-object v0
.end method

.method private final inset(Landroidx/core/graphics/Insets;IIII)Landroidx/core/graphics/Insets;
    .locals 6
    .param p1, "$this$inset"    # Landroidx/core/graphics/Insets;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 693
    iget v0, p1, Landroidx/core/graphics/Insets;->left:I

    sub-int/2addr v0, p2

    .local v0, "$this$fastCoerceAtLeast$iv":I
    const/4 v1, 0x0

    .local v1, "minimumValue$iv":I
    const/4 v2, 0x0

    .line 916
    .local v2, "$i$f$fastCoerceAtLeast":I
    if-gez v0, :cond_0

    move v0, v1

    .line 694
    .end local v0    # "$this$fastCoerceAtLeast$iv":I
    .end local v1    # "minimumValue$iv":I
    .end local v2    # "$i$f$fastCoerceAtLeast":I
    :cond_0
    iget v1, p1, Landroidx/core/graphics/Insets;->top:I

    sub-int/2addr v1, p3

    .local v1, "$this$fastCoerceAtLeast$iv":I
    const/4 v2, 0x0

    .local v2, "minimumValue$iv":I
    const/4 v3, 0x0

    .line 917
    .local v3, "$i$f$fastCoerceAtLeast":I
    if-gez v1, :cond_1

    move v1, v2

    .line 695
    .end local v1    # "$this$fastCoerceAtLeast$iv":I
    .end local v2    # "minimumValue$iv":I
    .end local v3    # "$i$f$fastCoerceAtLeast":I
    :cond_1
    iget v2, p1, Landroidx/core/graphics/Insets;->right:I

    sub-int/2addr v2, p4

    .local v2, "$this$fastCoerceAtLeast$iv":I
    const/4 v3, 0x0

    .local v3, "minimumValue$iv":I
    const/4 v4, 0x0

    .line 918
    .local v4, "$i$f$fastCoerceAtLeast":I
    if-gez v2, :cond_2

    move v2, v3

    .line 696
    .end local v2    # "$this$fastCoerceAtLeast$iv":I
    .end local v3    # "minimumValue$iv":I
    .end local v4    # "$i$f$fastCoerceAtLeast":I
    :cond_2
    iget v3, p1, Landroidx/core/graphics/Insets;->bottom:I

    sub-int/2addr v3, p5

    .local v3, "$this$fastCoerceAtLeast$iv":I
    const/4 v4, 0x0

    .local v4, "minimumValue$iv":I
    const/4 v5, 0x0

    .line 919
    .local v5, "$i$f$fastCoerceAtLeast":I
    if-gez v3, :cond_3

    move v3, v4

    .line 692
    .end local v3    # "$this$fastCoerceAtLeast$iv":I
    .end local v4    # "minimumValue$iv":I
    .end local v5    # "$i$f$fastCoerceAtLeast":I
    :cond_3
    invoke-static {v0, v1, v2, v3}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method private final insetBounds(Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;)Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;
    .locals 28
    .param p1, "bounds"    # Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;

    .line 666
    move-object/from16 v0, p1

    .local v0, "value$iv":Ljava/lang/Object;
    move-object/from16 v1, p0

    .local v1, "this_$iv":Landroidx/compose/ui/viewinterop/AndroidViewHolder;
    const/4 v2, 0x0

    .line 858
    .local v2, "$i$f$insetValue":I
    iget-object v3, v1, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->getInnerCoordinator$ui()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v3

    .line 859
    .local v3, "coordinates$iv":Landroidx/compose/ui/node/NodeCoordinator;
    invoke-virtual {v3}, Landroidx/compose/ui/node/NodeCoordinator;->isAttached()Z

    move-result v4

    if-nez v4, :cond_0

    .line 860
    goto/16 :goto_1

    .line 862
    :cond_0
    move-object v4, v3

    check-cast v4, Landroidx/compose/ui/layout/LayoutCoordinates;

    invoke-static {v4}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->positionInRoot(Landroidx/compose/ui/layout/LayoutCoordinates;)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntOffsetKt;->round-k-4lQ0M(J)J

    move-result-wide v4

    .line 863
    .local v4, "topLeft$iv":J
    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v6

    .local v6, "$this$fastCoerceAtLeast$iv$iv":I
    const/4 v7, 0x0

    .local v7, "minimumValue$iv$iv":I
    const/4 v8, 0x0

    .line 864
    .local v8, "$i$f$fastCoerceAtLeast":I
    if-gez v6, :cond_1

    move v6, v7

    .line 863
    .end local v6    # "$this$fastCoerceAtLeast$iv$iv":I
    .end local v7    # "minimumValue$iv$iv":I
    .end local v8    # "$i$f$fastCoerceAtLeast":I
    :cond_1
    nop

    .line 865
    .local v6, "left$iv":I
    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v7

    .local v7, "$this$fastCoerceAtLeast$iv$iv":I
    const/4 v8, 0x0

    .local v8, "minimumValue$iv$iv":I
    const/4 v9, 0x0

    .line 864
    .local v9, "$i$f$fastCoerceAtLeast":I
    if-gez v7, :cond_2

    move v7, v8

    .line 865
    .end local v7    # "$this$fastCoerceAtLeast$iv$iv":I
    .end local v8    # "minimumValue$iv$iv":I
    .end local v9    # "$i$f$fastCoerceAtLeast":I
    :cond_2
    nop

    .line 866
    .local v7, "top$iv":I
    move-object v8, v3

    check-cast v8, Landroidx/compose/ui/layout/LayoutCoordinates;

    invoke-static {v8}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->findRootCoordinates(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v8

    invoke-interface {v8}, Landroidx/compose/ui/layout/LayoutCoordinates;->getSize-YbymL2g()J

    move-result-wide v8

    move-wide v10, v8

    .local v10, "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv$iv":J
    const/4 v12, 0x0

    .line 867
    .local v12, "$i$f$component1-impl":I
    move-wide v13, v10

    .local v13, "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv$iv$iv":J
    const/4 v15, 0x0

    .line 868
    .local v15, "$i$f$getWidth-impl":I
    move-wide/from16 v16, v13

    .local v16, "value$iv$iv$iv$iv":J
    const/16 v18, 0x0

    .line 869
    .local v18, "$i$f$unpackInt1":I
    const/16 v19, 0x20

    move-object/from16 v21, v0

    move-object/from16 v20, v1

    .end local v0    # "value$iv":Ljava/lang/Object;
    .end local v1    # "this_$iv":Landroidx/compose/ui/viewinterop/AndroidViewHolder;
    .local v20, "this_$iv":Landroidx/compose/ui/viewinterop/AndroidViewHolder;
    .local v21, "value$iv":Ljava/lang/Object;
    shr-long v0, v16, v19

    long-to-int v0, v0

    .line 868
    .end local v16    # "value$iv$iv$iv$iv":J
    .end local v18    # "$i$f$unpackInt1":I
    nop

    .line 867
    .end local v13    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv$iv$iv":J
    .end local v15    # "$i$f$getWidth-impl":I
    nop

    .line 866
    .end local v10    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv$iv":J
    .end local v12    # "$i$f$component1-impl":I
    nop

    .local v0, "rootWidth$iv":I
    .local v8, "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv$iv":J
    const/4 v1, 0x0

    .line 870
    .local v1, "$i$f$component2-impl":I
    nop

    .local v10, "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv$iv$iv":J
    const/4 v12, 0x0

    .line 871
    .local v12, "$i$f$getHeight-impl":I
    nop

    .local v13, "value$iv$iv$iv$iv":J
    const/4 v15, 0x0

    .line 872
    .local v15, "$i$f$unpackInt2":I
    const-wide v16, 0xffffffffL

    move/from16 v18, v0

    move/from16 v22, v1

    .end local v0    # "rootWidth$iv":I
    .end local v1    # "$i$f$component2-impl":I
    .local v18, "rootWidth$iv":I
    .local v22, "$i$f$component2-impl":I
    and-long v0, v13, v16

    long-to-int v0, v0

    .line 871
    .end local v13    # "value$iv$iv$iv$iv":J
    .end local v15    # "$i$f$unpackInt2":I
    nop

    .line 870
    .end local v10    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv$iv$iv":J
    .end local v12    # "$i$f$getHeight-impl":I
    nop

    .line 866
    .end local v8    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv$iv":J
    .end local v22    # "$i$f$component2-impl":I
    nop

    .line 873
    .local v0, "rootHeight$iv":I
    invoke-virtual {v3}, Landroidx/compose/ui/node/NodeCoordinator;->getSize-YbymL2g()J

    move-result-wide v8

    move-wide v10, v8

    .local v10, "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv$iv":J
    const/4 v1, 0x0

    .line 867
    .local v1, "$i$f$component1-impl":I
    move-wide v12, v10

    .local v12, "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv$iv$iv":J
    const/4 v14, 0x0

    .line 874
    .local v14, "$i$f$getWidth-impl":I
    move-wide/from16 v22, v12

    .local v22, "value$iv$iv$iv$iv":J
    const/4 v15, 0x0

    .line 869
    .local v15, "$i$f$unpackInt1":I
    move/from16 v24, v0

    move/from16 v25, v1

    .end local v0    # "rootHeight$iv":I
    .end local v1    # "$i$f$component1-impl":I
    .local v24, "rootHeight$iv":I
    .local v25, "$i$f$component1-impl":I
    shr-long v0, v22, v19

    long-to-int v0, v0

    .line 874
    .end local v15    # "$i$f$unpackInt1":I
    .end local v22    # "value$iv$iv$iv$iv":J
    nop

    .line 867
    .end local v12    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv$iv$iv":J
    .end local v14    # "$i$f$getWidth-impl":I
    nop

    .line 873
    .end local v10    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv$iv":J
    .end local v25    # "$i$f$component1-impl":I
    nop

    .local v0, "width$iv":I
    .restart local v8    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv$iv":J
    const/4 v1, 0x0

    .line 883
    .local v1, "$i$f$component2-impl":I
    nop

    .local v10, "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv$iv$iv":J
    const/4 v12, 0x0

    .line 879
    .local v12, "$i$f$getHeight-impl":I
    move-wide v13, v10

    .restart local v13    # "value$iv$iv$iv$iv":J
    const/4 v15, 0x0

    .line 872
    .local v15, "$i$f$unpackInt2":I
    move/from16 v23, v1

    move/from16 v22, v2

    .end local v1    # "$i$f$component2-impl":I
    .end local v2    # "$i$f$insetValue":I
    .local v22, "$i$f$insetValue":I
    .local v23, "$i$f$component2-impl":I
    and-long v1, v13, v16

    long-to-int v1, v1

    .line 879
    .end local v13    # "value$iv$iv$iv$iv":J
    .end local v15    # "$i$f$unpackInt2":I
    nop

    .line 883
    .end local v10    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv$iv$iv":J
    .end local v12    # "$i$f$getHeight-impl":I
    nop

    .line 873
    .end local v8    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv$iv":J
    .end local v23    # "$i$f$component2-impl":I
    nop

    .line 884
    .local v1, "height$iv":I
    int-to-float v2, v0

    .local v2, "x$iv$iv":F
    int-to-float v8, v1

    .local v8, "y$iv$iv":F
    const/4 v9, 0x0

    .line 885
    .local v9, "$i$f$Offset":I
    move v10, v8

    .local v10, "val2$iv$iv$iv":F
    move v11, v2

    .local v11, "val1$iv$iv$iv":F
    const/4 v12, 0x0

    .line 886
    .local v12, "$i$f$packFloats":I
    invoke-static {v11}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v13

    int-to-long v13, v13

    .line 887
    .local v13, "v1$iv$iv$iv":J
    invoke-static {v10}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v15

    move/from16 v23, v0

    move/from16 v25, v1

    .end local v0    # "width$iv":I
    .end local v1    # "height$iv":I
    .local v23, "width$iv":I
    .local v25, "height$iv":I
    int-to-long v0, v15

    .line 888
    .local v0, "v2$iv$iv$iv":J
    shl-long v26, v13, v19

    and-long v15, v0, v16

    or-long v0, v26, v15

    .line 885
    .end local v0    # "v2$iv$iv$iv":J
    .end local v10    # "val2$iv$iv$iv":F
    .end local v11    # "val1$iv$iv$iv":F
    .end local v12    # "$i$f$packFloats":I
    .end local v13    # "v1$iv$iv$iv":J
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v0

    .line 884
    .end local v2    # "x$iv$iv":F
    .end local v8    # "y$iv$iv":F
    .end local v9    # "$i$f$Offset":I
    invoke-virtual {v3, v0, v1}, Landroidx/compose/ui/node/NodeCoordinator;->localToRoot-MK-Hz9U(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffsetKt;->round-k-4lQ0M(J)J

    move-result-wide v0

    .line 889
    .local v0, "bottomRight$iv":J
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v2

    sub-int v2, v18, v2

    .local v2, "$this$fastCoerceAtLeast$iv$iv":I
    const/4 v8, 0x0

    .local v8, "minimumValue$iv$iv":I
    const/4 v9, 0x0

    .line 864
    .local v9, "$i$f$fastCoerceAtLeast":I
    if-gez v2, :cond_3

    move v2, v8

    .line 889
    .end local v2    # "$this$fastCoerceAtLeast$iv$iv":I
    .end local v8    # "minimumValue$iv$iv":I
    .end local v9    # "$i$f$fastCoerceAtLeast":I
    :cond_3
    nop

    .line 890
    .local v2, "right$iv":I
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v8

    sub-int v8, v24, v8

    .local v8, "$this$fastCoerceAtLeast$iv$iv":I
    const/4 v9, 0x0

    .local v9, "minimumValue$iv$iv":I
    const/4 v10, 0x0

    .line 864
    .local v10, "$i$f$fastCoerceAtLeast":I
    if-gez v8, :cond_4

    move v8, v9

    .line 890
    .end local v8    # "$this$fastCoerceAtLeast$iv$iv":I
    .end local v9    # "minimumValue$iv$iv":I
    .end local v10    # "$i$f$fastCoerceAtLeast":I
    :cond_4
    nop

    .line 892
    .local v8, "bottom$iv":I
    if-nez v6, :cond_5

    if-nez v7, :cond_5

    if-nez v2, :cond_5

    if-nez v8, :cond_5

    .line 893
    move-wide/from16 v16, v0

    move-object/from16 v10, v21

    goto :goto_0

    .line 895
    :cond_5
    move v9, v6

    .local v9, "l":I
    move v13, v7

    .local v13, "t":I
    move v12, v9

    .end local v9    # "l":I
    .local v12, "l":I
    move v14, v2

    .local v14, "r":I
    move v15, v8

    .local v15, "b":I
    const/4 v9, 0x0

    .line 667
    .local v9, "$i$a$-insetValue-AndroidViewHolder$insetBounds$1":I
    new-instance v10, Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;

    invoke-virtual/range {p1 .. p1}, Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;->getLowerBound()Landroidx/core/graphics/Insets;

    move-result-object v11

    move-wide/from16 v16, v0

    move-object v0, v10

    move-object/from16 v10, p0

    .end local v0    # "bottomRight$iv":J
    .local v16, "bottomRight$iv":J
    invoke-direct/range {v10 .. v15}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->inset(Landroidx/core/graphics/Insets;IIII)Landroidx/core/graphics/Insets;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;->getUpperBound()Landroidx/core/graphics/Insets;

    move-result-object v11

    invoke-direct/range {v10 .. v15}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->inset(Landroidx/core/graphics/Insets;IIII)Landroidx/core/graphics/Insets;

    move-result-object v11

    invoke-direct {v0, v1, v11}, Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;-><init>(Landroidx/core/graphics/Insets;Landroidx/core/graphics/Insets;)V

    move-object v10, v0

    .line 895
    .end local v9    # "$i$a$-insetValue-AndroidViewHolder$insetBounds$1":I
    .end local v12    # "l":I
    .end local v13    # "t":I
    .end local v14    # "r":I
    .end local v15    # "b":I
    :goto_0
    nop

    .line 892
    move-object v0, v10

    .line 668
    .end local v2    # "right$iv":I
    .end local v3    # "coordinates$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v4    # "topLeft$iv":J
    .end local v6    # "left$iv":I
    .end local v7    # "top$iv":I
    .end local v8    # "bottom$iv":I
    .end local v16    # "bottomRight$iv":J
    .end local v18    # "rootWidth$iv":I
    .end local v20    # "this_$iv":Landroidx/compose/ui/viewinterop/AndroidViewHolder;
    .end local v21    # "value$iv":Ljava/lang/Object;
    .end local v22    # "$i$f$insetValue":I
    .end local v23    # "width$iv":I
    .end local v24    # "rootHeight$iv":I
    .end local v25    # "height$iv":I
    :goto_1
    return-object v0
.end method

.method private final insetToLayoutPosition(Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 28
    .param p1, "insets"    # Landroidx/core/view/WindowInsetsCompat;

    .line 659
    move-object/from16 v0, p1

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat;->hasInsets()Z

    move-result v1

    if-nez v1, :cond_0

    .line 660
    return-object v0

    .line 662
    :cond_0
    move-object/from16 v1, p1

    .local v1, "value$iv":Ljava/lang/Object;
    move-object/from16 v2, p0

    .local v2, "this_$iv":Landroidx/compose/ui/viewinterop/AndroidViewHolder;
    const/4 v3, 0x0

    .line 820
    .local v3, "$i$f$insetValue":I
    iget-object v4, v2, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v4}, Landroidx/compose/ui/node/LayoutNode;->getInnerCoordinator$ui()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v4

    .line 821
    .local v4, "coordinates$iv":Landroidx/compose/ui/node/NodeCoordinator;
    invoke-virtual {v4}, Landroidx/compose/ui/node/NodeCoordinator;->isAttached()Z

    move-result v5

    if-nez v5, :cond_1

    .line 822
    goto/16 :goto_1

    .line 824
    :cond_1
    move-object v5, v4

    check-cast v5, Landroidx/compose/ui/layout/LayoutCoordinates;

    invoke-static {v5}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->positionInRoot(Landroidx/compose/ui/layout/LayoutCoordinates;)J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntOffsetKt;->round-k-4lQ0M(J)J

    move-result-wide v5

    .line 825
    .local v5, "topLeft$iv":J
    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v7

    .local v7, "$this$fastCoerceAtLeast$iv$iv":I
    const/4 v8, 0x0

    .local v8, "minimumValue$iv$iv":I
    const/4 v9, 0x0

    .line 826
    .local v9, "$i$f$fastCoerceAtLeast":I
    if-gez v7, :cond_2

    move v7, v8

    .line 825
    .end local v7    # "$this$fastCoerceAtLeast$iv$iv":I
    .end local v8    # "minimumValue$iv$iv":I
    .end local v9    # "$i$f$fastCoerceAtLeast":I
    :cond_2
    nop

    .line 827
    .local v7, "left$iv":I
    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v8

    .local v8, "$this$fastCoerceAtLeast$iv$iv":I
    const/4 v9, 0x0

    .local v9, "minimumValue$iv$iv":I
    const/4 v10, 0x0

    .line 826
    .local v10, "$i$f$fastCoerceAtLeast":I
    if-gez v8, :cond_3

    move v8, v9

    .line 827
    .end local v8    # "$this$fastCoerceAtLeast$iv$iv":I
    .end local v9    # "minimumValue$iv$iv":I
    .end local v10    # "$i$f$fastCoerceAtLeast":I
    :cond_3
    nop

    .line 828
    .local v8, "top$iv":I
    move-object v9, v4

    check-cast v9, Landroidx/compose/ui/layout/LayoutCoordinates;

    invoke-static {v9}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->findRootCoordinates(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v9

    invoke-interface {v9}, Landroidx/compose/ui/layout/LayoutCoordinates;->getSize-YbymL2g()J

    move-result-wide v9

    move-wide v11, v9

    .local v11, "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv$iv":J
    const/4 v13, 0x0

    .line 829
    .local v13, "$i$f$component1-impl":I
    move-wide v14, v11

    .local v14, "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv$iv$iv":J
    const/16 v16, 0x0

    .line 830
    .local v16, "$i$f$getWidth-impl":I
    move-wide/from16 v17, v14

    .local v17, "value$iv$iv$iv$iv":J
    const/16 v19, 0x0

    .line 831
    .local v19, "$i$f$unpackInt1":I
    const/16 v20, 0x20

    move-object/from16 v22, v1

    move-object/from16 v21, v2

    .end local v1    # "value$iv":Ljava/lang/Object;
    .end local v2    # "this_$iv":Landroidx/compose/ui/viewinterop/AndroidViewHolder;
    .local v21, "this_$iv":Landroidx/compose/ui/viewinterop/AndroidViewHolder;
    .local v22, "value$iv":Ljava/lang/Object;
    shr-long v1, v17, v20

    long-to-int v1, v1

    .line 830
    .end local v17    # "value$iv$iv$iv$iv":J
    .end local v19    # "$i$f$unpackInt1":I
    nop

    .line 829
    .end local v14    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv$iv$iv":J
    .end local v16    # "$i$f$getWidth-impl":I
    nop

    .line 828
    .end local v11    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv$iv":J
    .end local v13    # "$i$f$component1-impl":I
    nop

    .local v1, "rootWidth$iv":I
    .local v9, "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv$iv":J
    const/4 v2, 0x0

    .line 832
    .local v2, "$i$f$component2-impl":I
    nop

    .local v11, "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv$iv$iv":J
    const/4 v13, 0x0

    .line 833
    .local v13, "$i$f$getHeight-impl":I
    nop

    .local v14, "value$iv$iv$iv$iv":J
    const/16 v16, 0x0

    .line 834
    .local v16, "$i$f$unpackInt2":I
    const-wide v17, 0xffffffffL

    move/from16 v19, v1

    move/from16 v23, v2

    .end local v1    # "rootWidth$iv":I
    .end local v2    # "$i$f$component2-impl":I
    .local v19, "rootWidth$iv":I
    .local v23, "$i$f$component2-impl":I
    and-long v1, v14, v17

    long-to-int v1, v1

    .line 833
    .end local v14    # "value$iv$iv$iv$iv":J
    .end local v16    # "$i$f$unpackInt2":I
    nop

    .line 832
    .end local v11    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv$iv$iv":J
    .end local v13    # "$i$f$getHeight-impl":I
    nop

    .line 828
    .end local v9    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv$iv":J
    .end local v23    # "$i$f$component2-impl":I
    nop

    .line 835
    .local v1, "rootHeight$iv":I
    invoke-virtual {v4}, Landroidx/compose/ui/node/NodeCoordinator;->getSize-YbymL2g()J

    move-result-wide v9

    move-wide v11, v9

    .local v11, "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv$iv":J
    const/4 v2, 0x0

    .line 829
    .local v2, "$i$f$component1-impl":I
    move-wide v13, v11

    .local v13, "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv$iv$iv":J
    const/4 v15, 0x0

    .line 836
    .local v15, "$i$f$getWidth-impl":I
    move-wide/from16 v23, v13

    .local v23, "value$iv$iv$iv$iv":J
    const/16 v16, 0x0

    .line 831
    .local v16, "$i$f$unpackInt1":I
    move/from16 v25, v1

    move/from16 v26, v2

    .end local v1    # "rootHeight$iv":I
    .end local v2    # "$i$f$component1-impl":I
    .local v25, "rootHeight$iv":I
    .local v26, "$i$f$component1-impl":I
    shr-long v1, v23, v20

    long-to-int v1, v1

    .line 836
    .end local v16    # "$i$f$unpackInt1":I
    .end local v23    # "value$iv$iv$iv$iv":J
    nop

    .line 829
    .end local v13    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv$iv$iv":J
    .end local v15    # "$i$f$getWidth-impl":I
    nop

    .line 835
    .end local v11    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv$iv":J
    .end local v26    # "$i$f$component1-impl":I
    nop

    .local v1, "width$iv":I
    .restart local v9    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv$iv":J
    const/4 v2, 0x0

    .line 845
    .local v2, "$i$f$component2-impl":I
    nop

    .local v11, "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv$iv$iv":J
    const/4 v13, 0x0

    .line 841
    .local v13, "$i$f$getHeight-impl":I
    move-wide v14, v11

    .restart local v14    # "value$iv$iv$iv$iv":J
    const/16 v16, 0x0

    .line 834
    .local v16, "$i$f$unpackInt2":I
    move/from16 v24, v2

    move/from16 v23, v3

    .end local v2    # "$i$f$component2-impl":I
    .end local v3    # "$i$f$insetValue":I
    .local v23, "$i$f$insetValue":I
    .local v24, "$i$f$component2-impl":I
    and-long v2, v14, v17

    long-to-int v2, v2

    .line 841
    .end local v14    # "value$iv$iv$iv$iv":J
    .end local v16    # "$i$f$unpackInt2":I
    nop

    .line 845
    .end local v11    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv$iv$iv":J
    .end local v13    # "$i$f$getHeight-impl":I
    nop

    .line 835
    .end local v9    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv$iv":J
    .end local v24    # "$i$f$component2-impl":I
    nop

    .line 846
    .local v2, "height$iv":I
    int-to-float v3, v1

    .local v3, "x$iv$iv":F
    int-to-float v9, v2

    .local v9, "y$iv$iv":F
    const/4 v10, 0x0

    .line 847
    .local v10, "$i$f$Offset":I
    move v11, v9

    .local v11, "val2$iv$iv$iv":F
    move v12, v3

    .local v12, "val1$iv$iv$iv":F
    const/4 v13, 0x0

    .line 848
    .local v13, "$i$f$packFloats":I
    invoke-static {v12}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v14

    int-to-long v14, v14

    .line 849
    .local v14, "v1$iv$iv$iv":J
    move/from16 v16, v1

    .end local v1    # "width$iv":I
    .local v16, "width$iv":I
    invoke-static {v11}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    move/from16 v24, v2

    .end local v2    # "height$iv":I
    .local v24, "height$iv":I
    int-to-long v1, v1

    .line 850
    .local v1, "v2$iv$iv$iv":J
    shl-long v26, v14, v20

    and-long v17, v1, v17

    or-long v1, v26, v17

    .line 847
    .end local v1    # "v2$iv$iv$iv":J
    .end local v11    # "val2$iv$iv$iv":F
    .end local v12    # "val1$iv$iv$iv":F
    .end local v13    # "$i$f$packFloats":I
    .end local v14    # "v1$iv$iv$iv":J
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v1

    .line 846
    .end local v3    # "x$iv$iv":F
    .end local v9    # "y$iv$iv":F
    .end local v10    # "$i$f$Offset":I
    invoke-virtual {v4, v1, v2}, Landroidx/compose/ui/node/NodeCoordinator;->localToRoot-MK-Hz9U(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffsetKt;->round-k-4lQ0M(J)J

    move-result-wide v1

    .line 851
    .local v1, "bottomRight$iv":J
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v3

    sub-int v3, v19, v3

    .local v3, "$this$fastCoerceAtLeast$iv$iv":I
    const/4 v9, 0x0

    .local v9, "minimumValue$iv$iv":I
    const/4 v10, 0x0

    .line 826
    .local v10, "$i$f$fastCoerceAtLeast":I
    if-gez v3, :cond_4

    move v3, v9

    .line 851
    .end local v3    # "$this$fastCoerceAtLeast$iv$iv":I
    .end local v9    # "minimumValue$iv$iv":I
    .end local v10    # "$i$f$fastCoerceAtLeast":I
    :cond_4
    nop

    .line 852
    .local v3, "right$iv":I
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v9

    sub-int v9, v25, v9

    .local v9, "$this$fastCoerceAtLeast$iv$iv":I
    const/4 v10, 0x0

    .local v10, "minimumValue$iv$iv":I
    const/4 v11, 0x0

    .line 826
    .local v11, "$i$f$fastCoerceAtLeast":I
    if-gez v9, :cond_5

    move v9, v10

    .line 852
    .end local v9    # "$this$fastCoerceAtLeast$iv$iv":I
    .end local v10    # "minimumValue$iv$iv":I
    .end local v11    # "$i$f$fastCoerceAtLeast":I
    :cond_5
    nop

    .line 854
    .local v9, "bottom$iv":I
    if-nez v7, :cond_6

    if-nez v8, :cond_6

    if-nez v3, :cond_6

    if-nez v9, :cond_6

    .line 855
    move-object/from16 v15, v22

    goto :goto_0

    .line 857
    :cond_6
    move v10, v7

    .local v10, "l":I
    move v11, v8

    .local v11, "t":I
    move v12, v3

    .local v12, "r":I
    move v13, v9

    .local v13, "b":I
    const/4 v14, 0x0

    .line 662
    .local v14, "$i$a$-insetValue-AndroidViewHolder$insetToLayoutPosition$1":I
    invoke-virtual {v0, v10, v11, v12, v13}, Landroidx/core/view/WindowInsetsCompat;->inset(IIII)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v15

    .line 857
    .end local v10    # "l":I
    .end local v11    # "t":I
    .end local v12    # "r":I
    .end local v13    # "b":I
    .end local v14    # "$i$a$-insetValue-AndroidViewHolder$insetToLayoutPosition$1":I
    :goto_0
    nop

    .line 854
    move-object v1, v15

    .line 662
    .end local v1    # "bottomRight$iv":J
    .end local v3    # "right$iv":I
    .end local v4    # "coordinates$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v5    # "topLeft$iv":J
    .end local v7    # "left$iv":I
    .end local v8    # "top$iv":I
    .end local v9    # "bottom$iv":I
    .end local v16    # "width$iv":I
    .end local v19    # "rootWidth$iv":I
    .end local v21    # "this_$iv":Landroidx/compose/ui/viewinterop/AndroidViewHolder;
    .end local v22    # "value$iv":Ljava/lang/Object;
    .end local v23    # "$i$f$insetValue":I
    .end local v24    # "height$iv":I
    .end local v25    # "rootHeight$iv":I
    :goto_1
    return-object v1
.end method

.method private final insetValue(Ljava/lang/Object;Lkotlin/jvm/functions/Function4;)Ljava/lang/Object;
    .locals 25
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "block"    # Lkotlin/jvm/functions/Function4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "+TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 671
    .local v0, "$i$f$insetValue":I
    move-object/from16 v1, p0

    iget-object v2, v1, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->getInnerCoordinator$ui()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v2

    .line 672
    .local v2, "coordinates":Landroidx/compose/ui/node/NodeCoordinator;
    invoke-virtual {v2}, Landroidx/compose/ui/node/NodeCoordinator;->isAttached()Z

    move-result v3

    if-nez v3, :cond_0

    .line 673
    return-object p1

    .line 675
    :cond_0
    move-object v3, v2

    check-cast v3, Landroidx/compose/ui/layout/LayoutCoordinates;

    invoke-static {v3}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->positionInRoot(Landroidx/compose/ui/layout/LayoutCoordinates;)J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntOffsetKt;->round-k-4lQ0M(J)J

    move-result-wide v3

    .line 676
    .local v3, "topLeft":J
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v5

    .local v5, "$this$fastCoerceAtLeast$iv":I
    const/4 v6, 0x0

    .local v6, "minimumValue$iv":I
    const/4 v7, 0x0

    .line 896
    .local v7, "$i$f$fastCoerceAtLeast":I
    if-gez v5, :cond_1

    move v5, v6

    .line 676
    .end local v5    # "$this$fastCoerceAtLeast$iv":I
    .end local v6    # "minimumValue$iv":I
    .end local v7    # "$i$f$fastCoerceAtLeast":I
    :cond_1
    nop

    .line 677
    .local v5, "left":I
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v6

    .local v6, "$this$fastCoerceAtLeast$iv":I
    const/4 v7, 0x0

    .local v7, "minimumValue$iv":I
    const/4 v8, 0x0

    .line 897
    .local v8, "$i$f$fastCoerceAtLeast":I
    if-gez v6, :cond_2

    move v6, v7

    .line 677
    .end local v6    # "$this$fastCoerceAtLeast$iv":I
    .end local v7    # "minimumValue$iv":I
    .end local v8    # "$i$f$fastCoerceAtLeast":I
    :cond_2
    nop

    .line 678
    .local v6, "top":I
    move-object v7, v2

    check-cast v7, Landroidx/compose/ui/layout/LayoutCoordinates;

    invoke-static {v7}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->findRootCoordinates(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v7

    invoke-interface {v7}, Landroidx/compose/ui/layout/LayoutCoordinates;->getSize-YbymL2g()J

    move-result-wide v7

    move-wide v9, v7

    .local v9, "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    const/4 v11, 0x0

    .line 898
    .local v11, "$i$f$component1-impl":I
    move-wide v12, v9

    .local v12, "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv$iv":J
    const/4 v14, 0x0

    .line 899
    .local v14, "$i$f$getWidth-impl":I
    move-wide v15, v12

    .local v15, "value$iv$iv$iv":J
    const/16 v17, 0x0

    .line 900
    .local v17, "$i$f$unpackInt1":I
    const/16 v18, 0x20

    move/from16 v19, v0

    .end local v0    # "$i$f$insetValue":I
    .local v19, "$i$f$insetValue":I
    shr-long v0, v15, v18

    long-to-int v0, v0

    .line 899
    .end local v15    # "value$iv$iv$iv":J
    .end local v17    # "$i$f$unpackInt1":I
    nop

    .line 898
    .end local v12    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv$iv":J
    .end local v14    # "$i$f$getWidth-impl":I
    nop

    .line 678
    .end local v9    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    .end local v11    # "$i$f$component1-impl":I
    nop

    .local v0, "rootWidth":I
    .local v7, "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    const/4 v1, 0x0

    .line 901
    .local v1, "$i$f$component2-impl":I
    nop

    .local v9, "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv$iv":J
    const/4 v11, 0x0

    .line 902
    .local v11, "$i$f$getHeight-impl":I
    nop

    .local v12, "value$iv$iv$iv":J
    const/4 v14, 0x0

    .line 903
    .local v14, "$i$f$unpackInt2":I
    const-wide v15, 0xffffffffL

    move/from16 v17, v0

    move/from16 v20, v1

    .end local v0    # "rootWidth":I
    .end local v1    # "$i$f$component2-impl":I
    .local v17, "rootWidth":I
    .local v20, "$i$f$component2-impl":I
    and-long v0, v12, v15

    long-to-int v0, v0

    .line 902
    .end local v12    # "value$iv$iv$iv":J
    .end local v14    # "$i$f$unpackInt2":I
    nop

    .line 901
    .end local v9    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv$iv":J
    .end local v11    # "$i$f$getHeight-impl":I
    nop

    .line 678
    .end local v7    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    .end local v20    # "$i$f$component2-impl":I
    nop

    .line 679
    .local v0, "rootHeight":I
    invoke-virtual {v2}, Landroidx/compose/ui/node/NodeCoordinator;->getSize-YbymL2g()J

    move-result-wide v7

    move-wide v9, v7

    .local v9, "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    const/4 v1, 0x0

    .line 904
    .local v1, "$i$f$component1-impl":I
    move-wide v11, v9

    .local v11, "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv$iv":J
    const/4 v13, 0x0

    .line 905
    .local v13, "$i$f$getWidth-impl":I
    move-wide/from16 v20, v11

    .local v20, "value$iv$iv$iv":J
    const/4 v14, 0x0

    .line 906
    .local v14, "$i$f$unpackInt1":I
    move/from16 v22, v0

    move/from16 v23, v1

    .end local v0    # "rootHeight":I
    .end local v1    # "$i$f$component1-impl":I
    .local v22, "rootHeight":I
    .local v23, "$i$f$component1-impl":I
    shr-long v0, v20, v18

    long-to-int v0, v0

    .line 905
    .end local v14    # "$i$f$unpackInt1":I
    .end local v20    # "value$iv$iv$iv":J
    nop

    .line 904
    .end local v11    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv$iv":J
    .end local v13    # "$i$f$getWidth-impl":I
    nop

    .line 679
    .end local v9    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    .end local v23    # "$i$f$component1-impl":I
    nop

    .local v0, "width":I
    .restart local v7    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    const/4 v1, 0x0

    .line 907
    .local v1, "$i$f$component2-impl":I
    nop

    .local v9, "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv$iv":J
    const/4 v11, 0x0

    .line 908
    .local v11, "$i$f$getHeight-impl":I
    move-wide v12, v9

    .restart local v12    # "value$iv$iv$iv":J
    const/4 v14, 0x0

    .line 909
    .local v14, "$i$f$unpackInt2":I
    move-wide/from16 v20, v3

    .end local v3    # "topLeft":J
    .local v20, "topLeft":J
    and-long v3, v12, v15

    long-to-int v3, v3

    .line 908
    .end local v12    # "value$iv$iv$iv":J
    .end local v14    # "$i$f$unpackInt2":I
    nop

    .line 907
    .end local v9    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv$iv":J
    .end local v11    # "$i$f$getHeight-impl":I
    nop

    .line 679
    .end local v1    # "$i$f$component2-impl":I
    .end local v7    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    nop

    .line 680
    .local v3, "height":I
    int-to-float v1, v0

    .local v1, "x$iv":F
    int-to-float v4, v3

    .local v4, "y$iv":F
    const/4 v7, 0x0

    .line 910
    .local v7, "$i$f$Offset":I
    move v8, v4

    .local v8, "val2$iv$iv":F
    move v9, v1

    .local v9, "val1$iv$iv":F
    const/4 v10, 0x0

    .line 911
    .local v10, "$i$f$packFloats":I
    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v11

    int-to-long v11, v11

    .line 912
    .local v11, "v1$iv$iv":J
    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v13

    int-to-long v13, v13

    .line 913
    .local v13, "v2$iv$iv":J
    shl-long v23, v11, v18

    and-long/2addr v15, v13

    or-long v8, v23, v15

    .line 910
    .end local v8    # "val2$iv$iv":F
    .end local v9    # "val1$iv$iv":F
    .end local v10    # "$i$f$packFloats":I
    .end local v11    # "v1$iv$iv":J
    .end local v13    # "v2$iv$iv":J
    invoke-static {v8, v9}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v7

    .line 680
    .end local v1    # "x$iv":F
    .end local v4    # "y$iv":F
    .end local v7    # "$i$f$Offset":I
    invoke-virtual {v2, v7, v8}, Landroidx/compose/ui/node/NodeCoordinator;->localToRoot-MK-Hz9U(J)J

    move-result-wide v7

    invoke-static {v7, v8}, Landroidx/compose/ui/unit/IntOffsetKt;->round-k-4lQ0M(J)J

    move-result-wide v7

    .line 681
    .local v7, "bottomRight":J
    invoke-static {v7, v8}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v1

    sub-int v1, v17, v1

    .local v1, "$this$fastCoerceAtLeast$iv":I
    const/4 v4, 0x0

    .local v4, "minimumValue$iv":I
    const/4 v9, 0x0

    .line 914
    .local v9, "$i$f$fastCoerceAtLeast":I
    if-gez v1, :cond_3

    move v1, v4

    .line 681
    .end local v1    # "$this$fastCoerceAtLeast$iv":I
    .end local v4    # "minimumValue$iv":I
    .end local v9    # "$i$f$fastCoerceAtLeast":I
    :cond_3
    nop

    .line 682
    .local v1, "right":I
    invoke-static {v7, v8}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v4

    sub-int v4, v22, v4

    .local v4, "$this$fastCoerceAtLeast$iv":I
    const/4 v9, 0x0

    .local v9, "minimumValue$iv":I
    const/4 v10, 0x0

    .line 915
    .local v10, "$i$f$fastCoerceAtLeast":I
    if-gez v4, :cond_4

    move v4, v9

    .line 682
    .end local v4    # "$this$fastCoerceAtLeast$iv":I
    .end local v9    # "minimumValue$iv":I
    .end local v10    # "$i$f$fastCoerceAtLeast":I
    :cond_4
    nop

    .line 684
    .local v4, "bottom":I
    if-nez v5, :cond_5

    if-nez v6, :cond_5

    if-nez v1, :cond_5

    if-nez v4, :cond_5

    .line 685
    move-object/from16 v9, p1

    move-object/from16 v13, p2

    goto :goto_0

    .line 687
    :cond_5
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v13, p2

    invoke-interface {v13, v9, v10, v11, v12}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 684
    :goto_0
    return-object v9
.end method

.method static final invalidateOrDefer$lambda$0(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .param p0, "$tmp0"    # Lkotlin/jvm/functions/Function0;

    .line 343
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private final obtainMeasureSpec(III)I
    .locals 3
    .param p1, "min"    # I
    .param p2, "max"    # I
    .param p3, "preferred"    # I

    .line 533
    nop

    .line 534
    const/high16 v0, 0x40000000    # 2.0f

    if-gez p3, :cond_3

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 538
    :cond_0
    const/4 v1, -0x2

    const v2, 0x7fffffff

    if-ne p3, v1, :cond_1

    if-eq p2, v2, :cond_1

    .line 542
    const/high16 v0, -0x80000000

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_1

    .line 544
    :cond_1
    const/4 v1, -0x1

    if-ne p3, v1, :cond_2

    if-eq p2, v2, :cond_2

    .line 546
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_1

    .line 550
    :cond_2
    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_1

    .line 536
    :cond_3
    :goto_0
    invoke-static {p3, p1, p2}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v1

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 552
    :goto_1
    return v0
.end method


# virtual methods
.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 9
    .param p1, "region"    # Landroid/graphics/Region;

    .line 365
    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 366
    :cond_0
    iget-object v1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->location:[I

    invoke-virtual {p0, v1}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->getLocationInWindow([I)V

    .line 367
    nop

    .line 368
    iget-object v1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->location:[I

    const/4 v2, 0x0

    aget v4, v1, v2

    .line 369
    iget-object v1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->location:[I

    aget v5, v1, v0

    .line 370
    iget-object v1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->location:[I

    aget v1, v1, v2

    invoke-virtual {p0}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->getWidth()I

    move-result v2

    add-int v6, v1, v2

    .line 371
    iget-object v1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->location:[I

    aget v1, v1, v0

    invoke-virtual {p0}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->getHeight()I

    move-result v2

    add-int v7, v1, v2

    .line 372
    sget-object v8, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    .line 367
    move-object v3, p1

    .end local p1    # "region":Landroid/graphics/Region;
    .local v3, "region":Landroid/graphics/Region;
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 374
    return v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 237
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getDensity()Landroidx/compose/ui/unit/Density;
    .locals 1

    .line 164
    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->density:Landroidx/compose/ui/unit/Density;

    return-object v0
.end method

.method public final getInteropView()Landroid/view/View;
    .locals 1

    .line 134
    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->view:Landroid/view/View;

    return-object v0
.end method

.method public final getLayoutNode()Landroidx/compose/ui/node/LayoutNode;
    .locals 1

    .line 381
    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    return-object v0
.end method

.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 293
    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 294
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 293
    :cond_0
    return-object v0
.end method

.method public final getLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;
    .locals 1

    .line 175
    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    return-object v0
.end method

.method public final getModifier()Landroidx/compose/ui/Modifier;
    .locals 1

    .line 153
    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->modifier:Landroidx/compose/ui/Modifier;

    return-object v0
.end method

.method public getNestedScrollAxes()I
    .locals 1

    .line 565
    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->nestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingParentHelper;->getNestedScrollAxes()I

    move-result v0

    return v0
.end method

.method public final getOnDensityChanged$ui()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/unit/Density;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 172
    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->onDensityChanged:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getOnModifierChanged$ui()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/Modifier;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->onModifierChanged:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getOnRequestDisallowInterceptTouchEvent$ui()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 221
    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->onRequestDisallowInterceptTouchEvent:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getRelease()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->release:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getReset()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->reset:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getSavedStateRegistryOwner()Landroidx/savedstate/SavedStateRegistryOwner;
    .locals 1

    .line 184
    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->savedStateRegistryOwner:Landroidx/savedstate/SavedStateRegistryOwner;

    return-object v0
.end method

.method public final getUpdate()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->update:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getView()Landroid/view/View;
    .locals 1

    .line 98
    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->view:Landroid/view/View;

    return-object v0
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 1
    .param p1, "location"    # [I
    .param p2, "dirty"    # Landroid/graphics/Rect;

    .line 318
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    .line 319
    invoke-virtual {p0}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->invalidateOrDefer()V

    .line 320
    const/4 v0, 0x0

    return-object v0
.end method

.method public final invalidateOrDefer()V
    .locals 3

    .line 340
    iget-boolean v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->isDrawing:Z

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->view:Landroid/view/View;

    iget-object v1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->runInvalidate:Lkotlin/jvm/functions/Function0;

    new-instance v2, Landroidx/compose/ui/viewinterop/AndroidViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Landroidx/compose/ui/viewinterop/AndroidViewHolder$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 347
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->invalidateLayer$ui()V

    .line 349
    :goto_0
    return-void
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .line 649
    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isNestedScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method public isValidOwnerScope()Z
    .locals 1

    .line 234
    invoke-virtual {p0}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->isAttachedToWindow()Z

    move-result v0

    return v0
.end method

.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "insets"    # Landroidx/core/view/WindowInsetsCompat;

    .line 654
    new-instance v0, Landroidx/core/view/WindowInsetsCompat;

    invoke-direct {v0, p2}, Landroidx/core/view/WindowInsetsCompat;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    iput-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->insets:Landroidx/core/view/WindowInsetsCompat;

    .line 655
    invoke-direct {p0, p2}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->insetToLayoutPosition(Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 303
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 304
    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->runUpdate:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 305
    return-void
.end method

.method public onDeactivate()V
    .locals 1

    .line 252
    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->reset:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 253
    invoke-virtual {p0}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->removeAllViewsInLayout()V

    .line 254
    return-void
.end method

.method public onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;

    .line 325
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V

    .line 326
    invoke-virtual {p0}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->invalidateOrDefer()V

    .line 327
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 308
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 310
    invoke-direct {p0}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->getSnapshotObserver()Landroidx/compose/ui/node/OwnerSnapshotObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/compose/ui/node/OwnerSnapshotObserver;->clear$ui(Ljava/lang/Object;)V

    .line 311
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 289
    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->view:Landroid/view/View;

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 290
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 261
    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 262
    nop

    .line 263
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 264
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 262
    invoke-virtual {p0, v0, v1}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->setMeasuredDimension(II)V

    .line 266
    return-void

    .line 268
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 269
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->setMeasuredDimension(II)V

    .line 270
    return-void

    .line 273
    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->view:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    .line 274
    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->setMeasuredDimension(II)V

    .line 275
    iput p1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->lastWidthMeasureSpec:I

    .line 276
    iput p2, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->lastHeightMeasureSpec:I

    .line 277
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 14
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .line 629
    invoke-virtual {p0}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->isNestedScrollingEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 630
    :cond_0
    invoke-static/range {p2 .. p2}, Landroidx/compose/ui/viewinterop/AndroidViewHolder_androidKt;->access$toComposeVelocity(F)F

    move-result v0

    invoke-static/range {p3 .. p3}, Landroidx/compose/ui/viewinterop/AndroidViewHolder_androidKt;->access$toComposeVelocity(F)F

    move-result v2

    invoke-static {v0, v2}, Landroidx/compose/ui/unit/VelocityKt;->Velocity(FF)J

    move-result-wide v6

    .line 631
    .local v6, "viewVelocity":J
    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->dispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    invoke-virtual {v0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    new-instance v3, Landroidx/compose/ui/viewinterop/AndroidViewHolder$onNestedFling$1;

    const/4 v8, 0x0

    move-object v5, p0

    move/from16 v4, p4

    invoke-direct/range {v3 .. v8}, Landroidx/compose/ui/viewinterop/AndroidViewHolder$onNestedFling$1;-><init>(ZLandroidx/compose/ui/viewinterop/AndroidViewHolder;JLkotlin/coroutines/Continuation;)V

    move-object v11, v3

    check-cast v11, Lkotlin/jvm/functions/Function2;

    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v8, v0

    invoke-static/range {v8 .. v13}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 638
    return v1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 10
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F

    .line 642
    invoke-virtual {p0}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->isNestedScrollingEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 643
    :cond_0
    invoke-static {p2}, Landroidx/compose/ui/viewinterop/AndroidViewHolder_androidKt;->access$toComposeVelocity(F)F

    move-result v0

    invoke-static {p3}, Landroidx/compose/ui/viewinterop/AndroidViewHolder_androidKt;->access$toComposeVelocity(F)F

    move-result v2

    invoke-static {v0, v2}, Landroidx/compose/ui/unit/VelocityKt;->Velocity(FF)J

    move-result-wide v2

    .line 644
    .local v2, "toBeConsumed":J
    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->dispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    invoke-virtual {v0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v4

    new-instance v0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$onNestedPreFling$1;

    const/4 v5, 0x0

    invoke-direct {v0, p0, v2, v3, v5}, Landroidx/compose/ui/viewinterop/AndroidViewHolder$onNestedPreFling$1;-><init>(Landroidx/compose/ui/viewinterop/AndroidViewHolder;JLkotlin/coroutines/Continuation;)V

    move-object v7, v0

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 645
    return v1
.end method

.method public onNestedPreScroll(Landroid/view/View;II[II)V
    .locals 19
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "consumed"    # [I
    .param p5, "type"    # I

    .line 613
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->isNestedScrollingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 615
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->dispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    .line 616
    invoke-static/range {p2 .. p2}, Landroidx/compose/ui/viewinterop/AndroidViewHolder_androidKt;->access$toComposeOffset(I)F

    move-result v2

    .local v2, "x$iv":F
    invoke-static/range {p3 .. p3}, Landroidx/compose/ui/viewinterop/AndroidViewHolder_androidKt;->access$toComposeOffset(I)F

    move-result v3

    .local v3, "y$iv":F
    const/4 v4, 0x0

    .line 810
    .local v4, "$i$f$Offset":I
    move v5, v3

    .local v5, "val2$iv$iv":F
    move v6, v2

    .local v6, "val1$iv$iv":F
    const/4 v7, 0x0

    .line 811
    .local v7, "$i$f$packFloats":I
    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v8

    int-to-long v8, v8

    .line 812
    .local v8, "v1$iv$iv":J
    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v10

    int-to-long v10, v10

    .line 813
    .local v10, "v2$iv$iv":J
    const/16 v12, 0x20

    shl-long v13, v8, v12

    const-wide v15, 0xffffffffL

    and-long v17, v10, v15

    or-long v5, v13, v17

    .line 810
    .end local v5    # "val2$iv$iv":F
    .end local v6    # "val1$iv$iv":F
    .end local v7    # "$i$f$packFloats":I
    .end local v8    # "v1$iv$iv":J
    .end local v10    # "v2$iv$iv":J
    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v2

    .line 617
    .end local v2    # "x$iv":F
    .end local v3    # "y$iv":F
    .end local v4    # "$i$f$Offset":I
    invoke-static/range {p5 .. p5}, Landroidx/compose/ui/viewinterop/AndroidViewHolder_androidKt;->access$toNestedScrollSource(I)I

    move-result v4

    .line 615
    invoke-virtual {v1, v2, v3, v4}, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;->dispatchPreScroll-OzD1aCk(JI)J

    move-result-wide v1

    .line 614
    nop

    .line 619
    .local v1, "consumedByParent":J
    move-wide v3, v1

    .local v3, "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v5, 0x0

    .line 814
    .local v5, "$i$f$getX-impl":I
    move-wide v6, v3

    .local v6, "value$iv$iv":J
    const/4 v8, 0x0

    .line 815
    .local v8, "$i$f$unpackFloat1":I
    shr-long v9, v6, v12

    long-to-int v9, v9

    .local v9, "bits$iv$iv$iv":I
    const/4 v10, 0x0

    .line 816
    .local v10, "$i$f$floatFromBits":I
    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v9

    .line 815
    .end local v9    # "bits$iv$iv$iv":I
    .end local v10    # "$i$f$floatFromBits":I
    nop

    .line 814
    .end local v6    # "value$iv$iv":J
    .end local v8    # "$i$f$unpackFloat1":I
    nop

    .line 619
    .end local v3    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v5    # "$i$f$getX-impl":I
    invoke-static {v9}, Landroidx/compose/ui/platform/NestedScrollInteropConnectionKt;->composeToViewOffset(F)I

    move-result v3

    const/4 v4, 0x0

    aput v3, p4, v4

    .line 620
    move-wide v3, v1

    .restart local v3    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v5, 0x0

    .line 817
    .local v5, "$i$f$getY-impl":I
    move-wide v6, v3

    .restart local v6    # "value$iv$iv":J
    const/4 v8, 0x0

    .line 818
    .local v8, "$i$f$unpackFloat2":I
    and-long v9, v6, v15

    long-to-int v9, v9

    .restart local v9    # "bits$iv$iv$iv":I
    const/4 v10, 0x0

    .line 819
    .restart local v10    # "$i$f$floatFromBits":I
    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v9

    .line 818
    .end local v9    # "bits$iv$iv$iv":I
    .end local v10    # "$i$f$floatFromBits":I
    nop

    .line 817
    .end local v6    # "value$iv$iv":J
    .end local v8    # "$i$f$unpackFloat2":I
    nop

    .line 620
    .end local v3    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v5    # "$i$f$getY-impl":I
    invoke-static {v9}, Landroidx/compose/ui/platform/NestedScrollInteropConnectionKt;->composeToViewOffset(F)I

    move-result v3

    const/4 v4, 0x1

    aput v3, p4, v4

    .line 621
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII)V
    .locals 19
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I
    .param p6, "type"    # I

    .line 604
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->isNestedScrollingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 605
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->dispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    .line 606
    invoke-static/range {p2 .. p2}, Landroidx/compose/ui/viewinterop/AndroidViewHolder_androidKt;->access$toComposeOffset(I)F

    move-result v2

    .local v2, "x$iv":F
    invoke-static/range {p3 .. p3}, Landroidx/compose/ui/viewinterop/AndroidViewHolder_androidKt;->access$toComposeOffset(I)F

    move-result v3

    .local v3, "y$iv":F
    const/4 v4, 0x0

    .line 802
    .local v4, "$i$f$Offset":I
    move v5, v3

    .local v5, "val2$iv$iv":F
    move v6, v2

    .local v6, "val1$iv$iv":F
    const/4 v7, 0x0

    .line 803
    .local v7, "$i$f$packFloats":I
    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v8

    int-to-long v8, v8

    .line 804
    .local v8, "v1$iv$iv":J
    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v10

    int-to-long v10, v10

    .line 805
    .local v10, "v2$iv$iv":J
    const/16 v12, 0x20

    shl-long v13, v8, v12

    const-wide v15, 0xffffffffL

    and-long v17, v10, v15

    or-long v5, v13, v17

    .line 802
    .end local v5    # "val2$iv$iv":F
    .end local v6    # "val1$iv$iv":F
    .end local v7    # "$i$f$packFloats":I
    .end local v8    # "v1$iv$iv":J
    .end local v10    # "v2$iv$iv":J
    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v2

    .line 607
    .end local v2    # "x$iv":F
    .end local v3    # "y$iv":F
    .end local v4    # "$i$f$Offset":I
    invoke-static/range {p4 .. p4}, Landroidx/compose/ui/viewinterop/AndroidViewHolder_androidKt;->access$toComposeOffset(I)F

    move-result v4

    .local v4, "x$iv":F
    invoke-static/range {p5 .. p5}, Landroidx/compose/ui/viewinterop/AndroidViewHolder_androidKt;->access$toComposeOffset(I)F

    move-result v5

    .local v5, "y$iv":F
    const/4 v6, 0x0

    .line 806
    .local v6, "$i$f$Offset":I
    move v7, v5

    .local v7, "val2$iv$iv":F
    move v8, v4

    .local v8, "val1$iv$iv":F
    const/4 v9, 0x0

    .line 807
    .local v9, "$i$f$packFloats":I
    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v10

    int-to-long v10, v10

    .line 808
    .local v10, "v1$iv$iv":J
    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v13

    int-to-long v13, v13

    .line 809
    .local v13, "v2$iv$iv":J
    shl-long v17, v10, v12

    and-long/2addr v15, v13

    or-long v7, v17, v15

    .line 806
    .end local v7    # "val2$iv$iv":F
    .end local v8    # "val1$iv$iv":F
    .end local v9    # "$i$f$packFloats":I
    .end local v10    # "v1$iv$iv":J
    .end local v13    # "v2$iv$iv":J
    invoke-static {v7, v8}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v4

    .line 608
    .end local v4    # "x$iv":F
    .end local v5    # "y$iv":F
    .end local v6    # "$i$f$Offset":I
    invoke-static/range {p6 .. p6}, Landroidx/compose/ui/viewinterop/AndroidViewHolder_androidKt;->access$toNestedScrollSource(I)I

    move-result v6

    .line 605
    invoke-virtual/range {v1 .. v6}, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;->dispatchPostScroll-DzOQY0M(JJI)J

    .line 610
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII[I)V
    .locals 21
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I
    .param p6, "type"    # I
    .param p7, "consumed"    # [I

    .line 585
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->isNestedScrollingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 587
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->dispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    .line 588
    invoke-static/range {p2 .. p2}, Landroidx/compose/ui/viewinterop/AndroidViewHolder_androidKt;->access$toComposeOffset(I)F

    move-result v2

    .local v2, "x$iv":F
    invoke-static/range {p3 .. p3}, Landroidx/compose/ui/viewinterop/AndroidViewHolder_androidKt;->access$toComposeOffset(I)F

    move-result v3

    .local v3, "y$iv":F
    const/4 v4, 0x0

    .line 788
    .local v4, "$i$f$Offset":I
    move v5, v3

    .local v5, "val2$iv$iv":F
    move v6, v2

    .local v6, "val1$iv$iv":F
    const/4 v7, 0x0

    .line 789
    .local v7, "$i$f$packFloats":I
    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v8

    int-to-long v8, v8

    .line 790
    .local v8, "v1$iv$iv":J
    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v10

    int-to-long v10, v10

    .line 791
    .local v10, "v2$iv$iv":J
    const/16 v12, 0x20

    shl-long v13, v8, v12

    const-wide v15, 0xffffffffL

    and-long v17, v10, v15

    or-long v5, v13, v17

    .line 788
    .end local v5    # "val2$iv$iv":F
    .end local v6    # "val1$iv$iv":F
    .end local v7    # "$i$f$packFloats":I
    .end local v8    # "v1$iv$iv":J
    .end local v10    # "v2$iv$iv":J
    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v2

    .line 589
    .end local v2    # "x$iv":F
    .end local v3    # "y$iv":F
    .end local v4    # "$i$f$Offset":I
    invoke-static/range {p4 .. p4}, Landroidx/compose/ui/viewinterop/AndroidViewHolder_androidKt;->access$toComposeOffset(I)F

    move-result v4

    .local v4, "x$iv":F
    invoke-static/range {p5 .. p5}, Landroidx/compose/ui/viewinterop/AndroidViewHolder_androidKt;->access$toComposeOffset(I)F

    move-result v5

    .local v5, "y$iv":F
    const/4 v6, 0x0

    .line 792
    .local v6, "$i$f$Offset":I
    move v7, v5

    .local v7, "val2$iv$iv":F
    move v8, v4

    .local v8, "val1$iv$iv":F
    const/4 v9, 0x0

    .line 793
    .local v9, "$i$f$packFloats":I
    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v10

    int-to-long v10, v10

    .line 794
    .local v10, "v1$iv$iv":J
    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v13

    int-to-long v13, v13

    .line 795
    .local v13, "v2$iv$iv":J
    shl-long v17, v10, v12

    and-long v19, v13, v15

    or-long v7, v17, v19

    .line 792
    .end local v7    # "val2$iv$iv":F
    .end local v8    # "val1$iv$iv":F
    .end local v9    # "$i$f$packFloats":I
    .end local v10    # "v1$iv$iv":J
    .end local v13    # "v2$iv$iv":J
    invoke-static {v7, v8}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v4

    .line 590
    .end local v4    # "x$iv":F
    .end local v5    # "y$iv":F
    .end local v6    # "$i$f$Offset":I
    invoke-static/range {p6 .. p6}, Landroidx/compose/ui/viewinterop/AndroidViewHolder_androidKt;->access$toNestedScrollSource(I)I

    move-result v6

    .line 587
    invoke-virtual/range {v1 .. v6}, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;->dispatchPostScroll-DzOQY0M(JJI)J

    move-result-wide v1

    .line 586
    nop

    .line 592
    .local v1, "consumedByParent":J
    move-wide v3, v1

    .local v3, "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v5, 0x0

    .line 796
    .local v5, "$i$f$getX-impl":I
    move-wide v6, v3

    .local v6, "value$iv$iv":J
    const/4 v8, 0x0

    .line 797
    .local v8, "$i$f$unpackFloat1":I
    shr-long v9, v6, v12

    long-to-int v9, v9

    .local v9, "bits$iv$iv$iv":I
    const/4 v10, 0x0

    .line 798
    .local v10, "$i$f$floatFromBits":I
    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v9

    .line 797
    .end local v9    # "bits$iv$iv$iv":I
    .end local v10    # "$i$f$floatFromBits":I
    nop

    .line 796
    .end local v6    # "value$iv$iv":J
    .end local v8    # "$i$f$unpackFloat1":I
    nop

    .line 592
    .end local v3    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v5    # "$i$f$getX-impl":I
    invoke-static {v9}, Landroidx/compose/ui/platform/NestedScrollInteropConnectionKt;->composeToViewOffset(F)I

    move-result v3

    const/4 v4, 0x0

    aput v3, p7, v4

    .line 593
    move-wide v3, v1

    .restart local v3    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v5, 0x0

    .line 799
    .local v5, "$i$f$getY-impl":I
    move-wide v6, v3

    .restart local v6    # "value$iv$iv":J
    const/4 v8, 0x0

    .line 800
    .local v8, "$i$f$unpackFloat2":I
    and-long v9, v6, v15

    long-to-int v9, v9

    .restart local v9    # "bits$iv$iv$iv":I
    const/4 v10, 0x0

    .line 801
    .restart local v10    # "$i$f$floatFromBits":I
    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v9

    .line 800
    .end local v9    # "bits$iv$iv$iv":I
    .end local v10    # "$i$f$floatFromBits":I
    nop

    .line 799
    .end local v6    # "value$iv$iv":J
    .end local v8    # "$i$f$unpackFloat2":I
    nop

    .line 593
    .end local v3    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v5    # "$i$f$getY-impl":I
    invoke-static {v9}, Landroidx/compose/ui/platform/NestedScrollInteropConnectionKt;->composeToViewOffset(F)I

    move-result v3

    const/4 v4, 0x1

    aput v3, p7, v4

    .line 594
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I
    .param p4, "type"    # I

    .line 569
    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->nestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/core/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    .line 570
    return-void
.end method

.method public onRelease()V
    .locals 1

    .line 257
    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->release:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 258
    return-void
.end method

.method public onReuse()V
    .locals 1

    .line 244
    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 245
    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->view:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 247
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->reset:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 249
    :goto_0
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I
    .param p4, "type"    # I

    .line 560
    and-int/lit8 v0, p3, 0x2

    if-nez v0, :cond_1

    .line 561
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 560
    :goto_1
    return v0
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "type"    # I

    .line 573
    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->nestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2}, Landroidx/core/view/NestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;I)V

    .line 574
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0
    .param p1, "visibility"    # I

    .line 352
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowVisibilityChanged(I)V

    .line 355
    nop

    .line 358
    return-void
.end method

.method public final remeasure()V
    .locals 2

    .line 280
    iget v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->lastWidthMeasureSpec:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->lastHeightMeasureSpec:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 285
    :cond_0
    iget v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->lastWidthMeasureSpec:I

    iget v1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->lastHeightMeasureSpec:I

    invoke-virtual {p0, v0, v1}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->measure(II)V

    .line 286
    return-void

    .line 283
    :cond_1
    :goto_0
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rectangle"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .line 334
    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->bringIntoViewRequester:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    invoke-static {p2}, Landroidx/compose/ui/graphics/RectHelper_androidKt;->toComposeRect(Landroid/graphics/Rect;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 2
    .param p1, "disallowIntercept"    # Z

    .line 298
    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->onRequestDisallowInterceptTouchEvent:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 300
    return-void
.end method

.method public final setDensity(Landroidx/compose/ui/unit/Density;)V
    .locals 1
    .param p1, "value"    # Landroidx/compose/ui/unit/Density;

    .line 166
    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->density:Landroidx/compose/ui/unit/Density;

    if-eq p1, v0, :cond_0

    .line 167
    iput-object p1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->density:Landroidx/compose/ui/unit/Density;

    .line 168
    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->onDensityChanged:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    :cond_0
    return-void
.end method

.method public final setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1
    .param p1, "value"    # Landroidx/lifecycle/LifecycleOwner;

    .line 177
    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    if-eq p1, v0, :cond_0

    .line 178
    iput-object p1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    .line 179
    move-object v0, p0

    check-cast v0, Landroid/view/View;

    invoke-static {v0, p1}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->set(Landroid/view/View;Landroidx/lifecycle/LifecycleOwner;)V

    .line 181
    :cond_0
    return-void
.end method

.method public final setModifier(Landroidx/compose/ui/Modifier;)V
    .locals 1
    .param p1, "value"    # Landroidx/compose/ui/Modifier;

    .line 155
    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->modifier:Landroidx/compose/ui/Modifier;

    if-eq p1, v0, :cond_0

    .line 156
    iput-object p1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->modifier:Landroidx/compose/ui/Modifier;

    .line 157
    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->onModifierChanged:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    :cond_0
    return-void
.end method

.method public final setOnDensityChanged$ui(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1, "<set-?>"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/unit/Density;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 172
    iput-object p1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->onDensityChanged:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setOnModifierChanged$ui(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1, "<set-?>"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/Modifier;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 161
    iput-object p1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->onModifierChanged:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setOnRequestDisallowInterceptTouchEvent$ui(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1, "<set-?>"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 221
    iput-object p1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->onRequestDisallowInterceptTouchEvent:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method protected final setRelease(Lkotlin/jvm/functions/Function0;)V
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

    .line 150
    iput-object p1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->release:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method protected final setReset(Lkotlin/jvm/functions/Function0;)V
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

    .line 147
    iput-object p1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->reset:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setSavedStateRegistryOwner(Landroidx/savedstate/SavedStateRegistryOwner;)V
    .locals 1
    .param p1, "value"    # Landroidx/savedstate/SavedStateRegistryOwner;

    .line 186
    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->savedStateRegistryOwner:Landroidx/savedstate/SavedStateRegistryOwner;

    if-eq p1, v0, :cond_0

    .line 187
    iput-object p1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->savedStateRegistryOwner:Landroidx/savedstate/SavedStateRegistryOwner;

    .line 188
    move-object v0, p0

    check-cast v0, Landroid/view/View;

    invoke-static {v0, p1}, Landroidx/savedstate/ViewTreeSavedStateRegistryOwner;->set(Landroid/view/View;Landroidx/savedstate/SavedStateRegistryOwner;)V

    .line 190
    :cond_0
    return-void
.end method

.method protected final setUpdate(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1, "value"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 139
    iput-object p1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->update:Lkotlin/jvm/functions/Function0;

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->hasUpdateBlock:Z

    .line 141
    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->runUpdate:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 142
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .line 556
    const/4 v0, 0x1

    return v0
.end method
