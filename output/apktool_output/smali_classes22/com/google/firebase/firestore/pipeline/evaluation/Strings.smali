.class public final Lcom/google/firebase/firestore/pipeline/evaluation/Strings;
.super Ljava/lang/Object;
.source "Strings.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/pipeline/evaluation/Strings$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStrings.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Strings.kt\ncom/google/firebase/firestore/pipeline/evaluation/Strings\n+ 2 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt\n*L\n1#1,434:1\n651#2:435\n666#2:436\n682#2:437\n376#2,3:438\n375#2:441\n460#2:442\n484#2:443\n381#2:444\n376#2,3:445\n375#2:448\n460#2:449\n484#2:450\n381#2:451\n376#2,3:452\n375#2:455\n460#2:456\n484#2:457\n381#2:458\n193#2,4:459\n192#2:463\n243#2:464\n260#2:465\n199#2:466\n116#2:467\n115#2:468\n214#2:469\n44#2,6:470\n224#2:476\n119#2:477\n61#2:478\n44#2,6:479\n69#2:485\n61#2:486\n44#2,6:487\n69#2:493\n61#2:494\n44#2,6:495\n69#2:501\n61#2:502\n44#2,6:503\n69#2:509\n544#2,8:510\n61#2:518\n44#2,6:519\n69#2:525\n504#2:526\n533#2:527\n504#2:528\n533#2:529\n504#2:530\n533#2:531\n504#2:532\n533#2:533\n504#2:534\n533#2:535\n*S KotlinDebug\n*F\n+ 1 Strings.kt\ncom/google/firebase/firestore/pipeline/evaluation/Strings\n*L\n41#1:435\n41#1:436\n41#1:437\n45#1:438,3\n45#1:441\n45#1:442\n45#1:443\n45#1:444\n49#1:445,3\n49#1:448\n49#1:449\n49#1:450\n49#1:451\n53#1:452,3\n53#1:455\n53#1:456\n53#1:457\n53#1:458\n58#1:459,4\n58#1:463\n58#1:464\n58#1:465\n58#1:466\n63#1:467\n63#1:468\n63#1:469\n63#1:470,6\n63#1:476\n63#1:477\n85#1:478\n85#1:479,6\n85#1:485\n115#1:486\n115#1:487,6\n115#1:493\n131#1:494\n131#1:495,6\n131#1:501\n142#1:502\n142#1:503,6\n142#1:509\n180#1:510,8\n244#1:518\n244#1:519,6\n244#1:525\n281#1:526\n281#1:527\n300#1:528\n300#1:529\n318#1:530\n318#1:531\n350#1:532\n350#1:533\n383#1:534\n383#1:535\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000c\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u001b\u001a\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0002\u001a\u0010\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0019\u001a\u00020\u001aH\u0002\u001a\u0010\u0010\u001e\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0002\u001a\u0010\u0010\u001f\u001a\u00020\u001a2\u0006\u0010\u0019\u001a\u00020\u001aH\u0002\u001a\u0010\u0010&\u001a\u00020\'2\u0006\u0010\u0006\u001a\u00020\'H\u0002\u001a\u0010\u0010(\u001a\u00020)2\u0006\u0010\u0006\u001a\u00020*H\u0002\u001a\u0017\u0010-\u001a\u0004\u0018\u00010.2\u0006\u0010/\u001a\u00020\u0007H\u0002\u00a2\u0006\u0002\u00100\u001a\u0010\u0010G\u001a\u00020\'2\u0006\u0010H\u001a\u00020\'H\u0002\"w\u0010\u0000\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0002\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0001j\u0002`\nX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"w\u0010\r\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0002\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0001j\u0002`\nX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000c\"w\u0010\u000f\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0002\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0001j\u0002`\nX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000c\"w\u0010\u0011\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0002\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0001j\u0002`\nX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u000c\"w\u0010\u0013\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0002\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0001j\u0002`\nX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u000c\"w\u0010\u0015\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0002\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0001j\u0002`\nX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u000c\"w\u0010\u001c\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0002\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0001j\u0002`\nX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u000c\"w\u0010 \u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0002\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0001j\u0002`\nX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\u000c\"w\u0010\"\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0002\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0001j\u0002`\nX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010\u000c\"w\u0010$\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0002\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0001j\u0002`\nX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010\u000c\"w\u0010+\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0002\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0001j\u0002`\nX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008,\u0010\u000c\"w\u00101\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0002\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0001j\u0002`\nX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00082\u0010\u000c\"w\u00103\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0002\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0001j\u0002`\nX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00084\u0010\u000c\"w\u00105\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0002\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0001j\u0002`\nX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00086\u0010\u000c\"w\u00107\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0002\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0001j\u0002`\nX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00088\u0010\u000c\"w\u00109\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0002\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0001j\u0002`\nX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008:\u0010\u000c\"w\u0010;\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0002\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0001j\u0002`\nX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008<\u0010\u000c\"w\u0010=\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0002\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0001j\u0002`\nX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008>\u0010\u000c\"w\u0010?\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0002\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0001j\u0002`\nX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008@\u0010\u000c\"w\u0010A\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0002\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0001j\u0002`\nX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008B\u0010\u000c\"w\u0010C\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0002\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0001j\u0002`\nX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008D\u0010\u000c\"w\u0010E\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0002\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0001j\u0002`\nX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008F\u0010\u000c\u00a8\u0006I"
    }
    d2 = {
        "evaluateStrConcat",
        "Lkotlin/Function1;",
        "",
        "Lcom/google/firebase/firestore/model/MutableDocument;",
        "Lkotlin/ParameterName;",
        "name",
        "input",
        "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
        "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateDocument;",
        "params",
        "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateFunction;",
        "getEvaluateStrConcat",
        "()Lkotlin/jvm/functions/Function1;",
        "evaluateStrContains",
        "getEvaluateStrContains",
        "evaluateStartsWith",
        "getEvaluateStartsWith",
        "evaluateEndsWith",
        "getEvaluateEndsWith",
        "evaluateByteLength",
        "getEvaluateByteLength",
        "evaluateCharLength",
        "getEvaluateCharLength",
        "isUpperCaseImpl",
        "",
        "c",
        "",
        "toLowerCaseImpl",
        "evaluateToLowercase",
        "getEvaluateToLowercase",
        "isLowerCaseImpl",
        "toUpperCaseImpl",
        "evaluateToUppercase",
        "getEvaluateToUppercase",
        "evaluateReverse",
        "getEvaluateReverse",
        "evaluateStringReverse",
        "getEvaluateStringReverse",
        "stringReverse",
        "",
        "bytesReverse",
        "",
        "Lcom/google/protobuf/ByteString;",
        "evaluateSplit",
        "getEvaluateSplit",
        "getIntegerOrElse",
        "",
        "value",
        "(Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;)Ljava/lang/Long;",
        "evaluateSubstring",
        "getEvaluateSubstring",
        "evaluateTrim",
        "getEvaluateTrim",
        "evaluateLTrim",
        "getEvaluateLTrim",
        "evaluateRTrim",
        "getEvaluateRTrim",
        "evaluateReplaceAll",
        "getEvaluateReplaceAll",
        "evaluateReplaceFirst",
        "getEvaluateReplaceFirst",
        "evaluateRegexContains",
        "getEvaluateRegexContains",
        "evaluateRegexMatch",
        "getEvaluateRegexMatch",
        "evaluateRegexFind",
        "getEvaluateRegexFind",
        "evaluateRegexFindAll",
        "getEvaluateRegexFindAll",
        "evaluateLike",
        "getEvaluateLike",
        "likeToRegex",
        "like",
        "com.google.firebase-firebase-firestore"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final evaluateByteLength:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "+",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final evaluateCharLength:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "+",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final evaluateEndsWith:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "+",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final evaluateLTrim:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "+",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final evaluateLike:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "+",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final evaluateRTrim:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "+",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final evaluateRegexContains:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "+",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final evaluateRegexFind:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "+",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final evaluateRegexFindAll:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "+",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final evaluateRegexMatch:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "+",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final evaluateReplaceAll:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "+",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final evaluateReplaceFirst:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "+",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final evaluateReverse:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "+",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final evaluateSplit:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "+",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final evaluateStartsWith:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "+",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final evaluateStrConcat:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "+",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final evaluateStrContains:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "+",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final evaluateStringReverse:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "+",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final evaluateSubstring:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "+",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final evaluateToLowercase:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "+",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final evaluateToUppercase:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "+",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final evaluateTrim:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "+",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 41
    const/4 v0, 0x0

    .line 435
    .local v0, "$i$f$variadicStringFunction":I
    sget-object v1, Lcom/google/firestore/v1/Value$ValueTypeCase;->STRING_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    .local v1, "valueTypeCase$iv$iv":Lcom/google/firestore/v1/Value$ValueTypeCase;
    const/4 v2, 0x0

    .line 436
    .local v2, "$i$f$variadicFunctionType":I
    new-instance v3, Lcom/google/firebase/firestore/pipeline/evaluation/Strings$special$$inlined$variadicStringFunction$1;

    invoke-direct {v3, v1}, Lcom/google/firebase/firestore/pipeline/evaluation/Strings$special$$inlined$variadicStringFunction$1;-><init>(Lcom/google/firestore/v1/Value$ValueTypeCase;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 437
    nop

    .line 435
    .end local v1    # "valueTypeCase$iv$iv":Lcom/google/firestore/v1/Value$ValueTypeCase;
    .end local v2    # "$i$f$variadicFunctionType":I
    nop

    .line 41
    .end local v0    # "$i$f$variadicStringFunction":I
    sput-object v3, Lcom/google/firebase/firestore/pipeline/evaluation/Strings;->evaluateStrConcat:Lkotlin/jvm/functions/Function1;

    .line 45
    const/4 v0, 0x0

    .line 438
    .local v0, "$i$f$binaryStringStringFunction":I
    sget-object v1, Lcom/google/firestore/v1/Value$ValueTypeCase;->STRING_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    .line 440
    sget-object v2, Lcom/google/firestore/v1/Value$ValueTypeCase;->STRING_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    .line 441
    nop

    .local v1, "valueTypeCase1$iv$iv":Lcom/google/firestore/v1/Value$ValueTypeCase;
    .local v2, "valueTypeCase2$iv$iv":Lcom/google/firestore/v1/Value$ValueTypeCase;
    const/4 v3, 0x0

    .line 442
    .local v3, "$i$f$binaryFunctionType":I
    new-instance v4, Lcom/google/firebase/firestore/pipeline/evaluation/Strings$special$$inlined$binaryStringStringFunction$1;

    invoke-direct {v4, v1, v2}, Lcom/google/firebase/firestore/pipeline/evaluation/Strings$special$$inlined$binaryStringStringFunction$1;-><init>(Lcom/google/firestore/v1/Value$ValueTypeCase;Lcom/google/firestore/v1/Value$ValueTypeCase;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 443
    nop

    .line 444
    .end local v1    # "valueTypeCase1$iv$iv":Lcom/google/firestore/v1/Value$ValueTypeCase;
    .end local v2    # "valueTypeCase2$iv$iv":Lcom/google/firestore/v1/Value$ValueTypeCase;
    .end local v3    # "$i$f$binaryFunctionType":I
    nop

    .line 45
    .end local v0    # "$i$f$binaryStringStringFunction":I
    sput-object v4, Lcom/google/firebase/firestore/pipeline/evaluation/Strings;->evaluateStrContains:Lkotlin/jvm/functions/Function1;

    .line 49
    const/4 v0, 0x0

    .line 445
    .restart local v0    # "$i$f$binaryStringStringFunction":I
    sget-object v1, Lcom/google/firestore/v1/Value$ValueTypeCase;->STRING_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    .line 447
    sget-object v2, Lcom/google/firestore/v1/Value$ValueTypeCase;->STRING_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    .line 448
    nop

    .restart local v1    # "valueTypeCase1$iv$iv":Lcom/google/firestore/v1/Value$ValueTypeCase;
    .restart local v2    # "valueTypeCase2$iv$iv":Lcom/google/firestore/v1/Value$ValueTypeCase;
    const/4 v3, 0x0

    .line 449
    .restart local v3    # "$i$f$binaryFunctionType":I
    new-instance v4, Lcom/google/firebase/firestore/pipeline/evaluation/Strings$special$$inlined$binaryStringStringFunction$2;

    invoke-direct {v4, v1, v2}, Lcom/google/firebase/firestore/pipeline/evaluation/Strings$special$$inlined$binaryStringStringFunction$2;-><init>(Lcom/google/firestore/v1/Value$ValueTypeCase;Lcom/google/firestore/v1/Value$ValueTypeCase;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 450
    nop

    .line 451
    .end local v1    # "valueTypeCase1$iv$iv":Lcom/google/firestore/v1/Value$ValueTypeCase;
    .end local v2    # "valueTypeCase2$iv$iv":Lcom/google/firestore/v1/Value$ValueTypeCase;
    .end local v3    # "$i$f$binaryFunctionType":I
    nop

    .line 49
    .end local v0    # "$i$f$binaryStringStringFunction":I
    sput-object v4, Lcom/google/firebase/firestore/pipeline/evaluation/Strings;->evaluateStartsWith:Lkotlin/jvm/functions/Function1;

    .line 53
    const/4 v0, 0x0

    .line 452
    .restart local v0    # "$i$f$binaryStringStringFunction":I
    sget-object v1, Lcom/google/firestore/v1/Value$ValueTypeCase;->STRING_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    .line 454
    sget-object v2, Lcom/google/firestore/v1/Value$ValueTypeCase;->STRING_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    .line 455
    nop

    .restart local v1    # "valueTypeCase1$iv$iv":Lcom/google/firestore/v1/Value$ValueTypeCase;
    .restart local v2    # "valueTypeCase2$iv$iv":Lcom/google/firestore/v1/Value$ValueTypeCase;
    const/4 v3, 0x0

    .line 456
    .restart local v3    # "$i$f$binaryFunctionType":I
    new-instance v4, Lcom/google/firebase/firestore/pipeline/evaluation/Strings$special$$inlined$binaryStringStringFunction$3;

    invoke-direct {v4, v1, v2}, Lcom/google/firebase/firestore/pipeline/evaluation/Strings$special$$inlined$binaryStringStringFunction$3;-><init>(Lcom/google/firestore/v1/Value$ValueTypeCase;Lcom/google/firestore/v1/Value$ValueTypeCase;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 457
    nop

    .line 458
    .end local v1    # "valueTypeCase1$iv$iv":Lcom/google/firestore/v1/Value$ValueTypeCase;
    .end local v2    # "valueTypeCase2$iv$iv":Lcom/google/firestore/v1/Value$ValueTypeCase;
    .end local v3    # "$i$f$binaryFunctionType":I
    nop

    .line 53
    .end local v0    # "$i$f$binaryStringStringFunction":I
    sput-object v4, Lcom/google/firebase/firestore/pipeline/evaluation/Strings;->evaluateEndsWith:Lkotlin/jvm/functions/Function1;

    .line 58
    const/4 v0, 0x0

    .line 459
    .local v0, "$i$f$unaryFunction":I
    sget-object v1, Lcom/google/firestore/v1/Value$ValueTypeCase;->BYTES_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    .line 462
    sget-object v2, Lcom/google/firestore/v1/Value$ValueTypeCase;->STRING_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    .line 463
    nop

    .restart local v1    # "valueTypeCase1$iv$iv":Lcom/google/firestore/v1/Value$ValueTypeCase;
    .restart local v2    # "valueTypeCase2$iv$iv":Lcom/google/firestore/v1/Value$ValueTypeCase;
    const/4 v3, 0x0

    .line 464
    .local v3, "$i$f$unaryFunctionType":I
    new-instance v4, Lcom/google/firebase/firestore/pipeline/evaluation/Strings$special$$inlined$unaryFunction$1;

    invoke-direct {v4, v1, v2}, Lcom/google/firebase/firestore/pipeline/evaluation/Strings$special$$inlined$unaryFunction$1;-><init>(Lcom/google/firestore/v1/Value$ValueTypeCase;Lcom/google/firestore/v1/Value$ValueTypeCase;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 465
    nop

    .line 466
    .end local v1    # "valueTypeCase1$iv$iv":Lcom/google/firestore/v1/Value$ValueTypeCase;
    .end local v2    # "valueTypeCase2$iv$iv":Lcom/google/firestore/v1/Value$ValueTypeCase;
    .end local v3    # "$i$f$unaryFunctionType":I
    nop

    .line 58
    .end local v0    # "$i$f$unaryFunction":I
    sput-object v4, Lcom/google/firebase/firestore/pipeline/evaluation/Strings;->evaluateByteLength:Lkotlin/jvm/functions/Function1;

    .line 63
    const/4 v0, 0x0

    .line 467
    .local v0, "$i$f$unaryStringFunction":I
    sget-object v1, Lcom/google/firestore/v1/Value$ValueTypeCase;->STRING_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    .line 468
    nop

    .local v1, "valueTypeCase$iv$iv":Lcom/google/firestore/v1/Value$ValueTypeCase;
    const/4 v2, 0x0

    .line 469
    .local v2, "$i$f$unaryFunctionType":I
    const/4 v3, 0x0

    .line 470
    .local v3, "$i$f$unaryFunction":I
    new-instance v4, Lcom/google/firebase/firestore/pipeline/evaluation/Strings$special$$inlined$unaryStringFunction$1;

    invoke-direct {v4, v1}, Lcom/google/firebase/firestore/pipeline/evaluation/Strings$special$$inlined$unaryStringFunction$1;-><init>(Lcom/google/firestore/v1/Value$ValueTypeCase;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 475
    nop

    .line 476
    .end local v3    # "$i$f$unaryFunction":I
    nop

    .line 477
    .end local v1    # "valueTypeCase$iv$iv":Lcom/google/firestore/v1/Value$ValueTypeCase;
    .end local v2    # "$i$f$unaryFunctionType":I
    nop

    .line 63
    .end local v0    # "$i$f$unaryStringFunction":I
    sput-object v4, Lcom/google/firebase/firestore/pipeline/evaluation/Strings;->evaluateCharLength:Lkotlin/jvm/functions/Function1;

    .line 85
    const/4 v0, 0x0

    .line 478
    .local v0, "$i$f$unaryValueFunction":I
    const/4 v1, 0x0

    .line 479
    .local v1, "$i$f$unaryFunction":I
    new-instance v2, Lcom/google/firebase/firestore/pipeline/evaluation/Strings$special$$inlined$unaryValueFunction$1;

    invoke-direct {v2}, Lcom/google/firebase/firestore/pipeline/evaluation/Strings$special$$inlined$unaryValueFunction$1;-><init>()V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 484
    nop

    .line 485
    .end local v1    # "$i$f$unaryFunction":I
    nop

    .line 85
    .end local v0    # "$i$f$unaryValueFunction":I
    sput-object v2, Lcom/google/firebase/firestore/pipeline/evaluation/Strings;->evaluateToLowercase:Lkotlin/jvm/functions/Function1;

    .line 115
    const/4 v0, 0x0

    .line 486
    .restart local v0    # "$i$f$unaryValueFunction":I
    const/4 v1, 0x0

    .line 487
    .restart local v1    # "$i$f$unaryFunction":I
    new-instance v2, Lcom/google/firebase/firestore/pipeline/evaluation/Strings$special$$inlined$unaryValueFunction$2;

    invoke-direct {v2}, Lcom/google/firebase/firestore/pipeline/evaluation/Strings$special$$inlined$unaryValueFunction$2;-><init>()V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 492
    nop

    .line 493
    .end local v1    # "$i$f$unaryFunction":I
    nop

    .line 115
    .end local v0    # "$i$f$unaryValueFunction":I
    sput-object v2, Lcom/google/firebase/firestore/pipeline/evaluation/Strings;->evaluateToUppercase:Lkotlin/jvm/functions/Function1;

    .line 131
    const/4 v0, 0x0

    .line 494
    .restart local v0    # "$i$f$unaryValueFunction":I
    const/4 v1, 0x0

    .line 495
    .restart local v1    # "$i$f$unaryFunction":I
    new-instance v2, Lcom/google/firebase/firestore/pipeline/evaluation/Strings$special$$inlined$unaryValueFunction$3;

    invoke-direct {v2}, Lcom/google/firebase/firestore/pipeline/evaluation/Strings$special$$inlined$unaryValueFunction$3;-><init>()V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 500
    nop

    .line 501
    .end local v1    # "$i$f$unaryFunction":I
    nop

    .line 131
    .end local v0    # "$i$f$unaryValueFunction":I
    sput-object v2, Lcom/google/firebase/firestore/pipeline/evaluation/Strings;->evaluateReverse:Lkotlin/jvm/functions/Function1;

    .line 142
    const/4 v0, 0x0

    .line 502
    .restart local v0    # "$i$f$unaryValueFunction":I
    const/4 v1, 0x0

    .line 503
    .restart local v1    # "$i$f$unaryFunction":I
    new-instance v2, Lcom/google/firebase/firestore/pipeline/evaluation/Strings$special$$inlined$unaryValueFunction$4;

    invoke-direct {v2}, Lcom/google/firebase/firestore/pipeline/evaluation/Strings$special$$inlined$unaryValueFunction$4;-><init>()V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 508
    nop

    .line 509
    .end local v1    # "$i$f$unaryFunction":I
    nop

    .line 142
    .end local v0    # "$i$f$unaryValueFunction":I
    sput-object v2, Lcom/google/firebase/firestore/pipeline/evaluation/Strings;->evaluateStringReverse:Lkotlin/jvm/functions/Function1;

    .line 172
    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt;->getNotImplemented()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/Strings;->evaluateSplit:Lkotlin/jvm/functions/Function1;

    .line 180
    const/4 v0, 0x0

    .line 510
    .local v0, "$i$f$ternaryLazyFunction":I
    new-instance v1, Lcom/google/firebase/firestore/pipeline/evaluation/Strings$special$$inlined$ternaryLazyFunction$1;

    invoke-direct {v1}, Lcom/google/firebase/firestore/pipeline/evaluation/Strings$special$$inlined$ternaryLazyFunction$1;-><init>()V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 517
    nop

    .line 180
    .end local v0    # "$i$f$ternaryLazyFunction":I
    sput-object v1, Lcom/google/firebase/firestore/pipeline/evaluation/Strings;->evaluateSubstring:Lkotlin/jvm/functions/Function1;

    .line 244
    const/4 v0, 0x0

    .line 518
    .local v0, "$i$f$unaryValueFunction":I
    const/4 v1, 0x0

    .line 519
    .restart local v1    # "$i$f$unaryFunction":I
    new-instance v2, Lcom/google/firebase/firestore/pipeline/evaluation/Strings$special$$inlined$unaryValueFunction$5;

    invoke-direct {v2}, Lcom/google/firebase/firestore/pipeline/evaluation/Strings$special$$inlined$unaryValueFunction$5;-><init>()V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 524
    nop

    .line 525
    .end local v1    # "$i$f$unaryFunction":I
    nop

    .line 244
    .end local v0    # "$i$f$unaryValueFunction":I
    sput-object v2, Lcom/google/firebase/firestore/pipeline/evaluation/Strings;->evaluateTrim:Lkotlin/jvm/functions/Function1;

    .line 272
    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt;->getNotImplemented()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/Strings;->evaluateLTrim:Lkotlin/jvm/functions/Function1;

    .line 274
    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt;->getNotImplemented()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/Strings;->evaluateRTrim:Lkotlin/jvm/functions/Function1;

    .line 276
    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt;->getNotImplemented()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/Strings;->evaluateReplaceAll:Lkotlin/jvm/functions/Function1;

    .line 278
    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt;->getNotImplemented()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/Strings;->evaluateReplaceFirst:Lkotlin/jvm/functions/Function1;

    .line 281
    nop

    .line 282
    sget-object v0, Lcom/google/firestore/v1/Value$ValueTypeCase;->STRING_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    .line 284
    sget-object v1, Lcom/google/firestore/v1/Value$ValueTypeCase;->STRING_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    .line 281
    nop

    .local v0, "valueTypeCase1$iv":Lcom/google/firestore/v1/Value$ValueTypeCase;
    .local v1, "valueTypeCase2$iv":Lcom/google/firestore/v1/Value$ValueTypeCase;
    const/4 v2, 0x0

    .line 526
    .local v2, "$i$f$binaryFunctionConstructorType":I
    new-instance v3, Lcom/google/firebase/firestore/pipeline/evaluation/Strings$special$$inlined$binaryFunctionConstructorType$1;

    invoke-direct {v3, v0, v1}, Lcom/google/firebase/firestore/pipeline/evaluation/Strings$special$$inlined$binaryFunctionConstructorType$1;-><init>(Lcom/google/firestore/v1/Value$ValueTypeCase;Lcom/google/firestore/v1/Value$ValueTypeCase;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 527
    nop

    .line 281
    .end local v0    # "valueTypeCase1$iv":Lcom/google/firestore/v1/Value$ValueTypeCase;
    .end local v1    # "valueTypeCase2$iv":Lcom/google/firestore/v1/Value$ValueTypeCase;
    .end local v2    # "$i$f$binaryFunctionConstructorType":I
    sput-object v3, Lcom/google/firebase/firestore/pipeline/evaluation/Strings;->evaluateRegexContains:Lkotlin/jvm/functions/Function1;

    .line 300
    nop

    .line 301
    sget-object v0, Lcom/google/firestore/v1/Value$ValueTypeCase;->STRING_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    .line 303
    sget-object v1, Lcom/google/firestore/v1/Value$ValueTypeCase;->STRING_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    .line 300
    nop

    .restart local v0    # "valueTypeCase1$iv":Lcom/google/firestore/v1/Value$ValueTypeCase;
    .restart local v1    # "valueTypeCase2$iv":Lcom/google/firestore/v1/Value$ValueTypeCase;
    const/4 v2, 0x0

    .line 528
    .restart local v2    # "$i$f$binaryFunctionConstructorType":I
    new-instance v3, Lcom/google/firebase/firestore/pipeline/evaluation/Strings$special$$inlined$binaryFunctionConstructorType$2;

    invoke-direct {v3, v0, v1}, Lcom/google/firebase/firestore/pipeline/evaluation/Strings$special$$inlined$binaryFunctionConstructorType$2;-><init>(Lcom/google/firestore/v1/Value$ValueTypeCase;Lcom/google/firestore/v1/Value$ValueTypeCase;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 529
    nop

    .line 300
    .end local v0    # "valueTypeCase1$iv":Lcom/google/firestore/v1/Value$ValueTypeCase;
    .end local v1    # "valueTypeCase2$iv":Lcom/google/firestore/v1/Value$ValueTypeCase;
    .end local v2    # "$i$f$binaryFunctionConstructorType":I
    sput-object v3, Lcom/google/firebase/firestore/pipeline/evaluation/Strings;->evaluateRegexMatch:Lkotlin/jvm/functions/Function1;

    .line 318
    nop

    .line 319
    sget-object v0, Lcom/google/firestore/v1/Value$ValueTypeCase;->STRING_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    .line 321
    sget-object v1, Lcom/google/firestore/v1/Value$ValueTypeCase;->STRING_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    .line 318
    nop

    .restart local v0    # "valueTypeCase1$iv":Lcom/google/firestore/v1/Value$ValueTypeCase;
    .restart local v1    # "valueTypeCase2$iv":Lcom/google/firestore/v1/Value$ValueTypeCase;
    const/4 v2, 0x0

    .line 530
    .restart local v2    # "$i$f$binaryFunctionConstructorType":I
    new-instance v3, Lcom/google/firebase/firestore/pipeline/evaluation/Strings$special$$inlined$binaryFunctionConstructorType$3;

    invoke-direct {v3, v0, v1}, Lcom/google/firebase/firestore/pipeline/evaluation/Strings$special$$inlined$binaryFunctionConstructorType$3;-><init>(Lcom/google/firestore/v1/Value$ValueTypeCase;Lcom/google/firestore/v1/Value$ValueTypeCase;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 531
    nop

    .line 318
    .end local v0    # "valueTypeCase1$iv":Lcom/google/firestore/v1/Value$ValueTypeCase;
    .end local v1    # "valueTypeCase2$iv":Lcom/google/firestore/v1/Value$ValueTypeCase;
    .end local v2    # "$i$f$binaryFunctionConstructorType":I
    sput-object v3, Lcom/google/firebase/firestore/pipeline/evaluation/Strings;->evaluateRegexFind:Lkotlin/jvm/functions/Function1;

    .line 350
    nop

    .line 351
    sget-object v0, Lcom/google/firestore/v1/Value$ValueTypeCase;->STRING_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    .line 353
    sget-object v1, Lcom/google/firestore/v1/Value$ValueTypeCase;->STRING_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    .line 350
    nop

    .restart local v0    # "valueTypeCase1$iv":Lcom/google/firestore/v1/Value$ValueTypeCase;
    .restart local v1    # "valueTypeCase2$iv":Lcom/google/firestore/v1/Value$ValueTypeCase;
    const/4 v2, 0x0

    .line 532
    .restart local v2    # "$i$f$binaryFunctionConstructorType":I
    new-instance v3, Lcom/google/firebase/firestore/pipeline/evaluation/Strings$special$$inlined$binaryFunctionConstructorType$4;

    invoke-direct {v3, v0, v1}, Lcom/google/firebase/firestore/pipeline/evaluation/Strings$special$$inlined$binaryFunctionConstructorType$4;-><init>(Lcom/google/firestore/v1/Value$ValueTypeCase;Lcom/google/firestore/v1/Value$ValueTypeCase;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 533
    nop

    .line 350
    .end local v0    # "valueTypeCase1$iv":Lcom/google/firestore/v1/Value$ValueTypeCase;
    .end local v1    # "valueTypeCase2$iv":Lcom/google/firestore/v1/Value$ValueTypeCase;
    .end local v2    # "$i$f$binaryFunctionConstructorType":I
    sput-object v3, Lcom/google/firebase/firestore/pipeline/evaluation/Strings;->evaluateRegexFindAll:Lkotlin/jvm/functions/Function1;

    .line 383
    nop

    .line 384
    sget-object v0, Lcom/google/firestore/v1/Value$ValueTypeCase;->STRING_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    .line 386
    sget-object v1, Lcom/google/firestore/v1/Value$ValueTypeCase;->STRING_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    .line 383
    nop

    .restart local v0    # "valueTypeCase1$iv":Lcom/google/firestore/v1/Value$ValueTypeCase;
    .restart local v1    # "valueTypeCase2$iv":Lcom/google/firestore/v1/Value$ValueTypeCase;
    const/4 v2, 0x0

    .line 534
    .restart local v2    # "$i$f$binaryFunctionConstructorType":I
    new-instance v3, Lcom/google/firebase/firestore/pipeline/evaluation/Strings$special$$inlined$binaryFunctionConstructorType$5;

    invoke-direct {v3, v0, v1}, Lcom/google/firebase/firestore/pipeline/evaluation/Strings$special$$inlined$binaryFunctionConstructorType$5;-><init>(Lcom/google/firestore/v1/Value$ValueTypeCase;Lcom/google/firestore/v1/Value$ValueTypeCase;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 535
    nop

    .line 383
    .end local v0    # "valueTypeCase1$iv":Lcom/google/firestore/v1/Value$ValueTypeCase;
    .end local v1    # "valueTypeCase2$iv":Lcom/google/firestore/v1/Value$ValueTypeCase;
    .end local v2    # "$i$f$binaryFunctionConstructorType":I
    sput-object v3, Lcom/google/firebase/firestore/pipeline/evaluation/Strings;->evaluateLike:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static final synthetic access$bytesReverse(Lcom/google/protobuf/ByteString;)[B
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/ByteString;

    .line 1
    invoke-static {p0}, Lcom/google/firebase/firestore/pipeline/evaluation/Strings;->bytesReverse(Lcom/google/protobuf/ByteString;)[B

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getIntegerOrElse(Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;)Ljava/lang/Long;
    .locals 1
    .param p0, "value"    # Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    .line 1
    invoke-static {p0}, Lcom/google/firebase/firestore/pipeline/evaluation/Strings;->getIntegerOrElse(Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$isLowerCaseImpl(I)Z
    .locals 1
    .param p0, "c"    # I

    .line 1
    invoke-static {p0}, Lcom/google/firebase/firestore/pipeline/evaluation/Strings;->isLowerCaseImpl(I)Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$isUpperCaseImpl(I)Z
    .locals 1
    .param p0, "c"    # I

    .line 1
    invoke-static {p0}, Lcom/google/firebase/firestore/pipeline/evaluation/Strings;->isUpperCaseImpl(I)Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$likeToRegex(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "like"    # Ljava/lang/String;

    .line 1
    invoke-static {p0}, Lcom/google/firebase/firestore/pipeline/evaluation/Strings;->likeToRegex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$stringReverse(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # Ljava/lang/String;

    .line 1
    invoke-static {p0}, Lcom/google/firebase/firestore/pipeline/evaluation/Strings;->stringReverse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$toLowerCaseImpl(I)I
    .locals 1
    .param p0, "c"    # I

    .line 1
    invoke-static {p0}, Lcom/google/firebase/firestore/pipeline/evaluation/Strings;->toLowerCaseImpl(I)I

    move-result v0

    return v0
.end method

.method public static final synthetic access$toUpperCaseImpl(I)I
    .locals 1
    .param p0, "c"    # I

    .line 1
    invoke-static {p0}, Lcom/google/firebase/firestore/pipeline/evaluation/Strings;->toUpperCaseImpl(I)I

    move-result v0

    return v0
.end method

.method private static final bytesReverse(Lcom/google/protobuf/ByteString;)[B
    .locals 5
    .param p0, "input"    # Lcom/google/protobuf/ByteString;

    .line 162
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v0

    .line 164
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v0

    div-int/lit8 v2, v2, 0x2

    :goto_0
    if-ge v1, v2, :cond_0

    .line 165
    aget-byte v3, v0, v1

    .line 166
    .local v3, "tmp":B
    array-length v4, v0

    sub-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x1

    aget-byte v4, v0, v4

    aput-byte v4, v0, v1

    .line 167
    array-length v4, v0

    sub-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x1

    aput-byte v3, v0, v4

    .line 164
    .end local v3    # "tmp":B
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 169
    .end local v1    # "i":I
    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final getEvaluateByteLength()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "+",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;"
        }
    .end annotation

    .line 57
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/Strings;->evaluateByteLength:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getEvaluateCharLength()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "+",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;"
        }
    .end annotation

    .line 63
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/Strings;->evaluateCharLength:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getEvaluateEndsWith()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "+",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;"
        }
    .end annotation

    .line 53
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/Strings;->evaluateEndsWith:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getEvaluateLTrim()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "+",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;"
        }
    .end annotation

    .line 272
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/Strings;->evaluateLTrim:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getEvaluateLike()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "+",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;"
        }
    .end annotation

    .line 382
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/Strings;->evaluateLike:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getEvaluateRTrim()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "+",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;"
        }
    .end annotation

    .line 274
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/Strings;->evaluateRTrim:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getEvaluateRegexContains()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "+",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;"
        }
    .end annotation

    .line 280
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/Strings;->evaluateRegexContains:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getEvaluateRegexFind()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "+",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;"
        }
    .end annotation

    .line 317
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/Strings;->evaluateRegexFind:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getEvaluateRegexFindAll()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "+",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;"
        }
    .end annotation

    .line 349
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/Strings;->evaluateRegexFindAll:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getEvaluateRegexMatch()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "+",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;"
        }
    .end annotation

    .line 299
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/Strings;->evaluateRegexMatch:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getEvaluateReplaceAll()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "+",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;"
        }
    .end annotation

    .line 276
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/Strings;->evaluateReplaceAll:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getEvaluateReplaceFirst()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "+",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;"
        }
    .end annotation

    .line 278
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/Strings;->evaluateReplaceFirst:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getEvaluateReverse()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "+",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;"
        }
    .end annotation

    .line 131
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/Strings;->evaluateReverse:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getEvaluateSplit()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "+",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;"
        }
    .end annotation

    .line 172
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/Strings;->evaluateSplit:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getEvaluateStartsWith()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "+",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;"
        }
    .end annotation

    .line 49
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/Strings;->evaluateStartsWith:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getEvaluateStrConcat()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "+",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;"
        }
    .end annotation

    .line 41
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/Strings;->evaluateStrConcat:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getEvaluateStrContains()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "+",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;"
        }
    .end annotation

    .line 45
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/Strings;->evaluateStrContains:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getEvaluateStringReverse()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "+",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;"
        }
    .end annotation

    .line 142
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/Strings;->evaluateStringReverse:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getEvaluateSubstring()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "+",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;"
        }
    .end annotation

    .line 180
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/Strings;->evaluateSubstring:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getEvaluateToLowercase()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "+",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;"
        }
    .end annotation

    .line 85
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/Strings;->evaluateToLowercase:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getEvaluateToUppercase()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "+",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;"
        }
    .end annotation

    .line 115
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/Strings;->evaluateToUppercase:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getEvaluateTrim()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "+",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;"
        }
    .end annotation

    .line 244
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/Strings;->evaluateTrim:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method private static final getIntegerOrElse(Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;)Ljava/lang/Long;
    .locals 3
    .param p0, "value"    # Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    .line 175
    invoke-virtual {p0}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->isSuccess()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 176
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->getValue()Lcom/google/firestore/v1/Value;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value;->getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    sget-object v2, Lcom/google/firestore/v1/Value$ValueTypeCase;->INTEGER_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    if-eq v0, v2, :cond_2

    return-object v1

    .line 177
    :cond_2
    invoke-virtual {p0}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->getValue()Lcom/google/firestore/v1/Value;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value;->getIntegerValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :cond_3
    return-object v1
