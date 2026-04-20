.class public final Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt;
.super Ljava/lang/Object;
.source "Arithmetic.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nArithmetic.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Arithmetic.kt\ncom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt\n+ 2 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt\n*L\n1#1,182:1\n761#2:183\n857#2:184\n272#2:185\n285#2:186\n892#2:187\n764#2:188\n740#2:189\n794#2,4:190\n793#2:194\n243#2:195\n260#2:196\n800#2:197\n743#2:198\n761#2:199\n857#2:200\n272#2:201\n285#2:202\n892#2:203\n764#2:204\n740#2:205\n794#2,4:206\n793#2:210\n243#2:211\n260#2:212\n800#2:213\n743#2:214\n761#2:215\n857#2:216\n272#2:217\n285#2:218\n892#2:219\n764#2:220\n761#2:221\n857#2:222\n272#2:223\n285#2:224\n892#2:225\n764#2:226\n896#2:227\n857#2:228\n272#2:229\n285#2:230\n892#2:231\n740#2:232\n794#2,4:233\n793#2:237\n243#2:238\n260#2:239\n800#2:240\n743#2:241\n817#2:242\n272#2:243\n285#2:244\n841#2:245\n740#2:246\n794#2,4:247\n793#2:251\n243#2:252\n260#2:253\n800#2:254\n743#2:255\n777#2:256\n794#2,4:257\n793#2:261\n243#2:262\n260#2:263\n800#2:264\n777#2:265\n794#2,4:266\n793#2:270\n243#2:271\n260#2:272\n800#2:273\n896#2:274\n857#2:275\n272#2:276\n285#2:277\n892#2:278\n777#2:279\n794#2,4:280\n793#2:284\n243#2:285\n260#2:286\n800#2:287\n777#2:288\n794#2,4:289\n793#2:293\n243#2:294\n260#2:295\n800#2:296\n761#2:297\n857#2:298\n272#2:299\n285#2:300\n892#2:301\n764#2:302\n*S KotlinDebug\n*F\n+ 1 Arithmetic.kt\ncom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt\n*L\n40#1:183\n40#1:184\n40#1:185\n40#1:186\n40#1:187\n40#1:188\n42#1:189\n42#1:190,4\n42#1:194\n42#1:195\n42#1:196\n42#1:197\n42#1:198\n44#1:199\n44#1:200\n44#1:201\n44#1:202\n44#1:203\n44#1:204\n46#1:205\n46#1:206,4\n46#1:210\n46#1:211\n46#1:212\n46#1:213\n46#1:214\n48#1:215\n48#1:216\n48#1:217\n48#1:218\n48#1:219\n48#1:220\n51#1:221\n51#1:222\n51#1:223\n51#1:224\n51#1:225\n51#1:226\n54#1:227\n54#1:228\n54#1:229\n54#1:230\n54#1:231\n76#1:232\n76#1:233,4\n76#1:237\n76#1:238\n76#1:239\n76#1:240\n76#1:241\n88#1:242\n88#1:243\n88#1:244\n88#1:245\n141#1:246\n141#1:247,4\n141#1:251\n141#1:252\n141#1:253\n141#1:254\n141#1:255\n149#1:256\n149#1:257,4\n149#1:261\n149#1:262\n149#1:263\n149#1:264\n159#1:265\n159#1:266,4\n159#1:270\n159#1:271\n159#1:272\n159#1:273\n163#1:274\n163#1:275\n163#1:276\n163#1:277\n163#1:278\n173#1:279\n173#1:280,4\n173#1:284\n173#1:285\n173#1:286\n173#1:287\n177#1:288\n177#1:289,4\n177#1:293\n177#1:294\n177#1:295\n177#1:296\n181#1:297\n181#1:298\n181#1:299\n181#1:300\n181#1:301\n181#1:302\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008!\"w\u0010\u0000\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0002\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0001j\u0002`\nX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"w\u0010\r\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0002\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0001j\u0002`\nX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000c\"w\u0010\u000f\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0002\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0001j\u0002`\nX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000c\"w\u0010\u0011\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0002\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0001j\u0002`\nX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u000c\"w\u0010\u0013\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0002\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0001j\u0002`\nX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u000c\"w\u0010\u0015\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0002\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0001j\u0002`\nX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u000c\"w\u0010\u0017\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0002\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0001j\u0002`\nX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u000c\"w\u0010\u0019\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0002\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0001j\u0002`\nX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u000c\"w\u0010\u001b\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0002\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0001j\u0002`\nX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u000c\"w\u0010\u001d\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0002\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0001j\u0002`\nX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u000c\"w\u0010\u001f\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0002\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0001j\u0002`\nX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\u000c\"w\u0010!\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0002\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0001j\u0002`\nX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010\u000c\"w\u0010#\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0002\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0001j\u0002`\nX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010\u000c\"w\u0010%\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0002\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0001j\u0002`\nX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010\u000c\"w\u0010\'\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0002\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0001j\u0002`\nX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010\u000c\"w\u0010)\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0002\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0001j\u0002`\nX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010\u000c\u00a8\u0006+"
    }
    d2 = {
        "evaluateAdd",
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
        "getEvaluateAdd",
        "()Lkotlin/jvm/functions/Function1;",
        "evaluateCeil",
        "getEvaluateCeil",
        "evaluateDivide",
        "getEvaluateDivide",
        "evaluateFloor",
        "getEvaluateFloor",
        "evaluateMod",
        "getEvaluateMod",
        "evaluateMultiply",
        "getEvaluateMultiply",
        "evaluatePow",
        "getEvaluatePow",
        "evaluateRound",
        "getEvaluateRound",
        "evaluateRoundToPrecision",
        "getEvaluateRoundToPrecision",
        "evaluateAbs",
        "getEvaluateAbs",
        "evaluateExp",
        "getEvaluateExp",
        "evaluateLn",
        "getEvaluateLn",
        "evaluateLog",
        "getEvaluateLog",
        "evaluateLog10",
        "getEvaluateLog10",
        "evaluateSqrt",
        "getEvaluateSqrt",
        "evaluateSubtract",
        "getEvaluateSubtract",
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
.field private static final evaluateAbs:Lkotlin/jvm/functions/Function1;
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

.field private static final evaluateAdd:Lkotlin/jvm/functions/Function1;
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

.field private static final evaluateCeil:Lkotlin/jvm/functions/Function1;
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

.field private static final evaluateDivide:Lkotlin/jvm/functions/Function1;
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

.field private static final evaluateExp:Lkotlin/jvm/functions/Function1;
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

.field private static final evaluateFloor:Lkotlin/jvm/functions/Function1;
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

.field private static final evaluateLn:Lkotlin/jvm/functions/Function1;
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

.field private static final evaluateLog:Lkotlin/jvm/functions/Function1;
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

.field private static final evaluateLog10:Lkotlin/jvm/functions/Function1;
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

.field private static final evaluateMod:Lkotlin/jvm/functions/Function1;
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

.field private static final evaluateMultiply:Lkotlin/jvm/functions/Function1;
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

.field private static final evaluatePow:Lkotlin/jvm/functions/Function1;
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

.field private static final evaluateRound:Lkotlin/jvm/functions/Function1;
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

.field private static final evaluateRoundToPrecision:Lkotlin/jvm/functions/Function1;
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

.field private static final evaluateSqrt:Lkotlin/jvm/functions/Function1;
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

.field private static final evaluateSubtract:Lkotlin/jvm/functions/Function1;
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
    .locals 6

    .line 40
    const/4 v0, 0x0

    .line 183
    .local v0, "$i$f$arithmeticPrimitive":I
    const/4 v1, 0x0

    .line 184
    .local v1, "$i$f$arithmetic":I
    const/4 v2, 0x0

    .line 185
    .local v2, "$i$f$binaryValueValueFunction":I
    new-instance v3, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmeticPrimitive$1;

    invoke-direct {v3}, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmeticPrimitive$1;-><init>()V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 186
    nop

    .line 187
    .end local v2    # "$i$f$binaryValueValueFunction":I
    nop

    .line 188
    .end local v1    # "$i$f$arithmetic":I
    nop

    .line 40
    .end local v0    # "$i$f$arithmeticPrimitive":I
    sput-object v3, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt;->evaluateAdd:Lkotlin/jvm/functions/Function1;

    .line 42
    const/4 v0, 0x0

    .line 189
    .restart local v0    # "$i$f$arithmeticPrimitive":I
    const/4 v1, 0x0

    .line 190
    .restart local v1    # "$i$f$arithmetic":I
    sget-object v2, Lcom/google/firestore/v1/Value$ValueTypeCase;->INTEGER_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    .line 193
    sget-object v3, Lcom/google/firestore/v1/Value$ValueTypeCase;->DOUBLE_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    .line 194
    nop

    .local v2, "valueTypeCase1$iv$iv$iv":Lcom/google/firestore/v1/Value$ValueTypeCase;
    .local v3, "valueTypeCase2$iv$iv$iv":Lcom/google/firestore/v1/Value$ValueTypeCase;
    const/4 v4, 0x0

    .line 195
    .local v4, "$i$f$unaryFunctionType":I
    new-instance v5, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmeticPrimitive$2;

    invoke-direct {v5, v2, v3}, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmeticPrimitive$2;-><init>(Lcom/google/firestore/v1/Value$ValueTypeCase;Lcom/google/firestore/v1/Value$ValueTypeCase;)V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 196
    nop

    .line 197
    .end local v2    # "valueTypeCase1$iv$iv$iv":Lcom/google/firestore/v1/Value$ValueTypeCase;
    .end local v3    # "valueTypeCase2$iv$iv$iv":Lcom/google/firestore/v1/Value$ValueTypeCase;
    .end local v4    # "$i$f$unaryFunctionType":I
    nop

    .line 198
    .end local v1    # "$i$f$arithmetic":I
    nop

    .line 42
    .end local v0    # "$i$f$arithmeticPrimitive":I
    sput-object v5, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt;->evaluateCeil:Lkotlin/jvm/functions/Function1;

    .line 44
    const/4 v0, 0x0

    .line 199
    .restart local v0    # "$i$f$arithmeticPrimitive":I
    const/4 v1, 0x0

    .line 200
    .restart local v1    # "$i$f$arithmetic":I
    const/4 v2, 0x0

    .line 201
    .local v2, "$i$f$binaryValueValueFunction":I
    new-instance v3, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmeticPrimitive$3;

    invoke-direct {v3}, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmeticPrimitive$3;-><init>()V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 202
    nop

    .line 203
    .end local v2    # "$i$f$binaryValueValueFunction":I
    nop

    .line 204
    .end local v1    # "$i$f$arithmetic":I
    nop

    .line 44
    .end local v0    # "$i$f$arithmeticPrimitive":I
    sput-object v3, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt;->evaluateDivide:Lkotlin/jvm/functions/Function1;

    .line 46
    const/4 v0, 0x0

    .line 205
    .restart local v0    # "$i$f$arithmeticPrimitive":I
    const/4 v1, 0x0

    .line 206
    .restart local v1    # "$i$f$arithmetic":I
    sget-object v2, Lcom/google/firestore/v1/Value$ValueTypeCase;->INTEGER_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    .line 209
    sget-object v3, Lcom/google/firestore/v1/Value$ValueTypeCase;->DOUBLE_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    .line 210
    nop

    .local v2, "valueTypeCase1$iv$iv$iv":Lcom/google/firestore/v1/Value$ValueTypeCase;
    .restart local v3    # "valueTypeCase2$iv$iv$iv":Lcom/google/firestore/v1/Value$ValueTypeCase;
    const/4 v4, 0x0

    .line 211
    .restart local v4    # "$i$f$unaryFunctionType":I
    new-instance v5, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmeticPrimitive$4;

    invoke-direct {v5, v2, v3}, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmeticPrimitive$4;-><init>(Lcom/google/firestore/v1/Value$ValueTypeCase;Lcom/google/firestore/v1/Value$ValueTypeCase;)V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 212
    nop

    .line 213
    .end local v2    # "valueTypeCase1$iv$iv$iv":Lcom/google/firestore/v1/Value$ValueTypeCase;
    .end local v3    # "valueTypeCase2$iv$iv$iv":Lcom/google/firestore/v1/Value$ValueTypeCase;
    .end local v4    # "$i$f$unaryFunctionType":I
    nop

    .line 214
    .end local v1    # "$i$f$arithmetic":I
    nop

    .line 46
    .end local v0    # "$i$f$arithmeticPrimitive":I
    sput-object v5, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt;->evaluateFloor:Lkotlin/jvm/functions/Function1;

    .line 48
    const/4 v0, 0x0

    .line 215
    .restart local v0    # "$i$f$arithmeticPrimitive":I
    const/4 v1, 0x0

    .line 216
    .restart local v1    # "$i$f$arithmetic":I
    const/4 v2, 0x0

    .line 217
    .local v2, "$i$f$binaryValueValueFunction":I
    new-instance v3, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmeticPrimitive$5;

    invoke-direct {v3}, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmeticPrimitive$5;-><init>()V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 218
    nop

    .line 219
    .end local v2    # "$i$f$binaryValueValueFunction":I
    nop

    .line 220
    .end local v1    # "$i$f$arithmetic":I
    nop

    .line 48
    .end local v0    # "$i$f$arithmeticPrimitive":I
    sput-object v3, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt;->evaluateMod:Lkotlin/jvm/functions/Function1;

    .line 51
    const/4 v0, 0x0

    .line 221
    .restart local v0    # "$i$f$arithmeticPrimitive":I
    const/4 v1, 0x0

    .line 222
    .restart local v1    # "$i$f$arithmetic":I
    const/4 v2, 0x0

    .line 223
    .restart local v2    # "$i$f$binaryValueValueFunction":I
    new-instance v3, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmeticPrimitive$6;

    invoke-direct {v3}, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmeticPrimitive$6;-><init>()V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 224
    nop

    .line 225
    .end local v2    # "$i$f$binaryValueValueFunction":I
    nop

    .line 226
    .end local v1    # "$i$f$arithmetic":I
    nop

    .line 51
    .end local v0    # "$i$f$arithmeticPrimitive":I
    sput-object v3, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt;->evaluateMultiply:Lkotlin/jvm/functions/Function1;

    .line 54
    const/4 v0, 0x0

    .line 227
    .local v0, "$i$f$arithmetic":I
    const/4 v1, 0x0

    .line 228
    .restart local v1    # "$i$f$arithmetic":I
    const/4 v2, 0x0

    .line 229
    .restart local v2    # "$i$f$binaryValueValueFunction":I
    new-instance v3, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmetic$1;

    invoke-direct {v3}, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmetic$1;-><init>()V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 230
    nop

    .line 231
    .end local v2    # "$i$f$binaryValueValueFunction":I
    nop

    .line 227
    .end local v1    # "$i$f$arithmetic":I
    nop

    .line 54
    .end local v0    # "$i$f$arithmetic":I
    sput-object v3, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt;->evaluatePow:Lkotlin/jvm/functions/Function1;

    .line 76
    const/4 v0, 0x0

    .line 232
    .local v0, "$i$f$arithmeticPrimitive":I
    const/4 v1, 0x0

    .line 233
    .restart local v1    # "$i$f$arithmetic":I
    sget-object v2, Lcom/google/firestore/v1/Value$ValueTypeCase;->INTEGER_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    .line 236
    sget-object v3, Lcom/google/firestore/v1/Value$ValueTypeCase;->DOUBLE_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    .line 237
    nop

    .local v2, "valueTypeCase1$iv$iv$iv":Lcom/google/firestore/v1/Value$ValueTypeCase;
    .restart local v3    # "valueTypeCase2$iv$iv$iv":Lcom/google/firestore/v1/Value$ValueTypeCase;
    const/4 v4, 0x0

    .line 238
    .restart local v4    # "$i$f$unaryFunctionType":I
    new-instance v5, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmeticPrimitive$7;

    invoke-direct {v5, v2, v3}, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmeticPrimitive$7;-><init>(Lcom/google/firestore/v1/Value$ValueTypeCase;Lcom/google/firestore/v1/Value$ValueTypeCase;)V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 239
    nop

    .line 240
    .end local v2    # "valueTypeCase1$iv$iv$iv":Lcom/google/firestore/v1/Value$ValueTypeCase;
    .end local v3    # "valueTypeCase2$iv$iv$iv":Lcom/google/firestore/v1/Value$ValueTypeCase;
    .end local v4    # "$i$f$unaryFunctionType":I
    nop

    .line 241
    .end local v1    # "$i$f$arithmetic":I
    nop

    .line 76
    .end local v0    # "$i$f$arithmeticPrimitive":I
    sput-object v5, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt;->evaluateRound:Lkotlin/jvm/functions/Function1;

    .line 88
    const/4 v0, 0x0

    .line 242
    .local v0, "$i$f$arithmeticNumberLong":I
    const/4 v1, 0x0

    .line 243
    .local v1, "$i$f$binaryValueValueFunction":I
    new-instance v2, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmeticNumberLong$1;

    invoke-direct {v2}, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmeticNumberLong$1;-><init>()V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 244
    nop

    .line 245
    .end local v1    # "$i$f$binaryValueValueFunction":I
    nop

    .line 88
    .end local v0    # "$i$f$arithmeticNumberLong":I
    sput-object v2, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt;->evaluateRoundToPrecision:Lkotlin/jvm/functions/Function1;

    .line 141
    const/4 v0, 0x0

    .line 246
    .local v0, "$i$f$arithmeticPrimitive":I
    const/4 v1, 0x0

    .line 247
    .local v1, "$i$f$arithmetic":I
    sget-object v2, Lcom/google/firestore/v1/Value$ValueTypeCase;->INTEGER_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    .line 250
    sget-object v3, Lcom/google/firestore/v1/Value$ValueTypeCase;->DOUBLE_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    .line 251
    nop

    .restart local v2    # "valueTypeCase1$iv$iv$iv":Lcom/google/firestore/v1/Value$ValueTypeCase;
    .restart local v3    # "valueTypeCase2$iv$iv$iv":Lcom/google/firestore/v1/Value$ValueTypeCase;
    const/4 v4, 0x0

    .line 252
    .restart local v4    # "$i$f$unaryFunctionType":I
    new-instance v5, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmeticPrimitive$8;

    invoke-direct {v5, v2, v3}, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmeticPrimitive$8;-><init>(Lcom/google/firestore/v1/Value$ValueTypeCase;Lcom/google/firestore/v1/Value$ValueTypeCase;)V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 253
    nop

    .line 254
    .end local v2    # "valueTypeCase1$iv$iv$iv":Lcom/google/firestore/v1/Value$ValueTypeCase;
    .end local v3    # "valueTypeCase2$iv$iv$iv":Lcom/google/firestore/v1/Value$ValueTypeCase;
    .end local v4    # "$i$f$unaryFunctionType":I
    nop

    .line 255
    .end local v1    # "$i$f$arithmetic":I
    nop

    .line 141
    .end local v0    # "$i$f$arithmeticPrimitive":I
    sput-object v5, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt;->evaluateAbs:Lkotlin/jvm/functions/Function1;

    .line 149
    const/4 v0, 0x0

    .line 256
    .local v0, "$i$f$arithmetic":I
    const/4 v1, 0x0

    .line 257
    .restart local v1    # "$i$f$arithmetic":I
    sget-object v2, Lcom/google/firestore/v1/Value$ValueTypeCase;->INTEGER_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    .line 260
    sget-object v3, Lcom/google/firestore/v1/Value$ValueTypeCase;->DOUBLE_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    .line 261
    nop

    .restart local v2    # "valueTypeCase1$iv$iv$iv":Lcom/google/firestore/v1/Value$ValueTypeCase;
    .restart local v3    # "valueTypeCase2$iv$iv$iv":Lcom/google/firestore/v1/Value$ValueTypeCase;
    const/4 v4, 0x0

    .line 262
    .restart local v4    # "$i$f$unaryFunctionType":I
    new-instance v5, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmetic$2;

    invoke-direct {v5, v2, v3}, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmetic$2;-><init>(Lcom/google/firestore/v1/Value$ValueTypeCase;Lcom/google/firestore/v1/Value$ValueTypeCase;)V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 263
    nop

    .line 264
    .end local v2    # "valueTypeCase1$iv$iv$iv":Lcom/google/firestore/v1/Value$ValueTypeCase;
    .end local v3    # "valueTypeCase2$iv$iv$iv":Lcom/google/firestore/v1/Value$ValueTypeCase;
    .end local v4    # "$i$f$unaryFunctionType":I
    nop

    .line 256
    .end local v1    # "$i$f$arithmetic":I
    nop

    .line 149
    .end local v0    # "$i$f$arithmetic":I
    sput-object v5, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt;->evaluateExp:Lkotlin/jvm/functions/Function1;

    .line 159
    const/4 v0, 0x0

    .line 265
    .restart local v0    # "$i$f$arithmetic":I
    const/4 v1, 0x0

    .line 266
    .restart local v1    # "$i$f$arithmetic":I
    sget-object v2, Lcom/google/firestore/v1/Value$ValueTypeCase;->INTEGER_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    .line 269
    sget-object v3, Lcom/google/firestore/v1/Value$ValueTypeCase;->DOUBLE_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    .line 270
    nop

    .restart local v2    # "valueTypeCase1$iv$iv$iv":Lcom/google/firestore/v1/Value$ValueTypeCase;
    .restart local v3    # "valueTypeCase2$iv$iv$iv":Lcom/google/firestore/v1/Value$ValueTypeCase;
    const/4 v4, 0x0

    .line 271
    .restart local v4    # "$i$f$unaryFunctionType":I
    new-instance v5, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmetic$3;

    invoke-direct {v5, v2, v3}, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmetic$3;-><init>(Lcom/google/firestore/v1/Value$ValueTypeCase;Lcom/google/firestore/v1/Value$ValueTypeCase;)V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 272
    nop

    .line 273
    .end local v2    # "valueTypeCase1$iv$iv$iv":Lcom/google/firestore/v1/Value$ValueTypeCase;
    .end local v3    # "valueTypeCase2$iv$iv$iv":Lcom/google/firestore/v1/Value$ValueTypeCase;
    .end local v4    # "$i$f$unaryFunctionType":I
    nop

    .line 265
    .end local v1    # "$i$f$arithmetic":I
    nop

    .line 159
    .end local v0    # "$i$f$arithmetic":I
    sput-object v5, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt;->evaluateLn:Lkotlin/jvm/functions/Function1;

    .line 163
    const/4 v0, 0x0

    .line 274
    .restart local v0    # "$i$f$arithmetic":I
    const/4 v1, 0x0

    .line 275
    .restart local v1    # "$i$f$arithmetic":I
    const/4 v2, 0x0

    .line 276
    .local v2, "$i$f$binaryValueValueFunction":I
    new-instance v3, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmetic$4;

    invoke-direct {v3}, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmetic$4;-><init>()V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 277
    nop

    .line 278
    .end local v2    # "$i$f$binaryValueValueFunction":I
    nop

    .line 274
    .end local v1    # "$i$f$arithmetic":I
    nop

    .line 163
    .end local v0    # "$i$f$arithmetic":I
    sput-object v3, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt;->evaluateLog:Lkotlin/jvm/functions/Function1;

    .line 173
    const/4 v0, 0x0

    .line 279
    .restart local v0    # "$i$f$arithmetic":I
    const/4 v1, 0x0

    .line 280
    .restart local v1    # "$i$f$arithmetic":I
    sget-object v2, Lcom/google/firestore/v1/Value$ValueTypeCase;->INTEGER_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    .line 283
    sget-object v3, Lcom/google/firestore/v1/Value$ValueTypeCase;->DOUBLE_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    .line 284
    nop

    .local v2, "valueTypeCase1$iv$iv$iv":Lcom/google/firestore/v1/Value$ValueTypeCase;
    .restart local v3    # "valueTypeCase2$iv$iv$iv":Lcom/google/firestore/v1/Value$ValueTypeCase;
    const/4 v4, 0x0

    .line 285
    .restart local v4    # "$i$f$unaryFunctionType":I
    new-instance v5, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmetic$5;

    invoke-direct {v5, v2, v3}, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmetic$5;-><init>(Lcom/google/firestore/v1/Value$ValueTypeCase;Lcom/google/firestore/v1/Value$ValueTypeCase;)V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 286
    nop

    .line 287
    .end local v2    # "valueTypeCase1$iv$iv$iv":Lcom/google/firestore/v1/Value$ValueTypeCase;
    .end local v3    # "valueTypeCase2$iv$iv$iv":Lcom/google/firestore/v1/Value$ValueTypeCase;
    .end local v4    # "$i$f$unaryFunctionType":I
    nop

    .line 279
    .end local v1    # "$i$f$arithmetic":I
    nop

    .line 173
    .end local v0    # "$i$f$arithmetic":I
    sput-object v5, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt;->evaluateLog10:Lkotlin/jvm/functions/Function1;

    .line 177
    const/4 v0, 0x0

    .line 288
    .restart local v0    # "$i$f$arithmetic":I
    const/4 v1, 0x0

    .line 289
    .restart local v1    # "$i$f$arithmetic":I
    sget-object v2, Lcom/google/firestore/v1/Value$ValueTypeCase;->INTEGER_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    .line 292
    sget-object v3, Lcom/google/firestore/v1/Value$ValueTypeCase;->DOUBLE_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    .line 293
    nop

    .restart local v2    # "valueTypeCase1$iv$iv$iv":Lcom/google/firestore/v1/Value$ValueTypeCase;
    .restart local v3    # "valueTypeCase2$iv$iv$iv":Lcom/google/firestore/v1/Value$ValueTypeCase;
    const/4 v4, 0x0

    .line 294
    .restart local v4    # "$i$f$unaryFunctionType":I
    new-instance v5, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmetic$6;

    invoke-direct {v5, v2, v3}, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmetic$6;-><init>(Lcom/google/firestore/v1/Value$ValueTypeCase;Lcom/google/firestore/v1/Value$ValueTypeCase;)V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 295
    nop

    .line 296
    .end local v2    # "valueTypeCase1$iv$iv$iv":Lcom/google/firestore/v1/Value$ValueTypeCase;
    .end local v3    # "valueTypeCase2$iv$iv$iv":Lcom/google/firestore/v1/Value$ValueTypeCase;
    .end local v4    # "$i$f$unaryFunctionType":I
    nop

    .line 288
    .end local v1    # "$i$f$arithmetic":I
    nop

    .line 177
    .end local v0    # "$i$f$arithmetic":I
    sput-object v5, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt;->evaluateSqrt:Lkotlin/jvm/functions/Function1;

    .line 181
    const/4 v0, 0x0

    .line 297
    .local v0, "$i$f$arithmeticPrimitive":I
    const/4 v1, 0x0

    .line 298
    .restart local v1    # "$i$f$arithmetic":I
    const/4 v2, 0x0

    .line 299
    .local v2, "$i$f$binaryValueValueFunction":I
    new-instance v3, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmeticPrimitive$9;

    invoke-direct {v3}, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmeticPrimitive$9;-><init>()V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 300
    nop

    .line 301
    .end local v2    # "$i$f$binaryValueValueFunction":I
    nop

    .line 302
    .end local v1    # "$i$f$arithmetic":I
    nop

    .line 181
    .end local v0    # "$i$f$arithmeticPrimitive":I
    sput-object v3, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt;->evaluateSubtract:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static final getEvaluateAbs()Lkotlin/jvm/functions/Function1;
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

    .line 140
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt;->evaluateAbs:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getEvaluateAdd()Lkotlin/jvm/functions/Function1;
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

    .line 40
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt;->evaluateAdd:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getEvaluateCeil()Lkotlin/jvm/functions/Function1;
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

    .line 42
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt;->evaluateCeil:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getEvaluateDivide()Lkotlin/jvm/functions/Function1;
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

    .line 44
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt;->evaluateDivide:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getEvaluateExp()Lkotlin/jvm/functions/Function1;
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

    .line 149
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt;->evaluateExp:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getEvaluateFloor()Lkotlin/jvm/functions/Function1;
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

    .line 46
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt;->evaluateFloor:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getEvaluateLn()Lkotlin/jvm/functions/Function1;
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

    .line 159
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt;->evaluateLn:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getEvaluateLog()Lkotlin/jvm/functions/Function1;
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

    .line 163
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt;->evaluateLog:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getEvaluateLog10()Lkotlin/jvm/functions/Function1;
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

    .line 173
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt;->evaluateLog10:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getEvaluateMod()Lkotlin/jvm/functions/Function1;
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

    .line 48
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt;->evaluateMod:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getEvaluateMultiply()Lkotlin/jvm/functions/Function1;
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

    .line 50
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt;->evaluateMultiply:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getEvaluatePow()Lkotlin/jvm/functions/Function1;
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
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt;->evaluatePow:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getEvaluateRound()Lkotlin/jvm/functions/Function1;
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

    .line 75
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt;->evaluateRound:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getEvaluateRoundToPrecision()Lkotlin/jvm/functions/Function1;
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

    .line 87
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt;->evaluateRoundToPrecision:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getEvaluateSqrt()Lkotlin/jvm/functions/Function1;
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

    .line 177
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt;->evaluateSqrt:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getEvaluateSubtract()Lkotlin/jvm/functions/Function1;
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

    .line 181
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt;->evaluateSubtract:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method
