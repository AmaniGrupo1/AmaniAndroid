.class public final Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "AndroidComposeViewAccessibilityDelegateCompat.android.kt"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;
.implements Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$Api24Impl;,
        Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$Api29Impl;,
        Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$Companion;,
        Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$ComposeAccessibilityNodeProvider;,
        Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidComposeViewAccessibilityDelegateCompat.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidComposeViewAccessibilityDelegateCompat.android.kt\nandroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat\n+ 2 Offset.kt\nandroidx/compose/ui/geometry/Offset\n+ 3 IntObjectMap.kt\nandroidx/collection/IntObjectMap\n+ 4 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n+ 5 InlineClassHelper.kt\nandroidx/compose/ui/internal/InlineClassHelperKt\n+ 6 Offset.kt\nandroidx/compose/ui/geometry/OffsetKt\n+ 7 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n+ 8 InlineClassHelper.jvm.kt\nandroidx/compose/ui/util/InlineClassHelper_jvmKt\n+ 9 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 10 ScatterSet.kt\nandroidx/collection/ScatterSet\n+ 11 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 12 IntList.kt\nandroidx/collection/IntList\n+ 13 IntList.kt\nandroidx/collection/IntListKt\n+ 14 ObjectIntMap.kt\nandroidx/collection/ObjectIntMap\n+ 15 Size.kt\nandroidx/compose/ui/geometry/Size\n+ 16 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 17 NodeKind.kt\nandroidx/compose/ui/node/Nodes\n+ 18 NodeChain.kt\nandroidx/compose/ui/node/NodeChain\n+ 19 DelegatableNode.kt\nandroidx/compose/ui/node/DelegatableNodeKt\n+ 20 Modifier.kt\nandroidx/compose/ui/Modifier$Node\n+ 21 DelegatingNode.kt\nandroidx/compose/ui/node/DelegatingNode\n+ 22 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n+ 23 CornerRadius.kt\nandroidx/compose/ui/geometry/CornerRadius\n+ 24 AndroidPath.android.kt\nandroidx/compose/ui/graphics/AndroidPath_androidKt\n+ 25 AndroidTrace.android.kt\nandroidx/compose/ui/util/AndroidTrace_androidKt\n+ 26 IntSet.kt\nandroidx/collection/IntSet\n+ 27 ScatterMap.kt\nandroidx/collection/ScatterMap\n+ 28 OwnerSnapshotObserver.kt\nandroidx/compose/ui/node/OwnerSnapshotObserver\n*L\n1#1,3454:1\n111#2,2:3455\n65#2:3494\n69#2:3497\n65#2:3500\n69#2:3503\n65#2:3672\n69#2:3675\n65#2:3678\n69#2:3681\n397#3,3:3457\n354#3,6:3460\n364#3,3:3467\n367#3,9:3471\n400#3:3480\n425#3:3509\n382#3,4:3760\n354#3,6:3764\n364#3,3:3771\n367#3,9:3775\n386#3:3784\n390#3,3:3785\n354#3,6:3788\n364#3,3:3795\n367#3,2:3799\n370#3,6:3840\n393#3:3846\n425#3:3852\n425#3:3883\n1399#4:3466\n1270#4:3470\n1399#4:3521\n1270#4:3525\n1399#4:3583\n1270#4:3587\n1399#4:3745\n1270#4:3749\n1399#4:3770\n1270#4:3774\n1399#4:3794\n1270#4:3798\n1399#4:3816\n1270#4:3820\n1399#4:3865\n1270#4:3869\n78#5,5:3481\n78#5,5:3801\n30#6:3486\n30#6:3490\n30#6:3664\n30#6:3668\n30#6:3713\n53#7,3:3487\n53#7,3:3491\n60#7:3495\n70#7:3498\n60#7:3501\n70#7:3504\n60#7:3561\n70#7:3564\n53#7,3:3665\n53#7,3:3669\n60#7:3673\n70#7:3676\n60#7:3679\n70#7:3682\n60#7:3685\n70#7:3688\n60#7:3691\n70#7:3694\n60#7:3697\n70#7:3700\n60#7:3703\n70#7:3706\n53#7,3:3714\n22#8:3496\n22#8:3499\n22#8:3502\n22#8:3505\n22#8:3562\n22#8:3565\n22#8:3674\n22#8:3677\n22#8:3680\n22#8:3683\n22#8:3686\n22#8:3689\n22#8:3692\n22#8:3695\n22#8:3698\n22#8:3701\n22#8:3704\n22#8:3707\n35#9,3:3506\n39#9:3510\n35#9,3:3545\n39#9:3549\n71#9,5:3550\n71#9,5:3555\n35#9,5:3566\n35#9,5:3823\n35#9,5:3828\n35#9,3:3849\n39#9:3853\n35#9,3:3880\n39#9:3884\n231#10,3:3511\n200#10,7:3514\n211#10,3:3522\n214#10,2:3526\n217#10,6:3529\n234#10:3535\n231#10,3:3573\n200#10,7:3576\n211#10,3:3584\n214#10,9:3588\n234#10:3597\n1#11:3528\n65#12:3536\n65#12:3537\n237#12,6:3539\n905#13:3538\n438#14:3548\n57#15:3560\n61#15:3563\n37#16,2:3571\n92#17:3598\n92#17:3717\n92#17:3718\n628#18,11:3599\n654#18,3:3610\n639#18,2:3613\n642#18,2:3658\n657#18,3:3660\n644#18:3663\n556#19,6:3615\n566#19,2:3622\n568#19,8:3627\n576#19,9:3638\n585#19,8:3650\n247#20:3621\n240#21,3:3624\n243#21,3:3647\n1107#22:3635\n1085#22,2:3636\n48#23:3684\n53#23:3687\n48#23:3690\n53#23:3693\n48#23:3696\n53#23:3699\n48#23:3702\n53#23:3705\n36#24,5:3708\n27#25,5:3719\n27#25,5:3724\n27#25,5:3729\n27#25,5:3885\n27#25,5:3890\n255#26,4:3734\n225#26,7:3738\n236#26,3:3746\n239#26,9:3750\n259#26:3759\n255#26,4:3854\n225#26,7:3858\n236#26,3:3866\n239#26,9:3870\n259#26:3879\n357#27,4:3806\n329#27,6:3810\n339#27,3:3817\n342#27,2:3821\n345#27,6:3833\n361#27:3839\n138#28,2:3847\n*S KotlinDebug\n*F\n+ 1 AndroidComposeViewAccessibilityDelegateCompat.android.kt\nandroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat\n*L\n443#1:3455,2\n579#1:3494\n580#1:3497\n581#1:3500\n582#1:3503\n1957#1:3672\n1958#1:3675\n1959#1:3678\n1960#1:3681\n452#1:3457,3\n452#1:3460,6\n452#1:3467,3\n452#1:3471,9\n452#1:3480\n642#1:3509\n2367#1:3760,4\n2367#1:3764,6\n2367#1:3771,3\n2367#1:3775,9\n2367#1:3784\n2390#1:3785,3\n2390#1:3788,6\n2390#1:3795,3\n2390#1:3799,2\n2390#1:3840,6\n2390#1:3846\n2858#1:3852\n2877#1:3883\n452#1:3466\n452#1:3470\n908#1:3521\n908#1:3525\n1863#1:3583\n1863#1:3587\n2349#1:3745\n2349#1:3749\n2367#1:3770\n2367#1:3774\n2390#1:3794\n2390#1:3798\n2401#1:3816\n2401#1:3820\n2868#1:3865\n2868#1:3869\n522#1:3481,5\n2395#1:3801,5\n573#1:3486\n574#1:3490\n1951#1:3664\n1953#1:3668\n2076#1:3713\n573#1:3487,3\n574#1:3491,3\n579#1:3495\n580#1:3498\n581#1:3501\n582#1:3504\n1497#1:3561\n1532#1:3564\n1951#1:3665,3\n1953#1:3669,3\n1957#1:3673\n1958#1:3676\n1959#1:3679\n1960#1:3682\n1982#1:3685\n1983#1:3688\n1984#1:3691\n1985#1:3694\n1986#1:3697\n1987#1:3700\n1988#1:3703\n1989#1:3706\n2076#1:3714,3\n579#1:3496\n580#1:3499\n581#1:3502\n582#1:3505\n1497#1:3562\n1532#1:3565\n1957#1:3674\n1958#1:3677\n1959#1:3680\n1960#1:3683\n1982#1:3686\n1983#1:3689\n1984#1:3692\n1985#1:3695\n1986#1:3698\n1987#1:3701\n1988#1:3704\n1989#1:3707\n641#1:3506,3\n641#1:3510\n1074#1:3545,3\n1074#1:3549\n1085#1:3550,5\n1092#1:3555,5\n1727#1:3566,5\n2676#1:3823,5\n2678#1:3828,5\n2857#1:3849,3\n2857#1:3853\n2875#1:3880,3\n2875#1:3884\n908#1:3511,3\n908#1:3514,7\n908#1:3522,3\n908#1:3526,2\n908#1:3529,6\n908#1:3535\n1863#1:3573,3\n1863#1:3576,7\n1863#1:3584,3\n1863#1:3588,9\n1863#1:3597\n1054#1:3536\n1057#1:3537\n1071#1:3539,6\n1070#1:3538\n1075#1:3548\n1497#1:3560\n1532#1:3563\n1789#1:3571,2\n1904#1:3598\n2091#1:3717\n2305#1:3718\n1904#1:3599,11\n1904#1:3610,3\n1904#1:3613,2\n1904#1:3658,2\n1904#1:3660,3\n1904#1:3663\n1904#1:3615,6\n1904#1:3622,2\n1904#1:3627,8\n1904#1:3638,9\n1904#1:3650,8\n1904#1:3621\n1904#1:3624,3\n1904#1:3647,3\n1904#1:3635\n1904#1:3636,2\n1982#1:3684\n1983#1:3687\n1984#1:3690\n1985#1:3693\n1986#1:3696\n1987#1:3699\n1988#1:3702\n1989#1:3705\n1998#1:3708,5\n2331#1:3719,5\n2340#1:3724,5\n2343#1:3729,5\n2171#1:3885,5\n2172#1:3890,5\n2349#1:3734,4\n2349#1:3738,7\n2349#1:3746,3\n2349#1:3750,9\n2349#1:3759\n2868#1:3854,4\n2868#1:3858,7\n2868#1:3866,3\n2868#1:3870,9\n2868#1:3879\n2401#1:3806,4\n2401#1:3810,6\n2401#1:3817,3\n2401#1:3821,2\n2401#1:3833,6\n2401#1:3839\n2754#1:3847,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00fc\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0014\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u001a\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0001\u0018\u0000 \u008e\u00022\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\n\u008e\u0002\u008f\u0002\u0090\u0002\u0091\u0002\u0092\u0002B\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0008\u0010-\u001a\u00020.H\u0002J\u0010\u0010v\u001a\u00020.2\u0006\u0010\u0005\u001a\u00020wH\u0016J\u0010\u0010x\u001a\u00020.2\u0006\u0010\u0005\u001a\u00020wH\u0016J\u0010\u0010y\u001a\u00020.2\u0006\u0010z\u001a\u00020\u0016H\u0016J\u0010\u0010{\u001a\u00020.2\u0006\u0010z\u001a\u00020\u0016H\u0016J*\u0010|\u001a\u00020\u00162\u0006\u0010}\u001a\u00020\u00162\u0006\u0010~\u001a\u00020\u000c2\u0007\u0010\u007f\u001a\u00030\u0080\u0001H\u0000\u00a2\u0006\u0006\u0008\u0081\u0001\u0010\u0082\u0001J8\u0010|\u001a\u00020\u00162\u000c\u0010Y\u001a\u0008\u0012\u0004\u0012\u00020[0Z2\u0006\u0010}\u001a\u00020\u00162\u0006\u0010~\u001a\u00020\u000c2\u0007\u0010\u007f\u001a\u00030\u0080\u0001H\u0002\u00a2\u0006\u0006\u0008\u0083\u0001\u0010\u0084\u0001J\t\u0010\u0085\u0001\u001a\u00020\u0016H\u0002J\u0014\u0010\u0086\u0001\u001a\u0004\u0018\u00010B2\u0007\u0010\u0087\u0001\u001a\u00020\u000cH\u0002J\u000b\u0010\u0088\u0001\u001a\u0004\u0018\u00010BH\u0002J\u0013\u0010\u0089\u0001\u001a\u00030\u008a\u00012\u0007\u0010\u008b\u0001\u001a\u00020[H\u0002J2\u0010\u008c\u0001\u001a\u00030\u008a\u00012\u0008\u0010\u008d\u0001\u001a\u00030\u008e\u00012\u0008\u0010\u008f\u0001\u001a\u00030\u008e\u00012\u0008\u0010\u0090\u0001\u001a\u00030\u008e\u00012\u0008\u0010\u0091\u0001\u001a\u00030\u008e\u0001H\u0002J%\u0010\u0092\u0001\u001a\u00020.2\u0007\u0010\u0087\u0001\u001a\u00020\u000c2\u0007\u0010\u0093\u0001\u001a\u00020B2\u0008\u0010\u0094\u0001\u001a\u00030\u0095\u0001H\u0002J\u001c\u0010\u0096\u0001\u001a\u00020.2\u0008\u0010\u008b\u0001\u001a\u00030\u0095\u00012\u0007\u0010\u0093\u0001\u001a\u00020BH\u0002J\u0011\u0010\u0097\u0001\u001a\u0005\u0018\u00010\u0098\u0001*\u00030\u0099\u0001H\u0002J\u001c\u0010\u009a\u0001\u001a\u00020.2\u0008\u0010\u008b\u0001\u001a\u00030\u0095\u00012\u0007\u0010\u0093\u0001\u001a\u00020BH\u0002J\u0012\u0010\u009b\u0001\u001a\u00020\u00162\u0007\u0010\u0087\u0001\u001a\u00020\u000cH\u0002J\u0012\u0010\u009c\u0001\u001a\u00020\u00162\u0007\u0010\u0087\u0001\u001a\u00020\u000cH\u0002JA\u0010\u009d\u0001\u001a\u00020\u00162\u0007\u0010\u0087\u0001\u001a\u00020\u000c2\u0007\u0010\u009e\u0001\u001a\u00020\u000c2\u000b\u0008\u0002\u0010\u009f\u0001\u001a\u0004\u0018\u00010\u000c2\u0011\u0008\u0002\u0010\u00a0\u0001\u001a\n\u0012\u0004\u0012\u00020j\u0018\u00010+H\u0002\u00a2\u0006\u0003\u0010\u00a1\u0001J\u0012\u0010\u00a2\u0001\u001a\u00020\u00162\u0007\u0010\u00a3\u0001\u001a\u00020\u0015H\u0002J\u001b\u0010\u00a4\u0001\u001a\u00020\u00152\u0007\u0010\u0087\u0001\u001a\u00020\u000c2\u0007\u0010\u009e\u0001\u001a\u00020\u000cH\u0003JD\u0010\u00a5\u0001\u001a\u00020\u00152\u0007\u0010\u0087\u0001\u001a\u00020\u000c2\t\u0010\u00a6\u0001\u001a\u0004\u0018\u00010\u000c2\t\u0010\u00a7\u0001\u001a\u0004\u0018\u00010\u000c2\t\u0010\u00a8\u0001\u001a\u0004\u0018\u00010\u000c2\t\u0010\u00a9\u0001\u001a\u0004\u0018\u00010KH\u0002\u00a2\u0006\u0003\u0010\u00aa\u0001J\u0012\u0010\u00ab\u0001\u001a\u00020\u00162\u0007\u0010\u0087\u0001\u001a\u00020\u000cH\u0002J\'\u0010\u00ac\u0001\u001a\u00020\u00162\u0007\u0010\u0087\u0001\u001a\u00020\u000c2\u0007\u0010\u00ad\u0001\u001a\u00020\u000c2\n\u0010\u00ae\u0001\u001a\u0005\u0018\u00010\u00af\u0001H\u0002J0\u0010\u00b0\u0001\u001a\u00020.2\u0007\u0010\u0087\u0001\u001a\u00020\u000c2\u0007\u0010\u0093\u0001\u001a\u00020B2\u0007\u0010\u00b1\u0001\u001a\u00020j2\n\u0010\u00ae\u0001\u001a\u0005\u0018\u00010\u00af\u0001H\u0002J(\u0010\u00b4\u0001\u001a\u00030\u00b5\u00012\u0008\u0010\u008b\u0001\u001a\u00030\u0095\u00012\u0008\u0010\u00b6\u0001\u001a\u00030\u008a\u00012\u0008\u0010\u00b7\u0001\u001a\u00030\u00b8\u0001H\u0002J\u0019\u0010\u00b9\u0001\u001a\u00030\u00b5\u0001*\u00030\u008a\u00012\u0008\u0010\u00b6\u0001\u001a\u00030\u008a\u0001H\u0002J\"\u0010\u00ba\u0001\u001a\u0005\u0018\u00010\u00bb\u00012\n\u0010\u00bc\u0001\u001a\u0005\u0018\u00010\u0095\u00012\u0008\u0010\u00bd\u0001\u001a\u00030\u00b5\u0001H\u0002J,\u0010\u00be\u0001\u001a\u00030\u00bf\u0001*\u00030\u00b8\u00012\u0008\u0010\u00c0\u0001\u001a\u00030\u00c1\u00012\u0008\u0010\u00c2\u0001\u001a\u00030\u00c3\u0001H\u0002\u00a2\u0006\u0006\u0008\u00c4\u0001\u0010\u00c5\u0001J%\u0010\u00c6\u0001\u001a\u0005\u0018\u00010\u008a\u0001*\u00030\u00bf\u00012\u0008\u0010\u00c7\u0001\u001a\u00030\u008e\u00012\u0008\u0010\u00c8\u0001\u001a\u00030\u008e\u0001H\u0002J\u0011\u0010\u00c9\u0001\u001a\u0005\u0018\u00010\u00ca\u0001*\u00030\u00bf\u0001H\u0002J%\u0010\u00cb\u0001\u001a\u0005\u0018\u00010\u00cc\u0001*\u00030\u00bf\u00012\u0008\u0010\u00c7\u0001\u001a\u00030\u008e\u00012\u0008\u0010\u00c8\u0001\u001a\u00030\u008e\u0001H\u0002J\'\u0010\u00c6\u0001\u001a\u00030\u008a\u0001*\u00030\u00b5\u00012\n\u0008\u0002\u0010\u00c7\u0001\u001a\u00030\u008e\u00012\n\u0008\u0002\u0010\u00c8\u0001\u001a\u00030\u008e\u0001H\u0002J\u0019\u0010\u00cd\u0001\u001a\u00020\u00162\u0008\u0010\u00a3\u0001\u001a\u00030\u00ce\u0001H\u0000\u00a2\u0006\u0003\u0008\u00cf\u0001J#\u0010\u00d0\u0001\u001a\u00020\u000c2\u0008\u0010\u00d1\u0001\u001a\u00030\u008e\u00012\u0008\u0010\u00d2\u0001\u001a\u00030\u008e\u0001H\u0001\u00a2\u0006\u0003\u0008\u00d3\u0001J\u0012\u0010\u00d4\u0001\u001a\u00020.2\u0007\u0010\u0087\u0001\u001a\u00020\u000cH\u0002J\u0013\u0010\u00d5\u0001\u001a\u00030\u00d6\u00012\u0007\u0010\u00d7\u0001\u001a\u00020wH\u0016J4\u0010\u00d8\u0001\u001a\u0005\u0018\u0001H\u00d9\u0001\"\t\u0008\u0000\u0010\u00d9\u0001*\u00020K2\n\u0010\u00a9\u0001\u001a\u0005\u0018\u0001H\u00d9\u00012\t\u0008\u0001\u0010\u00c0\u0001\u001a\u00020\u000cH\u0002\u00a2\u0006\u0003\u0010\u00da\u0001J\u000f\u0010\u00dd\u0001\u001a\u00020.H\u0000\u00a2\u0006\u0003\u0008\u00de\u0001J\u0013\u0010\u00df\u0001\u001a\u00020.H\u0080@\u00a2\u0006\u0006\u0008\u00e0\u0001\u0010\u00e1\u0001J\u0018\u0010\u00e2\u0001\u001a\u00020.2\u0007\u0010\u00e3\u0001\u001a\u00020SH\u0000\u00a2\u0006\u0003\u0008\u00e4\u0001J\u0012\u0010\u00e5\u0001\u001a\u00020.2\u0007\u0010\u00e3\u0001\u001a\u00020SH\u0002J\u0012\u0010\u00e6\u0001\u001a\u00020.2\u0007\u0010\u00e3\u0001\u001a\u00020SH\u0002J\u001b\u0010\u00e7\u0001\u001a\u00020.2\u0007\u0010\u00e3\u0001\u001a\u00020S2\u0007\u0010\u00e8\u0001\u001a\u00020_H\u0002J\t\u0010\u00e9\u0001\u001a\u00020.H\u0002J\t\u0010\u00ea\u0001\u001a\u00020.H\u0002J\u0018\u0010\u00eb\u0001\u001a\u00020.2\r\u0010\u00ec\u0001\u001a\u0008\u0012\u0004\u0012\u00020[0ZH\u0002J\"\u0010\u00f1\u0001\u001a\u00020\u00162\u0007\u0010\u00f2\u0001\u001a\u00020\u000c2\u000e\u0010\u00f3\u0001\u001a\t\u0012\u0005\u0012\u00030\u00ef\u00010+H\u0002J\u0013\u0010\u00f4\u0001\u001a\u00020.2\u0008\u0010\u00f5\u0001\u001a\u00030\u00ef\u0001H\u0002J&\u0010\u00f6\u0001\u001a\u00020.2\u0007\u0010\u00f7\u0001\u001a\u00020\u000c2\u0007\u0010\u009f\u0001\u001a\u00020\u000c2\t\u0010\u00f8\u0001\u001a\u0004\u0018\u00010jH\u0002J\u001c\u0010\u00f9\u0001\u001a\u00020.2\u0008\u0010\u00fa\u0001\u001a\u00030\u0095\u00012\u0007\u0010\u00fb\u0001\u001a\u00020rH\u0002J\u0012\u0010\u00fc\u0001\u001a\u00020\u000c2\u0007\u0010\u00f2\u0001\u001a\u00020\u000cH\u0002J.\u0010\u00fd\u0001\u001a\u00020\u00162\u0008\u0010\u008b\u0001\u001a\u00030\u0095\u00012\u0007\u0010\u00fe\u0001\u001a\u00020\u000c2\u0007\u0010\u00ff\u0001\u001a\u00020\u00162\u0007\u0010\u0080\u0002\u001a\u00020\u0016H\u0002J\u0012\u0010\u0081\u0002\u001a\u00020.2\u0007\u0010\u00f7\u0001\u001a\u00020\u000cH\u0002J.\u0010\u0082\u0002\u001a\u00020\u00162\u0008\u0010\u008b\u0001\u001a\u00030\u0095\u00012\u0007\u0010\u0083\u0002\u001a\u00020\u000c2\u0007\u0010\u0084\u0002\u001a\u00020\u000c2\u0007\u0010\u0085\u0002\u001a\u00020\u0016H\u0002J\u0013\u0010\u0086\u0002\u001a\u00020\u000c2\u0008\u0010\u008b\u0001\u001a\u00030\u0095\u0001H\u0002J\u0013\u0010\u0087\u0002\u001a\u00020\u000c2\u0008\u0010\u008b\u0001\u001a\u00030\u0095\u0001H\u0002J\u0013\u0010\u0088\u0002\u001a\u00020\u00162\u0008\u0010\u008b\u0001\u001a\u00030\u0095\u0001H\u0002J!\u0010\u0089\u0002\u001a\u0005\u0018\u00010\u008a\u00022\n\u0010\u008b\u0001\u001a\u0005\u0018\u00010\u0095\u00012\u0007\u0010\u00fe\u0001\u001a\u00020\u000cH\u0002J\u0017\u0010\u008b\u0002\u001a\u0004\u0018\u00010j2\n\u0010\u008b\u0001\u001a\u0005\u0018\u00010\u0095\u0001H\u0002J\u0011\u0010\u008c\u0002\u001a\u0005\u0018\u00010\u0099\u0001*\u00030\u008d\u0002H\u0002R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR$\u0010\u000b\u001a\u00020\u000c8\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R0\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00160\u00148\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0017\u0010\u000e\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u001f\u001a\u00020\u00162\u0006\u0010\u001e\u001a\u00020\u0016@@X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R\u001a\u0010$\u001a\u00020%X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)R\u0016\u0010*\u001a\n\u0012\u0004\u0012\u00020,\u0018\u00010+X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010/\u001a\u0008\u0012\u0004\u0012\u00020,0+8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u00080\u00101R\u0014\u00102\u001a\u00020\u00168@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u00083\u0010!R\u0014\u00104\u001a\u00020\u00168BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u00084\u0010!R\u001e\u00105\u001a\u0004\u0018\u00010\u0016X\u0080\u000e\u00a2\u0006\u0010\n\u0002\u0010:\u001a\u0004\u00086\u00107\"\u0004\u00088\u00109R\u000e\u0010;\u001a\u00020<X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010=\u001a\u00060>R\u00020\u0000X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010?\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010@\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010A\u001a\u0004\u0018\u00010BX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010C\u001a\u0004\u0018\u00010BX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010D\u001a\u00020\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010E\u001a\u0008\u0012\u0004\u0012\u00020G0FX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010H\u001a\u0008\u0012\u0004\u0012\u00020G0FX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010I\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020K0J0JX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010L\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020K0M0JX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010N\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010O\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010PR\u0014\u0010Q\u001a\u0008\u0012\u0004\u0012\u00020S0RX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010T\u001a\u0008\u0012\u0004\u0012\u00020.0UX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010V\u001a\u00020\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010W\u001a\u0004\u0018\u00010XX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010Y\u001a\u0008\u0012\u0004\u0012\u00020[0Z8BX\u0082\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\\\u0010]R\u000e\u0010^\u001a\u00020_X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010`\u001a\u00020aX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008b\u0010c\"\u0004\u0008d\u0010eR\u001a\u0010f\u001a\u00020aX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008g\u0010c\"\u0004\u0008h\u0010eR\u0014\u0010i\u001a\u00020jX\u0080D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008k\u0010lR\u0014\u0010m\u001a\u00020jX\u0080D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008n\u0010lR\u000e\u0010o\u001a\u00020pX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010q\u001a\u0008\u0012\u0004\u0012\u00020r0FX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010s\u001a\u00020rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010t\u001a\u00020\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010u\u001a\u00020aX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0089\u0001\u001a\u00030\u008a\u0001*\u00020B8BX\u0082\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u00b2\u0001\u0010\u00b3\u0001R\u0010\u0010\u00db\u0001\u001a\u00030\u00dc\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u00ed\u0001\u001a\n\u0012\u0005\u0012\u00030\u00ef\u00010\u00ee\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u00f0\u0001\u001a\u000f\u0012\u0005\u0012\u00030\u00ef\u0001\u0012\u0004\u0012\u00020.0\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0093\u0002"
    }
    d2 = {
        "Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;",
        "Landroidx/core/view/AccessibilityDelegateCompat;",
        "Landroid/view/View$OnAttachStateChangeListener;",
        "Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;",
        "Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;",
        "view",
        "Landroidx/compose/ui/platform/AndroidComposeView;",
        "<init>",
        "(Landroidx/compose/ui/platform/AndroidComposeView;)V",
        "getView",
        "()Landroidx/compose/ui/platform/AndroidComposeView;",
        "hoveredVirtualViewId",
        "",
        "getHoveredVirtualViewId$ui$annotations",
        "()V",
        "getHoveredVirtualViewId$ui",
        "()I",
        "setHoveredVirtualViewId$ui",
        "(I)V",
        "onSendAccessibilityEvent",
        "Lkotlin/Function1;",
        "Landroid/view/accessibility/AccessibilityEvent;",
        "",
        "getOnSendAccessibilityEvent$ui$annotations",
        "getOnSendAccessibilityEvent$ui",
        "()Lkotlin/jvm/functions/Function1;",
        "setOnSendAccessibilityEvent$ui",
        "(Lkotlin/jvm/functions/Function1;)V",
        "accessibilityManager",
        "Landroid/view/accessibility/AccessibilityManager;",
        "value",
        "accessibilityForceEnabledForTesting",
        "getAccessibilityForceEnabledForTesting$ui",
        "()Z",
        "setAccessibilityForceEnabledForTesting$ui",
        "(Z)V",
        "SendRecurringAccessibilityEventsIntervalMillis",
        "",
        "getSendRecurringAccessibilityEventsIntervalMillis$ui",
        "()J",
        "setSendRecurringAccessibilityEventsIntervalMillis$ui",
        "(J)V",
        "_enabledServices",
        "",
        "Landroid/accessibilityservice/AccessibilityServiceInfo;",
        "resetEnabledAccessibilityServiceList",
        "",
        "enabledServices",
        "getEnabledServices",
        "()Ljava/util/List;",
        "isEnabled",
        "isEnabled$ui",
        "isTouchExplorationEnabled",
        "requestFromAccessibilityToolForTesting",
        "getRequestFromAccessibilityToolForTesting$ui",
        "()Ljava/lang/Boolean;",
        "setRequestFromAccessibilityToolForTesting$ui",
        "(Ljava/lang/Boolean;)V",
        "Ljava/lang/Boolean;",
        "handler",
        "Landroid/os/Handler;",
        "nodeProvider",
        "Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$ComposeAccessibilityNodeProvider;",
        "accessibilityFocusedVirtualViewId",
        "focusedVirtualViewId",
        "currentlyAccessibilityFocusedANI",
        "Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;",
        "currentlyFocusedANI",
        "sendingFocusAffectingEvent",
        "pendingHorizontalScrollEvents",
        "Landroidx/collection/MutableIntObjectMap;",
        "Landroidx/compose/ui/semantics/ScrollAxisRange;",
        "pendingVerticalScrollEvents",
        "actionIdToLabel",
        "Landroidx/collection/SparseArrayCompat;",
        "",
        "labelToActionId",
        "Landroidx/collection/MutableObjectIntMap;",
        "accessibilityCursorPosition",
        "previousTraversedNode",
        "Ljava/lang/Integer;",
        "subtreeChangedLayoutNodes",
        "Landroidx/collection/ArraySet;",
        "Landroidx/compose/ui/node/LayoutNode;",
        "boundsUpdateChannel",
        "Lkotlinx/coroutines/channels/Channel;",
        "currentSemanticsNodesInvalidated",
        "pendingTextTraversedEvent",
        "Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;",
        "currentSemanticsNodes",
        "Landroidx/collection/IntObjectMap;",
        "Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;",
        "getCurrentSemanticsNodes",
        "()Landroidx/collection/IntObjectMap;",
        "paneDisplayed",
        "Landroidx/collection/MutableIntSet;",
        "idToBeforeMap",
        "Landroidx/collection/MutableIntIntMap;",
        "getIdToBeforeMap$ui",
        "()Landroidx/collection/MutableIntIntMap;",
        "setIdToBeforeMap$ui",
        "(Landroidx/collection/MutableIntIntMap;)V",
        "idToAfterMap",
        "getIdToAfterMap$ui",
        "setIdToAfterMap$ui",
        "ExtraDataTestTraversalBeforeVal",
        "",
        "getExtraDataTestTraversalBeforeVal$ui",
        "()Ljava/lang/String;",
        "ExtraDataTestTraversalAfterVal",
        "getExtraDataTestTraversalAfterVal$ui",
        "urlSpanCache",
        "Landroidx/compose/ui/text/platform/URLSpanCache;",
        "previousSemanticsNodes",
        "Landroidx/compose/ui/platform/SemanticsNodeCopy;",
        "previousSemanticsRoot",
        "checkingForSemanticsChanges",
        "drawingOrder",
        "onViewAttachedToWindow",
        "Landroid/view/View;",
        "onViewDetachedFromWindow",
        "onAccessibilityStateChanged",
        "enabled",
        "onTouchExplorationStateChanged",
        "canScroll",
        "vertical",
        "direction",
        "position",
        "Landroidx/compose/ui/geometry/Offset;",
        "canScroll-0AR0LA0$ui",
        "(ZIJ)Z",
        "canScroll-moWRBKg",
        "(Landroidx/collection/IntObjectMap;ZIJ)Z",
        "isRequestFromAccessibilityTool",
        "createNodeInfo",
        "virtualViewId",
        "emptyNodeInfoOrNull",
        "boundsInScreen",
        "Landroid/graphics/Rect;",
        "node",
        "toBoundsInScreen",
        "left",
        "",
        "top",
        "right",
        "bottom",
        "populateAccessibilityNodeInfoProperties",
        "info",
        "semanticsNode",
        "Landroidx/compose/ui/semantics/SemanticsNode;",
        "setContentInvalid",
        "toSpannableString",
        "Landroid/text/SpannableString;",
        "Landroidx/compose/ui/text/AnnotatedString;",
        "setText",
        "isAccessibilityFocused",
        "requestAccessibilityFocus",
        "sendEventForVirtualView",
        "eventType",
        "contentChangeType",
        "contentDescription",
        "(IILjava/lang/Integer;Ljava/util/List;)Z",
        "sendEvent",
        "event",
        "createEvent",
        "createTextSelectionChangedEvent",
        "fromIndex",
        "toIndex",
        "itemCount",
        "text",
        "(ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/CharSequence;)Landroid/view/accessibility/AccessibilityEvent;",
        "clearAccessibilityFocus",
        "performActionHelper",
        "action",
        "arguments",
        "Landroid/os/Bundle;",
        "addExtraDataToAccessibilityNodeInfoHelper",
        "extraDataKey",
        "getBoundsInScreen",
        "(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)Landroid/graphics/Rect;",
        "getShapeBounds",
        "Landroidx/compose/ui/geometry/Rect;",
        "nodeBoundsInScreen",
        "shape",
        "Landroidx/compose/ui/graphics/Shape;",
        "toBoundsRelativeToNodeBounds",
        "toScreenCoords",
        "Landroid/graphics/RectF;",
        "textNode",
        "bounds",
        "createOutline",
        "Landroidx/compose/ui/graphics/Outline;",
        "size",
        "Landroidx/compose/ui/geometry/Size;",
        "layoutDirection",
        "Landroidx/compose/ui/unit/LayoutDirection;",
        "createOutline-12SF9DM",
        "(Landroidx/compose/ui/graphics/Shape;JLandroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/graphics/Outline;",
        "toAndroidRect",
        "leftOffset",
        "topOffset",
        "toCornerArray",
        "",
        "toRegion",
        "Landroid/graphics/Region;",
        "dispatchHoverEvent",
        "Landroid/view/MotionEvent;",
        "dispatchHoverEvent$ui",
        "hitTestSemanticsAt",
        "x",
        "y",
        "hitTestSemanticsAt$ui",
        "updateHoveredVirtualView",
        "getAccessibilityNodeProvider",
        "Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;",
        "host",
        "trimToSize",
        "T",
        "(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;",
        "semanticsChangeChecker",
        "Ljava/lang/Runnable;",
        "onSemanticsChange",
        "onSemanticsChange$ui",
        "boundsUpdatesEventLoop",
        "boundsUpdatesEventLoop$ui",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "onLayoutChange",
        "layoutNode",
        "onLayoutChange$ui",
        "notifySubtreeAccessibilityStateChangedIfNeeded",
        "sendTypeViewScrolledAccessibilityEvent",
        "sendSubtreeChangeAccessibilityEvents",
        "subtreeChangedSemanticsNodesIds",
        "checkForSemanticsChanges",
        "updateSemanticsNodesCopyAndPanes",
        "sendSemanticsPropertyChangeEvents",
        "newSemanticsNodes",
        "scrollObservationScopes",
        "",
        "Landroidx/compose/ui/platform/ScrollObservationScope;",
        "scheduleScrollEventIfNeededLambda",
        "registerScrollingId",
        "id",
        "oldScrollObservationScopes",
        "scheduleScrollEventIfNeeded",
        "scrollObservationScope",
        "sendPaneChangeEvents",
        "semanticsNodeId",
        "title",
        "sendAccessibilitySemanticsStructureChangeEvents",
        "newNode",
        "oldNode",
        "semanticsNodeIdToAccessibilityVirtualNodeId",
        "traverseAtGranularity",
        "granularity",
        "forward",
        "extendSelection",
        "sendPendingTextTraversedAtGranularityEvent",
        "setAccessibilitySelection",
        "start",
        "end",
        "traversalMode",
        "getAccessibilitySelectionStart",
        "getAccessibilitySelectionEnd",
        "isAccessibilitySelectionExtendable",
        "getIteratorForGranularity",
        "Landroidx/compose/ui/platform/AccessibilityIterators$TextSegmentIterator;",
        "getIterableTextForAccessibility",
        "getTextForTextField",
        "Landroidx/compose/ui/semantics/SemanticsConfiguration;",
        "Companion",
        "PendingTextTraversedEvent",
        "ComposeAccessibilityNodeProvider",
        "Api24Impl",
        "Api29Impl",
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

.field private static final AccessibilityActionsResourceIds:Landroidx/collection/IntList;

.field public static final AccessibilityCursorPositionUndefined:I = -0x1

.field public static final AccessibilitySliderStepsCount:I = 0x14

.field public static final ClassName:Ljava/lang/String; = "android.view.View"

.field public static final Companion:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$Companion;

.field public static final ExtraDataIdKey:Ljava/lang/String; = "androidx.compose.ui.semantics.id"

.field public static final ExtraDataShapeRectCornersKey:Ljava/lang/String; = "androidx.compose.ui.semantics.shapeCorners"

.field public static final ExtraDataShapeRectKey:Ljava/lang/String; = "androidx.compose.ui.semantics.shapeRect"

.field public static final ExtraDataShapeRegionKey:Ljava/lang/String; = "androidx.compose.ui.semantics.shapeRegion"

.field public static final ExtraDataShapeTypeGeneric:I = 0x2

.field public static final ExtraDataShapeTypeKey:Ljava/lang/String; = "androidx.compose.ui.semantics.shapeType"

.field public static final ExtraDataShapeTypeRectangle:I = 0x0

.field public static final ExtraDataShapeTypeRounded:I = 0x1

.field public static final ExtraDataTestTagKey:Ljava/lang/String; = "androidx.compose.ui.semantics.testTag"

.field public static final InvalidId:I = -0x80000000

.field public static final LogTag:Ljava/lang/String; = "AccessibilityDelegate"

.field public static final ParcelSafeTextLength:I = 0x186a0

.field public static final TextClassName:Ljava/lang/String; = "android.widget.TextView"

.field public static final TextFieldClassName:Ljava/lang/String; = "android.widget.EditText"

.field public static final TextTraversedEventTimeoutMillis:J = 0x3e8L


# instance fields
.field private final ExtraDataTestTraversalAfterVal:Ljava/lang/String;

.field private final ExtraDataTestTraversalBeforeVal:Ljava/lang/String;

.field private SendRecurringAccessibilityEventsIntervalMillis:J

.field private _enabledServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private accessibilityCursorPosition:I

.field private accessibilityFocusedVirtualViewId:I

.field private accessibilityForceEnabledForTesting:Z

.field private final accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private actionIdToLabel:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Landroidx/collection/SparseArrayCompat<",
            "Ljava/lang/CharSequence;",
            ">;>;"
        }
    .end annotation
.end field

.field private final boundsUpdateChannel:Lkotlinx/coroutines/channels/Channel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/Channel<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private checkingForSemanticsChanges:Z

.field private currentSemanticsNodes:Landroidx/collection/IntObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/IntObjectMap<",
            "Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;",
            ">;"
        }
    .end annotation
.end field

.field private currentSemanticsNodesInvalidated:Z

.field private currentlyAccessibilityFocusedANI:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

.field private currentlyFocusedANI:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

.field private final drawingOrder:Landroidx/collection/MutableIntIntMap;

.field private focusedVirtualViewId:I

.field private final handler:Landroid/os/Handler;

.field private hoveredVirtualViewId:I

.field private idToAfterMap:Landroidx/collection/MutableIntIntMap;

.field private idToBeforeMap:Landroidx/collection/MutableIntIntMap;

.field private labelToActionId:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Landroidx/collection/MutableObjectIntMap<",
            "Ljava/lang/CharSequence;",
            ">;>;"
        }
    .end annotation
.end field

.field private nodeProvider:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$ComposeAccessibilityNodeProvider;

.field private onSendAccessibilityEvent:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/view/accessibility/AccessibilityEvent;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private paneDisplayed:Landroidx/collection/MutableIntSet;

.field private final pendingHorizontalScrollEvents:Landroidx/collection/MutableIntObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableIntObjectMap<",
            "Landroidx/compose/ui/semantics/ScrollAxisRange;",
            ">;"
        }
    .end annotation
.end field

.field private pendingTextTraversedEvent:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;

.field private final pendingVerticalScrollEvents:Landroidx/collection/MutableIntObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableIntObjectMap<",
            "Landroidx/compose/ui/semantics/ScrollAxisRange;",
            ">;"
        }
    .end annotation
.end field

.field private previousSemanticsNodes:Landroidx/collection/MutableIntObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableIntObjectMap<",
            "Landroidx/compose/ui/platform/SemanticsNodeCopy;",
            ">;"
        }
    .end annotation
.end field

.field private previousSemanticsRoot:Landroidx/compose/ui/platform/SemanticsNodeCopy;

.field private previousTraversedNode:Ljava/lang/Integer;

.field private requestFromAccessibilityToolForTesting:Ljava/lang/Boolean;

.field private final scheduleScrollEventIfNeededLambda:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/platform/ScrollObservationScope;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final scrollObservationScopes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/ui/platform/ScrollObservationScope;",
            ">;"
        }
    .end annotation
.end field

.field private final semanticsChangeChecker:Ljava/lang/Runnable;

.field private sendingFocusAffectingEvent:Z

.field private final subtreeChangedLayoutNodes:Landroidx/collection/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArraySet<",
            "Landroidx/compose/ui/node/LayoutNode;",
            ">;"
        }
    .end annotation
.end field

.field private final urlSpanCache:Landroidx/compose/ui/text/platform/URLSpanCache;

.field private final view:Landroidx/compose/ui/platform/AndroidComposeView;


# direct methods
.method static constructor <clinit>()V
    .locals 33

    new-instance v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->Companion:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$Companion;

    const/16 v0, 0x8

    sput v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->$stable:I

    .line 204
    nop

    .line 205
    sget v1, Landroidx/compose/ui/R$id;->accessibility_custom_action_0:I

    .line 206
    sget v2, Landroidx/compose/ui/R$id;->accessibility_custom_action_1:I

    .line 205
    nop

    .line 207
    sget v3, Landroidx/compose/ui/R$id;->accessibility_custom_action_2:I

    .line 205
    nop

    .line 208
    sget v4, Landroidx/compose/ui/R$id;->accessibility_custom_action_3:I

    .line 205
    nop

    .line 209
    sget v5, Landroidx/compose/ui/R$id;->accessibility_custom_action_4:I

    .line 205
    nop

    .line 210
    sget v6, Landroidx/compose/ui/R$id;->accessibility_custom_action_5:I

    .line 205
    nop

    .line 211
    sget v7, Landroidx/compose/ui/R$id;->accessibility_custom_action_6:I

    .line 205
    nop

    .line 212
    sget v8, Landroidx/compose/ui/R$id;->accessibility_custom_action_7:I

    .line 205
    nop

    .line 213
    sget v9, Landroidx/compose/ui/R$id;->accessibility_custom_action_8:I

    .line 205
    nop

    .line 214
    sget v10, Landroidx/compose/ui/R$id;->accessibility_custom_action_9:I

    .line 205
    nop

    .line 215
    sget v11, Landroidx/compose/ui/R$id;->accessibility_custom_action_10:I

    .line 205
    nop

    .line 216
    sget v12, Landroidx/compose/ui/R$id;->accessibility_custom_action_11:I

    .line 205
    nop

    .line 217
    sget v13, Landroidx/compose/ui/R$id;->accessibility_custom_action_12:I

    .line 205
    nop

    .line 218
    sget v14, Landroidx/compose/ui/R$id;->accessibility_custom_action_13:I

    .line 205
    nop

    .line 219
    sget v15, Landroidx/compose/ui/R$id;->accessibility_custom_action_14:I

    .line 205
    nop

    .line 220
    sget v16, Landroidx/compose/ui/R$id;->accessibility_custom_action_15:I

    .line 205
    nop

    .line 221
    sget v17, Landroidx/compose/ui/R$id;->accessibility_custom_action_16:I

    .line 205
    nop

    .line 222
    sget v18, Landroidx/compose/ui/R$id;->accessibility_custom_action_17:I

    .line 205
    nop

    .line 223
    sget v19, Landroidx/compose/ui/R$id;->accessibility_custom_action_18:I

    .line 205
    nop

    .line 224
    sget v20, Landroidx/compose/ui/R$id;->accessibility_custom_action_19:I

    .line 205
    nop

    .line 225
    sget v21, Landroidx/compose/ui/R$id;->accessibility_custom_action_20:I

    .line 205
    nop

    .line 226
    sget v22, Landroidx/compose/ui/R$id;->accessibility_custom_action_21:I

    .line 205
    nop

    .line 227
    sget v23, Landroidx/compose/ui/R$id;->accessibility_custom_action_22:I

    .line 205
    nop

    .line 228
    sget v24, Landroidx/compose/ui/R$id;->accessibility_custom_action_23:I

    .line 205
    nop

    .line 229
    sget v25, Landroidx/compose/ui/R$id;->accessibility_custom_action_24:I

    .line 205
    nop

    .line 230
    sget v26, Landroidx/compose/ui/R$id;->accessibility_custom_action_25:I

    .line 205
    nop

    .line 231
    sget v27, Landroidx/compose/ui/R$id;->accessibility_custom_action_26:I

    .line 205
    nop

    .line 232
    sget v28, Landroidx/compose/ui/R$id;->accessibility_custom_action_27:I

    .line 205
    nop

    .line 233
    sget v29, Landroidx/compose/ui/R$id;->accessibility_custom_action_28:I

    .line 205
    nop

    .line 234
    sget v30, Landroidx/compose/ui/R$id;->accessibility_custom_action_29:I

    .line 205
    nop

    .line 235
    sget v31, Landroidx/compose/ui/R$id;->accessibility_custom_action_30:I

    .line 205
    nop

    .line 236
    sget v32, Landroidx/compose/ui/R$id;->accessibility_custom_action_31:I

    filled-new-array/range {v1 .. v32}, [I

    move-result-object v0

    .line 205
    nop

    .line 204
    invoke-static {v0}, Landroidx/collection/IntListKt;->intListOf([I)Landroidx/collection/IntList;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->AccessibilityActionsResourceIds:Landroidx/collection/IntList;

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/platform/AndroidComposeView;)V
    .locals 4
    .param p1, "view"    # Landroidx/compose/ui/platform/AndroidComposeView;

    .line 162
    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    .line 163
    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 244
    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->hoveredVirtualViewId:I

    .line 249
    new-instance v1, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$onSendAccessibilityEvent$1;

    invoke-direct {v1, p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$onSendAccessibilityEvent$1;-><init>(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    iput-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->onSendAccessibilityEvent:Lkotlin/jvm/functions/Function1;

    .line 254
    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v1}, Landroidx/compose/ui/platform/AndroidComposeView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "null cannot be cast to non-null type android.view.accessibility.AccessibilityManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 267
    const-wide/16 v1, 0x64

    iput-wide v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->SendRecurringAccessibilityEventsIntervalMillis:J

    .line 303
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->handler:Landroid/os/Handler;

    .line 304
    new-instance v1, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$ComposeAccessibilityNodeProvider;

    invoke-direct {v1, p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$ComposeAccessibilityNodeProvider;-><init>(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;)V

    iput-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->nodeProvider:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$ComposeAccessibilityNodeProvider;

    .line 306
    iput v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityFocusedVirtualViewId:I

    .line 307
    iput v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->focusedVirtualViewId:I

    .line 311
    new-instance v0, Landroidx/collection/MutableIntObjectMap;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/collection/MutableIntObjectMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->pendingHorizontalScrollEvents:Landroidx/collection/MutableIntObjectMap;

    .line 312
    new-instance v0, Landroidx/collection/MutableIntObjectMap;

    invoke-direct {v0, v1, v2, v3}, Landroidx/collection/MutableIntObjectMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->pendingVerticalScrollEvents:Landroidx/collection/MutableIntObjectMap;

    .line 317
    new-instance v0, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v0, v1, v2, v3}, Landroidx/collection/SparseArrayCompat;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->actionIdToLabel:Landroidx/collection/SparseArrayCompat;

    .line 318
    new-instance v0, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v0, v1, v2, v3}, Landroidx/collection/SparseArrayCompat;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->labelToActionId:Landroidx/collection/SparseArrayCompat;

    .line 319
    const/4 v0, -0x1

    iput v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityCursorPosition:I

    .line 324
    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0, v1, v2, v3}, Landroidx/collection/ArraySet;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->subtreeChangedLayoutNodes:Landroidx/collection/ArraySet;

    .line 325
    const/4 v0, 0x6

    invoke-static {v2, v3, v3, v0, v3}, Lkotlinx/coroutines/channels/ChannelKt;->Channel$default(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/channels/Channel;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->boundsUpdateChannel:Lkotlinx/coroutines/channels/Channel;

    .line 326
    iput-boolean v2, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->currentSemanticsNodesInvalidated:Z

    .line 345
    invoke-static {}, Landroidx/collection/IntObjectMapKt;->intObjectMapOf()Landroidx/collection/IntObjectMap;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->currentSemanticsNodes:Landroidx/collection/IntObjectMap;

    .line 361
    new-instance v0, Landroidx/collection/MutableIntSet;

    invoke-direct {v0, v1, v2, v3}, Landroidx/collection/MutableIntSet;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->paneDisplayed:Landroidx/collection/MutableIntSet;

    .line 363
    new-instance v0, Landroidx/collection/MutableIntIntMap;

    invoke-direct {v0, v1, v2, v3}, Landroidx/collection/MutableIntIntMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->idToBeforeMap:Landroidx/collection/MutableIntIntMap;

    .line 364
    new-instance v0, Landroidx/collection/MutableIntIntMap;

    invoke-direct {v0, v1, v2, v3}, Landroidx/collection/MutableIntIntMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->idToAfterMap:Landroidx/collection/MutableIntIntMap;

    .line 367
    const-string v0, "android.view.accessibility.extra.EXTRA_DATA_TEST_TRAVERSALBEFORE_VAL"

    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->ExtraDataTestTraversalBeforeVal:Ljava/lang/String;

    .line 370
    const-string v0, "android.view.accessibility.extra.EXTRA_DATA_TEST_TRAVERSALAFTER_VAL"

    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->ExtraDataTestTraversalAfterVal:Ljava/lang/String;

    .line 372
    new-instance v0, Landroidx/compose/ui/text/platform/URLSpanCache;

    invoke-direct {v0}, Landroidx/compose/ui/text/platform/URLSpanCache;-><init>()V

    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->urlSpanCache:Landroidx/compose/ui/text/platform/URLSpanCache;

    .line 379
    invoke-static {}, Landroidx/collection/IntObjectMapKt;->mutableIntObjectMapOf()Landroidx/collection/MutableIntObjectMap;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->previousSemanticsNodes:Landroidx/collection/MutableIntObjectMap;

    .line 381
    new-instance v0, Landroidx/compose/ui/platform/SemanticsNodeCopy;

    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v1}, Landroidx/compose/ui/platform/AndroidComposeView;->getSemanticsOwner()Landroidx/compose/ui/semantics/SemanticsOwner;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsOwner;->getUnmergedRootSemanticsNode()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v1

    invoke-static {}, Landroidx/collection/IntObjectMapKt;->intObjectMapOf()Landroidx/collection/IntObjectMap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/platform/SemanticsNodeCopy;-><init>(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/collection/IntObjectMap;)V

    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->previousSemanticsRoot:Landroidx/compose/ui/platform/SemanticsNodeCopy;

    .line 386
    invoke-static {}, Landroidx/collection/IntIntMapKt;->mutableIntIntMapOf()Landroidx/collection/MutableIntIntMap;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->drawingOrder:Landroidx/collection/MutableIntIntMap;

    .line 388
    nop

    .line 391
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    move-object v1, p0

    check-cast v1, Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroidx/compose/ui/platform/AndroidComposeView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 392
    nop

    .line 2170
    new-instance v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;)V

    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsChangeChecker:Ljava/lang/Runnable;

    .line 2714
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->scrollObservationScopes:Ljava/util/List;

    .line 2722
    new-instance v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$scheduleScrollEventIfNeededLambda$1;

    invoke-direct {v0, p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$scheduleScrollEventIfNeededLambda$1;-><init>(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->scheduleScrollEventIfNeededLambda:Lkotlin/jvm/functions/Function1;

    .line 163
    return-void
.end method

.method public static final synthetic access$addExtraDataToAccessibilityNodeInfoHelper(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;
    .param p1, "virtualViewId"    # I
    .param p2, "info"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .param p3, "extraDataKey"    # Ljava/lang/String;
    .param p4, "arguments"    # Landroid/os/Bundle;

    .line 162
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->addExtraDataToAccessibilityNodeInfoHelper(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static final synthetic access$boundsInScreen(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;
    .param p1, "node"    # Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;

    .line 162
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->boundsInScreen(Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$createNodeInfo(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;
    .param p1, "virtualViewId"    # I

    .line 162
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->createNodeInfo(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getAccessibilityFocusedVirtualViewId$p(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;)I
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    .line 162
    iget v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityFocusedVirtualViewId:I

    return v0
.end method

.method public static final synthetic access$getCurrentSemanticsNodes(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;)Landroidx/collection/IntObjectMap;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    .line 162
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getCurrentSemanticsNodes()Landroidx/collection/IntObjectMap;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getCurrentlyAccessibilityFocusedANI$p(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    .line 162
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->currentlyAccessibilityFocusedANI:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    return-object v0
.end method

.method public static final synthetic access$getCurrentlyFocusedANI$p(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    .line 162
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->currentlyFocusedANI:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    return-object v0
.end method

.method public static final synthetic access$getFocusedVirtualViewId$p(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;)I
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    .line 162
    iget v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->focusedVirtualViewId:I

    return v0
.end method

.method public static final synthetic access$getPendingHorizontalScrollEvents$p(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;)Landroidx/collection/MutableIntObjectMap;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    .line 162
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->pendingHorizontalScrollEvents:Landroidx/collection/MutableIntObjectMap;

    return-object v0
.end method

.method public static final synthetic access$getPendingVerticalScrollEvents$p(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;)Landroidx/collection/MutableIntObjectMap;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    .line 162
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->pendingVerticalScrollEvents:Landroidx/collection/MutableIntObjectMap;

    return-object v0
.end method

.method public static final synthetic access$getSendingFocusAffectingEvent$p(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;)Z
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    .line 162
    iget-boolean v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendingFocusAffectingEvent:Z

    return v0
.end method

.method public static final synthetic access$notifySubtreeAccessibilityStateChangedIfNeeded(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;Landroidx/compose/ui/node/LayoutNode;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;
    .param p1, "layoutNode"    # Landroidx/compose/ui/node/LayoutNode;

    .line 162
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->notifySubtreeAccessibilityStateChangedIfNeeded(Landroidx/compose/ui/node/LayoutNode;)V

    return-void
.end method

.method public static final synthetic access$performActionHelper(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILandroid/os/Bundle;)Z
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .line 162
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->performActionHelper(IILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$scheduleScrollEventIfNeeded(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;Landroidx/compose/ui/platform/ScrollObservationScope;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;
    .param p1, "scrollObservationScope"    # Landroidx/compose/ui/platform/ScrollObservationScope;

    .line 162
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->scheduleScrollEventIfNeeded(Landroidx/compose/ui/platform/ScrollObservationScope;)V

    return-void
.end method

.method public static final synthetic access$semanticsNodeIdToAccessibilityVirtualNodeId(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;I)I
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;
    .param p1, "id"    # I

    .line 162
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsNodeIdToAccessibilityVirtualNodeId(I)I

    move-result v0

    return v0
.end method

.method public static final synthetic access$setCurrentlyAccessibilityFocusedANI$p(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;
    .param p1, "<set-?>"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 162
    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->currentlyAccessibilityFocusedANI:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    return-void
.end method

.method public static final synthetic access$setCurrentlyFocusedANI$p(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;
    .param p1, "<set-?>"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 162
    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->currentlyFocusedANI:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    return-void
.end method

.method private final addExtraDataToAccessibilityNodeInfoHelper(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 25
    .param p1, "virtualViewId"    # I
    .param p2, "info"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .param p3, "extraDataKey"    # Ljava/lang/String;
    .param p4, "arguments"    # Landroid/os/Bundle;

    .line 1743
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-direct {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getCurrentSemanticsNodes()Landroidx/collection/IntObjectMap;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;

    if-eqz v5, :cond_26

    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;->getSemanticsNode()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v5

    if-nez v5, :cond_0

    goto/16 :goto_d

    .line 1744
    .local v5, "node":Landroidx/compose/ui/semantics/SemanticsNode;
    :cond_0
    invoke-direct {v0, v5}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getIterableTextForAccessibility(Landroidx/compose/ui/semantics/SemanticsNode;)Ljava/lang/String;

    move-result-object v6

    .line 1748
    .local v6, "text":Ljava/lang/String;
    iget-object v7, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->ExtraDataTestTraversalBeforeVal:Ljava/lang/String;

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, -0x1

    if-eqz v7, :cond_2

    .line 1749
    iget-object v7, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->idToBeforeMap:Landroidx/collection/MutableIntIntMap;

    invoke-virtual {v7, v1, v8}, Landroidx/collection/MutableIntIntMap;->getOrDefault(II)I

    move-result v7

    .local v7, "it":I
    const/4 v9, 0x0

    .line 1750
    .local v9, "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$addExtraDataToAccessibilityNodeInfoHelper$1":I
    if-eq v7, v8, :cond_1

    .line 1751
    invoke-virtual {v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v8, v3, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1753
    :cond_1
    nop

    .line 1749
    .end local v7    # "it":I
    .end local v9    # "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$addExtraDataToAccessibilityNodeInfoHelper$1":I
    move-object/from16 v18, v5

    goto/16 :goto_c

    .line 1754
    :cond_2
    iget-object v7, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->ExtraDataTestTraversalAfterVal:Ljava/lang/String;

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1755
    iget-object v7, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->idToAfterMap:Landroidx/collection/MutableIntIntMap;

    invoke-virtual {v7, v1, v8}, Landroidx/collection/MutableIntIntMap;->getOrDefault(II)I

    move-result v7

    .restart local v7    # "it":I
    const/4 v9, 0x0

    .line 1756
    .local v9, "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$addExtraDataToAccessibilityNodeInfoHelper$2":I
    if-eq v7, v8, :cond_3

    .line 1757
    invoke-virtual {v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v8, v3, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1759
    :cond_3
    nop

    .line 1755
    .end local v7    # "it":I
    .end local v9    # "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$addExtraDataToAccessibilityNodeInfoHelper$2":I
    move-object/from16 v18, v5

    goto/16 :goto_c

    .line 1761
    :cond_4
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v7

    sget-object v9, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v9}, Landroidx/compose/ui/semantics/SemanticsActions;->getGetTextLayoutResult()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v7

    const/4 v9, 0x0

    if-eqz v7, :cond_b

    .line 1762
    if-eqz v4, :cond_b

    .line 1763
    const-string v7, "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_KEY"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1766
    const-string v7, "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_ARG_START_INDEX"

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 1765
    nop

    .line 1768
    .local v7, "positionInfoStartIndex":I
    const-string v10, "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_ARG_LENGTH"

    invoke-virtual {v4, v10, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 1767
    nop

    .line 1769
    .local v8, "positionInfoLength":I
    nop

    .line 1770
    if-lez v8, :cond_a

    .line 1771
    if-ltz v7, :cond_a

    .line 1772
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    goto :goto_0

    :cond_5
    const v10, 0x7fffffff

    :goto_0
    if-lt v7, v10, :cond_6

    goto :goto_3

    .line 1777
    :cond_6
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v10

    invoke-static {v10}, Landroidx/compose/ui/platform/SemanticsUtils_androidKt;->getTextLayoutResult(Landroidx/compose/ui/semantics/SemanticsConfiguration;)Landroidx/compose/ui/text/TextLayoutResult;

    move-result-object v10

    if-nez v10, :cond_7

    return-void

    .line 1778
    .local v10, "textLayoutResult":Landroidx/compose/ui/text/TextLayoutResult;
    :cond_7
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    check-cast v11, Ljava/util/List;

    .line 1779
    .local v11, "boundingRects":Ljava/util/List;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-ge v12, v8, :cond_9

    .line 1781
    add-int v13, v7, v12

    invoke-virtual {v10}, Landroidx/compose/ui/text/TextLayoutResult;->getLayoutInput()Landroidx/compose/ui/text/TextLayoutInput;

    move-result-object v14

    invoke-virtual {v14}, Landroidx/compose/ui/text/TextLayoutInput;->getText()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v14

    invoke-virtual {v14}, Landroidx/compose/ui/text/AnnotatedString;->length()I

    move-result v14

    if-lt v13, v14, :cond_8

    .line 1782
    const/4 v13, 0x0

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1783
    goto :goto_2

    .line 1785
    :cond_8
    add-int v13, v7, v12

    invoke-virtual {v10, v13}, Landroidx/compose/ui/text/TextLayoutResult;->getBoundingBox(I)Landroidx/compose/ui/geometry/Rect;

    move-result-object v13

    .line 1786
    .local v13, "bounds":Landroidx/compose/ui/geometry/Rect;
    invoke-direct {v0, v5, v13}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->toScreenCoords(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/compose/ui/geometry/Rect;)Landroid/graphics/RectF;

    move-result-object v14

    .line 1787
    .local v14, "boundsOnScreen":Landroid/graphics/RectF;
    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1779
    .end local v13    # "bounds":Landroidx/compose/ui/geometry/Rect;
    .end local v14    # "boundsOnScreen":Landroid/graphics/RectF;
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 1789
    .end local v12    # "i":I
    :cond_9
    invoke-virtual {v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    move-object v13, v11

    check-cast v13, Ljava/util/Collection;

    .local v13, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v14, 0x0

    .line 3571
    .local v14, "$i$f$toTypedArray":I
    move-object v15, v13

    .line 3572
    .local v15, "thisCollection$iv":Ljava/util/Collection;
    new-array v9, v9, [Landroid/graphics/RectF;

    invoke-interface {v15, v9}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    .end local v13    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v14    # "$i$f$toTypedArray":I
    .end local v15    # "thisCollection$iv":Ljava/util/Collection;
    check-cast v9, [Landroid/os/Parcelable;

    .line 1789
    invoke-virtual {v12, v3, v9}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    move-object/from16 v18, v5

    .end local v7    # "positionInfoStartIndex":I
    .end local v8    # "positionInfoLength":I
    .end local v10    # "textLayoutResult":Landroidx/compose/ui/text/TextLayoutResult;
    .end local v11    # "boundingRects":Ljava/util/List;
    goto/16 :goto_c

    .line 1774
    .restart local v7    # "positionInfoStartIndex":I
    .restart local v8    # "positionInfoLength":I
    :cond_a
    :goto_3
    const-string v9, "AccessibilityDelegate"

    const-string v10, "Invalid arguments for accessibility character locations"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1775
    return-void

    .line 1791
    .end local v7    # "positionInfoStartIndex":I
    .end local v8    # "positionInfoLength":I
    :cond_b
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v7

    sget-object v8, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v8}, Landroidx/compose/ui/semantics/SemanticsProperties;->getTestTag()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 1792
    if-eqz v4, :cond_d

    .line 1793
    const-string v7, "androidx.compose.ui.semantics.testTag"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 1795
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v7

    sget-object v8, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v8}, Landroidx/compose/ui/semantics/SemanticsProperties;->getTestTag()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v8

    invoke-static {v7, v8}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1796
    .local v7, "testTag":Ljava/lang/String;
    if-eqz v7, :cond_c

    .line 1797
    invoke-virtual {v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    move-object v9, v7

    check-cast v9, Ljava/lang/CharSequence;

    invoke-virtual {v8, v3, v9}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    move-object/from16 v18, v5

    .end local v7    # "testTag":Ljava/lang/String;
    goto/16 :goto_c

    .line 1796
    .restart local v7    # "testTag":Ljava/lang/String;
    :cond_c
    move-object/from16 v18, v5

    goto/16 :goto_c

    .line 1799
    .end local v7    # "testTag":Ljava/lang/String;
    :cond_d
    const-string v7, "androidx.compose.ui.semantics.id"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1800
    invoke-virtual {v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsNode;->getId()I

    move-result v8

    invoke-virtual {v7, v3, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v18, v5

    goto/16 :goto_c

    .line 1801
    :cond_e
    const-string v7, "androidx.compose.ui.semantics.shapeType"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    const-string v11, "androidx.compose.ui.semantics.shapeRegion"

    const-string v12, "androidx.compose.ui.semantics.shapeCorners"

    const-string v13, "androidx.compose.ui.semantics.shapeRect"

    if-eqz v8, :cond_13

    .line 1802
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v8

    sget-object v15, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v15}, Landroidx/compose/ui/semantics/SemanticsProperties;->getShape()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v15

    invoke-static {v8, v15}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/graphics/Shape;

    if-eqz v8, :cond_12

    .local v8, "shape":Landroidx/compose/ui/graphics/Shape;
    const/4 v15, 0x0

    .line 1803
    .local v15, "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$addExtraDataToAccessibilityNodeInfoHelper$3":I
    invoke-direct {v0, v2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getBoundsInScreen(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)Landroid/graphics/Rect;

    move-result-object v10

    invoke-direct {v0, v5, v10, v8}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getShapeBounds(Landroidx/compose/ui/semantics/SemanticsNode;Landroid/graphics/Rect;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v10

    .line 1804
    .local v10, "shapeBounds":Landroidx/compose/ui/geometry/Rect;
    move/from16 v18, v15

    .end local v15    # "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$addExtraDataToAccessibilityNodeInfoHelper$3":I
    .local v18, "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$addExtraDataToAccessibilityNodeInfoHelper$3":I
    invoke-virtual {v10}, Landroidx/compose/ui/geometry/Rect;->getSize-NH-jbRc()J

    move-result-wide v14

    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsNode;->getLayoutInfo()Landroidx/compose/ui/layout/LayoutInfo;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroidx/compose/ui/layout/LayoutInfo;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v9

    invoke-direct {v0, v8, v14, v15, v9}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->createOutline-12SF9DM(Landroidx/compose/ui/graphics/Shape;JLandroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/graphics/Outline;

    move-result-object v9

    .line 1808
    .local v9, "outline":Landroidx/compose/ui/graphics/Outline;
    nop

    .line 1809
    instance-of v14, v9, Landroidx/compose/ui/graphics/Outline$Rectangle;

    if-eqz v14, :cond_f

    .line 1810
    invoke-virtual {v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    const/4 v14, 0x0

    invoke-virtual {v11, v7, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1811
    invoke-virtual {v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 1812
    nop

    .line 1813
    invoke-virtual {v10}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v11

    invoke-virtual {v10}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v12

    invoke-direct {v0, v9, v11, v12}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->toAndroidRect(Landroidx/compose/ui/graphics/Outline;FF)Landroid/graphics/Rect;

    move-result-object v11

    check-cast v11, Landroid/os/Parcelable;

    .line 1811
    invoke-virtual {v7, v13, v11}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_4

    .line 1816
    :cond_f
    instance-of v14, v9, Landroidx/compose/ui/graphics/Outline$Rounded;

    if-eqz v14, :cond_10

    .line 1817
    invoke-virtual {v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    const/4 v15, 0x1

    invoke-virtual {v11, v7, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1818
    invoke-virtual {v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 1819
    nop

    .line 1820
    invoke-virtual {v10}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v11

    invoke-virtual {v10}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v14

    invoke-direct {v0, v9, v11, v14}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->toAndroidRect(Landroidx/compose/ui/graphics/Outline;FF)Landroid/graphics/Rect;

    move-result-object v11

    check-cast v11, Landroid/os/Parcelable;

    .line 1818
    invoke-virtual {v7, v13, v11}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1822
    invoke-virtual {v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 1823
    nop

    .line 1824
    invoke-direct {v0, v9}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->toCornerArray(Landroidx/compose/ui/graphics/Outline;)[F

    move-result-object v11

    .line 1822
    invoke-virtual {v7, v12, v11}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    goto :goto_4

    .line 1827
    :cond_10
    instance-of v12, v9, Landroidx/compose/ui/graphics/Outline$Generic;

    if-eqz v12, :cond_11

    .line 1828
    invoke-virtual {v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    const/4 v13, 0x2

    invoke-virtual {v12, v7, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1829
    invoke-virtual {v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 1830
    nop

    .line 1831
    invoke-virtual {v10}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v12

    invoke-virtual {v10}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v13

    invoke-direct {v0, v9, v12, v13}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->toRegion(Landroidx/compose/ui/graphics/Outline;FF)Landroid/graphics/Region;

    move-result-object v12

    check-cast v12, Landroid/os/Parcelable;

    .line 1829
    invoke-virtual {v7, v11, v12}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1835
    :goto_4
    nop

    .line 1802
    .end local v8    # "shape":Landroidx/compose/ui/graphics/Shape;
    .end local v9    # "outline":Landroidx/compose/ui/graphics/Outline;
    .end local v10    # "shapeBounds":Landroidx/compose/ui/geometry/Rect;
    .end local v18    # "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$addExtraDataToAccessibilityNodeInfoHelper$3":I
    goto :goto_5

    .line 1808
    .restart local v8    # "shape":Landroidx/compose/ui/graphics/Shape;
    .restart local v9    # "outline":Landroidx/compose/ui/graphics/Outline;
    .restart local v10    # "shapeBounds":Landroidx/compose/ui/geometry/Rect;
    .restart local v18    # "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$addExtraDataToAccessibilityNodeInfoHelper$3":I
    :cond_11
    new-instance v7, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v7}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v7

    .line 1802
    .end local v8    # "shape":Landroidx/compose/ui/graphics/Shape;
    .end local v9    # "outline":Landroidx/compose/ui/graphics/Outline;
    .end local v10    # "shapeBounds":Landroidx/compose/ui/geometry/Rect;
    .end local v18    # "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$addExtraDataToAccessibilityNodeInfoHelper$3":I
    :cond_12
    :goto_5
    move-object/from16 v18, v5

    goto/16 :goto_c

    .line 1836
    :cond_13
    move v14, v9

    const/4 v15, 0x1

    invoke-static {v3, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 1837
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v7

    sget-object v8, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v8}, Landroidx/compose/ui/semantics/SemanticsProperties;->getShape()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v8

    invoke-static {v7, v8}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/graphics/Shape;

    if-eqz v7, :cond_14

    .local v7, "shape":Landroidx/compose/ui/graphics/Shape;
    const/4 v8, 0x0

    .line 1838
    .local v8, "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$addExtraDataToAccessibilityNodeInfoHelper$4":I
    invoke-direct {v0, v2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getBoundsInScreen(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)Landroid/graphics/Rect;

    move-result-object v9

    invoke-direct {v0, v5, v9, v7}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getShapeBounds(Landroidx/compose/ui/semantics/SemanticsNode;Landroid/graphics/Rect;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v9

    .line 1842
    .local v9, "shapeBounds":Landroidx/compose/ui/geometry/Rect;
    nop

    .line 1839
    nop

    .line 1840
    invoke-virtual {v9}, Landroidx/compose/ui/geometry/Rect;->getSize-NH-jbRc()J

    move-result-wide v10

    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsNode;->getLayoutInfo()Landroidx/compose/ui/layout/LayoutInfo;

    move-result-object v12

    invoke-interface {v12}, Landroidx/compose/ui/layout/LayoutInfo;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v12

    invoke-direct {v0, v7, v10, v11, v12}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->createOutline-12SF9DM(Landroidx/compose/ui/graphics/Shape;JLandroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/graphics/Outline;

    move-result-object v10

    .line 1841
    invoke-virtual {v9}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v11

    invoke-virtual {v9}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v12

    invoke-direct {v0, v10, v11, v12}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->toAndroidRect(Landroidx/compose/ui/graphics/Outline;FF)Landroid/graphics/Rect;

    move-result-object v10

    .line 1842
    if-eqz v10, :cond_14

    .line 1839
    nop

    .line 1842
    nop

    .line 3528
    .local v10, "rect":Landroid/graphics/Rect;
    const/4 v11, 0x0

    .line 1842
    .local v11, "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$addExtraDataToAccessibilityNodeInfoHelper$4$1":I
    invoke-virtual {v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    move-object v14, v10

    check-cast v14, Landroid/os/Parcelable;

    invoke-virtual {v12, v13, v14}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1837
    .end local v7    # "shape":Landroidx/compose/ui/graphics/Shape;
    .end local v8    # "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$addExtraDataToAccessibilityNodeInfoHelper$4":I
    .end local v9    # "shapeBounds":Landroidx/compose/ui/geometry/Rect;
    .end local v10    # "rect":Landroid/graphics/Rect;
    .end local v11    # "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$addExtraDataToAccessibilityNodeInfoHelper$4$1":I
    :cond_14
    move-object/from16 v18, v5

    goto/16 :goto_c

    .line 1844
    :cond_15
    invoke-static {v3, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 1845
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v7

    sget-object v8, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v8}, Landroidx/compose/ui/semantics/SemanticsProperties;->getShape()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v8

    invoke-static {v7, v8}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/graphics/Shape;

    if-eqz v7, :cond_17

    .restart local v7    # "shape":Landroidx/compose/ui/graphics/Shape;
    const/4 v8, 0x0

    .line 1846
    .local v8, "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$addExtraDataToAccessibilityNodeInfoHelper$5":I
    invoke-direct {v0, v2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getBoundsInScreen(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)Landroid/graphics/Rect;

    move-result-object v9

    invoke-direct {v0, v5, v9, v7}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getShapeBounds(Landroidx/compose/ui/semantics/SemanticsNode;Landroid/graphics/Rect;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v9

    .line 1850
    .restart local v9    # "shapeBounds":Landroidx/compose/ui/geometry/Rect;
    nop

    .line 1847
    nop

    .line 1848
    invoke-virtual {v9}, Landroidx/compose/ui/geometry/Rect;->getSize-NH-jbRc()J

    move-result-wide v10

    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsNode;->getLayoutInfo()Landroidx/compose/ui/layout/LayoutInfo;

    move-result-object v13

    invoke-interface {v13}, Landroidx/compose/ui/layout/LayoutInfo;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v13

    invoke-direct {v0, v7, v10, v11, v13}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->createOutline-12SF9DM(Landroidx/compose/ui/graphics/Shape;JLandroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/graphics/Outline;

    move-result-object v10

    .line 1849
    invoke-direct {v0, v10}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->toCornerArray(Landroidx/compose/ui/graphics/Outline;)[F

    move-result-object v10

    .line 1850
    if-eqz v10, :cond_16

    .line 1847
    nop

    .line 1850
    nop

    .local v10, "corners":[F
    const/4 v11, 0x0

    .line 1851
    .local v11, "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$addExtraDataToAccessibilityNodeInfoHelper$5$1":I
    invoke-virtual {v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getExtras()Landroid/os/Bundle;

    move-result-object v13

    invoke-virtual {v13, v12, v10}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 1852
    nop

    .line 1850
    .end local v10    # "corners":[F
    .end local v11    # "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$addExtraDataToAccessibilityNodeInfoHelper$5$1":I
    :cond_16
    nop

    .line 1852
    nop

    .line 1845
    .end local v7    # "shape":Landroidx/compose/ui/graphics/Shape;
    .end local v8    # "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$addExtraDataToAccessibilityNodeInfoHelper$5":I
    .end local v9    # "shapeBounds":Landroidx/compose/ui/geometry/Rect;
    nop

    :cond_17
    move-object/from16 v18, v5

    goto/16 :goto_c

    .line 1854
    :cond_18
    invoke-static {v3, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 1855
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v7

    sget-object v8, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v8}, Landroidx/compose/ui/semantics/SemanticsProperties;->getShape()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v8

    invoke-static {v7, v8}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/graphics/Shape;

    if-eqz v7, :cond_19

    .restart local v7    # "shape":Landroidx/compose/ui/graphics/Shape;
    const/4 v8, 0x0

    .line 1856
    .local v8, "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$addExtraDataToAccessibilityNodeInfoHelper$6":I
    invoke-direct {v0, v2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getBoundsInScreen(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)Landroid/graphics/Rect;

    move-result-object v9

    invoke-direct {v0, v5, v9, v7}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getShapeBounds(Landroidx/compose/ui/semantics/SemanticsNode;Landroid/graphics/Rect;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v9

    .line 1860
    .restart local v9    # "shapeBounds":Landroidx/compose/ui/geometry/Rect;
    nop

    .line 1857
    nop

    .line 1858
    invoke-virtual {v9}, Landroidx/compose/ui/geometry/Rect;->getSize-NH-jbRc()J

    move-result-wide v12

    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsNode;->getLayoutInfo()Landroidx/compose/ui/layout/LayoutInfo;

    move-result-object v10

    invoke-interface {v10}, Landroidx/compose/ui/layout/LayoutInfo;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v10

    invoke-direct {v0, v7, v12, v13, v10}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->createOutline-12SF9DM(Landroidx/compose/ui/graphics/Shape;JLandroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/graphics/Outline;

    move-result-object v10

    .line 1859
    invoke-virtual {v9}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v12

    invoke-virtual {v9}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v13

    invoke-direct {v0, v10, v12, v13}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->toRegion(Landroidx/compose/ui/graphics/Outline;FF)Landroid/graphics/Region;

    move-result-object v10

    .line 1860
    if-eqz v10, :cond_19

    .line 1857
    nop

    .line 1860
    nop

    .line 3528
    .local v10, "region":Landroid/graphics/Region;
    const/4 v12, 0x0

    .line 1860
    .local v12, "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$addExtraDataToAccessibilityNodeInfoHelper$6$1":I
    invoke-virtual {v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getExtras()Landroid/os/Bundle;

    move-result-object v13

    move-object v14, v10

    check-cast v14, Landroid/os/Parcelable;

    invoke-virtual {v13, v11, v14}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1855
    .end local v7    # "shape":Landroidx/compose/ui/graphics/Shape;
    .end local v8    # "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$addExtraDataToAccessibilityNodeInfoHelper$6":I
    .end local v9    # "shapeBounds":Landroidx/compose/ui/geometry/Rect;
    .end local v10    # "region":Landroid/graphics/Region;
    .end local v12    # "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$addExtraDataToAccessibilityNodeInfoHelper$6$1":I
    :cond_19
    move-object/from16 v18, v5

    goto/16 :goto_c

    .line 1863
    :cond_1a
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->getAccessibilityExtraKeys$ui()Landroidx/collection/ScatterSet;

    move-result-object v7

    if-eqz v7, :cond_25

    .local v7, "this_$iv":Landroidx/collection/ScatterSet;
    const/4 v8, 0x0

    .line 3573
    .local v8, "$i$f$forEach":I
    nop

    .line 3574
    iget-object v9, v7, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 3575
    .local v9, "elements$iv":[Ljava/lang/Object;
    move-object v10, v7

    .local v10, "this_$iv$iv":Landroidx/collection/ScatterSet;
    const/4 v11, 0x0

    .line 3576
    .local v11, "$i$f$forEachIndex":I
    nop

    .line 3577
    iget-object v12, v10, Landroidx/collection/ScatterSet;->metadata:[J

    .line 3578
    .local v12, "m$iv$iv":[J
    array-length v13, v12

    const/16 v16, 0x2

    add-int/lit8 v13, v13, -0x2

    .line 3580
    .local v13, "lastIndex$iv$iv":I
    const/4 v14, 0x0

    .local v14, "i$iv$iv":I
    if-gt v14, v13, :cond_22

    .line 3581
    :goto_6
    aget-wide v16, v12, v14

    .line 3582
    .local v16, "slot$iv$iv":J
    move-wide/from16 v18, v16

    .local v18, "$this$maskEmptyOrDeleted$iv$iv$iv":J
    const/16 v20, 0x0

    .line 3583
    .local v20, "$i$f$maskEmptyOrDeleted":I
    move-wide/from16 v0, v18

    move-object/from16 v18, v5

    .end local v5    # "node":Landroidx/compose/ui/semantics/SemanticsNode;
    .local v0, "$this$maskEmptyOrDeleted$iv$iv$iv":J
    .local v18, "node":Landroidx/compose/ui/semantics/SemanticsNode;
    not-long v4, v0

    const/16 v19, 0x7

    shl-long v4, v4, v19

    and-long/2addr v4, v0

    const-wide v21, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v0, v4, v21

    .line 3582
    .end local v0    # "$this$maskEmptyOrDeleted$iv$iv$iv":J
    .end local v20    # "$i$f$maskEmptyOrDeleted":I
    cmp-long v0, v0, v21

    if-eqz v0, :cond_21

    .line 3584
    sub-int v0, v14, v13

    not-int v0, v0

    ushr-int/lit8 v0, v0, 0x1f

    const/16 v1, 0x8

    rsub-int/lit8 v0, v0, 0x8

    .line 3585
    .local v0, "bitCount$iv$iv":I
    const/4 v4, 0x0

    .local v4, "j$iv$iv":I
    :goto_7
    if-ge v4, v0, :cond_20

    .line 3586
    const-wide/16 v20, 0xff

    and-long v20, v16, v20

    .local v20, "value$iv$iv$iv":J
    const/4 v5, 0x0

    .line 3587
    .local v5, "$i$f$isFull":I
    const-wide/16 v22, 0x80

    cmp-long v19, v20, v22

    if-gez v19, :cond_1b

    move v5, v15

    goto :goto_8

    :cond_1b
    const/4 v5, 0x0

    .line 3586
    .end local v5    # "$i$f$isFull":I
    .end local v20    # "value$iv$iv$iv":J
    :goto_8
    if-eqz v5, :cond_1f

    .line 3588
    shl-int/lit8 v5, v14, 0x3

    add-int/2addr v5, v4

    .line 3589
    .local v5, "index$iv$iv":I
    move/from16 v19, v5

    .local v19, "index$iv":I
    const/16 v20, 0x0

    .line 3575
    .local v20, "$i$a$-forEachIndex-ScatterSet$forEach$2$iv":I
    aget-object v21, v9, v19

    move-object/from16 v15, v21

    check-cast v15, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .local v15, "key":Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    const/16 v21, 0x0

    .line 1864
    .local v21, "$i$a$-forEach-AndroidComposeViewAccessibilityDelegateCompat$addExtraDataToAccessibilityNodeInfoHelper$7":I
    move/from16 v23, v1

    invoke-virtual {v15}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;->getAccessibilityExtraKey$ui()Ljava/lang/String;

    move-result-object v1

    .line 1865
    .local v1, "extraKey":Ljava/lang/String;
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1e

    .line 1866
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v2

    invoke-static {v2, v15}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v2

    .line 1867
    .local v2, "value":Ljava/lang/Object;
    nop

    .line 1868
    instance-of v3, v2, Ljava/io/Serializable;

    if-eqz v3, :cond_1c

    invoke-virtual/range {p2 .. p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    move/from16 v24, v4

    .end local v4    # "j$iv$iv":I
    .local v24, "j$iv$iv":I
    move-object v4, v2

    check-cast v4, Ljava/io/Serializable;

    invoke-virtual {v3, v1, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_9

    .line 1869
    .end local v24    # "j$iv$iv":I
    .restart local v4    # "j$iv$iv":I
    :cond_1c
    move/from16 v24, v4

    .end local v4    # "j$iv$iv":I
    .restart local v24    # "j$iv$iv":I
    instance-of v3, v2, Landroid/os/Parcelable;

    if-eqz v3, :cond_1d

    invoke-virtual/range {p2 .. p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    move-object v4, v2

    check-cast v4, Landroid/os/Parcelable;

    invoke-virtual {v3, v1, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1876
    :goto_9
    goto :goto_a

    .line 1871
    :cond_1d
    new-instance v3, Ljava/lang/IllegalStateException;

    .line 1872
    nop

    .line 1871
    const-string v4, "Accessibility extra values must be either Serializable or Parcelable."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1878
    .end local v2    # "value":Ljava/lang/Object;
    .end local v24    # "j$iv$iv":I
    .restart local v4    # "j$iv$iv":I
    :cond_1e
    move/from16 v24, v4

    .line 3575
    .end local v1    # "extraKey":Ljava/lang/String;
    .end local v4    # "j$iv$iv":I
    .end local v15    # "key":Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .end local v21    # "$i$a$-forEach-AndroidComposeViewAccessibilityDelegateCompat$addExtraDataToAccessibilityNodeInfoHelper$7":I
    .restart local v24    # "j$iv$iv":I
    :goto_a
    nop

    .line 3589
    .end local v19    # "index$iv":I
    .end local v20    # "$i$a$-forEachIndex-ScatterSet$forEach$2$iv":I
    goto :goto_b

    .line 3586
    .end local v5    # "index$iv$iv":I
    .end local v24    # "j$iv$iv":I
    .restart local v4    # "j$iv$iv":I
    :cond_1f
    move/from16 v23, v1

    move/from16 v24, v4

    .line 3591
    .end local v4    # "j$iv$iv":I
    .restart local v24    # "j$iv$iv":I
    :goto_b
    shr-long v16, v16, v23

    .line 3585
    add-int/lit8 v4, v24, 0x1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v1, v23

    const/4 v15, 0x1

    .end local v24    # "j$iv$iv":I
    .restart local v4    # "j$iv$iv":I
    goto :goto_7

    :cond_20
    move/from16 v23, v1

    move/from16 v24, v4

    .line 3593
    .end local v4    # "j$iv$iv":I
    if-ne v0, v1, :cond_24

    .line 3580
    .end local v0    # "bitCount$iv$iv":I
    .end local v16    # "slot$iv$iv":J
    :cond_21
    if-eq v14, v13, :cond_23

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, v18

    const/4 v15, 0x1

    goto/16 :goto_6

    .end local v18    # "node":Landroidx/compose/ui/semantics/SemanticsNode;
    .local v5, "node":Landroidx/compose/ui/semantics/SemanticsNode;
    :cond_22
    move-object/from16 v18, v5

    .line 3596
    .end local v5    # "node":Landroidx/compose/ui/semantics/SemanticsNode;
    .end local v14    # "i$iv$iv":I
    .restart local v18    # "node":Landroidx/compose/ui/semantics/SemanticsNode;
    :cond_23
    nop

    .line 3597
    .end local v10    # "this_$iv$iv":Landroidx/collection/ScatterSet;
    .end local v11    # "$i$f$forEachIndex":I
    .end local v12    # "m$iv$iv":[J
    .end local v13    # "lastIndex$iv$iv":I
    :cond_24
    nop

    .end local v7    # "this_$iv":Landroidx/collection/ScatterSet;
    .end local v8    # "$i$f$forEach":I
    .end local v9    # "elements$iv":[Ljava/lang/Object;
    goto :goto_c

    .line 1863
    .end local v18    # "node":Landroidx/compose/ui/semantics/SemanticsNode;
    .restart local v5    # "node":Landroidx/compose/ui/semantics/SemanticsNode;
    :cond_25
    move-object/from16 v18, v5

    .line 1880
    .end local v5    # "node":Landroidx/compose/ui/semantics/SemanticsNode;
    .restart local v18    # "node":Landroidx/compose/ui/semantics/SemanticsNode;
    :goto_c
    return-void

    .line 1743
    .end local v6    # "text":Ljava/lang/String;
    .end local v18    # "node":Landroidx/compose/ui/semantics/SemanticsNode;
    :cond_26
    :goto_d
    return-void
.end method

.method private final boundsInScreen(Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;)Landroid/graphics/Rect;
    .locals 5
    .param p1, "node"    # Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;

    .line 558
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;->getAdjustedBounds()Landroidx/compose/ui/unit/IntRect;

    move-result-object v0

    .line 559
    .local v0, "boundsInRoot":Landroidx/compose/ui/unit/IntRect;
    nop

    .line 560
    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntRect;->getLeft()I

    move-result v1

    int-to-float v1, v1

    .line 561
    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntRect;->getTop()I

    move-result v2

    int-to-float v2, v2

    .line 562
    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntRect;->getRight()I

    move-result v3

    int-to-float v3, v3

    .line 563
    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntRect;->getBottom()I

    move-result v4

    int-to-float v4, v4

    .line 559
    invoke-direct {p0, v1, v2, v3, v4}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->toBoundsInScreen(FFFF)Landroid/graphics/Rect;

    move-result-object v1

    return-object v1
.end method

.method private final canScroll-moWRBKg(Landroidx/collection/IntObjectMap;ZIJ)Z
    .locals 29
    .param p1, "currentSemanticsNodes"    # Landroidx/collection/IntObjectMap;
    .param p2, "vertical"    # Z
    .param p3, "direction"    # I
    .param p4, "$v$c$androidx-compose-ui-geometry-Offset$-position$0"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/IntObjectMap<",
            "Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;",
            ">;ZIJ)Z"
        }
    .end annotation

    .line 443
    move/from16 v0, p2

    move/from16 v1, p3

    move-wide/from16 v2, p4

    sget-object v4, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/geometry/Offset;->equals-impl0(JJ)Z

    move-result v4

    if-nez v4, :cond_11

    move-wide/from16 v6, p4

    .local v6, "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v4, 0x0

    .line 3455
    .local v4, "$i$f$isValid-impl":I
    const-wide v8, 0x7fffffff7fffffffL

    and-long/2addr v8, v6

    .line 3456
    .local v8, "v$iv":J
    const-wide v10, 0x7fffff007fffffL

    add-long/2addr v10, v8

    const-wide v12, -0x7fffffff80000000L    # -1.0609978955E-314

    and-long/2addr v10, v12

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    const/4 v11, 0x1

    if-nez v10, :cond_0

    move v4, v11

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 443
    .end local v4    # "$i$f$isValid-impl":I
    .end local v6    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v8    # "v$iv":J
    :goto_0
    if-nez v4, :cond_1

    const/16 v21, 0x0

    goto/16 :goto_9

    .line 446
    :cond_1
    nop

    .line 447
    if-ne v0, v11, :cond_2

    sget-object v4, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v4}, Landroidx/compose/ui/semantics/SemanticsProperties;->getVerticalScrollAxisRange()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v4

    goto :goto_1

    .line 448
    :cond_2
    if-nez v0, :cond_10

    sget-object v4, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v4}, Landroidx/compose/ui/semantics/SemanticsProperties;->getHorizontalScrollAxisRange()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v4

    .line 445
    :goto_1
    nop

    .line 451
    .local v4, "scrollRangeProperty":Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    const/4 v6, 0x0

    .line 452
    .local v6, "foundNode":Z
    move-object/from16 v7, p1

    .local v7, "this_$iv":Landroidx/collection/IntObjectMap;
    const/4 v8, 0x0

    .line 3457
    .local v8, "$i$f$forEachValue":I
    iget-object v9, v7, Landroidx/collection/IntObjectMap;->values:[Ljava/lang/Object;

    .line 3459
    .local v9, "v$iv":[Ljava/lang/Object;
    move-object v10, v7

    .local v10, "this_$iv$iv":Landroidx/collection/IntObjectMap;
    const/4 v12, 0x0

    .line 3460
    .local v12, "$i$f$forEachIndexed":I
    iget-object v13, v10, Landroidx/collection/IntObjectMap;->metadata:[J

    .line 3461
    .local v13, "m$iv$iv":[J
    array-length v14, v13

    add-int/lit8 v14, v14, -0x2

    .line 3463
    .local v14, "lastIndex$iv$iv":I
    const/4 v15, 0x0

    .local v15, "i$iv$iv":I
    if-gt v15, v14, :cond_d

    .line 3464
    :goto_2
    aget-wide v16, v13, v15

    .line 3465
    .local v16, "slot$iv$iv":J
    move-wide/from16 v18, v16

    .local v18, "$this$maskEmptyOrDeleted$iv$iv$iv":J
    const/16 v20, 0x0

    .line 3466
    .local v20, "$i$f$maskEmptyOrDeleted":I
    move/from16 v22, v6

    move-wide/from16 v5, v18

    const/16 v21, 0x0

    move/from16 v19, v12

    .end local v6    # "foundNode":Z
    .end local v12    # "$i$f$forEachIndexed":I
    .end local v18    # "$this$maskEmptyOrDeleted$iv$iv$iv":J
    .local v5, "$this$maskEmptyOrDeleted$iv$iv$iv":J
    .local v19, "$i$f$forEachIndexed":I
    .local v22, "foundNode":Z
    not-long v11, v5

    const/16 v23, 0x7

    shl-long v11, v11, v23

    and-long/2addr v11, v5

    const-wide v23, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v5, v11, v23

    .line 3465
    .end local v5    # "$this$maskEmptyOrDeleted$iv$iv$iv":J
    .end local v20    # "$i$f$maskEmptyOrDeleted":I
    cmp-long v5, v5, v23

    if-eqz v5, :cond_c

    .line 3467
    sub-int v5, v15, v14

    not-int v5, v5

    ushr-int/lit8 v5, v5, 0x1f

    const/16 v6, 0x8

    rsub-int/lit8 v5, v5, 0x8

    .line 3468
    .local v5, "bitCount$iv$iv":I
    const/4 v11, 0x0

    .local v11, "j$iv$iv":I
    :goto_3
    if-ge v11, v5, :cond_b

    .line 3469
    const-wide/16 v23, 0xff

    and-long v23, v16, v23

    .local v23, "value$iv$iv$iv":J
    const/4 v12, 0x0

    .line 3470
    .local v12, "$i$f$isFull":I
    const-wide/16 v25, 0x80

    cmp-long v20, v23, v25

    if-gez v20, :cond_3

    const/4 v12, 0x1

    goto :goto_4

    :cond_3
    move/from16 v12, v21

    .line 3469
    .end local v12    # "$i$f$isFull":I
    .end local v23    # "value$iv$iv$iv":J
    :goto_4
    if-eqz v12, :cond_a

    .line 3471
    shl-int/lit8 v12, v15, 0x3

    add-int/2addr v12, v11

    .line 3472
    .local v12, "index$iv$iv":I
    move/from16 v20, v12

    .local v20, "index$iv":I
    const/16 v23, 0x0

    .line 3459
    .local v23, "$i$a$-forEachIndexed-IntObjectMap$forEachValue$1$iv":I
    aget-object v24, v9, v20

    check-cast v24, Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;

    .local v24, "node":Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;
    const/16 v25, 0x0

    .line 457
    .local v25, "$i$a$-forEachValue-AndroidComposeViewAccessibilityDelegateCompat$canScroll$1":I
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;->getAdjustedBounds()Landroidx/compose/ui/unit/IntRect;

    move-result-object v26

    move/from16 v27, v6

    invoke-static/range {v26 .. v26}, Landroidx/compose/ui/unit/IntRectKt;->toRect(Landroidx/compose/ui/unit/IntRect;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Landroidx/compose/ui/geometry/Rect;->contains-k-4lQ0M(J)Z

    move-result v6

    if-nez v6, :cond_4

    .line 458
    goto :goto_6

    .line 463
    :cond_4
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;->getSemanticsNode()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v6

    invoke-static {v6, v4}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/semantics/ScrollAxisRange;

    if-nez v6, :cond_5

    .line 464
    goto :goto_6

    .line 462
    :cond_5
    nop

    .line 468
    .local v6, "scrollRange":Landroidx/compose/ui/semantics/ScrollAxisRange;
    invoke-virtual {v6}, Landroidx/compose/ui/semantics/ScrollAxisRange;->getReverseScrolling()Z

    move-result v26

    if-eqz v26, :cond_6

    neg-int v0, v1

    goto :goto_5

    :cond_6
    move v0, v1

    .line 469
    .local v0, "actualDirection":I
    :goto_5
    if-nez v1, :cond_7

    invoke-virtual {v6}, Landroidx/compose/ui/semantics/ScrollAxisRange;->getReverseScrolling()Z

    move-result v26

    if-eqz v26, :cond_7

    .line 473
    const/4 v0, -0x1

    .line 476
    :cond_7
    if-gez v0, :cond_8

    .line 477
    invoke-virtual {v6}, Landroidx/compose/ui/semantics/ScrollAxisRange;->getValue()Lkotlin/jvm/functions/Function0;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Number;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Number;->floatValue()F

    move-result v26

    const/16 v28, 0x0

    cmpl-float v26, v26, v28

    if-lez v26, :cond_9

    .line 478
    const/16 v22, 0x1

    .line 479
    goto :goto_6

    .line 482
    :cond_8
    invoke-virtual {v6}, Landroidx/compose/ui/semantics/ScrollAxisRange;->getValue()Lkotlin/jvm/functions/Function0;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Number;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Number;->floatValue()F

    move-result v26

    invoke-virtual {v6}, Landroidx/compose/ui/semantics/ScrollAxisRange;->getMaxValue()Lkotlin/jvm/functions/Function0;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Number;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Number;->floatValue()F

    move-result v28

    cmpg-float v26, v26, v28

    if-gez v26, :cond_9

    .line 483
    const/16 v22, 0x1

    .line 484
    goto :goto_6

    .line 487
    :cond_9
    nop

    .line 3459
    .end local v0    # "actualDirection":I
    .end local v6    # "scrollRange":Landroidx/compose/ui/semantics/ScrollAxisRange;
    .end local v24    # "node":Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;
    .end local v25    # "$i$a$-forEachValue-AndroidComposeViewAccessibilityDelegateCompat$canScroll$1":I
    :goto_6
    nop

    .line 3472
    .end local v20    # "index$iv":I
    .end local v23    # "$i$a$-forEachIndexed-IntObjectMap$forEachValue$1$iv":I
    goto :goto_7

    .line 3469
    .end local v12    # "index$iv$iv":I
    :cond_a
    move/from16 v27, v6

    .line 3474
    :goto_7
    shr-long v16, v16, v27

    .line 3468
    add-int/lit8 v11, v11, 0x1

    move/from16 v0, p2

    move/from16 v6, v27

    goto/16 :goto_3

    :cond_b
    move/from16 v27, v6

    .line 3476
    .end local v11    # "j$iv$iv":I
    move/from16 v0, v27

    if-ne v5, v0, :cond_f

    move/from16 v6, v22

    goto :goto_8

    .line 3465
    .end local v5    # "bitCount$iv$iv":I
    :cond_c
    move/from16 v6, v22

    .line 3463
    .end local v16    # "slot$iv$iv":J
    .end local v22    # "foundNode":Z
    .local v6, "foundNode":Z
    :goto_8
    if-eq v15, v14, :cond_e

    add-int/lit8 v15, v15, 0x1

    move/from16 v0, p2

    move/from16 v12, v19

    const/4 v11, 0x1

    goto/16 :goto_2

    .end local v19    # "$i$f$forEachIndexed":I
    .local v12, "$i$f$forEachIndexed":I
    :cond_d
    move/from16 v19, v12

    .line 3479
    .end local v12    # "$i$f$forEachIndexed":I
    .end local v15    # "i$iv$iv":I
    .restart local v19    # "$i$f$forEachIndexed":I
    :cond_e
    move/from16 v22, v6

    .line 3480
    .end local v6    # "foundNode":Z
    .end local v10    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    .end local v13    # "m$iv$iv":[J
    .end local v14    # "lastIndex$iv$iv":I
    .end local v19    # "$i$f$forEachIndexed":I
    .restart local v22    # "foundNode":Z
    :cond_f
    nop

    .line 488
    .end local v7    # "this_$iv":Landroidx/collection/IntObjectMap;
    .end local v8    # "$i$f$forEachValue":I
    .end local v9    # "v$iv":[Ljava/lang/Object;
    return v22

    .line 446
    .end local v4    # "scrollRangeProperty":Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .end local v22    # "foundNode":Z
    :cond_10
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 443
    :cond_11
    const/16 v21, 0x0

    :goto_9
    return v21
.end method

.method private final checkForSemanticsChanges()V
    .locals 5

    .line 2331
    const-string/jumbo v0, "sendAccessibilitySemanticsStructureChangeEvents"

    .local v0, "sectionName$iv":Ljava/lang/String;
    const/4 v1, 0x0

    .line 3719
    .local v1, "$i$f$trace":I
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 3720
    nop

    .line 3721
    const/4 v2, 0x0

    .line 2332
    .local v2, "$i$a$-trace-AndroidComposeViewAccessibilityDelegateCompat$checkForSemanticsChanges$1":I
    :try_start_0
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->isEnabled$ui()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2333
    nop

    .line 2334
    iget-object v3, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v3}, Landroidx/compose/ui/platform/AndroidComposeView;->getSemanticsOwner()Landroidx/compose/ui/semantics/SemanticsOwner;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsOwner;->getUnmergedRootSemanticsNode()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v3

    .line 2335
    iget-object v4, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->previousSemanticsRoot:Landroidx/compose/ui/platform/SemanticsNodeCopy;

    .line 2333
    invoke-direct {p0, v3, v4}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendAccessibilitySemanticsStructureChangeEvents(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/compose/ui/platform/SemanticsNodeCopy;)V

    .line 2338
    :cond_0
    nop

    .end local v2    # "$i$a$-trace-AndroidComposeViewAccessibilityDelegateCompat$checkForSemanticsChanges$1":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3721
    nop

    .line 3723
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 3721
    nop

    .line 2340
    .end local v0    # "sectionName$iv":Ljava/lang/String;
    .end local v1    # "$i$f$trace":I
    const-string/jumbo v0, "sendSemanticsPropertyChangeEvents"

    .restart local v0    # "sectionName$iv":Ljava/lang/String;
    const/4 v1, 0x0

    .line 3724
    .restart local v1    # "$i$f$trace":I
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 3725
    nop

    .line 3726
    const/4 v2, 0x0

    .line 2341
    .local v2, "$i$a$-trace-AndroidComposeViewAccessibilityDelegateCompat$checkForSemanticsChanges$2":I
    :try_start_1
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getCurrentSemanticsNodes()Landroidx/collection/IntObjectMap;

    move-result-object v3

    invoke-direct {p0, v3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendSemanticsPropertyChangeEvents(Landroidx/collection/IntObjectMap;)V

    .line 2342
    nop

    .end local v2    # "$i$a$-trace-AndroidComposeViewAccessibilityDelegateCompat$checkForSemanticsChanges$2":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3726
    nop

    .line 3728
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 3726
    nop

    .line 2343
    .end local v0    # "sectionName$iv":Ljava/lang/String;
    .end local v1    # "$i$f$trace":I
    const-string/jumbo v0, "updateSemanticsNodesCopyAndPanes"

    .restart local v0    # "sectionName$iv":Ljava/lang/String;
    const/4 v1, 0x0

    .line 3729
    .restart local v1    # "$i$f$trace":I
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 3730
    nop

    .line 3731
    const/4 v2, 0x0

    .line 2343
    .local v2, "$i$a$-trace-AndroidComposeViewAccessibilityDelegateCompat$checkForSemanticsChanges$3":I
    :try_start_2
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->updateSemanticsNodesCopyAndPanes()V

    .end local v2    # "$i$a$-trace-AndroidComposeViewAccessibilityDelegateCompat$checkForSemanticsChanges$3":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3731
    nop

    .line 3733
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 3731
    nop

    .line 2344
    .end local v0    # "sectionName$iv":Ljava/lang/String;
    .end local v1    # "$i$f$trace":I
    return-void

    .line 3733
    .restart local v0    # "sectionName$iv":Ljava/lang/String;
    .restart local v1    # "$i$f$trace":I
    :catchall_0
    move-exception v2

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v2

    .line 3728
    :catchall_1
    move-exception v2

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v2

    .line 3723
    :catchall_2
    move-exception v2

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v2
.end method

.method private final clearAccessibilityFocus(I)Z
    .locals 8
    .param p1, "virtualViewId"    # I

    .line 1347
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->isAccessibilityFocused(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1348
    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityFocusedVirtualViewId:I

    .line 1349
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->currentlyAccessibilityFocusedANI:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 1350
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->invalidate()V

    .line 1351
    nop

    .line 1352
    nop

    .line 1353
    nop

    .line 1351
    const/16 v6, 0xc

    const/4 v7, 0x0

    const/high16 v3, 0x10000

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    .end local p1    # "virtualViewId":I
    .local v2, "virtualViewId":I
    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEventForVirtualView$default(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)Z

    .line 1355
    const/4 p1, 0x1

    return p1

    .line 1357
    .end local v2    # "virtualViewId":I
    .restart local p1    # "virtualViewId":I
    :cond_0
    move v2, p1

    .end local p1    # "virtualViewId":I
    .restart local v2    # "virtualViewId":I
    const/4 p1, 0x0

    return p1
.end method

.method private final createEvent(II)Landroid/view/accessibility/AccessibilityEvent;
    .locals 6
    .param p1, "virtualViewId"    # I
    .param p2, "eventType"    # I

    .line 1300
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 1301
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 1303
    const-string v2, "android.view.View"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1306
    iget-object v2, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v2}, Landroidx/compose/ui/platform/AndroidComposeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 1307
    iget-object v2, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v0, v2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    .line 1309
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->isEnabled$ui()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1311
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getCurrentSemanticsNodes()Landroidx/collection/IntObjectMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;

    if-eqz v2, :cond_0

    .local v2, "it":Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;
    const/4 v3, 0x0

    .line 1312
    .local v3, "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$createEvent$1":I
    nop

    .line 1313
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;->getSemanticsNode()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v4

    sget-object v5, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsProperties;->getPassword()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v4

    .line 1312
    invoke-virtual {v0, v4}, Landroid/view/accessibility/AccessibilityEvent;->setPassword(Z)V

    .line 1315
    nop

    .line 1316
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;->getSemanticsNode()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v4

    sget-object v5, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsProperties;->getIsSensitiveData()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v5

    invoke-static {v4, v5}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 1314
    invoke-static {v0, v1}, Landroidx/core/view/accessibility/AccessibilityEventCompat;->setAccessibilityDataSensitive(Landroid/view/accessibility/AccessibilityEvent;Z)V

    .line 1318
    nop

    .line 1311
    .end local v2    # "it":Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;
    .end local v3    # "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$createEvent$1":I
    nop

    .line 1321
    :cond_0
    return-object v0
.end method

.method private final createNodeInfo(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 9
    .param p1, "virtualViewId"    # I

    .line 503
    nop

    .line 504
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->getViewTreeOwners()Landroidx/compose/ui/platform/AndroidComposeView$ViewTreeOwners;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView$ViewTreeOwners;->getLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 505
    :goto_0
    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    .line 504
    if-ne v0, v2, :cond_1

    .line 507
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->emptyNodeInfoOrNull()Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    return-object v0

    .line 510
    :cond_1
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getCurrentSemanticsNodes()Landroidx/collection/IntObjectMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;

    if-nez v0, :cond_2

    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->emptyNodeInfoOrNull()Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    return-object v0

    .line 509
    :cond_2
    nop

    .line 511
    .local v0, "semanticsNodeWithAdjustedBounds":Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;->getSemanticsNode()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v2

    .line 512
    .local v2, "semanticsNode":Landroidx/compose/ui/semantics/SemanticsNode;
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v3

    sget-object v4, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v4}, Landroidx/compose/ui/semantics/SemanticsProperties;->getIsSensitiveData()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v4

    invoke-static {v3, v4}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    .line 513
    .local v3, "isSensitiveData":Z
    if-eqz v3, :cond_3

    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->isRequestFromAccessibilityTool()Z

    move-result v4

    if-nez v4, :cond_3

    .line 514
    return-object v1

    .line 516
    :cond_3
    invoke-static {}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->obtain()Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v4

    .line 517
    .local v4, "info":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    invoke-virtual {v4, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setAccessibilityDataSensitive(Z)V

    .line 518
    const/4 v5, -0x1

    if-ne p1, v5, :cond_5

    .line 519
    iget-object v5, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v5}, Landroidx/compose/ui/platform/AndroidComposeView;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v6, v5, Landroid/view/View;

    if-eqz v6, :cond_4

    move-object v1, v5

    check-cast v1, Landroid/view/View;

    :cond_4
    invoke-virtual {v4, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setParent(Landroid/view/View;)V

    goto :goto_1

    .line 522
    :cond_5
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsNode;->getParent()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsNode;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .local v1, "value$iv":Ljava/lang/Object;
    :cond_6
    const/4 v5, 0x0

    .line 3481
    .local v5, "$i$f$checkPreconditionNotNull":I
    if-eqz v1, :cond_8

    .line 3485
    nop

    .line 522
    .end local v1    # "value$iv":Ljava/lang/Object;
    .end local v5    # "$i$f$checkPreconditionNotNull":I
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 521
    nop

    .line 525
    .local v1, "parentId":I
    iget-object v5, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v5}, Landroidx/compose/ui/platform/AndroidComposeView;->getSemanticsOwner()Landroidx/compose/ui/semantics/SemanticsOwner;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsOwner;->getUnmergedRootSemanticsNode()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsNode;->getId()I

    move-result v5

    if-ne v1, v5, :cond_7

    .line 526
    const/4 v1, -0x1

    .line 528
    :cond_7
    iget-object v5, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    check-cast v5, Landroid/view/View;

    invoke-virtual {v4, v5, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setParent(Landroid/view/View;I)V

    .line 530
    .end local v1    # "parentId":I
    :goto_1
    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v4, v1, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setSource(Landroid/view/View;I)V

    .line 532
    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->boundsInScreen(Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 534
    invoke-direct {p0, p1, v4, v2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->populateAccessibilityNodeInfoProperties(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Landroidx/compose/ui/semantics/SemanticsNode;)V

    .line 536
    return-object v4

    .line 3482
    .local v1, "value$iv":Ljava/lang/Object;
    .restart local v5    # "$i$f$checkPreconditionNotNull":I
    :cond_8
    const/4 v6, 0x0

    .line 523
    .local v6, "$i$a$-checkPreconditionNotNull-AndroidComposeViewAccessibilityDelegateCompat$createNodeInfo$parentId$1":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "semanticsNode "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has null parent"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3482
    .end local v6    # "$i$a$-checkPreconditionNotNull-AndroidComposeViewAccessibilityDelegateCompat$createNodeInfo$parentId$1":I
    invoke-static {v6}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateExceptionForNullCheck(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v6, Lkotlin/KotlinNothingValueException;

    invoke-direct {v6}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v6
.end method

.method private final createOutline-12SF9DM(Landroidx/compose/ui/graphics/Shape;JLandroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/graphics/Outline;
    .locals 1
    .param p1, "$this$createOutline_u2d12SF9DM"    # Landroidx/compose/ui/graphics/Shape;
    .param p2, "$v$c$androidx-compose-ui-geometry-Size$-size$0"    # J
    .param p4, "layoutDirection"    # Landroidx/compose/ui/unit/LayoutDirection;

    .line 1968
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->getDensity()Landroidx/compose/ui/unit/Density;

    move-result-object v0

    invoke-interface {p1, p2, p3, p4, v0}, Landroidx/compose/ui/graphics/Shape;->createOutline-Pq9zytI(JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)Landroidx/compose/ui/graphics/Outline;

    move-result-object v0

    return-object v0
.end method

.method private final createTextSelectionChangedEvent(ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/CharSequence;)Landroid/view/accessibility/AccessibilityEvent;
    .locals 6
    .param p1, "virtualViewId"    # I
    .param p2, "fromIndex"    # Ljava/lang/Integer;
    .param p3, "toIndex"    # Ljava/lang/Integer;
    .param p4, "itemCount"    # Ljava/lang/Integer;
    .param p5, "text"    # Ljava/lang/CharSequence;

    .line 1331
    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->createEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 1332
    move-object v1, v0

    .local v1, "$this$createTextSelectionChangedEvent_u24lambda_u240":Landroid/view/accessibility/AccessibilityEvent;
    const/4 v2, 0x0

    .line 1333
    .local v2, "$i$a$-apply-AndroidComposeViewAccessibilityDelegateCompat$createTextSelectionChangedEvent$1":I
    if-eqz p2, :cond_0

    move-object v3, p2

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 3528
    .local v3, "it":I
    const/4 v4, 0x0

    .line 1333
    .local v4, "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$createTextSelectionChangedEvent$1$1":I
    invoke-virtual {v1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 1334
    .end local v3    # "it":I
    .end local v4    # "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$createTextSelectionChangedEvent$1$1":I
    :cond_0
    if-eqz p3, :cond_1

    move-object v3, p3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 3528
    .restart local v3    # "it":I
    const/4 v4, 0x0

    .line 1334
    .local v4, "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$createTextSelectionChangedEvent$1$2":I
    invoke-virtual {v1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 1335
    .end local v3    # "it":I
    .end local v4    # "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$createTextSelectionChangedEvent$1$2":I
    :cond_1
    if-eqz p4, :cond_2

    move-object v3, p4

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 3528
    .restart local v3    # "it":I
    const/4 v4, 0x0

    .line 1335
    .local v4, "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$createTextSelectionChangedEvent$1$3":I
    invoke-virtual {v1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 1336
    .end local v3    # "it":I
    .end local v4    # "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$createTextSelectionChangedEvent$1$3":I
    :cond_2
    if-eqz p5, :cond_3

    move-object v3, p5

    .line 3528
    .local v3, "it":Ljava/lang/CharSequence;
    const/4 v4, 0x0

    .line 1336
    .local v4, "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$createTextSelectionChangedEvent$1$4":I
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1337
    .end local v3    # "it":Ljava/lang/CharSequence;
    .end local v4    # "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$createTextSelectionChangedEvent$1$4":I
    :cond_3
    nop

    .line 1332
    .end local v1    # "$this$createTextSelectionChangedEvent_u24lambda_u240":Landroid/view/accessibility/AccessibilityEvent;
    .end local v2    # "$i$a$-apply-AndroidComposeViewAccessibilityDelegateCompat$createTextSelectionChangedEvent$1":I
    nop

    .line 1331
    return-object v0
.end method

.method private final emptyNodeInfoOrNull()Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 1

    .line 552
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 553
    invoke-static {}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->obtain()Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    goto :goto_0

    .line 554
    :cond_0
    const/4 v0, 0x0

    .line 552
    :goto_0
    return-object v0
.end method

.method private final getAccessibilitySelectionEnd(Landroidx/compose/ui/semantics/SemanticsNode;)I
    .locals 2
    .param p1, "node"    # Landroidx/compose/ui/semantics/SemanticsNode;

    .line 3022
    nop

    .line 3023
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->getContentDescription()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3024
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->getTextSelectionRange()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3026
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->getTextSelectionRange()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->get(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/text/TextRange;

    invoke-virtual {v0}, Landroidx/compose/ui/text/TextRange;->unbox-impl()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v0

    return v0

    .line 3028
    :cond_0
    iget v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityCursorPosition:I

    return v0
.end method

.method private final getAccessibilitySelectionStart(Landroidx/compose/ui/semantics/SemanticsNode;)I
    .locals 2
    .param p1, "node"    # Landroidx/compose/ui/semantics/SemanticsNode;

    .line 3011
    nop

    .line 3012
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->getContentDescription()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3013
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->getTextSelectionRange()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3015
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->getTextSelectionRange()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->get(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/text/TextRange;

    invoke-virtual {v0}, Landroidx/compose/ui/text/TextRange;->unbox-impl()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v0

    return v0

    .line 3017
    :cond_0
    iget v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityCursorPosition:I

    return v0
.end method

.method private final getBoundsInScreen(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)Landroid/graphics/Rect;
    .locals 1
    .param p1, "$this$boundsInScreen"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 1884
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1885
    .local v0, "boundsInScreen":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 1886
    return-object v0
.end method

.method private final getCurrentSemanticsNodes()Landroidx/collection/IntObjectMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/IntObjectMap<",
            "Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;",
            ">;"
        }
    .end annotation

    .line 347
    iget-boolean v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->currentSemanticsNodesInvalidated:Z

    if-eqz v0, :cond_0

    .line 348
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->currentSemanticsNodesInvalidated:Z

    .line 349
    nop

    .line 350
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->getSemanticsOwner()Landroidx/compose/ui/semantics/SemanticsOwner;

    move-result-object v0

    .line 351
    nop

    .line 350
    sget-object v1, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$currentSemanticsNodes$1;->INSTANCE:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$currentSemanticsNodes$1;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    const/4 v2, -0x1

    invoke-static {v0, v2, v1}, Landroidx/compose/ui/semantics/SemanticsOwnerKt;->getAllUncoveredSemanticsNodesToIntObjectMap(Landroidx/compose/ui/semantics/SemanticsOwner;ILkotlin/jvm/functions/Function1;)Landroidx/collection/IntObjectMap;

    move-result-object v0

    .line 349
    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->currentSemanticsNodes:Landroidx/collection/IntObjectMap;

    .line 354
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->isEnabled$ui()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->currentSemanticsNodes:Landroidx/collection/IntObjectMap;

    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->idToBeforeMap:Landroidx/collection/MutableIntIntMap;

    iget-object v2, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->idToAfterMap:Landroidx/collection/MutableIntIntMap;

    iget-object v3, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v3}, Landroidx/compose/ui/platform/AndroidComposeView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->access$setTraversalValues(Landroidx/collection/IntObjectMap;Landroidx/collection/MutableIntIntMap;Landroidx/collection/MutableIntIntMap;Landroid/content/res/Resources;)V

    .line 358
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->currentSemanticsNodes:Landroidx/collection/IntObjectMap;

    return-object v0
.end method

.method private final getEnabledServices()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    .line 277
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->_enabledServices:Ljava/util/List;

    if-nez v0, :cond_0

    .line 278
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    .local v1, "it":Ljava/util/List;
    const/4 v2, 0x0

    .line 279
    .local v2, "$i$a$-also-AndroidComposeViewAccessibilityDelegateCompat$enabledServices$1":I
    iput-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->_enabledServices:Ljava/util/List;

    .line 280
    nop

    .line 278
    .end local v1    # "it":Ljava/util/List;
    .end local v2    # "$i$a$-also-AndroidComposeViewAccessibilityDelegateCompat$enabledServices$1":I
    nop

    .line 280
    :cond_0
    return-object v0
.end method

.method public static synthetic getHoveredVirtualViewId$ui$annotations()V
    .locals 0

    return-void
.end method

.method private final getIterableTextForAccessibility(Landroidx/compose/ui/semantics/SemanticsNode;)Ljava/lang/String;
    .locals 10
    .param p1, "node"    # Landroidx/compose/ui/semantics/SemanticsNode;

    .line 3098
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 3099
    return-object v0

    .line 3103
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v1

    sget-object v2, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsProperties;->getContentDescription()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3104
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->getContentDescription()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->get(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/List;

    const-string v0, ","

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    const/16 v8, 0x3e

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v9}, Landroidx/compose/ui/util/ListUtilsKt;->fastJoinToString$default(Ljava/util/List;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3107
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v1

    sget-object v2, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsProperties;->getEditableText()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3108
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v1

    invoke-direct {p0, v1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getTextForTextField(Landroidx/compose/ui/semantics/SemanticsConfiguration;)Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroidx/compose/ui/text/AnnotatedString;->getText()Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0

    .line 3111
    :cond_3
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v1

    sget-object v2, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsProperties;->getText()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_4

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/text/AnnotatedString;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroidx/compose/ui/text/AnnotatedString;->getText()Ljava/lang/String;

    move-result-object v0

    :cond_4
    return-object v0
.end method

.method private final getIteratorForGranularity(Landroidx/compose/ui/semantics/SemanticsNode;I)Landroidx/compose/ui/platform/AccessibilityIterators$TextSegmentIterator;
    .locals 5
    .param p1, "node"    # Landroidx/compose/ui/semantics/SemanticsNode;
    .param p2, "granularity"    # I

    .line 3041
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 3043
    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getIterableTextForAccessibility(Landroidx/compose/ui/semantics/SemanticsNode;)Ljava/lang/String;

    move-result-object v1

    .line 3044
    .local v1, "text":Ljava/lang/String;
    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_3

    .line 3045
    return-object v0

    .line 3048
    :cond_3
    const/4 v2, 0x0

    .line 3050
    .local v2, "iterator":Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;
    sparse-switch p2, :sswitch_data_0

    .line 3085
    return-object v0

    .line 3066
    :sswitch_0
    sget-object v0, Landroidx/compose/ui/platform/AccessibilityIterators$ParagraphTextSegmentIterator;->Companion:Landroidx/compose/ui/platform/AccessibilityIterators$ParagraphTextSegmentIterator$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AccessibilityIterators$ParagraphTextSegmentIterator$Companion;->getInstance()Landroidx/compose/ui/platform/AccessibilityIterators$ParagraphTextSegmentIterator;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;

    .line 3067
    .end local v2    # "iterator":Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;
    .local v0, "iterator":Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;
    invoke-virtual {v0, v1}, Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;->initialize(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3072
    .end local v0    # "iterator":Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;
    .restart local v2    # "iterator":Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;
    :sswitch_1
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v3

    sget-object v4, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v4}, Landroidx/compose/ui/semantics/SemanticsActions;->getGetTextLayoutResult()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 3073
    return-object v0

    .line 3075
    :cond_4
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v3

    invoke-static {v3}, Landroidx/compose/ui/platform/SemanticsUtils_androidKt;->getTextLayoutResult(Landroidx/compose/ui/semantics/SemanticsConfiguration;)Landroidx/compose/ui/text/TextLayoutResult;

    move-result-object v3

    if-nez v3, :cond_5

    return-object v0

    .line 3076
    .local v3, "textLayoutResult":Landroidx/compose/ui/text/TextLayoutResult;
    :cond_5
    const/4 v0, 0x4

    if-ne p2, v0, :cond_6

    .line 3077
    sget-object v0, Landroidx/compose/ui/platform/AccessibilityIterators$LineTextSegmentIterator;->Companion:Landroidx/compose/ui/platform/AccessibilityIterators$LineTextSegmentIterator$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AccessibilityIterators$LineTextSegmentIterator$Companion;->getInstance()Landroidx/compose/ui/platform/AccessibilityIterators$LineTextSegmentIterator;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;

    .line 3078
    .end local v2    # "iterator":Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;
    .restart local v0    # "iterator":Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;
    move-object v2, v0

    check-cast v2, Landroidx/compose/ui/platform/AccessibilityIterators$LineTextSegmentIterator;

    invoke-virtual {v2, v1, v3}, Landroidx/compose/ui/platform/AccessibilityIterators$LineTextSegmentIterator;->initialize(Ljava/lang/String;Landroidx/compose/ui/text/TextLayoutResult;)V

    goto :goto_2

    .line 3080
    .end local v0    # "iterator":Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;
    .restart local v2    # "iterator":Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;
    :cond_6
    sget-object v0, Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;->Companion:Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator$Companion;->getInstance()Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;

    .line 3082
    .end local v2    # "iterator":Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;
    .restart local v0    # "iterator":Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;
    move-object v2, v0

    check-cast v2, Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;

    invoke-virtual {v2, v1, v3, p1}, Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;->initialize(Ljava/lang/String;Landroidx/compose/ui/text/TextLayoutResult;Landroidx/compose/ui/semantics/SemanticsNode;)V

    .end local v3    # "textLayoutResult":Landroidx/compose/ui/text/TextLayoutResult;
    goto :goto_2

    .line 3060
    .end local v0    # "iterator":Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;
    .restart local v2    # "iterator":Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;
    :sswitch_2
    sget-object v0, Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;->Companion:Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator$Companion;

    .line 3061
    iget-object v3, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v3}, Landroidx/compose/ui/platform/AndroidComposeView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 3060
    invoke-virtual {v0, v3}, Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator$Companion;->getInstance(Ljava/util/Locale;)Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;

    .line 3059
    nop

    .line 3063
    .end local v2    # "iterator":Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;
    .restart local v0    # "iterator":Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;
    move-object v2, v0

    check-cast v2, Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;

    invoke-virtual {v2, v1}, Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;->initialize(Ljava/lang/String;)V

    goto :goto_2

    .line 3053
    .end local v0    # "iterator":Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;
    .restart local v2    # "iterator":Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;
    :sswitch_3
    sget-object v0, Landroidx/compose/ui/platform/AccessibilityIterators$CharacterTextSegmentIterator;->Companion:Landroidx/compose/ui/platform/AccessibilityIterators$CharacterTextSegmentIterator$Companion;

    .line 3054
    iget-object v3, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v3}, Landroidx/compose/ui/platform/AndroidComposeView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 3053
    invoke-virtual {v0, v3}, Landroidx/compose/ui/platform/AccessibilityIterators$CharacterTextSegmentIterator$Companion;->getInstance(Ljava/util/Locale;)Landroidx/compose/ui/platform/AccessibilityIterators$CharacterTextSegmentIterator;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;

    .line 3052
    nop

    .line 3056
    .end local v2    # "iterator":Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;
    .restart local v0    # "iterator":Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;
    move-object v2, v0

    check-cast v2, Landroidx/compose/ui/platform/AccessibilityIterators$CharacterTextSegmentIterator;

    invoke-virtual {v2, v1}, Landroidx/compose/ui/platform/AccessibilityIterators$CharacterTextSegmentIterator;->initialize(Ljava/lang/String;)V

    .line 3087
    :goto_2
    move-object v2, v0

    check-cast v2, Landroidx/compose/ui/platform/AccessibilityIterators$TextSegmentIterator;

    return-object v2

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
        0x10 -> :sswitch_1
    .end sparse-switch
.end method

.method public static synthetic getOnSendAccessibilityEvent$ui$annotations()V
    .locals 0

    return-void
.end method

.method private final getShapeBounds(Landroidx/compose/ui/semantics/SemanticsNode;Landroid/graphics/Rect;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/geometry/Rect;
    .locals 37
    .param p1, "node"    # Landroidx/compose/ui/semantics/SemanticsNode;
    .param p2, "nodeBoundsInScreen"    # Landroid/graphics/Rect;
    .param p3, "shape"    # Landroidx/compose/ui/graphics/Shape;

    .line 1895
    move-object/from16 v0, p0

    new-instance v1, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$getShapeBounds$shapeNodeMatcher$1;

    move-object/from16 v2, p3

    invoke-direct {v1, v2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$getShapeBounds$shapeNodeMatcher$1;-><init>(Landroidx/compose/ui/graphics/Shape;)V

    .line 1894
    nop

    .line 1902
    .local v1, "shapeNodeMatcher":Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$getShapeBounds$shapeNodeMatcher$1;
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getLayoutNode$ui()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v3

    .line 1904
    .local v3, "layoutNode":Landroidx/compose/ui/node/LayoutNode;
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui()Landroidx/compose/ui/node/NodeChain;

    move-result-object v4

    const/4 v5, 0x0

    .line 3598
    .local v5, "$i$f$getSemantics-OLwlOKw":I
    const/16 v6, 0x8

    invoke-static {v6}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v5

    .line 1904
    .end local v5    # "$i$f$getSemantics-OLwlOKw":I
    nop

    .local v4, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .local v5, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    const/4 v6, 0x0

    .line 3599
    .local v6, "$i$f$firstFromHead-aLcG6gQ$ui":I
    move v7, v5

    .local v7, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv$iv":I
    move-object v8, v4

    .local v8, "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v9, 0x0

    .line 3604
    .local v9, "$i$f$headToTail-aLcG6gQ$ui":I
    move v10, v7

    .local v10, "mask$iv$iv$iv":I
    move-object v11, v8

    .local v11, "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v12, 0x0

    .line 3608
    .local v12, "$i$f$headToTail$ui":I
    invoke-static {v11}, Landroidx/compose/ui/node/NodeChain;->access$getAggregateChildKindSet(Landroidx/compose/ui/node/NodeChain;)I

    move-result v13

    and-int/2addr v13, v10

    if-eqz v13, :cond_10

    .line 3609
    move-object v13, v11

    .local v13, "this_$iv$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    const/16 v16, 0x0

    .line 3610
    .local v16, "$i$f$headToTail$ui":I
    invoke-virtual {v13}, Landroidx/compose/ui/node/NodeChain;->getHead$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v17

    .line 3611
    .local v17, "node$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_0
    if-eqz v17, :cond_f

    .line 3612
    move-object/from16 v18, v17

    .local v18, "it$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v19, 0x0

    .line 3613
    .local v19, "$i$a$-headToTail$ui-NodeChain$headToTail$2$iv$iv$iv":I
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v20

    and-int v20, v20, v10

    if-eqz v20, :cond_e

    .line 3614
    move-object/from16 v20, v18

    .local v20, "it$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v21, 0x0

    .line 3604
    .local v21, "$i$a$-headToTail$ui-NodeChain$headToTail$1$iv$iv":I
    move/from16 v22, v7

    .local v22, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object/from16 v23, v20

    .local v23, "$this$dispatchForKind_u2d6rFNWt0$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v24, 0x0

    .line 3615
    .local v24, "$i$f$dispatchForKind-6rFNWt0":I
    const/16 v25, 0x0

    .line 3616
    .local v25, "stack$iv$iv$iv":Ljava/lang/Object;
    const/16 v26, 0x0

    .local v26, "node$iv$iv$iv":Ljava/lang/Object;
    move-object/from16 v26, v23

    move-object/from16 v14, v26

    .line 3617
    .end local v26    # "node$iv$iv$iv":Ljava/lang/Object;
    .local v14, "node$iv$iv$iv":Ljava/lang/Object;
    :goto_1
    if-eqz v14, :cond_d

    .line 3618
    instance-of v15, v14, Landroidx/compose/ui/node/SemanticsModifierNode;

    if-eqz v15, :cond_1

    .line 3619
    move-object v15, v14

    .local v15, "it$iv":Ljava/lang/Object;
    const/16 v27, 0x0

    .line 3599
    .local v27, "$i$a$-headToTail-aLcG6gQ$ui-NodeChain$firstFromHead$1$iv":I
    move-object/from16 v28, v15

    check-cast v28, Landroidx/compose/ui/node/SemanticsModifierNode;

    .local v28, "it":Landroidx/compose/ui/node/SemanticsModifierNode;
    const/16 v29, 0x0

    .line 1905
    .local v29, "$i$a$-firstFromHead-aLcG6gQ$ui-AndroidComposeViewAccessibilityDelegateCompat$getShapeBounds$shapeSemanticsModifierNode$1":I
    move-object/from16 v30, v28

    .local v30, "$this$getShapeBounds_u24lambda_u240_u240":Landroidx/compose/ui/node/SemanticsModifierNode;
    const/16 v31, 0x0

    .line 1906
    .local v31, "$i$a$-with-AndroidComposeViewAccessibilityDelegateCompat$getShapeBounds$shapeSemanticsModifierNode$1$1":I
    move-object/from16 v32, v1

    .local v32, "$this$getShapeBounds_u24lambda_u240_u240_u240":Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$getShapeBounds$shapeNodeMatcher$1;
    const/16 v33, 0x0

    .line 1907
    .local v33, "$i$a$-run-AndroidComposeViewAccessibilityDelegateCompat$getShapeBounds$shapeSemanticsModifierNode$1$1$1":I
    move-object/from16 v34, v1

    .end local v1    # "shapeNodeMatcher":Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$getShapeBounds$shapeNodeMatcher$1;
    .local v34, "shapeNodeMatcher":Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$getShapeBounds$shapeNodeMatcher$1;
    move-object/from16 v1, v32

    check-cast v1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    move-object/from16 v2, v30

    .end local v30    # "$this$getShapeBounds_u24lambda_u240_u240":Landroidx/compose/ui/node/SemanticsModifierNode;
    .local v2, "$this$getShapeBounds_u24lambda_u240_u240":Landroidx/compose/ui/node/SemanticsModifierNode;
    invoke-interface {v2, v1}, Landroidx/compose/ui/node/SemanticsModifierNode;->applySemantics(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V

    .line 1908
    invoke-virtual/range {v32 .. v32}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$getShapeBounds$shapeNodeMatcher$1;->getHasMatchedShape()Z

    move-result v1

    .line 3599
    .end local v2    # "$this$getShapeBounds_u24lambda_u240_u240":Landroidx/compose/ui/node/SemanticsModifierNode;
    .end local v28    # "it":Landroidx/compose/ui/node/SemanticsModifierNode;
    .end local v29    # "$i$a$-firstFromHead-aLcG6gQ$ui-AndroidComposeViewAccessibilityDelegateCompat$getShapeBounds$shapeSemanticsModifierNode$1":I
    .end local v31    # "$i$a$-with-AndroidComposeViewAccessibilityDelegateCompat$getShapeBounds$shapeSemanticsModifierNode$1$1":I
    .end local v32    # "$this$getShapeBounds_u24lambda_u240_u240_u240":Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$getShapeBounds$shapeNodeMatcher$1;
    .end local v33    # "$i$a$-run-AndroidComposeViewAccessibilityDelegateCompat$getShapeBounds$shapeSemanticsModifierNode$1$1$1":I
    if-eqz v1, :cond_0

    move-object/from16 v35, v3

    goto/16 :goto_b

    .line 3619
    .end local v15    # "it$iv":Ljava/lang/Object;
    .end local v27    # "$i$a$-headToTail-aLcG6gQ$ui-NodeChain$firstFromHead$1$iv":I
    :cond_0
    move-object/from16 v35, v3

    goto/16 :goto_8

    .line 3620
    .end local v34    # "shapeNodeMatcher":Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$getShapeBounds$shapeNodeMatcher$1;
    .restart local v1    # "shapeNodeMatcher":Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$getShapeBounds$shapeNodeMatcher$1;
    :cond_1
    move-object/from16 v34, v1

    .end local v1    # "shapeNodeMatcher":Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$getShapeBounds$shapeNodeMatcher$1;
    .restart local v34    # "shapeNodeMatcher":Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$getShapeBounds$shapeNodeMatcher$1;
    move/from16 v1, v22

    .local v1, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv$iv":I
    move-object v2, v14

    .local v2, "this_$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v15, 0x0

    .line 3621
    .local v15, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v27

    and-int v27, v27, v1

    if-eqz v27, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 3620
    .end local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv$iv":I
    .end local v2    # "this_$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v15    # "$i$f$isKind-H91voCI$ui":I
    :goto_2
    if-eqz v1, :cond_b

    instance-of v1, v14, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v1, :cond_b

    .line 3622
    const/4 v1, 0x0

    .line 3623
    .local v1, "count$iv$iv$iv":I
    move-object v2, v14

    check-cast v2, Landroidx/compose/ui/node/DelegatingNode;

    .local v2, "this_$iv$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/4 v15, 0x0

    .line 3624
    .local v15, "$i$f$forEachImmediateDelegate$ui":I
    invoke-virtual {v2}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v27

    .line 3625
    .local v27, "node$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_3
    if-eqz v27, :cond_a

    .line 3626
    move-object/from16 v28, v27

    .local v28, "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v29, 0x0

    .line 3627
    .local v29, "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv$iv":I
    move/from16 v30, v22

    .local v30, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv$iv":I
    move-object/from16 v31, v28

    .local v31, "this_$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v32, 0x0

    .line 3621
    .local v32, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v31 .. v31}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v33

    and-int v33, v33, v30

    if-eqz v33, :cond_3

    const/16 v30, 0x1

    goto :goto_4

    :cond_3
    const/16 v30, 0x0

    .line 3627
    .end local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv$iv":I
    .end local v31    # "this_$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v32    # "$i$f$isKind-H91voCI$ui":I
    :goto_4
    if-eqz v30, :cond_9

    .line 3628
    add-int/lit8 v1, v1, 0x1

    .line 3629
    move-object/from16 v30, v2

    const/4 v2, 0x1

    .end local v2    # "this_$iv$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .local v30, "this_$iv$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    if-ne v1, v2, :cond_4

    .line 3630
    move-object/from16 v14, v28

    move-object/from16 v35, v3

    move-object/from16 v3, v28

    goto :goto_7

    .line 3634
    :cond_4
    if-nez v25, :cond_5

    const/4 v2, 0x0

    .line 3635
    .local v2, "$i$f$mutableVectorOf":I
    nop

    .line 3636
    move/from16 v31, v1

    .end local v1    # "count$iv$iv$iv":I
    .local v31, "count$iv$iv$iv":I
    const/16 v1, 0x10

    .local v1, "capacity$iv$iv$iv$iv$iv":I
    const/16 v32, 0x0

    .line 3637
    .local v32, "$i$f$MutableVector":I
    move/from16 v33, v2

    .end local v2    # "$i$f$mutableVectorOf":I
    .local v33, "$i$f$mutableVectorOf":I
    new-instance v2, Landroidx/compose/runtime/collection/MutableVector;

    move-object/from16 v35, v3

    .end local v3    # "layoutNode":Landroidx/compose/ui/node/LayoutNode;
    .local v35, "layoutNode":Landroidx/compose/ui/node/LayoutNode;
    new-array v3, v1, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v36, v1

    const/4 v1, 0x0

    .end local v1    # "capacity$iv$iv$iv$iv$iv":I
    .local v36, "capacity$iv$iv$iv$iv$iv":I
    invoke-direct {v2, v3, v1}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 3635
    .end local v32    # "$i$f$MutableVector":I
    .end local v36    # "capacity$iv$iv$iv$iv$iv":I
    goto :goto_5

    .line 3634
    .end local v31    # "count$iv$iv$iv":I
    .end local v33    # "$i$f$mutableVectorOf":I
    .end local v35    # "layoutNode":Landroidx/compose/ui/node/LayoutNode;
    .local v1, "count$iv$iv$iv":I
    .restart local v3    # "layoutNode":Landroidx/compose/ui/node/LayoutNode;
    :cond_5
    move/from16 v31, v1

    move-object/from16 v35, v3

    .end local v1    # "count$iv$iv$iv":I
    .end local v3    # "layoutNode":Landroidx/compose/ui/node/LayoutNode;
    .restart local v31    # "count$iv$iv$iv":I
    .restart local v35    # "layoutNode":Landroidx/compose/ui/node/LayoutNode;
    move-object/from16 v2, v25

    :goto_5
    nop

    .line 3638
    .end local v25    # "stack$iv$iv$iv":Ljava/lang/Object;
    .local v2, "stack$iv$iv$iv":Ljava/lang/Object;
    move-object v1, v14

    .line 3639
    .local v1, "theNode$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v1, :cond_7

    .line 3640
    if-eqz v2, :cond_6

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 3641
    :cond_6
    const/4 v3, 0x0

    move-object v14, v3

    .line 3643
    :cond_7
    if-eqz v2, :cond_8

    move-object/from16 v3, v28

    .end local v28    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v3, "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .end local v3    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v28    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_8
    move-object/from16 v3, v28

    .line 3646
    .end local v1    # "theNode$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v28    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v3    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_6
    move-object/from16 v25, v2

    move/from16 v1, v31

    goto :goto_7

    .line 3627
    .end local v30    # "this_$iv$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v31    # "count$iv$iv$iv":I
    .end local v35    # "layoutNode":Landroidx/compose/ui/node/LayoutNode;
    .local v1, "count$iv$iv$iv":I
    .local v2, "this_$iv$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .local v3, "layoutNode":Landroidx/compose/ui/node/LayoutNode;
    .restart local v25    # "stack$iv$iv$iv":Ljava/lang/Object;
    .restart local v28    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_9
    move-object/from16 v30, v2

    move-object/from16 v35, v3

    move-object/from16 v3, v28

    .line 3646
    .end local v2    # "this_$iv$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v28    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v3, "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v30    # "this_$iv$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .restart local v35    # "layoutNode":Landroidx/compose/ui/node/LayoutNode;
    :goto_7
    nop

    .line 3626
    .end local v3    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v29    # "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv$iv":I
    nop

    .line 3647
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v27

    move-object/from16 v2, v30

    move-object/from16 v3, v35

    goto :goto_3

    .line 3649
    .end local v30    # "this_$iv$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v35    # "layoutNode":Landroidx/compose/ui/node/LayoutNode;
    .restart local v2    # "this_$iv$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .local v3, "layoutNode":Landroidx/compose/ui/node/LayoutNode;
    :cond_a
    move-object/from16 v30, v2

    move-object/from16 v35, v3

    .line 3650
    .end local v2    # "this_$iv$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v3    # "layoutNode":Landroidx/compose/ui/node/LayoutNode;
    .end local v15    # "$i$f$forEachImmediateDelegate$ui":I
    .end local v27    # "node$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v35    # "layoutNode":Landroidx/compose/ui/node/LayoutNode;
    const/4 v2, 0x1

    if-ne v1, v2, :cond_c

    .line 3652
    move-object/from16 v2, p3

    move-object/from16 v1, v34

    move-object/from16 v3, v35

    goto/16 :goto_1

    .line 3620
    .end local v1    # "count$iv$iv$iv":I
    .end local v35    # "layoutNode":Landroidx/compose/ui/node/LayoutNode;
    .restart local v3    # "layoutNode":Landroidx/compose/ui/node/LayoutNode;
    :cond_b
    move-object/from16 v35, v3

    .line 3655
    .end local v3    # "layoutNode":Landroidx/compose/ui/node/LayoutNode;
    .restart local v35    # "layoutNode":Landroidx/compose/ui/node/LayoutNode;
    :cond_c
    :goto_8
    invoke-static/range {v25 .. v25}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v14

    move-object/from16 v2, p3

    move-object/from16 v1, v34

    move-object/from16 v3, v35

    goto/16 :goto_1

    .line 3657
    .end local v34    # "shapeNodeMatcher":Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$getShapeBounds$shapeNodeMatcher$1;
    .end local v35    # "layoutNode":Landroidx/compose/ui/node/LayoutNode;
    .local v1, "shapeNodeMatcher":Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$getShapeBounds$shapeNodeMatcher$1;
    .restart local v3    # "layoutNode":Landroidx/compose/ui/node/LayoutNode;
    :cond_d
    move-object/from16 v34, v1

    move-object/from16 v35, v3

    .line 3604
    .end local v1    # "shapeNodeMatcher":Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$getShapeBounds$shapeNodeMatcher$1;
    .end local v3    # "layoutNode":Landroidx/compose/ui/node/LayoutNode;
    .end local v14    # "node$iv$iv$iv":Ljava/lang/Object;
    .end local v22    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .end local v23    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v24    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v25    # "stack$iv$iv$iv":Ljava/lang/Object;
    .restart local v34    # "shapeNodeMatcher":Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$getShapeBounds$shapeNodeMatcher$1;
    .restart local v35    # "layoutNode":Landroidx/compose/ui/node/LayoutNode;
    nop

    .line 3614
    .end local v20    # "it$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v21    # "$i$a$-headToTail$ui-NodeChain$headToTail$1$iv$iv":I
    goto :goto_9

    .line 3613
    .end local v34    # "shapeNodeMatcher":Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$getShapeBounds$shapeNodeMatcher$1;
    .end local v35    # "layoutNode":Landroidx/compose/ui/node/LayoutNode;
    .restart local v1    # "shapeNodeMatcher":Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$getShapeBounds$shapeNodeMatcher$1;
    .restart local v3    # "layoutNode":Landroidx/compose/ui/node/LayoutNode;
    :cond_e
    move-object/from16 v34, v1

    move-object/from16 v35, v3

    .line 3658
    .end local v1    # "shapeNodeMatcher":Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$getShapeBounds$shapeNodeMatcher$1;
    .end local v3    # "layoutNode":Landroidx/compose/ui/node/LayoutNode;
    .restart local v34    # "shapeNodeMatcher":Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$getShapeBounds$shapeNodeMatcher$1;
    .restart local v35    # "layoutNode":Landroidx/compose/ui/node/LayoutNode;
    :goto_9
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui()I

    move-result v1

    and-int/2addr v1, v10

    if-eqz v1, :cond_11

    .line 3659
    nop

    .line 3612
    .end local v18    # "it$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v19    # "$i$a$-headToTail$ui-NodeChain$headToTail$2$iv$iv$iv":I
    nop

    .line 3660
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v17

    move-object/from16 v2, p3

    move-object/from16 v1, v34

    move-object/from16 v3, v35

    goto/16 :goto_0

    .line 3662
    .end local v34    # "shapeNodeMatcher":Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$getShapeBounds$shapeNodeMatcher$1;
    .end local v35    # "layoutNode":Landroidx/compose/ui/node/LayoutNode;
    .restart local v1    # "shapeNodeMatcher":Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$getShapeBounds$shapeNodeMatcher$1;
    .restart local v3    # "layoutNode":Landroidx/compose/ui/node/LayoutNode;
    :cond_f
    move-object/from16 v34, v1

    move-object/from16 v35, v3

    .line 3663
    .end local v1    # "shapeNodeMatcher":Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$getShapeBounds$shapeNodeMatcher$1;
    .end local v3    # "layoutNode":Landroidx/compose/ui/node/LayoutNode;
    .end local v13    # "this_$iv$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v16    # "$i$f$headToTail$ui":I
    .end local v17    # "node$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v34    # "shapeNodeMatcher":Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$getShapeBounds$shapeNodeMatcher$1;
    .restart local v35    # "layoutNode":Landroidx/compose/ui/node/LayoutNode;
    goto :goto_a

    .line 3608
    .end local v34    # "shapeNodeMatcher":Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$getShapeBounds$shapeNodeMatcher$1;
    .end local v35    # "layoutNode":Landroidx/compose/ui/node/LayoutNode;
    .restart local v1    # "shapeNodeMatcher":Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$getShapeBounds$shapeNodeMatcher$1;
    .restart local v3    # "layoutNode":Landroidx/compose/ui/node/LayoutNode;
    :cond_10
    move-object/from16 v34, v1

    move-object/from16 v35, v3

    .line 3605
    .end local v1    # "shapeNodeMatcher":Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$getShapeBounds$shapeNodeMatcher$1;
    .end local v3    # "layoutNode":Landroidx/compose/ui/node/LayoutNode;
    .end local v10    # "mask$iv$iv$iv":I
    .end local v11    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v12    # "$i$f$headToTail$ui":I
    .restart local v34    # "shapeNodeMatcher":Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$getShapeBounds$shapeNodeMatcher$1;
    .restart local v35    # "layoutNode":Landroidx/compose/ui/node/LayoutNode;
    :cond_11
    :goto_a
    nop

    .line 3600
    .end local v7    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv$iv":I
    .end local v8    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v9    # "$i$f$headToTail-aLcG6gQ$ui":I
    const/4 v15, 0x0

    .line 1904
    .end local v4    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v5    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v6    # "$i$f$firstFromHead-aLcG6gQ$ui":I
    :goto_b
    check-cast v15, Landroidx/compose/ui/node/SemanticsModifierNode;

    .line 1903
    nop

    .line 1912
    .local v15, "shapeSemanticsModifierNode":Landroidx/compose/ui/node/SemanticsModifierNode;
    if-eqz v15, :cond_12

    invoke-interface {v15}, Landroidx/compose/ui/node/SemanticsModifierNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_12

    goto :goto_c

    :cond_12
    const/4 v2, 0x0

    :goto_c
    if-nez v2, :cond_13

    .line 1913
    invoke-virtual/range {v35 .. v35}, Landroidx/compose/ui/node/LayoutNode;->getOuterCoordinator$ui()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/layout/LayoutCoordinates;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->boundsInWindow(Landroidx/compose/ui/layout/LayoutCoordinates;Z)Landroidx/compose/ui/geometry/Rect;

    move-result-object v1

    return-object v1

    .line 1915
    :cond_13
    move-object v1, v15

    check-cast v1, Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {v1}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutCoordinates(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->boundsInRoot(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v1

    .line 1917
    .local v1, "shapeBoundsInRoot":Landroidx/compose/ui/geometry/Rect;
    nop

    .line 1918
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v2

    .line 1919
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v3

    .line 1920
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v4

    .line 1921
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result v5

    .line 1917
    invoke-direct {v0, v2, v3, v4, v5}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->toBoundsInScreen(FFFF)Landroid/graphics/Rect;

    move-result-object v2

    .line 1916
    nop

    .line 1923
    .local v2, "shapeBoundsInScreen":Landroid/graphics/Rect;
    move-object/from16 v3, p2

    invoke-direct {v0, v2, v3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->toBoundsRelativeToNodeBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v4

    return-object v4
.end method

.method private final getTextForTextField(Landroidx/compose/ui/semantics/SemanticsConfiguration;)Landroidx/compose/ui/text/AnnotatedString;
    .locals 1
    .param p1, "$this$getTextForTextField"    # Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 3115
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getEditableText()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/text/AnnotatedString;

    return-object v0
.end method

.method private final isAccessibilityFocused(I)Z
    .locals 1
    .param p1, "virtualViewId"    # I

    .line 1182
    iget v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityFocusedVirtualViewId:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final isAccessibilitySelectionExtendable(Landroidx/compose/ui/semantics/SemanticsNode;)Z
    .locals 2
    .param p1, "node"    # Landroidx/compose/ui/semantics/SemanticsNode;

    .line 3033
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->getContentDescription()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3034
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->getEditableText()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3033
    :goto_0
    return v0
.end method

.method private final isRequestFromAccessibilityTool()Z
    .locals 3

    .line 492
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->requestFromAccessibilityToolForTesting:Ljava/lang/Boolean;

    .line 493
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    .line 494
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 497
    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 496
    invoke-static {v0}, Landroidx/core/view/accessibility/AccessibilityManagerCompat;->isRequestFromAccessibilityTool(Landroid/view/accessibility/AccessibilityManager;)Z

    move-result v0

    return v0
.end method

.method private final isTouchExplorationEnabled()Z
    .locals 1

    .line 299
    iget-boolean v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityForceEnabledForTesting:Z

    if-nez v0, :cond_1

    .line 300
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private final notifySubtreeAccessibilityStateChangedIfNeeded(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 2
    .param p1, "layoutNode"    # Landroidx/compose/ui/node/LayoutNode;

    .line 2254
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->subtreeChangedLayoutNodes:Landroidx/collection/ArraySet;

    invoke-virtual {v0, p1}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2255
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->boundsUpdateChannel:Lkotlinx/coroutines/channels/Channel;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/channels/Channel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2257
    :cond_0
    return-void
.end method

.method private final performActionHelper(IILandroid/os/Bundle;)Z
    .locals 31
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .line 1361
    move-object/from16 v0, p0

    move/from16 v7, p1

    move/from16 v8, p2

    move-object/from16 v9, p3

    invoke-direct {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getCurrentSemanticsNodes()Landroidx/collection/IntObjectMap;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;

    const/4 v10, 0x0

    if-eqz v1, :cond_5c

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;->getSemanticsNode()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v1

    if-nez v1, :cond_0

    move v1, v7

    move/from16 v18, v10

    goto/16 :goto_35

    :cond_0
    move-object v11, v1

    .line 1363
    .local v11, "node":Landroidx/compose/ui/semantics/SemanticsNode;
    nop

    .line 1364
    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v1

    sget-object v2, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsProperties;->getIsSensitiveData()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1365
    invoke-direct {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->isRequestFromAccessibilityTool()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1367
    return v10

    .line 1371
    :cond_1
    sparse-switch v8, :sswitch_data_0

    .line 1425
    invoke-static {v11}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->access$enabled(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 1426
    return v10

    .line 1398
    :sswitch_0
    const/4 v1, -0x1

    if-eqz v9, :cond_2

    .line 1399
    nop

    .line 1400
    nop

    .line 1398
    const-string v2, "ACTION_ARGUMENT_SELECTION_START_INT"

    invoke-virtual {v9, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    goto :goto_0

    .line 1401
    :cond_2
    move v2, v1

    .line 1398
    :goto_0
    nop

    .line 1397
    move v12, v2

    .line 1403
    .local v12, "start":I
    if-eqz v9, :cond_3

    .line 1404
    nop

    .line 1405
    nop

    .line 1403
    const-string v2, "ACTION_ARGUMENT_SELECTION_END_INT"

    invoke-virtual {v9, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_1

    .line 1406
    :cond_3
    nop

    .line 1403
    :goto_1
    nop

    .line 1402
    move v13, v1

    .line 1408
    .local v13, "end":I
    invoke-direct {v0, v11, v12, v13, v10}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->setAccessibilitySelection(Landroidx/compose/ui/semantics/SemanticsNode;IIZ)Z

    move-result v10

    .line 1411
    .local v10, "success":Z
    if-eqz v10, :cond_4

    .line 1412
    nop

    .line 1413
    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsNode;->getId()I

    move-result v1

    invoke-direct {v0, v1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsNodeIdToAccessibilityVirtualNodeId(I)I

    move-result v1

    .line 1414
    nop

    .line 1412
    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEventForVirtualView$default(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)Z

    .line 1417
    :cond_4
    return v10

    .line 1420
    .end local v10    # "success":Z
    .end local v12    # "start":I
    .end local v13    # "end":I
    :sswitch_1
    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v1

    sget-object v2, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsActions;->getCopyText()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/AccessibilityAction;->getAction()Lkotlin/Function;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function0;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    goto :goto_2

    .line 1421
    :cond_5
    nop

    .line 1420
    :goto_2
    return v10

    .line 1378
    :sswitch_2
    if-eqz v9, :cond_7

    .line 1380
    nop

    .line 1381
    nop

    .line 1380
    const-string v1, "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1379
    nop

    .line 1384
    .local v1, "granularity":I
    nop

    .line 1385
    nop

    .line 1384
    const-string v3, "ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN"

    invoke-virtual {v9, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 1383
    nop

    .line 1387
    .local v3, "extendSelection":Z
    nop

    .line 1388
    nop

    .line 1389
    nop

    .line 1390
    const/16 v4, 0x100

    if-ne v8, v4, :cond_6

    move v10, v2

    .line 1391
    :cond_6
    nop

    .line 1387
    invoke-direct {v0, v11, v1, v10, v3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->traverseAtGranularity(Landroidx/compose/ui/semantics/SemanticsNode;IZZ)Z

    move-result v2

    return v2

    .line 1394
    .end local v1    # "granularity":I
    .end local v3    # "extendSelection":Z
    :cond_7
    return v10

    .line 1375
    :sswitch_3
    invoke-direct/range {p0 .. p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->clearAccessibilityFocus(I)Z

    move-result v1

    return v1

    .line 1373
    :sswitch_4
    invoke-direct/range {p0 .. p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->requestAccessibilityFocus(I)Z

    move-result v1

    return v1

    .line 1430
    :cond_8
    const/4 v1, 0x0

    sparse-switch v8, :sswitch_data_1

    .line 1725
    move v1, v7

    move-object/from16 v17, v11

    .end local v11    # "node":Landroidx/compose/ui/semantics/SemanticsNode;
    .local v17, "node":Landroidx/compose/ui/semantics/SemanticsNode;
    iget-object v2, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->actionIdToLabel:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v2, v1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/collection/SparseArrayCompat;

    if-eqz v2, :cond_5b

    invoke-virtual {v2, v8}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    if-nez v2, :cond_57

    const/16 v18, 0x0

    goto/16 :goto_34

    .line 1633
    .end local v17    # "node":Landroidx/compose/ui/semantics/SemanticsNode;
    .restart local v11    # "node":Landroidx/compose/ui/semantics/SemanticsNode;
    :sswitch_5
    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v1

    sget-object v2, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsActions;->getOnImeAction()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/AccessibilityAction;->getAction()Lkotlin/Function;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function0;

    if-eqz v1, :cond_9

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    goto :goto_3

    .line 1634
    :cond_9
    nop

    .line 1633
    :goto_3
    return v10

    .line 1576
    :sswitch_6
    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v1

    sget-object v2, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsActions;->getPageRight()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1577
    .local v1, "pageAction":Landroidx/compose/ui/semantics/AccessibilityAction;
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/AccessibilityAction;->getAction()Lkotlin/Function;

    move-result-object v2

    check-cast v2, Lkotlin/jvm/functions/Function0;

    if-eqz v2, :cond_a

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    :cond_a
    return v10

    .line 1572
    .end local v1    # "pageAction":Landroidx/compose/ui/semantics/AccessibilityAction;
    :sswitch_7
    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v1

    sget-object v2, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsActions;->getPageLeft()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1573
    .restart local v1    # "pageAction":Landroidx/compose/ui/semantics/AccessibilityAction;
    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/AccessibilityAction;->getAction()Lkotlin/Function;

    move-result-object v2

    check-cast v2, Lkotlin/jvm/functions/Function0;

    if-eqz v2, :cond_b

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    :cond_b
    return v10

    .line 1568
    .end local v1    # "pageAction":Landroidx/compose/ui/semantics/AccessibilityAction;
    :sswitch_8
    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v1

    sget-object v2, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsActions;->getPageDown()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1569
    .restart local v1    # "pageAction":Landroidx/compose/ui/semantics/AccessibilityAction;
    if-eqz v1, :cond_c

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/AccessibilityAction;->getAction()Lkotlin/Function;

    move-result-object v2

    check-cast v2, Lkotlin/jvm/functions/Function0;

    if-eqz v2, :cond_c

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    :cond_c
    return v10

    .line 1564
    .end local v1    # "pageAction":Landroidx/compose/ui/semantics/AccessibilityAction;
    :sswitch_9
    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v1

    sget-object v2, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsActions;->getPageUp()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1565
    .restart local v1    # "pageAction":Landroidx/compose/ui/semantics/AccessibilityAction;
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/AccessibilityAction;->getAction()Lkotlin/Function;

    move-result-object v2

    check-cast v2, Lkotlin/jvm/functions/Function0;

    if-eqz v2, :cond_d

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    :cond_d
    return v10

    .line 1580
    .end local v1    # "pageAction":Landroidx/compose/ui/semantics/AccessibilityAction;
    :sswitch_a
    nop

    .line 1581
    if-eqz v9, :cond_10

    .line 1582
    nop

    .line 1583
    nop

    .line 1582
    const-string v1, "android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_5

    .line 1588
    :cond_e
    nop

    .line 1591
    nop

    .line 1588
    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v2

    .line 1589
    sget-object v3, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsActions;->getSetProgress()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v3

    invoke-static {v2, v3}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1590
    if-eqz v2, :cond_f

    .line 1588
    nop

    .line 1590
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/AccessibilityAction;->getAction()Lkotlin/Function;

    move-result-object v2

    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 1591
    if-eqz v2, :cond_f

    .line 1588
    nop

    .line 1592
    nop

    .line 1593
    nop

    .line 1592
    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 1591
    invoke-interface {v2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 1588
    goto :goto_4

    .line 1595
    :cond_f
    nop

    .line 1588
    :goto_4
    return v10

    .line 1586
    :cond_10
    :goto_5
    return v10

    .line 1659
    :sswitch_b
    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsNode;->getParent()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v3

    .line 1661
    .local v3, "scrollableAncestor":Landroidx/compose/ui/semantics/SemanticsNode;
    if-eqz v3, :cond_11

    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v4

    if-eqz v4, :cond_11

    sget-object v5, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsActions;->getScrollBy()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v5

    invoke-static {v4, v5}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/semantics/AccessibilityAction;

    goto :goto_6

    :cond_11
    move-object v4, v1

    .line 1660
    :goto_6
    nop

    .line 1662
    .local v4, "scrollAction":Landroidx/compose/ui/semantics/AccessibilityAction;
    :goto_7
    if-eqz v3, :cond_14

    .line 1663
    if-eqz v4, :cond_12

    .line 1664
    goto :goto_9

    .line 1666
    :cond_12
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->getParent()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v3

    .line 1668
    if-eqz v3, :cond_13

    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v5

    if-eqz v5, :cond_13

    sget-object v6, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v6}, Landroidx/compose/ui/semantics/SemanticsActions;->getScrollBy()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v6

    invoke-static {v5, v6}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/semantics/AccessibilityAction;

    goto :goto_8

    :cond_13
    move-object v5, v1

    .line 1667
    :goto_8
    move-object v4, v5

    goto :goto_7

    .line 1670
    :cond_14
    :goto_9
    if-nez v3, :cond_15

    .line 1674
    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsNode;->getBoundsInRoot()Landroidx/compose/ui/geometry/Rect;

    move-result-object v1

    .local v1, "$this$performActionHelper_u24lambda_u240":Landroidx/compose/ui/geometry/Rect;
    const/4 v2, 0x0

    .line 1675
    .local v2, "$i$a$-run-AndroidComposeViewAccessibilityDelegateCompat$performActionHelper$rect$1":I
    new-instance v5, Landroid/graphics/Rect;

    .line 1676
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v6

    float-to-double v12, v6

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-float v6, v12

    float-to-int v6, v6

    .line 1677
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v10

    float-to-double v12, v10

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-float v10, v12

    float-to-int v10, v10

    .line 1678
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v12

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-float v12, v12

    invoke-static {v12}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v12

    .line 1679
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result v13

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v13

    double-to-float v13, v13

    invoke-static {v13}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v13

    .line 1675
    invoke-direct {v5, v6, v10, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1680
    nop

    .line 1674
    .end local v1    # "$this$performActionHelper_u24lambda_u240":Landroidx/compose/ui/geometry/Rect;
    .end local v2    # "$i$a$-run-AndroidComposeViewAccessibilityDelegateCompat$performActionHelper$rect$1":I
    nop

    .line 1673
    nop

    .line 1682
    .local v5, "rect":Landroid/graphics/Rect;
    iget-object v1, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v1, v5}, Landroidx/compose/ui/platform/AndroidComposeView;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    move-result v1

    return v1

    .line 1687
    .end local v5    # "rect":Landroid/graphics/Rect;
    :cond_15
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->getLayoutInfo()Landroidx/compose/ui/layout/LayoutInfo;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/ui/layout/LayoutInfo;->getCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->boundsInParent(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v1

    .line 1689
    .local v1, "viewportInParent":Landroidx/compose/ui/geometry/Rect;
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->getLayoutInfo()Landroidx/compose/ui/layout/LayoutInfo;

    move-result-object v5

    invoke-interface {v5}, Landroidx/compose/ui/layout/LayoutInfo;->getCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v5

    invoke-interface {v5}, Landroidx/compose/ui/layout/LayoutCoordinates;->getParentLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v5

    .line 1690
    if-eqz v5, :cond_16

    .line 1689
    nop

    .line 1690
    invoke-static {v5}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->positionInRoot(Landroidx/compose/ui/layout/LayoutCoordinates;)J

    move-result-wide v5

    .line 1689
    goto :goto_a

    .line 1690
    :cond_16
    sget-object v5, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v5

    .line 1689
    :goto_a
    nop

    .line 1688
    nop

    .line 1691
    .local v5, "parentInRoot":J
    invoke-virtual {v1, v5, v6}, Landroidx/compose/ui/geometry/Rect;->translate-k-4lQ0M(J)Landroidx/compose/ui/geometry/Rect;

    move-result-object v12

    .line 1692
    .local v12, "viewport":Landroidx/compose/ui/geometry/Rect;
    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsNode;->getPositionInRoot-F1C5BW0()J

    move-result-wide v13

    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsNode;->getSize-YbymL2g()J

    move-result-wide v15

    move/from16 v18, v10

    move-object/from16 v17, v11

    .end local v11    # "node":Landroidx/compose/ui/semantics/SemanticsNode;
    .restart local v17    # "node":Landroidx/compose/ui/semantics/SemanticsNode;
    invoke-static/range {v15 .. v16}, Landroidx/compose/ui/unit/IntSizeKt;->toSize-ozmzZPI(J)J

    move-result-wide v10

    invoke-static {v13, v14, v10, v11}, Landroidx/compose/ui/geometry/RectKt;->Rect-tz77jQw(JJ)Landroidx/compose/ui/geometry/Rect;

    move-result-object v10

    .line 1695
    .local v10, "target":Landroidx/compose/ui/geometry/Rect;
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v11

    .line 1696
    sget-object v13, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v13}, Landroidx/compose/ui/semantics/SemanticsProperties;->getHorizontalScrollAxisRange()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v13

    .line 1695
    invoke-static {v11, v13}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/ui/semantics/ScrollAxisRange;

    .line 1694
    nop

    .line 1699
    .local v11, "xScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v13

    .line 1700
    sget-object v14, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v14}, Landroidx/compose/ui/semantics/SemanticsProperties;->getVerticalScrollAxisRange()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v14

    .line 1699
    invoke-static {v13, v14}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/compose/ui/semantics/ScrollAxisRange;

    .line 1698
    nop

    .line 1711
    .local v13, "yScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    invoke-virtual {v10}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v14

    invoke-virtual {v12}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v15

    sub-float/2addr v14, v15

    invoke-virtual {v10}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v15

    invoke-virtual {v12}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v16

    sub-float v15, v15, v16

    invoke-static {v14, v15}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->performActionHelper$scrollDelta(FF)F

    move-result v14

    .line 1713
    .local v14, "dx":F
    if-eqz v11, :cond_17

    invoke-virtual {v11}, Landroidx/compose/ui/semantics/ScrollAxisRange;->getReverseScrolling()Z

    move-result v15

    if-ne v15, v2, :cond_17

    move v15, v2

    goto :goto_b

    :cond_17
    move/from16 v15, v18

    :goto_b
    if-eqz v15, :cond_18

    neg-float v14, v14

    .line 1714
    :cond_18
    invoke-static/range {v17 .. v17}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->access$isRtl(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v15

    if-eqz v15, :cond_19

    neg-float v14, v14

    .line 1717
    :cond_19
    invoke-virtual {v10}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v15

    invoke-virtual {v12}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v16

    sub-float v15, v15, v16

    invoke-virtual {v10}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result v16

    invoke-virtual {v12}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result v19

    sub-float v2, v16, v19

    invoke-static {v15, v2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->performActionHelper$scrollDelta(FF)F

    move-result v2

    .line 1719
    .local v2, "dy":F
    if-eqz v13, :cond_1a

    invoke-virtual {v13}, Landroidx/compose/ui/semantics/ScrollAxisRange;->getReverseScrolling()Z

    move-result v15

    const/4 v0, 0x1

    if-ne v15, v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_c

    :cond_1a
    move/from16 v0, v18

    :goto_c
    if-eqz v0, :cond_1b

    neg-float v2, v2

    .line 1721
    :cond_1b
    if-eqz v4, :cond_1c

    invoke-virtual {v4}, Landroidx/compose/ui/semantics/AccessibilityAction;->getAction()Lkotlin/Function;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function2;

    if-eqz v0, :cond_1c

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    move-object/from16 v16, v1

    .end local v1    # "viewportInParent":Landroidx/compose/ui/geometry/Rect;
    .local v16, "viewportInParent":Landroidx/compose/ui/geometry/Rect;
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v15, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1d

    const/16 v18, 0x1

    goto :goto_d

    .end local v16    # "viewportInParent":Landroidx/compose/ui/geometry/Rect;
    .restart local v1    # "viewportInParent":Landroidx/compose/ui/geometry/Rect;
    :cond_1c
    move-object/from16 v16, v1

    .end local v1    # "viewportInParent":Landroidx/compose/ui/geometry/Rect;
    .restart local v16    # "viewportInParent":Landroidx/compose/ui/geometry/Rect;
    :cond_1d
    :goto_d
    return v18

    .line 1624
    .end local v2    # "dy":F
    .end local v3    # "scrollableAncestor":Landroidx/compose/ui/semantics/SemanticsNode;
    .end local v4    # "scrollAction":Landroidx/compose/ui/semantics/AccessibilityAction;
    .end local v5    # "parentInRoot":J
    .end local v10    # "target":Landroidx/compose/ui/geometry/Rect;
    .end local v12    # "viewport":Landroidx/compose/ui/geometry/Rect;
    .end local v13    # "yScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    .end local v14    # "dx":F
    .end local v16    # "viewportInParent":Landroidx/compose/ui/geometry/Rect;
    .end local v17    # "node":Landroidx/compose/ui/semantics/SemanticsNode;
    .local v11, "node":Landroidx/compose/ui/semantics/SemanticsNode;
    :sswitch_c
    move/from16 v18, v10

    move-object/from16 v17, v11

    .end local v11    # "node":Landroidx/compose/ui/semantics/SemanticsNode;
    .restart local v17    # "node":Landroidx/compose/ui/semantics/SemanticsNode;
    if-eqz v9, :cond_1e

    .line 1625
    nop

    .line 1624
    const-string v0, "ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE"

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_1e
    move-object v0, v1

    .line 1623
    :goto_e
    nop

    .line 1627
    .local v0, "text":Ljava/lang/String;
    nop

    .line 1630
    nop

    .line 1627
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v2

    .line 1628
    sget-object v3, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsActions;->getSetText()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v3

    invoke-static {v2, v3}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1629
    if-eqz v2, :cond_20

    .line 1627
    nop

    .line 1629
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/AccessibilityAction;->getAction()Lkotlin/Function;

    move-result-object v2

    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 1630
    if-eqz v2, :cond_20

    .line 1627
    nop

    .line 1630
    new-instance v3, Landroidx/compose/ui/text/AnnotatedString;

    if-nez v0, :cond_1f

    const-string v4, ""

    goto :goto_f

    :cond_1f
    move-object v4, v0

    :goto_f
    const/4 v5, 0x2

    invoke-direct {v3, v4, v1, v5, v1}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 1627
    goto :goto_10

    .line 1630
    :cond_20
    move/from16 v10, v18

    .line 1627
    :goto_10
    return v10

    .line 1653
    .end local v0    # "text":Ljava/lang/String;
    .end local v17    # "node":Landroidx/compose/ui/semantics/SemanticsNode;
    .restart local v11    # "node":Landroidx/compose/ui/semantics/SemanticsNode;
    :sswitch_d
    move/from16 v18, v10

    move-object/from16 v17, v11

    .end local v11    # "node":Landroidx/compose/ui/semantics/SemanticsNode;
    .restart local v17    # "node":Landroidx/compose/ui/semantics/SemanticsNode;
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsActions;->getDismiss()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/AccessibilityAction;->getAction()Lkotlin/Function;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_21

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    goto :goto_11

    .line 1654
    :cond_21
    move/from16 v10, v18

    .line 1653
    :goto_11
    return v10

    .line 1649
    .end local v17    # "node":Landroidx/compose/ui/semantics/SemanticsNode;
    .restart local v11    # "node":Landroidx/compose/ui/semantics/SemanticsNode;
    :sswitch_e
    move/from16 v18, v10

    move-object/from16 v17, v11

    .end local v11    # "node":Landroidx/compose/ui/semantics/SemanticsNode;
    .restart local v17    # "node":Landroidx/compose/ui/semantics/SemanticsNode;
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsActions;->getCollapse()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/AccessibilityAction;->getAction()Lkotlin/Function;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_22

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    goto :goto_12

    .line 1650
    :cond_22
    move/from16 v10, v18

    .line 1649
    :goto_12
    return v10

    .line 1645
    .end local v17    # "node":Landroidx/compose/ui/semantics/SemanticsNode;
    .restart local v11    # "node":Landroidx/compose/ui/semantics/SemanticsNode;
    :sswitch_f
    move/from16 v18, v10

    move-object/from16 v17, v11

    .end local v11    # "node":Landroidx/compose/ui/semantics/SemanticsNode;
    .restart local v17    # "node":Landroidx/compose/ui/semantics/SemanticsNode;
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsActions;->getExpand()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/AccessibilityAction;->getAction()Lkotlin/Function;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_23

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    goto :goto_13

    .line 1646
    :cond_23
    move/from16 v10, v18

    .line 1645
    :goto_13
    return v10

    .line 1641
    .end local v17    # "node":Landroidx/compose/ui/semantics/SemanticsNode;
    .restart local v11    # "node":Landroidx/compose/ui/semantics/SemanticsNode;
    :sswitch_10
    move/from16 v18, v10

    move-object/from16 v17, v11

    .end local v11    # "node":Landroidx/compose/ui/semantics/SemanticsNode;
    .restart local v17    # "node":Landroidx/compose/ui/semantics/SemanticsNode;
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsActions;->getCutText()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/AccessibilityAction;->getAction()Lkotlin/Function;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_24

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    goto :goto_14

    .line 1642
    :cond_24
    move/from16 v10, v18

    .line 1641
    :goto_14
    return v10

    .line 1637
    .end local v17    # "node":Landroidx/compose/ui/semantics/SemanticsNode;
    .restart local v11    # "node":Landroidx/compose/ui/semantics/SemanticsNode;
    :sswitch_11
    move/from16 v18, v10

    move-object/from16 v17, v11

    .end local v11    # "node":Landroidx/compose/ui/semantics/SemanticsNode;
    .restart local v17    # "node":Landroidx/compose/ui/semantics/SemanticsNode;
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsActions;->getPasteText()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/AccessibilityAction;->getAction()Lkotlin/Function;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_25

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    goto :goto_15

    .line 1638
    :cond_25
    move/from16 v10, v18

    .line 1637
    :goto_15
    return v10

    .line 1448
    .end local v17    # "node":Landroidx/compose/ui/semantics/SemanticsNode;
    .restart local v11    # "node":Landroidx/compose/ui/semantics/SemanticsNode;
    :sswitch_12
    move/from16 v18, v10

    move-object/from16 v17, v11

    .end local v11    # "node":Landroidx/compose/ui/semantics/SemanticsNode;
    .restart local v17    # "node":Landroidx/compose/ui/semantics/SemanticsNode;
    const/16 v0, 0x1000

    if-ne v8, v0, :cond_26

    const/4 v0, 0x1

    goto :goto_16

    :cond_26
    move/from16 v0, v18

    .line 1449
    .local v0, "scrollForward":Z
    :goto_16
    const/16 v1, 0x2000

    if-ne v8, v1, :cond_27

    const/4 v1, 0x1

    goto :goto_17

    :cond_27
    move/from16 v1, v18

    .line 1450
    .local v1, "scrollBackward":Z
    :goto_17
    const v2, 0x1020039

    if-ne v8, v2, :cond_28

    const/4 v2, 0x1

    goto :goto_18

    :cond_28
    move/from16 v2, v18

    .line 1451
    .local v2, "scrollLeft":Z
    :goto_18
    const v3, 0x102003b

    if-ne v8, v3, :cond_29

    const/4 v3, 0x1

    goto :goto_19

    :cond_29
    move/from16 v3, v18

    .line 1452
    .local v3, "scrollRight":Z
    :goto_19
    const v4, 0x1020038

    if-ne v8, v4, :cond_2a

    const/4 v4, 0x1

    goto :goto_1a

    :cond_2a
    move/from16 v4, v18

    .line 1453
    .local v4, "scrollUp":Z
    :goto_1a
    const v5, 0x102003a

    if-ne v8, v5, :cond_2b

    const/4 v5, 0x1

    goto :goto_1b

    :cond_2b
    move/from16 v5, v18

    .line 1455
    .local v5, "scrollDown":Z
    :goto_1b
    if-nez v2, :cond_2d

    if-nez v3, :cond_2d

    if-nez v0, :cond_2d

    if-eqz v1, :cond_2c

    goto :goto_1c

    :cond_2c
    move/from16 v6, v18

    goto :goto_1d

    :cond_2d
    :goto_1c
    const/4 v6, 0x1

    .line 1456
    .local v6, "scrollHorizontal":Z
    :goto_1d
    if-nez v4, :cond_2f

    if-nez v5, :cond_2f

    if-nez v0, :cond_2f

    if-eqz v1, :cond_2e

    goto :goto_1e

    :cond_2e
    move/from16 v10, v18

    goto :goto_1f

    :cond_2f
    :goto_1e
    const/4 v10, 0x1

    .line 1458
    .local v10, "scrollVertical":Z
    :goto_1f
    if-nez v0, :cond_31

    if-eqz v1, :cond_30

    goto :goto_20

    :cond_30
    move/from16 v19, v0

    move/from16 v21, v1

    goto/16 :goto_23

    .line 1460
    :cond_31
    :goto_20
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v11

    sget-object v12, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v12}, Landroidx/compose/ui/semantics/SemanticsProperties;->getProgressBarRangeInfo()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v12

    invoke-static {v11, v12}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;

    .line 1459
    nop

    .line 1462
    .local v11, "rangeInfo":Landroidx/compose/ui/semantics/ProgressBarRangeInfo;
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v12

    sget-object v13, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v13}, Landroidx/compose/ui/semantics/SemanticsActions;->getSetProgress()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v13

    invoke-static {v12, v13}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1461
    nop

    .line 1463
    .local v12, "setProgressAction":Landroidx/compose/ui/semantics/AccessibilityAction;
    if-eqz v11, :cond_35

    if-eqz v12, :cond_35

    .line 1464
    invoke-virtual {v11}, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->getRange()Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v13

    invoke-interface {v13}, Lkotlin/ranges/ClosedFloatingPointRange;->getEndInclusive()Ljava/lang/Comparable;

    move-result-object v13

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->floatValue()F

    move-result v13

    invoke-virtual {v11}, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->getRange()Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v14

    invoke-interface {v14}, Lkotlin/ranges/ClosedFloatingPointRange;->getStart()Ljava/lang/Comparable;

    move-result-object v14

    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->floatValue()F

    move-result v14

    invoke-static {v13, v14}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v13

    .line 1465
    .local v13, "max":F
    invoke-virtual {v11}, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->getRange()Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v14

    invoke-interface {v14}, Lkotlin/ranges/ClosedFloatingPointRange;->getStart()Ljava/lang/Comparable;

    move-result-object v14

    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->floatValue()F

    move-result v14

    invoke-virtual {v11}, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->getRange()Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v15

    invoke-interface {v15}, Lkotlin/ranges/ClosedFloatingPointRange;->getEndInclusive()Ljava/lang/Comparable;

    move-result-object v15

    check-cast v15, Ljava/lang/Number;

    invoke-virtual {v15}, Ljava/lang/Number;->floatValue()F

    move-result v15

    invoke-static {v14, v15}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    move-result v14

    .line 1467
    .local v14, "min":F
    invoke-virtual {v11}, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->getSteps()I

    move-result v15

    if-lez v15, :cond_32

    .line 1468
    sub-float v15, v13, v14

    invoke-virtual {v11}, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->getSteps()I

    move-result v16

    move/from16 v19, v0

    const/16 v20, 0x1

    .end local v0    # "scrollForward":Z
    .local v19, "scrollForward":Z
    add-int/lit8 v0, v16, 0x1

    int-to-float v0, v0

    div-float/2addr v15, v0

    goto :goto_21

    .line 1470
    .end local v19    # "scrollForward":Z
    .restart local v0    # "scrollForward":Z
    :cond_32
    move/from16 v19, v0

    .end local v0    # "scrollForward":Z
    .restart local v19    # "scrollForward":Z
    sub-float v0, v13, v14

    const/16 v15, 0x14

    int-to-float v15, v15

    div-float v15, v0, v15

    .line 1467
    :goto_21
    nop

    .line 1466
    nop

    .line 1472
    .local v15, "increment":F
    if-eqz v1, :cond_33

    .line 1473
    neg-float v15, v15

    .line 1475
    :cond_33
    invoke-virtual {v12}, Landroidx/compose/ui/semantics/AccessibilityAction;->getAction()Lkotlin/Function;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_34

    invoke-virtual {v11}, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->getCurrent()F

    move-result v16

    add-float v16, v16, v15

    move/from16 v21, v1

    .end local v1    # "scrollBackward":Z
    .local v21, "scrollBackward":Z
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_22

    .line 1476
    .end local v21    # "scrollBackward":Z
    .restart local v1    # "scrollBackward":Z
    :cond_34
    move/from16 v21, v1

    .end local v1    # "scrollBackward":Z
    .restart local v21    # "scrollBackward":Z
    move/from16 v0, v18

    .line 1475
    :goto_22
    return v0

    .line 1463
    .end local v13    # "max":F
    .end local v14    # "min":F
    .end local v15    # "increment":F
    .end local v19    # "scrollForward":Z
    .end local v21    # "scrollBackward":Z
    .restart local v0    # "scrollForward":Z
    .restart local v1    # "scrollBackward":Z
    :cond_35
    move/from16 v19, v0

    move/from16 v21, v1

    .line 1485
    .end local v0    # "scrollForward":Z
    .end local v1    # "scrollBackward":Z
    .end local v11    # "rangeInfo":Landroidx/compose/ui/semantics/ProgressBarRangeInfo;
    .end local v12    # "setProgressAction":Landroidx/compose/ui/semantics/AccessibilityAction;
    .restart local v19    # "scrollForward":Z
    .restart local v21    # "scrollBackward":Z
    :goto_23
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/semantics/SemanticsNode;->getLayoutInfo()Landroidx/compose/ui/layout/LayoutInfo;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/layout/LayoutInfo;->getCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->boundsInParent(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->getSize-NH-jbRc()J

    move-result-wide v0

    .line 1486
    .local v0, "fallbackViewport":J
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v11

    invoke-static {v11}, Landroidx/compose/ui/platform/SemanticsUtils_androidKt;->getScrollViewportLength(Landroidx/compose/ui/semantics/SemanticsConfiguration;)Ljava/lang/Float;

    move-result-object v11

    .line 1491
    .local v11, "activeViewPortForScroll":Ljava/lang/Float;
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v12

    sget-object v13, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v13}, Landroidx/compose/ui/semantics/SemanticsActions;->getScrollBy()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v13

    invoke-static {v12, v13}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-nez v12, :cond_36

    return v18

    .line 1490
    :cond_36
    nop

    .line 1494
    .local v12, "scrollAction":Landroidx/compose/ui/semantics/AccessibilityAction;
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v13

    sget-object v14, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v14}, Landroidx/compose/ui/semantics/SemanticsProperties;->getHorizontalScrollAxisRange()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v14

    invoke-static {v13, v14}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/compose/ui/semantics/ScrollAxisRange;

    .line 1493
    nop

    .line 1496
    .local v13, "xScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    if-eqz v13, :cond_44

    if-eqz v6, :cond_44

    .line 1497
    if-eqz v11, :cond_37

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v15

    const/16 v27, 0x0

    goto :goto_24

    :cond_37
    move-wide v15, v0

    .local v15, "$v$c$androidx-compose-ui-geometry-Size$-this$0$iv":J
    const/16 v22, 0x0

    .line 3560
    .local v22, "$i$f$getWidth-impl":I
    move-wide/from16 v23, v15

    .local v23, "value$iv$iv":J
    const/16 v25, 0x0

    .line 3561
    .local v25, "$i$f$unpackFloat1":I
    const/16 v26, 0x20

    move-wide/from16 v28, v15

    const/16 v27, 0x0

    .end local v15    # "$v$c$androidx-compose-ui-geometry-Size$-this$0$iv":J
    .local v28, "$v$c$androidx-compose-ui-geometry-Size$-this$0$iv":J
    shr-long v14, v23, v26

    long-to-int v14, v14

    .local v14, "bits$iv$iv$iv":I
    const/4 v15, 0x0

    .line 3562
    .local v15, "$i$f$floatFromBits":I
    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v15

    .line 3561
    .end local v14    # "bits$iv$iv$iv":I
    .end local v15    # "$i$f$floatFromBits":I
    nop

    .line 3560
    .end local v23    # "value$iv$iv":J
    .end local v25    # "$i$f$unpackFloat1":I
    nop

    .line 1497
    .end local v22    # "$i$f$getWidth-impl":I
    .end local v28    # "$v$c$androidx-compose-ui-geometry-Size$-this$0$iv":J
    :goto_24
    nop

    .line 1499
    .local v15, "amountToScroll":F
    if-nez v2, :cond_38

    if-eqz v21, :cond_39

    .line 1500
    :cond_38
    neg-float v15, v15

    .line 1502
    :cond_39
    invoke-virtual {v13}, Landroidx/compose/ui/semantics/ScrollAxisRange;->getReverseScrolling()Z

    move-result v14

    if-eqz v14, :cond_3a

    .line 1503
    neg-float v15, v15

    .line 1505
    :cond_3a
    invoke-static/range {v17 .. v17}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->access$isRtl(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v14

    if-eqz v14, :cond_3c

    if-nez v2, :cond_3b

    if-eqz v3, :cond_3c

    .line 1506
    :cond_3b
    neg-float v15, v15

    .line 1511
    :cond_3c
    invoke-static {v13, v15}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->performActionHelper$canScroll(Landroidx/compose/ui/semantics/ScrollAxisRange;F)Z

    move-result v14

    if-eqz v14, :cond_43

    .line 1513
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v14

    sget-object v16, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    move-wide/from16 v22, v0

    .end local v0    # "fallbackViewport":J
    .local v22, "fallbackViewport":J
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/semantics/SemanticsActions;->getPageLeft()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 1514
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsActions;->getPageRight()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v0

    if-eqz v0, :cond_3d

    goto :goto_25

    :cond_3d
    move/from16 v20, v18

    goto :goto_26

    :cond_3e
    :goto_25
    const/16 v20, 0x1

    .line 1512
    :goto_26
    nop

    .line 1515
    .local v20, "canPageHorizontally":Z
    if-eqz v20, :cond_41

    .line 1517
    cmpl-float v0, v15, v27

    if-lez v0, :cond_3f

    .line 1518
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsActions;->getPageRight()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/semantics/AccessibilityAction;

    goto :goto_27

    .line 1520
    :cond_3f
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsActions;->getPageLeft()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1517
    :goto_27
    nop

    .line 1516
    nop

    .line 1522
    .local v0, "horizontalPageAction":Landroidx/compose/ui/semantics/AccessibilityAction;
    if-eqz v0, :cond_40

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/AccessibilityAction;->getAction()Lkotlin/Function;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function0;

    if-eqz v1, :cond_40

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v18, v1

    goto :goto_28

    .end local v0    # "horizontalPageAction":Landroidx/compose/ui/semantics/AccessibilityAction;
    :cond_40
    goto :goto_28

    .line 1524
    :cond_41
    invoke-virtual {v12}, Landroidx/compose/ui/semantics/AccessibilityAction;->getAction()Lkotlin/Function;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function2;

    if-eqz v0, :cond_42

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-interface {v0, v1, v14}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move/from16 v18, v0

    .line 1515
    :cond_42
    :goto_28
    return v18

    .line 1511
    .end local v20    # "canPageHorizontally":Z
    .end local v22    # "fallbackViewport":J
    .local v0, "fallbackViewport":J
    :cond_43
    move-wide/from16 v22, v0

    .end local v0    # "fallbackViewport":J
    .restart local v22    # "fallbackViewport":J
    goto :goto_29

    .line 1496
    .end local v15    # "amountToScroll":F
    .end local v22    # "fallbackViewport":J
    .restart local v0    # "fallbackViewport":J
    :cond_44
    move-wide/from16 v22, v0

    const/16 v27, 0x0

    .line 1530
    .end local v0    # "fallbackViewport":J
    .restart local v22    # "fallbackViewport":J
    :goto_29
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->getVerticalScrollAxisRange()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/semantics/ScrollAxisRange;

    .line 1529
    nop

    .line 1531
    .local v0, "yScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    if-eqz v0, :cond_50

    if-eqz v10, :cond_50

    .line 1532
    if-eqz v11, :cond_45

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v1

    move/from16 v26, v2

    goto :goto_2a

    :cond_45
    move-wide/from16 v14, v22

    .local v14, "$v$c$androidx-compose-ui-geometry-Size$-this$0$iv":J
    const/4 v1, 0x0

    .line 3563
    .local v1, "$i$f$getHeight-impl":I
    move-wide/from16 v24, v14

    .local v24, "value$iv$iv":J
    const/16 v16, 0x0

    .line 3564
    .local v16, "$i$f$unpackFloat2":I
    const-wide v28, 0xffffffffL

    move/from16 v30, v1

    move/from16 v26, v2

    .end local v1    # "$i$f$getHeight-impl":I
    .end local v2    # "scrollLeft":Z
    .local v26, "scrollLeft":Z
    .local v30, "$i$f$getHeight-impl":I
    and-long v1, v24, v28

    long-to-int v1, v1

    .local v1, "bits$iv$iv$iv":I
    const/4 v2, 0x0

    .line 3565
    .local v2, "$i$f$floatFromBits":I
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    .line 3564
    .end local v1    # "bits$iv$iv$iv":I
    .end local v2    # "$i$f$floatFromBits":I
    nop

    .line 3563
    .end local v16    # "$i$f$unpackFloat2":I
    .end local v24    # "value$iv$iv":J
    nop

    .line 1532
    .end local v14    # "$v$c$androidx-compose-ui-geometry-Size$-this$0$iv":J
    .end local v30    # "$i$f$getHeight-impl":I
    :goto_2a
    nop

    .line 1534
    .local v1, "amountToScroll":F
    if-nez v4, :cond_46

    if-eqz v21, :cond_47

    .line 1535
    :cond_46
    neg-float v1, v1

    .line 1537
    :cond_47
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/ScrollAxisRange;->getReverseScrolling()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 1538
    neg-float v1, v1

    .line 1543
    :cond_48
    invoke-static {v0, v1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->performActionHelper$canScroll(Landroidx/compose/ui/semantics/ScrollAxisRange;F)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 1545
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v2

    sget-object v14, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v14}, Landroidx/compose/ui/semantics/SemanticsActions;->getPageUp()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v14

    invoke-virtual {v2, v14}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v2

    if-nez v2, :cond_4a

    .line 1546
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v2

    sget-object v14, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v14}, Landroidx/compose/ui/semantics/SemanticsActions;->getPageDown()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v14

    invoke-virtual {v2, v14}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v2

    if-eqz v2, :cond_49

    goto :goto_2b

    :cond_49
    move/from16 v2, v18

    goto :goto_2c

    :cond_4a
    :goto_2b
    const/4 v2, 0x1

    .line 1544
    :goto_2c
    nop

    .line 1547
    .local v2, "canPageVertically":Z
    if-eqz v2, :cond_4d

    .line 1549
    cmpl-float v14, v1, v27

    if-lez v14, :cond_4b

    .line 1550
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v14

    sget-object v15, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v15}, Landroidx/compose/ui/semantics/SemanticsActions;->getPageDown()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v15

    invoke-static {v14, v15}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/compose/ui/semantics/AccessibilityAction;

    goto :goto_2d

    .line 1552
    :cond_4b
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v14

    sget-object v15, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v15}, Landroidx/compose/ui/semantics/SemanticsActions;->getPageUp()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v15

    invoke-static {v14, v15}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1549
    :goto_2d
    nop

    .line 1548
    nop

    .line 1554
    .local v14, "verticalPageAction":Landroidx/compose/ui/semantics/AccessibilityAction;
    if-eqz v14, :cond_4c

    invoke-virtual {v14}, Landroidx/compose/ui/semantics/AccessibilityAction;->getAction()Lkotlin/Function;

    move-result-object v15

    check-cast v15, Lkotlin/jvm/functions/Function0;

    if-eqz v15, :cond_4c

    invoke-interface {v15}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    move-object/from16 v16, v0

    move/from16 v18, v15

    goto :goto_2e

    :cond_4c
    move-object/from16 v16, v0

    .end local v14    # "verticalPageAction":Landroidx/compose/ui/semantics/AccessibilityAction;
    goto :goto_2e

    .line 1556
    :cond_4d
    invoke-virtual {v12}, Landroidx/compose/ui/semantics/AccessibilityAction;->getAction()Lkotlin/Function;

    move-result-object v14

    check-cast v14, Lkotlin/jvm/functions/Function2;

    if-eqz v14, :cond_4e

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    move-object/from16 v16, v0

    .end local v0    # "yScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    .local v16, "yScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v14, v15, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move/from16 v18, v0

    goto :goto_2e

    .end local v16    # "yScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    .restart local v0    # "yScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    :cond_4e
    move-object/from16 v16, v0

    .line 1547
    .end local v0    # "yScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    .restart local v16    # "yScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    :goto_2e
    return v18

    .line 1543
    .end local v2    # "canPageVertically":Z
    .end local v16    # "yScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    .restart local v0    # "yScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    :cond_4f
    move-object/from16 v16, v0

    .end local v0    # "yScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    .restart local v16    # "yScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    goto :goto_2f

    .line 1531
    .end local v1    # "amountToScroll":F
    .end local v16    # "yScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    .end local v26    # "scrollLeft":Z
    .restart local v0    # "yScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    .local v2, "scrollLeft":Z
    :cond_50
    move-object/from16 v16, v0

    move/from16 v26, v2

    .line 1561
    .end local v0    # "yScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    .end local v2    # "scrollLeft":Z
    .restart local v16    # "yScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    .restart local v26    # "scrollLeft":Z
    :goto_2f
    return v18

    .line 1438
    .end local v3    # "scrollRight":Z
    .end local v4    # "scrollUp":Z
    .end local v5    # "scrollDown":Z
    .end local v6    # "scrollHorizontal":Z
    .end local v10    # "scrollVertical":Z
    .end local v12    # "scrollAction":Landroidx/compose/ui/semantics/AccessibilityAction;
    .end local v13    # "xScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    .end local v16    # "yScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    .end local v17    # "node":Landroidx/compose/ui/semantics/SemanticsNode;
    .end local v19    # "scrollForward":Z
    .end local v21    # "scrollBackward":Z
    .end local v22    # "fallbackViewport":J
    .end local v26    # "scrollLeft":Z
    .local v11, "node":Landroidx/compose/ui/semantics/SemanticsNode;
    :sswitch_13
    move/from16 v18, v10

    move-object/from16 v17, v11

    .end local v11    # "node":Landroidx/compose/ui/semantics/SemanticsNode;
    .restart local v17    # "node":Landroidx/compose/ui/semantics/SemanticsNode;
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsActions;->getOnLongClick()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz v0, :cond_51

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/AccessibilityAction;->getAction()Lkotlin/Function;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_51

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    goto :goto_30

    .line 1439
    :cond_51
    move/from16 v10, v18

    .line 1438
    :goto_30
    return v10

    .line 1433
    .end local v17    # "node":Landroidx/compose/ui/semantics/SemanticsNode;
    .restart local v11    # "node":Landroidx/compose/ui/semantics/SemanticsNode;
    :sswitch_14
    move/from16 v18, v10

    move-object/from16 v17, v11

    .end local v11    # "node":Landroidx/compose/ui/semantics/SemanticsNode;
    .restart local v17    # "node":Landroidx/compose/ui/semantics/SemanticsNode;
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    sget-object v2, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsActions;->getOnClick()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz v0, :cond_52

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/AccessibilityAction;->getAction()Lkotlin/Function;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_52

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Boolean;

    .line 1432
    :cond_52
    move-object v10, v1

    .line 1434
    .local v10, "result":Ljava/lang/Boolean;
    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v7

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEventForVirtualView$default(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)Z

    .line 1435
    if-eqz v10, :cond_53

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v18, v2

    :cond_53
    return v18

    .line 1610
    .end local v10    # "result":Ljava/lang/Boolean;
    .end local v17    # "node":Landroidx/compose/ui/semantics/SemanticsNode;
    .restart local v11    # "node":Landroidx/compose/ui/semantics/SemanticsNode;
    :sswitch_15
    move v1, v7

    move/from16 v18, v10

    move-object/from16 v17, v11

    .end local v11    # "node":Landroidx/compose/ui/semantics/SemanticsNode;
    .restart local v17    # "node":Landroidx/compose/ui/semantics/SemanticsNode;
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v2

    sget-object v3, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsProperties;->getFocused()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v3

    invoke-static {v2, v3}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v2

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 1611
    iget-object v2, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v2}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    move-result-object v2

    .line 1612
    nop

    .line 1613
    nop

    .line 1614
    nop

    .line 1615
    sget-object v3, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getExit-dhqQ-8s()I

    move-result v3

    .line 1611
    move/from16 v5, v18

    const/4 v4, 0x1

    invoke-interface {v2, v5, v4, v4, v3}, Landroidx/compose/ui/focus/FocusOwner;->clearFocus-I7lrPNg(ZZZI)Z

    .line 1617
    move v10, v4

    goto :goto_31

    .line 1619
    :cond_54
    const/4 v10, 0x0

    .line 1610
    :goto_31
    return v10

    .line 1605
    .end local v17    # "node":Landroidx/compose/ui/semantics/SemanticsNode;
    .restart local v11    # "node":Landroidx/compose/ui/semantics/SemanticsNode;
    :sswitch_16
    move v1, v7

    move-object/from16 v17, v11

    .end local v11    # "node":Landroidx/compose/ui/semantics/SemanticsNode;
    .restart local v17    # "node":Landroidx/compose/ui/semantics/SemanticsNode;
    iget-object v2, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v2}, Landroidx/compose/ui/platform/AndroidComposeView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_55

    iget-object v2, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v2}, Landroidx/compose/ui/platform/AndroidComposeView;->requestFocusFromTouch()Z

    .line 1607
    :cond_55
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v2

    sget-object v3, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsActions;->getRequestFocus()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v3

    invoke-static {v2, v3}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz v2, :cond_56

    invoke-virtual {v2}, Landroidx/compose/ui/semantics/AccessibilityAction;->getAction()Lkotlin/Function;

    move-result-object v2

    check-cast v2, Lkotlin/jvm/functions/Function0;

    if-eqz v2, :cond_56

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    goto :goto_32

    :cond_56
    const/4 v10, 0x0

    :goto_32
    return v10

    .line 1726
    .local v2, "label":Ljava/lang/CharSequence;
    :cond_57
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v3

    sget-object v4, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v4}, Landroidx/compose/ui/semantics/SemanticsActions;->getCustomActions()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v4

    invoke-static {v3, v4}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_58

    const/16 v18, 0x0

    return v18

    .line 1727
    .local v3, "customActions":Ljava/util/List;
    :cond_58
    move-object v4, v3

    .local v4, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 3566
    .local v5, "$i$f$fastForEach":I
    const/4 v6, 0x0

    .local v6, "index$iv":I
    move-object v7, v4

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v7

    :goto_33
    if-ge v6, v7, :cond_5a

    .line 3567
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 3568
    .local v10, "item$iv":Ljava/lang/Object;
    move-object v11, v10

    check-cast v11, Landroidx/compose/ui/semantics/CustomAccessibilityAction;

    .local v11, "customAction":Landroidx/compose/ui/semantics/CustomAccessibilityAction;
    const/4 v12, 0x0

    .line 1728
    .local v12, "$i$a$-fastForEach-AndroidComposeViewAccessibilityDelegateCompat$performActionHelper$1":I
    invoke-virtual {v11}, Landroidx/compose/ui/semantics/CustomAccessibilityAction;->getLabel()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_59

    .line 1729
    invoke-virtual {v11}, Landroidx/compose/ui/semantics/CustomAccessibilityAction;->getAction()Lkotlin/jvm/functions/Function0;

    move-result-object v7

    invoke-interface {v7}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    return v7

    .line 1731
    :cond_59
    nop

    .line 3568
    .end local v11    # "customAction":Landroidx/compose/ui/semantics/CustomAccessibilityAction;
    .end local v12    # "$i$a$-fastForEach-AndroidComposeViewAccessibilityDelegateCompat$performActionHelper$1":I
    nop

    .line 3566
    .end local v10    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v6, v6, 0x1

    goto :goto_33

    .line 3570
    .end local v6    # "index$iv":I
    :cond_5a
    nop

    .line 1732
    .end local v4    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v5    # "$i$f$fastForEach":I
    const/16 v18, 0x0

    return v18

    .line 1725
    .end local v2    # "label":Ljava/lang/CharSequence;
    .end local v3    # "customActions":Ljava/util/List;
    :cond_5b
    const/16 v18, 0x0

    :goto_34
    return v18

    .line 1361
    .end local v17    # "node":Landroidx/compose/ui/semantics/SemanticsNode;
    :cond_5c
    move v1, v7

    move/from16 v18, v10

    :goto_35
    return v18

    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_4
        0x80 -> :sswitch_3
        0x100 -> :sswitch_2
        0x200 -> :sswitch_2
        0x4000 -> :sswitch_1
        0x20000 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_16
        0x2 -> :sswitch_15
        0x10 -> :sswitch_14
        0x20 -> :sswitch_13
        0x1000 -> :sswitch_12
        0x2000 -> :sswitch_12
        0x8000 -> :sswitch_11
        0x10000 -> :sswitch_10
        0x40000 -> :sswitch_f
        0x80000 -> :sswitch_e
        0x100000 -> :sswitch_d
        0x200000 -> :sswitch_c
        0x1020036 -> :sswitch_b
        0x1020038 -> :sswitch_12
        0x1020039 -> :sswitch_12
        0x102003a -> :sswitch_12
        0x102003b -> :sswitch_12
        0x102003d -> :sswitch_a
        0x1020046 -> :sswitch_9
        0x1020047 -> :sswitch_8
        0x1020048 -> :sswitch_7
        0x1020049 -> :sswitch_6
        0x1020054 -> :sswitch_5
    .end sparse-switch
.end method

.method private static final performActionHelper$canScroll(Landroidx/compose/ui/semantics/ScrollAxisRange;F)Z
    .locals 2
    .param p0, "$this$performActionHelper_u24canScroll"    # Landroidx/compose/ui/semantics/ScrollAxisRange;
    .param p1, "amount"    # F

    .line 1482
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/semantics/ScrollAxisRange;->getValue()Lkotlin/jvm/functions/Function0;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    cmpl-float v1, v1, v0

    if-gtz v1, :cond_1

    :cond_0
    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Landroidx/compose/ui/semantics/ScrollAxisRange;->getValue()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/ui/semantics/ScrollAxisRange;->getMaxValue()Lkotlin/jvm/functions/Function0;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static final performActionHelper$scrollDelta(FF)F
    .locals 2
    .param p0, "a"    # F
    .param p1, "b"    # F

    .line 1708
    invoke-static {p0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    move v0, p0

    goto :goto_1

    :cond_1
    move v0, p1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method private final populateAccessibilityNodeInfoProperties(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Landroidx/compose/ui/semantics/SemanticsNode;)V
    .locals 36
    .param p1, "virtualViewId"    # I
    .param p2, "info"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .param p3, "semanticsNode"    # Landroidx/compose/ui/semantics/SemanticsNode;

    .line 591
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v4, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v4}, Landroidx/compose/ui/platform/AndroidComposeView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 594
    .local v4, "resources":Landroid/content/res/Resources;
    const-string v5, "android.view.View"

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 598
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v5

    sget-object v6, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v6}, Landroidx/compose/ui/semantics/SemanticsProperties;->getEditableText()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 599
    const-string v5, "android.widget.EditText"

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 601
    :cond_0
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v5

    sget-object v6, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v6}, Landroidx/compose/ui/semantics/SemanticsProperties;->getText()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 602
    const-string v5, "android.widget.TextView"

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 604
    :cond_1
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v5

    sget-object v6, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v6}, Landroidx/compose/ui/semantics/SemanticsProperties;->getRole()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v6

    invoke-static {v5, v6}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/semantics/Role;

    .line 605
    .local v5, "role":Landroidx/compose/ui/semantics/Role;
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Landroidx/compose/ui/semantics/Role;->unbox-impl()I

    move-result v6

    .local v6, "it":I
    const/4 v7, 0x0

    .line 606
    .local v7, "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$1":I
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->isFake$ui()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->getReplacedChildren$ui()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 607
    :cond_2
    sget-object v8, Landroidx/compose/ui/semantics/Role;->Companion:Landroidx/compose/ui/semantics/Role$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/semantics/Role$Companion;->getTab-o7Vup1c()I

    move-result v8

    invoke-virtual {v5}, Landroidx/compose/ui/semantics/Role;->unbox-impl()I

    move-result v9

    invoke-static {v9, v8}, Landroidx/compose/ui/semantics/Role;->equals-impl0(II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 608
    sget v8, Landroidx/compose/ui/R$string;->tab:I

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v2, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setRoleDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 609
    :cond_3
    sget-object v8, Landroidx/compose/ui/semantics/Role;->Companion:Landroidx/compose/ui/semantics/Role$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/semantics/Role$Companion;->getSwitch-o7Vup1c()I

    move-result v8

    invoke-virtual {v5}, Landroidx/compose/ui/semantics/Role;->unbox-impl()I

    move-result v9

    invoke-static {v9, v8}, Landroidx/compose/ui/semantics/Role;->equals-impl0(II)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 610
    sget v8, Landroidx/compose/ui/R$string;->switch_role:I

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v2, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setRoleDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 612
    :cond_4
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/Role;->unbox-impl()I

    move-result v8

    invoke-static {v8}, Landroidx/compose/ui/platform/SemanticsUtils_androidKt;->toLegacyClassName-V4PA4sw(I)Ljava/lang/String;

    move-result-object v8

    .line 615
    .local v8, "className":Ljava/lang/String;
    nop

    .line 616
    sget-object v9, Landroidx/compose/ui/semantics/Role;->Companion:Landroidx/compose/ui/semantics/Role$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/semantics/Role$Companion;->getImage-o7Vup1c()I

    move-result v9

    invoke-virtual {v5}, Landroidx/compose/ui/semantics/Role;->unbox-impl()I

    move-result v10

    invoke-static {v10, v9}, Landroidx/compose/ui/semantics/Role;->equals-impl0(II)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 617
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->isUnmergedLeafNode$ui()Z

    move-result v9

    if-nez v9, :cond_5

    .line 618
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->isMergingSemanticsOfDescendants()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 620
    :cond_5
    move-object v9, v8

    check-cast v9, Ljava/lang/CharSequence;

    invoke-virtual {v2, v9}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 624
    .end local v8    # "className":Ljava/lang/String;
    :cond_6
    :goto_0
    nop

    .end local v6    # "it":I
    .end local v7    # "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$1":I
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 605
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 626
    :cond_7
    iget-object v6, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v6}, Landroidx/compose/ui/platform/AndroidComposeView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v2, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setPackageName(Ljava/lang/CharSequence;)V

    .line 637
    invoke-static {v3}, Landroidx/compose/ui/semantics/SemanticsOwnerKt;->isImportantForAccessibility(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v6

    invoke-virtual {v2, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setImportantForAccessibility(Z)V

    .line 639
    invoke-direct {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->isRequestFromAccessibilityTool()Z

    move-result v6

    .line 640
    .local v6, "isRequestFromAccessibilityTool":Z
    const/4 v7, 0x0

    .line 641
    .local v7, "childDrawingOrder":I
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->getReplacedChildren$ui()Ljava/util/List;

    move-result-object v8

    .local v8, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v9, 0x0

    .line 3506
    .local v9, "$i$f$fastForEach":I
    const/4 v10, 0x0

    .local v10, "index$iv":I
    move-object v11, v8

    check-cast v11, Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->size()I

    move-result v11

    :goto_1
    const/4 v12, -0x1

    if-ge v10, v11, :cond_e

    .line 3507
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    .line 3508
    .local v15, "item$iv":Ljava/lang/Object;
    move-object/from16 v16, v15

    check-cast v16, Landroidx/compose/ui/semantics/SemanticsNode;

    .local v16, "child":Landroidx/compose/ui/semantics/SemanticsNode;
    const/16 v17, 0x0

    .line 642
    .local v17, "$i$a$-fastForEach-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$2":I
    invoke-direct {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getCurrentSemanticsNodes()Landroidx/collection/IntObjectMap;

    move-result-object v13

    .local v13, "this_$iv":Landroidx/collection/IntObjectMap;
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/semantics/SemanticsNode;->getId()I

    move-result v19

    .local v19, "key$iv":I
    move/from16 v20, v19

    .end local v19    # "key$iv":I
    .local v20, "key$iv":I
    const/16 v19, 0x0

    .line 3509
    .local v19, "$i$f$contains":I
    move/from16 v14, v20

    const/16 v21, 0x1

    .end local v20    # "key$iv":I
    .local v14, "key$iv":I
    invoke-virtual {v13, v14}, Landroidx/collection/IntObjectMap;->containsKey(I)Z

    move-result v13

    .line 642
    .end local v13    # "this_$iv":Landroidx/collection/IntObjectMap;
    .end local v14    # "key$iv":I
    .end local v19    # "$i$f$contains":I
    if-eqz v13, :cond_d

    .line 643
    iget-object v13, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v13}, Landroidx/compose/ui/platform/AndroidComposeView;->getAndroidViewsHandler$ui()Landroidx/compose/ui/platform/AndroidViewsHandler;

    move-result-object v13

    invoke-virtual {v13}, Landroidx/compose/ui/platform/AndroidViewsHandler;->getLayoutNodeToHolder()Ljava/util/HashMap;

    move-result-object v13

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/semantics/SemanticsNode;->getLayoutNode$ui()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    .line 645
    .local v13, "holder":Landroidx/compose/ui/viewinterop/AndroidViewHolder;
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/semantics/SemanticsNode;->getId()I

    move-result v14

    if-ne v14, v12, :cond_8

    .line 646
    move-object/from16 v19, v5

    goto :goto_6

    .line 648
    :cond_8
    if-eqz v13, :cond_9

    .line 649
    move-object v12, v13

    check-cast v12, Landroid/view/View;

    invoke-virtual {v2, v12}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addChild(Landroid/view/View;)V

    move-object/from16 v19, v5

    goto :goto_4

    .line 653
    :cond_9
    nop

    .line 655
    nop

    .line 654
    nop

    .line 652
    invoke-direct {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getCurrentSemanticsNodes()Landroidx/collection/IntObjectMap;

    move-result-object v12

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/semantics/SemanticsNode;->getId()I

    move-result v14

    invoke-virtual {v12, v14}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;

    .line 653
    if-eqz v12, :cond_a

    .line 652
    nop

    .line 653
    invoke-virtual {v12}, Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;->getSemanticsNode()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v12

    .line 654
    if-eqz v12, :cond_a

    .line 652
    nop

    .line 654
    invoke-virtual {v12}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v12

    .line 655
    if-eqz v12, :cond_a

    .line 652
    nop

    .line 655
    sget-object v14, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v14}, Landroidx/compose/ui/semantics/SemanticsProperties;->getIsSensitiveData()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v14

    invoke-static {v12, v14}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v12

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    .line 652
    invoke-static {v12, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    goto :goto_2

    .line 653
    :cond_a
    nop

    .line 652
    const/4 v12, 0x0

    .line 653
    :goto_2
    nop

    .line 651
    nop

    .line 658
    .local v12, "childHasSensitiveData":Z
    if-nez v6, :cond_c

    if-nez v12, :cond_b

    goto :goto_3

    :cond_b
    move-object/from16 v19, v5

    goto :goto_4

    .line 659
    :cond_c
    :goto_3
    iget-object v14, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    check-cast v14, Landroid/view/View;

    move-object/from16 v19, v5

    .end local v5    # "role":Landroidx/compose/ui/semantics/Role;
    .local v19, "role":Landroidx/compose/ui/semantics/Role;
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/semantics/SemanticsNode;->getId()I

    move-result v5

    invoke-virtual {v2, v14, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addChild(Landroid/view/View;I)V

    .line 663
    .end local v12    # "childHasSensitiveData":Z
    :goto_4
    iget-object v5, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->drawingOrder:Landroidx/collection/MutableIntIntMap;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/semantics/SemanticsNode;->getId()I

    move-result v12

    invoke-virtual {v5, v12, v7}, Landroidx/collection/MutableIntIntMap;->put(II)V

    .line 664
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 642
    .end local v13    # "holder":Landroidx/compose/ui/viewinterop/AndroidViewHolder;
    .end local v19    # "role":Landroidx/compose/ui/semantics/Role;
    .restart local v5    # "role":Landroidx/compose/ui/semantics/Role;
    :cond_d
    move-object/from16 v19, v5

    .line 666
    .end local v5    # "role":Landroidx/compose/ui/semantics/Role;
    .restart local v19    # "role":Landroidx/compose/ui/semantics/Role;
    :goto_5
    nop

    .line 3508
    .end local v16    # "child":Landroidx/compose/ui/semantics/SemanticsNode;
    .end local v17    # "$i$a$-fastForEach-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$2":I
    :goto_6
    nop

    .line 3506
    .end local v15    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v5, v19

    goto/16 :goto_1

    .end local v19    # "role":Landroidx/compose/ui/semantics/Role;
    .restart local v5    # "role":Landroidx/compose/ui/semantics/Role;
    :cond_e
    move-object/from16 v19, v5

    const/16 v21, 0x1

    .line 3510
    .end local v5    # "role":Landroidx/compose/ui/semantics/Role;
    .end local v10    # "index$iv":I
    .restart local v19    # "role":Landroidx/compose/ui/semantics/Role;
    nop

    .line 669
    .end local v8    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v9    # "$i$f$fastForEach":I
    iget v5, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityFocusedVirtualViewId:I

    if-ne v1, v5, :cond_f

    .line 670
    move/from16 v5, v21

    invoke-virtual {v2, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setAccessibilityFocused(Z)V

    .line 671
    sget-object v5, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_CLEAR_ACCESSIBILITY_FOCUS:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v2, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    goto :goto_7

    .line 673
    :cond_f
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setAccessibilityFocused(Z)V

    .line 674
    sget-object v5, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_ACCESSIBILITY_FOCUS:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v2, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 677
    :goto_7
    invoke-direct {v0, v3, v2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->setText(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 678
    invoke-direct {v0, v3, v2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->setContentInvalid(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 679
    invoke-static {v3, v4}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->access$getInfoStateDescriptionOrNull(Landroidx/compose/ui/semantics/SemanticsNode;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setStateDescription(Ljava/lang/CharSequence;)V

    .line 680
    invoke-static {v3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->access$getInfoIsCheckable(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v5

    invoke-virtual {v2, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCheckable(Z)V

    .line 683
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v5

    sget-object v8, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v8}, Landroidx/compose/ui/semantics/SemanticsProperties;->getToggleableState()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v8

    invoke-static {v5, v8}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/state/ToggleableState;

    .line 682
    nop

    .line 686
    .local v5, "toggleState":Landroidx/compose/ui/state/ToggleableState;
    if-eqz v5, :cond_12

    move-object v8, v5

    .local v8, "it":Landroidx/compose/ui/state/ToggleableState;
    const/4 v9, 0x0

    .line 687
    .local v9, "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$3":I
    sget-object v10, Landroidx/compose/ui/state/ToggleableState;->On:Landroidx/compose/ui/state/ToggleableState;

    if-ne v5, v10, :cond_10

    .line 688
    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setChecked(Z)V

    goto :goto_8

    .line 689
    :cond_10
    sget-object v10, Landroidx/compose/ui/state/ToggleableState;->Off:Landroidx/compose/ui/state/ToggleableState;

    if-ne v5, v10, :cond_11

    .line 690
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setChecked(Z)V

    .line 692
    :cond_11
    :goto_8
    nop

    .end local v8    # "it":Landroidx/compose/ui/state/ToggleableState;
    .end local v9    # "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$3":I
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 686
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 693
    :cond_12
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v8

    sget-object v9, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v9}, Landroidx/compose/ui/semantics/SemanticsProperties;->getSelected()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v9

    invoke-static {v8, v9}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    if-eqz v8, :cond_15

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .local v8, "it":Z
    const/4 v9, 0x0

    .line 694
    .local v9, "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$4":I
    sget-object v10, Landroidx/compose/ui/semantics/Role;->Companion:Landroidx/compose/ui/semantics/Role$Companion;

    invoke-virtual {v10}, Landroidx/compose/ui/semantics/Role$Companion;->getTab-o7Vup1c()I

    move-result v10

    if-nez v19, :cond_13

    const/4 v10, 0x0

    goto :goto_9

    :cond_13
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/semantics/Role;->unbox-impl()I

    move-result v11

    invoke-static {v11, v10}, Landroidx/compose/ui/semantics/Role;->equals-impl0(II)Z

    move-result v10

    :goto_9
    if-eqz v10, :cond_14

    .line 696
    invoke-virtual {v2, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setSelected(Z)V

    goto :goto_a

    .line 700
    :cond_14
    invoke-virtual {v2, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setChecked(Z)V

    .line 702
    :goto_a
    nop

    .end local v8    # "it":Z
    .end local v9    # "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$4":I
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 693
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 704
    :cond_15
    nop

    .line 705
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->isMergingSemanticsOfDescendants()Z

    move-result v8

    if-eqz v8, :cond_16

    .line 708
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->getReplacedChildren$ui()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_18

    .line 710
    :cond_16
    nop

    .line 713
    nop

    .line 711
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v8

    .line 712
    sget-object v10, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v10}, Landroidx/compose/ui/semantics/SemanticsProperties;->getContentDescription()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v10

    invoke-static {v8, v10}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 713
    if-eqz v8, :cond_17

    .line 711
    nop

    .line 713
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    goto :goto_b

    :cond_17
    const/4 v8, 0x0

    :goto_b
    check-cast v8, Ljava/lang/CharSequence;

    .line 710
    invoke-virtual {v2, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 718
    :cond_18
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v8

    sget-object v10, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v10}, Landroidx/compose/ui/semantics/SemanticsProperties;->getTestTag()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v10

    invoke-static {v8, v10}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 719
    .local v8, "testTag":Ljava/lang/String;
    if-eqz v8, :cond_1b

    .line 720
    const/4 v10, 0x0

    .line 721
    .local v10, "testTagsAsResourceId":Z
    move-object/from16 v11, p3

    .line 722
    .local v11, "current":Landroidx/compose/ui/semantics/SemanticsNode;
    :goto_c
    if-eqz v11, :cond_1a

    .line 723
    nop

    .line 724
    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v13

    sget-object v14, Landroidx/compose/ui/semantics/SemanticsPropertiesAndroid;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsPropertiesAndroid;

    invoke-virtual {v14}, Landroidx/compose/ui/semantics/SemanticsPropertiesAndroid;->getTestTagsAsResourceId()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v13

    if-eqz v13, :cond_19

    .line 727
    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v13

    sget-object v14, Landroidx/compose/ui/semantics/SemanticsPropertiesAndroid;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsPropertiesAndroid;

    invoke-virtual {v14}, Landroidx/compose/ui/semantics/SemanticsPropertiesAndroid;->getTestTagsAsResourceId()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->get(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    .line 726
    move v10, v13

    .line 728
    goto :goto_d

    .line 730
    :cond_19
    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsNode;->getParent()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v11

    goto :goto_c

    .line 734
    :cond_1a
    :goto_d
    if-eqz v10, :cond_1b

    .line 735
    invoke-virtual {v2, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setViewIdResourceName(Ljava/lang/String;)V

    .line 739
    .end local v10    # "testTagsAsResourceId":Z
    .end local v11    # "current":Landroidx/compose/ui/semantics/SemanticsNode;
    :cond_1b
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v10

    sget-object v11, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsProperties;->getHeading()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v11

    invoke-static {v10, v11}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lkotlin/Unit;

    if-eqz v10, :cond_1c

    .local v10, "it":Lkotlin/Unit;
    const/4 v11, 0x0

    .line 740
    .local v11, "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$5":I
    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setHeading(Z)V

    .line 741
    nop

    .end local v10    # "it":Lkotlin/Unit;
    .end local v11    # "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$5":I
    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 739
    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 744
    :cond_1c
    if-eq v1, v12, :cond_1e

    .line 745
    iget-object v10, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->drawingOrder:Landroidx/collection/MutableIntIntMap;

    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->getId()I

    move-result v11

    invoke-virtual {v10, v11, v12}, Landroidx/collection/MutableIntIntMap;->getOrDefault(II)I

    move-result v10

    .line 746
    .local v10, "drawingOrderForNode":I
    if-eq v10, v12, :cond_1d

    .line 747
    invoke-virtual {v2, v10}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setDrawingOrder(I)V

    sget-object v11, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_e

    .line 750
    :cond_1d
    nop

    .line 751
    nop

    .line 749
    const-string v11, "AccessibilityDelegate"

    const-string v13, "Drawing order is not available, was AccessibilityNodeInfo requested for a child node before its parent?"

    invoke-static {v11, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    :goto_e
    nop

    .line 757
    .end local v10    # "drawingOrderForNode":I
    :cond_1e
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v10

    sget-object v11, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsProperties;->getPassword()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v10

    invoke-virtual {v2, v10}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setPassword(Z)V

    .line 758
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v10

    sget-object v11, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsProperties;->getIsEditable()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v10

    invoke-virtual {v2, v10}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setEditable(Z)V

    .line 759
    nop

    .line 760
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v10

    sget-object v11, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsProperties;->getMaxTextLength()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v11

    invoke-static {v10, v11}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    if-eqz v10, :cond_1f

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    goto :goto_f

    :cond_1f
    move v10, v12

    .line 759
    :goto_f
    invoke-virtual {v2, v10}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setMaxTextLength(I)V

    .line 761
    invoke-static {v3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->access$enabled(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v10

    invoke-virtual {v2, v10}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setEnabled(Z)V

    .line 762
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v10

    sget-object v11, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsProperties;->getFocused()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v10

    invoke-virtual {v2, v10}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setFocusable(Z)V

    .line 763
    invoke-virtual {v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isFocusable()Z

    move-result v10

    const/4 v11, 0x2

    if-eqz v10, :cond_21

    .line 764
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v10

    sget-object v13, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v13}, Landroidx/compose/ui/semantics/SemanticsProperties;->getFocused()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->get(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-virtual {v2, v10}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setFocused(Z)V

    .line 765
    invoke-virtual {v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isFocused()Z

    move-result v10

    if-eqz v10, :cond_20

    .line 766
    invoke-virtual {v2, v11}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 767
    iput v1, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->focusedVirtualViewId:I

    const/4 v13, 0x1

    goto :goto_10

    .line 769
    :cond_20
    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    goto :goto_10

    .line 763
    :cond_21
    const/4 v13, 0x1

    .line 774
    :goto_10
    invoke-static {v3}, Landroidx/compose/ui/semantics/SemanticsOwnerKt;->isHidden(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v10

    xor-int/2addr v10, v13

    invoke-virtual {v2, v10}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setVisibleToUser(Z)V

    .line 776
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v10

    sget-object v13, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v13}, Landroidx/compose/ui/semantics/SemanticsProperties;->getLiveRegion()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v13

    invoke-static {v10, v13}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/ui/semantics/LiveRegionMode;

    if-eqz v10, :cond_24

    invoke-virtual {v10}, Landroidx/compose/ui/semantics/LiveRegionMode;->unbox-impl()I

    move-result v10

    .local v10, "it":I
    const/4 v13, 0x0

    .line 777
    .local v13, "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$6":I
    nop

    .line 778
    nop

    .line 779
    sget-object v14, Landroidx/compose/ui/semantics/LiveRegionMode;->Companion:Landroidx/compose/ui/semantics/LiveRegionMode$Companion;

    invoke-virtual {v14}, Landroidx/compose/ui/semantics/LiveRegionMode$Companion;->getPolite-0phEisY()I

    move-result v14

    invoke-static {v10, v14}, Landroidx/compose/ui/semantics/LiveRegionMode;->equals-impl0(II)Z

    move-result v14

    if-eqz v14, :cond_22

    const/4 v14, 0x1

    goto :goto_11

    .line 780
    :cond_22
    sget-object v14, Landroidx/compose/ui/semantics/LiveRegionMode;->Companion:Landroidx/compose/ui/semantics/LiveRegionMode$Companion;

    invoke-virtual {v14}, Landroidx/compose/ui/semantics/LiveRegionMode$Companion;->getAssertive-0phEisY()I

    move-result v14

    invoke-static {v10, v14}, Landroidx/compose/ui/semantics/LiveRegionMode;->equals-impl0(II)Z

    move-result v14

    if-eqz v14, :cond_23

    move v14, v11

    goto :goto_11

    .line 781
    :cond_23
    const/4 v14, 0x1

    .line 777
    :goto_11
    invoke-virtual {v2, v14}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setLiveRegion(I)V

    .line 783
    nop

    .end local v10    # "it":I
    .end local v13    # "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$6":I
    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 776
    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 784
    :cond_24
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    .line 785
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v10

    sget-object v13, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v13}, Landroidx/compose/ui/semantics/SemanticsActions;->getOnClick()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v13

    invoke-static {v10, v13}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/ui/semantics/AccessibilityAction;

    const/16 v13, 0x10

    if-eqz v10, :cond_2c

    .local v10, "it":Landroidx/compose/ui/semantics/AccessibilityAction;
    const/4 v14, 0x0

    .line 789
    .local v14, "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$7":I
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v15

    sget-object v16, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    move/from16 v17, v11

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/semantics/SemanticsProperties;->getSelected()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v11

    invoke-static {v15, v11}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v11

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-static {v11, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    .line 788
    nop

    .line 790
    .local v11, "isSelected":Z
    sget-object v15, Landroidx/compose/ui/semantics/Role;->Companion:Landroidx/compose/ui/semantics/Role$Companion;

    invoke-virtual {v15}, Landroidx/compose/ui/semantics/Role$Companion;->getTab-o7Vup1c()I

    move-result v15

    if-nez v19, :cond_25

    const/4 v12, 0x0

    goto :goto_12

    :cond_25
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/semantics/Role;->unbox-impl()I

    move-result v12

    invoke-static {v12, v15}, Landroidx/compose/ui/semantics/Role;->equals-impl0(II)Z

    move-result v12

    :goto_12
    if-nez v12, :cond_28

    sget-object v12, Landroidx/compose/ui/semantics/Role;->Companion:Landroidx/compose/ui/semantics/Role$Companion;

    invoke-virtual {v12}, Landroidx/compose/ui/semantics/Role$Companion;->getRadioButton-o7Vup1c()I

    move-result v12

    if-nez v19, :cond_26

    const/4 v12, 0x0

    goto :goto_13

    :cond_26
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/semantics/Role;->unbox-impl()I

    move-result v15

    invoke-static {v15, v12}, Landroidx/compose/ui/semantics/Role;->equals-impl0(II)Z

    move-result v12

    :goto_13
    if-eqz v12, :cond_27

    goto :goto_14

    :cond_27
    const/4 v12, 0x0

    goto :goto_15

    :cond_28
    :goto_14
    const/4 v12, 0x1

    .line 791
    .local v12, "isRadioButtonOrTab":Z
    :goto_15
    if-eqz v12, :cond_2a

    if-eqz v12, :cond_29

    if-nez v11, :cond_29

    goto :goto_16

    :cond_29
    const/4 v15, 0x0

    goto :goto_17

    :cond_2a
    :goto_16
    const/4 v15, 0x1

    :goto_17
    invoke-virtual {v2, v15}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    .line 792
    invoke-static {v3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->access$enabled(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v15

    if-eqz v15, :cond_2b

    invoke-virtual {v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isClickable()Z

    move-result v15

    if-eqz v15, :cond_2b

    .line 793
    nop

    .line 794
    new-instance v15, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v10}, Landroidx/compose/ui/semantics/AccessibilityAction;->getLabel()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v9, v20

    check-cast v9, Ljava/lang/CharSequence;

    invoke-direct {v15, v13, v9}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    .line 793
    invoke-virtual {v2, v15}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 797
    :cond_2b
    nop

    .end local v10    # "it":Landroidx/compose/ui/semantics/AccessibilityAction;
    .end local v11    # "isSelected":Z
    .end local v12    # "isRadioButtonOrTab":Z
    .end local v14    # "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$7":I
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 785
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_18

    :cond_2c
    move/from16 v17, v11

    .line 798
    :goto_18
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setLongClickable(Z)V

    .line 799
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v9

    sget-object v10, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v10}, Landroidx/compose/ui/semantics/SemanticsActions;->getOnLongClick()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v10

    invoke-static {v9, v10}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz v9, :cond_2e

    .local v9, "it":Landroidx/compose/ui/semantics/AccessibilityAction;
    const/4 v10, 0x0

    .line 800
    .local v10, "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$8":I
    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setLongClickable(Z)V

    .line 801
    invoke-static {v3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->access$enabled(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v11

    if-eqz v11, :cond_2d

    .line 802
    nop

    .line 803
    new-instance v11, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 804
    nop

    .line 805
    invoke-virtual {v9}, Landroidx/compose/ui/semantics/AccessibilityAction;->getLabel()Ljava/lang/String;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    .line 803
    const/16 v14, 0x20

    invoke-direct {v11, v14, v12}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    .line 802
    invoke-virtual {v2, v11}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 809
    :cond_2d
    nop

    .end local v9    # "it":Landroidx/compose/ui/semantics/AccessibilityAction;
    .end local v10    # "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$8":I
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 799
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 812
    :cond_2e
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v9

    sget-object v10, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v10}, Landroidx/compose/ui/semantics/SemanticsActions;->getCopyText()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v10

    invoke-static {v9, v10}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz v9, :cond_2f

    .restart local v9    # "it":Landroidx/compose/ui/semantics/AccessibilityAction;
    const/4 v10, 0x0

    .line 813
    .local v10, "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$9":I
    nop

    .line 814
    new-instance v11, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v9}, Landroidx/compose/ui/semantics/AccessibilityAction;->getLabel()Ljava/lang/String;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    const/16 v14, 0x4000

    invoke-direct {v11, v14, v12}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    .line 813
    invoke-virtual {v2, v11}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 816
    nop

    .end local v9    # "it":Landroidx/compose/ui/semantics/AccessibilityAction;
    .end local v10    # "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$9":I
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 812
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 817
    :cond_2f
    invoke-static {v3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->access$enabled(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v9

    if-eqz v9, :cond_34

    .line 818
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v9

    sget-object v10, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v10}, Landroidx/compose/ui/semantics/SemanticsActions;->getSetText()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v10

    invoke-static {v9, v10}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz v9, :cond_30

    .restart local v9    # "it":Landroidx/compose/ui/semantics/AccessibilityAction;
    const/4 v10, 0x0

    .line 819
    .local v10, "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$10":I
    nop

    .line 820
    new-instance v11, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v9}, Landroidx/compose/ui/semantics/AccessibilityAction;->getLabel()Ljava/lang/String;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    const/high16 v14, 0x200000

    invoke-direct {v11, v14, v12}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    .line 819
    invoke-virtual {v2, v11}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 822
    nop

    .end local v9    # "it":Landroidx/compose/ui/semantics/AccessibilityAction;
    .end local v10    # "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$10":I
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 818
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 824
    :cond_30
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v9

    sget-object v10, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v10}, Landroidx/compose/ui/semantics/SemanticsActions;->getOnImeAction()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v10

    invoke-static {v9, v10}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz v9, :cond_31

    .restart local v9    # "it":Landroidx/compose/ui/semantics/AccessibilityAction;
    const/4 v10, 0x0

    .line 825
    .local v10, "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$11":I
    nop

    .line 826
    new-instance v11, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v9}, Landroidx/compose/ui/semantics/AccessibilityAction;->getLabel()Ljava/lang/String;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    const v14, 0x1020054

    invoke-direct {v11, v14, v12}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    .line 825
    invoke-virtual {v2, v11}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 828
    nop

    .end local v9    # "it":Landroidx/compose/ui/semantics/AccessibilityAction;
    .end local v10    # "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$11":I
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 824
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 831
    :cond_31
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v9

    sget-object v10, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v10}, Landroidx/compose/ui/semantics/SemanticsActions;->getCutText()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v10

    invoke-static {v9, v10}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz v9, :cond_32

    .restart local v9    # "it":Landroidx/compose/ui/semantics/AccessibilityAction;
    const/4 v10, 0x0

    .line 832
    .local v10, "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$12":I
    nop

    .line 833
    new-instance v11, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v9}, Landroidx/compose/ui/semantics/AccessibilityAction;->getLabel()Ljava/lang/String;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    const/high16 v14, 0x10000

    invoke-direct {v11, v14, v12}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    .line 832
    invoke-virtual {v2, v11}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 835
    nop

    .end local v9    # "it":Landroidx/compose/ui/semantics/AccessibilityAction;
    .end local v10    # "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$12":I
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 831
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 839
    :cond_32
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v9

    sget-object v10, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v10}, Landroidx/compose/ui/semantics/SemanticsActions;->getPasteText()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v10

    invoke-static {v9, v10}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz v9, :cond_34

    .restart local v9    # "it":Landroidx/compose/ui/semantics/AccessibilityAction;
    const/4 v10, 0x0

    .line 840
    .local v10, "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$13":I
    invoke-virtual {v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isFocused()Z

    move-result v11

    if-eqz v11, :cond_33

    iget-object v11, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v11}, Landroidx/compose/ui/platform/AndroidComposeView;->getClipboardManager()Landroidx/compose/ui/platform/AndroidClipboardManager;

    move-result-object v11

    invoke-virtual {v11}, Landroidx/compose/ui/platform/AndroidClipboardManager;->hasText()Z

    move-result v11

    if-eqz v11, :cond_33

    .line 841
    nop

    .line 842
    new-instance v11, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 843
    nop

    .line 844
    invoke-virtual {v9}, Landroidx/compose/ui/semantics/AccessibilityAction;->getLabel()Ljava/lang/String;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    .line 842
    const v14, 0x8000

    invoke-direct {v11, v14, v12}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    .line 841
    invoke-virtual {v2, v11}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 848
    :cond_33
    nop

    .end local v9    # "it":Landroidx/compose/ui/semantics/AccessibilityAction;
    .end local v10    # "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$13":I
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 839
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 851
    :cond_34
    invoke-direct {v0, v3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getIterableTextForAccessibility(Landroidx/compose/ui/semantics/SemanticsNode;)Ljava/lang/String;

    move-result-object v9

    .line 852
    .local v9, "text":Ljava/lang/String;
    move-object v10, v9

    check-cast v10, Ljava/lang/CharSequence;

    if-eqz v10, :cond_36

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-nez v10, :cond_35

    goto :goto_19

    :cond_35
    const/4 v10, 0x0

    goto :goto_1a

    :cond_36
    :goto_19
    const/4 v10, 0x1

    :goto_1a
    if-nez v10, :cond_3a

    .line 853
    nop

    .line 854
    invoke-direct {v0, v3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getAccessibilitySelectionStart(Landroidx/compose/ui/semantics/SemanticsNode;)I

    move-result v10

    .line 855
    invoke-direct {v0, v3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getAccessibilitySelectionEnd(Landroidx/compose/ui/semantics/SemanticsNode;)I

    move-result v11

    .line 853
    invoke-virtual {v2, v10, v11}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setTextSelection(II)V

    .line 858
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v10

    sget-object v11, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsActions;->getSetSelection()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v11

    invoke-static {v10, v11}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 857
    nop

    .line 861
    .local v10, "setSelectionAction":Landroidx/compose/ui/semantics/AccessibilityAction;
    nop

    .line 862
    new-instance v11, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 863
    nop

    .line 864
    if-eqz v10, :cond_37

    invoke-virtual {v10}, Landroidx/compose/ui/semantics/AccessibilityAction;->getLabel()Ljava/lang/String;

    move-result-object v12

    goto :goto_1b

    :cond_37
    const/4 v12, 0x0

    :goto_1b
    check-cast v12, Ljava/lang/CharSequence;

    .line 862
    const/high16 v14, 0x20000

    invoke-direct {v11, v14, v12}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    .line 861
    invoke-virtual {v2, v11}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 867
    const/16 v11, 0x100

    invoke-virtual {v2, v11}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 868
    const/16 v11, 0x200

    invoke-virtual {v2, v11}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 869
    nop

    .line 870
    nop

    .line 869
    const/16 v11, 0xb

    invoke-virtual {v2, v11}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setMovementGranularities(I)V

    .line 875
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v11

    sget-object v12, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v12}, Landroidx/compose/ui/semantics/SemanticsProperties;->getContentDescription()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v12

    invoke-static {v11, v12}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 874
    nop

    .line 876
    .local v11, "contentDescription":Ljava/util/List;
    nop

    .line 877
    move-object v12, v11

    check-cast v12, Ljava/util/Collection;

    if-eqz v12, :cond_39

    invoke-interface {v12}, Ljava/util/Collection;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_38

    goto :goto_1c

    :cond_38
    const/4 v12, 0x0

    goto :goto_1d

    :cond_39
    :goto_1c
    const/4 v12, 0x1

    :goto_1d
    if-eqz v12, :cond_3a

    .line 878
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v12

    sget-object v14, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v14}, Landroidx/compose/ui/semantics/SemanticsActions;->getGetTextLayoutResult()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v12

    if-eqz v12, :cond_3a

    .line 881
    invoke-static {v3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->access$excludeLineAndPageGranularities(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v12

    if-nez v12, :cond_3a

    .line 883
    nop

    .line 884
    invoke-virtual {v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getMovementGranularities()I

    move-result v12

    .line 885
    nop

    .line 884
    or-int/lit8 v12, v12, 0x4

    .line 886
    nop

    .line 884
    or-int/2addr v12, v13

    .line 883
    invoke-virtual {v2, v12}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setMovementGranularities(I)V

    .line 889
    .end local v10    # "setSelectionAction":Landroidx/compose/ui/semantics/AccessibilityAction;
    .end local v11    # "contentDescription":Ljava/util/List;
    :cond_3a
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x1a

    if-lt v10, v11, :cond_49

    .line 890
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    check-cast v10, Ljava/util/List;

    .line 891
    .local v10, "extraDataKeys":Ljava/util/List;
    const-string v11, "androidx.compose.ui.semantics.id"

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 892
    nop

    .line 893
    invoke-virtual {v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    if-eqz v11, :cond_3c

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-nez v11, :cond_3b

    goto :goto_1e

    :cond_3b
    const/4 v11, 0x0

    goto :goto_1f

    :cond_3c
    :goto_1e
    const/4 v11, 0x1

    :goto_1f
    if-nez v11, :cond_3d

    .line 894
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v11

    sget-object v12, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v12}, Landroidx/compose/ui/semantics/SemanticsActions;->getGetTextLayoutResult()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v11

    if-eqz v11, :cond_3d

    .line 896
    const-string v11, "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_KEY"

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 898
    :cond_3d
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v11

    sget-object v12, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v12}, Landroidx/compose/ui/semantics/SemanticsProperties;->getTestTag()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v11

    if-eqz v11, :cond_3e

    .line 899
    const-string v11, "androidx.compose.ui.semantics.testTag"

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 901
    :cond_3e
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v11

    sget-object v12, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v12}, Landroidx/compose/ui/semantics/SemanticsProperties;->getShape()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v11

    if-eqz v11, :cond_3f

    .line 902
    const-string v11, "androidx.compose.ui.semantics.shapeType"

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 903
    const-string v11, "androidx.compose.ui.semantics.shapeRect"

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 904
    const-string v11, "androidx.compose.ui.semantics.shapeCorners"

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 905
    const-string v11, "androidx.compose.ui.semantics.shapeRegion"

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 908
    :cond_3f
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v11

    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->getAccessibilityExtraKeys$ui()Landroidx/collection/ScatterSet;

    move-result-object v11

    if-eqz v11, :cond_48

    .local v11, "this_$iv":Landroidx/collection/ScatterSet;
    const/4 v12, 0x0

    .line 3511
    .local v12, "$i$f$forEach":I
    nop

    .line 3512
    iget-object v13, v11, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 3513
    .local v13, "elements$iv":[Ljava/lang/Object;
    move-object v14, v11

    .local v14, "this_$iv$iv":Landroidx/collection/ScatterSet;
    const/4 v15, 0x0

    .line 3514
    .local v15, "$i$f$forEachIndex":I
    nop

    .line 3515
    move-object/from16 v20, v5

    .end local v5    # "toggleState":Landroidx/compose/ui/state/ToggleableState;
    .local v20, "toggleState":Landroidx/compose/ui/state/ToggleableState;
    iget-object v5, v14, Landroidx/collection/ScatterSet;->metadata:[J

    .line 3516
    .local v5, "m$iv$iv":[J
    move/from16 v22, v6

    .end local v6    # "isRequestFromAccessibilityTool":Z
    .local v22, "isRequestFromAccessibilityTool":Z
    array-length v6, v5

    add-int/lit8 v6, v6, -0x2

    .line 3518
    .local v6, "lastIndex$iv$iv":I
    move-object/from16 v17, v5

    .end local v5    # "m$iv$iv":[J
    .local v17, "m$iv$iv":[J
    const/4 v5, 0x0

    .local v5, "i$iv$iv":I
    if-gt v5, v6, :cond_45

    .line 3519
    :goto_20
    aget-wide v23, v17, v5

    .line 3520
    .local v23, "slot$iv$iv":J
    move-wide/from16 v25, v23

    .local v25, "$this$maskEmptyOrDeleted$iv$iv$iv":J
    const/16 v27, 0x0

    .line 3521
    .local v27, "$i$f$maskEmptyOrDeleted":I
    move/from16 v28, v7

    move-object/from16 v29, v8

    move-wide/from16 v7, v25

    move-object/from16 v25, v11

    move/from16 v26, v12

    .end local v8    # "testTag":Ljava/lang/String;
    .end local v11    # "this_$iv":Landroidx/collection/ScatterSet;
    .end local v12    # "$i$f$forEach":I
    .local v7, "$this$maskEmptyOrDeleted$iv$iv$iv":J
    .local v25, "this_$iv":Landroidx/collection/ScatterSet;
    .local v26, "$i$f$forEach":I
    .local v28, "childDrawingOrder":I
    .local v29, "testTag":Ljava/lang/String;
    not-long v11, v7

    const/16 v30, 0x7

    shl-long v11, v11, v30

    and-long/2addr v11, v7

    const-wide v30, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v7, v11, v30

    .line 3520
    .end local v7    # "$this$maskEmptyOrDeleted$iv$iv$iv":J
    .end local v27    # "$i$f$maskEmptyOrDeleted":I
    cmp-long v7, v7, v30

    if-eqz v7, :cond_44

    .line 3522
    sub-int v7, v5, v6

    not-int v7, v7

    ushr-int/lit8 v7, v7, 0x1f

    const/16 v8, 0x8

    rsub-int/lit8 v7, v7, 0x8

    .line 3523
    .local v7, "bitCount$iv$iv":I
    const/4 v11, 0x0

    .local v11, "j$iv$iv":I
    :goto_21
    if-ge v11, v7, :cond_43

    .line 3524
    const-wide/16 v30, 0xff

    and-long v30, v23, v30

    .local v30, "value$iv$iv$iv":J
    const/4 v12, 0x0

    .line 3525
    .local v12, "$i$f$isFull":I
    const-wide/16 v32, 0x80

    cmp-long v27, v30, v32

    if-gez v27, :cond_40

    const/4 v12, 0x1

    goto :goto_22

    :cond_40
    const/4 v12, 0x0

    .line 3524
    .end local v12    # "$i$f$isFull":I
    .end local v30    # "value$iv$iv$iv":J
    :goto_22
    if-eqz v12, :cond_42

    .line 3526
    shl-int/lit8 v12, v5, 0x3

    add-int/2addr v12, v11

    .line 3527
    .local v12, "index$iv$iv":I
    move/from16 v27, v12

    .local v27, "index$iv":I
    const/16 v30, 0x0

    .line 3513
    .local v30, "$i$a$-forEachIndex-ScatterSet$forEach$2$iv":I
    aget-object v31, v13, v27

    check-cast v31, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .local v31, "key":Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    const/16 v32, 0x0

    .line 909
    .local v32, "$i$a$-forEach-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$14":I
    invoke-virtual/range {v31 .. v31}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;->getAccessibilityExtraKey$ui()Ljava/lang/String;

    move-result-object v33

    if-eqz v33, :cond_41

    move-object/from16 v34, v33

    .line 3528
    .local v34, "it":Ljava/lang/String;
    const/16 v33, 0x0

    .line 909
    .local v33, "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$14$1":I
    move/from16 v35, v8

    move-object/from16 v8, v34

    .end local v34    # "it":Ljava/lang/String;
    .local v8, "it":Ljava/lang/String;
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .end local v8    # "it":Ljava/lang/String;
    .end local v33    # "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$14$1":I
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_23

    :cond_41
    move/from16 v35, v8

    .line 910
    :goto_23
    nop

    .line 3513
    .end local v31    # "key":Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .end local v32    # "$i$a$-forEach-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$14":I
    nop

    .line 3527
    .end local v27    # "index$iv":I
    .end local v30    # "$i$a$-forEachIndex-ScatterSet$forEach$2$iv":I
    goto :goto_24

    .line 3524
    .end local v12    # "index$iv$iv":I
    :cond_42
    move/from16 v35, v8

    .line 3529
    :goto_24
    shr-long v23, v23, v35

    .line 3523
    add-int/lit8 v11, v11, 0x1

    move/from16 v8, v35

    goto :goto_21

    :cond_43
    move/from16 v35, v8

    .line 3531
    .end local v11    # "j$iv$iv":I
    if-ne v7, v8, :cond_47

    .line 3518
    .end local v7    # "bitCount$iv$iv":I
    .end local v23    # "slot$iv$iv":J
    :cond_44
    if-eq v5, v6, :cond_46

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v11, v25

    move/from16 v12, v26

    move/from16 v7, v28

    move-object/from16 v8, v29

    goto :goto_20

    .end local v25    # "this_$iv":Landroidx/collection/ScatterSet;
    .end local v26    # "$i$f$forEach":I
    .end local v28    # "childDrawingOrder":I
    .end local v29    # "testTag":Ljava/lang/String;
    .local v7, "childDrawingOrder":I
    .local v8, "testTag":Ljava/lang/String;
    .local v11, "this_$iv":Landroidx/collection/ScatterSet;
    .local v12, "$i$f$forEach":I
    :cond_45
    move/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v25, v11

    move/from16 v26, v12

    .line 3534
    .end local v5    # "i$iv$iv":I
    .end local v7    # "childDrawingOrder":I
    .end local v8    # "testTag":Ljava/lang/String;
    .end local v11    # "this_$iv":Landroidx/collection/ScatterSet;
    .end local v12    # "$i$f$forEach":I
    .restart local v25    # "this_$iv":Landroidx/collection/ScatterSet;
    .restart local v26    # "$i$f$forEach":I
    .restart local v28    # "childDrawingOrder":I
    .restart local v29    # "testTag":Ljava/lang/String;
    :cond_46
    nop

    .line 3535
    .end local v6    # "lastIndex$iv$iv":I
    .end local v14    # "this_$iv$iv":Landroidx/collection/ScatterSet;
    .end local v15    # "$i$f$forEachIndex":I
    .end local v17    # "m$iv$iv":[J
    :cond_47
    nop

    .end local v13    # "elements$iv":[Ljava/lang/Object;
    .end local v25    # "this_$iv":Landroidx/collection/ScatterSet;
    .end local v26    # "$i$f$forEach":I
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_25

    .line 908
    .end local v20    # "toggleState":Landroidx/compose/ui/state/ToggleableState;
    .end local v22    # "isRequestFromAccessibilityTool":Z
    .end local v28    # "childDrawingOrder":I
    .end local v29    # "testTag":Ljava/lang/String;
    .local v5, "toggleState":Landroidx/compose/ui/state/ToggleableState;
    .local v6, "isRequestFromAccessibilityTool":Z
    .restart local v7    # "childDrawingOrder":I
    .restart local v8    # "testTag":Ljava/lang/String;
    :cond_48
    move-object/from16 v20, v5

    move/from16 v22, v6

    move/from16 v28, v7

    move-object/from16 v29, v8

    .line 912
    .end local v5    # "toggleState":Landroidx/compose/ui/state/ToggleableState;
    .end local v6    # "isRequestFromAccessibilityTool":Z
    .end local v7    # "childDrawingOrder":I
    .end local v8    # "testTag":Ljava/lang/String;
    .restart local v20    # "toggleState":Landroidx/compose/ui/state/ToggleableState;
    .restart local v22    # "isRequestFromAccessibilityTool":Z
    .restart local v28    # "childDrawingOrder":I
    .restart local v29    # "testTag":Ljava/lang/String;
    :goto_25
    invoke-virtual {v2, v10}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setAvailableExtraData(Ljava/util/List;)V

    goto :goto_26

    .line 889
    .end local v10    # "extraDataKeys":Ljava/util/List;
    .end local v20    # "toggleState":Landroidx/compose/ui/state/ToggleableState;
    .end local v22    # "isRequestFromAccessibilityTool":Z
    .end local v28    # "childDrawingOrder":I
    .end local v29    # "testTag":Ljava/lang/String;
    .restart local v5    # "toggleState":Landroidx/compose/ui/state/ToggleableState;
    .restart local v6    # "isRequestFromAccessibilityTool":Z
    .restart local v7    # "childDrawingOrder":I
    .restart local v8    # "testTag":Ljava/lang/String;
    :cond_49
    move-object/from16 v20, v5

    move/from16 v22, v6

    move/from16 v28, v7

    move-object/from16 v29, v8

    .line 916
    .end local v5    # "toggleState":Landroidx/compose/ui/state/ToggleableState;
    .end local v6    # "isRequestFromAccessibilityTool":Z
    .end local v7    # "childDrawingOrder":I
    .end local v8    # "testTag":Ljava/lang/String;
    .restart local v20    # "toggleState":Landroidx/compose/ui/state/ToggleableState;
    .restart local v22    # "isRequestFromAccessibilityTool":Z
    .restart local v28    # "childDrawingOrder":I
    .restart local v29    # "testTag":Ljava/lang/String;
    :goto_26
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v5

    sget-object v6, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v6}, Landroidx/compose/ui/semantics/SemanticsProperties;->getProgressBarRangeInfo()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v6

    invoke-static {v5, v6}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;

    .line 915
    nop

    .line 917
    .local v5, "rangeInfo":Landroidx/compose/ui/semantics/ProgressBarRangeInfo;
    if-eqz v5, :cond_4d

    .line 918
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v6

    sget-object v7, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v7}, Landroidx/compose/ui/semantics/SemanticsActions;->getSetProgress()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v6

    if-eqz v6, :cond_4a

    .line 919
    const-string v6, "android.widget.SeekBar"

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v2, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    goto :goto_27

    .line 921
    :cond_4a
    const-string v6, "android.widget.ProgressBar"

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v2, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 923
    :goto_27
    sget-object v6, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->Companion:Landroidx/compose/ui/semantics/ProgressBarRangeInfo$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/semantics/ProgressBarRangeInfo$Companion;->getIndeterminate()Landroidx/compose/ui/semantics/ProgressBarRangeInfo;

    move-result-object v6

    if-eq v5, v6, :cond_4b

    .line 924
    nop

    .line 926
    nop

    .line 927
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->getRange()Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v6

    invoke-interface {v6}, Lkotlin/ranges/ClosedFloatingPointRange;->getStart()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    .line 928
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->getRange()Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v7

    invoke-interface {v7}, Lkotlin/ranges/ClosedFloatingPointRange;->getEndInclusive()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    .line 929
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->getCurrent()F

    move-result v8

    .line 925
    const/4 v13, 0x1

    invoke-static {v13, v6, v7, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;->obtain(IFFF)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;

    move-result-object v6

    .line 924
    invoke-virtual {v2, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setRangeInfo(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;)V

    .line 932
    :cond_4b
    nop

    .line 933
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v6

    sget-object v7, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v7}, Landroidx/compose/ui/semantics/SemanticsActions;->getSetProgress()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v6

    if-eqz v6, :cond_4d

    .line 934
    invoke-static {v3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->access$enabled(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v6

    if-eqz v6, :cond_4d

    .line 936
    nop

    .line 937
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->getCurrent()F

    move-result v6

    .line 938
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->getRange()Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v7

    invoke-interface {v7}, Lkotlin/ranges/ClosedFloatingPointRange;->getEndInclusive()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    invoke-virtual {v5}, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->getRange()Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v8

    invoke-interface {v8}, Lkotlin/ranges/ClosedFloatingPointRange;->getStart()Ljava/lang/Comparable;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->floatValue()F

    move-result v8

    invoke-static {v7, v8}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v7

    cmpg-float v6, v6, v7

    .line 937
    if-gez v6, :cond_4c

    .line 940
    sget-object v6, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_FORWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v2, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 942
    :cond_4c
    nop

    .line 943
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->getCurrent()F

    move-result v6

    .line 944
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->getRange()Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v7

    invoke-interface {v7}, Lkotlin/ranges/ClosedFloatingPointRange;->getStart()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    invoke-virtual {v5}, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->getRange()Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v8

    invoke-interface {v8}, Lkotlin/ranges/ClosedFloatingPointRange;->getEndInclusive()Ljava/lang/Comparable;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->floatValue()F

    move-result v8

    invoke-static {v7, v8}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    move-result v7

    cmpl-float v6, v6, v7

    .line 943
    if-lez v6, :cond_4d

    .line 946
    sget-object v6, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_BACKWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v2, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 950
    :cond_4d
    nop

    .line 951
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$Api24Impl;->addSetProgressAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Landroidx/compose/ui/semantics/SemanticsNode;)V

    .line 954
    invoke-static {v3, v2}, Landroidx/compose/ui/platform/accessibility/CollectionInfo_androidKt;->setCollectionInfo(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 955
    invoke-static {v3, v2}, Landroidx/compose/ui/platform/accessibility/CollectionInfo_androidKt;->setCollectionItemInfo(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 968
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v6

    sget-object v7, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v7}, Landroidx/compose/ui/semantics/SemanticsProperties;->getHorizontalScrollAxisRange()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v7

    invoke-static {v6, v7}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/semantics/ScrollAxisRange;

    .line 967
    nop

    .line 969
    .local v6, "xScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v7

    sget-object v8, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v8}, Landroidx/compose/ui/semantics/SemanticsActions;->getScrollBy()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v8

    invoke-static {v7, v8}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 970
    .local v7, "scrollAction":Landroidx/compose/ui/semantics/AccessibilityAction;
    const/4 v8, 0x0

    if-eqz v6, :cond_53

    if-eqz v7, :cond_53

    .line 974
    invoke-static {v3}, Landroidx/compose/ui/platform/accessibility/CollectionInfo_androidKt;->hasCollectionInfo(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v10

    if-nez v10, :cond_4e

    .line 975
    const-string v10, "android.widget.HorizontalScrollView"

    check-cast v10, Ljava/lang/CharSequence;

    invoke-virtual {v2, v10}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 977
    :cond_4e
    invoke-virtual {v6}, Landroidx/compose/ui/semantics/ScrollAxisRange;->getMaxValue()Lkotlin/jvm/functions/Function0;

    move-result-object v10

    invoke-interface {v10}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->floatValue()F

    move-result v10

    cmpl-float v10, v10, v8

    if-lez v10, :cond_4f

    .line 978
    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    .line 980
    :cond_4f
    invoke-static {v3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->access$enabled(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v10

    if-eqz v10, :cond_53

    .line 981
    invoke-static {v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->populateAccessibilityNodeInfoProperties$canScrollForward(Landroidx/compose/ui/semantics/ScrollAxisRange;)Z

    move-result v10

    if-eqz v10, :cond_51

    .line 982
    sget-object v10, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_FORWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v2, v10}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 983
    nop

    .line 984
    invoke-static {v3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->access$isRtl(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v10

    if-nez v10, :cond_50

    .line 985
    sget-object v10, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_RIGHT:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    goto :goto_28

    .line 987
    :cond_50
    sget-object v10, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_LEFT:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 983
    :goto_28
    invoke-virtual {v2, v10}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 991
    :cond_51
    invoke-static {v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->populateAccessibilityNodeInfoProperties$canScrollBackward(Landroidx/compose/ui/semantics/ScrollAxisRange;)Z

    move-result v10

    if-eqz v10, :cond_53

    .line 992
    sget-object v10, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_BACKWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v2, v10}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 993
    nop

    .line 994
    invoke-static {v3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->access$isRtl(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v10

    if-nez v10, :cond_52

    .line 995
    sget-object v10, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_LEFT:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    goto :goto_29

    .line 997
    :cond_52
    sget-object v10, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_RIGHT:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 993
    :goto_29
    invoke-virtual {v2, v10}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 1004
    :cond_53
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v10

    sget-object v11, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsProperties;->getVerticalScrollAxisRange()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v11

    invoke-static {v10, v11}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/ui/semantics/ScrollAxisRange;

    .line 1003
    nop

    .line 1005
    .local v10, "yScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    if-eqz v10, :cond_57

    if-eqz v7, :cond_57

    .line 1009
    invoke-static {v3}, Landroidx/compose/ui/platform/accessibility/CollectionInfo_androidKt;->hasCollectionInfo(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v11

    if-nez v11, :cond_54

    .line 1010
    const-string v11, "android.widget.ScrollView"

    check-cast v11, Ljava/lang/CharSequence;

    invoke-virtual {v2, v11}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 1012
    :cond_54
    invoke-virtual {v10}, Landroidx/compose/ui/semantics/ScrollAxisRange;->getMaxValue()Lkotlin/jvm/functions/Function0;

    move-result-object v11

    invoke-interface {v11}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->floatValue()F

    move-result v11

    cmpl-float v8, v11, v8

    if-lez v8, :cond_55

    .line 1013
    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    .line 1015
    :cond_55
    invoke-static {v3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->access$enabled(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v8

    if-eqz v8, :cond_57

    .line 1016
    invoke-static {v10}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->populateAccessibilityNodeInfoProperties$canScrollForward(Landroidx/compose/ui/semantics/ScrollAxisRange;)Z

    move-result v8

    if-eqz v8, :cond_56

    .line 1017
    sget-object v8, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_FORWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v2, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 1018
    sget-object v8, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_DOWN:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v2, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 1020
    :cond_56
    invoke-static {v10}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->populateAccessibilityNodeInfoProperties$canScrollBackward(Landroidx/compose/ui/semantics/ScrollAxisRange;)Z

    move-result v8

    if-eqz v8, :cond_57

    .line 1021
    sget-object v8, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_BACKWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v2, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 1022
    sget-object v8, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_UP:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v2, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 1027
    :cond_57
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x1d

    if-lt v8, v11, :cond_58

    .line 1028
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$Api29Impl;->addPageActions(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Landroidx/compose/ui/semantics/SemanticsNode;)V

    .line 1031
    :cond_58
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v8

    sget-object v11, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsProperties;->getPaneTitle()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v11

    invoke-static {v8, v11}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v2, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setPaneTitle(Ljava/lang/CharSequence;)V

    .line 1033
    invoke-static {v3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->access$enabled(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v8

    if-eqz v8, :cond_64

    .line 1034
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v8

    sget-object v11, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsActions;->getExpand()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v11

    invoke-static {v8, v11}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz v8, :cond_59

    .local v8, "it":Landroidx/compose/ui/semantics/AccessibilityAction;
    const/4 v11, 0x0

    .line 1035
    .local v11, "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$15":I
    nop

    .line 1036
    new-instance v12, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v8}, Landroidx/compose/ui/semantics/AccessibilityAction;->getLabel()Ljava/lang/String;

    move-result-object v13

    check-cast v13, Ljava/lang/CharSequence;

    const/high16 v14, 0x40000

    invoke-direct {v12, v14, v13}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    .line 1035
    invoke-virtual {v2, v12}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 1038
    nop

    .end local v8    # "it":Landroidx/compose/ui/semantics/AccessibilityAction;
    .end local v11    # "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$15":I
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1034
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1040
    :cond_59
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v8

    sget-object v11, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsActions;->getCollapse()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v11

    invoke-static {v8, v11}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz v8, :cond_5a

    .restart local v8    # "it":Landroidx/compose/ui/semantics/AccessibilityAction;
    const/4 v11, 0x0

    .line 1041
    .local v11, "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$16":I
    nop

    .line 1042
    new-instance v12, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v8}, Landroidx/compose/ui/semantics/AccessibilityAction;->getLabel()Ljava/lang/String;

    move-result-object v13

    check-cast v13, Ljava/lang/CharSequence;

    const/high16 v14, 0x80000

    invoke-direct {v12, v14, v13}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    .line 1041
    invoke-virtual {v2, v12}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 1044
    nop

    .end local v8    # "it":Landroidx/compose/ui/semantics/AccessibilityAction;
    .end local v11    # "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$16":I
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1040
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1046
    :cond_5a
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v8

    sget-object v11, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsActions;->getDismiss()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v11

    invoke-static {v8, v11}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz v8, :cond_5b

    .restart local v8    # "it":Landroidx/compose/ui/semantics/AccessibilityAction;
    const/4 v11, 0x0

    .line 1047
    .local v11, "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$17":I
    nop

    .line 1048
    new-instance v12, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v8}, Landroidx/compose/ui/semantics/AccessibilityAction;->getLabel()Ljava/lang/String;

    move-result-object v13

    check-cast v13, Ljava/lang/CharSequence;

    const/high16 v14, 0x100000

    invoke-direct {v12, v14, v13}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    .line 1047
    invoke-virtual {v2, v12}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 1050
    nop

    .end local v8    # "it":Landroidx/compose/ui/semantics/AccessibilityAction;
    .end local v11    # "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$17":I
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1046
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1052
    :cond_5b
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v8

    sget-object v11, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsActions;->getCustomActions()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v8

    if-eqz v8, :cond_63

    .line 1053
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v8

    sget-object v11, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsActions;->getCustomActions()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->get(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1054
    .local v8, "customActions":Ljava/util/List;
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    sget-object v12, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->AccessibilityActionsResourceIds:Landroidx/collection/IntList;

    .local v12, "this_$iv":Landroidx/collection/IntList;
    const/4 v13, 0x0

    .line 3536
    .local v13, "$i$f$getSize":I
    iget v12, v12, Landroidx/collection/IntList;->_size:I

    .line 1054
    .end local v12    # "this_$iv":Landroidx/collection/IntList;
    .end local v13    # "$i$f$getSize":I
    if-ge v11, v12, :cond_62

    .line 1060
    new-instance v11, Landroidx/collection/SparseArrayCompat;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-direct {v11, v13, v14, v12}, Landroidx/collection/SparseArrayCompat;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1061
    .local v11, "currentActionIdToLabel":Landroidx/collection/SparseArrayCompat;
    invoke-static {}, Landroidx/collection/ObjectIntMapKt;->mutableObjectIntMapOf()Landroidx/collection/MutableObjectIntMap;

    move-result-object v12

    .line 1067
    .local v12, "currentLabelToActionId":Landroidx/collection/MutableObjectIntMap;
    iget-object v13, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->labelToActionId:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v13, v1}, Landroidx/collection/SparseArrayCompat;->containsKey(I)Z

    move-result v13

    if-eqz v13, :cond_60

    .line 1068
    iget-object v13, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->labelToActionId:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v13, v1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/collection/MutableObjectIntMap;

    .line 1070
    .local v13, "oldLabelToActionId":Landroidx/collection/MutableObjectIntMap;
    const/4 v14, 0x0

    .line 3538
    .local v14, "$i$f$mutableIntListOf":I
    new-instance v15, Landroidx/collection/MutableIntList;

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v21, v7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    .end local v5    # "rangeInfo":Landroidx/compose/ui/semantics/ProgressBarRangeInfo;
    .end local v6    # "xScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    .end local v7    # "scrollAction":Landroidx/compose/ui/semantics/AccessibilityAction;
    .local v17, "rangeInfo":Landroidx/compose/ui/semantics/ProgressBarRangeInfo;
    .local v18, "xScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    .local v21, "scrollAction":Landroidx/compose/ui/semantics/AccessibilityAction;
    invoke-direct {v15, v6, v7, v5}, Landroidx/collection/MutableIntList;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1070
    .end local v14    # "$i$f$mutableIntListOf":I
    move-object v5, v15

    .local v5, "$this$populateAccessibilityNodeInfoProperties_u24lambda_u2417":Landroidx/collection/MutableIntList;
    const/4 v6, 0x0

    .line 1071
    .local v6, "$i$a$-apply-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$availableIds$1":I
    sget-object v7, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->AccessibilityActionsResourceIds:Landroidx/collection/IntList;

    .local v7, "this_$iv":Landroidx/collection/IntList;
    const/4 v14, 0x0

    .line 3539
    .local v14, "$i$f$forEach":I
    nop

    .line 3540
    move/from16 v23, v6

    .end local v6    # "$i$a$-apply-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$availableIds$1":I
    .local v23, "$i$a$-apply-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$availableIds$1":I
    iget-object v6, v7, Landroidx/collection/IntList;->content:[I

    .line 3541
    .local v6, "content$iv":[I
    const/16 v24, 0x0

    move-object/from16 v25, v6

    .end local v6    # "content$iv":[I
    .local v24, "i$iv":I
    .local v25, "content$iv":[I
    iget v6, v7, Landroidx/collection/IntList;->_size:I

    move-object/from16 v26, v7

    move/from16 v7, v24

    .end local v24    # "i$iv":I
    .local v7, "i$iv":I
    .local v26, "this_$iv":Landroidx/collection/IntList;
    :goto_2a
    if-ge v7, v6, :cond_5c

    .line 3542
    move/from16 v24, v6

    aget v6, v25, v7

    .local v6, "it":I
    const/16 v27, 0x0

    .line 1071
    .local v27, "$i$a$-forEach-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$availableIds$1$1":I
    invoke-virtual {v5, v6}, Landroidx/collection/MutableIntList;->add(I)Z

    .line 3542
    .end local v6    # "it":I
    .end local v27    # "$i$a$-forEach-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$availableIds$1$1":I
    nop

    .line 3541
    add-int/lit8 v7, v7, 0x1

    move/from16 v6, v24

    goto :goto_2a

    .line 3544
    .end local v7    # "i$iv":I
    :cond_5c
    nop

    .line 1072
    .end local v14    # "$i$f$forEach":I
    .end local v25    # "content$iv":[I
    .end local v26    # "this_$iv":Landroidx/collection/IntList;
    nop

    .line 1070
    .end local v5    # "$this$populateAccessibilityNodeInfoProperties_u24lambda_u2417":Landroidx/collection/MutableIntList;
    .end local v23    # "$i$a$-apply-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$availableIds$1":I
    nop

    .line 1069
    nop

    .line 1073
    .local v15, "availableIds":Landroidx/collection/MutableIntList;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/List;

    .line 1074
    .local v5, "unassignedActions":Ljava/util/List;
    move-object v6, v8

    .local v6, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v7, 0x0

    .line 3545
    .local v7, "$i$f$fastForEach":I
    const/4 v14, 0x0

    .local v14, "index$iv":I
    move-object/from16 v23, v6

    check-cast v23, Ljava/util/Collection;

    move/from16 v24, v7

    .end local v7    # "$i$f$fastForEach":I
    .local v24, "$i$f$fastForEach":I
    invoke-interface/range {v23 .. v23}, Ljava/util/Collection;->size()I

    move-result v7

    :goto_2b
    if-ge v14, v7, :cond_5e

    .line 3546
    invoke-interface {v6, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    .line 3547
    .local v23, "item$iv":Ljava/lang/Object;
    move-object/from16 v25, v6

    .end local v6    # "$this$fastForEach$iv":Ljava/util/List;
    .local v25, "$this$fastForEach$iv":Ljava/util/List;
    move-object/from16 v6, v23

    check-cast v6, Landroidx/compose/ui/semantics/CustomAccessibilityAction;

    .local v6, "action":Landroidx/compose/ui/semantics/CustomAccessibilityAction;
    const/16 v26, 0x0

    .line 1075
    .local v26, "$i$a$-fastForEach-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$18":I
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move/from16 v27, v7

    move-object v7, v13

    check-cast v7, Landroidx/collection/ObjectIntMap;

    move-object/from16 v30, v8

    .end local v8    # "customActions":Ljava/util/List;
    .local v7, "this_$iv":Landroidx/collection/ObjectIntMap;
    .local v30, "customActions":Ljava/util/List;
    invoke-virtual {v6}, Landroidx/compose/ui/semantics/CustomAccessibilityAction;->getLabel()Ljava/lang/String;

    move-result-object v8

    .local v8, "key$iv":Ljava/lang/Object;
    const/16 v31, 0x0

    .line 3548
    .local v31, "$i$f$contains":I
    invoke-virtual {v7, v8}, Landroidx/collection/ObjectIntMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    .line 1075
    .end local v7    # "this_$iv":Landroidx/collection/ObjectIntMap;
    .end local v8    # "key$iv":Ljava/lang/Object;
    .end local v31    # "$i$f$contains":I
    if-eqz v7, :cond_5d

    .line 1076
    invoke-virtual {v6}, Landroidx/compose/ui/semantics/CustomAccessibilityAction;->getLabel()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Landroidx/collection/MutableObjectIntMap;->get(Ljava/lang/Object;)I

    move-result v7

    .line 1077
    .local v7, "actionId":I
    invoke-virtual {v6}, Landroidx/compose/ui/semantics/CustomAccessibilityAction;->getLabel()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v7, v8}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 1078
    invoke-virtual {v6}, Landroidx/compose/ui/semantics/CustomAccessibilityAction;->getLabel()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v8, v7}, Landroidx/collection/MutableObjectIntMap;->set(Ljava/lang/Object;I)V

    .line 1079
    invoke-virtual {v15, v7}, Landroidx/collection/MutableIntList;->remove(I)Z

    .line 1080
    new-instance v8, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v6}, Landroidx/compose/ui/semantics/CustomAccessibilityAction;->getLabel()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v32, v9

    .end local v9    # "text":Ljava/lang/String;
    .local v32, "text":Ljava/lang/String;
    move-object/from16 v9, v31

    check-cast v9, Ljava/lang/CharSequence;

    invoke-direct {v8, v7, v9}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {v2, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .end local v7    # "actionId":I
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_2c

    .line 1082
    .end local v32    # "text":Ljava/lang/String;
    .restart local v9    # "text":Ljava/lang/String;
    :cond_5d
    move-object/from16 v32, v9

    .end local v9    # "text":Ljava/lang/String;
    .restart local v32    # "text":Ljava/lang/String;
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1084
    :goto_2c
    nop

    .line 3547
    .end local v6    # "action":Landroidx/compose/ui/semantics/CustomAccessibilityAction;
    .end local v26    # "$i$a$-fastForEach-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$18":I
    nop

    .line 3545
    .end local v23    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v6, v25

    move/from16 v7, v27

    move-object/from16 v8, v30

    move-object/from16 v9, v32

    goto :goto_2b

    .end local v25    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v30    # "customActions":Ljava/util/List;
    .end local v32    # "text":Ljava/lang/String;
    .local v6, "$this$fastForEach$iv":Ljava/util/List;
    .local v8, "customActions":Ljava/util/List;
    .restart local v9    # "text":Ljava/lang/String;
    :cond_5e
    move-object/from16 v25, v6

    move-object/from16 v30, v8

    move-object/from16 v32, v9

    .line 3549
    .end local v6    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v8    # "customActions":Ljava/util/List;
    .end local v9    # "text":Ljava/lang/String;
    .end local v14    # "index$iv":I
    .restart local v25    # "$this$fastForEach$iv":Ljava/util/List;
    .restart local v30    # "customActions":Ljava/util/List;
    .restart local v32    # "text":Ljava/lang/String;
    nop

    .line 1085
    .end local v24    # "$i$f$fastForEach":I
    .end local v25    # "$this$fastForEach$iv":Ljava/util/List;
    move-object v6, v5

    .local v6, "$this$fastForEachIndexed$iv":Ljava/util/List;
    const/4 v7, 0x0

    .line 3550
    .local v7, "$i$f$fastForEachIndexed":I
    const/4 v8, 0x0

    .local v8, "index$iv":I
    move-object v9, v6

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->size()I

    move-result v9

    :goto_2d
    if-ge v8, v9, :cond_5f

    .line 3551
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    .line 3552
    .local v14, "item$iv":Ljava/lang/Object;
    move-object/from16 v23, v14

    check-cast v23, Landroidx/compose/ui/semantics/CustomAccessibilityAction;

    .local v23, "action":Landroidx/compose/ui/semantics/CustomAccessibilityAction;
    move/from16 v24, v8

    .local v24, "index":I
    move/from16 v25, v24

    .end local v24    # "index":I
    .local v25, "index":I
    const/16 v24, 0x0

    .line 1086
    .local v24, "$i$a$-fastForEachIndexed-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$19":I
    move-object/from16 v26, v5

    move/from16 v5, v25

    move-object/from16 v25, v6

    .end local v6    # "$this$fastForEachIndexed$iv":Ljava/util/List;
    .local v5, "index":I
    .local v25, "$this$fastForEachIndexed$iv":Ljava/util/List;
    .local v26, "unassignedActions":Ljava/util/List;
    invoke-virtual {v15, v5}, Landroidx/collection/MutableIntList;->get(I)I

    move-result v6

    .line 1087
    .local v6, "actionId":I
    move/from16 v27, v5

    .end local v5    # "index":I
    .local v27, "index":I
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/semantics/CustomAccessibilityAction;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v6, v5}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 1088
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/semantics/CustomAccessibilityAction;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5, v6}, Landroidx/collection/MutableObjectIntMap;->set(Ljava/lang/Object;I)V

    .line 1089
    new-instance v5, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/semantics/CustomAccessibilityAction;->getLabel()Ljava/lang/String;

    move-result-object v31

    move/from16 v33, v7

    .end local v7    # "$i$f$fastForEachIndexed":I
    .local v33, "$i$f$fastForEachIndexed":I
    move-object/from16 v7, v31

    check-cast v7, Ljava/lang/CharSequence;

    invoke-direct {v5, v6, v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {v2, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 1090
    nop

    .line 3552
    .end local v6    # "actionId":I
    .end local v23    # "action":Landroidx/compose/ui/semantics/CustomAccessibilityAction;
    .end local v24    # "$i$a$-fastForEachIndexed-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$19":I
    .end local v27    # "index":I
    nop

    .line 3550
    .end local v14    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v6, v25

    move-object/from16 v5, v26

    move/from16 v7, v33

    goto :goto_2d

    .end local v25    # "$this$fastForEachIndexed$iv":Ljava/util/List;
    .end local v26    # "unassignedActions":Ljava/util/List;
    .end local v33    # "$i$f$fastForEachIndexed":I
    .local v5, "unassignedActions":Ljava/util/List;
    .local v6, "$this$fastForEachIndexed$iv":Ljava/util/List;
    .restart local v7    # "$i$f$fastForEachIndexed":I
    :cond_5f
    move-object/from16 v26, v5

    move-object/from16 v25, v6

    move/from16 v33, v7

    .line 3554
    .end local v5    # "unassignedActions":Ljava/util/List;
    .end local v6    # "$this$fastForEachIndexed$iv":Ljava/util/List;
    .end local v7    # "$i$f$fastForEachIndexed":I
    .end local v8    # "index$iv":I
    .restart local v25    # "$this$fastForEachIndexed$iv":Ljava/util/List;
    .restart local v26    # "unassignedActions":Ljava/util/List;
    .restart local v33    # "$i$f$fastForEachIndexed":I
    nop

    .end local v13    # "oldLabelToActionId":Landroidx/collection/MutableObjectIntMap;
    .end local v15    # "availableIds":Landroidx/collection/MutableIntList;
    .end local v25    # "$this$fastForEachIndexed$iv":Ljava/util/List;
    .end local v26    # "unassignedActions":Ljava/util/List;
    .end local v33    # "$i$f$fastForEachIndexed":I
    goto :goto_2f

    .line 1092
    .end local v17    # "rangeInfo":Landroidx/compose/ui/semantics/ProgressBarRangeInfo;
    .end local v18    # "xScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    .end local v21    # "scrollAction":Landroidx/compose/ui/semantics/AccessibilityAction;
    .end local v30    # "customActions":Ljava/util/List;
    .end local v32    # "text":Ljava/lang/String;
    .local v5, "rangeInfo":Landroidx/compose/ui/semantics/ProgressBarRangeInfo;
    .local v6, "xScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    .local v7, "scrollAction":Landroidx/compose/ui/semantics/AccessibilityAction;
    .local v8, "customActions":Ljava/util/List;
    .restart local v9    # "text":Ljava/lang/String;
    :cond_60
    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v21, v7

    move-object/from16 v30, v8

    move-object/from16 v32, v9

    .end local v5    # "rangeInfo":Landroidx/compose/ui/semantics/ProgressBarRangeInfo;
    .end local v6    # "xScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    .end local v7    # "scrollAction":Landroidx/compose/ui/semantics/AccessibilityAction;
    .end local v8    # "customActions":Ljava/util/List;
    .end local v9    # "text":Ljava/lang/String;
    .restart local v17    # "rangeInfo":Landroidx/compose/ui/semantics/ProgressBarRangeInfo;
    .restart local v18    # "xScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    .restart local v21    # "scrollAction":Landroidx/compose/ui/semantics/AccessibilityAction;
    .restart local v30    # "customActions":Ljava/util/List;
    .restart local v32    # "text":Ljava/lang/String;
    move-object/from16 v5, v30

    .local v5, "$this$fastForEachIndexed$iv":Ljava/util/List;
    const/4 v6, 0x0

    .line 3555
    .local v6, "$i$f$fastForEachIndexed":I
    const/4 v7, 0x0

    .local v7, "index$iv":I
    move-object v8, v5

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v8

    :goto_2e
    if-ge v7, v8, :cond_61

    .line 3556
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 3557
    .local v9, "item$iv":Ljava/lang/Object;
    move-object v13, v9

    check-cast v13, Landroidx/compose/ui/semantics/CustomAccessibilityAction;

    .local v13, "action":Landroidx/compose/ui/semantics/CustomAccessibilityAction;
    move v14, v7

    .local v14, "index":I
    const/4 v15, 0x0

    .line 1093
    .local v15, "$i$a$-fastForEachIndexed-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$20":I
    move-object/from16 v23, v5

    .end local v5    # "$this$fastForEachIndexed$iv":Ljava/util/List;
    .local v23, "$this$fastForEachIndexed$iv":Ljava/util/List;
    sget-object v5, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->AccessibilityActionsResourceIds:Landroidx/collection/IntList;

    invoke-virtual {v5, v14}, Landroidx/collection/IntList;->get(I)I

    move-result v5

    .line 1094
    .local v5, "actionId":I
    move/from16 v24, v6

    .end local v6    # "$i$f$fastForEachIndexed":I
    .local v24, "$i$f$fastForEachIndexed":I
    invoke-virtual {v13}, Landroidx/compose/ui/semantics/CustomAccessibilityAction;->getLabel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v5, v6}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 1095
    invoke-virtual {v13}, Landroidx/compose/ui/semantics/CustomAccessibilityAction;->getLabel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6, v5}, Landroidx/collection/MutableObjectIntMap;->set(Ljava/lang/Object;I)V

    .line 1096
    new-instance v6, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v13}, Landroidx/compose/ui/semantics/CustomAccessibilityAction;->getLabel()Ljava/lang/String;

    move-result-object v25

    move/from16 v26, v7

    .end local v7    # "index$iv":I
    .local v26, "index$iv":I
    move-object/from16 v7, v25

    check-cast v7, Ljava/lang/CharSequence;

    invoke-direct {v6, v5, v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {v2, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 1097
    nop

    .line 3557
    .end local v5    # "actionId":I
    .end local v13    # "action":Landroidx/compose/ui/semantics/CustomAccessibilityAction;
    .end local v14    # "index":I
    .end local v15    # "$i$a$-fastForEachIndexed-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$20":I
    nop

    .line 3555
    .end local v9    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v7, v26, 0x1

    move-object/from16 v5, v23

    move/from16 v6, v24

    .end local v26    # "index$iv":I
    .restart local v7    # "index$iv":I
    goto :goto_2e

    .end local v23    # "$this$fastForEachIndexed$iv":Ljava/util/List;
    .end local v24    # "$i$f$fastForEachIndexed":I
    .local v5, "$this$fastForEachIndexed$iv":Ljava/util/List;
    .restart local v6    # "$i$f$fastForEachIndexed":I
    :cond_61
    move-object/from16 v23, v5

    move/from16 v24, v6

    move/from16 v26, v7

    .line 3559
    .end local v5    # "$this$fastForEachIndexed$iv":Ljava/util/List;
    .end local v6    # "$i$f$fastForEachIndexed":I
    .end local v7    # "index$iv":I
    .restart local v23    # "$this$fastForEachIndexed$iv":Ljava/util/List;
    .restart local v24    # "$i$f$fastForEachIndexed":I
    nop

    .line 1099
    .end local v23    # "$this$fastForEachIndexed$iv":Ljava/util/List;
    .end local v24    # "$i$f$fastForEachIndexed":I
    :goto_2f
    iget-object v5, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->actionIdToLabel:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v5, v1, v11}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 1100
    iget-object v5, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->labelToActionId:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v5, v1, v12}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    goto :goto_30

    .line 1055
    .end local v11    # "currentActionIdToLabel":Landroidx/collection/SparseArrayCompat;
    .end local v12    # "currentLabelToActionId":Landroidx/collection/MutableObjectIntMap;
    .end local v17    # "rangeInfo":Landroidx/compose/ui/semantics/ProgressBarRangeInfo;
    .end local v18    # "xScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    .end local v21    # "scrollAction":Landroidx/compose/ui/semantics/AccessibilityAction;
    .end local v30    # "customActions":Ljava/util/List;
    .end local v32    # "text":Ljava/lang/String;
    .local v5, "rangeInfo":Landroidx/compose/ui/semantics/ProgressBarRangeInfo;
    .local v6, "xScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    .local v7, "scrollAction":Landroidx/compose/ui/semantics/AccessibilityAction;
    .restart local v8    # "customActions":Ljava/util/List;
    .local v9, "text":Ljava/lang/String;
    :cond_62
    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v21, v7

    move-object/from16 v30, v8

    .end local v5    # "rangeInfo":Landroidx/compose/ui/semantics/ProgressBarRangeInfo;
    .end local v6    # "xScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    .end local v7    # "scrollAction":Landroidx/compose/ui/semantics/AccessibilityAction;
    .end local v8    # "customActions":Ljava/util/List;
    .restart local v17    # "rangeInfo":Landroidx/compose/ui/semantics/ProgressBarRangeInfo;
    .restart local v18    # "xScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    .restart local v21    # "scrollAction":Landroidx/compose/ui/semantics/AccessibilityAction;
    .restart local v30    # "customActions":Ljava/util/List;
    new-instance v5, Ljava/lang/IllegalStateException;

    .line 1056
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t have more than "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1057
    sget-object v7, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->AccessibilityActionsResourceIds:Landroidx/collection/IntList;

    .local v7, "this_$iv":Landroidx/collection/IntList;
    const/4 v8, 0x0

    .line 3537
    .local v8, "$i$f$getSize":I
    iget v7, v7, Landroidx/collection/IntList;->_size:I

    .line 1056
    .end local v7    # "this_$iv":Landroidx/collection/IntList;
    .end local v8    # "$i$f$getSize":I
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1057
    nop

    .line 1056
    const-string v7, " custom actions for one widget"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1055
    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1052
    .end local v17    # "rangeInfo":Landroidx/compose/ui/semantics/ProgressBarRangeInfo;
    .end local v18    # "xScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    .end local v21    # "scrollAction":Landroidx/compose/ui/semantics/AccessibilityAction;
    .end local v30    # "customActions":Ljava/util/List;
    .restart local v5    # "rangeInfo":Landroidx/compose/ui/semantics/ProgressBarRangeInfo;
    .restart local v6    # "xScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    .local v7, "scrollAction":Landroidx/compose/ui/semantics/AccessibilityAction;
    :cond_63
    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v21, v7

    move-object/from16 v32, v9

    .end local v5    # "rangeInfo":Landroidx/compose/ui/semantics/ProgressBarRangeInfo;
    .end local v6    # "xScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    .end local v7    # "scrollAction":Landroidx/compose/ui/semantics/AccessibilityAction;
    .end local v9    # "text":Ljava/lang/String;
    .restart local v17    # "rangeInfo":Landroidx/compose/ui/semantics/ProgressBarRangeInfo;
    .restart local v18    # "xScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    .restart local v21    # "scrollAction":Landroidx/compose/ui/semantics/AccessibilityAction;
    .restart local v32    # "text":Ljava/lang/String;
    goto :goto_30

    .line 1033
    .end local v17    # "rangeInfo":Landroidx/compose/ui/semantics/ProgressBarRangeInfo;
    .end local v18    # "xScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    .end local v21    # "scrollAction":Landroidx/compose/ui/semantics/AccessibilityAction;
    .end local v32    # "text":Ljava/lang/String;
    .restart local v5    # "rangeInfo":Landroidx/compose/ui/semantics/ProgressBarRangeInfo;
    .restart local v6    # "xScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    .restart local v7    # "scrollAction":Landroidx/compose/ui/semantics/AccessibilityAction;
    .restart local v9    # "text":Ljava/lang/String;
    :cond_64
    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v21, v7

    move-object/from16 v32, v9

    .line 1104
    .end local v5    # "rangeInfo":Landroidx/compose/ui/semantics/ProgressBarRangeInfo;
    .end local v6    # "xScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    .end local v7    # "scrollAction":Landroidx/compose/ui/semantics/AccessibilityAction;
    .end local v9    # "text":Ljava/lang/String;
    .restart local v17    # "rangeInfo":Landroidx/compose/ui/semantics/ProgressBarRangeInfo;
    .restart local v18    # "xScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    .restart local v21    # "scrollAction":Landroidx/compose/ui/semantics/AccessibilityAction;
    .restart local v32    # "text":Ljava/lang/String;
    :goto_30
    invoke-static {v3, v4}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->access$isScreenReaderFocusable(Landroidx/compose/ui/semantics/SemanticsNode;Landroid/content/res/Resources;)Z

    move-result v5

    invoke-virtual {v2, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setScreenReaderFocusable(Z)V

    .line 1107
    iget-object v5, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->idToBeforeMap:Landroidx/collection/MutableIntIntMap;

    const/4 v6, -0x1

    invoke-virtual {v5, v1, v6}, Landroidx/collection/MutableIntIntMap;->getOrDefault(II)I

    move-result v5

    .line 1108
    .local v5, "beforeId":I
    if-eq v5, v6, :cond_66

    .line 1109
    iget-object v6, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v6}, Landroidx/compose/ui/platform/AndroidComposeView;->getAndroidViewsHandler$ui()Landroidx/compose/ui/platform/AndroidViewsHandler;

    move-result-object v6

    invoke-static {v6, v5}, Landroidx/compose/ui/platform/SemanticsUtils_androidKt;->semanticsIdToView(Landroidx/compose/ui/platform/AndroidViewsHandler;I)Landroid/view/View;

    move-result-object v6

    .line 1110
    .local v6, "beforeView":Landroid/view/View;
    if-eqz v6, :cond_65

    .line 1113
    invoke-virtual {v2, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setTraversalBefore(Landroid/view/View;)V

    goto :goto_31

    .line 1116
    :cond_65
    iget-object v7, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    check-cast v7, Landroid/view/View;

    invoke-virtual {v2, v7, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setTraversalBefore(Landroid/view/View;I)V

    .line 1118
    :goto_31
    nop

    .line 1119
    nop

    .line 1120
    nop

    .line 1121
    iget-object v7, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->ExtraDataTestTraversalBeforeVal:Ljava/lang/String;

    .line 1122
    nop

    .line 1118
    const/4 v12, 0x0

    invoke-direct {v0, v1, v2, v7, v12}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->addExtraDataToAccessibilityNodeInfoHelper(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1126
    .end local v6    # "beforeView":Landroid/view/View;
    :cond_66
    iget-object v6, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->idToAfterMap:Landroidx/collection/MutableIntIntMap;

    const/4 v7, -0x1

    invoke-virtual {v6, v1, v7}, Landroidx/collection/MutableIntIntMap;->getOrDefault(II)I

    move-result v6

    .line 1127
    .local v6, "afterId":I
    if-eq v6, v7, :cond_67

    .line 1128
    iget-object v7, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v7}, Landroidx/compose/ui/platform/AndroidComposeView;->getAndroidViewsHandler$ui()Landroidx/compose/ui/platform/AndroidViewsHandler;

    move-result-object v7

    invoke-static {v7, v6}, Landroidx/compose/ui/platform/SemanticsUtils_androidKt;->semanticsIdToView(Landroidx/compose/ui/platform/AndroidViewsHandler;I)Landroid/view/View;

    move-result-object v7

    .line 1132
    .local v7, "afterView":Landroid/view/View;
    if-eqz v7, :cond_67

    .line 1133
    invoke-virtual {v2, v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setTraversalAfter(Landroid/view/View;)V

    .line 1134
    nop

    .line 1135
    nop

    .line 1136
    nop

    .line 1137
    iget-object v8, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->ExtraDataTestTraversalAfterVal:Ljava/lang/String;

    .line 1138
    nop

    .line 1134
    const/4 v12, 0x0

    invoke-direct {v0, v1, v2, v8, v12}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->addExtraDataToAccessibilityNodeInfoHelper(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1147
    .end local v7    # "afterView":Landroid/view/View;
    :cond_67
    nop

    .line 1145
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v7

    .line 1146
    sget-object v8, Landroidx/compose/ui/semantics/SemanticsPropertiesAndroid;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsPropertiesAndroid;

    invoke-virtual {v8}, Landroidx/compose/ui/semantics/SemanticsPropertiesAndroid;->getAccessibilityClassName()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v8

    invoke-static {v7, v8}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1147
    if-eqz v7, :cond_68

    .line 1145
    nop

    .line 1147
    nop

    .line 3528
    .local v7, "it":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1147
    .local v8, "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$21":I
    move-object v9, v7

    check-cast v9, Ljava/lang/CharSequence;

    invoke-virtual {v2, v9}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .end local v7    # "it":Ljava/lang/String;
    .end local v8    # "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$21":I
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1148
    :cond_68
    return-void
.end method

.method private static final populateAccessibilityNodeInfoProperties$canScrollBackward(Landroidx/compose/ui/semantics/ScrollAxisRange;)Z
    .locals 2
    .param p0, "$this$populateAccessibilityNodeInfoProperties_u24canScrollBackward"    # Landroidx/compose/ui/semantics/ScrollAxisRange;

    .line 964
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/ScrollAxisRange;->getValue()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/semantics/ScrollAxisRange;->getReverseScrolling()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/ScrollAxisRange;->getValue()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/ui/semantics/ScrollAxisRange;->getMaxValue()Lkotlin/jvm/functions/Function0;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    invoke-virtual {p0}, Landroidx/compose/ui/semantics/ScrollAxisRange;->getReverseScrolling()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static final populateAccessibilityNodeInfoProperties$canScrollForward(Landroidx/compose/ui/semantics/ScrollAxisRange;)Z
    .locals 2
    .param p0, "$this$populateAccessibilityNodeInfoProperties_u24canScrollForward"    # Landroidx/compose/ui/semantics/ScrollAxisRange;

    .line 959
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/ScrollAxisRange;->getValue()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/ui/semantics/ScrollAxisRange;->getMaxValue()Lkotlin/jvm/functions/Function0;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/semantics/ScrollAxisRange;->getReverseScrolling()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/ScrollAxisRange;->getValue()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    invoke-virtual {p0}, Landroidx/compose/ui/semantics/ScrollAxisRange;->getReverseScrolling()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final registerScrollingId(ILjava/util/List;)Z
    .locals 9
    .param p1, "id"    # I
    .param p2, "oldScrollObservationScopes"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/compose/ui/platform/ScrollObservationScope;",
            ">;)Z"
        }
    .end annotation

    .line 2730
    const/4 v0, 0x0

    .line 2731
    .local v0, "newlyObservingScroll":Z
    invoke-static {p2, p1}, Landroidx/compose/ui/platform/SemanticsUtils_androidKt;->findById(Ljava/util/List;I)Landroidx/compose/ui/platform/ScrollObservationScope;

    move-result-object v1

    .line 2733
    .local v1, "oldScope":Landroidx/compose/ui/platform/ScrollObservationScope;
    if-eqz v1, :cond_0

    .line 2734
    move v3, p1

    move-object v2, v1

    goto :goto_0

    .line 2736
    :cond_0
    const/4 v0, 0x1

    .line 2737
    new-instance v2, Landroidx/compose/ui/platform/ScrollObservationScope;

    .line 2738
    nop

    .line 2739
    iget-object v4, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->scrollObservationScopes:Ljava/util/List;

    .line 2740
    nop

    .line 2741
    nop

    .line 2742
    nop

    .line 2743
    nop

    .line 2737
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v3, p1

    .end local p1    # "id":I
    .local v3, "id":I
    invoke-direct/range {v2 .. v8}, Landroidx/compose/ui/platform/ScrollObservationScope;-><init>(ILjava/util/List;Ljava/lang/Float;Ljava/lang/Float;Landroidx/compose/ui/semantics/ScrollAxisRange;Landroidx/compose/ui/semantics/ScrollAxisRange;)V

    .line 2733
    :goto_0
    nop

    .line 2732
    nop

    .line 2746
    .local v2, "newScope":Landroidx/compose/ui/platform/ScrollObservationScope;
    iget-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->scrollObservationScopes:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2747
    return v0
.end method

.method private final requestAccessibilityFocus(I)Z
    .locals 7
    .param p1, "virtualViewId"    # I

    .line 1197
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->isTouchExplorationEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1198
    return v2

    .line 1201
    :cond_0
    invoke-direct/range {p0 .. p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->isAccessibilityFocused(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1203
    iget v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityFocusedVirtualViewId:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    .line 1204
    nop

    .line 1205
    iget v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityFocusedVirtualViewId:I

    .line 1206
    nop

    .line 1204
    const/16 v5, 0xc

    const/4 v6, 0x0

    const/high16 v2, 0x10000

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEventForVirtualView$default(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)Z

    .line 1211
    :cond_1
    iput p1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityFocusedVirtualViewId:I

    .line 1214
    iget-object v2, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v2}, Landroidx/compose/ui/platform/AndroidComposeView;->invalidate()V

    .line 1215
    nop

    .line 1216
    nop

    .line 1217
    nop

    .line 1215
    const/16 v5, 0xc

    const/4 v6, 0x0

    const v2, 0x8000

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEventForVirtualView$default(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)Z

    .line 1219
    const/4 v0, 0x1

    return v0

    .line 1221
    :cond_2
    return v2
.end method

.method private final resetEnabledAccessibilityServiceList()V
    .locals 1

    .line 272
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->_enabledServices:Ljava/util/List;

    .line 273
    return-void
.end method

.method private final scheduleScrollEventIfNeeded(Landroidx/compose/ui/platform/ScrollObservationScope;)V
    .locals 6
    .param p1, "scrollObservationScope"    # Landroidx/compose/ui/platform/ScrollObservationScope;

    .line 2751
    invoke-virtual {p1}, Landroidx/compose/ui/platform/ScrollObservationScope;->isValidOwnerScope()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2752
    return-void

    .line 2754
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->getSnapshotObserver()Landroidx/compose/ui/node/OwnerSnapshotObserver;

    move-result-object v0

    .line 2755
    move-object v1, p1

    check-cast v1, Landroidx/compose/ui/node/OwnerScope;

    .line 2756
    iget-object v2, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->scheduleScrollEventIfNeededLambda:Lkotlin/jvm/functions/Function1;

    .line 2754
    new-instance v3, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$scheduleScrollEventIfNeeded$1;

    invoke-direct {v3, p1, p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$scheduleScrollEventIfNeeded$1;-><init>(Landroidx/compose/ui/platform/ScrollObservationScope;Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    .local v0, "this_$iv":Landroidx/compose/ui/node/OwnerSnapshotObserver;
    .local v1, "target$iv":Landroidx/compose/ui/node/OwnerScope;
    .local v2, "onChanged$iv":Lkotlin/jvm/functions/Function1;
    .local v3, "block$iv":Lkotlin/jvm/functions/Function0;
    const/4 v4, 0x0

    .line 3847
    .local v4, "$i$f$observeReads$ui":I
    invoke-static {v0}, Landroidx/compose/ui/node/OwnerSnapshotObserver;->access$getObserver$p(Landroidx/compose/ui/node/OwnerSnapshotObserver;)Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    move-result-object v5

    invoke-virtual {v5, v1, v2, v3}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observeReads(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    .line 3848
    nop

    .line 2835
    .end local v0    # "this_$iv":Landroidx/compose/ui/node/OwnerSnapshotObserver;
    .end local v1    # "target$iv":Landroidx/compose/ui/node/OwnerScope;
    .end local v2    # "onChanged$iv":Lkotlin/jvm/functions/Function1;
    .end local v3    # "block$iv":Lkotlin/jvm/functions/Function0;
    .end local v4    # "$i$f$observeReads$ui":I
    return-void
.end method

.method static final semanticsChangeChecker$lambda$0(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;)V
    .locals 7
    .param p0, "this$0"    # Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    .line 2171
    const-string/jumbo v0, "measureAndLayout"

    .local v0, "sectionName$iv":Ljava/lang/String;
    const/4 v1, 0x0

    .line 3885
    .local v1, "$i$f$trace":I
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 3886
    nop

    .line 3887
    const/4 v2, 0x0

    .line 2171
    .local v2, "$i$a$-trace-AndroidComposeViewAccessibilityDelegateCompat$semanticsChangeChecker$1$1":I
    :try_start_0
    iget-object v3, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    check-cast v3, Landroidx/compose/ui/node/Owner;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v6, v4, v5}, Landroidx/compose/ui/node/Owner;->measureAndLayout$default(Landroidx/compose/ui/node/Owner;ZILjava/lang/Object;)V

    .end local v2    # "$i$a$-trace-AndroidComposeViewAccessibilityDelegateCompat$semanticsChangeChecker$1$1":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3887
    nop

    .line 3889
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 3887
    nop

    .line 2172
    .end local v0    # "sectionName$iv":Ljava/lang/String;
    .end local v1    # "$i$f$trace":I
    const-string v0, "checkForSemanticsChanges"

    .restart local v0    # "sectionName$iv":Ljava/lang/String;
    const/4 v1, 0x0

    .line 3890
    .restart local v1    # "$i$f$trace":I
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 3891
    nop

    .line 3892
    const/4 v2, 0x0

    .line 2172
    .local v2, "$i$a$-trace-AndroidComposeViewAccessibilityDelegateCompat$semanticsChangeChecker$1$2":I
    :try_start_1
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->checkForSemanticsChanges()V

    .end local v2    # "$i$a$-trace-AndroidComposeViewAccessibilityDelegateCompat$semanticsChangeChecker$1$2":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3892
    nop

    .line 3894
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 3892
    nop

    .line 2173
    .end local v0    # "sectionName$iv":Ljava/lang/String;
    .end local v1    # "$i$f$trace":I
    iput-boolean v6, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->checkingForSemanticsChanges:Z

    .line 2174
    return-void

    .line 3894
    .restart local v0    # "sectionName$iv":Ljava/lang/String;
    .restart local v1    # "$i$f$trace":I
    :catchall_0
    move-exception v2

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v2

    .line 3889
    :catchall_1
    move-exception v2

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v2
.end method

.method private final semanticsNodeIdToAccessibilityVirtualNodeId(I)I
    .locals 1
    .param p1, "id"    # I

    .line 2885
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->getSemanticsOwner()Landroidx/compose/ui/semantics/SemanticsOwner;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsOwner;->getUnmergedRootSemanticsNode()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->getId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 2886
    const/4 v0, -0x1

    return v0

    .line 2888
    :cond_0
    return p1
.end method

.method private final sendAccessibilitySemanticsStructureChangeEvents(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/compose/ui/platform/SemanticsNodeCopy;)V
    .locals 21
    .param p1, "newNode"    # Landroidx/compose/ui/semantics/SemanticsNode;
    .param p2, "oldNode"    # Landroidx/compose/ui/platform/SemanticsNodeCopy;

    .line 2854
    move-object/from16 v0, p0

    invoke-static {}, Landroidx/collection/IntSetKt;->mutableIntSetOf()Landroidx/collection/MutableIntSet;

    move-result-object v1

    .line 2857
    .local v1, "newChildren":Landroidx/collection/MutableIntSet;
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getReplacedChildren$ui()Ljava/util/List;

    move-result-object v2

    .local v2, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 3849
    .local v3, "$i$f$fastForEach":I
    const/4 v4, 0x0

    .local v4, "index$iv":I
    move-object v5, v2

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    :goto_0
    if-ge v4, v5, :cond_2

    .line 3850
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 3851
    .local v6, "item$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Landroidx/compose/ui/semantics/SemanticsNode;

    .local v7, "child":Landroidx/compose/ui/semantics/SemanticsNode;
    const/4 v8, 0x0

    .line 2858
    .local v8, "$i$a$-fastForEach-AndroidComposeViewAccessibilityDelegateCompat$sendAccessibilitySemanticsStructureChangeEvents$1":I
    invoke-direct {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getCurrentSemanticsNodes()Landroidx/collection/IntObjectMap;

    move-result-object v9

    .local v9, "this_$iv":Landroidx/collection/IntObjectMap;
    invoke-virtual {v7}, Landroidx/compose/ui/semantics/SemanticsNode;->getId()I

    move-result v10

    .local v10, "key$iv":I
    const/4 v11, 0x0

    .line 3852
    .local v11, "$i$f$contains":I
    invoke-virtual {v9, v10}, Landroidx/collection/IntObjectMap;->containsKey(I)Z

    move-result v9

    .line 2858
    .end local v9    # "this_$iv":Landroidx/collection/IntObjectMap;
    .end local v10    # "key$iv":I
    .end local v11    # "$i$f$contains":I
    if-eqz v9, :cond_1

    .line 2859
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/platform/SemanticsNodeCopy;->getChildren()Landroidx/collection/MutableIntSet;

    move-result-object v9

    invoke-virtual {v7}, Landroidx/compose/ui/semantics/SemanticsNode;->getId()I

    move-result v10

    invoke-virtual {v9, v10}, Landroidx/collection/MutableIntSet;->contains(I)Z

    move-result v9

    if-nez v9, :cond_0

    .line 2860
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getLayoutNode$ui()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v5

    invoke-direct {v0, v5}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->notifySubtreeAccessibilityStateChangedIfNeeded(Landroidx/compose/ui/node/LayoutNode;)V

    .line 2861
    return-void

    .line 2863
    :cond_0
    invoke-virtual {v7}, Landroidx/compose/ui/semantics/SemanticsNode;->getId()I

    move-result v9

    invoke-virtual {v1, v9}, Landroidx/collection/MutableIntSet;->add(I)Z

    .line 2865
    :cond_1
    nop

    .line 3851
    .end local v7    # "child":Landroidx/compose/ui/semantics/SemanticsNode;
    .end local v8    # "$i$a$-fastForEach-AndroidComposeViewAccessibilityDelegateCompat$sendAccessibilitySemanticsStructureChangeEvents$1":I
    nop

    .line 3849
    .end local v6    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3853
    .end local v4    # "index$iv":I
    :cond_2
    nop

    .line 2868
    .end local v2    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v3    # "$i$f$fastForEach":I
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/platform/SemanticsNodeCopy;->getChildren()Landroidx/collection/MutableIntSet;

    move-result-object v2

    check-cast v2, Landroidx/collection/IntSet;

    .local v2, "this_$iv":Landroidx/collection/IntSet;
    const/4 v3, 0x0

    .line 3854
    .local v3, "$i$f$forEach":I
    nop

    .line 3855
    iget-object v4, v2, Landroidx/collection/IntSet;->elements:[I

    .line 3857
    .local v4, "k$iv":[I
    move-object v5, v2

    .local v5, "this_$iv$iv":Landroidx/collection/IntSet;
    const/4 v6, 0x0

    .line 3858
    .local v6, "$i$f$forEachIndex":I
    nop

    .line 3859
    iget-object v7, v5, Landroidx/collection/IntSet;->metadata:[J

    .line 3860
    .local v7, "m$iv$iv":[J
    array-length v8, v7

    add-int/lit8 v8, v8, -0x2

    .line 3862
    .local v8, "lastIndex$iv$iv":I
    const/4 v9, 0x0

    .local v9, "i$iv$iv":I
    if-gt v9, v8, :cond_8

    .line 3863
    :goto_1
    aget-wide v10, v7, v9

    .line 3864
    .local v10, "slot$iv$iv":J
    move-wide v12, v10

    .local v12, "$this$maskEmptyOrDeleted$iv$iv$iv":J
    const/4 v14, 0x0

    .line 3865
    .local v14, "$i$f$maskEmptyOrDeleted":I
    move-object v15, v2

    move/from16 v16, v3

    .end local v2    # "this_$iv":Landroidx/collection/IntSet;
    .end local v3    # "$i$f$forEach":I
    .local v15, "this_$iv":Landroidx/collection/IntSet;
    .local v16, "$i$f$forEach":I
    not-long v2, v12

    const/16 v17, 0x7

    shl-long v2, v2, v17

    and-long/2addr v2, v12

    const-wide v17, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v2, v2, v17

    .line 3864
    .end local v12    # "$this$maskEmptyOrDeleted$iv$iv$iv":J
    .end local v14    # "$i$f$maskEmptyOrDeleted":I
    cmp-long v2, v2, v17

    if-eqz v2, :cond_7

    .line 3866
    sub-int v2, v9, v8

    not-int v2, v2

    ushr-int/lit8 v2, v2, 0x1f

    const/16 v3, 0x8

    rsub-int/lit8 v2, v2, 0x8

    .line 3867
    .local v2, "bitCount$iv$iv":I
    const/4 v12, 0x0

    .local v12, "j$iv$iv":I
    :goto_2
    if-ge v12, v2, :cond_6

    .line 3868
    const-wide/16 v13, 0xff

    and-long/2addr v13, v10

    .local v13, "value$iv$iv$iv":J
    const/16 v17, 0x0

    .line 3869
    .local v17, "$i$f$isFull":I
    const-wide/16 v18, 0x80

    cmp-long v18, v13, v18

    if-gez v18, :cond_3

    const/16 v18, 0x1

    goto :goto_3

    :cond_3
    const/16 v18, 0x0

    .line 3868
    .end local v13    # "value$iv$iv$iv":J
    .end local v17    # "$i$f$isFull":I
    :goto_3
    if-eqz v18, :cond_5

    .line 3870
    shl-int/lit8 v13, v9, 0x3

    add-int/2addr v13, v12

    .line 3871
    .local v13, "index$iv$iv":I
    move v14, v13

    .local v14, "index$iv":I
    const/16 v17, 0x0

    .line 3857
    .local v17, "$i$a$-forEachIndex-IntSet$forEach$2$iv":I
    move/from16 v18, v3

    aget v3, v4, v14

    .local v3, "child":I
    const/16 v19, 0x0

    .line 2869
    .local v19, "$i$a$-forEach-AndroidComposeViewAccessibilityDelegateCompat$sendAccessibilitySemanticsStructureChangeEvents$2":I
    invoke-virtual {v1, v3}, Landroidx/collection/MutableIntSet;->contains(I)Z

    move-result v20

    if-nez v20, :cond_4

    .line 2870
    move-object/from16 v20, v1

    .end local v1    # "newChildren":Landroidx/collection/MutableIntSet;
    .local v20, "newChildren":Landroidx/collection/MutableIntSet;
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getLayoutNode$ui()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->notifySubtreeAccessibilityStateChangedIfNeeded(Landroidx/compose/ui/node/LayoutNode;)V

    .line 2871
    return-void

    .line 2873
    .end local v20    # "newChildren":Landroidx/collection/MutableIntSet;
    .restart local v1    # "newChildren":Landroidx/collection/MutableIntSet;
    :cond_4
    move-object/from16 v20, v1

    .line 3857
    .end local v1    # "newChildren":Landroidx/collection/MutableIntSet;
    .end local v3    # "child":I
    .end local v19    # "$i$a$-forEach-AndroidComposeViewAccessibilityDelegateCompat$sendAccessibilitySemanticsStructureChangeEvents$2":I
    .restart local v20    # "newChildren":Landroidx/collection/MutableIntSet;
    nop

    .line 3871
    .end local v14    # "index$iv":I
    .end local v17    # "$i$a$-forEachIndex-IntSet$forEach$2$iv":I
    goto :goto_4

    .line 3868
    .end local v13    # "index$iv$iv":I
    .end local v20    # "newChildren":Landroidx/collection/MutableIntSet;
    .restart local v1    # "newChildren":Landroidx/collection/MutableIntSet;
    :cond_5
    move-object/from16 v20, v1

    move/from16 v18, v3

    .line 3873
    .end local v1    # "newChildren":Landroidx/collection/MutableIntSet;
    .restart local v20    # "newChildren":Landroidx/collection/MutableIntSet;
    :goto_4
    shr-long v10, v10, v18

    .line 3867
    add-int/lit8 v12, v12, 0x1

    move/from16 v3, v18

    move-object/from16 v1, v20

    goto :goto_2

    .end local v20    # "newChildren":Landroidx/collection/MutableIntSet;
    .restart local v1    # "newChildren":Landroidx/collection/MutableIntSet;
    :cond_6
    move-object/from16 v20, v1

    move/from16 v18, v3

    .line 3875
    .end local v1    # "newChildren":Landroidx/collection/MutableIntSet;
    .end local v12    # "j$iv$iv":I
    .restart local v20    # "newChildren":Landroidx/collection/MutableIntSet;
    move/from16 v1, v18

    if-ne v2, v1, :cond_a

    goto :goto_5

    .line 3864
    .end local v2    # "bitCount$iv$iv":I
    .end local v20    # "newChildren":Landroidx/collection/MutableIntSet;
    .restart local v1    # "newChildren":Landroidx/collection/MutableIntSet;
    :cond_7
    move-object/from16 v20, v1

    .line 3862
    .end local v1    # "newChildren":Landroidx/collection/MutableIntSet;
    .end local v10    # "slot$iv$iv":J
    .restart local v20    # "newChildren":Landroidx/collection/MutableIntSet;
    :goto_5
    if-eq v9, v8, :cond_9

    add-int/lit8 v9, v9, 0x1

    move-object v2, v15

    move/from16 v3, v16

    move-object/from16 v1, v20

    goto :goto_1

    .end local v15    # "this_$iv":Landroidx/collection/IntSet;
    .end local v16    # "$i$f$forEach":I
    .end local v20    # "newChildren":Landroidx/collection/MutableIntSet;
    .restart local v1    # "newChildren":Landroidx/collection/MutableIntSet;
    .local v2, "this_$iv":Landroidx/collection/IntSet;
    .local v3, "$i$f$forEach":I
    :cond_8
    move-object/from16 v20, v1

    move-object v15, v2

    move/from16 v16, v3

    .line 3878
    .end local v1    # "newChildren":Landroidx/collection/MutableIntSet;
    .end local v2    # "this_$iv":Landroidx/collection/IntSet;
    .end local v3    # "$i$f$forEach":I
    .end local v9    # "i$iv$iv":I
    .restart local v15    # "this_$iv":Landroidx/collection/IntSet;
    .restart local v16    # "$i$f$forEach":I
    .restart local v20    # "newChildren":Landroidx/collection/MutableIntSet;
    :cond_9
    nop

    .line 3879
    .end local v5    # "this_$iv$iv":Landroidx/collection/IntSet;
    .end local v6    # "$i$f$forEachIndex":I
    .end local v7    # "m$iv$iv":[J
    .end local v8    # "lastIndex$iv$iv":I
    :cond_a
    nop

    .line 2875
    .end local v4    # "k$iv":[I
    .end local v15    # "this_$iv":Landroidx/collection/IntSet;
    .end local v16    # "$i$f$forEach":I
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getReplacedChildren$ui()Ljava/util/List;

    move-result-object v1

    .local v1, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 3880
    .local v2, "$i$f$fastForEach":I
    const/4 v3, 0x0

    .local v3, "index$iv":I
    move-object v4, v1

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    :goto_6
    if-ge v3, v4, :cond_d

    .line 3881
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 3882
    .local v5, "item$iv":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Landroidx/compose/ui/semantics/SemanticsNode;

    .local v6, "child":Landroidx/compose/ui/semantics/SemanticsNode;
    const/4 v7, 0x0

    .line 2876
    .local v7, "$i$a$-fastForEach-AndroidComposeViewAccessibilityDelegateCompat$sendAccessibilitySemanticsStructureChangeEvents$3":I
    iget-object v8, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->previousSemanticsNodes:Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {v6}, Landroidx/compose/ui/semantics/SemanticsNode;->getId()I

    move-result v9

    invoke-virtual {v8, v9}, Landroidx/collection/MutableIntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/platform/SemanticsNodeCopy;

    if-eqz v8, :cond_c

    .local v8, "previousNode":Landroidx/compose/ui/platform/SemanticsNodeCopy;
    const/4 v9, 0x0

    .line 2877
    .local v9, "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$sendAccessibilitySemanticsStructureChangeEvents$3$1":I
    invoke-direct {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getCurrentSemanticsNodes()Landroidx/collection/IntObjectMap;

    move-result-object v10

    .local v10, "this_$iv":Landroidx/collection/IntObjectMap;
    invoke-virtual {v6}, Landroidx/compose/ui/semantics/SemanticsNode;->getId()I

    move-result v11

    .local v11, "key$iv":I
    const/4 v12, 0x0

    .line 3883
    .local v12, "$i$f$contains":I
    invoke-virtual {v10, v11}, Landroidx/collection/IntObjectMap;->containsKey(I)Z

    move-result v10

    .line 2877
    .end local v10    # "this_$iv":Landroidx/collection/IntObjectMap;
    .end local v11    # "key$iv":I
    .end local v12    # "$i$f$contains":I
    if-eqz v10, :cond_b

    .line 2878
    invoke-direct {v0, v6, v8}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendAccessibilitySemanticsStructureChangeEvents(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/compose/ui/platform/SemanticsNodeCopy;)V

    .line 2880
    :cond_b
    nop

    .line 2876
    .end local v8    # "previousNode":Landroidx/compose/ui/platform/SemanticsNodeCopy;
    .end local v9    # "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$sendAccessibilitySemanticsStructureChangeEvents$3$1":I
    nop

    .line 2881
    :cond_c
    nop

    .line 3882
    .end local v6    # "child":Landroidx/compose/ui/semantics/SemanticsNode;
    .end local v7    # "$i$a$-fastForEach-AndroidComposeViewAccessibilityDelegateCompat$sendAccessibilitySemanticsStructureChangeEvents$3":I
    nop

    .line 3880
    .end local v5    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 3884
    .end local v3    # "index$iv":I
    :cond_d
    nop

    .line 2882
    .end local v1    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v2    # "$i$f$fastForEach":I
    return-void
.end method

.method private final sendEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1272
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->isEnabled$ui()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1273
    return v1

    .line 1276
    :cond_0
    nop

    .line 1277
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v2, 0x800

    if-eq v0, v2, :cond_1

    .line 1278
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const v2, 0x8000

    if-ne v0, v2, :cond_2

    .line 1280
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendingFocusAffectingEvent:Z

    .line 1282
    :cond_2
    nop

    .line 1283
    :try_start_0
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->onSendAccessibilityEvent:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1285
    iput-boolean v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendingFocusAffectingEvent:Z

    .line 1283
    return v0

    .line 1285
    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendingFocusAffectingEvent:Z

    throw v0
.end method

.method private final sendEventForVirtualView(IILjava/lang/Integer;Ljava/util/List;)Z
    .locals 11
    .param p1, "virtualViewId"    # I
    .param p2, "eventType"    # I
    .param p3, "contentChangeType"    # Ljava/lang/Integer;
    .param p4, "contentDescription"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1249
    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_3

    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->isEnabled$ui()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v2, p4

    goto :goto_1

    .line 1253
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->createEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 1254
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    if-eqz p3, :cond_1

    .line 1255
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    .line 1257
    :cond_1
    if-eqz p4, :cond_2

    .line 1258
    const-string v1, ","

    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    const/16 v9, 0x3e

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p4

    .end local p4    # "contentDescription":Ljava/util/List;
    .local v2, "contentDescription":Ljava/util/List;
    invoke-static/range {v2 .. v10}, Landroidx/compose/ui/util/ListUtilsKt;->fastJoinToString$default(Ljava/util/List;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    check-cast p4, Ljava/lang/CharSequence;

    invoke-virtual {v0, p4}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1257
    .end local v2    # "contentDescription":Ljava/util/List;
    .restart local p4    # "contentDescription":Ljava/util/List;
    :cond_2
    move-object v2, p4

    .line 1261
    .end local p4    # "contentDescription":Ljava/util/List;
    .restart local v2    # "contentDescription":Ljava/util/List;
    :goto_0
    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p4

    return p4

    .line 1249
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    .end local v2    # "contentDescription":Ljava/util/List;
    .restart local p4    # "contentDescription":Ljava/util/List;
    :cond_3
    move-object v2, p4

    .line 1250
    .end local p4    # "contentDescription":Ljava/util/List;
    .restart local v2    # "contentDescription":Ljava/util/List;
    :goto_1
    const/4 p4, 0x0

    return p4
.end method

.method static synthetic sendEventForVirtualView$default(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)Z
    .locals 1

    .line 1243
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    .line 1246
    move-object p3, v0

    .line 1243
    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    .line 1247
    move-object p4, v0

    .line 1243
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEventForVirtualView(IILjava/lang/Integer;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method private final sendPaneChangeEvents(IILjava/lang/String;)V
    .locals 2
    .param p1, "semanticsNodeId"    # I
    .param p2, "contentChangeType"    # I
    .param p3, "title"    # Ljava/lang/String;

    .line 2839
    nop

    .line 2840
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsNodeIdToAccessibilityVirtualNodeId(I)I

    move-result v0

    .line 2841
    nop

    .line 2839
    const/16 v1, 0x20

    invoke-direct {p0, v0, v1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->createEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 2838
    nop

    .line 2843
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    .line 2844
    if-eqz p3, :cond_0

    .line 2845
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2847
    :cond_0
    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 2848
    return-void
.end method

.method private final sendPendingTextTraversedAtGranularityEvent(I)V
    .locals 6
    .param p1, "semanticsNodeId"    # I

    .line 2945
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->pendingTextTraversedEvent:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;

    if-eqz v0, :cond_2

    .local v0, "it":Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;
    const/4 v1, 0x0

    .line 2947
    .local v1, "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$sendPendingTextTraversedAtGranularityEvent$1":I
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;->getNode()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsNode;->getId()I

    move-result v2

    if-eq p1, v2, :cond_0

    .line 2948
    return-void

    .line 2950
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;->getTraverseTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 2952
    nop

    .line 2953
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;->getNode()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsNode;->getId()I

    move-result v2

    invoke-direct {p0, v2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsNodeIdToAccessibilityVirtualNodeId(I)I

    move-result v2

    .line 2954
    nop

    .line 2952
    const/high16 v3, 0x20000

    invoke-direct {p0, v2, v3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->createEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    .line 2951
    nop

    .line 2956
    .local v2, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;->getFromIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 2957
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;->getToIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 2958
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;->getAction()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setAction(I)V

    .line 2959
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;->getGranularity()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setMovementGranularity(I)V

    .line 2960
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;->getNode()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v4

    invoke-direct {p0, v4}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getIterableTextForAccessibility(Landroidx/compose/ui/semantics/SemanticsNode;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2961
    invoke-direct {p0, v2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 2963
    .end local v2    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_1
    nop

    .line 2945
    .end local v0    # "it":Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;
    .end local v1    # "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$sendPendingTextTraversedAtGranularityEvent$1":I
    nop

    .line 2964
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->pendingTextTraversedEvent:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;

    .line 2965
    return-void
.end method

.method private final sendSemanticsPropertyChangeEvents(Landroidx/collection/IntObjectMap;)V
    .locals 74
    .param p1, "newSemanticsNodes"    # Landroidx/collection/IntObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/IntObjectMap<",
            "Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;",
            ">;)V"
        }
    .end annotation

    .line 2388
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->scrollObservationScopes:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v7, v1

    .line 2389
    .local v7, "oldScrollObservationScopes":Ljava/util/ArrayList;
    iget-object v1, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->scrollObservationScopes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2390
    move-object/from16 v8, p1

    .local v8, "this_$iv":Landroidx/collection/IntObjectMap;
    const/4 v9, 0x0

    .line 3785
    .local v9, "$i$f$forEachKey":I
    iget-object v10, v8, Landroidx/collection/IntObjectMap;->keys:[I

    .line 3787
    .local v10, "k$iv":[I
    move-object v11, v8

    .local v11, "this_$iv$iv":Landroidx/collection/IntObjectMap;
    const/4 v12, 0x0

    .line 3788
    .local v12, "$i$f$forEachIndexed":I
    iget-object v13, v11, Landroidx/collection/IntObjectMap;->metadata:[J

    .line 3789
    .local v13, "m$iv$iv":[J
    array-length v1, v13

    const/4 v14, 0x2

    add-int/lit8 v15, v1, -0x2

    .line 3791
    .local v15, "lastIndex$iv$iv":I
    const/4 v1, 0x0

    .local v1, "i$iv$iv":I
    if-gt v1, v15, :cond_3f

    .line 3792
    :goto_0
    aget-wide v2, v13, v1

    .line 3793
    .local v2, "slot$iv$iv":J
    move-wide v4, v2

    .local v4, "$this$maskEmptyOrDeleted$iv$iv$iv":J
    const/4 v6, 0x0

    .line 3794
    .local v6, "$i$f$maskEmptyOrDeleted":I
    move/from16 v16, v14

    move/from16 v17, v15

    .end local v15    # "lastIndex$iv$iv":I
    .local v17, "lastIndex$iv$iv":I
    not-long v14, v4

    const/16 v18, 0x7

    shl-long v14, v14, v18

    and-long/2addr v14, v4

    const-wide v19, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v4, v14, v19

    .line 3793
    .end local v4    # "$this$maskEmptyOrDeleted$iv$iv$iv":J
    .end local v6    # "$i$f$maskEmptyOrDeleted":I
    cmp-long v4, v4, v19

    if-eqz v4, :cond_3e

    .line 3795
    sub-int v4, v1, v17

    not-int v4, v4

    ushr-int/lit8 v4, v4, 0x1f

    const/16 v14, 0x8

    rsub-int/lit8 v15, v4, 0x8

    .line 3796
    .local v15, "bitCount$iv$iv":I
    const/4 v4, 0x0

    move-wide/from16 v21, v2

    move v2, v4

    .local v2, "j$iv$iv":I
    .local v21, "slot$iv$iv":J
    :goto_1
    if-ge v2, v15, :cond_3d

    .line 3797
    const-wide/16 v23, 0xff

    and-long v3, v21, v23

    .local v3, "value$iv$iv$iv":J
    const/4 v5, 0x0

    .line 3798
    .local v5, "$i$f$isFull":I
    const-wide/16 v25, 0x80

    cmp-long v6, v3, v25

    const/16 v27, 0x0

    const/16 v28, 0x1

    if-gez v6, :cond_0

    move/from16 v3, v28

    goto :goto_2

    :cond_0
    move/from16 v3, v27

    .line 3797
    .end local v3    # "value$iv$iv$iv":J
    .end local v5    # "$i$f$isFull":I
    :goto_2
    if-eqz v3, :cond_3c

    .line 3799
    shl-int/lit8 v3, v1, 0x3

    add-int v29, v3, v2

    .line 3800
    .local v29, "index$iv$iv":I
    move/from16 v30, v29

    .local v30, "index$iv":I
    const/16 v31, 0x0

    .line 3787
    .local v31, "$i$a$-forEachIndexed-IntObjectMap$forEachKey$1$iv":I
    aget v3, v10, v30

    .local v3, "id":I
    const/16 v32, 0x0

    .line 2393
    .local v32, "$i$a$-forEachKey-AndroidComposeViewAccessibilityDelegateCompat$sendSemanticsPropertyChangeEvents$1":I
    iget-object v4, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->previousSemanticsNodes:Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {v4, v3}, Landroidx/collection/MutableIntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/platform/SemanticsNodeCopy;

    if-nez v4, :cond_1

    move/from16 v61, v1

    move/from16 v37, v2

    move-object/from16 v36, v7

    move-object/from16 v38, v8

    move/from16 v55, v9

    move-object/from16 v56, v10

    move-object/from16 v58, v11

    move/from16 v59, v12

    move-object/from16 v60, v13

    goto/16 :goto_26

    :cond_1
    move-object/from16 v33, v4

    .line 2395
    .local v33, "oldNode":Landroidx/compose/ui/platform/SemanticsNodeCopy;
    move-object/from16 v4, p1

    invoke-virtual {v4, v3}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;

    const/16 v34, 0x0

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;->getSemanticsNode()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v5

    goto :goto_3

    :cond_2
    move-object/from16 v5, v34

    .local v5, "value$iv":Ljava/lang/Object;
    :goto_3
    const/4 v6, 0x0

    .line 3801
    .local v6, "$i$f$checkPreconditionNotNull":I
    if-eqz v5, :cond_3b

    .line 3805
    nop

    .line 2395
    .end local v5    # "value$iv":Ljava/lang/Object;
    .end local v6    # "$i$f$checkPreconditionNotNull":I
    nop

    .line 2394
    nop

    .line 2399
    .local v5, "newNode":Landroidx/compose/ui/semantics/SemanticsNode;
    const/4 v6, 0x0

    .line 2401
    .local v6, "propertyChanged":Z
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->getProps$ui()Landroidx/collection/MutableScatterMap;

    move-result-object v35

    move/from16 v36, v2

    .end local v2    # "j$iv$iv":I
    .local v36, "j$iv$iv":I
    move-object/from16 v2, v35

    check-cast v2, Landroidx/collection/ScatterMap;

    .local v2, "this_$iv":Landroidx/collection/ScatterMap;
    const/16 v35, 0x0

    .line 3806
    .local v35, "$i$f$forEach":I
    iget-object v4, v2, Landroidx/collection/ScatterMap;->keys:[Ljava/lang/Object;

    .line 3807
    .local v4, "k$iv":[Ljava/lang/Object;
    move-object/from16 v37, v4

    .end local v4    # "k$iv":[Ljava/lang/Object;
    .local v37, "k$iv":[Ljava/lang/Object;
    iget-object v4, v2, Landroidx/collection/ScatterMap;->values:[Ljava/lang/Object;

    .line 3809
    .local v4, "v$iv":[Ljava/lang/Object;
    move-object/from16 v38, v2

    .local v38, "this_$iv$iv":Landroidx/collection/ScatterMap;
    const/16 v39, 0x0

    .line 3810
    .local v39, "$i$f$forEachIndexed":I
    move-object/from16 v40, v2

    move-object/from16 v38, v4

    .end local v4    # "v$iv":[Ljava/lang/Object;
    .local v2, "this_$iv$iv":Landroidx/collection/ScatterMap;
    .local v38, "v$iv":[Ljava/lang/Object;
    .local v40, "this_$iv":Landroidx/collection/ScatterMap;
    iget-object v4, v2, Landroidx/collection/ScatterMap;->metadata:[J

    .line 3811
    .local v4, "m$iv$iv":[J
    move/from16 v41, v14

    array-length v14, v4

    add-int/lit8 v14, v14, -0x2

    .line 3813
    .local v14, "lastIndex$iv$iv":I
    move/from16 v42, v1

    .end local v1    # "i$iv$iv":I
    .local v42, "i$iv$iv":I
    const/4 v1, 0x0

    .restart local v1    # "i$iv$iv":I
    if-gt v1, v14, :cond_36

    .line 3814
    :goto_4
    aget-wide v43, v4, v1

    .line 3815
    .local v43, "slot$iv$iv":J
    move-wide/from16 v45, v43

    .local v45, "$this$maskEmptyOrDeleted$iv$iv$iv":J
    const/16 v47, 0x0

    .line 3816
    .local v47, "$i$f$maskEmptyOrDeleted":I
    move/from16 v49, v1

    move-object/from16 v48, v2

    move-wide/from16 v1, v45

    move-object/from16 v46, v4

    move-object/from16 v45, v5

    .end local v2    # "this_$iv$iv":Landroidx/collection/ScatterMap;
    .end local v4    # "m$iv$iv":[J
    .end local v5    # "newNode":Landroidx/compose/ui/semantics/SemanticsNode;
    .local v1, "$this$maskEmptyOrDeleted$iv$iv$iv":J
    .local v45, "newNode":Landroidx/compose/ui/semantics/SemanticsNode;
    .local v46, "m$iv$iv":[J
    .local v48, "this_$iv$iv":Landroidx/collection/ScatterMap;
    .local v49, "i$iv$iv":I
    not-long v4, v1

    shl-long v4, v4, v18

    and-long/2addr v4, v1

    and-long v1, v4, v19

    .line 3815
    .end local v1    # "$this$maskEmptyOrDeleted$iv$iv$iv":J
    .end local v47    # "$i$f$maskEmptyOrDeleted":I
    cmp-long v1, v1, v19

    if-eqz v1, :cond_35

    .line 3817
    sub-int v1, v49, v14

    not-int v1, v1

    ushr-int/lit8 v1, v1, 0x1f

    rsub-int/lit8 v1, v1, 0x8

    .line 3818
    .local v1, "bitCount$iv$iv":I
    const/4 v2, 0x0

    move-wide/from16 v50, v43

    move/from16 v43, v6

    .end local v6    # "propertyChanged":Z
    .local v2, "j$iv$iv":I
    .local v43, "propertyChanged":Z
    .local v50, "slot$iv$iv":J
    :goto_5
    if-ge v2, v1, :cond_34

    .line 3819
    and-long v4, v50, v23

    .local v4, "value$iv$iv$iv":J
    const/4 v6, 0x0

    .line 3820
    .local v6, "$i$f$isFull":I
    cmp-long v44, v4, v25

    if-gez v44, :cond_3

    move/from16 v4, v28

    goto :goto_6

    :cond_3
    move/from16 v4, v27

    .line 3819
    .end local v4    # "value$iv$iv$iv":J
    .end local v6    # "$i$f$isFull":I
    :goto_6
    if-eqz v4, :cond_33

    .line 3821
    shl-int/lit8 v4, v49, 0x3

    add-int v44, v4, v2

    .line 3822
    .local v44, "index$iv$iv":I
    move/from16 v47, v44

    .local v47, "index$iv":I
    const/16 v52, 0x0

    .line 3809
    .local v52, "$i$a$-forEachIndexed-ScatterMap$forEach$1$iv":I
    aget-object v4, v37, v47

    aget-object v5, v38, v47

    .local v5, "value":Ljava/lang/Object;
    check-cast v4, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .local v4, "key":Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    const/16 v53, 0x0

    .line 2402
    .local v53, "$i$a$-forEach-AndroidComposeViewAccessibilityDelegateCompat$sendSemanticsPropertyChangeEvents$1$1":I
    const/4 v6, 0x0

    .line 2403
    .local v6, "newlyObservingScroll":Z
    nop

    .line 2404
    sget-object v54, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    move/from16 v55, v1

    .end local v1    # "bitCount$iv$iv":I
    .local v55, "bitCount$iv$iv":I
    invoke-virtual/range {v54 .. v54}, Landroidx/compose/ui/semantics/SemanticsProperties;->getHorizontalScrollAxisRange()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 2405
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->getVerticalScrollAxisRange()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_7

    :cond_4
    move/from16 v54, v6

    goto :goto_8

    .line 2407
    :cond_5
    :goto_7
    move-object v1, v7

    check-cast v1, Ljava/util/List;

    invoke-direct {v0, v3, v1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->registerScrollingId(ILjava/util/List;)Z

    move-result v6

    move/from16 v54, v6

    .line 2409
    .end local v6    # "newlyObservingScroll":Z
    .local v54, "newlyObservingScroll":Z
    :goto_8
    if-nez v54, :cond_6

    invoke-virtual/range {v33 .. v33}, Landroidx/compose/ui/platform/SemanticsNodeCopy;->getUnmergedConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v1

    invoke-static {v1, v4}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2410
    move/from16 v57, v2

    move-object/from16 v56, v10

    move-object/from16 v58, v11

    move/from16 v59, v12

    move-object/from16 v60, v13

    move/from16 v61, v42

    move/from16 v10, v55

    move/from16 v55, v9

    move-object/from16 v42, v38

    move/from16 v9, v49

    move-object/from16 v38, v8

    move-object/from16 v49, v46

    move-object/from16 v46, v48

    move v8, v3

    move-object/from16 v48, v40

    move-object/from16 v40, v37

    move/from16 v37, v36

    move-object/from16 v36, v7

    goto/16 :goto_22

    .line 2413
    :cond_6
    nop

    .line 2414
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->getPaneTitle()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2415
    const-string/jumbo v1, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v5

    check-cast v1, Ljava/lang/String;

    .line 2418
    .local v1, "paneTitle":Ljava/lang/String;
    invoke-virtual/range {v33 .. v33}, Landroidx/compose/ui/platform/SemanticsNodeCopy;->getUnmergedConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v6

    sget-object v56, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    move/from16 v57, v2

    .end local v2    # "j$iv$iv":I
    .local v57, "j$iv$iv":I
    invoke-virtual/range {v56 .. v56}, Landroidx/compose/ui/semantics/SemanticsProperties;->getPaneTitle()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2419
    nop

    .line 2420
    nop

    .line 2421
    nop

    .line 2422
    nop

    .line 2419
    move/from16 v2, v41

    invoke-direct {v0, v3, v2, v1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendPaneChangeEvents(IILjava/lang/String;)V

    .end local v1    # "paneTitle":Ljava/lang/String;
    :cond_7
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v56, v10

    move-object/from16 v58, v11

    move/from16 v59, v12

    move-object/from16 v60, v13

    move/from16 v61, v42

    move/from16 v10, v55

    move-object v12, v4

    move-object v11, v5

    move/from16 v55, v9

    move-object/from16 v42, v38

    move/from16 v9, v49

    move-object/from16 v38, v8

    move-object/from16 v49, v46

    move-object/from16 v46, v48

    move v8, v3

    move-object/from16 v48, v40

    move-object/from16 v40, v37

    move/from16 v37, v36

    move-object/from16 v36, v7

    goto/16 :goto_21

    .line 2426
    .end local v57    # "j$iv$iv":I
    .restart local v2    # "j$iv$iv":I
    :cond_8
    move/from16 v57, v2

    .end local v2    # "j$iv$iv":I
    .restart local v57    # "j$iv$iv":I
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->getStateDescription()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x40

    if-nez v1, :cond_32

    .line 2427
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->getToggleableState()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    move-object/from16 v56, v10

    move-object/from16 v58, v11

    move/from16 v59, v12

    move-object/from16 v60, v13

    move/from16 v61, v42

    move/from16 v10, v55

    move-object v12, v4

    move-object v11, v5

    move/from16 v55, v9

    move-object/from16 v42, v38

    move/from16 v9, v49

    move-object/from16 v38, v8

    move-object/from16 v49, v46

    move-object/from16 v46, v48

    move v8, v3

    move-object/from16 v48, v40

    move-object/from16 v40, v37

    move/from16 v37, v36

    move-object/from16 v36, v7

    goto/16 :goto_20

    .line 2442
    :cond_9
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->getProgressBarRangeInfo()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2443
    nop

    .line 2444
    invoke-direct {v0, v3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsNodeIdToAccessibilityVirtualNodeId(I)I

    move-result v1

    .line 2445
    nop

    .line 2446
    move v6, v3

    .end local v3    # "id":I
    .local v6, "id":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2443
    move-object v2, v5

    .end local v5    # "value":Ljava/lang/Object;
    .local v2, "value":Ljava/lang/Object;
    const/16 v5, 0x8

    move/from16 v56, v6

    .end local v6    # "id":I
    .local v56, "id":I
    const/4 v6, 0x0

    move-object/from16 v58, v2

    .end local v2    # "value":Ljava/lang/Object;
    .local v58, "value":Ljava/lang/Object;
    const/16 v2, 0x800

    move-object/from16 v59, v4

    .end local v4    # "key":Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .local v59, "key":Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    const/4 v4, 0x0

    move/from16 v73, v36

    move-object/from16 v36, v7

    move/from16 v7, v42

    move-object/from16 v42, v38

    move-object/from16 v38, v8

    move/from16 v8, v56

    move-object/from16 v56, v10

    move/from16 v10, v55

    move/from16 v55, v9

    move/from16 v9, v49

    move-object/from16 v49, v46

    move-object/from16 v46, v48

    move-object/from16 v48, v40

    move-object/from16 v40, v37

    move/from16 v37, v73

    move-object/from16 v73, v58

    move-object/from16 v58, v11

    move-object/from16 v11, v73

    move-object/from16 v73, v59

    move/from16 v59, v12

    move-object/from16 v12, v73

    .local v7, "i$iv$iv":I
    .local v8, "id":I
    .local v9, "i$iv$iv":I
    .local v10, "bitCount$iv$iv":I
    .local v11, "value":Ljava/lang/Object;
    .local v12, "key":Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .local v36, "oldScrollObservationScopes":Ljava/util/ArrayList;
    .local v37, "j$iv$iv":I
    .local v38, "this_$iv":Landroidx/collection/IntObjectMap;
    .local v40, "k$iv":[Ljava/lang/Object;
    .local v42, "v$iv":[Ljava/lang/Object;
    .local v46, "this_$iv$iv":Landroidx/collection/ScatterMap;
    .local v48, "this_$iv":Landroidx/collection/ScatterMap;
    .local v49, "m$iv$iv":[J
    .local v55, "$i$f$forEachKey":I
    .local v56, "k$iv":[I
    .local v58, "this_$iv$iv":Landroidx/collection/IntObjectMap;
    .local v59, "$i$f$forEachIndexed":I
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEventForVirtualView$default(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)Z

    .line 2451
    nop

    .line 2452
    invoke-direct {v0, v8}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsNodeIdToAccessibilityVirtualNodeId(I)I

    move-result v1

    .line 2453
    nop

    .line 2454
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2451
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEventForVirtualView$default(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move/from16 v61, v7

    move-object/from16 v60, v13

    goto/16 :goto_21

    .line 2457
    .end local v56    # "k$iv":[I
    .end local v58    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    .end local v59    # "$i$f$forEachIndexed":I
    .restart local v3    # "id":I
    .restart local v4    # "key":Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .restart local v5    # "value":Ljava/lang/Object;
    .local v7, "oldScrollObservationScopes":Ljava/util/ArrayList;
    .local v8, "this_$iv":Landroidx/collection/IntObjectMap;
    .local v9, "$i$f$forEachKey":I
    .local v10, "k$iv":[I
    .local v11, "this_$iv$iv":Landroidx/collection/IntObjectMap;
    .local v12, "$i$f$forEachIndexed":I
    .local v36, "j$iv$iv":I
    .local v37, "k$iv":[Ljava/lang/Object;
    .local v38, "v$iv":[Ljava/lang/Object;
    .local v40, "this_$iv":Landroidx/collection/ScatterMap;
    .local v42, "i$iv$iv":I
    .local v46, "m$iv$iv":[J
    .local v48, "this_$iv$iv":Landroidx/collection/ScatterMap;
    .local v49, "i$iv$iv":I
    .local v55, "bitCount$iv$iv":I
    :cond_a
    move-object/from16 v56, v10

    move-object/from16 v58, v11

    move/from16 v59, v12

    move/from16 v10, v55

    move-object v12, v4

    move-object v11, v5

    move/from16 v55, v9

    move/from16 v9, v49

    move-object/from16 v49, v46

    move-object/from16 v46, v48

    move-object/from16 v48, v40

    move-object/from16 v40, v37

    move/from16 v37, v36

    move-object/from16 v36, v7

    move/from16 v7, v42

    move-object/from16 v42, v38

    move-object/from16 v38, v8

    move v8, v3

    .end local v3    # "id":I
    .end local v4    # "key":Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .end local v5    # "value":Ljava/lang/Object;
    .local v7, "i$iv$iv":I
    .local v8, "id":I
    .local v9, "i$iv$iv":I
    .local v10, "bitCount$iv$iv":I
    .local v11, "value":Ljava/lang/Object;
    .local v12, "key":Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .local v36, "oldScrollObservationScopes":Ljava/util/ArrayList;
    .local v37, "j$iv$iv":I
    .local v38, "this_$iv":Landroidx/collection/IntObjectMap;
    .local v40, "k$iv":[Ljava/lang/Object;
    .local v42, "v$iv":[Ljava/lang/Object;
    .local v46, "this_$iv$iv":Landroidx/collection/ScatterMap;
    .local v48, "this_$iv":Landroidx/collection/ScatterMap;
    .local v49, "m$iv$iv":[J
    .local v55, "$i$f$forEachKey":I
    .restart local v56    # "k$iv":[I
    .restart local v58    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    .restart local v59    # "$i$f$forEachIndexed":I
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->getSelected()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x4

    if-eqz v1, :cond_12

    .line 2462
    nop

    .line 2463
    invoke-virtual/range {v45 .. v45}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v1

    sget-object v4, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v4}, Landroidx/compose/ui/semantics/SemanticsProperties;->getRole()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v4

    invoke-static {v1, v4}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/semantics/Role;

    sget-object v4, Landroidx/compose/ui/semantics/Role;->Companion:Landroidx/compose/ui/semantics/Role$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/semantics/Role$Companion;->getTab-o7Vup1c()I

    move-result v4

    if-nez v1, :cond_b

    move/from16 v1, v27

    goto :goto_9

    :cond_b
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/Role;->unbox-impl()I

    move-result v1

    invoke-static {v1, v4}, Landroidx/compose/ui/semantics/Role;->equals-impl0(II)Z

    move-result v1

    :goto_9
    if-eqz v1, :cond_11

    .line 2465
    nop

    .line 2466
    invoke-virtual/range {v45 .. v45}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v1

    sget-object v2, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsProperties;->getSelected()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v1

    .line 2467
    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 2466
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2470
    nop

    .line 2471
    invoke-direct {v0, v8}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsNodeIdToAccessibilityVirtualNodeId(I)I

    move-result v1

    .line 2472
    nop

    .line 2470
    invoke-direct {v0, v1, v3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->createEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 2469
    nop

    .line 2478
    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual/range {v45 .. v45}, Landroidx/compose/ui/semantics/SemanticsNode;->copyWithMergingEnabled$ui()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v2

    .line 2482
    .local v2, "mergedNode":Landroidx/compose/ui/semantics/SemanticsNode;
    nop

    .line 2480
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v3

    .line 2481
    sget-object v4, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v4}, Landroidx/compose/ui/semantics/SemanticsProperties;->getContentDescription()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v4

    invoke-static {v3, v4}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v60, v3

    check-cast v60, Ljava/util/List;

    .line 2482
    const-string v3, ","

    if-eqz v60, :cond_c

    .line 2480
    nop

    .line 2482
    move-object/from16 v61, v3

    check-cast v61, Ljava/lang/CharSequence;

    const/16 v67, 0x3e

    const/16 v68, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    const/16 v65, 0x0

    const/16 v66, 0x0

    invoke-static/range {v60 .. v68}, Landroidx/compose/ui/util/ListUtilsKt;->fastJoinToString$default(Ljava/util/List;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_a

    :cond_c
    move-object/from16 v4, v34

    .line 2479
    :goto_a
    nop

    .line 2486
    .local v4, "contentDescription":Ljava/lang/String;
    nop

    .line 2484
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v5

    .line 2485
    sget-object v6, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v6}, Landroidx/compose/ui/semantics/SemanticsProperties;->getText()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v6

    invoke-static {v5, v6}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v60, v5

    check-cast v60, Ljava/util/List;

    .line 2486
    if-eqz v60, :cond_d

    .line 2484
    nop

    .line 2486
    move-object/from16 v61, v3

    check-cast v61, Ljava/lang/CharSequence;

    const/16 v67, 0x3e

    const/16 v68, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    const/16 v65, 0x0

    const/16 v66, 0x0

    invoke-static/range {v60 .. v68}, Landroidx/compose/ui/util/ListUtilsKt;->fastJoinToString$default(Ljava/util/List;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_b

    :cond_d
    move-object/from16 v3, v34

    .line 2483
    :goto_b
    nop

    .line 2487
    .local v3, "text":Ljava/lang/String;
    if-eqz v4, :cond_e

    move-object v5, v4

    .line 3528
    .local v5, "it":Ljava/lang/String;
    const/4 v6, 0x0

    .line 2487
    .local v6, "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$sendSemanticsPropertyChangeEvents$1$1$1":I
    move-object/from16 v60, v2

    .end local v2    # "mergedNode":Landroidx/compose/ui/semantics/SemanticsNode;
    .local v60, "mergedNode":Landroidx/compose/ui/semantics/SemanticsNode;
    move-object v2, v5

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .end local v5    # "it":Ljava/lang/String;
    .end local v6    # "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$sendSemanticsPropertyChangeEvents$1$1$1":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_c

    .end local v60    # "mergedNode":Landroidx/compose/ui/semantics/SemanticsNode;
    .restart local v2    # "mergedNode":Landroidx/compose/ui/semantics/SemanticsNode;
    :cond_e
    move-object/from16 v60, v2

    .line 2488
    .end local v2    # "mergedNode":Landroidx/compose/ui/semantics/SemanticsNode;
    .restart local v60    # "mergedNode":Landroidx/compose/ui/semantics/SemanticsNode;
    :goto_c
    if-eqz v3, :cond_f

    move-object v2, v3

    .line 3528
    .local v2, "it":Ljava/lang/String;
    const/4 v5, 0x0

    .line 2488
    .local v5, "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$sendSemanticsPropertyChangeEvents$1$1$2":I
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .end local v2    # "it":Ljava/lang/String;
    .end local v5    # "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$sendSemanticsPropertyChangeEvents$1$1$2":I
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2489
    :cond_f
    invoke-direct {v0, v1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    .end local v1    # "event":Landroid/view/accessibility/AccessibilityEvent;
    .end local v3    # "text":Ljava/lang/String;
    .end local v4    # "contentDescription":Ljava/lang/String;
    .end local v60    # "mergedNode":Landroidx/compose/ui/semantics/SemanticsNode;
    goto :goto_d

    .line 2492
    :cond_10
    nop

    .line 2493
    invoke-direct {v0, v8}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsNodeIdToAccessibilityVirtualNodeId(I)I

    move-result v1

    .line 2494
    nop

    .line 2495
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2492
    const/16 v5, 0x8

    const/4 v6, 0x0

    const/16 v2, 0x800

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEventForVirtualView$default(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)Z

    move-result v1

    goto :goto_d

    .line 2499
    :cond_11
    nop

    .line 2500
    invoke-direct {v0, v8}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsNodeIdToAccessibilityVirtualNodeId(I)I

    move-result v1

    .line 2501
    nop

    .line 2502
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2499
    const/16 v5, 0x8

    const/4 v6, 0x0

    const/16 v2, 0x800

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEventForVirtualView$default(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)Z

    .line 2507
    nop

    .line 2508
    invoke-direct {v0, v8}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsNodeIdToAccessibilityVirtualNodeId(I)I

    move-result v1

    .line 2509
    nop

    .line 2510
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2507
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEventForVirtualView$default(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)Z

    move-result v1

    :goto_d
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move/from16 v61, v7

    move-object/from16 v60, v13

    goto/16 :goto_21

    .line 2514
    :cond_12
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->getContentDescription()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 2515
    nop

    .line 2516
    invoke-direct {v0, v8}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsNodeIdToAccessibilityVirtualNodeId(I)I

    move-result v1

    .line 2517
    nop

    .line 2518
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2519
    const-string/jumbo v3, "null cannot be cast to non-null type kotlin.collections.List<kotlin.String>"

    invoke-static {v11, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v11

    check-cast v3, Ljava/util/List;

    .line 2515
    const/16 v4, 0x800

    invoke-direct {v0, v1, v4, v2, v3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEventForVirtualView(IILjava/lang/Integer;Ljava/util/List;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move/from16 v61, v7

    move-object/from16 v60, v13

    goto/16 :goto_21

    .line 2522
    :cond_13
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->getEditableText()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const v2, 0x186a0

    const-string v3, ""

    if-eqz v1, :cond_21

    .line 2523
    invoke-virtual/range {v45 .. v45}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v1

    sget-object v4, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v4}, Landroidx/compose/ui/semantics/SemanticsActions;->getSetText()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 2525
    invoke-virtual/range {v33 .. v33}, Landroidx/compose/ui/platform/SemanticsNodeCopy;->getUnmergedConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getTextForTextField(Landroidx/compose/ui/semantics/SemanticsConfiguration;)Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v1

    if-eqz v1, :cond_14

    check-cast v1, Ljava/lang/CharSequence;

    goto :goto_e

    :cond_14
    move-object v1, v3

    check-cast v1, Ljava/lang/CharSequence;

    :goto_e
    move-object v6, v1

    .line 2526
    .local v6, "oldText":Ljava/lang/CharSequence;
    invoke-virtual/range {v45 .. v45}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getTextForTextField(Landroidx/compose/ui/semantics/SemanticsConfiguration;)Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v1

    if-eqz v1, :cond_15

    check-cast v1, Ljava/lang/CharSequence;

    goto :goto_f

    :cond_15
    move-object v1, v3

    check-cast v1, Ljava/lang/CharSequence;

    .line 2527
    .local v1, "newText":Ljava/lang/CharSequence;
    :goto_f
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->trimToSize(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 2529
    .local v5, "trimmedNewText":Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .line 2531
    .local v2, "startCount":I
    const/4 v3, 0x0

    .line 2532
    .local v3, "endCount":I
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 2533
    .local v4, "oldTextLen":I
    move-object/from16 v60, v13

    .end local v13    # "m$iv$iv":[J
    .local v60, "m$iv$iv":[J
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v13

    .line 2534
    .local v13, "newTextLen":I
    move/from16 v61, v7

    .end local v7    # "i$iv$iv":I
    .local v61, "i$iv$iv":I
    invoke-static {v4, v13}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v7

    .line 2535
    .local v7, "minLength":I
    :goto_10
    if-ge v2, v7, :cond_17

    .line 2536
    move/from16 v62, v3

    .end local v3    # "endCount":I
    .local v62, "endCount":I
    invoke-interface {v6, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    move/from16 v63, v4

    .end local v4    # "oldTextLen":I
    .local v63, "oldTextLen":I
    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_16

    .line 2537
    goto :goto_11

    .line 2539
    :cond_16
    add-int/lit8 v2, v2, 0x1

    move/from16 v3, v62

    move/from16 v4, v63

    goto :goto_10

    .line 2535
    .end local v62    # "endCount":I
    .end local v63    # "oldTextLen":I
    .restart local v3    # "endCount":I
    .restart local v4    # "oldTextLen":I
    :cond_17
    move/from16 v62, v3

    move/from16 v63, v4

    .line 2543
    .end local v3    # "endCount":I
    .end local v4    # "oldTextLen":I
    .restart local v62    # "endCount":I
    .restart local v63    # "oldTextLen":I
    :goto_11
    move/from16 v3, v62

    .end local v62    # "endCount":I
    .restart local v3    # "endCount":I
    :goto_12
    sub-int v4, v7, v2

    if-ge v3, v4, :cond_19

    .line 2544
    nop

    .line 2545
    add-int/lit8 v4, v63, -0x1

    sub-int/2addr v4, v3

    invoke-interface {v6, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 2546
    add-int/lit8 v62, v13, -0x1

    move/from16 v64, v3

    .end local v3    # "endCount":I
    .local v64, "endCount":I
    sub-int v3, v62, v64

    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 2545
    if-eq v4, v3, :cond_18

    .line 2548
    goto :goto_13

    .line 2550
    :cond_18
    add-int/lit8 v3, v64, 0x1

    .end local v64    # "endCount":I
    .restart local v3    # "endCount":I
    goto :goto_12

    .line 2543
    :cond_19
    move/from16 v64, v3

    .line 2552
    .end local v3    # "endCount":I
    .restart local v64    # "endCount":I
    :goto_13
    sub-int v4, v63, v64

    sub-int v3, v4, v2

    .line 2553
    .local v3, "removedCount":I
    sub-int v4, v13, v64

    sub-int/2addr v4, v2

    .line 2556
    .local v4, "addedCount":I
    move-object/from16 v62, v1

    .end local v1    # "newText":Ljava/lang/CharSequence;
    .local v62, "newText":Ljava/lang/CharSequence;
    invoke-virtual/range {v33 .. v33}, Landroidx/compose/ui/platform/SemanticsNodeCopy;->getUnmergedConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v1

    sget-object v65, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    move/from16 v66, v7

    .end local v7    # "minLength":I
    .local v66, "minLength":I
    invoke-virtual/range {v65 .. v65}, Landroidx/compose/ui/semantics/SemanticsProperties;->getPassword()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v1

    .line 2555
    move v7, v1

    .line 2558
    .local v7, "oldNodeIsPassword":Z
    invoke-virtual/range {v45 .. v45}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v1

    sget-object v65, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    move/from16 v67, v7

    .end local v7    # "oldNodeIsPassword":Z
    .local v67, "oldNodeIsPassword":Z
    invoke-virtual/range {v65 .. v65}, Landroidx/compose/ui/semantics/SemanticsProperties;->getPassword()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v1

    .line 2557
    move v7, v1

    .line 2560
    .local v7, "newNodeIsPassword":Z
    invoke-virtual/range {v33 .. v33}, Landroidx/compose/ui/platform/SemanticsNodeCopy;->getUnmergedConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v1

    sget-object v65, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    move/from16 v68, v7

    .end local v7    # "newNodeIsPassword":Z
    .local v68, "newNodeIsPassword":Z
    invoke-virtual/range {v65 .. v65}, Landroidx/compose/ui/semantics/SemanticsProperties;->getEditableText()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v1

    .line 2559
    move v7, v1

    .line 2565
    .local v7, "oldNodeIsTextfield":Z
    if-eqz v7, :cond_1a

    if-nez v67, :cond_1a

    if-eqz v68, :cond_1a

    move/from16 v1, v28

    goto :goto_14

    :cond_1a
    move/from16 v1, v27

    .line 2564
    :goto_14
    move/from16 v65, v1

    .line 2567
    .local v65, "becamePasswordNode":Z
    if-eqz v7, :cond_1b

    if-eqz v67, :cond_1b

    if-nez v68, :cond_1b

    move/from16 v1, v28

    goto :goto_15

    :cond_1b
    move/from16 v1, v27

    .line 2566
    :goto_15
    move/from16 v69, v1

    .line 2569
    .local v69, "becameNotPasswordNode":Z
    if-nez v65, :cond_1d

    if-eqz v69, :cond_1c

    move/from16 v70, v7

    goto :goto_16

    .line 2589
    :cond_1c
    nop

    .line 2590
    invoke-direct {v0, v8}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsNodeIdToAccessibilityVirtualNodeId(I)I

    move-result v1

    .line 2591
    nop

    .line 2589
    move/from16 v70, v7

    .end local v7    # "oldNodeIsTextfield":Z
    .local v70, "oldNodeIsTextfield":Z
    const/16 v7, 0x10

    invoke-direct {v0, v1, v7}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->createEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 2593
    move-object v7, v1

    .local v7, "$this$sendSemanticsPropertyChangeEvents_u24lambda_u240_u241_u242":Landroid/view/accessibility/AccessibilityEvent;
    const/16 v71, 0x0

    .line 2594
    .local v71, "$i$a$-apply-AndroidComposeViewAccessibilityDelegateCompat$sendSemanticsPropertyChangeEvents$1$1$event$1":I
    invoke-virtual {v7, v2}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 2595
    invoke-virtual {v7, v3}, Landroid/view/accessibility/AccessibilityEvent;->setRemovedCount(I)V

    .line 2596
    invoke-virtual {v7, v4}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    .line 2597
    invoke-virtual {v7, v6}, Landroid/view/accessibility/AccessibilityEvent;->setBeforeText(Ljava/lang/CharSequence;)V

    .line 2598
    move-object/from16 v72, v1

    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2599
    nop

    .line 2593
    .end local v7    # "$this$sendSemanticsPropertyChangeEvents_u24lambda_u240_u241_u242":Landroid/view/accessibility/AccessibilityEvent;
    .end local v71    # "$i$a$-apply-AndroidComposeViewAccessibilityDelegateCompat$sendSemanticsPropertyChangeEvents$1$1$event$1":I
    move v7, v2

    move/from16 v71, v3

    move-object/from16 v1, v72

    move/from16 v72, v4

    goto :goto_17

    .line 2569
    .end local v70    # "oldNodeIsTextfield":Z
    .local v7, "oldNodeIsTextfield":Z
    :cond_1d
    move/from16 v70, v7

    .line 2580
    .end local v7    # "oldNodeIsTextfield":Z
    .restart local v70    # "oldNodeIsTextfield":Z
    :goto_16
    nop

    .line 2582
    invoke-direct {v0, v8}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsNodeIdToAccessibilityVirtualNodeId(I)I

    move-result v1

    .line 2583
    move v7, v2

    .end local v2    # "startCount":I
    .local v7, "startCount":I
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2584
    move/from16 v71, v3

    .end local v3    # "removedCount":I
    .local v71, "removedCount":I
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2585
    move/from16 v72, v4

    .end local v4    # "addedCount":I
    .local v72, "addedCount":I
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 2586
    nop

    .line 2580
    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->createTextSelectionChangedEvent(ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/CharSequence;)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 2569
    :goto_17
    nop

    .line 2568
    nop

    .line 2601
    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    const-string v2, "android.widget.EditText"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2602
    invoke-direct {v0, v1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 2606
    if-nez v65, :cond_1e

    if-eqz v69, :cond_1f

    .line 2608
    :cond_1e
    invoke-virtual/range {v45 .. v45}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v2

    sget-object v3, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsProperties;->getTextSelectionRange()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->get(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/text/TextRange;

    invoke-virtual {v2}, Landroidx/compose/ui/text/TextRange;->unbox-impl()J

    move-result-wide v2

    .line 2607
    nop

    .line 2609
    .local v2, "textRange":J
    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 2610
    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 2611
    invoke-direct {v0, v1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .end local v1    # "event":Landroid/view/accessibility/AccessibilityEvent;
    .end local v2    # "textRange":J
    .end local v5    # "trimmedNewText":Ljava/lang/CharSequence;
    .end local v6    # "oldText":Ljava/lang/CharSequence;
    .end local v7    # "startCount":I
    .end local v13    # "newTextLen":I
    .end local v62    # "newText":Ljava/lang/CharSequence;
    .end local v63    # "oldTextLen":I
    .end local v64    # "endCount":I
    .end local v65    # "becamePasswordNode":Z
    .end local v66    # "minLength":I
    .end local v67    # "oldNodeIsPassword":Z
    .end local v68    # "newNodeIsPassword":Z
    .end local v69    # "becameNotPasswordNode":Z
    .end local v70    # "oldNodeIsTextfield":Z
    .end local v71    # "removedCount":I
    .end local v72    # "addedCount":I
    :cond_1f
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_21

    .line 2614
    .end local v60    # "m$iv$iv":[J
    .end local v61    # "i$iv$iv":I
    .local v7, "i$iv$iv":I
    .local v13, "m$iv$iv":[J
    :cond_20
    move/from16 v61, v7

    move-object/from16 v60, v13

    .line 2615
    .end local v7    # "i$iv$iv":I
    .end local v13    # "m$iv$iv":[J
    .restart local v60    # "m$iv$iv":[J
    .restart local v61    # "i$iv$iv":I
    invoke-direct {v0, v8}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsNodeIdToAccessibilityVirtualNodeId(I)I

    move-result v1

    .line 2616
    nop

    .line 2617
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2614
    const/16 v5, 0x8

    const/4 v6, 0x0

    const/16 v2, 0x800

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEventForVirtualView$default(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    goto/16 :goto_21

    .line 2622
    .end local v60    # "m$iv$iv":[J
    .end local v61    # "i$iv$iv":I
    .restart local v7    # "i$iv$iv":I
    .restart local v13    # "m$iv$iv":[J
    :cond_21
    move/from16 v61, v7

    move-object/from16 v60, v13

    .end local v7    # "i$iv$iv":I
    .end local v13    # "m$iv$iv":[J
    .restart local v60    # "m$iv$iv":[J
    .restart local v61    # "i$iv$iv":I
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->getTextSelectionRange()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 2623
    invoke-virtual/range {v45 .. v45}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getTextForTextField(Landroidx/compose/ui/semantics/SemanticsConfiguration;)Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v1

    if-eqz v1, :cond_23

    invoke-virtual {v1}, Landroidx/compose/ui/text/AnnotatedString;->getText()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_22

    goto :goto_18

    :cond_22
    move-object v3, v1

    :cond_23
    :goto_18
    move-object v6, v3

    .line 2625
    .local v6, "newText":Ljava/lang/String;
    invoke-virtual/range {v45 .. v45}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v1

    sget-object v3, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsProperties;->getTextSelectionRange()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->get(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/text/TextRange;

    invoke-virtual {v1}, Landroidx/compose/ui/text/TextRange;->unbox-impl()J

    move-result-wide v3

    .line 2624
    move-wide/from16 v62, v3

    .line 2627
    .local v62, "textRange":J
    nop

    .line 2628
    invoke-direct {v0, v8}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsNodeIdToAccessibilityVirtualNodeId(I)I

    move-result v1

    .line 2629
    invoke-static/range {v62 .. v63}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2630
    invoke-static/range {v62 .. v63}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 2631
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 2632
    move-object v7, v6

    check-cast v7, Ljava/lang/CharSequence;

    invoke-direct {v0, v7, v2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->trimToSize(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 2627
    move-object/from16 v73, v5

    move-object v5, v2

    move-object v2, v3

    move-object v3, v4

    move-object/from16 v4, v73

    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->createTextSelectionChangedEvent(ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/CharSequence;)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 2626
    nop

    .line 2634
    .restart local v1    # "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-direct {v0, v1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 2635
    invoke-virtual/range {v45 .. v45}, Landroidx/compose/ui/semantics/SemanticsNode;->getId()I

    move-result v2

    invoke-direct {v0, v2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendPendingTextTraversedAtGranularityEvent(I)V

    .end local v1    # "event":Landroid/view/accessibility/AccessibilityEvent;
    .end local v6    # "newText":Ljava/lang/String;
    .end local v62    # "textRange":J
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_21

    .line 2637
    :cond_24
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->getHorizontalScrollAxisRange()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    .line 2638
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->getVerticalScrollAxisRange()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    goto/16 :goto_1f

    .line 2652
    :cond_25
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->getFocused()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 2653
    const-string/jumbo v1, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v11

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 2654
    nop

    .line 2655
    nop

    .line 2656
    invoke-virtual/range {v45 .. v45}, Landroidx/compose/ui/semantics/SemanticsNode;->getId()I

    move-result v1

    invoke-direct {v0, v1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsNodeIdToAccessibilityVirtualNodeId(I)I

    move-result v1

    .line 2657
    nop

    .line 2655
    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->createEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 2654
    invoke-direct {v0, v1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 2664
    :cond_26
    nop

    .line 2665
    invoke-virtual/range {v45 .. v45}, Landroidx/compose/ui/semantics/SemanticsNode;->getId()I

    move-result v1

    invoke-direct {v0, v1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsNodeIdToAccessibilityVirtualNodeId(I)I

    move-result v1

    .line 2666
    nop

    .line 2667
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2664
    const/16 v5, 0x8

    const/4 v6, 0x0

    const/16 v2, 0x800

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEventForVirtualView$default(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    goto/16 :goto_21

    .line 2670
    :cond_27
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsActions;->getCustomActions()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 2671
    invoke-virtual/range {v45 .. v45}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v1

    sget-object v2, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsActions;->getCustomActions()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->get(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 2672
    .local v1, "actions":Ljava/util/List;
    invoke-virtual/range {v33 .. v33}, Landroidx/compose/ui/platform/SemanticsNodeCopy;->getUnmergedConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v2

    sget-object v3, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsActions;->getCustomActions()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v3

    invoke-static {v2, v3}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 2673
    .local v2, "oldActions":Ljava/util/List;
    if-eqz v2, :cond_2c

    .line 2675
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v3, Ljava/util/Set;

    .line 2676
    .local v3, "labels":Ljava/util/Set;
    move-object v4, v1

    .local v4, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 3823
    .local v5, "$i$f$fastForEach":I
    const/4 v6, 0x0

    .local v6, "index$iv":I
    move-object v7, v4

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v7

    :goto_19
    if-ge v6, v7, :cond_28

    .line 3824
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    .line 3825
    .local v13, "item$iv":Ljava/lang/Object;
    move-object/from16 v62, v13

    check-cast v62, Landroidx/compose/ui/semantics/CustomAccessibilityAction;

    .local v62, "action":Landroidx/compose/ui/semantics/CustomAccessibilityAction;
    const/16 v63, 0x0

    .line 2676
    .local v63, "$i$a$-fastForEach-AndroidComposeViewAccessibilityDelegateCompat$sendSemanticsPropertyChangeEvents$1$1$3":I
    move-object/from16 v64, v1

    .end local v1    # "actions":Ljava/util/List;
    .local v64, "actions":Ljava/util/List;
    invoke-virtual/range {v62 .. v62}, Landroidx/compose/ui/semantics/CustomAccessibilityAction;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3825
    .end local v62    # "action":Landroidx/compose/ui/semantics/CustomAccessibilityAction;
    .end local v63    # "$i$a$-fastForEach-AndroidComposeViewAccessibilityDelegateCompat$sendSemanticsPropertyChangeEvents$1$1$3":I
    nop

    .line 3823
    .end local v13    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, v64

    goto :goto_19

    .end local v64    # "actions":Ljava/util/List;
    .restart local v1    # "actions":Ljava/util/List;
    :cond_28
    move-object/from16 v64, v1

    .line 3827
    .end local v1    # "actions":Ljava/util/List;
    .end local v6    # "index$iv":I
    .restart local v64    # "actions":Ljava/util/List;
    nop

    .line 2677
    .end local v4    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v5    # "$i$f$fastForEach":I
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v1, Ljava/util/Set;

    .line 2678
    .local v1, "oldLabels":Ljava/util/Set;
    move-object v4, v2

    .restart local v4    # "$this$fastForEach$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 3828
    .restart local v5    # "$i$f$fastForEach":I
    const/4 v6, 0x0

    .restart local v6    # "index$iv":I
    move-object v7, v4

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v7

    :goto_1a
    if-ge v6, v7, :cond_29

    .line 3829
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    .line 3830
    .restart local v13    # "item$iv":Ljava/lang/Object;
    move-object/from16 v62, v13

    check-cast v62, Landroidx/compose/ui/semantics/CustomAccessibilityAction;

    .restart local v62    # "action":Landroidx/compose/ui/semantics/CustomAccessibilityAction;
    const/16 v63, 0x0

    .line 2678
    .local v63, "$i$a$-fastForEach-AndroidComposeViewAccessibilityDelegateCompat$sendSemanticsPropertyChangeEvents$1$1$4":I
    move-object/from16 v65, v2

    .end local v2    # "oldActions":Ljava/util/List;
    .local v65, "oldActions":Ljava/util/List;
    invoke-virtual/range {v62 .. v62}, Landroidx/compose/ui/semantics/CustomAccessibilityAction;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3830
    .end local v62    # "action":Landroidx/compose/ui/semantics/CustomAccessibilityAction;
    .end local v63    # "$i$a$-fastForEach-AndroidComposeViewAccessibilityDelegateCompat$sendSemanticsPropertyChangeEvents$1$1$4":I
    nop

    .line 3828
    .end local v13    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v2, v65

    goto :goto_1a

    .end local v65    # "oldActions":Ljava/util/List;
    .restart local v2    # "oldActions":Ljava/util/List;
    :cond_29
    move-object/from16 v65, v2

    .line 3832
    .end local v2    # "oldActions":Ljava/util/List;
    .end local v6    # "index$iv":I
    .restart local v65    # "oldActions":Ljava/util/List;
    nop

    .line 2679
    .end local v4    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v5    # "$i$f$fastForEach":I
    nop

    .line 2680
    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v3, v2}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_2b

    move-object v2, v3

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v1, v2}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_2a

    goto :goto_1b

    :cond_2a
    move/from16 v2, v27

    goto :goto_1c

    :cond_2b
    :goto_1b
    move/from16 v2, v28

    .line 2679
    :goto_1c
    move/from16 v43, v2

    .end local v1    # "oldLabels":Ljava/util/Set;
    .end local v3    # "labels":Ljava/util/Set;
    goto :goto_1d

    .line 2681
    .end local v64    # "actions":Ljava/util/List;
    .end local v65    # "oldActions":Ljava/util/List;
    .local v1, "actions":Ljava/util/List;
    .restart local v2    # "oldActions":Ljava/util/List;
    :cond_2c
    move-object/from16 v64, v1

    move-object/from16 v65, v2

    .end local v1    # "actions":Ljava/util/List;
    .end local v2    # "oldActions":Ljava/util/List;
    .restart local v64    # "actions":Ljava/util/List;
    .restart local v65    # "oldActions":Ljava/util/List;
    move-object/from16 v1, v64

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2d

    .line 2682
    const/16 v43, 0x1

    .end local v64    # "actions":Ljava/util/List;
    .end local v65    # "oldActions":Ljava/util/List;
    :cond_2d
    :goto_1d
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_21

    .line 2688
    :cond_2e
    nop

    .line 2689
    instance-of v1, v11, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz v1, :cond_30

    .line 2690
    move-object v1, v11

    check-cast v1, Landroidx/compose/ui/semantics/AccessibilityAction;

    invoke-virtual/range {v33 .. v33}, Landroidx/compose/ui/platform/SemanticsNodeCopy;->getUnmergedConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v2

    invoke-static {v2, v12}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->access$accessibilityEquals(Landroidx/compose/ui/semantics/AccessibilityAction;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    move/from16 v1, v28

    goto :goto_1e

    :cond_2f
    move/from16 v1, v27

    goto :goto_1e

    .line 2692
    :cond_30
    move/from16 v1, v28

    .line 2688
    :goto_1e
    nop

    .end local v43    # "propertyChanged":Z
    .local v1, "propertyChanged":Z
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v43, v1

    goto/16 :goto_21

    .line 2639
    .end local v1    # "propertyChanged":Z
    .restart local v43    # "propertyChanged":Z
    :cond_31
    :goto_1f
    invoke-virtual/range {v45 .. v45}, Landroidx/compose/ui/semantics/SemanticsNode;->getLayoutNode$ui()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->notifySubtreeAccessibilityStateChangedIfNeeded(Landroidx/compose/ui/node/LayoutNode;)V

    .line 2641
    iget-object v1, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->scrollObservationScopes:Ljava/util/List;

    invoke-static {v1, v8}, Landroidx/compose/ui/platform/SemanticsUtils_androidKt;->findById(Ljava/util/List;I)Landroidx/compose/ui/platform/ScrollObservationScope;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 2642
    .local v1, "scope":Landroidx/compose/ui/platform/ScrollObservationScope;
    nop

    .line 2643
    invoke-virtual/range {v45 .. v45}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v2

    .line 2644
    sget-object v3, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsProperties;->getHorizontalScrollAxisRange()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v3

    .line 2643
    invoke-static {v2, v3}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/semantics/ScrollAxisRange;

    .line 2642
    invoke-virtual {v1, v2}, Landroidx/compose/ui/platform/ScrollObservationScope;->setHorizontalScrollAxisRange(Landroidx/compose/ui/semantics/ScrollAxisRange;)V

    .line 2646
    nop

    .line 2647
    invoke-virtual/range {v45 .. v45}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v2

    .line 2648
    sget-object v3, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsProperties;->getVerticalScrollAxisRange()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v3

    .line 2647
    invoke-static {v2, v3}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/semantics/ScrollAxisRange;

    .line 2646
    invoke-virtual {v1, v2}, Landroidx/compose/ui/platform/ScrollObservationScope;->setVerticalScrollAxisRange(Landroidx/compose/ui/semantics/ScrollAxisRange;)V

    .line 2650
    invoke-direct {v0, v1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->scheduleScrollEventIfNeeded(Landroidx/compose/ui/platform/ScrollObservationScope;)V

    .end local v1    # "scope":Landroidx/compose/ui/platform/ScrollObservationScope;
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_21

    .line 2426
    .end local v56    # "k$iv":[I
    .end local v58    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    .end local v59    # "$i$f$forEachIndexed":I
    .end local v60    # "m$iv$iv":[J
    .end local v61    # "i$iv$iv":I
    .local v3, "id":I
    .local v4, "key":Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .local v5, "value":Ljava/lang/Object;
    .local v7, "oldScrollObservationScopes":Ljava/util/ArrayList;
    .local v8, "this_$iv":Landroidx/collection/IntObjectMap;
    .local v9, "$i$f$forEachKey":I
    .local v10, "k$iv":[I
    .local v11, "this_$iv$iv":Landroidx/collection/IntObjectMap;
    .local v12, "$i$f$forEachIndexed":I
    .local v13, "m$iv$iv":[J
    .local v36, "j$iv$iv":I
    .local v37, "k$iv":[Ljava/lang/Object;
    .local v38, "v$iv":[Ljava/lang/Object;
    .local v40, "this_$iv":Landroidx/collection/ScatterMap;
    .local v42, "i$iv$iv":I
    .local v46, "m$iv$iv":[J
    .local v48, "this_$iv$iv":Landroidx/collection/ScatterMap;
    .local v49, "i$iv$iv":I
    .local v55, "bitCount$iv$iv":I
    :cond_32
    move-object/from16 v56, v10

    move-object/from16 v58, v11

    move/from16 v59, v12

    move-object/from16 v60, v13

    move/from16 v61, v42

    move/from16 v10, v55

    move-object v12, v4

    move-object v11, v5

    move/from16 v55, v9

    move-object/from16 v42, v38

    move/from16 v9, v49

    move-object/from16 v38, v8

    move-object/from16 v49, v46

    move-object/from16 v46, v48

    move v8, v3

    move-object/from16 v48, v40

    move-object/from16 v40, v37

    move/from16 v37, v36

    move-object/from16 v36, v7

    .line 2428
    .end local v3    # "id":I
    .end local v4    # "key":Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .end local v5    # "value":Ljava/lang/Object;
    .end local v7    # "oldScrollObservationScopes":Ljava/util/ArrayList;
    .end local v13    # "m$iv$iv":[J
    .local v8, "id":I
    .local v9, "i$iv$iv":I
    .local v10, "bitCount$iv$iv":I
    .local v11, "value":Ljava/lang/Object;
    .local v12, "key":Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .local v36, "oldScrollObservationScopes":Ljava/util/ArrayList;
    .local v37, "j$iv$iv":I
    .local v38, "this_$iv":Landroidx/collection/IntObjectMap;
    .local v40, "k$iv":[Ljava/lang/Object;
    .local v42, "v$iv":[Ljava/lang/Object;
    .local v46, "this_$iv$iv":Landroidx/collection/ScatterMap;
    .local v48, "this_$iv":Landroidx/collection/ScatterMap;
    .local v49, "m$iv$iv":[J
    .local v55, "$i$f$forEachKey":I
    .restart local v56    # "k$iv":[I
    .restart local v58    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    .restart local v59    # "$i$f$forEachIndexed":I
    .restart local v60    # "m$iv$iv":[J
    .restart local v61    # "i$iv$iv":I
    :goto_20
    nop

    .line 2429
    invoke-direct {v0, v8}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsNodeIdToAccessibilityVirtualNodeId(I)I

    move-result v1

    .line 2430
    nop

    .line 2431
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2428
    const/16 v5, 0x8

    const/4 v6, 0x0

    const/16 v2, 0x800

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEventForVirtualView$default(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)Z

    .line 2436
    nop

    .line 2437
    invoke-direct {v0, v8}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsNodeIdToAccessibilityVirtualNodeId(I)I

    move-result v1

    .line 2438
    nop

    .line 2439
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2436
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEventForVirtualView$default(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2696
    :goto_21
    nop

    .line 3809
    .end local v11    # "value":Ljava/lang/Object;
    .end local v12    # "key":Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .end local v53    # "$i$a$-forEach-AndroidComposeViewAccessibilityDelegateCompat$sendSemanticsPropertyChangeEvents$1$1":I
    .end local v54    # "newlyObservingScroll":Z
    :goto_22
    nop

    .line 3822
    .end local v47    # "index$iv":I
    .end local v52    # "$i$a$-forEachIndexed-ScatterMap$forEach$1$iv":I
    goto :goto_23

    .line 3819
    .end local v44    # "index$iv$iv":I
    .end local v55    # "$i$f$forEachKey":I
    .end local v56    # "k$iv":[I
    .end local v57    # "j$iv$iv":I
    .end local v58    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    .end local v59    # "$i$f$forEachIndexed":I
    .end local v60    # "m$iv$iv":[J
    .end local v61    # "i$iv$iv":I
    .local v1, "bitCount$iv$iv":I
    .local v2, "j$iv$iv":I
    .restart local v3    # "id":I
    .restart local v7    # "oldScrollObservationScopes":Ljava/util/ArrayList;
    .local v8, "this_$iv":Landroidx/collection/IntObjectMap;
    .local v9, "$i$f$forEachKey":I
    .local v10, "k$iv":[I
    .local v11, "this_$iv$iv":Landroidx/collection/IntObjectMap;
    .local v12, "$i$f$forEachIndexed":I
    .restart local v13    # "m$iv$iv":[J
    .local v36, "j$iv$iv":I
    .local v37, "k$iv":[Ljava/lang/Object;
    .local v38, "v$iv":[Ljava/lang/Object;
    .local v40, "this_$iv":Landroidx/collection/ScatterMap;
    .local v42, "i$iv$iv":I
    .local v46, "m$iv$iv":[J
    .local v48, "this_$iv$iv":Landroidx/collection/ScatterMap;
    .local v49, "i$iv$iv":I
    :cond_33
    move/from16 v57, v2

    move/from16 v55, v9

    move-object/from16 v56, v10

    move-object/from16 v58, v11

    move/from16 v59, v12

    move-object/from16 v60, v13

    move/from16 v61, v42

    move/from16 v9, v49

    move v10, v1

    move-object/from16 v42, v38

    move-object/from16 v49, v46

    move-object/from16 v46, v48

    move-object/from16 v38, v8

    move-object/from16 v48, v40

    move v8, v3

    move-object/from16 v40, v37

    move/from16 v37, v36

    move-object/from16 v36, v7

    .line 3833
    .end local v1    # "bitCount$iv$iv":I
    .end local v2    # "j$iv$iv":I
    .end local v3    # "id":I
    .end local v7    # "oldScrollObservationScopes":Ljava/util/ArrayList;
    .end local v11    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    .end local v12    # "$i$f$forEachIndexed":I
    .end local v13    # "m$iv$iv":[J
    .local v8, "id":I
    .local v9, "i$iv$iv":I
    .local v10, "bitCount$iv$iv":I
    .local v36, "oldScrollObservationScopes":Ljava/util/ArrayList;
    .local v37, "j$iv$iv":I
    .local v38, "this_$iv":Landroidx/collection/IntObjectMap;
    .local v40, "k$iv":[Ljava/lang/Object;
    .local v42, "v$iv":[Ljava/lang/Object;
    .local v46, "this_$iv$iv":Landroidx/collection/ScatterMap;
    .local v48, "this_$iv":Landroidx/collection/ScatterMap;
    .local v49, "m$iv$iv":[J
    .restart local v55    # "$i$f$forEachKey":I
    .restart local v56    # "k$iv":[I
    .restart local v57    # "j$iv$iv":I
    .restart local v58    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    .restart local v59    # "$i$f$forEachIndexed":I
    .restart local v60    # "m$iv$iv":[J
    .restart local v61    # "i$iv$iv":I
    :goto_23
    const/16 v2, 0x8

    shr-long v50, v50, v2

    .line 3818
    add-int/lit8 v1, v57, 0x1

    move/from16 v41, v2

    move v3, v8

    move-object/from16 v7, v36

    move/from16 v36, v37

    move-object/from16 v8, v38

    move-object/from16 v37, v40

    move-object/from16 v38, v42

    move-object/from16 v40, v48

    move-object/from16 v11, v58

    move/from16 v12, v59

    move-object/from16 v13, v60

    move/from16 v42, v61

    move v2, v1

    move v1, v10

    move-object/from16 v48, v46

    move-object/from16 v46, v49

    move-object/from16 v10, v56

    move/from16 v49, v9

    move/from16 v9, v55

    .end local v57    # "j$iv$iv":I
    .local v1, "j$iv$iv":I
    goto/16 :goto_5

    .end local v55    # "$i$f$forEachKey":I
    .end local v56    # "k$iv":[I
    .end local v58    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    .end local v59    # "$i$f$forEachIndexed":I
    .end local v60    # "m$iv$iv":[J
    .end local v61    # "i$iv$iv":I
    .local v1, "bitCount$iv$iv":I
    .restart local v2    # "j$iv$iv":I
    .restart local v3    # "id":I
    .restart local v7    # "oldScrollObservationScopes":Ljava/util/ArrayList;
    .local v8, "this_$iv":Landroidx/collection/IntObjectMap;
    .local v9, "$i$f$forEachKey":I
    .local v10, "k$iv":[I
    .restart local v11    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    .restart local v12    # "$i$f$forEachIndexed":I
    .restart local v13    # "m$iv$iv":[J
    .local v36, "j$iv$iv":I
    .local v37, "k$iv":[Ljava/lang/Object;
    .local v38, "v$iv":[Ljava/lang/Object;
    .local v40, "this_$iv":Landroidx/collection/ScatterMap;
    .local v42, "i$iv$iv":I
    .local v46, "m$iv$iv":[J
    .local v48, "this_$iv$iv":Landroidx/collection/ScatterMap;
    .local v49, "i$iv$iv":I
    :cond_34
    move/from16 v57, v2

    move/from16 v55, v9

    move-object/from16 v56, v10

    move-object/from16 v58, v11

    move/from16 v59, v12

    move-object/from16 v60, v13

    move/from16 v2, v41

    move/from16 v61, v42

    move/from16 v9, v49

    move v10, v1

    move-object/from16 v42, v38

    move-object/from16 v49, v46

    move-object/from16 v46, v48

    move-object/from16 v38, v8

    move-object/from16 v48, v40

    move v8, v3

    move-object/from16 v40, v37

    move/from16 v37, v36

    move-object/from16 v36, v7

    .line 3835
    .end local v1    # "bitCount$iv$iv":I
    .end local v2    # "j$iv$iv":I
    .end local v3    # "id":I
    .end local v7    # "oldScrollObservationScopes":Ljava/util/ArrayList;
    .end local v11    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    .end local v12    # "$i$f$forEachIndexed":I
    .end local v13    # "m$iv$iv":[J
    .local v8, "id":I
    .local v9, "i$iv$iv":I
    .local v10, "bitCount$iv$iv":I
    .local v36, "oldScrollObservationScopes":Ljava/util/ArrayList;
    .local v37, "j$iv$iv":I
    .local v38, "this_$iv":Landroidx/collection/IntObjectMap;
    .local v40, "k$iv":[Ljava/lang/Object;
    .local v42, "v$iv":[Ljava/lang/Object;
    .local v46, "this_$iv$iv":Landroidx/collection/ScatterMap;
    .local v48, "this_$iv":Landroidx/collection/ScatterMap;
    .local v49, "m$iv$iv":[J
    .restart local v55    # "$i$f$forEachKey":I
    .restart local v56    # "k$iv":[I
    .restart local v58    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    .restart local v59    # "$i$f$forEachIndexed":I
    .restart local v60    # "m$iv$iv":[J
    .restart local v61    # "i$iv$iv":I
    if-ne v10, v2, :cond_38

    move/from16 v6, v43

    goto :goto_24

    .line 3815
    .end local v50    # "slot$iv$iv":J
    .end local v55    # "$i$f$forEachKey":I
    .end local v56    # "k$iv":[I
    .end local v58    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    .end local v59    # "$i$f$forEachIndexed":I
    .end local v60    # "m$iv$iv":[J
    .end local v61    # "i$iv$iv":I
    .restart local v3    # "id":I
    .local v6, "propertyChanged":Z
    .restart local v7    # "oldScrollObservationScopes":Ljava/util/ArrayList;
    .local v8, "this_$iv":Landroidx/collection/IntObjectMap;
    .local v9, "$i$f$forEachKey":I
    .local v10, "k$iv":[I
    .restart local v11    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    .restart local v12    # "$i$f$forEachIndexed":I
    .restart local v13    # "m$iv$iv":[J
    .local v36, "j$iv$iv":I
    .local v37, "k$iv":[Ljava/lang/Object;
    .local v38, "v$iv":[Ljava/lang/Object;
    .local v40, "this_$iv":Landroidx/collection/ScatterMap;
    .local v42, "i$iv$iv":I
    .local v43, "slot$iv$iv":J
    .local v46, "m$iv$iv":[J
    .local v48, "this_$iv$iv":Landroidx/collection/ScatterMap;
    .local v49, "i$iv$iv":I
    :cond_35
    move/from16 v55, v9

    move-object/from16 v56, v10

    move-object/from16 v58, v11

    move/from16 v59, v12

    move-object/from16 v60, v13

    move/from16 v61, v42

    move/from16 v9, v49

    move-object/from16 v42, v38

    move-object/from16 v49, v46

    move-object/from16 v46, v48

    move-object/from16 v38, v8

    move-object/from16 v48, v40

    move v8, v3

    move-object/from16 v40, v37

    move/from16 v37, v36

    move-object/from16 v36, v7

    .line 3813
    .end local v3    # "id":I
    .end local v7    # "oldScrollObservationScopes":Ljava/util/ArrayList;
    .end local v10    # "k$iv":[I
    .end local v11    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    .end local v12    # "$i$f$forEachIndexed":I
    .end local v13    # "m$iv$iv":[J
    .end local v43    # "slot$iv$iv":J
    .local v8, "id":I
    .local v9, "i$iv$iv":I
    .local v36, "oldScrollObservationScopes":Ljava/util/ArrayList;
    .local v37, "j$iv$iv":I
    .local v38, "this_$iv":Landroidx/collection/IntObjectMap;
    .local v40, "k$iv":[Ljava/lang/Object;
    .local v42, "v$iv":[Ljava/lang/Object;
    .local v46, "this_$iv$iv":Landroidx/collection/ScatterMap;
    .local v48, "this_$iv":Landroidx/collection/ScatterMap;
    .local v49, "m$iv$iv":[J
    .restart local v55    # "$i$f$forEachKey":I
    .restart local v56    # "k$iv":[I
    .restart local v58    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    .restart local v59    # "$i$f$forEachIndexed":I
    .restart local v60    # "m$iv$iv":[J
    .restart local v61    # "i$iv$iv":I
    :goto_24
    if-eq v9, v14, :cond_37

    add-int/lit8 v1, v9, 0x1

    move v3, v8

    move-object/from16 v7, v36

    move/from16 v36, v37

    move-object/from16 v8, v38

    move-object/from16 v37, v40

    move-object/from16 v38, v42

    move-object/from16 v5, v45

    move-object/from16 v2, v46

    move-object/from16 v40, v48

    move-object/from16 v4, v49

    move/from16 v9, v55

    move-object/from16 v10, v56

    move-object/from16 v11, v58

    move/from16 v12, v59

    move-object/from16 v13, v60

    move/from16 v42, v61

    const/16 v41, 0x8

    .end local v9    # "i$iv$iv":I
    .local v1, "i$iv$iv":I
    goto/16 :goto_4

    .end local v45    # "newNode":Landroidx/compose/ui/semantics/SemanticsNode;
    .end local v46    # "this_$iv$iv":Landroidx/collection/ScatterMap;
    .end local v48    # "this_$iv":Landroidx/collection/ScatterMap;
    .end local v49    # "m$iv$iv":[J
    .end local v55    # "$i$f$forEachKey":I
    .end local v56    # "k$iv":[I
    .end local v58    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    .end local v59    # "$i$f$forEachIndexed":I
    .end local v60    # "m$iv$iv":[J
    .end local v61    # "i$iv$iv":I
    .local v2, "this_$iv$iv":Landroidx/collection/ScatterMap;
    .restart local v3    # "id":I
    .local v4, "m$iv$iv":[J
    .local v5, "newNode":Landroidx/compose/ui/semantics/SemanticsNode;
    .restart local v7    # "oldScrollObservationScopes":Ljava/util/ArrayList;
    .local v8, "this_$iv":Landroidx/collection/IntObjectMap;
    .local v9, "$i$f$forEachKey":I
    .restart local v10    # "k$iv":[I
    .restart local v11    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    .restart local v12    # "$i$f$forEachIndexed":I
    .restart local v13    # "m$iv$iv":[J
    .local v36, "j$iv$iv":I
    .local v37, "k$iv":[Ljava/lang/Object;
    .local v38, "v$iv":[Ljava/lang/Object;
    .local v40, "this_$iv":Landroidx/collection/ScatterMap;
    .local v42, "i$iv$iv":I
    :cond_36
    move-object/from16 v46, v2

    move-object/from16 v49, v4

    move-object/from16 v45, v5

    move/from16 v55, v9

    move-object/from16 v56, v10

    move-object/from16 v58, v11

    move/from16 v59, v12

    move-object/from16 v60, v13

    move-object/from16 v48, v40

    move/from16 v61, v42

    move-object/from16 v40, v37

    move-object/from16 v42, v38

    move-object/from16 v38, v8

    move/from16 v37, v36

    move v8, v3

    move-object/from16 v36, v7

    .line 3838
    .end local v1    # "i$iv$iv":I
    .end local v2    # "this_$iv$iv":Landroidx/collection/ScatterMap;
    .end local v3    # "id":I
    .end local v4    # "m$iv$iv":[J
    .end local v5    # "newNode":Landroidx/compose/ui/semantics/SemanticsNode;
    .end local v7    # "oldScrollObservationScopes":Ljava/util/ArrayList;
    .end local v9    # "$i$f$forEachKey":I
    .end local v10    # "k$iv":[I
    .end local v11    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    .end local v12    # "$i$f$forEachIndexed":I
    .end local v13    # "m$iv$iv":[J
    .local v8, "id":I
    .local v36, "oldScrollObservationScopes":Ljava/util/ArrayList;
    .local v37, "j$iv$iv":I
    .local v38, "this_$iv":Landroidx/collection/IntObjectMap;
    .local v40, "k$iv":[Ljava/lang/Object;
    .local v42, "v$iv":[Ljava/lang/Object;
    .restart local v45    # "newNode":Landroidx/compose/ui/semantics/SemanticsNode;
    .restart local v46    # "this_$iv$iv":Landroidx/collection/ScatterMap;
    .restart local v48    # "this_$iv":Landroidx/collection/ScatterMap;
    .restart local v49    # "m$iv$iv":[J
    .restart local v55    # "$i$f$forEachKey":I
    .restart local v56    # "k$iv":[I
    .restart local v58    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    .restart local v59    # "$i$f$forEachIndexed":I
    .restart local v60    # "m$iv$iv":[J
    .restart local v61    # "i$iv$iv":I
    :cond_37
    move/from16 v43, v6

    .line 3839
    .end local v6    # "propertyChanged":Z
    .end local v14    # "lastIndex$iv$iv":I
    .end local v39    # "$i$f$forEachIndexed":I
    .end local v46    # "this_$iv$iv":Landroidx/collection/ScatterMap;
    .end local v49    # "m$iv$iv":[J
    .local v43, "propertyChanged":Z
    :cond_38
    nop

    .line 2698
    .end local v35    # "$i$f$forEach":I
    .end local v40    # "k$iv":[Ljava/lang/Object;
    .end local v42    # "v$iv":[Ljava/lang/Object;
    .end local v48    # "this_$iv":Landroidx/collection/ScatterMap;
    if-nez v43, :cond_39

    .line 2699
    invoke-virtual/range {v33 .. v33}, Landroidx/compose/ui/platform/SemanticsNodeCopy;->getUnmergedConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v1

    move-object/from16 v7, v45

    .end local v45    # "newNode":Landroidx/compose/ui/semantics/SemanticsNode;
    .local v7, "newNode":Landroidx/compose/ui/semantics/SemanticsNode;
    invoke-static {v7, v1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->access$propertiesDeleted(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/compose/ui/semantics/SemanticsConfiguration;)Z

    move-result v43

    goto :goto_25

    .line 2698
    .end local v7    # "newNode":Landroidx/compose/ui/semantics/SemanticsNode;
    .restart local v45    # "newNode":Landroidx/compose/ui/semantics/SemanticsNode;
    :cond_39
    move-object/from16 v7, v45

    .line 2701
    .end local v45    # "newNode":Landroidx/compose/ui/semantics/SemanticsNode;
    .restart local v7    # "newNode":Landroidx/compose/ui/semantics/SemanticsNode;
    :goto_25
    if-eqz v43, :cond_3a

    .line 2704
    nop

    .line 2705
    invoke-direct {v0, v8}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsNodeIdToAccessibilityVirtualNodeId(I)I

    move-result v1

    .line 2706
    nop

    .line 2707
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2704
    const/16 v5, 0x8

    const/4 v6, 0x0

    const/16 v2, 0x800

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEventForVirtualView$default(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)Z

    .line 2710
    :cond_3a
    nop

    .line 3787
    .end local v7    # "newNode":Landroidx/compose/ui/semantics/SemanticsNode;
    .end local v8    # "id":I
    .end local v32    # "$i$a$-forEachKey-AndroidComposeViewAccessibilityDelegateCompat$sendSemanticsPropertyChangeEvents$1":I
    .end local v33    # "oldNode":Landroidx/compose/ui/platform/SemanticsNodeCopy;
    .end local v43    # "propertyChanged":Z
    :goto_26
    nop

    .line 3800
    .end local v30    # "index$iv":I
    .end local v31    # "$i$a$-forEachIndexed-IntObjectMap$forEachKey$1$iv":I
    goto :goto_27

    .line 3802
    .end local v36    # "oldScrollObservationScopes":Ljava/util/ArrayList;
    .end local v37    # "j$iv$iv":I
    .end local v38    # "this_$iv":Landroidx/collection/IntObjectMap;
    .end local v55    # "$i$f$forEachKey":I
    .end local v56    # "k$iv":[I
    .end local v58    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    .end local v59    # "$i$f$forEachIndexed":I
    .end local v60    # "m$iv$iv":[J
    .end local v61    # "i$iv$iv":I
    .restart local v1    # "i$iv$iv":I
    .local v2, "j$iv$iv":I
    .restart local v3    # "id":I
    .local v5, "value$iv":Ljava/lang/Object;
    .local v6, "$i$f$checkPreconditionNotNull":I
    .local v7, "oldScrollObservationScopes":Ljava/util/ArrayList;
    .local v8, "this_$iv":Landroidx/collection/IntObjectMap;
    .restart local v9    # "$i$f$forEachKey":I
    .restart local v10    # "k$iv":[I
    .restart local v11    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    .restart local v12    # "$i$f$forEachIndexed":I
    .restart local v13    # "m$iv$iv":[J
    .restart local v30    # "index$iv":I
    .restart local v31    # "$i$a$-forEachIndexed-IntObjectMap$forEachKey$1$iv":I
    .restart local v32    # "$i$a$-forEachKey-AndroidComposeViewAccessibilityDelegateCompat$sendSemanticsPropertyChangeEvents$1":I
    .restart local v33    # "oldNode":Landroidx/compose/ui/platform/SemanticsNodeCopy;
    :cond_3b
    const/4 v0, 0x0

    .line 2396
    .local v0, "$i$a$-checkPreconditionNotNull-AndroidComposeViewAccessibilityDelegateCompat$sendSemanticsPropertyChangeEvents$1$newNode$1":I
    nop

    .line 3802
    .end local v0    # "$i$a$-checkPreconditionNotNull-AndroidComposeViewAccessibilityDelegateCompat$sendSemanticsPropertyChangeEvents$1$newNode$1":I
    const-string/jumbo v0, "no value for specified key"

    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateExceptionForNullCheck(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .line 3797
    .end local v3    # "id":I
    .end local v5    # "value$iv":Ljava/lang/Object;
    .end local v6    # "$i$f$checkPreconditionNotNull":I
    .end local v29    # "index$iv$iv":I
    .end local v30    # "index$iv":I
    .end local v31    # "$i$a$-forEachIndexed-IntObjectMap$forEachKey$1$iv":I
    .end local v32    # "$i$a$-forEachKey-AndroidComposeViewAccessibilityDelegateCompat$sendSemanticsPropertyChangeEvents$1":I
    .end local v33    # "oldNode":Landroidx/compose/ui/platform/SemanticsNodeCopy;
    :cond_3c
    move/from16 v61, v1

    move/from16 v37, v2

    move-object/from16 v36, v7

    move-object/from16 v38, v8

    move/from16 v55, v9

    move-object/from16 v56, v10

    move-object/from16 v58, v11

    move/from16 v59, v12

    move-object/from16 v60, v13

    .line 3840
    .end local v1    # "i$iv$iv":I
    .end local v2    # "j$iv$iv":I
    .end local v7    # "oldScrollObservationScopes":Ljava/util/ArrayList;
    .end local v8    # "this_$iv":Landroidx/collection/IntObjectMap;
    .end local v9    # "$i$f$forEachKey":I
    .end local v10    # "k$iv":[I
    .end local v11    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    .end local v12    # "$i$f$forEachIndexed":I
    .end local v13    # "m$iv$iv":[J
    .restart local v36    # "oldScrollObservationScopes":Ljava/util/ArrayList;
    .restart local v37    # "j$iv$iv":I
    .restart local v38    # "this_$iv":Landroidx/collection/IntObjectMap;
    .restart local v55    # "$i$f$forEachKey":I
    .restart local v56    # "k$iv":[I
    .restart local v58    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    .restart local v59    # "$i$f$forEachIndexed":I
    .restart local v60    # "m$iv$iv":[J
    .restart local v61    # "i$iv$iv":I
    :goto_27
    const/16 v2, 0x8

    shr-long v21, v21, v2

    .line 3796
    add-int/lit8 v0, v37, 0x1

    move v14, v2

    move-object/from16 v7, v36

    move-object/from16 v8, v38

    move/from16 v9, v55

    move-object/from16 v10, v56

    move-object/from16 v11, v58

    move/from16 v12, v59

    move-object/from16 v13, v60

    move/from16 v1, v61

    move v2, v0

    move-object/from16 v0, p0

    .end local v37    # "j$iv$iv":I
    .local v0, "j$iv$iv":I
    goto/16 :goto_1

    .end local v0    # "j$iv$iv":I
    .end local v36    # "oldScrollObservationScopes":Ljava/util/ArrayList;
    .end local v38    # "this_$iv":Landroidx/collection/IntObjectMap;
    .end local v55    # "$i$f$forEachKey":I
    .end local v56    # "k$iv":[I
    .end local v58    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    .end local v59    # "$i$f$forEachIndexed":I
    .end local v60    # "m$iv$iv":[J
    .end local v61    # "i$iv$iv":I
    .restart local v1    # "i$iv$iv":I
    .restart local v2    # "j$iv$iv":I
    .restart local v7    # "oldScrollObservationScopes":Ljava/util/ArrayList;
    .restart local v8    # "this_$iv":Landroidx/collection/IntObjectMap;
    .restart local v9    # "$i$f$forEachKey":I
    .restart local v10    # "k$iv":[I
    .restart local v11    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    .restart local v12    # "$i$f$forEachIndexed":I
    .restart local v13    # "m$iv$iv":[J
    :cond_3d
    move/from16 v61, v1

    move/from16 v37, v2

    move-object/from16 v36, v7

    move-object/from16 v38, v8

    move/from16 v55, v9

    move-object/from16 v56, v10

    move-object/from16 v58, v11

    move/from16 v59, v12

    move-object/from16 v60, v13

    move v2, v14

    .line 3842
    .end local v1    # "i$iv$iv":I
    .end local v2    # "j$iv$iv":I
    .end local v7    # "oldScrollObservationScopes":Ljava/util/ArrayList;
    .end local v8    # "this_$iv":Landroidx/collection/IntObjectMap;
    .end local v9    # "$i$f$forEachKey":I
    .end local v10    # "k$iv":[I
    .end local v11    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    .end local v12    # "$i$f$forEachIndexed":I
    .end local v13    # "m$iv$iv":[J
    .restart local v36    # "oldScrollObservationScopes":Ljava/util/ArrayList;
    .restart local v38    # "this_$iv":Landroidx/collection/IntObjectMap;
    .restart local v55    # "$i$f$forEachKey":I
    .restart local v56    # "k$iv":[I
    .restart local v58    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    .restart local v59    # "$i$f$forEachIndexed":I
    .restart local v60    # "m$iv$iv":[J
    .restart local v61    # "i$iv$iv":I
    if-ne v15, v2, :cond_41

    goto :goto_28

    .line 3793
    .end local v15    # "bitCount$iv$iv":I
    .end local v21    # "slot$iv$iv":J
    .end local v36    # "oldScrollObservationScopes":Ljava/util/ArrayList;
    .end local v38    # "this_$iv":Landroidx/collection/IntObjectMap;
    .end local v55    # "$i$f$forEachKey":I
    .end local v56    # "k$iv":[I
    .end local v58    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    .end local v59    # "$i$f$forEachIndexed":I
    .end local v60    # "m$iv$iv":[J
    .end local v61    # "i$iv$iv":I
    .restart local v1    # "i$iv$iv":I
    .local v2, "slot$iv$iv":J
    .restart local v7    # "oldScrollObservationScopes":Ljava/util/ArrayList;
    .restart local v8    # "this_$iv":Landroidx/collection/IntObjectMap;
    .restart local v9    # "$i$f$forEachKey":I
    .restart local v10    # "k$iv":[I
    .restart local v11    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    .restart local v12    # "$i$f$forEachIndexed":I
    .restart local v13    # "m$iv$iv":[J
    :cond_3e
    move/from16 v61, v1

    move-object/from16 v36, v7

    move-object/from16 v38, v8

    move/from16 v55, v9

    move-object/from16 v56, v10

    move-object/from16 v58, v11

    move/from16 v59, v12

    move-object/from16 v60, v13

    .line 3791
    .end local v1    # "i$iv$iv":I
    .end local v2    # "slot$iv$iv":J
    .end local v7    # "oldScrollObservationScopes":Ljava/util/ArrayList;
    .end local v8    # "this_$iv":Landroidx/collection/IntObjectMap;
    .end local v9    # "$i$f$forEachKey":I
    .end local v10    # "k$iv":[I
    .end local v11    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    .end local v12    # "$i$f$forEachIndexed":I
    .end local v13    # "m$iv$iv":[J
    .restart local v36    # "oldScrollObservationScopes":Ljava/util/ArrayList;
    .restart local v38    # "this_$iv":Landroidx/collection/IntObjectMap;
    .restart local v55    # "$i$f$forEachKey":I
    .restart local v56    # "k$iv":[I
    .restart local v58    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    .restart local v59    # "$i$f$forEachIndexed":I
    .restart local v60    # "m$iv$iv":[J
    .restart local v61    # "i$iv$iv":I
    :goto_28
    move/from16 v0, v17

    move/from16 v7, v61

    .end local v17    # "lastIndex$iv$iv":I
    .end local v61    # "i$iv$iv":I
    .local v0, "lastIndex$iv$iv":I
    .local v7, "i$iv$iv":I
    if-eq v7, v0, :cond_40

    add-int/lit8 v1, v7, 0x1

    move v15, v0

    move/from16 v14, v16

    move-object/from16 v7, v36

    move-object/from16 v8, v38

    move/from16 v9, v55

    move-object/from16 v10, v56

    move-object/from16 v11, v58

    move/from16 v12, v59

    move-object/from16 v13, v60

    move-object/from16 v0, p0

    .end local v7    # "i$iv$iv":I
    .restart local v1    # "i$iv$iv":I
    goto/16 :goto_0

    .end local v0    # "lastIndex$iv$iv":I
    .end local v36    # "oldScrollObservationScopes":Ljava/util/ArrayList;
    .end local v38    # "this_$iv":Landroidx/collection/IntObjectMap;
    .end local v55    # "$i$f$forEachKey":I
    .end local v56    # "k$iv":[I
    .end local v58    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    .end local v59    # "$i$f$forEachIndexed":I
    .end local v60    # "m$iv$iv":[J
    .local v7, "oldScrollObservationScopes":Ljava/util/ArrayList;
    .restart local v8    # "this_$iv":Landroidx/collection/IntObjectMap;
    .restart local v9    # "$i$f$forEachKey":I
    .restart local v10    # "k$iv":[I
    .restart local v11    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    .restart local v12    # "$i$f$forEachIndexed":I
    .restart local v13    # "m$iv$iv":[J
    .local v15, "lastIndex$iv$iv":I
    :cond_3f
    move-object/from16 v36, v7

    move-object/from16 v38, v8

    move/from16 v55, v9

    move-object/from16 v56, v10

    move-object/from16 v58, v11

    move/from16 v59, v12

    move-object/from16 v60, v13

    move v0, v15

    .line 3845
    .end local v1    # "i$iv$iv":I
    .end local v7    # "oldScrollObservationScopes":Ljava/util/ArrayList;
    .end local v8    # "this_$iv":Landroidx/collection/IntObjectMap;
    .end local v9    # "$i$f$forEachKey":I
    .end local v10    # "k$iv":[I
    .end local v11    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    .end local v12    # "$i$f$forEachIndexed":I
    .end local v13    # "m$iv$iv":[J
    .end local v15    # "lastIndex$iv$iv":I
    .restart local v0    # "lastIndex$iv$iv":I
    .restart local v36    # "oldScrollObservationScopes":Ljava/util/ArrayList;
    .restart local v38    # "this_$iv":Landroidx/collection/IntObjectMap;
    .restart local v55    # "$i$f$forEachKey":I
    .restart local v56    # "k$iv":[I
    .restart local v58    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    .restart local v59    # "$i$f$forEachIndexed":I
    .restart local v60    # "m$iv$iv":[J
    :cond_40
    nop

    .line 3846
    .end local v0    # "lastIndex$iv$iv":I
    .end local v58    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    .end local v59    # "$i$f$forEachIndexed":I
    .end local v60    # "m$iv$iv":[J
    :cond_41
    nop

    .line 2711
    .end local v38    # "this_$iv":Landroidx/collection/IntObjectMap;
    .end local v55    # "$i$f$forEachKey":I
    .end local v56    # "k$iv":[I
    return-void
.end method

.method private final sendSubtreeChangeAccessibilityEvents(Landroidx/compose/ui/node/LayoutNode;Landroidx/collection/MutableIntSet;)V
    .locals 11
    .param p1, "layoutNode"    # Landroidx/compose/ui/node/LayoutNode;
    .param p2, "subtreeChangedSemanticsNodesIds"    # Landroidx/collection/MutableIntSet;

    .line 2295
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->isAttached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2296
    return-void

    .line 2299
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->getAndroidViewsHandler$ui()Landroidx/compose/ui/platform/AndroidViewsHandler;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidViewsHandler;->getLayoutNodeToHolder()Ljava/util/HashMap;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2300
    return-void

    .line 2304
    :cond_1
    const/4 v0, 0x0

    .line 2305
    .local v0, "semanticsNode":Ljava/lang/Object;
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui()Landroidx/compose/ui/node/NodeChain;

    move-result-object v1

    const/4 v2, 0x0

    .line 3718
    .local v2, "$i$f$getSemantics-OLwlOKw":I
    const/16 v3, 0x8

    invoke-static {v3}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v2

    .line 2305
    .end local v2    # "$i$f$getSemantics-OLwlOKw":I
    invoke-virtual {v1, v2}, Landroidx/compose/ui/node/NodeChain;->has-H91voCI$ui(I)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, p1

    goto :goto_0

    .line 2306
    :cond_2
    sget-object v1, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$sendSubtreeChangeAccessibilityEvents$semanticsNode$1;->INSTANCE:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$sendSubtreeChangeAccessibilityEvents$semanticsNode$1;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, v1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->access$findClosestParentNode(Landroidx/compose/ui/node/LayoutNode;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    .line 2304
    :goto_0
    nop

    .line 2308
    .end local v0    # "semanticsNode":Ljava/lang/Object;
    .local v1, "semanticsNode":Ljava/lang/Object;
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getSemanticsConfiguration()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_1

    .line 2309
    .local v0, "config":Landroidx/compose/ui/semantics/SemanticsConfiguration;
    :cond_3
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->isMergingSemanticsOfDescendants()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2314
    nop

    .line 2310
    nop

    .line 2311
    sget-object v2, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$sendSubtreeChangeAccessibilityEvents$1;->INSTANCE:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$sendSubtreeChangeAccessibilityEvents$1;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->access$findClosestParentNode(Landroidx/compose/ui/node/LayoutNode;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v2

    .line 2314
    if-eqz v2, :cond_4

    .line 2310
    nop

    .line 2314
    nop

    .line 3528
    .local v2, "it":Landroidx/compose/ui/node/LayoutNode;
    const/4 v3, 0x0

    .line 2314
    .local v3, "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$sendSubtreeChangeAccessibilityEvents$2":I
    move-object v1, v2

    .line 2316
    .end local v2    # "it":Landroidx/compose/ui/node/LayoutNode;
    .end local v3    # "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$sendSubtreeChangeAccessibilityEvents$2":I
    :cond_4
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getSemanticsId()I

    move-result v2

    .line 2318
    .local v2, "id":I
    invoke-virtual {p2, v2}, Landroidx/collection/MutableIntSet;->add(I)Z

    move-result v3

    if-nez v3, :cond_5

    .line 2319
    return-void

    .line 2322
    :cond_5
    nop

    .line 2323
    invoke-direct {p0, v2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsNodeIdToAccessibilityVirtualNodeId(I)I

    move-result v5

    .line 2324
    nop

    .line 2325
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 2322
    const/16 v9, 0x8

    const/4 v10, 0x0

    const/16 v6, 0x800

    const/4 v8, 0x0

    move-object v4, p0

    invoke-static/range {v4 .. v10}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEventForVirtualView$default(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)Z

    .line 2327
    return-void

    .line 2316
    .end local v2    # "id":I
    :cond_6
    return-void

    .line 2308
    .end local v0    # "config":Landroidx/compose/ui/semantics/SemanticsConfiguration;
    :cond_7
    :goto_1
    return-void
.end method

.method private final sendTypeViewScrolledAccessibilityEvent(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 7
    .param p1, "layoutNode"    # Landroidx/compose/ui/node/LayoutNode;

    .line 2262
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->isAttached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2263
    return-void

    .line 2266
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->getAndroidViewsHandler$ui()Landroidx/compose/ui/platform/AndroidViewsHandler;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidViewsHandler;->getLayoutNodeToHolder()Ljava/util/HashMap;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2267
    return-void

    .line 2270
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getSemanticsId()I

    move-result v0

    .line 2271
    .local v0, "id":I
    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->pendingHorizontalScrollEvents:Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {v1, v0}, Landroidx/collection/MutableIntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/semantics/ScrollAxisRange;

    .line 2272
    .local v1, "pendingHorizontalScroll":Landroidx/compose/ui/semantics/ScrollAxisRange;
    iget-object v2, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->pendingVerticalScrollEvents:Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {v2, v0}, Landroidx/collection/MutableIntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/semantics/ScrollAxisRange;

    .line 2273
    .local v2, "pendingVerticalScroll":Landroidx/compose/ui/semantics/ScrollAxisRange;
    if-nez v1, :cond_2

    if-nez v2, :cond_2

    .line 2274
    return-void

    .line 2277
    :cond_2
    const/16 v3, 0x1000

    invoke-direct {p0, v0, v3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->createEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v3

    .line 2278
    .local v3, "event":Landroid/view/accessibility/AccessibilityEvent;
    if-eqz v1, :cond_3

    move-object v4, v1

    .local v4, "it":Landroidx/compose/ui/semantics/ScrollAxisRange;
    const/4 v5, 0x0

    .line 2279
    .local v5, "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$sendTypeViewScrolledAccessibilityEvent$1":I
    invoke-virtual {v4}, Landroidx/compose/ui/semantics/ScrollAxisRange;->getValue()Lkotlin/jvm/functions/Function0;

    move-result-object v6

    invoke-interface {v6}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v3, v6}, Landroid/view/accessibility/AccessibilityEvent;->setScrollX(I)V

    .line 2280
    invoke-virtual {v4}, Landroidx/compose/ui/semantics/ScrollAxisRange;->getMaxValue()Lkotlin/jvm/functions/Function0;

    move-result-object v6

    invoke-interface {v6}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v3, v6}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollX(I)V

    .line 2281
    nop

    .line 2278
    .end local v4    # "it":Landroidx/compose/ui/semantics/ScrollAxisRange;
    .end local v5    # "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$sendTypeViewScrolledAccessibilityEvent$1":I
    nop

    .line 2282
    :cond_3
    if-eqz v2, :cond_4

    move-object v4, v2

    .restart local v4    # "it":Landroidx/compose/ui/semantics/ScrollAxisRange;
    const/4 v5, 0x0

    .line 2283
    .local v5, "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$sendTypeViewScrolledAccessibilityEvent$2":I
    invoke-virtual {v4}, Landroidx/compose/ui/semantics/ScrollAxisRange;->getValue()Lkotlin/jvm/functions/Function0;

    move-result-object v6

    invoke-interface {v6}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v3, v6}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 2284
    invoke-virtual {v4}, Landroidx/compose/ui/semantics/ScrollAxisRange;->getMaxValue()Lkotlin/jvm/functions/Function0;

    move-result-object v6

    invoke-interface {v6}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v3, v6}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 2285
    nop

    .line 2282
    .end local v4    # "it":Landroidx/compose/ui/semantics/ScrollAxisRange;
    .end local v5    # "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$sendTypeViewScrolledAccessibilityEvent$2":I
    nop

    .line 2286
    :cond_4
    invoke-direct {p0, v3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 2287
    return-void
.end method

.method private final setAccessibilitySelection(Landroidx/compose/ui/semantics/SemanticsNode;IIZ)Z
    .locals 10
    .param p1, "node"    # Landroidx/compose/ui/semantics/SemanticsNode;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "traversalMode"    # Z

    .line 2976
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsActions;->getSetSelection()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->access$enabled(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2980
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    sget-object v2, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsActions;->getSetSelection()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->get(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 2981
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/AccessibilityAction;->getAction()Lkotlin/Function;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function3;

    .line 2982
    if-eqz v0, :cond_0

    .line 2980
    nop

    .line 2982
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 2980
    nop

    :cond_0
    return v1

    .line 2984
    :cond_1
    if-ne p2, p3, :cond_2

    iget v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityCursorPosition:I

    if-ne p3, v0, :cond_2

    .line 2985
    return v1

    .line 2987
    :cond_2
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getIterableTextForAccessibility(Landroidx/compose/ui/semantics/SemanticsNode;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    return v1

    .line 2988
    .local v0, "text":Ljava/lang/String;
    :cond_3
    nop

    .line 2989
    if-ltz p2, :cond_4

    if-ne p2, p3, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt p3, v2, :cond_4

    .line 2990
    move v2, p2

    goto :goto_0

    .line 2992
    :cond_4
    const/4 v2, -0x1

    .line 2988
    :goto_0
    iput v2, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityCursorPosition:I

    .line 2994
    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x1

    if-lez v2, :cond_5

    move v1, v3

    .line 2996
    .local v1, "nonEmptyText":Z
    :cond_5
    nop

    .line 2997
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getId()I

    move-result v2

    invoke-direct {p0, v2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsNodeIdToAccessibilityVirtualNodeId(I)I

    move-result v5

    .line 2998
    const/4 v2, 0x0

    if-eqz v1, :cond_6

    iget v4, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityCursorPosition:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v6, v4

    goto :goto_1

    :cond_6
    move-object v6, v2

    .line 2999
    :goto_1
    if-eqz v1, :cond_7

    iget v4, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityCursorPosition:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v7, v4

    goto :goto_2

    :cond_7
    move-object v7, v2

    .line 3000
    :goto_2
    if-eqz v1, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_8
    move-object v8, v2

    .line 3001
    move-object v9, v0

    check-cast v9, Ljava/lang/CharSequence;

    .line 2996
    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->createTextSelectionChangedEvent(ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/CharSequence;)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    .line 2995
    nop

    .line 3003
    .local v2, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-direct {p0, v2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 3004
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getId()I

    move-result v5

    invoke-direct {p0, v5}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendPendingTextTraversedAtGranularityEvent(I)V

    .line 3005
    return v3
.end method

.method private final setContentInvalid(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 2
    .param p1, "node"    # Landroidx/compose/ui/semantics/SemanticsNode;
    .param p2, "info"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 1152
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->getError()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1153
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentInvalid(Z)V

    .line 1154
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->getError()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setError(Ljava/lang/CharSequence;)V

    .line 1156
    :cond_0
    return-void
.end method

.method private final setText(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1
    .param p1, "node"    # Landroidx/compose/ui/semantics/SemanticsNode;
    .param p2, "info"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 1173
    invoke-static {p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->access$getInfoText(Landroidx/compose/ui/semantics/SemanticsNode;)Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->toSpannableString(Landroidx/compose/ui/text/AnnotatedString;)Landroid/text/SpannableString;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setText(Ljava/lang/CharSequence;)V

    .line 1174
    return-void
.end method

.method private final toAndroidRect(Landroidx/compose/ui/geometry/Rect;FF)Landroid/graphics/Rect;
    .locals 5
    .param p1, "$this$toAndroidRect"    # Landroidx/compose/ui/geometry/Rect;
    .param p2, "leftOffset"    # F
    .param p3, "topOffset"    # F

    .line 2005
    new-instance v0, Landroid/graphics/Rect;

    .line 2006
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v1

    add-float/2addr v1, p2

    float-to-int v1, v1

    .line 2007
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v2

    add-float/2addr v2, p3

    float-to-int v2, v2

    .line 2008
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v3

    add-float/2addr v3, p2

    float-to-int v3, v3

    .line 2009
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result v4

    add-float/2addr v4, p3

    float-to-int v4, v4

    .line 2005
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2010
    return-object v0
.end method

.method private final toAndroidRect(Landroidx/compose/ui/graphics/Outline;FF)Landroid/graphics/Rect;
    .locals 1
    .param p1, "$this$toAndroidRect"    # Landroidx/compose/ui/graphics/Outline;
    .param p2, "leftOffset"    # F
    .param p3, "topOffset"    # F

    .line 1971
    instance-of v0, p1, Landroidx/compose/ui/graphics/Outline$Rectangle;

    if-nez v0, :cond_1

    instance-of v0, p1, Landroidx/compose/ui/graphics/Outline$Rounded;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1973
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 1972
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/Outline;->getBounds()Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->toAndroidRect(Landroidx/compose/ui/geometry/Rect;FF)Landroid/graphics/Rect;

    move-result-object v0

    .line 1973
    :goto_1
    return-object v0
.end method

.method static synthetic toAndroidRect$default(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;Landroidx/compose/ui/geometry/Rect;FFILjava/lang/Object;)Landroid/graphics/Rect;
    .locals 1

    .line 2004
    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    move p3, v0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->toAndroidRect(Landroidx/compose/ui/geometry/Rect;FF)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method private final toBoundsInScreen(FFFF)Landroid/graphics/Rect;
    .locals 21
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .line 573
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    move/from16 v2, p2

    .local v2, "y$iv":F
    move/from16 v3, p1

    .local v3, "x$iv":F
    const/4 v4, 0x0

    .line 3486
    .local v4, "$i$f$Offset":I
    move v5, v2

    .local v5, "val2$iv$iv":F
    move v6, v3

    .local v6, "val1$iv$iv":F
    const/4 v7, 0x0

    .line 3487
    .local v7, "$i$f$packFloats":I
    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v8

    int-to-long v8, v8

    .line 3488
    .local v8, "v1$iv$iv":J
    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v10

    int-to-long v10, v10

    .line 3489
    .local v10, "v2$iv$iv":J
    const/16 v12, 0x20

    shl-long v13, v8, v12

    const-wide v15, 0xffffffffL

    and-long v17, v10, v15

    or-long v5, v13, v17

    .line 3486
    .end local v5    # "val2$iv$iv":F
    .end local v6    # "val1$iv$iv":F
    .end local v7    # "$i$f$packFloats":I
    .end local v8    # "v1$iv$iv":J
    .end local v10    # "v2$iv$iv":J
    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v2

    .line 573
    .end local v2    # "y$iv":F
    .end local v3    # "x$iv":F
    .end local v4    # "$i$f$Offset":I
    invoke-virtual {v1, v2, v3}, Landroidx/compose/ui/platform/AndroidComposeView;->localToScreen-MK-Hz9U(J)J

    move-result-wide v1

    .line 574
    .local v1, "topLeftInScreen":J
    iget-object v3, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    move/from16 v4, p4

    .local v4, "y$iv":F
    move/from16 v5, p3

    .local v5, "x$iv":F
    const/4 v6, 0x0

    .line 3490
    .local v6, "$i$f$Offset":I
    move v7, v4

    .local v7, "val2$iv$iv":F
    move v8, v5

    .local v8, "val1$iv$iv":F
    const/4 v9, 0x0

    .line 3491
    .local v9, "$i$f$packFloats":I
    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v10

    int-to-long v10, v10

    .line 3492
    .local v10, "v1$iv$iv":J
    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v13

    int-to-long v13, v13

    .line 3493
    .local v13, "v2$iv$iv":J
    shl-long v17, v10, v12

    and-long v19, v13, v15

    or-long v7, v17, v19

    .line 3490
    .end local v7    # "val2$iv$iv":F
    .end local v8    # "val1$iv$iv":F
    .end local v9    # "$i$f$packFloats":I
    .end local v10    # "v1$iv$iv":J
    .end local v13    # "v2$iv$iv":J
    invoke-static {v7, v8}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v4

    .line 574
    .end local v4    # "y$iv":F
    .end local v5    # "x$iv":F
    .end local v6    # "$i$f$Offset":I
    invoke-virtual {v3, v4, v5}, Landroidx/compose/ui/platform/AndroidComposeView;->localToScreen-MK-Hz9U(J)J

    move-result-wide v3

    .line 578
    .local v3, "bottomRightInScreen":J
    new-instance v5, Landroid/graphics/Rect;

    .line 579
    move-wide v6, v1

    .local v6, "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v8, 0x0

    .line 3494
    .local v8, "$i$f$getX-impl":I
    move-wide v9, v6

    .local v9, "value$iv$iv":J
    const/4 v11, 0x0

    .line 3495
    .local v11, "$i$f$unpackFloat1":I
    shr-long v13, v9, v12

    long-to-int v13, v13

    .local v13, "bits$iv$iv$iv":I
    const/4 v14, 0x0

    .line 3496
    .local v14, "$i$f$floatFromBits":I
    invoke-static {v13}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v13

    .line 3495
    .end local v13    # "bits$iv$iv$iv":I
    .end local v14    # "$i$f$floatFromBits":I
    nop

    .line 3494
    .end local v9    # "value$iv$iv":J
    .end local v11    # "$i$f$unpackFloat1":I
    nop

    .line 579
    .end local v6    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v8    # "$i$f$getX-impl":I
    move-wide v6, v3

    .restart local v6    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v8, 0x0

    .line 3494
    .restart local v8    # "$i$f$getX-impl":I
    move-wide v9, v6

    .restart local v9    # "value$iv$iv":J
    const/4 v11, 0x0

    .line 3495
    .restart local v11    # "$i$f$unpackFloat1":I
    move v14, v12

    move/from16 v17, v13

    shr-long v12, v9, v14

    long-to-int v12, v12

    .local v12, "bits$iv$iv$iv":I
    const/4 v13, 0x0

    .line 3496
    .local v13, "$i$f$floatFromBits":I
    invoke-static {v12}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v12

    .line 3495
    .end local v12    # "bits$iv$iv$iv":I
    .end local v13    # "$i$f$floatFromBits":I
    nop

    .line 3494
    .end local v9    # "value$iv$iv":J
    .end local v11    # "$i$f$unpackFloat1":I
    nop

    .line 579
    .end local v6    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v8    # "$i$f$getX-impl":I
    move/from16 v6, v17

    invoke-static {v6, v12}, Ljava/lang/Math;->min(FF)F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-float v6, v6

    float-to-int v6, v6

    .line 580
    move-wide v7, v1

    .local v7, "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v9, 0x0

    .line 3497
    .local v9, "$i$f$getY-impl":I
    move-wide v10, v7

    .local v10, "value$iv$iv":J
    const/4 v12, 0x0

    .line 3498
    .local v12, "$i$f$unpackFloat2":I
    move v13, v14

    move-wide/from16 v17, v15

    and-long v14, v10, v17

    long-to-int v14, v14

    .local v14, "bits$iv$iv$iv":I
    const/4 v15, 0x0

    .line 3499
    .local v15, "$i$f$floatFromBits":I
    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v14

    .line 3498
    .end local v14    # "bits$iv$iv$iv":I
    .end local v15    # "$i$f$floatFromBits":I
    nop

    .line 3497
    .end local v10    # "value$iv$iv":J
    .end local v12    # "$i$f$unpackFloat2":I
    nop

    .line 580
    .end local v7    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v9    # "$i$f$getY-impl":I
    move-wide v7, v3

    .restart local v7    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v9, 0x0

    .line 3497
    .restart local v9    # "$i$f$getY-impl":I
    move-wide v10, v7

    .restart local v10    # "value$iv$iv":J
    const/4 v12, 0x0

    .line 3498
    .restart local v12    # "$i$f$unpackFloat2":I
    move v15, v13

    move/from16 v16, v14

    and-long v13, v10, v17

    long-to-int v13, v13

    .local v13, "bits$iv$iv$iv":I
    const/4 v14, 0x0

    .line 3499
    .local v14, "$i$f$floatFromBits":I
    invoke-static {v13}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v13

    .line 3498
    .end local v13    # "bits$iv$iv$iv":I
    .end local v14    # "$i$f$floatFromBits":I
    nop

    .line 3497
    .end local v10    # "value$iv$iv":J
    .end local v12    # "$i$f$unpackFloat2":I
    nop

    .line 580
    .end local v7    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v9    # "$i$f$getY-impl":I
    move/from16 v7, v16

    invoke-static {v7, v13}, Ljava/lang/Math;->min(FF)F

    move-result v7

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-float v7, v7

    float-to-int v7, v7

    .line 581
    move-wide v8, v1

    .local v8, "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v10, 0x0

    .line 3500
    .local v10, "$i$f$getX-impl":I
    move-wide v11, v8

    .local v11, "value$iv$iv":J
    const/4 v13, 0x0

    .line 3501
    .local v13, "$i$f$unpackFloat1":I
    move-wide/from16 v19, v1

    .end local v1    # "topLeftInScreen":J
    .local v19, "topLeftInScreen":J
    shr-long v0, v11, v15

    long-to-int v0, v0

    .local v0, "bits$iv$iv$iv":I
    const/4 v1, 0x0

    .line 3502
    .local v1, "$i$f$floatFromBits":I
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 3501
    .end local v0    # "bits$iv$iv$iv":I
    .end local v1    # "$i$f$floatFromBits":I
    nop

    .line 3500
    .end local v11    # "value$iv$iv":J
    .end local v13    # "$i$f$unpackFloat1":I
    nop

    .line 581
    .end local v8    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v10    # "$i$f$getX-impl":I
    move-wide v1, v3

    .local v1, "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v8, 0x0

    .line 3500
    .local v8, "$i$f$getX-impl":I
    move-wide v9, v1

    .local v9, "value$iv$iv":J
    const/4 v11, 0x0

    .line 3501
    .local v11, "$i$f$unpackFloat1":I
    shr-long v12, v9, v15

    long-to-int v12, v12

    .local v12, "bits$iv$iv$iv":I
    const/4 v13, 0x0

    .line 3502
    .local v13, "$i$f$floatFromBits":I
    invoke-static {v12}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v12

    .line 3501
    .end local v12    # "bits$iv$iv$iv":I
    .end local v13    # "$i$f$floatFromBits":I
    nop

    .line 3500
    .end local v9    # "value$iv$iv":J
    .end local v11    # "$i$f$unpackFloat1":I
    nop

    .line 581
    .end local v1    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v8    # "$i$f$getX-impl":I
    invoke-static {v0, v12}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-int v0, v0

    .line 582
    move-wide/from16 v1, v19

    .restart local v1    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v8, 0x0

    .line 3503
    .local v8, "$i$f$getY-impl":I
    move-wide v9, v1

    .restart local v9    # "value$iv$iv":J
    const/4 v11, 0x0

    .line 3504
    .local v11, "$i$f$unpackFloat2":I
    and-long v12, v9, v17

    long-to-int v12, v12

    .restart local v12    # "bits$iv$iv$iv":I
    const/4 v13, 0x0

    .line 3505
    .restart local v13    # "$i$f$floatFromBits":I
    invoke-static {v12}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v12

    .line 3504
    .end local v12    # "bits$iv$iv$iv":I
    .end local v13    # "$i$f$floatFromBits":I
    nop

    .line 3503
    .end local v9    # "value$iv$iv":J
    .end local v11    # "$i$f$unpackFloat2":I
    nop

    .line 582
    .end local v1    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v8    # "$i$f$getY-impl":I
    move-wide v1, v3

    .restart local v1    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v8, 0x0

    .line 3503
    .restart local v8    # "$i$f$getY-impl":I
    move-wide v9, v1

    .restart local v9    # "value$iv$iv":J
    const/4 v11, 0x0

    .line 3504
    .restart local v11    # "$i$f$unpackFloat2":I
    and-long v13, v9, v17

    long-to-int v13, v13

    .local v13, "bits$iv$iv$iv":I
    const/4 v14, 0x0

    .line 3505
    .restart local v14    # "$i$f$floatFromBits":I
    invoke-static {v13}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v13

    .line 3504
    .end local v13    # "bits$iv$iv$iv":I
    .end local v14    # "$i$f$floatFromBits":I
    nop

    .line 3503
    .end local v9    # "value$iv$iv":J
    .end local v11    # "$i$f$unpackFloat2":I
    nop

    .line 582
    .end local v1    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v8    # "$i$f$getY-impl":I
    invoke-static {v12, v13}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-float v1, v1

    float-to-int v1, v1

    .line 578
    invoke-direct {v5, v6, v7, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v5
.end method

.method private final toBoundsRelativeToNodeBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroidx/compose/ui/geometry/Rect;
    .locals 5
    .param p1, "$this$toBoundsRelativeToNodeBounds"    # Landroid/graphics/Rect;
    .param p2, "nodeBoundsInScreen"    # Landroid/graphics/Rect;

    .line 1927
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 1928
    .local v0, "leftOffset":F
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 1929
    .local v1, "topOffset":F
    new-instance v2, Landroidx/compose/ui/geometry/Rect;

    .line 1930
    nop

    .line 1931
    nop

    .line 1932
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v0

    .line 1933
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v1

    .line 1929
    invoke-direct {v2, v0, v1, v3, v4}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    return-object v2
.end method

.method private final toCornerArray(Landroidx/compose/ui/graphics/Outline;)[F
    .locals 12
    .param p1, "$this$toCornerArray"    # Landroidx/compose/ui/graphics/Outline;

    .line 1980
    instance-of v0, p1, Landroidx/compose/ui/graphics/Outline$Rounded;

    if-eqz v0, :cond_0

    .line 1982
    const/16 v0, 0x8

    new-array v0, v0, [F

    move-object v1, p1

    check-cast v1, Landroidx/compose/ui/graphics/Outline$Rounded;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Outline$Rounded;->getRoundRect()Landroidx/compose/ui/geometry/RoundRect;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/geometry/RoundRect;->getTopLeftCornerRadius-kKHJgLs()J

    move-result-wide v1

    .local v1, "$v$c$androidx-compose-ui-geometry-CornerRadius$-this$0$iv":J
    const/4 v3, 0x0

    .line 3684
    .local v3, "$i$f$getX-impl":I
    move-wide v4, v1

    .local v4, "value$iv$iv":J
    const/4 v6, 0x0

    .line 3685
    .local v6, "$i$f$unpackFloat1":I
    const/16 v7, 0x20

    shr-long v8, v4, v7

    long-to-int v8, v8

    .local v8, "bits$iv$iv$iv":I
    const/4 v9, 0x0

    .line 3686
    .local v9, "$i$f$floatFromBits":I
    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    .line 3685
    .end local v8    # "bits$iv$iv$iv":I
    .end local v9    # "$i$f$floatFromBits":I
    nop

    .line 3684
    .end local v4    # "value$iv$iv":J
    .end local v6    # "$i$f$unpackFloat1":I
    nop

    .end local v1    # "$v$c$androidx-compose-ui-geometry-CornerRadius$-this$0$iv":J
    .end local v3    # "$i$f$getX-impl":I
    const/4 v1, 0x0

    aput v8, v0, v1

    .line 1982
    nop

    .line 1983
    move-object v1, p1

    check-cast v1, Landroidx/compose/ui/graphics/Outline$Rounded;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Outline$Rounded;->getRoundRect()Landroidx/compose/ui/geometry/RoundRect;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/geometry/RoundRect;->getTopLeftCornerRadius-kKHJgLs()J

    move-result-wide v1

    .restart local v1    # "$v$c$androidx-compose-ui-geometry-CornerRadius$-this$0$iv":J
    const/4 v3, 0x0

    .line 3687
    .local v3, "$i$f$getY-impl":I
    move-wide v4, v1

    .restart local v4    # "value$iv$iv":J
    const/4 v6, 0x0

    .line 3688
    .local v6, "$i$f$unpackFloat2":I
    const-wide v8, 0xffffffffL

    and-long v10, v4, v8

    long-to-int v10, v10

    .local v10, "bits$iv$iv$iv":I
    const/4 v11, 0x0

    .line 3689
    .local v11, "$i$f$floatFromBits":I
    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v10

    .line 3688
    .end local v10    # "bits$iv$iv$iv":I
    .end local v11    # "$i$f$floatFromBits":I
    nop

    .line 3687
    .end local v4    # "value$iv$iv":J
    .end local v6    # "$i$f$unpackFloat2":I
    nop

    .end local v1    # "$v$c$androidx-compose-ui-geometry-CornerRadius$-this$0$iv":J
    .end local v3    # "$i$f$getY-impl":I
    const/4 v1, 0x1

    aput v10, v0, v1

    .line 1982
    nop

    .line 1984
    move-object v1, p1

    check-cast v1, Landroidx/compose/ui/graphics/Outline$Rounded;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Outline$Rounded;->getRoundRect()Landroidx/compose/ui/geometry/RoundRect;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/geometry/RoundRect;->getTopRightCornerRadius-kKHJgLs()J

    move-result-wide v1

    .restart local v1    # "$v$c$androidx-compose-ui-geometry-CornerRadius$-this$0$iv":J
    const/4 v3, 0x0

    .line 3690
    .local v3, "$i$f$getX-impl":I
    move-wide v4, v1

    .restart local v4    # "value$iv$iv":J
    const/4 v6, 0x0

    .line 3691
    .local v6, "$i$f$unpackFloat1":I
    shr-long v10, v4, v7

    long-to-int v10, v10

    .restart local v10    # "bits$iv$iv$iv":I
    const/4 v11, 0x0

    .line 3692
    .restart local v11    # "$i$f$floatFromBits":I
    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v10

    .line 3691
    .end local v10    # "bits$iv$iv$iv":I
    .end local v11    # "$i$f$floatFromBits":I
    nop

    .line 3690
    .end local v4    # "value$iv$iv":J
    .end local v6    # "$i$f$unpackFloat1":I
    nop

    .end local v1    # "$v$c$androidx-compose-ui-geometry-CornerRadius$-this$0$iv":J
    .end local v3    # "$i$f$getX-impl":I
    const/4 v1, 0x2

    aput v10, v0, v1

    .line 1982
    nop

    .line 1985
    move-object v1, p1

    check-cast v1, Landroidx/compose/ui/graphics/Outline$Rounded;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Outline$Rounded;->getRoundRect()Landroidx/compose/ui/geometry/RoundRect;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/geometry/RoundRect;->getTopRightCornerRadius-kKHJgLs()J

    move-result-wide v1

    .restart local v1    # "$v$c$androidx-compose-ui-geometry-CornerRadius$-this$0$iv":J
    const/4 v3, 0x0

    .line 3693
    .local v3, "$i$f$getY-impl":I
    move-wide v4, v1

    .restart local v4    # "value$iv$iv":J
    const/4 v6, 0x0

    .line 3694
    .local v6, "$i$f$unpackFloat2":I
    and-long v10, v4, v8

    long-to-int v10, v10

    .restart local v10    # "bits$iv$iv$iv":I
    const/4 v11, 0x0

    .line 3695
    .restart local v11    # "$i$f$floatFromBits":I
    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v10

    .line 3694
    .end local v10    # "bits$iv$iv$iv":I
    .end local v11    # "$i$f$floatFromBits":I
    nop

    .line 3693
    .end local v4    # "value$iv$iv":J
    .end local v6    # "$i$f$unpackFloat2":I
    nop

    .end local v1    # "$v$c$androidx-compose-ui-geometry-CornerRadius$-this$0$iv":J
    .end local v3    # "$i$f$getY-impl":I
    const/4 v1, 0x3

    aput v10, v0, v1

    .line 1982
    nop

    .line 1986
    move-object v1, p1

    check-cast v1, Landroidx/compose/ui/graphics/Outline$Rounded;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Outline$Rounded;->getRoundRect()Landroidx/compose/ui/geometry/RoundRect;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/geometry/RoundRect;->getBottomRightCornerRadius-kKHJgLs()J

    move-result-wide v1

    .restart local v1    # "$v$c$androidx-compose-ui-geometry-CornerRadius$-this$0$iv":J
    const/4 v3, 0x0

    .line 3696
    .local v3, "$i$f$getX-impl":I
    move-wide v4, v1

    .restart local v4    # "value$iv$iv":J
    const/4 v6, 0x0

    .line 3697
    .local v6, "$i$f$unpackFloat1":I
    shr-long v10, v4, v7

    long-to-int v10, v10

    .restart local v10    # "bits$iv$iv$iv":I
    const/4 v11, 0x0

    .line 3698
    .restart local v11    # "$i$f$floatFromBits":I
    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v10

    .line 3697
    .end local v10    # "bits$iv$iv$iv":I
    .end local v11    # "$i$f$floatFromBits":I
    nop

    .line 3696
    .end local v4    # "value$iv$iv":J
    .end local v6    # "$i$f$unpackFloat1":I
    nop

    .end local v1    # "$v$c$androidx-compose-ui-geometry-CornerRadius$-this$0$iv":J
    .end local v3    # "$i$f$getX-impl":I
    const/4 v1, 0x4

    aput v10, v0, v1

    .line 1982
    nop

    .line 1987
    move-object v1, p1

    check-cast v1, Landroidx/compose/ui/graphics/Outline$Rounded;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Outline$Rounded;->getRoundRect()Landroidx/compose/ui/geometry/RoundRect;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/geometry/RoundRect;->getBottomRightCornerRadius-kKHJgLs()J

    move-result-wide v1

    .restart local v1    # "$v$c$androidx-compose-ui-geometry-CornerRadius$-this$0$iv":J
    const/4 v3, 0x0

    .line 3699
    .local v3, "$i$f$getY-impl":I
    move-wide v4, v1

    .restart local v4    # "value$iv$iv":J
    const/4 v6, 0x0

    .line 3700
    .local v6, "$i$f$unpackFloat2":I
    and-long v10, v4, v8

    long-to-int v10, v10

    .restart local v10    # "bits$iv$iv$iv":I
    const/4 v11, 0x0

    .line 3701
    .restart local v11    # "$i$f$floatFromBits":I
    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v10

    .line 3700
    .end local v10    # "bits$iv$iv$iv":I
    .end local v11    # "$i$f$floatFromBits":I
    nop

    .line 3699
    .end local v4    # "value$iv$iv":J
    .end local v6    # "$i$f$unpackFloat2":I
    nop

    .end local v1    # "$v$c$androidx-compose-ui-geometry-CornerRadius$-this$0$iv":J
    .end local v3    # "$i$f$getY-impl":I
    const/4 v1, 0x5

    aput v10, v0, v1

    .line 1982
    nop

    .line 1988
    move-object v1, p1

    check-cast v1, Landroidx/compose/ui/graphics/Outline$Rounded;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Outline$Rounded;->getRoundRect()Landroidx/compose/ui/geometry/RoundRect;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/geometry/RoundRect;->getBottomLeftCornerRadius-kKHJgLs()J

    move-result-wide v1

    .restart local v1    # "$v$c$androidx-compose-ui-geometry-CornerRadius$-this$0$iv":J
    const/4 v3, 0x0

    .line 3702
    .local v3, "$i$f$getX-impl":I
    move-wide v4, v1

    .restart local v4    # "value$iv$iv":J
    const/4 v6, 0x0

    .line 3703
    .local v6, "$i$f$unpackFloat1":I
    shr-long v10, v4, v7

    long-to-int v7, v10

    .local v7, "bits$iv$iv$iv":I
    const/4 v10, 0x0

    .line 3704
    .local v10, "$i$f$floatFromBits":I
    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    .line 3703
    .end local v7    # "bits$iv$iv$iv":I
    .end local v10    # "$i$f$floatFromBits":I
    nop

    .line 3702
    .end local v4    # "value$iv$iv":J
    .end local v6    # "$i$f$unpackFloat1":I
    nop

    .end local v1    # "$v$c$androidx-compose-ui-geometry-CornerRadius$-this$0$iv":J
    .end local v3    # "$i$f$getX-impl":I
    const/4 v1, 0x6

    aput v7, v0, v1

    .line 1982
    nop

    .line 1989
    move-object v1, p1

    check-cast v1, Landroidx/compose/ui/graphics/Outline$Rounded;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Outline$Rounded;->getRoundRect()Landroidx/compose/ui/geometry/RoundRect;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/geometry/RoundRect;->getBottomLeftCornerRadius-kKHJgLs()J

    move-result-wide v1

    .restart local v1    # "$v$c$androidx-compose-ui-geometry-CornerRadius$-this$0$iv":J
    const/4 v3, 0x0

    .line 3705
    .local v3, "$i$f$getY-impl":I
    move-wide v4, v1

    .restart local v4    # "value$iv$iv":J
    const/4 v6, 0x0

    .line 3706
    .local v6, "$i$f$unpackFloat2":I
    and-long v7, v4, v8

    long-to-int v7, v7

    .restart local v7    # "bits$iv$iv$iv":I
    const/4 v8, 0x0

    .line 3707
    .local v8, "$i$f$floatFromBits":I
    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    .line 3706
    .end local v7    # "bits$iv$iv$iv":I
    .end local v8    # "$i$f$floatFromBits":I
    nop

    .line 3705
    .end local v4    # "value$iv$iv":J
    .end local v6    # "$i$f$unpackFloat2":I
    nop

    .end local v1    # "$v$c$androidx-compose-ui-geometry-CornerRadius$-this$0$iv":J
    .end local v3    # "$i$f$getY-impl":I
    const/4 v1, 0x7

    aput v7, v0, v1

    .line 1982
    goto :goto_0

    .line 1991
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private final toRegion(Landroidx/compose/ui/graphics/Outline;FF)Landroid/graphics/Region;
    .locals 8
    .param p1, "$this$toRegion"    # Landroidx/compose/ui/graphics/Outline;
    .param p2, "leftOffset"    # F
    .param p3, "topOffset"    # F

    .line 1994
    instance-of v0, p1, Landroidx/compose/ui/graphics/Outline$Generic;

    if-eqz v0, :cond_1

    .line 1995
    new-instance v0, Landroid/graphics/Region;

    move-object v1, p1

    check-cast v1, Landroidx/compose/ui/graphics/Outline$Generic;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Outline$Generic;->getBounds()Landroidx/compose/ui/geometry/Rect;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroidx/compose/ui/geometry/Rect;->translate(FF)Landroidx/compose/ui/geometry/Rect;

    move-result-object v3

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->toAndroidRect$default(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;Landroidx/compose/ui/geometry/Rect;FFILjava/lang/Object;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    .line 1996
    .local v0, "boundingRectangle":Landroid/graphics/Region;
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    move-object v2, v1

    .local v2, "$this$toRegion_u24lambda_u240":Landroid/graphics/Region;
    const/4 v3, 0x0

    .line 1997
    .local v3, "$i$a$-apply-AndroidComposeViewAccessibilityDelegateCompat$toRegion$1":I
    nop

    .line 1998
    move-object v4, p1

    check-cast v4, Landroidx/compose/ui/graphics/Outline$Generic;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/Outline$Generic;->getPath()Landroidx/compose/ui/graphics/Path;

    move-result-object v4

    .local v4, "$this$asAndroidPath$iv":Landroidx/compose/ui/graphics/Path;
    const/4 v5, 0x0

    .line 3708
    .local v5, "$i$f$asAndroidPath":I
    instance-of v6, v4, Landroidx/compose/ui/graphics/AndroidPath;

    if-eqz v6, :cond_0

    .line 3709
    move-object v6, v4

    check-cast v6, Landroidx/compose/ui/graphics/AndroidPath;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/AndroidPath;->getInternalPath()Landroid/graphics/Path;

    move-result-object v6

    .line 3712
    nop

    .line 1998
    .end local v4    # "$this$asAndroidPath$iv":Landroidx/compose/ui/graphics/Path;
    .end local v5    # "$i$f$asAndroidPath":I
    nop

    .line 3528
    move-object v4, v6

    .local v4, "$this$toRegion_u24lambda_u240_u240":Landroid/graphics/Path;
    const/4 v5, 0x0

    .line 1998
    .local v5, "$i$a$-apply-AndroidComposeViewAccessibilityDelegateCompat$toRegion$1$1":I
    invoke-virtual {v4, p2, p3}, Landroid/graphics/Path;->offset(FF)V

    .line 1999
    .end local v4    # "$this$toRegion_u24lambda_u240_u240":Landroid/graphics/Path;
    .end local v5    # "$i$a$-apply-AndroidComposeViewAccessibilityDelegateCompat$toRegion$1$1":I
    nop

    .line 1997
    invoke-virtual {v2, v6, v0}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    .line 2001
    nop

    .line 1996
    .end local v2    # "$this$toRegion_u24lambda_u240":Landroid/graphics/Region;
    .end local v3    # "$i$a$-apply-AndroidComposeViewAccessibilityDelegateCompat$toRegion$1":I
    nop

    .end local v0    # "boundingRectangle":Landroid/graphics/Region;
    goto :goto_0

    .line 3711
    .restart local v0    # "boundingRectangle":Landroid/graphics/Region;
    .restart local v2    # "$this$toRegion_u24lambda_u240":Landroid/graphics/Region;
    .restart local v3    # "$i$a$-apply-AndroidComposeViewAccessibilityDelegateCompat$toRegion$1":I
    .local v4, "$this$asAndroidPath$iv":Landroidx/compose/ui/graphics/Path;
    .local v5, "$i$f$asAndroidPath":I
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v6, "Unable to obtain android.graphics.Path"

    invoke-direct {v1, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2002
    .end local v0    # "boundingRectangle":Landroid/graphics/Region;
    .end local v2    # "$this$toRegion_u24lambda_u240":Landroid/graphics/Region;
    .end local v3    # "$i$a$-apply-AndroidComposeViewAccessibilityDelegateCompat$toRegion$1":I
    .end local v4    # "$this$asAndroidPath$iv":Landroidx/compose/ui/graphics/Path;
    .end local v5    # "$i$f$asAndroidPath":I
    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method private final toScreenCoords(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/compose/ui/geometry/Rect;)Landroid/graphics/RectF;
    .locals 25
    .param p1, "textNode"    # Landroidx/compose/ui/semantics/SemanticsNode;
    .param p2, "bounds"    # Landroidx/compose/ui/geometry/Rect;

    .line 1938
    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    .line 1939
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getPositionInRoot-F1C5BW0()J

    move-result-wide v2

    move-object/from16 v4, p2

    invoke-virtual {v4, v2, v3}, Landroidx/compose/ui/geometry/Rect;->translate-k-4lQ0M(J)Landroidx/compose/ui/geometry/Rect;

    move-result-object v2

    .line 1940
    .local v2, "boundsInRoot":Landroidx/compose/ui/geometry/Rect;
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getBoundsInRoot()Landroidx/compose/ui/geometry/Rect;

    move-result-object v3

    .line 1944
    .local v3, "textNodeBoundsInRoot":Landroidx/compose/ui/geometry/Rect;
    invoke-virtual {v2, v3}, Landroidx/compose/ui/geometry/Rect;->overlaps(Landroidx/compose/ui/geometry/Rect;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1945
    invoke-virtual {v2, v3}, Landroidx/compose/ui/geometry/Rect;->intersect(Landroidx/compose/ui/geometry/Rect;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v5

    goto :goto_0

    .line 1947
    :cond_1
    move-object v5, v1

    .line 1944
    :goto_0
    nop

    .line 1943
    nop

    .line 1950
    .local v5, "visibleBounds":Landroidx/compose/ui/geometry/Rect;
    if-eqz v5, :cond_2

    .line 1951
    iget-object v1, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v5}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v6

    .local v6, "x$iv":F
    invoke-virtual {v5}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v7

    .local v7, "y$iv":F
    const/4 v8, 0x0

    .line 3664
    .local v8, "$i$f$Offset":I
    move v9, v7

    .local v9, "val2$iv$iv":F
    move v10, v6

    .local v10, "val1$iv$iv":F
    const/4 v11, 0x0

    .line 3665
    .local v11, "$i$f$packFloats":I
    invoke-static {v10}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v12

    int-to-long v12, v12

    .line 3666
    .local v12, "v1$iv$iv":J
    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v14

    int-to-long v14, v14

    .line 3667
    .local v14, "v2$iv$iv":J
    const/16 v16, 0x20

    shl-long v17, v12, v16

    const-wide v19, 0xffffffffL

    and-long v21, v14, v19

    or-long v9, v17, v21

    .line 3664
    .end local v9    # "val2$iv$iv":F
    .end local v10    # "val1$iv$iv":F
    .end local v11    # "$i$f$packFloats":I
    .end local v12    # "v1$iv$iv":J
    .end local v14    # "v2$iv$iv":J
    invoke-static {v9, v10}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v6

    .line 1951
    .end local v6    # "x$iv":F
    .end local v7    # "y$iv":F
    .end local v8    # "$i$f$Offset":I
    invoke-virtual {v1, v6, v7}, Landroidx/compose/ui/platform/AndroidComposeView;->localToScreen-MK-Hz9U(J)J

    move-result-wide v6

    .line 1953
    .local v6, "topLeftInScreen":J
    iget-object v1, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v5}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v8

    .local v8, "x$iv":F
    invoke-virtual {v5}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result v9

    .local v9, "y$iv":F
    const/4 v10, 0x0

    .line 3668
    .local v10, "$i$f$Offset":I
    move v11, v9

    .local v11, "val2$iv$iv":F
    move v12, v8

    .local v12, "val1$iv$iv":F
    const/4 v13, 0x0

    .line 3669
    .local v13, "$i$f$packFloats":I
    invoke-static {v12}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v14

    int-to-long v14, v14

    .line 3670
    .local v14, "v1$iv$iv":J
    invoke-static {v11}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    .end local v2    # "boundsInRoot":Landroidx/compose/ui/geometry/Rect;
    .end local v3    # "textNodeBoundsInRoot":Landroidx/compose/ui/geometry/Rect;
    .local v17, "boundsInRoot":Landroidx/compose/ui/geometry/Rect;
    .local v18, "textNodeBoundsInRoot":Landroidx/compose/ui/geometry/Rect;
    int-to-long v2, v0

    .line 3671
    .local v2, "v2$iv$iv":J
    shl-long v21, v14, v16

    and-long v23, v2, v19

    or-long v2, v21, v23

    .line 3668
    .end local v2    # "v2$iv$iv":J
    .end local v11    # "val2$iv$iv":F
    .end local v12    # "val1$iv$iv":F
    .end local v13    # "$i$f$packFloats":I
    .end local v14    # "v1$iv$iv":J
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v2

    .line 1953
    .end local v8    # "x$iv":F
    .end local v9    # "y$iv":F
    .end local v10    # "$i$f$Offset":I
    invoke-virtual {v1, v2, v3}, Landroidx/compose/ui/platform/AndroidComposeView;->localToScreen-MK-Hz9U(J)J

    move-result-wide v0

    .line 1952
    nop

    .line 1956
    .local v0, "bottomRightInScreen":J
    new-instance v2, Landroid/graphics/RectF;

    .line 1957
    move-wide v8, v6

    .local v8, "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v3, 0x0

    .line 3672
    .local v3, "$i$f$getX-impl":I
    move-wide v10, v8

    .local v10, "value$iv$iv":J
    const/4 v12, 0x0

    .line 3673
    .local v12, "$i$f$unpackFloat1":I
    shr-long v13, v10, v16

    long-to-int v13, v13

    .local v13, "bits$iv$iv$iv":I
    const/4 v14, 0x0

    .line 3674
    .local v14, "$i$f$floatFromBits":I
    invoke-static {v13}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v13

    .line 3673
    .end local v13    # "bits$iv$iv$iv":I
    .end local v14    # "$i$f$floatFromBits":I
    nop

    .line 3672
    .end local v10    # "value$iv$iv":J
    .end local v12    # "$i$f$unpackFloat1":I
    nop

    .line 1957
    .end local v3    # "$i$f$getX-impl":I
    .end local v8    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    move-wide v8, v0

    .restart local v8    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v3, 0x0

    .line 3672
    .restart local v3    # "$i$f$getX-impl":I
    move-wide v10, v8

    .restart local v10    # "value$iv$iv":J
    const/4 v12, 0x0

    .line 3673
    .restart local v12    # "$i$f$unpackFloat1":I
    shr-long v14, v10, v16

    long-to-int v14, v14

    .local v14, "bits$iv$iv$iv":I
    const/4 v15, 0x0

    .line 3674
    .local v15, "$i$f$floatFromBits":I
    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v14

    .line 3673
    .end local v14    # "bits$iv$iv$iv":I
    .end local v15    # "$i$f$floatFromBits":I
    nop

    .line 3672
    .end local v10    # "value$iv$iv":J
    .end local v12    # "$i$f$unpackFloat1":I
    nop

    .line 1957
    .end local v3    # "$i$f$getX-impl":I
    .end local v8    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 1958
    move-wide v8, v6

    .restart local v8    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v10, 0x0

    .line 3675
    .local v10, "$i$f$getY-impl":I
    move-wide v11, v8

    .local v11, "value$iv$iv":J
    const/4 v13, 0x0

    .line 3676
    .local v13, "$i$f$unpackFloat2":I
    and-long v14, v11, v19

    long-to-int v14, v14

    .restart local v14    # "bits$iv$iv$iv":I
    const/4 v15, 0x0

    .line 3677
    .restart local v15    # "$i$f$floatFromBits":I
    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v14

    .line 3676
    .end local v14    # "bits$iv$iv$iv":I
    .end local v15    # "$i$f$floatFromBits":I
    nop

    .line 3675
    .end local v11    # "value$iv$iv":J
    .end local v13    # "$i$f$unpackFloat2":I
    nop

    .line 1958
    .end local v8    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v10    # "$i$f$getY-impl":I
    move-wide v8, v0

    .restart local v8    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v10, 0x0

    .line 3675
    .restart local v10    # "$i$f$getY-impl":I
    move-wide v11, v8

    .restart local v11    # "value$iv$iv":J
    const/4 v13, 0x0

    .line 3676
    .restart local v13    # "$i$f$unpackFloat2":I
    move-wide/from16 v21, v0

    .end local v0    # "bottomRightInScreen":J
    .local v21, "bottomRightInScreen":J
    and-long v0, v11, v19

    long-to-int v0, v0

    .local v0, "bits$iv$iv$iv":I
    const/4 v1, 0x0

    .line 3677
    .local v1, "$i$f$floatFromBits":I
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 3676
    .end local v0    # "bits$iv$iv$iv":I
    .end local v1    # "$i$f$floatFromBits":I
    nop

    .line 3675
    .end local v11    # "value$iv$iv":J
    .end local v13    # "$i$f$unpackFloat2":I
    nop

    .line 1958
    .end local v8    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v10    # "$i$f$getY-impl":I
    invoke-static {v14, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 1959
    move-wide v8, v6

    .restart local v8    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v1, 0x0

    .line 3678
    .local v1, "$i$f$getX-impl":I
    move-wide v10, v8

    .local v10, "value$iv$iv":J
    const/4 v12, 0x0

    .line 3679
    .restart local v12    # "$i$f$unpackFloat1":I
    shr-long v13, v10, v16

    long-to-int v13, v13

    .local v13, "bits$iv$iv$iv":I
    const/4 v14, 0x0

    .line 3680
    .local v14, "$i$f$floatFromBits":I
    invoke-static {v13}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v13

    .line 3679
    .end local v13    # "bits$iv$iv$iv":I
    .end local v14    # "$i$f$floatFromBits":I
    nop

    .line 3678
    .end local v10    # "value$iv$iv":J
    .end local v12    # "$i$f$unpackFloat1":I
    nop

    .line 1959
    .end local v1    # "$i$f$getX-impl":I
    .end local v8    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    move-wide/from16 v8, v21

    .restart local v8    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v1, 0x0

    .line 3678
    .restart local v1    # "$i$f$getX-impl":I
    move-wide v10, v8

    .restart local v10    # "value$iv$iv":J
    const/4 v12, 0x0

    .line 3679
    .restart local v12    # "$i$f$unpackFloat1":I
    shr-long v14, v10, v16

    long-to-int v14, v14

    .local v14, "bits$iv$iv$iv":I
    const/4 v15, 0x0

    .line 3680
    .restart local v15    # "$i$f$floatFromBits":I
    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v14

    .line 3679
    .end local v14    # "bits$iv$iv$iv":I
    .end local v15    # "$i$f$floatFromBits":I
    nop

    .line 3678
    .end local v10    # "value$iv$iv":J
    .end local v12    # "$i$f$unpackFloat1":I
    nop

    .line 1959
    .end local v1    # "$i$f$getX-impl":I
    .end local v8    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    invoke-static {v13, v14}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 1960
    move-wide v8, v6

    .restart local v8    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v10, 0x0

    .line 3681
    .local v10, "$i$f$getY-impl":I
    move-wide v11, v8

    .restart local v11    # "value$iv$iv":J
    const/4 v13, 0x0

    .line 3682
    .local v13, "$i$f$unpackFloat2":I
    and-long v14, v11, v19

    long-to-int v14, v14

    .restart local v14    # "bits$iv$iv$iv":I
    const/4 v15, 0x0

    .line 3683
    .restart local v15    # "$i$f$floatFromBits":I
    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v14

    .line 3682
    .end local v14    # "bits$iv$iv$iv":I
    .end local v15    # "$i$f$floatFromBits":I
    nop

    .line 3681
    .end local v11    # "value$iv$iv":J
    .end local v13    # "$i$f$unpackFloat2":I
    nop

    .line 1960
    .end local v8    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v10    # "$i$f$getY-impl":I
    move-wide/from16 v8, v21

    .restart local v8    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v10, 0x0

    .line 3681
    .restart local v10    # "$i$f$getY-impl":I
    move-wide v11, v8

    .restart local v11    # "value$iv$iv":J
    const/4 v13, 0x0

    .line 3682
    .restart local v13    # "$i$f$unpackFloat2":I
    move-object v15, v5

    .end local v5    # "visibleBounds":Landroidx/compose/ui/geometry/Rect;
    .local v15, "visibleBounds":Landroidx/compose/ui/geometry/Rect;
    and-long v4, v11, v19

    long-to-int v4, v4

    .local v4, "bits$iv$iv$iv":I
    const/4 v5, 0x0

    .line 3683
    .local v5, "$i$f$floatFromBits":I
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    .line 3682
    .end local v4    # "bits$iv$iv$iv":I
    .end local v5    # "$i$f$floatFromBits":I
    nop

    .line 3681
    .end local v11    # "value$iv$iv":J
    .end local v13    # "$i$f$unpackFloat2":I
    nop

    .line 1960
    .end local v8    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v10    # "$i$f$getY-impl":I
    invoke-static {v14, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 1956
    invoke-direct {v2, v3, v0, v1, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v1, v2

    .end local v6    # "topLeftInScreen":J
    .end local v21    # "bottomRightInScreen":J
    goto :goto_1

    .line 1963
    .end local v15    # "visibleBounds":Landroidx/compose/ui/geometry/Rect;
    .end local v17    # "boundsInRoot":Landroidx/compose/ui/geometry/Rect;
    .end local v18    # "textNodeBoundsInRoot":Landroidx/compose/ui/geometry/Rect;
    .local v2, "boundsInRoot":Landroidx/compose/ui/geometry/Rect;
    .local v3, "textNodeBoundsInRoot":Landroidx/compose/ui/geometry/Rect;
    .local v5, "visibleBounds":Landroidx/compose/ui/geometry/Rect;
    :cond_2
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object v15, v5

    .line 1950
    .end local v2    # "boundsInRoot":Landroidx/compose/ui/geometry/Rect;
    .end local v3    # "textNodeBoundsInRoot":Landroidx/compose/ui/geometry/Rect;
    .end local v5    # "visibleBounds":Landroidx/compose/ui/geometry/Rect;
    .restart local v15    # "visibleBounds":Landroidx/compose/ui/geometry/Rect;
    .restart local v17    # "boundsInRoot":Landroidx/compose/ui/geometry/Rect;
    .restart local v18    # "textNodeBoundsInRoot":Landroidx/compose/ui/geometry/Rect;
    :goto_1
    return-object v1
.end method

.method private final toSpannableString(Landroidx/compose/ui/text/AnnotatedString;)Landroid/text/SpannableString;
    .locals 3
    .param p1, "$this$toSpannableString"    # Landroidx/compose/ui/text/AnnotatedString;

    .line 1160
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->getFontFamilyResolver()Landroidx/compose/ui/text/font/FontFamily$Resolver;

    move-result-object v0

    .line 1162
    .local v0, "fontFamilyResolver":Landroidx/compose/ui/text/font/FontFamily$Resolver;
    nop

    .line 1163
    nop

    .line 1164
    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v1}, Landroidx/compose/ui/platform/AndroidComposeView;->getDensity()Landroidx/compose/ui/unit/Density;

    move-result-object v1

    .line 1165
    nop

    .line 1166
    iget-object v2, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->urlSpanCache:Landroidx/compose/ui/text/platform/URLSpanCache;

    .line 1163
    invoke-static {p1, v1, v0, v2}, Landroidx/compose/ui/text/platform/AndroidAccessibilitySpannableString_androidKt;->toAccessibilitySpannableString(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;Landroidx/compose/ui/text/platform/URLSpanCache;)Landroid/text/SpannableString;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 1168
    nop

    .line 1162
    const v2, 0x186a0

    invoke-direct {p0, v1, v2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->trimToSize(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/SpannableString;

    return-object v1
.end method

.method private final traverseAtGranularity(Landroidx/compose/ui/semantics/SemanticsNode;IZZ)Z
    .locals 16
    .param p1, "node"    # Landroidx/compose/ui/semantics/SemanticsNode;
    .param p2, "granularity"    # I
    .param p3, "forward"    # Z
    .param p4, "extendSelection"    # Z

    .line 2897
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getId()I

    move-result v1

    iget-object v2, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->previousTraversedNode:Ljava/lang/Integer;

    const/4 v3, -0x1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 2898
    :goto_0
    iput v3, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityCursorPosition:I

    .line 2899
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->previousTraversedNode:Ljava/lang/Integer;

    .line 2902
    :cond_1
    invoke-direct/range {p0 .. p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getIterableTextForAccessibility(Landroidx/compose/ui/semantics/SemanticsNode;)Ljava/lang/String;

    move-result-object v1

    .line 2903
    .local v1, "text":Ljava/lang/String;
    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    move v2, v5

    goto :goto_2

    :cond_3
    :goto_1
    move v2, v4

    :goto_2
    if-eqz v2, :cond_4

    .line 2904
    return v5

    .line 2906
    :cond_4
    invoke-direct/range {p0 .. p2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getIteratorForGranularity(Landroidx/compose/ui/semantics/SemanticsNode;I)Landroidx/compose/ui/platform/AccessibilityIterators$TextSegmentIterator;

    move-result-object v2

    if-nez v2, :cond_5

    return v5

    .line 2907
    .local v2, "iterator":Landroidx/compose/ui/platform/AccessibilityIterators$TextSegmentIterator;
    :cond_5
    invoke-direct/range {p0 .. p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getAccessibilitySelectionEnd(Landroidx/compose/ui/semantics/SemanticsNode;)I

    move-result v6

    .line 2908
    .local v6, "current":I
    if-ne v6, v3, :cond_7

    .line 2909
    if-eqz p3, :cond_6

    move v7, v5

    goto :goto_3

    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    :goto_3
    move v6, v7

    .line 2912
    :cond_7
    if-eqz p3, :cond_8

    invoke-interface {v2, v6}, Landroidx/compose/ui/platform/AccessibilityIterators$TextSegmentIterator;->following(I)[I

    move-result-object v7

    goto :goto_4

    :cond_8
    invoke-interface {v2, v6}, Landroidx/compose/ui/platform/AccessibilityIterators$TextSegmentIterator;->preceding(I)[I

    move-result-object v7

    :goto_4
    if-nez v7, :cond_9

    .line 2913
    return v5

    .line 2911
    :cond_9
    nop

    .line 2914
    .local v7, "range":[I
    aget v12, v7, v5

    .line 2915
    .local v12, "segmentStart":I
    aget v13, v7, v4

    .line 2916
    .local v13, "segmentEnd":I
    const/4 v5, 0x0

    .line 2917
    .local v5, "selectionStart":I
    const/4 v8, 0x0

    .line 2918
    .local v8, "selectionEnd":I
    if-eqz p4, :cond_d

    invoke-direct/range {p0 .. p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->isAccessibilitySelectionExtendable(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 2919
    invoke-direct/range {p0 .. p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getAccessibilitySelectionStart(Landroidx/compose/ui/semantics/SemanticsNode;)I

    move-result v5

    .line 2920
    if-ne v5, v3, :cond_b

    .line 2921
    if-eqz p3, :cond_a

    move v3, v12

    goto :goto_5

    :cond_a
    move v3, v13

    :goto_5
    move v5, v3

    .line 2923
    :cond_b
    if-eqz p3, :cond_c

    move v3, v13

    goto :goto_6

    :cond_c
    move v3, v12

    .end local v8    # "selectionEnd":I
    .local v3, "selectionEnd":I
    :goto_6
    goto :goto_8

    .line 2925
    .end local v3    # "selectionEnd":I
    .restart local v8    # "selectionEnd":I
    :cond_d
    if-eqz p3, :cond_e

    move v3, v13

    goto :goto_7

    :cond_e
    move v3, v12

    :goto_7
    move v5, v3

    .line 2926
    nop

    .line 2929
    .end local v8    # "selectionEnd":I
    .restart local v3    # "selectionEnd":I
    :goto_8
    if-eqz p3, :cond_f

    const/16 v8, 0x100

    move v10, v8

    goto :goto_9

    .line 2930
    :cond_f
    const/16 v8, 0x200

    move v10, v8

    .line 2929
    :goto_9
    nop

    .line 2928
    nop

    .line 2931
    .local v10, "action":I
    nop

    .line 2932
    new-instance v8, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;

    .line 2933
    nop

    .line 2934
    nop

    .line 2935
    nop

    .line 2936
    nop

    .line 2937
    nop

    .line 2938
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 2932
    move-object/from16 v9, p1

    move/from16 v11, p2

    invoke-direct/range {v8 .. v15}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;-><init>(Landroidx/compose/ui/semantics/SemanticsNode;IIIIJ)V

    .line 2931
    iput-object v8, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->pendingTextTraversedEvent:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;

    .line 2940
    invoke-direct {v0, v9, v5, v3, v4}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->setAccessibilitySelection(Landroidx/compose/ui/semantics/SemanticsNode;IIZ)Z

    .line 2941
    return v4
.end method

.method private final trimToSize(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;I)TT;"
        }
    .end annotation

    .line 2157
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-eqz v2, :cond_6

    .line 2158
    move v2, p2

    .line 2159
    .local v2, "len":I
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v0

    :cond_2
    :goto_1
    if-nez v1, :cond_5

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gt v1, p2, :cond_3

    goto :goto_2

    .line 2160
    :cond_3
    add-int/lit8 v1, p2, -0x1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2161
    add-int/lit8 v2, p2, -0x1

    .line 2164
    :cond_4
    invoke-interface {p1, v0, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type T of androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat.trimToSize"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 2159
    :cond_5
    :goto_2
    return-object p1

    .line 3528
    .end local v2    # "len":I
    :cond_6
    const/4 v0, 0x0

    .line 2157
    .local v0, "$i$a$-require-AndroidComposeViewAccessibilityDelegateCompat$trimToSize$1":I
    nop

    .end local v0    # "$i$a$-require-AndroidComposeViewAccessibilityDelegateCompat$trimToSize$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "size should be greater than 0"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final updateHoveredVirtualView(I)V
    .locals 10
    .param p1, "virtualViewId"    # I

    .line 2127
    iget v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->hoveredVirtualViewId:I

    if-ne v0, p1, :cond_0

    .line 2128
    return-void

    .line 2131
    :cond_0
    iget v2, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->hoveredVirtualViewId:I

    .line 2132
    .local v2, "previousVirtualViewId":I
    iput p1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->hoveredVirtualViewId:I

    .line 2138
    const/16 v8, 0xc

    const/4 v9, 0x0

    const/16 v5, 0x80

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    move v4, p1

    .end local p1    # "virtualViewId":I
    .local v4, "virtualViewId":I
    invoke-static/range {v3 .. v9}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEventForVirtualView$default(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)Z

    .line 2139
    .end local v4    # "virtualViewId":I
    .restart local p1    # "virtualViewId":I
    const/16 v6, 0xc

    const/16 v3, 0x100

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEventForVirtualView$default(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)Z

    .line 2140
    return-void
.end method

.method private final updateSemanticsNodesCopyAndPanes()V
    .locals 33

    .line 2348
    move-object/from16 v0, p0

    new-instance v1, Landroidx/collection/MutableIntSet;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroidx/collection/MutableIntSet;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 2349
    .local v1, "toRemove":Landroidx/collection/MutableIntSet;
    iget-object v5, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->paneDisplayed:Landroidx/collection/MutableIntSet;

    check-cast v5, Landroidx/collection/IntSet;

    .local v5, "this_$iv":Landroidx/collection/IntSet;
    const/4 v6, 0x0

    .line 3734
    .local v6, "$i$f$forEach":I
    nop

    .line 3735
    iget-object v7, v5, Landroidx/collection/IntSet;->elements:[I

    .line 3737
    .local v7, "k$iv":[I
    move-object v8, v5

    .local v8, "this_$iv$iv":Landroidx/collection/IntSet;
    const/4 v9, 0x0

    .line 3738
    .local v9, "$i$f$forEachIndex":I
    nop

    .line 3739
    iget-object v10, v8, Landroidx/collection/IntSet;->metadata:[J

    .line 3740
    .local v10, "m$iv$iv":[J
    array-length v11, v10

    add-int/lit8 v11, v11, -0x2

    .line 3742
    .local v11, "lastIndex$iv$iv":I
    const/4 v12, 0x0

    .local v12, "i$iv$iv":I
    const-wide/16 v15, 0xff

    const/16 v17, 0x7

    const-wide v18, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/16 v2, 0x8

    if-gt v12, v11, :cond_8

    .line 3743
    :goto_0
    aget-wide v20, v10, v12

    .line 3744
    .local v20, "slot$iv$iv":J
    move-wide/from16 v22, v20

    .local v22, "$this$maskEmptyOrDeleted$iv$iv$iv":J
    const/16 v24, 0x0

    .line 3745
    .local v24, "$i$f$maskEmptyOrDeleted":I
    move-wide/from16 v3, v22

    const-wide/16 v22, 0x80

    .end local v22    # "$this$maskEmptyOrDeleted$iv$iv$iv":J
    .local v3, "$this$maskEmptyOrDeleted$iv$iv$iv":J
    not-long v13, v3

    shl-long v13, v13, v17

    and-long/2addr v13, v3

    and-long v3, v13, v18

    .line 3744
    .end local v3    # "$this$maskEmptyOrDeleted$iv$iv$iv":J
    .end local v24    # "$i$f$maskEmptyOrDeleted":I
    cmp-long v3, v3, v18

    if-eqz v3, :cond_7

    .line 3746
    sub-int v3, v12, v11

    not-int v3, v3

    ushr-int/lit8 v3, v3, 0x1f

    rsub-int/lit8 v3, v3, 0x8

    .line 3747
    .local v3, "bitCount$iv$iv":I
    const/4 v4, 0x0

    .local v4, "j$iv$iv":I
    :goto_1
    if-ge v4, v3, :cond_6

    .line 3748
    and-long v13, v20, v15

    .local v13, "value$iv$iv$iv":J
    const/16 v24, 0x0

    .line 3749
    .local v24, "$i$f$isFull":I
    cmp-long v26, v13, v22

    if-gez v26, :cond_0

    const/4 v13, 0x1

    goto :goto_2

    :cond_0
    const/4 v13, 0x0

    .line 3748
    .end local v13    # "value$iv$iv$iv":J
    .end local v24    # "$i$f$isFull":I
    :goto_2
    if-eqz v13, :cond_5

    .line 3750
    shl-int/lit8 v13, v12, 0x3

    add-int/2addr v13, v4

    .line 3751
    .local v13, "index$iv$iv":I
    move v14, v13

    .local v14, "index$iv":I
    const/16 v24, 0x0

    .line 3737
    .local v24, "$i$a$-forEachIndex-IntSet$forEach$2$iv":I
    move-wide/from16 v26, v15

    aget v15, v7, v14

    .local v15, "id":I
    const/16 v16, 0x0

    .line 2350
    .local v16, "$i$a$-forEach-AndroidComposeViewAccessibilityDelegateCompat$updateSemanticsNodesCopyAndPanes$1":I
    move/from16 v28, v2

    invoke-direct {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getCurrentSemanticsNodes()Landroidx/collection/IntObjectMap;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;->getSemanticsNode()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v2

    goto :goto_3

    :cond_1
    const/4 v2, 0x0

    .line 2351
    .local v2, "currentNode":Landroidx/compose/ui/semantics/SemanticsNode;
    :goto_3
    nop

    .line 2352
    if-eqz v2, :cond_2

    .line 2353
    move-object/from16 v29, v2

    .end local v2    # "currentNode":Landroidx/compose/ui/semantics/SemanticsNode;
    .local v29, "currentNode":Landroidx/compose/ui/semantics/SemanticsNode;
    invoke-virtual/range {v29 .. v29}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v2

    sget-object v30, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    move/from16 v31, v4

    .end local v4    # "j$iv$iv":I
    .local v31, "j$iv$iv":I
    invoke-virtual/range {v30 .. v30}, Landroidx/compose/ui/semantics/SemanticsProperties;->getPaneTitle()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_4

    .line 2352
    .end local v29    # "currentNode":Landroidx/compose/ui/semantics/SemanticsNode;
    .end local v31    # "j$iv$iv":I
    .restart local v2    # "currentNode":Landroidx/compose/ui/semantics/SemanticsNode;
    .restart local v4    # "j$iv$iv":I
    :cond_2
    move-object/from16 v29, v2

    move/from16 v31, v4

    .line 2355
    .end local v2    # "currentNode":Landroidx/compose/ui/semantics/SemanticsNode;
    .end local v4    # "j$iv$iv":I
    .restart local v29    # "currentNode":Landroidx/compose/ui/semantics/SemanticsNode;
    .restart local v31    # "j$iv$iv":I
    :goto_4
    invoke-virtual {v1, v15}, Landroidx/collection/MutableIntSet;->add(I)Z

    .line 2356
    nop

    .line 2357
    nop

    .line 2358
    nop

    .line 2360
    nop

    .line 2361
    nop

    .line 2359
    iget-object v2, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->previousSemanticsNodes:Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {v2, v15}, Landroidx/collection/MutableIntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/platform/SemanticsNodeCopy;

    .line 2360
    if-eqz v2, :cond_3

    .line 2359
    nop

    .line 2360
    invoke-virtual {v2}, Landroidx/compose/ui/platform/SemanticsNodeCopy;->getUnmergedConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v2

    .line 2361
    if-eqz v2, :cond_3

    .line 2359
    nop

    .line 2361
    sget-object v4, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v4}, Landroidx/compose/ui/semantics/SemanticsProperties;->getPaneTitle()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v4

    invoke-static {v2, v4}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_5

    .line 2360
    :cond_3
    const/4 v2, 0x0

    .line 2356
    :goto_5
    const/16 v4, 0x20

    invoke-direct {v0, v15, v4, v2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendPaneChangeEvents(IILjava/lang/String;)V

    .line 2364
    :cond_4
    nop

    .line 3737
    .end local v15    # "id":I
    .end local v16    # "$i$a$-forEach-AndroidComposeViewAccessibilityDelegateCompat$updateSemanticsNodesCopyAndPanes$1":I
    .end local v29    # "currentNode":Landroidx/compose/ui/semantics/SemanticsNode;
    nop

    .line 3751
    .end local v14    # "index$iv":I
    .end local v24    # "$i$a$-forEachIndex-IntSet$forEach$2$iv":I
    goto :goto_6

    .line 3748
    .end local v13    # "index$iv$iv":I
    .end local v31    # "j$iv$iv":I
    .restart local v4    # "j$iv$iv":I
    :cond_5
    move/from16 v28, v2

    move/from16 v31, v4

    move-wide/from16 v26, v15

    .line 3753
    .end local v4    # "j$iv$iv":I
    .restart local v31    # "j$iv$iv":I
    :goto_6
    shr-long v20, v20, v28

    .line 3747
    add-int/lit8 v4, v31, 0x1

    move-wide/from16 v15, v26

    move/from16 v2, v28

    .end local v31    # "j$iv$iv":I
    .restart local v4    # "j$iv$iv":I
    goto/16 :goto_1

    :cond_6
    move/from16 v28, v2

    move/from16 v31, v4

    move-wide/from16 v26, v15

    .line 3755
    .end local v4    # "j$iv$iv":I
    if-ne v3, v2, :cond_a

    goto :goto_7

    .line 3744
    .end local v3    # "bitCount$iv$iv":I
    :cond_7
    move-wide/from16 v26, v15

    .line 3742
    .end local v20    # "slot$iv$iv":J
    :goto_7
    if-eq v12, v11, :cond_9

    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v15, v26

    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_8
    move-wide/from16 v26, v15

    const-wide/16 v22, 0x80

    .line 3758
    .end local v12    # "i$iv$iv":I
    :cond_9
    nop

    .line 3759
    .end local v8    # "this_$iv$iv":Landroidx/collection/IntSet;
    .end local v9    # "$i$f$forEachIndex":I
    .end local v10    # "m$iv$iv":[J
    .end local v11    # "lastIndex$iv$iv":I
    :cond_a
    nop

    .line 2365
    .end local v5    # "this_$iv":Landroidx/collection/IntSet;
    .end local v6    # "$i$f$forEach":I
    .end local v7    # "k$iv":[I
    iget-object v2, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->paneDisplayed:Landroidx/collection/MutableIntSet;

    move-object v3, v1

    check-cast v3, Landroidx/collection/IntSet;

    invoke-virtual {v2, v3}, Landroidx/collection/MutableIntSet;->removeAll(Landroidx/collection/IntSet;)Z

    .line 2366
    iget-object v2, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->previousSemanticsNodes:Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {v2}, Landroidx/collection/MutableIntObjectMap;->clear()V

    .line 2367
    invoke-direct {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getCurrentSemanticsNodes()Landroidx/collection/IntObjectMap;

    move-result-object v2

    .local v2, "this_$iv":Landroidx/collection/IntObjectMap;
    const/4 v3, 0x0

    .line 3760
    .local v3, "$i$f$forEach":I
    iget-object v4, v2, Landroidx/collection/IntObjectMap;->keys:[I

    .line 3761
    .local v4, "k$iv":[I
    iget-object v5, v2, Landroidx/collection/IntObjectMap;->values:[Ljava/lang/Object;

    .line 3763
    .local v5, "v$iv":[Ljava/lang/Object;
    move-object v6, v2

    .local v6, "this_$iv$iv":Landroidx/collection/IntObjectMap;
    const/4 v7, 0x0

    .line 3764
    .local v7, "$i$f$forEachIndexed":I
    iget-object v8, v6, Landroidx/collection/IntObjectMap;->metadata:[J

    .line 3765
    .local v8, "m$iv$iv":[J
    array-length v9, v8

    add-int/lit8 v9, v9, -0x2

    .line 3767
    .local v9, "lastIndex$iv$iv":I
    const/4 v10, 0x0

    .local v10, "i$iv$iv":I
    if-gt v10, v9, :cond_10

    .line 3768
    :goto_8
    aget-wide v11, v8, v10

    .line 3769
    .local v11, "slot$iv$iv":J
    move-wide v13, v11

    .local v13, "$this$maskEmptyOrDeleted$iv$iv$iv":J
    const/4 v15, 0x0

    .line 3770
    .local v15, "$i$f$maskEmptyOrDeleted":I
    move-object/from16 v16, v1

    move-object/from16 v20, v2

    .end local v1    # "toRemove":Landroidx/collection/MutableIntSet;
    .end local v2    # "this_$iv":Landroidx/collection/IntObjectMap;
    .local v16, "toRemove":Landroidx/collection/MutableIntSet;
    .local v20, "this_$iv":Landroidx/collection/IntObjectMap;
    not-long v1, v13

    shl-long v1, v1, v17

    and-long/2addr v1, v13

    and-long v1, v1, v18

    .line 3769
    .end local v13    # "$this$maskEmptyOrDeleted$iv$iv$iv":J
    .end local v15    # "$i$f$maskEmptyOrDeleted":I
    cmp-long v1, v1, v18

    if-eqz v1, :cond_f

    .line 3771
    sub-int v1, v10, v9

    not-int v1, v1

    ushr-int/lit8 v1, v1, 0x1f

    const/16 v28, 0x8

    rsub-int/lit8 v2, v1, 0x8

    .line 3772
    .local v2, "bitCount$iv$iv":I
    const/4 v1, 0x0

    .local v1, "j$iv$iv":I
    :goto_9
    if-ge v1, v2, :cond_e

    .line 3773
    and-long v13, v11, v26

    .local v13, "value$iv$iv$iv":J
    const/4 v15, 0x0

    .line 3774
    .local v15, "$i$f$isFull":I
    cmp-long v21, v13, v22

    if-gez v21, :cond_b

    const/4 v13, 0x1

    goto :goto_a

    :cond_b
    const/4 v13, 0x0

    .line 3773
    .end local v13    # "value$iv$iv$iv":J
    .end local v15    # "$i$f$isFull":I
    :goto_a
    if-eqz v13, :cond_d

    .line 3775
    shl-int/lit8 v13, v10, 0x3

    add-int/2addr v13, v1

    .line 3776
    .local v13, "index$iv$iv":I
    move v14, v13

    .restart local v14    # "index$iv":I
    const/4 v15, 0x0

    .line 3763
    .local v15, "$i$a$-forEachIndexed-IntObjectMap$forEach$1$iv":I
    move/from16 v21, v1

    .end local v1    # "j$iv$iv":I
    .local v21, "j$iv$iv":I
    aget v1, v4, v14

    .local v1, "key":I
    aget-object v24, v5, v14

    check-cast v24, Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;

    .local v24, "value":Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;
    const/16 v25, 0x0

    .line 2368
    .local v25, "$i$a$-forEach-AndroidComposeViewAccessibilityDelegateCompat$updateSemanticsNodesCopyAndPanes$2":I
    nop

    .line 2369
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;->getSemanticsNode()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v29

    move/from16 v30, v3

    .end local v3    # "$i$f$forEach":I
    .local v30, "$i$f$forEach":I
    invoke-virtual/range {v29 .. v29}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v3

    sget-object v29, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    move-object/from16 v31, v4

    .end local v4    # "k$iv":[I
    .local v31, "k$iv":[I
    invoke-virtual/range {v29 .. v29}, Landroidx/compose/ui/semantics/SemanticsProperties;->getPaneTitle()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2370
    iget-object v3, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->paneDisplayed:Landroidx/collection/MutableIntSet;

    invoke-virtual {v3, v1}, Landroidx/collection/MutableIntSet;->add(I)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2372
    nop

    .line 2373
    nop

    .line 2374
    nop

    .line 2375
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;->getSemanticsNode()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v3

    sget-object v4, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v4}, Landroidx/compose/ui/semantics/SemanticsProperties;->getPaneTitle()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->get(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2372
    const/16 v4, 0x10

    invoke-direct {v0, v1, v4, v3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendPaneChangeEvents(IILjava/lang/String;)V

    .line 2378
    :cond_c
    iget-object v3, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->previousSemanticsNodes:Landroidx/collection/MutableIntObjectMap;

    .line 2379
    new-instance v4, Landroidx/compose/ui/platform/SemanticsNodeCopy;

    move-object/from16 v29, v5

    .end local v5    # "v$iv":[Ljava/lang/Object;
    .local v29, "v$iv":[Ljava/lang/Object;
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;->getSemanticsNode()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v5

    move-object/from16 v32, v6

    .end local v6    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    .local v32, "this_$iv$iv":Landroidx/collection/IntObjectMap;
    invoke-direct {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getCurrentSemanticsNodes()Landroidx/collection/IntObjectMap;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroidx/compose/ui/platform/SemanticsNodeCopy;-><init>(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/collection/IntObjectMap;)V

    .line 2378
    invoke-virtual {v3, v1, v4}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    .line 2380
    nop

    .line 3763
    .end local v1    # "key":I
    .end local v24    # "value":Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;
    .end local v25    # "$i$a$-forEach-AndroidComposeViewAccessibilityDelegateCompat$updateSemanticsNodesCopyAndPanes$2":I
    nop

    .line 3776
    .end local v14    # "index$iv":I
    .end local v15    # "$i$a$-forEachIndexed-IntObjectMap$forEach$1$iv":I
    goto :goto_b

    .line 3773
    .end local v13    # "index$iv$iv":I
    .end local v21    # "j$iv$iv":I
    .end local v29    # "v$iv":[Ljava/lang/Object;
    .end local v30    # "$i$f$forEach":I
    .end local v31    # "k$iv":[I
    .end local v32    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    .local v1, "j$iv$iv":I
    .restart local v3    # "$i$f$forEach":I
    .restart local v4    # "k$iv":[I
    .restart local v5    # "v$iv":[Ljava/lang/Object;
    .restart local v6    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    :cond_d
    move/from16 v21, v1

    move/from16 v30, v3

    move-object/from16 v31, v4

    move-object/from16 v29, v5

    move-object/from16 v32, v6

    .line 3778
    .end local v1    # "j$iv$iv":I
    .end local v3    # "$i$f$forEach":I
    .end local v4    # "k$iv":[I
    .end local v5    # "v$iv":[Ljava/lang/Object;
    .end local v6    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    .restart local v21    # "j$iv$iv":I
    .restart local v29    # "v$iv":[Ljava/lang/Object;
    .restart local v30    # "$i$f$forEach":I
    .restart local v31    # "k$iv":[I
    .restart local v32    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    :goto_b
    const/16 v1, 0x8

    shr-long/2addr v11, v1

    .line 3772
    add-int/lit8 v3, v21, 0x1

    move v1, v3

    move-object/from16 v5, v29

    move/from16 v3, v30

    move-object/from16 v4, v31

    move-object/from16 v6, v32

    .end local v21    # "j$iv$iv":I
    .local v3, "j$iv$iv":I
    goto/16 :goto_9

    .end local v29    # "v$iv":[Ljava/lang/Object;
    .end local v30    # "$i$f$forEach":I
    .end local v31    # "k$iv":[I
    .end local v32    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    .restart local v1    # "j$iv$iv":I
    .local v3, "$i$f$forEach":I
    .restart local v4    # "k$iv":[I
    .restart local v5    # "v$iv":[Ljava/lang/Object;
    .restart local v6    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    :cond_e
    move/from16 v21, v1

    move/from16 v30, v3

    move-object/from16 v31, v4

    move-object/from16 v29, v5

    move-object/from16 v32, v6

    const/16 v1, 0x8

    .line 3780
    .end local v1    # "j$iv$iv":I
    .end local v3    # "$i$f$forEach":I
    .end local v4    # "k$iv":[I
    .end local v5    # "v$iv":[Ljava/lang/Object;
    .end local v6    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    .restart local v29    # "v$iv":[Ljava/lang/Object;
    .restart local v30    # "$i$f$forEach":I
    .restart local v31    # "k$iv":[I
    .restart local v32    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    if-ne v2, v1, :cond_12

    goto :goto_c

    .line 3769
    .end local v2    # "bitCount$iv$iv":I
    .end local v29    # "v$iv":[Ljava/lang/Object;
    .end local v30    # "$i$f$forEach":I
    .end local v31    # "k$iv":[I
    .end local v32    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    .restart local v3    # "$i$f$forEach":I
    .restart local v4    # "k$iv":[I
    .restart local v5    # "v$iv":[Ljava/lang/Object;
    .restart local v6    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    :cond_f
    move/from16 v30, v3

    move-object/from16 v31, v4

    move-object/from16 v29, v5

    move-object/from16 v32, v6

    const/16 v1, 0x8

    .line 3767
    .end local v3    # "$i$f$forEach":I
    .end local v4    # "k$iv":[I
    .end local v5    # "v$iv":[Ljava/lang/Object;
    .end local v6    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    .end local v11    # "slot$iv$iv":J
    .restart local v29    # "v$iv":[Ljava/lang/Object;
    .restart local v30    # "$i$f$forEach":I
    .restart local v31    # "k$iv":[I
    .restart local v32    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    :goto_c
    if-eq v10, v9, :cond_11

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, v16

    move-object/from16 v2, v20

    move-object/from16 v5, v29

    move/from16 v3, v30

    move-object/from16 v4, v31

    move-object/from16 v6, v32

    goto/16 :goto_8

    .end local v16    # "toRemove":Landroidx/collection/MutableIntSet;
    .end local v20    # "this_$iv":Landroidx/collection/IntObjectMap;
    .end local v29    # "v$iv":[Ljava/lang/Object;
    .end local v30    # "$i$f$forEach":I
    .end local v31    # "k$iv":[I
    .end local v32    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    .local v1, "toRemove":Landroidx/collection/MutableIntSet;
    .local v2, "this_$iv":Landroidx/collection/IntObjectMap;
    .restart local v3    # "$i$f$forEach":I
    .restart local v4    # "k$iv":[I
    .restart local v5    # "v$iv":[Ljava/lang/Object;
    .restart local v6    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    :cond_10
    move-object/from16 v16, v1

    move-object/from16 v20, v2

    move/from16 v30, v3

    move-object/from16 v31, v4

    move-object/from16 v29, v5

    move-object/from16 v32, v6

    .line 3783
    .end local v1    # "toRemove":Landroidx/collection/MutableIntSet;
    .end local v2    # "this_$iv":Landroidx/collection/IntObjectMap;
    .end local v3    # "$i$f$forEach":I
    .end local v4    # "k$iv":[I
    .end local v5    # "v$iv":[Ljava/lang/Object;
    .end local v6    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    .end local v10    # "i$iv$iv":I
    .restart local v16    # "toRemove":Landroidx/collection/MutableIntSet;
    .restart local v20    # "this_$iv":Landroidx/collection/IntObjectMap;
    .restart local v29    # "v$iv":[Ljava/lang/Object;
    .restart local v30    # "$i$f$forEach":I
    .restart local v31    # "k$iv":[I
    .restart local v32    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    :cond_11
    nop

    .line 3784
    .end local v7    # "$i$f$forEachIndexed":I
    .end local v8    # "m$iv$iv":[J
    .end local v9    # "lastIndex$iv$iv":I
    .end local v32    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    :cond_12
    nop

    .line 2381
    .end local v20    # "this_$iv":Landroidx/collection/IntObjectMap;
    .end local v29    # "v$iv":[Ljava/lang/Object;
    .end local v30    # "$i$f$forEach":I
    .end local v31    # "k$iv":[I
    nop

    .line 2382
    new-instance v1, Landroidx/compose/ui/platform/SemanticsNodeCopy;

    iget-object v2, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v2}, Landroidx/compose/ui/platform/AndroidComposeView;->getSemanticsOwner()Landroidx/compose/ui/semantics/SemanticsOwner;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsOwner;->getUnmergedRootSemanticsNode()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v2

    invoke-direct {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getCurrentSemanticsNodes()Landroidx/collection/IntObjectMap;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroidx/compose/ui/platform/SemanticsNodeCopy;-><init>(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/collection/IntObjectMap;)V

    .line 2381
    iput-object v1, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->previousSemanticsRoot:Landroidx/compose/ui/platform/SemanticsNodeCopy;

    .line 2383
    return-void
.end method


# virtual methods
.method public final boundsUpdatesEventLoop$ui(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
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

    instance-of v0, p1, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;

    iget v1, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;

    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;-><init>(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 2193
    iget v3, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;->label:I

    const/4 v4, 0x1

    packed-switch v3, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    move-object v3, p0

    .local v3, "this":Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;
    iget-object v5, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v6, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;->L$0:Ljava/lang/Object;

    check-cast v6, Landroidx/collection/MutableIntSet;

    .local v6, "subtreeChangedSemanticsNodesIds":Landroidx/collection/MutableIntSet;
    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v10, v6

    move-object v6, v5

    move-object v5, v10

    goto/16 :goto_4

    .end local v3    # "this":Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;
    .end local v6    # "subtreeChangedSemanticsNodesIds":Landroidx/collection/MutableIntSet;
    :pswitch_1
    move-object v3, p0

    .restart local v3    # "this":Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;
    iget-object v5, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v6, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;->L$0:Ljava/lang/Object;

    check-cast v6, Landroidx/collection/MutableIntSet;

    .restart local v6    # "subtreeChangedSemanticsNodesIds":Landroidx/collection/MutableIntSet;
    :try_start_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v7, v6

    move-object v6, v5

    move-object v5, v3

    move-object v3, v2

    move-object v2, v1

    goto :goto_2

    .end local v3    # "this":Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;
    .end local v6    # "subtreeChangedSemanticsNodesIds":Landroidx/collection/MutableIntSet;
    :pswitch_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, p0

    .line 2194
    .restart local v3    # "this":Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;
    nop

    .line 2195
    :try_start_2
    new-instance v5, Landroidx/collection/MutableIntSet;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v5, v6, v4, v7}, Landroidx/collection/MutableIntSet;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 2196
    .local v5, "subtreeChangedSemanticsNodesIds":Landroidx/collection/MutableIntSet;
    iget-object v6, v3, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->boundsUpdateChannel:Lkotlinx/coroutines/channels/Channel;

    invoke-interface {v6}, Lkotlinx/coroutines/channels/Channel;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v6

    :goto_1
    iput-object v5, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;->label:I

    invoke-interface {v6, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->hasNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v7, v2, :cond_1

    .line 2193
    .end local v3    # "this":Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;
    return-object v2

    .line 2196
    .restart local v3    # "this":Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;
    :cond_1
    move-object v10, v2

    move-object v2, v1

    move-object v1, v7

    move-object v7, v5

    move-object v5, v3

    move-object v3, v10

    .end local v1    # "$result":Ljava/lang/Object;
    .end local v3    # "this":Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;
    .local v2, "$result":Ljava/lang/Object;
    .local v5, "this":Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;
    .local v7, "subtreeChangedSemanticsNodesIds":Landroidx/collection/MutableIntSet;
    :goto_2
    :try_start_3
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v6}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    .line 2197
    invoke-virtual {v5}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->isEnabled$ui()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2198
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v8, v5, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->subtreeChangedLayoutNodes:Landroidx/collection/ArraySet;

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v8

    :goto_3
    if-ge v1, v8, :cond_2

    .line 2199
    iget-object v9, v5, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->subtreeChangedLayoutNodes:Landroidx/collection/ArraySet;

    invoke-virtual {v9, v1}, Landroidx/collection/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/node/LayoutNode;

    .line 2200
    .local v9, "layoutNode":Landroidx/compose/ui/node/LayoutNode;
    nop

    .line 2201
    nop

    .line 2202
    nop

    .line 2200
    invoke-direct {v5, v9, v7}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendSubtreeChangeAccessibilityEvents(Landroidx/compose/ui/node/LayoutNode;Landroidx/collection/MutableIntSet;)V

    .line 2204
    invoke-direct {v5, v9}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendTypeViewScrolledAccessibilityEvent(Landroidx/compose/ui/node/LayoutNode;)V

    .line 2198
    .end local v9    # "layoutNode":Landroidx/compose/ui/node/LayoutNode;
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2206
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v7}, Landroidx/collection/MutableIntSet;->clear()V

    .line 2223
    iget-boolean v1, v5, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->checkingForSemanticsChanges:Z

    if-nez v1, :cond_3

    .line 2224
    iput-boolean v4, v5, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->checkingForSemanticsChanges:Z

    .line 2225
    iget-object v1, v5, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->handler:Landroid/os/Handler;

    iget-object v8, v5, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsChangeChecker:Ljava/lang/Runnable;

    invoke-virtual {v1, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2228
    :cond_3
    iget-object v1, v5, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->subtreeChangedLayoutNodes:Landroidx/collection/ArraySet;

    invoke-virtual {v1}, Landroidx/collection/ArraySet;->clear()V

    .line 2229
    iget-object v1, v5, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->pendingHorizontalScrollEvents:Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {v1}, Landroidx/collection/MutableIntObjectMap;->clear()V

    .line 2230
    iget-object v1, v5, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->pendingVerticalScrollEvents:Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {v1}, Landroidx/collection/MutableIntObjectMap;->clear()V

    .line 2231
    iget-wide v8, v5, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->SendRecurringAccessibilityEventsIntervalMillis:J

    iput-object v7, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;->L$1:Ljava/lang/Object;

    const/4 v1, 0x2

    iput v1, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;->label:I

    invoke-static {v8, v9, v0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne v1, v3, :cond_4

    .line 2193
    .end local v5    # "this":Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;
    return-object v3

    .line 2231
    .restart local v5    # "this":Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;
    :cond_4
    move-object v1, v2

    move-object v2, v3

    move-object v3, v5

    move-object v5, v7

    .end local v2    # "$result":Ljava/lang/Object;
    .end local v7    # "subtreeChangedSemanticsNodesIds":Landroidx/collection/MutableIntSet;
    .local v1, "$result":Ljava/lang/Object;
    .restart local v3    # "this":Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;
    .local v5, "subtreeChangedSemanticsNodesIds":Landroidx/collection/MutableIntSet;
    :goto_4
    goto :goto_1

    .line 2234
    .end local v1    # "$result":Ljava/lang/Object;
    .end local v3    # "this":Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;
    .restart local v2    # "$result":Ljava/lang/Object;
    .local v5, "this":Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;
    :cond_5
    iget-object v1, v5, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->subtreeChangedLayoutNodes:Landroidx/collection/ArraySet;

    invoke-virtual {v1}, Landroidx/collection/ArraySet;->clear()V

    .line 2235
    .end local v5    # "this":Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;
    nop

    .line 2236
    .restart local v5    # "this":Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 2234
    :catchall_0
    move-exception v1

    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    move-object v3, v5

    goto :goto_5

    .end local v2    # "$result":Ljava/lang/Object;
    .end local v5    # "this":Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;
    .restart local v1    # "$result":Ljava/lang/Object;
    .restart local v3    # "this":Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;
    :catchall_1
    move-exception v2

    :goto_5
    iget-object v4, v3, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->subtreeChangedLayoutNodes:Landroidx/collection/ArraySet;

    invoke-virtual {v4}, Landroidx/collection/ArraySet;->clear()V

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final canScroll-0AR0LA0$ui(ZIJ)Z
    .locals 7
    .param p1, "vertical"    # Z
    .param p2, "direction"    # I
    .param p3, "$v$c$androidx-compose-ui-geometry-Offset$-position$0"    # J

    .line 429
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 430
    const/4 v0, 0x0

    return v0

    .line 433
    :cond_0
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getCurrentSemanticsNodes()Landroidx/collection/IntObjectMap;

    move-result-object v2

    move-object v1, p0

    move v3, p1

    move v4, p2

    move-wide v5, p3

    .end local p1    # "vertical":Z
    .end local p2    # "direction":I
    .end local p3    # "$v$c$androidx-compose-ui-geometry-Offset$-position$0":J
    .local v3, "vertical":Z
    .local v4, "direction":I
    .local v5, "$v$c$androidx-compose-ui-geometry-Offset$-position$0":J
    invoke-direct/range {v1 .. v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->canScroll-moWRBKg(Landroidx/collection/IntObjectMap;ZIJ)Z

    move-result p1

    return p1
.end method

.method public final dispatchHoverEvent$ui(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 2031
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->isTouchExplorationEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2032
    return v1

    .line 2035
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    const/high16 v3, -0x80000000

    packed-switch v0, :pswitch_data_0

    .line 2061
    :pswitch_0
    return v1

    .line 2050
    :pswitch_1
    nop

    .line 2051
    iget v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->hoveredVirtualViewId:I

    if-eq v0, v3, :cond_1

    .line 2052
    invoke-direct {p0, v3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->updateHoveredVirtualView(I)V

    .line 2053
    goto :goto_0

    .line 2056
    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->getAndroidViewsHandler$ui()Landroidx/compose/ui/platform/AndroidViewsHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/compose/ui/platform/AndroidViewsHandler;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 2050
    :goto_0
    return v2

    .line 2038
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->hitTestSemanticsAt$ui(FF)I

    move-result v0

    .line 2045
    .local v0, "virtualViewId":I
    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v1}, Landroidx/compose/ui/platform/AndroidComposeView;->getAndroidViewsHandler$ui()Landroidx/compose/ui/platform/AndroidViewsHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/compose/ui/platform/AndroidViewsHandler;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 2046
    .local v1, "handled":Z
    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->updateHoveredVirtualView(I)V

    .line 2047
    if-ne v0, v3, :cond_2

    move v2, v1

    :cond_2
    return v2

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final getAccessibilityForceEnabledForTesting$ui()Z
    .locals 1

    .line 256
    iget-boolean v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityForceEnabledForTesting:Z

    return v0
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;
    .locals 1
    .param p1, "host"    # Landroid/view/View;

    .line 2143
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->nodeProvider:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$ComposeAccessibilityNodeProvider;

    check-cast v0, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;

    return-object v0
.end method

.method public final getExtraDataTestTraversalAfterVal$ui()Ljava/lang/String;
    .locals 1

    .line 368
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->ExtraDataTestTraversalAfterVal:Ljava/lang/String;

    return-object v0
.end method

.method public final getExtraDataTestTraversalBeforeVal$ui()Ljava/lang/String;
    .locals 1

    .line 365
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->ExtraDataTestTraversalBeforeVal:Ljava/lang/String;

    return-object v0
.end method

.method public final getHoveredVirtualViewId$ui()I
    .locals 1

    .line 244
    iget v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->hoveredVirtualViewId:I

    return v0
.end method

.method public final getIdToAfterMap$ui()Landroidx/collection/MutableIntIntMap;
    .locals 1

    .line 364
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->idToAfterMap:Landroidx/collection/MutableIntIntMap;

    return-object v0
.end method

.method public final getIdToBeforeMap$ui()Landroidx/collection/MutableIntIntMap;
    .locals 1

    .line 363
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->idToBeforeMap:Landroidx/collection/MutableIntIntMap;

    return-object v0
.end method

.method public final getOnSendAccessibilityEvent$ui()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/view/accessibility/AccessibilityEvent;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 249
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->onSendAccessibilityEvent:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getRequestFromAccessibilityToolForTesting$ui()Ljava/lang/Boolean;
    .locals 1

    .line 302
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->requestFromAccessibilityToolForTesting:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getSendRecurringAccessibilityEventsIntervalMillis$ui()J
    .locals 2

    .line 267
    iget-wide v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->SendRecurringAccessibilityEventsIntervalMillis:J

    return-wide v0
.end method

.method public final getView()Landroidx/compose/ui/platform/AndroidComposeView;
    .locals 1

    .line 163
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    return-object v0
.end method

.method public final hitTestSemanticsAt$ui(FF)I
    .locals 18
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 2072
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    check-cast v1, Landroidx/compose/ui/node/Owner;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v3}, Landroidx/compose/ui/node/Owner;->measureAndLayout$default(Landroidx/compose/ui/node/Owner;ZILjava/lang/Object;)V

    .line 2074
    new-instance v1, Landroidx/compose/ui/node/HitTestResult;

    invoke-direct {v1}, Landroidx/compose/ui/node/HitTestResult;-><init>()V

    move-object v8, v1

    .line 2075
    .local v8, "hitSemanticsEntities":Landroidx/compose/ui/node/HitTestResult;
    iget-object v1, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v1}, Landroidx/compose/ui/platform/AndroidComposeView;->getRoot()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v5

    .line 2076
    move/from16 v1, p2

    .local v1, "y$iv":F
    move/from16 v2, p1

    .local v2, "x$iv":F
    const/4 v3, 0x0

    .line 3713
    .local v3, "$i$f$Offset":I
    move v6, v1

    .local v6, "val2$iv$iv":F
    move v7, v2

    .local v7, "val1$iv$iv":F
    const/4 v9, 0x0

    .line 3714
    .local v9, "$i$f$packFloats":I
    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v10

    int-to-long v10, v10

    .line 3715
    .local v10, "v1$iv$iv":J
    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v12

    int-to-long v12, v12

    .line 3716
    .local v12, "v2$iv$iv":J
    const/16 v14, 0x20

    shl-long v14, v10, v14

    const-wide v16, 0xffffffffL

    and-long v16, v12, v16

    or-long v6, v14, v16

    .line 3713
    .end local v6    # "val2$iv$iv":F
    .end local v7    # "val1$iv$iv":F
    .end local v9    # "$i$f$packFloats":I
    .end local v10    # "v1$iv$iv":J
    .end local v12    # "v2$iv$iv":J
    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v6

    .line 2077
    .end local v1    # "y$iv":F
    .end local v2    # "x$iv":F
    .end local v3    # "$i$f$Offset":I
    nop

    .line 2075
    const/16 v11, 0xc

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v5 .. v12}, Landroidx/compose/ui/node/LayoutNode;->hitTestSemantics-6fMxITs$ui$default(Landroidx/compose/ui/node/LayoutNode;JLandroidx/compose/ui/node/HitTestResult;IZILjava/lang/Object;)V

    .line 2081
    move-object v1, v8

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v1

    .local v1, "i":I
    :goto_0
    const/high16 v2, -0x80000000

    const/4 v3, -0x1

    if-ge v3, v1, :cond_4

    .line 2082
    invoke-virtual {v8, v1}, Landroidx/compose/ui/node/HitTestResult;->get(I)Landroidx/compose/ui/Modifier$Node;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {v3}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v3

    .line 2086
    .local v3, "layoutNode":Landroidx/compose/ui/node/LayoutNode;
    iget-object v5, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v5}, Landroidx/compose/ui/platform/AndroidComposeView;->getAndroidViewsHandler$ui()Landroidx/compose/ui/platform/AndroidViewsHandler;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/ui/platform/AndroidViewsHandler;->getLayoutNodeToHolder()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    .line 2087
    .local v5, "androidView":Landroidx/compose/ui/viewinterop/AndroidViewHolder;
    if-eqz v5, :cond_0

    .line 2088
    return v2

    .line 2091
    :cond_0
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui()Landroidx/compose/ui/node/NodeChain;

    move-result-object v2

    const/4 v6, 0x0

    .line 3717
    .local v6, "$i$f$getSemantics-OLwlOKw":I
    const/16 v7, 0x8

    invoke-static {v7}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v6

    .line 2091
    .end local v6    # "$i$f$getSemantics-OLwlOKw":I
    invoke-virtual {v2, v6}, Landroidx/compose/ui/node/NodeChain;->has-H91voCI$ui(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2092
    goto :goto_1

    .line 2095
    :cond_1
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->getSemanticsId()I

    move-result v2

    invoke-direct {v0, v2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsNodeIdToAccessibilityVirtualNodeId(I)I

    move-result v2

    .line 2099
    .local v2, "virtualViewId":I
    invoke-static {v3, v4}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->SemanticsNode(Landroidx/compose/ui/node/LayoutNode;Z)Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v6

    .line 2102
    .local v6, "semanticsNode":Landroidx/compose/ui/semantics/SemanticsNode;
    invoke-static {v6}, Landroidx/compose/ui/semantics/SemanticsOwnerKt;->isImportantForAccessibility(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 2103
    goto :goto_1

    .line 2109
    :cond_2
    invoke-static {v6}, Landroidx/compose/ui/semantics/SemanticsNode_androidKt;->isAccessibilityIgnoredLink(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2110
    nop

    .line 2081
    .end local v2    # "virtualViewId":I
    .end local v3    # "layoutNode":Landroidx/compose/ui/node/LayoutNode;
    .end local v5    # "androidView":Landroidx/compose/ui/viewinterop/AndroidViewHolder;
    .end local v6    # "semanticsNode":Landroidx/compose/ui/semantics/SemanticsNode;
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2113
    .restart local v2    # "virtualViewId":I
    .restart local v3    # "layoutNode":Landroidx/compose/ui/node/LayoutNode;
    .restart local v5    # "androidView":Landroidx/compose/ui/viewinterop/AndroidViewHolder;
    .restart local v6    # "semanticsNode":Landroidx/compose/ui/semantics/SemanticsNode;
    :cond_3
    return v2

    .line 2116
    .end local v1    # "i":I
    .end local v2    # "virtualViewId":I
    .end local v3    # "layoutNode":Landroidx/compose/ui/node/LayoutNode;
    .end local v5    # "androidView":Landroidx/compose/ui/viewinterop/AndroidViewHolder;
    .end local v6    # "semanticsNode":Landroidx/compose/ui/semantics/SemanticsNode;
    :cond_4
    return v2
.end method

.method public final isEnabled$ui()Z
    .locals 1

    .line 288
    iget-boolean v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityForceEnabledForTesting:Z

    if-nez v0, :cond_1

    .line 291
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getEnabledServices()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onAccessibilityStateChanged(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 411
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->resetEnabledAccessibilityServiceList()V

    .line 412
    return-void
.end method

.method public final onLayoutChange$ui(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 1
    .param p1, "layoutNode"    # Landroidx/compose/ui/node/LayoutNode;

    .line 2242
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->currentSemanticsNodesInvalidated:Z

    .line 2245
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->isEnabled$ui()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2246
    return-void

    .line 2250
    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->notifySubtreeAccessibilityStateChangedIfNeeded(Landroidx/compose/ui/node/LayoutNode;)V

    .line 2251
    return-void
.end method

.method public final onSemanticsChange$ui()V
    .locals 2

    .line 2180
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->currentSemanticsNodesInvalidated:Z

    .line 2182
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->isEnabled$ui()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->checkingForSemanticsChanges:Z

    if-nez v1, :cond_0

    .line 2183
    iput-boolean v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->checkingForSemanticsChanges:Z

    .line 2184
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->handler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsChangeChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2186
    :cond_0
    return-void
.end method

.method public onTouchExplorationStateChanged(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 415
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->resetEnabledAccessibilityServiceList()V

    .line 416
    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 399
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->resetEnabledAccessibilityServiceList()V

    .line 400
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    move-object v1, p0

    check-cast v1, Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    .line 401
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    move-object v1, p0

    check-cast v1, Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    .line 402
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 405
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->handler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsChangeChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 406
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    move-object v1, p0

    check-cast v1, Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    .line 407
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    move-object v1, p0

    check-cast v1, Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    .line 408
    return-void
.end method

.method public final setAccessibilityForceEnabledForTesting$ui(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 258
    iput-boolean p1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityForceEnabledForTesting:Z

    .line 259
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->currentSemanticsNodesInvalidated:Z

    .line 260
    return-void
.end method

.method public final setHoveredVirtualViewId$ui(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 244
    iput p1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->hoveredVirtualViewId:I

    return-void
.end method

.method public final setIdToAfterMap$ui(Landroidx/collection/MutableIntIntMap;)V
    .locals 0
    .param p1, "<set-?>"    # Landroidx/collection/MutableIntIntMap;

    .line 364
    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->idToAfterMap:Landroidx/collection/MutableIntIntMap;

    return-void
.end method

.method public final setIdToBeforeMap$ui(Landroidx/collection/MutableIntIntMap;)V
    .locals 0
    .param p1, "<set-?>"    # Landroidx/collection/MutableIntIntMap;

    .line 363
    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->idToBeforeMap:Landroidx/collection/MutableIntIntMap;

    return-void
.end method

.method public final setOnSendAccessibilityEvent$ui(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1, "<set-?>"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/view/accessibility/AccessibilityEvent;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 249
    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->onSendAccessibilityEvent:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setRequestFromAccessibilityToolForTesting$ui(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/Boolean;

    .line 302
    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->requestFromAccessibilityToolForTesting:Ljava/lang/Boolean;

    return-void
.end method

.method public final setSendRecurringAccessibilityEventsIntervalMillis$ui(J)V
    .locals 0
    .param p1, "<set-?>"    # J

    .line 267
    iput-wide p1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->SendRecurringAccessibilityEventsIntervalMillis:J

    return-void
.end method