.end method

.method private static final isLowerCaseImpl(I)Z
    .locals 1
    .param p0, "c"    # I

    .line 102
    nop

    .line 103
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->isLowerCase(I)Z

    move-result v0

    .line 106
    return v0
.end method

.method private static final isUpperCaseImpl(I)Z
    .locals 1
    .param p0, "c"    # I

    .line 72
    nop

    .line 73
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->isUpperCase(I)Z

    move-result v0

    .line 76
    return v0
.end method

.method private static final likeToRegex(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "like"    # Ljava/lang/String;

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v0

    .local v1, "$this$likeToRegex_u24lambda_u2428":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 401
    .local v2, "$i$a$-buildString-Strings$likeToRegex$1":I
    const/4 v3, 0x0

    .line 402
    .local v3, "escape":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 403
    .local v6, "c":C
    if-eqz v3, :cond_1

    .line 404
    const/4 v3, 0x0

    .line 405
    nop

    .line 406
    const/16 v7, 0x5c

    if-ne v6, v7, :cond_0

    const-string v7, "\\"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 407
    :cond_0
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 410
    :cond_1
    sparse-switch v6, :sswitch_data_0

    .line 427
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 426
    :sswitch_0
    const-string v7, "\\}"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 420
    :sswitch_1
    const-string v7, "\\|"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 425
    :sswitch_2
    const-string v7, "\\{"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 412
    :sswitch_3
    const/16 v7, 0x2e

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 418
    :sswitch_4
    const-string v7, "\\^"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 424
    :sswitch_5
    const-string v7, "\\]"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 411
    :sswitch_6
    const/4 v3, 0x1

    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1

    .line 423
    :sswitch_7
    const-string v7, "\\["

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 416
    :sswitch_8
    const-string v7, "\\?"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 414
    :sswitch_9
    const-string v7, "\\."

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 417
    :sswitch_a
    const-string v7, "\\+"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 415
    :sswitch_b
    const-string v7, "\\*"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 422
    :sswitch_c
    const-string v7, "\\)"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 421
    :sswitch_d
    const-string v7, "\\("

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 413
    :sswitch_e
    const-string v7, ".*"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 419
    :sswitch_f
    const-string v7, "\\$"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    :goto_1
    nop

    .end local v6    # "c":C
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 430
    :cond_2
    if-nez v3, :cond_3

    .line 433
    nop

    .line 400
    .end local v1    # "$this$likeToRegex_u24lambda_u2428":Ljava/lang/StringBuilder;
    .end local v2    # "$i$a$-buildString-Strings$likeToRegex$1":I
    .end local v3    # "escape":Z
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 433
    return-object v0

    .line 431
    .restart local v1    # "$this$likeToRegex_u24lambda_u2428":Ljava/lang/StringBuilder;
    .restart local v2    # "$i$a$-buildString-Strings$likeToRegex$1":I
    .restart local v3    # "escape":Z
    :cond_3
    new-instance v0, Ljava/lang/Exception;

    const-string v4, "LIKE pattern ends in backslash"

    invoke-direct {v0, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x24 -> :sswitch_f
        0x25 -> :sswitch_e
        0x28 -> :sswitch_d
        0x29 -> :sswitch_c
        0x2a -> :sswitch_b
        0x2b -> :sswitch_a
        0x2e -> :sswitch_9
        0x3f -> :sswitch_8
        0x5b -> :sswitch_7
        0x5c -> :sswitch_6
        0x5d -> :sswitch_5
        0x5e -> :sswitch_4
        0x5f -> :sswitch_3
        0x7b -> :sswitch_2
        0x7c -> :sswitch_1
        0x7d -> :sswitch_0
    .end sparse-switch
.end method

.method private static final stringReverse(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "input"    # Ljava/lang/String;

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .local v0, "reversed":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 154
    .local v1, "curIndex":I
    :goto_0
    if-lez v1, :cond_0

    .line 155
    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v1

    .line 156
    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 158
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "toString(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2
.end method

.method private static final toLowerCaseImpl(I)I
    .locals 1
    .param p0, "c"    # I

    .line 79
    nop

    .line 80
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->toLowerCase(I)I

    move-result v0

    .line 83
    return v0
.end method

.method private static final toUpperCaseImpl(I)I
    .locals 1
    .param p0, "c"    # I

    .line 109
    nop

    .line 110
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->toUpperCase(I)I

    move-result v0

    .line 113
    return v0
.end method
