.class public abstract Lcom/google/firebase/firestore/pipeline/Expression;
.super Ljava/lang/Object;
.source "expressions.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/pipeline/Expression$Companion;,
        Lcom/google/firebase/firestore/pipeline/Expression$Constant;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a6\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0004\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0011\n\u0002\u0008\u001f\n\u0002\u0010\u0013\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\t\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\'\u0018\u0000 \u00ae\u00012\u00020\u0001:\u0004\u00ad\u0001\u00ae\u0001B\t\u0008\u0000\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\r\u0010\u0004\u001a\u00020\u0005H \u00a2\u0006\u0002\u0008\u0006J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0000J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0000J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\tJ\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0000J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\tJ\u0006\u0010\u000c\u001a\u00020\u0000J\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u0000J\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0010J\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u0000J\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0010J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u0005H\u0016J\u0006\u0010\u0014\u001a\u00020\u0000J\u0006\u0010\u0015\u001a\u00020\u0000J\u0006\u0010\u0016\u001a\u00020\u0000J\u0006\u0010\u0017\u001a\u00020\u0000J\u000e\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u0000J\u000e\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u001aJ\u000e\u0010\u001b\u001a\u00020\u00002\u0006\u0010\u001c\u001a\u00020\u0000J\u000e\u0010\u001b\u001a\u00020\u00002\u0006\u0010\u001c\u001a\u00020\u001aJ\u000e\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u0000J\u000e\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u001aJ\u000e\u0010\u001e\u001a\u00020\u00002\u0006\u0010\u001f\u001a\u00020\u0000J\u000e\u0010\u001e\u001a\u00020\u00002\u0006\u0010\u001f\u001a\u00020\u001aJ\u000e\u0010 \u001a\u00020\u00002\u0006\u0010\u001f\u001a\u00020\u0000J\u000e\u0010 \u001a\u00020\u00002\u0006\u0010\u001f\u001a\u00020\u001aJ\u0006\u0010!\u001a\u00020\u0000J\u000e\u0010\"\u001a\u00020\u00002\u0006\u0010#\u001a\u00020\u0010J\u000e\u0010\"\u001a\u00020\u00002\u0006\u0010#\u001a\u00020\u0000J\u0006\u0010$\u001a\u00020\u0000J\u0006\u0010%\u001a\u00020\u0000J\u000e\u0010&\u001a\u00020\u00002\u0006\u0010\'\u001a\u00020\u001aJ\u000e\u0010&\u001a\u00020\u00002\u0006\u0010\'\u001a\u00020\u0000J\u0006\u0010(\u001a\u00020\u0000J\u0006\u0010)\u001a\u00020\u0000J\u0006\u0010*\u001a\u00020\u0000J\u0014\u0010+\u001a\u00020,2\u000c\u0010-\u001a\u0008\u0012\u0004\u0012\u00020\u00010.J\u000e\u0010+\u001a\u00020,2\u0006\u0010/\u001a\u00020\u0000J\u0014\u00100\u001a\u00020,2\u000c\u0010-\u001a\u0008\u0012\u0004\u0012\u00020\u00010.J\u000e\u00100\u001a\u00020,2\u0006\u0010/\u001a\u00020\u0000J\u0006\u00101\u001a\u00020,J\u0006\u00102\u001a\u00020\u0000J\u0006\u00103\u001a\u00020\u0000J\u0006\u00104\u001a\u00020\u0000J\u000e\u00105\u001a\u00020,2\u0006\u00106\u001a\u00020\u0000J\u0006\u00107\u001a\u00020\u0000J\u000e\u00108\u001a\u00020\u00002\u0006\u00109\u001a\u00020\u0000J\u000e\u00108\u001a\u00020\u00002\u0006\u00109\u001a\u00020\u0005J\u000e\u00108\u001a\u00020\u00002\u0006\u00109\u001a\u00020:J\u000e\u0010;\u001a\u00020\u00002\u0006\u00109\u001a\u00020\u0005J\u000e\u0010;\u001a\u00020\u00002\u0006\u0010<\u001a\u00020\u0000J\u000e\u00105\u001a\u00020,2\u0006\u00106\u001a\u00020\u0005J\u000e\u0010=\u001a\u00020,2\u0006\u00106\u001a\u00020\u0000J\u000e\u0010=\u001a\u00020,2\u0006\u00106\u001a\u00020\u0005J\u000e\u0010>\u001a\u00020,2\u0006\u00106\u001a\u00020\u0000J\u000e\u0010>\u001a\u00020,2\u0006\u00106\u001a\u00020\u0005J\u001f\u0010?\u001a\u00020\u00002\u0012\u0010@\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00000A\"\u00020\u0000\u00a2\u0006\u0002\u0010BJ\u001f\u0010?\u001a\u00020\u00002\u0012\u0010@\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00010A\"\u00020\u0001\u00a2\u0006\u0002\u0010CJ\u001f\u0010D\u001a\u00020\u00002\u0012\u0010@\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00000A\"\u00020\u0000\u00a2\u0006\u0002\u0010BJ\u001f\u0010D\u001a\u00020\u00002\u0012\u0010@\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00010A\"\u00020\u0001\u00a2\u0006\u0002\u0010CJ\u0006\u0010E\u001a\u00020\u0000J\u000e\u0010F\u001a\u00020,2\u0006\u0010G\u001a\u00020\u0000J\u000e\u0010F\u001a\u00020,2\u0006\u0010G\u001a\u00020\u0005J\u000e\u0010H\u001a\u00020,2\u0006\u0010I\u001a\u00020\u0000J\u000e\u0010H\u001a\u00020,2\u0006\u0010I\u001a\u00020\u0005J\u000e\u0010J\u001a\u00020,2\u0006\u0010K\u001a\u00020\u0000J\u000e\u0010J\u001a\u00020,2\u0006\u0010K\u001a\u00020\u0005J\u0006\u0010L\u001a\u00020\u0000J\u0016\u0010G\u001a\u00020\u00002\u0006\u0010M\u001a\u00020\u00002\u0006\u00102\u001a\u00020\u0000J\u0016\u0010G\u001a\u00020\u00002\u0006\u0010M\u001a\u00020\u00102\u0006\u00102\u001a\u00020\u0010J\u0006\u0010N\u001a\u00020\u0000J\u0006\u0010O\u001a\u00020\u0000J\u0006\u0010P\u001a\u00020\u0000J\u000e\u0010Q\u001a\u00020\u00002\u0006\u0010R\u001a\u00020\u0005J\u000e\u0010Q\u001a\u00020\u00002\u0006\u0010R\u001a\u00020\u0000J\u001f\u0010S\u001a\u00020\u00002\u0012\u0010T\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00000A\"\u00020\u0000\u00a2\u0006\u0002\u0010BJ\u001f\u0010S\u001a\u00020\u00002\u0012\u0010U\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00050A\"\u00020\u0005\u00a2\u0006\u0002\u0010VJ\u001f\u0010S\u001a\u00020\u00002\u0012\u0010U\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00010A\"\u00020\u0001\u00a2\u0006\u0002\u0010CJ\u000e\u0010W\u001a\u00020\u00002\u0006\u0010X\u001a\u00020\u0000J\u000e\u0010W\u001a\u00020\u00002\u0006\u0010Y\u001a\u00020\u0005J\'\u0010Z\u001a\u00020\u00002\u0006\u0010[\u001a\u00020\u00002\u0012\u0010\\\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00000A\"\u00020\u0000\u00a2\u0006\u0002\u0010]J\u000e\u0010^\u001a\u00020\u00002\u0006\u0010X\u001a\u00020\u0000J\u000e\u0010^\u001a\u00020\u00002\u0006\u0010Y\u001a\u00020\u0005J\u000e\u0010_\u001a\u00020\u00002\u0006\u0010`\u001a\u00020\u0000J\u000e\u0010_\u001a\u00020\u00002\u0006\u0010`\u001a\u00020aJ\u000e\u0010_\u001a\u00020\u00002\u0006\u0010`\u001a\u00020bJ\u000e\u0010c\u001a\u00020\u00002\u0006\u0010`\u001a\u00020\u0000J\u000e\u0010c\u001a\u00020\u00002\u0006\u0010`\u001a\u00020aJ\u000e\u0010c\u001a\u00020\u00002\u0006\u0010`\u001a\u00020bJ\u000e\u0010d\u001a\u00020\u00002\u0006\u0010`\u001a\u00020\u0000J\u000e\u0010d\u001a\u00020\u00002\u0006\u0010`\u001a\u00020aJ\u000e\u0010d\u001a\u00020\u00002\u0006\u0010`\u001a\u00020bJ\u0006\u0010e\u001a\u00020\u0000J\u0006\u0010f\u001a\u00020\u0000J\u0006\u0010g\u001a\u00020\u0000J\u0006\u0010h\u001a\u00020\u0000J\u0006\u0010i\u001a\u00020\u0000J\u0006\u0010j\u001a\u00020\u0000J\u0006\u0010k\u001a\u00020\u0000J\u0016\u0010l\u001a\u00020\u00002\u0006\u0010m\u001a\u00020\u00002\u0006\u0010n\u001a\u00020\u0000J\u0016\u0010l\u001a\u00020\u00002\u0006\u0010m\u001a\u00020\u00052\u0006\u0010n\u001a\u00020oJ\u000e\u0010p\u001a\u00020\u00002\u0006\u0010q\u001a\u00020\u0005J\u000e\u0010p\u001a\u00020\u00002\u0006\u0010q\u001a\u00020\u0000J\u0016\u0010r\u001a\u00020\u00002\u0006\u0010m\u001a\u00020\u00002\u0006\u0010n\u001a\u00020\u0000J\u0016\u0010r\u001a\u00020\u00002\u0006\u0010m\u001a\u00020\u00052\u0006\u0010n\u001a\u00020oJ\'\u0010s\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u00002\u0012\u0010@\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00010A\"\u00020\u0001\u00a2\u0006\u0002\u0010tJ\'\u0010s\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u00012\u0012\u0010@\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00010A\"\u00020\u0001\u00a2\u0006\u0002\u0010uJ\'\u0010v\u001a\u00020\u00002\u0006\u0010w\u001a\u00020\u00002\u0012\u0010x\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00010A\"\u00020\u0001\u00a2\u0006\u0002\u0010tJ\'\u0010v\u001a\u00020\u00002\u0006\u0010w\u001a\u00020\u00012\u0012\u0010x\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00010A\"\u00020\u0001\u00a2\u0006\u0002\u0010uJ\u0006\u0010y\u001a\u00020\u0000J\u0006\u0010z\u001a\u00020\u0000J\u000e\u0010{\u001a\u00020,2\u0006\u0010|\u001a\u00020\u0000J\u000e\u0010{\u001a\u00020,2\u0006\u0010|\u001a\u00020\u0001J\u0014\u0010}\u001a\u00020,2\u000c\u0010-\u001a\u0008\u0012\u0004\u0012\u00020\u00010.J\u000e\u0010}\u001a\u00020,2\u0006\u0010/\u001a\u00020\u0000J\u0014\u0010~\u001a\u00020,2\u000c\u0010-\u001a\u0008\u0012\u0004\u0012\u00020\u00010.J\u000e\u0010~\u001a\u00020,2\u0006\u0010/\u001a\u00020\u0000J\u0006\u0010\u007f\u001a\u00020\u0000J\u0010\u0010\u0080\u0001\u001a\u00020\u00002\u0007\u0010\u0081\u0001\u001a\u00020\u0000J\u0010\u0010\u0080\u0001\u001a\u00020\u00002\u0007\u0010\u0081\u0001\u001a\u00020\u0010J\u0008\u0010\u0082\u0001\u001a\u00030\u0083\u0001J\u0008\u0010\u0084\u0001\u001a\u00030\u0083\u0001J\u0008\u0010\u0085\u0001\u001a\u00030\u0083\u0001J\u0008\u0010\u0086\u0001\u001a\u00030\u0083\u0001J\u0008\u0010\u0087\u0001\u001a\u00030\u0083\u0001J\u0008\u0010\u0088\u0001\u001a\u00030\u0083\u0001J\u0008\u0010\u0089\u0001\u001a\u00030\u008a\u0001J\u0008\u0010\u008b\u0001\u001a\u00030\u008a\u0001J\u0010\u0010\u008c\u0001\u001a\u00020,2\u0007\u0010\u008d\u0001\u001a\u00020\u0000J\u0010\u0010\u008c\u0001\u001a\u00020,2\u0007\u0010\u008e\u0001\u001a\u00020\u0001J\u0010\u0010\u008f\u0001\u001a\u00020,2\u0007\u0010\u008d\u0001\u001a\u00020\u0000J\u0010\u0010\u008f\u0001\u001a\u00020,2\u0007\u0010\u008e\u0001\u001a\u00020\u0001J\u0010\u0010\u0090\u0001\u001a\u00020,2\u0007\u0010\u008d\u0001\u001a\u00020\u0000J\u0010\u0010\u0090\u0001\u001a\u00020,2\u0007\u0010\u008e\u0001\u001a\u00020\u0001J\u0010\u0010\u0091\u0001\u001a\u00020,2\u0007\u0010\u008d\u0001\u001a\u00020\u0000J\u0010\u0010\u0091\u0001\u001a\u00020,2\u0007\u0010\u008e\u0001\u001a\u00020\u0001J\u0010\u0010\u0092\u0001\u001a\u00020,2\u0007\u0010\u008d\u0001\u001a\u00020\u0000J\u0010\u0010\u0092\u0001\u001a\u00020,2\u0007\u0010\u008e\u0001\u001a\u00020\u0001J\u0010\u0010\u0093\u0001\u001a\u00020,2\u0007\u0010\u008d\u0001\u001a\u00020\u0000J\u0010\u0010\u0093\u0001\u001a\u00020,2\u0007\u0010\u008e\u0001\u001a\u00020\u0001J\u0007\u0010\u0094\u0001\u001a\u00020,J\u0010\u0010\u0095\u0001\u001a\u00020\u00002\u0007\u0010\u0096\u0001\u001a\u00020\u0000J\u0010\u0010\u0095\u0001\u001a\u00020\u00002\u0007\u0010\u0097\u0001\u001a\u00020\u0001J\u0010\u0010\u0098\u0001\u001a\u00020\u00002\u0007\u0010\u0099\u0001\u001a\u00020\u0000J\u0010\u0010\u0098\u0001\u001a\u00020\u00002\u0007\u0010\u009a\u0001\u001a\u00020\u0001J\u0007\u0010\u009b\u0001\u001a\u00020,J\u0007\u0010\u009c\u0001\u001a\u00020,J\u001a\u0010\u009d\u0001\u001a\u00030\u009e\u00012\u0008\u0010\u009f\u0001\u001a\u00030\u00a0\u0001H \u00a2\u0006\u0003\u0008\u00a1\u0001J?\u0010\u00a2\u0001\u001a(\u0012\u0017\u0012\u00150\u00a4\u0001\u00a2\u0006\u000f\u0008\u00a5\u0001\u0012\n\u0008\u00a6\u0001\u0012\u0005\u0008\u0008(\u00a7\u0001\u0012\u0005\u0012\u00030\u00a8\u00010\u00a3\u0001j\u0003`\u00a9\u00012\u0008\u0010\u00aa\u0001\u001a\u00030\u00ab\u0001H \u00a2\u0006\u0003\u0008\u00ac\u0001\u00a8\u0006\u00af\u0001"
    }
    d2 = {
        "Lcom/google/firebase/firestore/pipeline/Expression;",
        "",
        "<init>",
        "()V",
        "canonicalId",
        "",
        "canonicalId$com_google_firebase_firebase_firestore",
        "bitAnd",
        "bitsOther",
        "",
        "bitOr",
        "bitXor",
        "bitNot",
        "bitLeftShift",
        "numberExpr",
        "number",
        "",
        "bitRightShift",
        "alias",
        "Lcom/google/firebase/firestore/pipeline/AliasedExpression;",
        "documentId",
        "collectionId",
        "abs",
        "exp",
        "add",
        "second",
        "",
        "subtract",
        "subtrahend",
        "multiply",
        "divide",
        "divisor",
        "mod",
        "round",
        "roundToPrecision",
        "decimalPlace",
        "ceil",
        "floor",
        "pow",
        "exponent",
        "sqrt",
        "ln",
        "log10",
        "equalAny",
        "Lcom/google/firebase/firestore/pipeline/BooleanExpression;",
        "values",
        "",
        "arrayExpression",
        "notEqualAny",
        "isAbsent",
        "length",
        "charLength",
        "byteLength",
        "like",
        "pattern",
        "type",
        "split",
        "delimiter",
        "Lcom/google/firebase/firestore/Blob;",
        "join",
        "delimiterExpression",
        "regexContains",
        "regexMatch",
        "logicalMaximum",
        "others",
        "",
        "([Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;",
        "([Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;",
        "logicalMinimum",
        "reverse",
        "stringContains",
        "substring",
        "startsWith",
        "prefix",
        "endsWith",
        "suffix",
        "stringReverse",
        "start",
        "toLower",
        "toUpper",
        "trim",
        "trimValue",
        "valueToTrim",
        "stringConcat",
        "stringExpressions",
        "strings",
        "([Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;",
        "mapGet",
        "keyExpression",
        "key",
        "mapMerge",
        "mapExpr",
        "otherMaps",
        "(Lcom/google/firebase/firestore/pipeline/Expression;[Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;",
        "mapRemove",
        "cosineDistance",
        "vector",
        "",
        "Lcom/google/firebase/firestore/VectorValue;",
        "dotProduct",
        "euclideanDistance",
        "vectorLength",
        "unixMicrosToTimestamp",
        "timestampToUnixMicros",
        "unixMillisToTimestamp",
        "timestampToUnixMillis",
        "unixSecondsToTimestamp",
        "timestampToUnixSeconds",
        "timestampAdd",
        "unit",
        "amount",
        "",
        "timestampTruncate",
        "granularity",
        "timestampSubtract",
        "concat",
        "(Lcom/google/firebase/firestore/pipeline/Expression;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;",
        "(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;",
        "arrayConcat",
        "secondArray",
        "otherArrays",
        "arrayReverse",
        "arraySum",
        "arrayContains",
        "element",
        "arrayContainsAll",
        "arrayContainsAny",
        "arrayLength",
        "arrayGet",
        "offset",
        "count",
        "Lcom/google/firebase/firestore/pipeline/AggregateFunction;",
        "countDistinct",
        "sum",
        "average",
        "minimum",
        "maximum",
        "ascending",
        "Lcom/google/firebase/firestore/pipeline/Ordering;",
        "descending",
        "equal",
        "other",
        "value",
        "notEqual",
        "greaterThan",
        "greaterThanOrEqual",
        "lessThan",
        "lessThanOrEqual",
        "exists",
        "ifError",
        "catchExpr",
        "catchValue",
        "ifAbsent",
        "elseExpr",
        "elseValue",
        "isError",
        "asBoolean",
        "toProto",
        "Lcom/google/firestore/v1/Value;",
        "userDataReader",
        "Lcom/google/firebase/firestore/UserDataReader;",
        "toProto$com_google_firebase_firebase_firestore",
        "evaluateFunction",
        "Lkotlin/Function1;",
        "Lcom/google/firebase/firestore/model/MutableDocument;",
        "Lkotlin/ParameterName;",
        "name",
        "input",
        "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
        "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateDocument;",
        "context",
        "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluationContext;",
        "evaluateFunction$com_google_firebase_firebase_firestore",
        "Constant",
        "Companion",
        "com.google.firebase-firebase-firestore"
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
.field public static final Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

.field private static final NULL:Lcom/google/firebase/firestore/pipeline/Expression;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    .line 131
    new-instance v0, Lcom/google/firebase/firestore/pipeline/Expression$Constant;

    sget-object v1, Lcom/google/firebase/firestore/model/Values;->NULL_VALUE:Lcom/google/firestore/v1/Value;

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/pipeline/Expression$Constant;-><init>(Lcom/google/firestore/v1/Value;)V

    check-cast v0, Lcom/google/firebase/firestore/pipeline/Expression;

    sput-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->NULL:Lcom/google/firebase/firestore/pipeline/Expression;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final abs(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "numericExpr"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->abs(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 1061
    return-object v0
.end method

.method public static final abs(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "numericField"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->abs(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 1075
    return-object v0
.end method

.method public static final synthetic access$getNULL$cp()Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 60
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->NULL:Lcom/google/firebase/firestore/pipeline/Expression;

    return-object v0
.end method

.method public static final add(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "first"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "second"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->add(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 1276
    return-object v0
.end method

.method public static final add(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Number;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "first"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "second"    # Ljava/lang/Number;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->add(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Number;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 1292
    return-object v0
.end method

.method public static final add(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "numericFieldName"    # Ljava/lang/String;
    .param p1, "second"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->add(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 1308
    return-object v0
.end method

.method public static final add(Ljava/lang/String;Ljava/lang/Number;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "numericFieldName"    # Ljava/lang/String;
    .param p1, "second"    # Ljava/lang/Number;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->add(Ljava/lang/String;Ljava/lang/Number;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 1324
    return-object v0
.end method

.method public static final varargs and(Lcom/google/firebase/firestore/pipeline/BooleanExpression;[Lcom/google/firebase/firestore/pipeline/BooleanExpression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p0, "condition"    # Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .param p1, "conditions"    # [Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->and(Lcom/google/firebase/firestore/pipeline/BooleanExpression;[Lcom/google/firebase/firestore/pipeline/BooleanExpression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    .line 398
    return-object v0
.end method

.method public static final array(Ljava/util/List;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "elements"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/firebase/firestore/pipeline/Expression;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->array(Ljava/util/List;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 4528
    return-object v0
.end method

.method public static final varargs array([Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "elements"    # [Ljava/lang/Object;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->array([Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 4518
    return-object v0
.end method

.method public static final varargs arrayConcat(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "firstArray"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "secondArray"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p2, "otherArrays"    # [Ljava/lang/Object;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayConcat(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 4549
    return-object v0
.end method

.method public static final varargs arrayConcat(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "firstArray"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "secondArray"    # Ljava/lang/Object;
    .param p2, "otherArrays"    # [Ljava/lang/Object;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayConcat(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 4566
    return-object v0
.end method

.method public static final varargs arrayConcat(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "firstArrayField"    # Ljava/lang/String;
    .param p1, "secondArray"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p2, "otherArrays"    # [Ljava/lang/Object;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayConcat(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 4593
    return-object v0
.end method

.method public static final varargs arrayConcat(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "firstArrayField"    # Ljava/lang/String;
    .param p1, "secondArray"    # Ljava/lang/Object;
    .param p2, "otherArrays"    # [Ljava/lang/Object;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayConcat(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 4620
    return-object v0
.end method

.method public static final arrayContains(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p0, "array"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "element"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayContains(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    .line 4690
    return-object v0
.end method

.method public static final arrayContains(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p0, "array"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "element"    # Ljava/lang/Object;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayContains(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    .line 4725
    return-object v0
.end method

.method public static final arrayContains(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p0, "arrayFieldName"    # Ljava/lang/String;
    .param p1, "element"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayContains(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    .line 4706
    return-object v0
.end method

.method public static final arrayContains(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p0, "arrayFieldName"    # Ljava/lang/String;
    .param p1, "element"    # Ljava/lang/Object;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayContains(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    .line 4741
    return-object v0
.end method

.method public static final arrayContainsAll(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p0, "array"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "arrayExpression"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayContainsAll(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    .line 4778
    return-object v0
.end method

.method public static final arrayContainsAll(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/util/List;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p0, "array"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "values"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/pipeline/Expression;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/firebase/firestore/pipeline/BooleanExpression;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayContainsAll(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/util/List;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    .line 4757
    return-object v0
.end method

.method public static final arrayContainsAll(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p0, "arrayFieldName"    # Ljava/lang/String;
    .param p1, "arrayExpression"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayContainsAll(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    .line 4820
    return-object v0
.end method

.method public static final arrayContainsAll(Ljava/lang/String;Ljava/util/List;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p0, "arrayFieldName"    # Ljava/lang/String;
    .param p1, "values"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/firebase/firestore/pipeline/BooleanExpression;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayContainsAll(Ljava/lang/String;Ljava/util/List;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    .line 4799
    return-object v0
.end method

.method public static final arrayContainsAny(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p0, "array"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "arrayExpression"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayContainsAny(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    .line 4863
    return-object v0
.end method

.method public static final arrayContainsAny(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/util/List;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p0, "array"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "values"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/pipeline/Expression;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/firebase/firestore/pipeline/BooleanExpression;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayContainsAny(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/util/List;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    .line 4841
    return-object v0
.end method

.method public static final arrayContainsAny(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p0, "arrayFieldName"    # Ljava/lang/String;
    .param p1, "arrayExpression"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayContainsAny(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    .line 4905
    return-object v0
.end method

.method public static final arrayContainsAny(Ljava/lang/String;Ljava/util/List;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p0, "arrayFieldName"    # Ljava/lang/String;
    .param p1, "values"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/firebase/firestore/pipeline/BooleanExpression;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayContainsAny(Ljava/lang/String;Ljava/util/List;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    .line 4884
    return-object v0
.end method

.method public static final arrayGet(Lcom/google/firebase/firestore/pipeline/Expression;I)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "array"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "offset"    # I
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayGet(Lcom/google/firebase/firestore/pipeline/Expression;I)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 4971
    return-object v0
.end method

.method public static final arrayGet(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "array"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "offset"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayGet(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 4953
    return-object v0
.end method

.method public static final arrayGet(Ljava/lang/String;I)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "arrayFieldName"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayGet(Ljava/lang/String;I)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 5007
    return-object v0
.end method

.method public static final arrayGet(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "arrayFieldName"    # Ljava/lang/String;
    .param p1, "offset"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayGet(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 4989
    return-object v0
.end method

.method public static final arrayLength(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "array"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayLength(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 4920
    return-object v0
.end method

.method public static final arrayLength(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "arrayFieldName"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayLength(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 4935
    return-object v0
.end method

.method public static final arrayReverse(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "array"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayReverse(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 4635
    return-object v0
.end method

.method public static final arrayReverse(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "arrayFieldName"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayReverse(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 4650
    return-object v0
.end method

.method public static final arraySum(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "array"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arraySum(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 4664
    return-object v0
.end method

.method public static final arraySum(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "arrayFieldName"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arraySum(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 4679
    return-object v0
.end method

.method public static final bitAnd(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "bits"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "bitsOther"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->bitAnd(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 461
    return-object v0
.end method

.method public static final bitAnd(Lcom/google/firebase/firestore/pipeline/Expression;[B)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "bits"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "bitsOther"    # [B
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->bitAnd(Lcom/google/firebase/firestore/pipeline/Expression;[B)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 478
    return-object v0
.end method

.method public static final bitAnd(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "bitsFieldName"    # Ljava/lang/String;
    .param p1, "bitsOther"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->bitAnd(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 495
    return-object v0
.end method

.method public static final bitAnd(Ljava/lang/String;[B)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "bitsFieldName"    # Ljava/lang/String;
    .param p1, "bitsOther"    # [B
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->bitAnd(Ljava/lang/String;[B)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 511
    return-object v0
.end method

.method public static final bitLeftShift(Lcom/google/firebase/firestore/pipeline/Expression;I)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "bits"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "number"    # I
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->bitLeftShift(Lcom/google/firebase/firestore/pipeline/Expression;I)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 704
    return-object v0
.end method

.method public static final bitLeftShift(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "bits"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "numberExpr"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->bitLeftShift(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 687
    return-object v0
.end method

.method public static final bitLeftShift(Ljava/lang/String;I)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "bitsFieldName"    # Ljava/lang/String;
    .param p1, "number"    # I
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->bitLeftShift(Ljava/lang/String;I)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 738
    return-object v0
.end method

.method public static final bitLeftShift(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "bitsFieldName"    # Ljava/lang/String;
    .param p1, "numberExpr"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->bitLeftShift(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 721
    return-object v0
.end method

.method public static final bitNot(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "bits"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->bitNot(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 656
    return-object v0
.end method

.method public static final bitNot(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "bitsFieldName"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->bitNot(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 671
    return-object v0
.end method

.method public static final bitOr(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "bits"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "bitsOther"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->bitOr(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 527
    return-object v0
.end method

.method public static final bitOr(Lcom/google/firebase/firestore/pipeline/Expression;[B)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "bits"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "bitsOther"    # [B
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->bitOr(Lcom/google/firebase/firestore/pipeline/Expression;[B)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 544
    return-object v0
.end method

.method public static final bitOr(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "bitsFieldName"    # Ljava/lang/String;
    .param p1, "bitsOther"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->bitOr(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 560
    return-object v0
.end method

.method public static final bitOr(Ljava/lang/String;[B)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "bitsFieldName"    # Ljava/lang/String;
    .param p1, "bitsOther"    # [B
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->bitOr(Ljava/lang/String;[B)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 576
    return-object v0
.end method

.method public static final bitRightShift(Lcom/google/firebase/firestore/pipeline/Expression;I)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "bits"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "number"    # I
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->bitRightShift(Lcom/google/firebase/firestore/pipeline/Expression;I)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 771
    return-object v0
.end method

.method public static final bitRightShift(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "bits"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "numberExpr"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->bitRightShift(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 754
    return-object v0
.end method

.method public static final bitRightShift(Ljava/lang/String;I)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "bitsFieldName"    # Ljava/lang/String;
    .param p1, "number"    # I
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->bitRightShift(Ljava/lang/String;I)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 805
    return-object v0
.end method

.method public static final bitRightShift(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "bitsFieldName"    # Ljava/lang/String;
    .param p1, "numberExpr"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->bitRightShift(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 788
    return-object v0
.end method

.method public static final bitXor(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "bits"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "bitsOther"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->bitXor(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 592
    return-object v0
.end method

.method public static final bitXor(Lcom/google/firebase/firestore/pipeline/Expression;[B)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "bits"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "bitsOther"    # [B
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->bitXor(Lcom/google/firebase/firestore/pipeline/Expression;[B)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 609
    return-object v0
.end method

.method public static final bitXor(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "bitsFieldName"    # Ljava/lang/String;
    .param p1, "bitsOther"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->bitXor(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 626
    return-object v0
.end method

.method public static final bitXor(Ljava/lang/String;[B)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "bitsFieldName"    # Ljava/lang/String;
    .param p1, "bitsOther"    # [B
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->bitXor(Ljava/lang/String;[B)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 642
    return-object v0
.end method

.method public static final byteLength(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "value"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->byteLength(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 1863
    return-object v0
.end method

.method public static final byteLength(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->byteLength(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 1879
    return-object v0
.end method

.method public static final ceil(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "numericExpr"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->ceil(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 928
    return-object v0
.end method

.method public static final ceil(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "numericField"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->ceil(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 943
    return-object v0
.end method

.method public static final charLength(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "expr"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->charLength(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 1832
    return-object v0
.end method

.method public static final charLength(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->charLength(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 1847
    return-object v0
.end method

.method public static final collectionId(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "path"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->collectionId(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 5236
    return-object v0
.end method

.method public static final collectionId(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "pathField"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->collectionId(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 5249
    return-object v0
.end method

.method public static final varargs concat(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "first"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "second"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p2, "others"    # [Ljava/lang/Object;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->concat(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 4445
    return-object v0
.end method

.method public static final varargs concat(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "first"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "second"    # Ljava/lang/Object;
    .param p2, "others"    # [Ljava/lang/Object;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->concat(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 4462
    return-object v0
.end method

.method public static final varargs concat(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "first"    # Ljava/lang/String;
    .param p1, "second"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p2, "others"    # [Ljava/lang/Object;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->concat(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 4479
    return-object v0
.end method

.method public static final varargs concat(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "first"    # Ljava/lang/String;
    .param p1, "second"    # Ljava/lang/Object;
    .param p2, "others"    # [Ljava/lang/Object;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->concat(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 4496
    return-object v0
.end method

.method public static final conditional(Lcom/google/firebase/firestore/pipeline/BooleanExpression;Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "condition"    # Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .param p1, "thenExpr"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p2, "elseExpr"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->conditional(Lcom/google/firebase/firestore/pipeline/BooleanExpression;Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 5023
    return-object v0
.end method

.method public static final conditional(Lcom/google/firebase/firestore/pipeline/BooleanExpression;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "condition"    # Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .param p1, "thenValue"    # Ljava/lang/Object;
    .param p2, "elseValue"    # Ljava/lang/Object;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->conditional(Lcom/google/firebase/firestore/pipeline/BooleanExpression;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 5041
    return-object v0
.end method

.method public static final constant(Z)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p0, "value"    # Z
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->constant(Z)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    .line 211
    return-object v0
.end method

.method public static final constant(Lcom/google/firebase/Timestamp;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "value"    # Lcom/google/firebase/Timestamp;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->constant(Lcom/google/firebase/Timestamp;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 195
    return-object v0
.end method

.method public static final constant(Lcom/google/firebase/firestore/Blob;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "value"    # Lcom/google/firebase/firestore/Blob;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->constant(Lcom/google/firebase/firestore/Blob;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 261
    return-object v0
.end method

.method public static final constant(Lcom/google/firebase/firestore/DocumentReference;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "ref"    # Lcom/google/firebase/firestore/DocumentReference;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->constant(Lcom/google/firebase/firestore/DocumentReference;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 278
    return-object v0
.end method

.method public static final constant(Lcom/google/firebase/firestore/GeoPoint;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "value"    # Lcom/google/firebase/firestore/GeoPoint;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->constant(Lcom/google/firebase/firestore/GeoPoint;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 229
    return-object v0
.end method

.method public static final constant(Lcom/google/firebase/firestore/VectorValue;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "value"    # Lcom/google/firebase/firestore/VectorValue;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->constant(Lcom/google/firebase/firestore/VectorValue;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 291
    return-object v0
.end method

.method public static final constant(Ljava/lang/Number;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "value"    # Ljava/lang/Number;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->constant(Ljava/lang/Number;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 163
    return-object v0
.end method

.method public static final constant(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->constant(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 147
    return-object v0
.end method

.method public static final constant(Ljava/util/Date;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "value"    # Ljava/util/Date;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->constant(Ljava/util/Date;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 179
    return-object v0
.end method

.method public static final constant([B)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "value"    # [B
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->constant([B)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 245
    return-object v0
.end method

.method public static final cosineDistance(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/VectorValue;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "vector1"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "vector2"    # Lcom/google/firebase/firestore/VectorValue;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->cosineDistance(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/VectorValue;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 3208
    return-object v0
.end method

.method public static final cosineDistance(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "vector1"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "vector2"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->cosineDistance(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 3176
    return-object v0
.end method

.method public static final cosineDistance(Lcom/google/firebase/firestore/pipeline/Expression;[D)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "vector1"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "vector2"    # [D
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->cosineDistance(Lcom/google/firebase/firestore/pipeline/Expression;[D)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 3192
    return-object v0
.end method

.method public static final cosineDistance(Ljava/lang/String;Lcom/google/firebase/firestore/VectorValue;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "vectorFieldName"    # Ljava/lang/String;
    .param p1, "vector"    # Lcom/google/firebase/firestore/VectorValue;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->cosineDistance(Ljava/lang/String;Lcom/google/firebase/firestore/VectorValue;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 3256
    return-object v0
.end method

.method public static final cosineDistance(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "vectorFieldName"    # Ljava/lang/String;
    .param p1, "vector"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->cosineDistance(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 3224
    return-object v0
.end method

.method public static final cosineDistance(Ljava/lang/String;[D)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "vectorFieldName"    # Ljava/lang/String;
    .param p1, "vector"    # [D
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->cosineDistance(Ljava/lang/String;[D)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 3240
    return-object v0
.end method

.method public static final currentTimestamp()Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->currentTimestamp()Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 3496
    return-object v0
.end method

.method public static final divide(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "dividend"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "divisor"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->divide(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 1468
    return-object v0
.end method

.method public static final divide(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Number;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "dividend"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "divisor"    # Ljava/lang/Number;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->divide(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Number;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 1484
    return-object v0
.end method

.method public static final divide(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "dividendFieldName"    # Ljava/lang/String;
    .param p1, "divisor"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->divide(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 1500
    return-object v0
.end method

.method public static final divide(Ljava/lang/String;Ljava/lang/Number;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "dividendFieldName"    # Ljava/lang/String;
    .param p1, "divisor"    # Ljava/lang/Number;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->divide(Ljava/lang/String;Ljava/lang/Number;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 1516
    return-object v0
.end method

.method public static final documentId(Lcom/google/firebase/firestore/DocumentReference;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "docRef"    # Lcom/google/firebase/firestore/DocumentReference;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->documentId(Lcom/google/firebase/firestore/DocumentReference;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 5285
    return-object v0
.end method

.method public static final documentId(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "documentPath"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->documentId(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 5264
    return-object v0
.end method

.method public static final documentId(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "documentPath"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->documentId(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 5277
    return-object v0
.end method

.method public static final dotProduct(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/VectorValue;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "vector1"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "vector2"    # Lcom/google/firebase/firestore/VectorValue;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->dotProduct(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/VectorValue;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 3304
    return-object v0
.end method

.method public static final dotProduct(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "vector1"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "vector2"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->dotProduct(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 3272
    return-object v0
.end method

.method public static final dotProduct(Lcom/google/firebase/firestore/pipeline/Expression;[D)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "vector1"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "vector2"    # [D
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->dotProduct(Lcom/google/firebase/firestore/pipeline/Expression;[D)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 3288
    return-object v0
.end method

.method public static final dotProduct(Ljava/lang/String;Lcom/google/firebase/firestore/VectorValue;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "vectorFieldName"    # Ljava/lang/String;
    .param p1, "vector"    # Lcom/google/firebase/firestore/VectorValue;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->dotProduct(Ljava/lang/String;Lcom/google/firebase/firestore/VectorValue;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 3352
    return-object v0
.end method

.method public static final dotProduct(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "vectorFieldName"    # Ljava/lang/String;
    .param p1, "vector"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->dotProduct(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 3320
    return-object v0
.end method

.method public static final dotProduct(Ljava/lang/String;[D)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "vectorFieldName"    # Ljava/lang/String;
    .param p1, "vector"    # [D
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->dotProduct(Ljava/lang/String;[D)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 3336
    return-object v0
.end method

.method public static final endsWith(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p0, "stringExpr"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "suffix"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->endsWith(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    .line 2650
    return-object v0
.end method

.method public static final endsWith(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p0, "stringExpr"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "suffix"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->endsWith(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    .line 2666
    return-object v0
.end method

.method public static final endsWith(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .param p1, "suffix"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->endsWith(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    .line 2682
    return-object v0
.end method

.method public static final endsWith(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .param p1, "suffix"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->endsWith(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    .line 2698
    return-object v0
.end method

.method public static final equal(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p0, "left"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "right"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->equal(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    .line 4052
    return-object v0
.end method

.method public static final equal(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p0, "left"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "right"    # Ljava/lang/Object;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->equal(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    .line 4068
    return-object v0
.end method

.method public static final equal(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .param p1, "expression"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->equal(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    .line 4084
    return-object v0
.end method

.method public static final equal(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->equal(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    .line 4100
    return-object v0
.end method

.method public static final equalAny(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p0, "expression"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "arrayExpression"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->equalAny(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    .line 1619
    return-object v0
.end method

.method public static final equalAny(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/util/List;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p0, "expression"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "values"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/pipeline/Expression;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/firebase/firestore/pipeline/BooleanExpression;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->equalAny(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/util/List;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    .line 1601
    return-object v0
.end method

.method public static final equalAny(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .param p1, "arrayExpression"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->equalAny(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    .line 1654
    return-object v0
.end method

.method public static final equalAny(Ljava/lang/String;Ljava/util/List;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .param p1, "values"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/firebase/firestore/pipeline/BooleanExpression;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->equalAny(Ljava/lang/String;Ljava/util/List;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    .line 1636
    return-object v0
.end method

.method public static final error$com_google_firebase_firebase_firestore(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->error$com_google_firebase_firebase_firestore(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 5076
    return-object v0
.end method

.method public static final euclideanDistance(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/VectorValue;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "vector1"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "vector2"    # Lcom/google/firebase/firestore/VectorValue;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->euclideanDistance(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/VectorValue;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 3400
    return-object v0
.end method

.method public static final euclideanDistance(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "vector1"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "vector2"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->euclideanDistance(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 3368
    return-object v0
.end method

.method public static final euclideanDistance(Lcom/google/firebase/firestore/pipeline/Expression;[D)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "vector1"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "vector2"    # [D
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->euclideanDistance(Lcom/google/firebase/firestore/pipeline/Expression;[D)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 3384
    return-object v0
.end method

.method public static final euclideanDistance(Ljava/lang/String;Lcom/google/firebase/firestore/VectorValue;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "vectorFieldName"    # Ljava/lang/String;
    .param p1, "vector"    # Lcom/google/firebase/firestore/VectorValue;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->euclideanDistance(Ljava/lang/String;Lcom/google/firebase/firestore/VectorValue;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 3453
    return-object v0
.end method

.method public static final euclideanDistance(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "vectorFieldName"    # Ljava/lang/String;
    .param p1, "vector"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->euclideanDistance(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 3416
    return-object v0
.end method

.method public static final euclideanDistance(Ljava/lang/String;[D)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "vectorFieldName"    # Ljava/lang/String;
    .param p1, "vector"    # [D
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->euclideanDistance(Ljava/lang/String;[D)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 3437
    return-object v0
.end method

.method public static final exists(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p0, "value"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->exists(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    .line 5051
    return-object v0
.end method

.method public static final exists(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->exists(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    .line 5061
    return-object v0
.end method

.method public static final exp(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "numericExpr"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->exp(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 1090
    return-object v0
.end method

.method public static final exp(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "numericField"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->exp(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 1104
    return-object v0
.end method

.method public static final field(Lcom/google/firebase/firestore/FieldPath;)Lcom/google/firebase/firestore/pipeline/Field;
    .locals 1
    .param p0, "fieldPath"    # Lcom/google/firebase/firestore/FieldPath;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->field(Lcom/google/firebase/firestore/FieldPath;)Lcom/google/firebase/firestore/pipeline/Field;

    move-result-object v0

    .line 365
    return-object v0
.end method

.method public static final field(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Field;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->field(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Field;

    move-result-object v0

    .line 349
    return-object v0
.end method

.method public static final floor(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "numericExpr"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->floor(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 958
    return-object v0
.end method

.method public static final floor(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "numericField"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->floor(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 974
    return-object v0
.end method

.method public static final greaterThan(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p0, "left"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "right"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->greaterThan(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    .line 4184
    return-object v0
.end method

.method public static final greaterThan(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p0, "left"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "right"    # Ljava/lang/Object;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->greaterThan(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    .line 4200
    return-object v0
.end method

.method public static final greaterThan(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .param p1, "expression"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->greaterThan(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    .line 4216
    return-object v0
.end method

.method public static final greaterThan(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->greaterThan(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    .line 4232
    return-object v0
.end method

.method public static final greaterThanOrEqual(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p0, "left"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "right"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->greaterThanOrEqual(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    .line 4249
    return-object v0
.end method

.method public static final greaterThanOrEqual(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p0, "left"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "right"    # Ljava/lang/Object;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->greaterThanOrEqual(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    .line 4265
    return-object v0
.end method

.method public static final greaterThanOrEqual(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .param p1, "expression"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->greaterThanOrEqual(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    .line 4282
    return-object v0
.end method

.method public static final greaterThanOrEqual(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->greaterThanOrEqual(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    .line 4299
    return-object v0
.end method

.method public static final ifAbsent(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "ifExpr"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "elseExpr"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->ifAbsent(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 5166
    return-object v0
.end method

.method public static final ifAbsent(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "ifExpr"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "elseValue"    # Ljava/lang/Object;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->ifAbsent(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 5184
    return-object v0
.end method

.method public static final ifAbsent(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "ifFieldName"    # Ljava/lang/String;
    .param p1, "elseExpr"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->ifAbsent(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 5203
    return-object v0
.end method

.method public static final ifAbsent(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "ifFieldName"    # Ljava/lang/String;
    .param p1, "elseValue"    # Ljava/lang/Object;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->ifAbsent(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 5221
    return-object v0
.end method

.method public static final ifError(Lcom/google/firebase/firestore/pipeline/BooleanExpression;Lcom/google/firebase/firestore/pipeline/BooleanExpression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p0, "tryExpr"    # Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .param p1, "catchExpr"    # Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->ifError(Lcom/google/firebase/firestore/pipeline/BooleanExpression;Lcom/google/firebase/firestore/pipeline/BooleanExpression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    .line 5116
    return-object v0
.end method

.method public static final ifError(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "tryExpr"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "catchExpr"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->ifError(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 5095
    return-object v0
.end method

.method public static final ifError(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "tryExpr"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "catchValue"    # Ljava/lang/Object;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->ifError(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 5148
    return-object v0
.end method

.method public static final isAbsent(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p0, "value"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->isAbsent(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    .line 1740
    return-object v0
.end method

.method public static final isAbsent(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->isAbsent(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    .line 1756
    return-object v0
.end method

.method public static final isError(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p0, "expr"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->isError(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    .line 5131
    return-object v0
.end method

.method public static final join(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "arrayExpression"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "delimiterExpression"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->join(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 2023
    return-object v0
.end method

.method public static final join(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "arrayExpression"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "delimiter"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->join(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 2007
    return-object v0
.end method

.method public static final join(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "arrayFieldName"    # Ljava/lang/String;
    .param p1, "delimiterExpression"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->join(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 2055
    return-object v0
.end method

.method public static final join(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "arrayFieldName"    # Ljava/lang/String;
    .param p1, "delimiter"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->join(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 2039
    return-object v0
.end method

.method public static final length(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "expr"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->length(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 1801
    return-object v0
.end method

.method public static final length(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->length(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 1817
    return-object v0
.end method

.method public static final lessThan(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p0, "left"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "right"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->lessThan(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    .line 4315
    return-object v0
.end method

.method public static final lessThan(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p0, "left"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "right"    # Ljava/lang/Object;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->lessThan(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    .line 4331
    return-object v0
.end method

.method public static final lessThan(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .param p1, "expression"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->lessThan(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    .line 4347
    return-object v0
.end method

.method public static final lessThan(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->lessThan(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    .line 4363
    return-object v0
.end method

.method public static final lessThanOrEqual(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p0, "left"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "right"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->lessThanOrEqual(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    .line 4380
    return-object v0
.end method

.method public static final lessThanOrEqual(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p0, "left"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "right"    # Ljava/lang/Object;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->lessThanOrEqual(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    .line 4396
    return-object v0
.end method

.method public static final lessThanOrEqual(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .param p1, "expression"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->lessThanOrEqual(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    .line 4412
    return-object v0
.end method

.method public static final lessThanOrEqual(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->lessThanOrEqual(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    .line 4428
    return-object v0
.end method

.method public static final like(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p0, "stringExpression"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "pattern"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->like(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    .line 1895
    return-object v0
.end method

.method public static final like(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p0, "stringExpression"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "pattern"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->like(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    .line 2071
    return-object v0
.end method

.method public static final like(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .param p1, "pattern"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->like(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    .line 2088
    return-object v0
.end method

.method public static final like(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .param p1, "pattern"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->like(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    .line 2105
    return-object v0
.end method

.method public static final ln(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "numericExpr"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->ln(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 1118
    return-object v0
.end method

.method public static final ln(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "numericField"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->ln(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 1132
    return-object v0
.end method

.method public static final log(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "numericExpr"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "base"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->log(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 1183
    return-object v0
.end method

.method public static final log(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Number;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "numericExpr"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "base"    # Ljava/lang/Number;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->log(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Number;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 1149
    return-object v0
.end method

.method public static final log(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "numericField"    # Ljava/lang/String;
    .param p1, "base"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->log(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 1200
    return-object v0
.end method

.method public static final log(Ljava/lang/String;Ljava/lang/Number;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "numericField"    # Ljava/lang/String;
    .param p1, "base"    # Ljava/lang/Number;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->log(Ljava/lang/String;Ljava/lang/Number;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 1166
    return-object v0
.end method

.method public static final log10(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "numericExpr"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->log10(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 1215
    return-object v0
.end method

.method public static final log10(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "numericField"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->log10(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 1230
    return-object v0
.end method

.method public static final varargs logicalMaximum(Lcom/google/firebase/firestore/pipeline/Expression;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "expr"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "others"    # [Ljava/lang/Object;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->logicalMaximum(Lcom/google/firebase/firestore/pipeline/Expression;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 2427
    return-object v0
.end method

.method public static final varargs logicalMaximum(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .param p1, "others"    # [Ljava/lang/Object;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->logicalMaximum(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 2444
    return-object v0
.end method

.method public static final varargs logicalMinimum(Lcom/google/firebase/firestore/pipeline/Expression;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "expr"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "others"    # [Ljava/lang/Object;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->logicalMinimum(Lcom/google/firebase/firestore/pipeline/Expression;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 2461
    return-object v0
.end method

.method public static final varargs logicalMinimum(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .param p1, "others"    # [Ljava/lang/Object;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->logicalMinimum(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 2478
    return-object v0
.end method

.method public static final map(Ljava/util/Map;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "elements"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/firebase/firestore/pipeline/Expression;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->map(Ljava/util/Map;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 2971
    return-object v0
.end method

.method public static final mapGet(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "mapExpression"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "keyExpression"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->mapGet(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 3019
    return-object v0
.end method

.method public static final mapGet(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "mapExpression"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "key"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->mapGet(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 2987
    return-object v0
.end method

.method public static final mapGet(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .param p1, "keyExpression"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->mapGet(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 3035
    return-object v0
.end method

.method public static final mapGet(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->mapGet(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 3003
    return-object v0
.end method

.method public static final varargs mapMerge(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;[Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "firstMap"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "secondMap"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p2, "otherMaps"    # [Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->mapMerge(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;[Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 3065
    return-object v0
.end method

.method public static final varargs mapMerge(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;[Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "firstMapFieldName"    # Ljava/lang/String;
    .param p1, "secondMap"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p2, "otherMaps"    # [Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->mapMerge(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;[Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 3096
    return-object v0
.end method

.method public static final mapRemove(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "mapExpr"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "key"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->mapRemove(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 3112
    return-object v0
.end method

.method public static final mapRemove(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "mapExpr"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "key"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->mapRemove(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 3144
    return-object v0
.end method

.method public static final mapRemove(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "mapField"    # Ljava/lang/String;
    .param p1, "key"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->mapRemove(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 3128
    return-object v0
.end method

.method public static final mapRemove(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "mapField"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->mapRemove(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 3160
    return-object v0
.end method

.method public static final mod(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "dividend"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "divisor"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->mod(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 1533
    return-object v0
.end method

.method public static final mod(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Number;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "dividend"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "divisor"    # Ljava/lang/Number;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->mod(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Number;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 1550
    return-object v0
.end method

.method public static final mod(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "dividendFieldName"    # Ljava/lang/String;
    .param p1, "divisor"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->mod(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 1567
    return-object v0
.end method

.method public static final mod(Ljava/lang/String;Ljava/lang/Number;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "dividendFieldName"    # Ljava/lang/String;
    .param p1, "divisor"    # Ljava/lang/Number;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->mod(Ljava/lang/String;Ljava/lang/Number;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 1584
    return-object v0
.end method

.method public static final multiply(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "first"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "second"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->multiply(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 1404
    return-object v0
.end method

.method public static final multiply(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Number;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "first"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "second"    # Ljava/lang/Number;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->multiply(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Number;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 1420
    return-object v0
.end method

.method public static final multiply(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "numericFieldName"    # Ljava/lang/String;
    .param p1, "second"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->multiply(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 1436
    return-object v0
.end method

.method public static final multiply(Ljava/lang/String;Ljava/lang/Number;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "numericFieldName"    # Ljava/lang/String;
    .param p1, "second"    # Ljava/lang/Number;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->multiply(Ljava/lang/String;Ljava/lang/Number;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 1452
    return-object v0
.end method

.method public static final not(Lcom/google/firebase/firestore/pipeline/BooleanExpression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p0, "condition"    # Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->not(Lcom/google/firebase/firestore/pipeline/BooleanExpression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    .line 445
    return-object v0
.end method

.method public static final notEqual(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p0, "left"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "right"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->notEqual(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    .line 4116
    return-object v0
.end method

.method public static final notEqual(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p0, "left"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "right"    # Ljava/lang/Object;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->notEqual(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    .line 4132
    return-object v0
.end method

.method public static final notEqual(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .param p1, "expression"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->notEqual(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    .line 4148
    return-object v0
.end method

.method public static final notEqual(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->notEqual(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    .line 4167
    return-object v0
.end method

.method public static final notEqualAny(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p0, "expression"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "arrayExpression"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->notEqualAny(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    .line 1689
    return-object v0
.end method

.method public static final notEqualAny(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/util/List;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p0, "expression"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "values"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/pipeline/Expression;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/firebase/firestore/pipeline/BooleanExpression;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->notEqualAny(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/util/List;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    .line 1671
    return-object v0
.end method

.method public static final notEqualAny(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .param p1, "arrayExpression"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->notEqualAny(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    .line 1724
    return-object v0
.end method

.method public static final notEqualAny(Ljava/lang/String;Ljava/util/List;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .param p1, "values"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/firebase/firestore/pipeline/BooleanExpression;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->notEqualAny(Ljava/lang/String;Ljava/util/List;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    .line 1706
    return-object v0
.end method

.method public static final nullValue()Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->nullValue()Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 303
    return-object v0
.end method

.method public static final varargs or(Lcom/google/firebase/firestore/pipeline/BooleanExpression;[Lcom/google/firebase/firestore/pipeline/BooleanExpression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p0, "condition"    # Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .param p1, "conditions"    # [Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->or(Lcom/google/firebase/firestore/pipeline/BooleanExpression;[Lcom/google/firebase/firestore/pipeline/BooleanExpression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    .line 414
    return-object v0
.end method

.method public static final pow(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "numericExpr"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "exponent"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->pow(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 1028
    return-object v0
.end method

.method public static final pow(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Number;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "numericExpr"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "exponent"    # Ljava/lang/Number;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->pow(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Number;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 992
    return-object v0
.end method

.method public static final pow(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "numericField"    # Ljava/lang/String;
    .param p1, "exponent"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->pow(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 1046
    return-object v0
.end method

.method public static final pow(Ljava/lang/String;Ljava/lang/Number;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "numericField"    # Ljava/lang/String;
    .param p1, "exponent"    # Ljava/lang/Number;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->pow(Ljava/lang/String;Ljava/lang/Number;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 1010
    return-object v0
.end method

.method public static final rand$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->rand$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 2118
    return-object v0
.end method

.method public static final varargs rawFunction(Ljava/lang/String;[Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "expr"    # [Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->rawFunction(Ljava/lang/String;[Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 382
    return-object v0
.end method

.method public static final regexContains(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p0, "stringExpression"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "pattern"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->regexContains(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    .line 2135
    return-object v0
.end method

.method public static final regexContains(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p0, "stringExpression"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "pattern"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->regexContains(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    .line 2152
    return-object v0
.end method

.method public static final regexContains(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .param p1, "pattern"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->regexContains(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    .line 2169
    return-object v0
.end method

.method public static final regexContains(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .param p1, "pattern"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->regexContains(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    .line 2186
    return-object v0
.end method

.method public static final regexFind(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "stringExpression"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "pattern"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->regexFind(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 2206
    return-object v0
.end method

.method public static final regexFind(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "stringExpression"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "pattern"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->regexFind(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 2226
    return-object v0
.end method

.method public static final regexFind(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .param p1, "pattern"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->regexFind(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 2246
    return-object v0
.end method

.method public static final regexFind(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .param p1, "pattern"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->regexFind(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 2266
    return-object v0
.end method

.method public static final regexFindAll(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "stringExpression"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "pattern"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->regexFindAll(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 2286
    return-object v0
.end method

.method public static final regexFindAll(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "stringExpression"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "pattern"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->regexFindAll(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 2306
    return-object v0
.end method

.method public static final regexFindAll(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .param p1, "pattern"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->regexFindAll(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 2326
    return-object v0
.end method

.method public static final regexFindAll(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .param p1, "pattern"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->regexFindAll(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 2346
    return-object v0
.end method

.method public static final regexMatch(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p0, "stringExpression"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "pattern"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->regexMatch(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    .line 2362
    return-object v0
.end method

.method public static final regexMatch(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p0, "stringExpression"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "pattern"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->regexMatch(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    .line 2378
    return-object v0
.end method

.method public static final regexMatch(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .param p1, "pattern"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->regexMatch(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    .line 2394
    return-object v0
.end method

.method public static final regexMatch(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .param p1, "pattern"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->regexMatch(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    .line 2410
    return-object v0
.end method

.method public static final reverse(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "stringExpression"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->reverse(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 2493
    return-object v0
.end method

.method public static final reverse(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->reverse(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 2508
    return-object v0
.end method

.method public static final round(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "numericExpr"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->round(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 822
    return-object v0
.end method

.method public static final round(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "numericField"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->round(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 839
    return-object v0
.end method

.method public static final roundToPrecision(Lcom/google/firebase/firestore/pipeline/Expression;I)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "numericExpr"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "decimalPlace"    # I
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->roundToPrecision(Lcom/google/firebase/firestore/pipeline/Expression;I)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 857
    return-object v0
.end method

.method public static final roundToPrecision(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "numericExpr"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "decimalPlace"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->roundToPrecision(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 894
    return-object v0
.end method

.method public static final roundToPrecision(Ljava/lang/String;I)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "numericField"    # Ljava/lang/String;
    .param p1, "decimalPlace"    # I
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->roundToPrecision(Ljava/lang/String;I)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 875
    return-object v0
.end method

.method public static final roundToPrecision(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "numericField"    # Ljava/lang/String;
    .param p1, "decimalPlace"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->roundToPrecision(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 913
    return-object v0
.end method

.method public static final split(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/Blob;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "value"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "delimiter"    # Lcom/google/firebase/firestore/Blob;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->split(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/Blob;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 1943
    return-object v0
.end method

.method public static final split(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "value"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "delimiter"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->split(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 1911
    return-object v0
.end method

.method public static final split(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "value"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "delimiter"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->split(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 1927
    return-object v0
.end method

.method public static final split(Ljava/lang/String;Lcom/google/firebase/firestore/Blob;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .param p1, "delimiter"    # Lcom/google/firebase/firestore/Blob;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->split(Ljava/lang/String;Lcom/google/firebase/firestore/Blob;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 1991
    return-object v0
.end method

.method public static final split(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .param p1, "delimiter"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->split(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 1959
    return-object v0
.end method

.method public static final split(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .param p1, "delimiter"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->split(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 1975
    return-object v0
.end method

.method public static final sqrt(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "numericExpr"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->sqrt(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 1245
    return-object v0
.end method

.method public static final sqrt(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "numericField"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->sqrt(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 1260
    return-object v0
.end method

.method public static final startsWith(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p0, "stringExpr"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "prefix"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->startsWith(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    .line 2586
    return-object v0
.end method

.method public static final startsWith(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p0, "stringExpr"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->startsWith(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    .line 2602
    return-object v0
.end method

.method public static final startsWith(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .param p1, "prefix"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->startsWith(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    .line 2618
    return-object v0
.end method

.method public static final startsWith(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->startsWith(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    .line 2634
    return-object v0
.end method

.method public static final varargs stringConcat(Lcom/google/firebase/firestore/pipeline/Expression;[Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "firstString"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "otherStrings"    # [Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->stringConcat(Lcom/google/firebase/firestore/pipeline/Expression;[Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 2903
    return-object v0
.end method

.method public static final varargs stringConcat(Lcom/google/firebase/firestore/pipeline/Expression;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "firstString"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "otherStrings"    # [Ljava/lang/Object;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->stringConcat(Lcom/google/firebase/firestore/pipeline/Expression;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 2920
    return-object v0
.end method

.method public static final varargs stringConcat(Ljava/lang/String;[Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .param p1, "otherStrings"    # [Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->stringConcat(Ljava/lang/String;[Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 2936
    return-object v0
.end method

.method public static final varargs stringConcat(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .param p1, "otherStrings"    # [Ljava/lang/Object;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->stringConcat(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 2953
    return-object v0
.end method

.method public static final stringContains(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p0, "stringExpression"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "substring"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->stringContains(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    .line 2524
    return-object v0
.end method

.method public static final stringContains(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p0, "stringExpression"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "substring"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->stringContains(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    .line 2540
    return-object v0
.end method

.method public static final stringContains(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .param p1, "substring"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->stringContains(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    .line 2556
    return-object v0
.end method

.method public static final stringContains(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .param p1, "substring"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->stringContains(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    .line 2572
    return-object v0
.end method

.method public static final stringReverse(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "str"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->stringReverse(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 2713
    return-object v0
.end method

.method public static final stringReverse(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->stringReverse(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 2728
    return-object v0
.end method

.method public static final substring(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "stringExpression"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "index"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p2, "length"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->substring(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 2745
    return-object v0
.end method

.method public static final substring(Ljava/lang/String;II)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .param p1, "index"    # I
    .param p2, "length"    # I
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->substring(Ljava/lang/String;II)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 2762
    return-object v0
.end method

.method public static final subtract(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "minuend"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "subtrahend"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->subtract(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 1340
    return-object v0
.end method

.method public static final subtract(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Number;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "minuend"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "subtrahend"    # Ljava/lang/Number;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->subtract(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Number;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 1356
    return-object v0
.end method

.method public static final subtract(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "numericFieldName"    # Ljava/lang/String;
    .param p1, "subtrahend"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->subtract(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 1372
    return-object v0
.end method

.method public static final subtract(Ljava/lang/String;Ljava/lang/Number;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "numericFieldName"    # Ljava/lang/String;
    .param p1, "subtrahend"    # Ljava/lang/Number;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->subtract(Ljava/lang/String;Ljava/lang/Number;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 1388
    return-object v0
.end method

.method public static final timestampAdd(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "timestamp"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "unit"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p2, "amount"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampAdd(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 3706
    return-object v0
.end method

.method public static final timestampAdd(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;J)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "timestamp"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "unit"    # Ljava/lang/String;
    .param p2, "amount"    # J
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampAdd(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;J)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 3724
    return-object v0
.end method

.method public static final timestampAdd(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .param p1, "unit"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p2, "amount"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampAdd(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 3742
    return-object v0
.end method

.method public static final timestampAdd(Ljava/lang/String;Ljava/lang/String;J)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .param p1, "unit"    # Ljava/lang/String;
    .param p2, "amount"    # J
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampAdd(Ljava/lang/String;Ljava/lang/String;J)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 3760
    return-object v0
.end method

.method public static final timestampSubtract(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "timestamp"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "unit"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p2, "amount"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampSubtract(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 3778
    return-object v0
.end method

.method public static final timestampSubtract(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;J)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "timestamp"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "unit"    # Ljava/lang/String;
    .param p2, "amount"    # J
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampSubtract(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;J)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 3796
    return-object v0
.end method

.method public static final timestampSubtract(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .param p1, "unit"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p2, "amount"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampSubtract(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 3814
    return-object v0
.end method

.method public static final timestampSubtract(Ljava/lang/String;Ljava/lang/String;J)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .param p1, "unit"    # Ljava/lang/String;
    .param p2, "amount"    # J
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampSubtract(Ljava/lang/String;Ljava/lang/String;J)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 3832
    return-object v0
.end method

.method public static final timestampToUnixMicros(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "expr"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampToUnixMicros(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 3544
    return-object v0
.end method

.method public static final timestampToUnixMicros(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampToUnixMicros(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 3560
    return-object v0
.end method

.method public static final timestampToUnixMillis(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "expr"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampToUnixMillis(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 3608
    return-object v0
.end method

.method public static final timestampToUnixMillis(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampToUnixMillis(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 3624
    return-object v0
.end method

.method public static final timestampToUnixSeconds(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "expr"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampToUnixSeconds(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 3672
    return-object v0
.end method

.method public static final timestampToUnixSeconds(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampToUnixSeconds(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 3688
    return-object v0
.end method

.method public static final timestampTruncate(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "timestamp"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "granularity"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampTruncate(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 3870
    return-object v0
.end method

.method public static final timestampTruncate(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "timestamp"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "granularity"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p2, "timezone"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampTruncate(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 3974
    return-object v0
.end method

.method public static final timestampTruncate(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "timestamp"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "granularity"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampTruncate(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 3851
    return-object v0
.end method

.method public static final timestampTruncate(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "timestamp"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "granularity"    # Ljava/lang/String;
    .param p2, "timezone"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampTruncate(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 3941
    return-object v0
.end method

.method public static final timestampTruncate(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .param p1, "granularity"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampTruncate(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 3908
    return-object v0
.end method

.method public static final timestampTruncate(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .param p1, "granularity"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p2, "timezone"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampTruncate(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 4036
    return-object v0
.end method

.method public static final timestampTruncate(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .param p1, "granularity"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampTruncate(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 3889
    return-object v0
.end method

.method public static final timestampTruncate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .param p1, "granularity"    # Ljava/lang/String;
    .param p2, "timezone"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampTruncate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 4003
    return-object v0
.end method

.method public static final toLower(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "stringExpression"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->toLower(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 2777
    return-object v0
.end method

.method public static final toLower(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->toLower(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 2792
    return-object v0
.end method

.method public static final toUpper(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "stringExpression"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->toUpper(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 2807
    return-object v0
.end method

.method public static final toUpper(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->toUpper(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 2822
    return-object v0
.end method

.method public static final trim(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "stringExpression"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->trim(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 2837
    return-object v0
.end method

.method public static final trim(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->trim(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 2851
    return-object v0
.end method

.method public static final trimValue(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "stringExpression"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p1, "valueToTrim"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->trimValue(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 2870
    return-object v0
.end method

.method public static final trimValue(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .param p1, "valueToTrim"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->trimValue(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 2887
    return-object v0
.end method

.method public static final type(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "expr"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->type(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 1771
    return-object v0
.end method

.method public static final type(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->type(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 1786
    return-object v0
.end method

.method public static final unixMicrosToTimestamp(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "expr"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->unixMicrosToTimestamp(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 3512
    return-object v0
.end method

.method public static final unixMicrosToTimestamp(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->unixMicrosToTimestamp(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 3528
    return-object v0
.end method

.method public static final unixMillisToTimestamp(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "expr"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->unixMillisToTimestamp(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 3576
    return-object v0
.end method

.method public static final unixMillisToTimestamp(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->unixMillisToTimestamp(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 3592
    return-object v0
.end method

.method public static final unixSecondsToTimestamp(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "expr"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->unixSecondsToTimestamp(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 3640
    return-object v0
.end method

.method public static final unixSecondsToTimestamp(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->unixSecondsToTimestamp(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 3656
    return-object v0
.end method

.method public static final vector(Lcom/google/firebase/firestore/VectorValue;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "vector"    # Lcom/google/firebase/firestore/VectorValue;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->vector(Lcom/google/firebase/firestore/VectorValue;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 330
    return-object v0
.end method

.method public static final vector([D)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "vector"    # [D
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->vector([D)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 317
    return-object v0
.end method

.method public static final vectorLength(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "vectorExpression"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->vectorLength(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 3468
    return-object v0
.end method

.method public static final vectorLength(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->vectorLength(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    .line 3483
    return-object v0
.end method

.method public static final varargs xor(Lcom/google/firebase/firestore/pipeline/BooleanExpression;[Lcom/google/firebase/firestore/pipeline/BooleanExpression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p0, "condition"    # Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .param p1, "conditions"    # [Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->xor(Lcom/google/firebase/firestore/pipeline/BooleanExpression;[Lcom/google/firebase/firestore/pipeline/BooleanExpression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    .line 430
    return-object v0
.end method


# virtual methods
.method public final abs()Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 5476
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->abs(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final add(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p1, "second"    # Lcom/google/firebase/firestore/pipeline/Expression;

    const-string v0, "second"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5501
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->add(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final add(Ljava/lang/Number;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p1, "second"    # Ljava/lang/Number;

    const-string v0, "second"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5514
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->add(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Number;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public alias(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/AliasedExpression;
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    const-string v0, "alias"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5440
    new-instance v0, Lcom/google/firebase/firestore/pipeline/AliasedExpression;

    invoke-direct {v0, p1, p0}, Lcom/google/firebase/firestore/pipeline/AliasedExpression;-><init>(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)V

    return-object v0
.end method

.method public final varargs arrayConcat(Lcom/google/firebase/firestore/pipeline/Expression;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 2
    .param p1, "secondArray"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p2, "otherArrays"    # [Ljava/lang/Object;

    const-string v0, "secondArray"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "otherArrays"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6750
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayConcat(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final varargs arrayConcat(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 2
    .param p1, "secondArray"    # Ljava/lang/Object;
    .param p2, "otherArrays"    # [Ljava/lang/Object;

    const-string v0, "secondArray"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "otherArrays"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6765
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayConcat(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final arrayContains(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p1, "element"    # Lcom/google/firebase/firestore/pipeline/Expression;

    const-string v0, "element"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6802
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayContains(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    return-object v0
.end method

.method public final arrayContains(Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;

    const-string v0, "element"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6815
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayContains(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    return-object v0
.end method

.method public final arrayContainsAll(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p1, "arrayExpression"    # Lcom/google/firebase/firestore/pipeline/Expression;

    const-string v0, "arrayExpression"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6843
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayContainsAll(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    return-object v0
.end method

.method public final arrayContainsAll(Ljava/util/List;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p1, "values"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/firebase/firestore/pipeline/BooleanExpression;"
        }
    .end annotation

    const-string v0, "values"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6829
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayContainsAll(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/util/List;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    return-object v0
.end method

.method public final arrayContainsAny(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p1, "arrayExpression"    # Lcom/google/firebase/firestore/pipeline/Expression;

    const-string v0, "arrayExpression"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6872
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayContainsAny(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    return-object v0
.end method

.method public final arrayContainsAny(Ljava/util/List;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p1, "values"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/firebase/firestore/pipeline/BooleanExpression;"
        }
    .end annotation

    const-string v0, "values"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6857
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayContainsAny(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/util/List;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    return-object v0
.end method

.method public final arrayGet(I)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p1, "offset"    # I

    .line 6914
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayGet(Lcom/google/firebase/firestore/pipeline/Expression;I)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final arrayGet(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p1, "offset"    # Lcom/google/firebase/firestore/pipeline/Expression;

    const-string v0, "offset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6899
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayGet(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final arrayLength()Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 6884
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayLength(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final arrayReverse()Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 6777
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayReverse(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final arraySum()Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 6789
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arraySum(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final asBoolean()Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 2

    .line 7224
    nop

    .line 7225
    instance-of v0, p0, Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    goto :goto_0

    .line 7226
    :cond_0
    instance-of v0, p0, Lcom/google/firebase/firestore/pipeline/Expression$Constant;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/firebase/firestore/pipeline/BooleanConstant;

    move-object v1, p0

    check-cast v1, Lcom/google/firebase/firestore/pipeline/Expression$Constant;

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/pipeline/BooleanConstant;-><init>(Lcom/google/firebase/firestore/pipeline/Expression$Constant;)V

    check-cast v0, Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    goto :goto_0

    .line 7227
    :cond_1
    instance-of v0, p0, Lcom/google/firebase/firestore/pipeline/Field;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/google/firebase/firestore/pipeline/BooleanField;

    move-object v1, p0

    check-cast v1, Lcom/google/firebase/firestore/pipeline/Field;

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/pipeline/BooleanField;-><init>(Lcom/google/firebase/firestore/pipeline/Field;)V

    check-cast v0, Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    goto :goto_0

    .line 7228
    :cond_2
    new-instance v0, Lcom/google/firebase/firestore/pipeline/BooleanFunctionExpression;

    const-string v1, "null cannot be cast to non-null type com.google.firebase.firestore.pipeline.FunctionExpression"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    check-cast v1, Lcom/google/firebase/firestore/pipeline/FunctionExpression;

    check-cast v1, Lcom/google/firebase/firestore/pipeline/Expression;

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/pipeline/BooleanFunctionExpression;-><init>(Lcom/google/firebase/firestore/pipeline/Expression;)V

    check-cast v0, Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    .line 7224
    :goto_0
    return-object v0
.end method

.method public final ascending()Lcom/google/firebase/firestore/pipeline/Ordering;
    .locals 1

    .line 6969
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Ordering;->Companion:Lcom/google/firebase/firestore/pipeline/Ordering$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Ordering$Companion;->ascending(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Ordering;

    move-result-object v0

    return-object v0
.end method

.method public final average()Lcom/google/firebase/firestore/pipeline/AggregateFunction;
    .locals 1

    .line 6946
    sget-object v0, Lcom/google/firebase/firestore/pipeline/AggregateFunction;->Companion:Lcom/google/firebase/firestore/pipeline/AggregateFunction$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/AggregateFunction$Companion;->average(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/AggregateFunction;

    move-result-object v0

    return-object v0
.end method

.method public final bitAnd(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p1, "bitsOther"    # Lcom/google/firebase/firestore/pipeline/Expression;

    const-string v0, "bitsOther"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5299
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->bitAnd(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final bitAnd([B)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p1, "bitsOther"    # [B

    const-string v0, "bitsOther"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5312
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->bitAnd(Lcom/google/firebase/firestore/pipeline/Expression;[B)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final bitLeftShift(I)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p1, "number"    # I

    .line 5402
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->bitLeftShift(Lcom/google/firebase/firestore/pipeline/Expression;I)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final bitLeftShift(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p1, "numberExpr"    # Lcom/google/firebase/firestore/pipeline/Expression;

    const-string v0, "numberExpr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5389
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->bitLeftShift(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final bitNot()Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 5376
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->bitNot(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final bitOr(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p1, "bitsOther"    # Lcom/google/firebase/firestore/pipeline/Expression;

    const-string v0, "bitsOther"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5325
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->bitOr(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final bitOr([B)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p1, "bitsOther"    # [B

    const-string v0, "bitsOther"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5338
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->bitOr(Lcom/google/firebase/firestore/pipeline/Expression;[B)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final bitRightShift(I)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p1, "number"    # I

    .line 5428
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->bitRightShift(Lcom/google/firebase/firestore/pipeline/Expression;I)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final bitRightShift(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p1, "numberExpr"    # Lcom/google/firebase/firestore/pipeline/Expression;

    const-string v0, "numberExpr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5415
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->bitRightShift(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final bitXor(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p1, "bitsOther"    # Lcom/google/firebase/firestore/pipeline/Expression;

    const-string v0, "bitsOther"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5351
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->bitXor(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final bitXor([B)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p1, "bitsOther"    # [B

    const-string v0, "bitsOther"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5364
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->bitXor(Lcom/google/firebase/firestore/pipeline/Expression;[B)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final byteLength()Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 5870
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->byteLength(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public abstract canonicalId$com_google_firebase_firebase_firestore()Ljava/lang/String;
.end method

.method public final ceil()Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 5680
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->ceil(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final charLength()Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 5857
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->charLength(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final collectionId()Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 5464
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->collectionId(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final varargs concat(Lcom/google/firebase/firestore/pipeline/Expression;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 2
    .param p1, "second"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p2, "others"    # [Ljava/lang/Object;

    const-string v0, "second"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "others"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6720
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->concat(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final varargs concat(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 2
    .param p1, "second"    # Ljava/lang/Object;
    .param p2, "others"    # [Ljava/lang/Object;

    const-string v0, "second"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "others"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6735
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->concat(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final cosineDistance(Lcom/google/firebase/firestore/VectorValue;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p1, "vector"    # Lcom/google/firebase/firestore/VectorValue;

    const-string v0, "vector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6439
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->cosineDistance(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/VectorValue;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final cosineDistance(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p1, "vector"    # Lcom/google/firebase/firestore/pipeline/Expression;

    const-string v0, "vector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6413
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->cosineDistance(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final cosineDistance([D)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p1, "vector"    # [D

    const-string v0, "vector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6426
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->cosineDistance(Lcom/google/firebase/firestore/pipeline/Expression;[D)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final count()Lcom/google/firebase/firestore/pipeline/AggregateFunction;
    .locals 1

    .line 6922
    sget-object v0, Lcom/google/firebase/firestore/pipeline/AggregateFunction;->Companion:Lcom/google/firebase/firestore/pipeline/AggregateFunction$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/AggregateFunction$Companion;->count(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/AggregateFunction;

    move-result-object v0

    return-object v0
.end method

.method public final countDistinct()Lcom/google/firebase/firestore/pipeline/AggregateFunction;
    .locals 1

    .line 6930
    sget-object v0, Lcom/google/firebase/firestore/pipeline/AggregateFunction;->Companion:Lcom/google/firebase/firestore/pipeline/AggregateFunction$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/AggregateFunction$Companion;->countDistinct(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/AggregateFunction;

    move-result-object v0

    return-object v0
.end method

.method public final descending()Lcom/google/firebase/firestore/pipeline/Ordering;
    .locals 1

    .line 6976
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Ordering;->Companion:Lcom/google/firebase/firestore/pipeline/Ordering$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Ordering$Companion;->descending(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Ordering;

    move-result-object v0

    return-object v0
.end method

.method public final divide(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p1, "divisor"    # Lcom/google/firebase/firestore/pipeline/Expression;

    const-string v0, "divisor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5579
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->divide(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final divide(Ljava/lang/Number;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p1, "divisor"    # Ljava/lang/Number;

    const-string v0, "divisor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5592
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->divide(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Number;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final documentId()Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 5452
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->documentId(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final dotProduct(Lcom/google/firebase/firestore/VectorValue;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p1, "vector"    # Lcom/google/firebase/firestore/VectorValue;

    const-string v0, "vector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6478
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->dotProduct(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/VectorValue;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final dotProduct(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p1, "vector"    # Lcom/google/firebase/firestore/pipeline/Expression;

    const-string v0, "vector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6452
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->dotProduct(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final dotProduct([D)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p1, "vector"    # [D

    const-string v0, "vector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6465
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->dotProduct(Lcom/google/firebase/firestore/pipeline/Expression;[D)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final endsWith(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p1, "suffix"    # Lcom/google/firebase/firestore/pipeline/Expression;

    const-string v0, "suffix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6167
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->endsWith(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    return-object v0
.end method

.method public final endsWith(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p1, "suffix"    # Ljava/lang/String;

    const-string v0, "suffix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6180
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->endsWith(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    return-object v0
.end method

.method public final equal(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p1, "other"    # Lcom/google/firebase/firestore/pipeline/Expression;

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6989
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->equal(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    return-object v0
.end method

.method public final equal(Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7002
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->equal(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    return-object v0
.end method

.method public final equalAny(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p1, "arrayExpression"    # Lcom/google/firebase/firestore/pipeline/Expression;

    const-string v0, "arrayExpression"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5789
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->equalAny(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    return-object v0
.end method

.method public final equalAny(Ljava/util/List;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p1, "values"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/firebase/firestore/pipeline/BooleanExpression;"
        }
    .end annotation

    const-string v0, "values"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5773
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->equalAny(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/util/List;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    return-object v0
.end method

.method public final euclideanDistance(Lcom/google/firebase/firestore/VectorValue;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p1, "vector"    # Lcom/google/firebase/firestore/VectorValue;

    const-string v0, "vector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6517
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->euclideanDistance(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/VectorValue;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final euclideanDistance(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p1, "vector"    # Lcom/google/firebase/firestore/pipeline/Expression;

    const-string v0, "vector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6491
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->euclideanDistance(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final euclideanDistance([D)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p1, "vector"    # [D

    const-string v0, "vector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6504
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->euclideanDistance(Lcom/google/firebase/firestore/pipeline/Expression;[D)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public abstract evaluateFunction$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/pipeline/evaluation/EvaluationContext;)Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluationContext;",
            ")",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;"
        }
    .end annotation
.end method

.method public final exists()Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1

    .line 7143
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->exists(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    return-object v0
.end method

.method public final exp()Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 5488
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->exp(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final floor()Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 5693
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->floor(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final greaterThan(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p1, "other"    # Lcom/google/firebase/firestore/pipeline/Expression;

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7041
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->greaterThan(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    return-object v0
.end method

.method public final greaterThan(Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7054
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->greaterThan(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    return-object v0
.end method

.method public final greaterThanOrEqual(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p1, "other"    # Lcom/google/firebase/firestore/pipeline/Expression;

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7069
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->greaterThanOrEqual(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    return-object v0
.end method

.method public final greaterThanOrEqual(Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7082
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->greaterThanOrEqual(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    return-object v0
.end method

.method public final ifAbsent(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p1, "elseExpr"    # Lcom/google/firebase/firestore/pipeline/Expression;

    const-string v0, "elseExpr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7189
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->ifAbsent(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final ifAbsent(Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p1, "elseValue"    # Ljava/lang/Object;

    const-string v0, "elseValue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7204
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->ifAbsent(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final ifError(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p1, "catchExpr"    # Lcom/google/firebase/firestore/pipeline/Expression;

    const-string v0, "catchExpr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7159
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->ifError(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final ifError(Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p1, "catchValue"    # Ljava/lang/Object;

    const-string v0, "catchValue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7173
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->ifError(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final isAbsent()Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1

    .line 5832
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->isAbsent(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    return-object v0
.end method

.method public final isError()Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1

    .line 7216
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->isError(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    return-object v0
.end method

.method public final join(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p1, "delimiterExpression"    # Lcom/google/firebase/firestore/pipeline/Expression;

    const-string v0, "delimiterExpression"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5961
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->join(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final join(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p1, "delimiter"    # Ljava/lang/String;

    const-string v0, "delimiter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5948
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->join(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final length()Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 5845
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->length(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final lessThan(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p1, "other"    # Lcom/google/firebase/firestore/pipeline/Expression;

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7095
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->lessThan(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    return-object v0
.end method

.method public final lessThan(Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7108
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->lessThan(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    return-object v0
.end method

.method public final lessThanOrEqual(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p1, "other"    # Lcom/google/firebase/firestore/pipeline/Expression;

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7122
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->lessThanOrEqual(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    return-object v0
.end method

.method public final lessThanOrEqual(Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7135
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->lessThanOrEqual(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    return-object v0
.end method

.method public final like(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p1, "pattern"    # Lcom/google/firebase/firestore/pipeline/Expression;

    const-string v0, "pattern"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5883
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->like(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    return-object v0
.end method

.method public final like(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    const-string v0, "pattern"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5974
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->like(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    return-object v0
.end method

.method public final ln()Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 5747
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->ln(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final log10()Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 5759
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->log10(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final varargs logicalMaximum([Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 2
    .param p1, "others"    # [Lcom/google/firebase/firestore/pipeline/Expression;

    const-string v0, "others"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6045
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->logicalMaximum(Lcom/google/firebase/firestore/pipeline/Expression;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final varargs logicalMaximum([Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 2
    .param p1, "others"    # [Ljava/lang/Object;

    const-string v0, "others"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6059
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->logicalMaximum(Lcom/google/firebase/firestore/pipeline/Expression;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final varargs logicalMinimum([Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 2
    .param p1, "others"    # [Lcom/google/firebase/firestore/pipeline/Expression;

    const-string v0, "others"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6074
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->logicalMinimum(Lcom/google/firebase/firestore/pipeline/Expression;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final varargs logicalMinimum([Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 2
    .param p1, "others"    # [Ljava/lang/Object;

    const-string v0, "others"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6088
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->logicalMinimum(Lcom/google/firebase/firestore/pipeline/Expression;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final mapGet(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p1, "keyExpression"    # Lcom/google/firebase/firestore/pipeline/Expression;

    const-string v0, "keyExpression"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6337
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->mapGet(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final mapGet(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6350
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->mapGet(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final varargs mapMerge(Lcom/google/firebase/firestore/pipeline/Expression;[Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 2
    .param p1, "mapExpr"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p2, "otherMaps"    # [Lcom/google/firebase/firestore/pipeline/Expression;

    const-string v0, "mapExpr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "otherMaps"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6374
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/firebase/firestore/pipeline/Expression;

    invoke-virtual {v0, p0, p1, v1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->mapMerge(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;[Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final mapRemove(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p1, "keyExpression"    # Lcom/google/firebase/firestore/pipeline/Expression;

    const-string v0, "keyExpression"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6387
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->mapRemove(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final mapRemove(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6400
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->mapRemove(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final maximum()Lcom/google/firebase/firestore/pipeline/AggregateFunction;
    .locals 1

    .line 6962
    sget-object v0, Lcom/google/firebase/firestore/pipeline/AggregateFunction;->Companion:Lcom/google/firebase/firestore/pipeline/AggregateFunction$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/AggregateFunction$Companion;->maximum(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/AggregateFunction;

    move-result-object v0

    return-object v0
.end method

.method public final minimum()Lcom/google/firebase/firestore/pipeline/AggregateFunction;
    .locals 1

    .line 6954
    sget-object v0, Lcom/google/firebase/firestore/pipeline/AggregateFunction;->Companion:Lcom/google/firebase/firestore/pipeline/AggregateFunction$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/AggregateFunction$Companion;->minimum(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/AggregateFunction;

    move-result-object v0

    return-object v0
.end method

.method public final mod(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p1, "divisor"    # Lcom/google/firebase/firestore/pipeline/Expression;

    const-string v0, "divisor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5606
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->mod(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final mod(Ljava/lang/Number;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p1, "divisor"    # Ljava/lang/Number;

    const-string v0, "divisor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5620
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->mod(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Number;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final multiply(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p1, "second"    # Lcom/google/firebase/firestore/pipeline/Expression;

    const-string v0, "second"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5553
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->multiply(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final multiply(Ljava/lang/Number;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p1, "second"    # Ljava/lang/Number;

    const-string v0, "second"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5566
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->multiply(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Number;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final notEqual(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p1, "other"    # Lcom/google/firebase/firestore/pipeline/Expression;

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7015
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->notEqual(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    return-object v0
.end method

.method public final notEqual(Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7028
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->notEqual(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    return-object v0
.end method

.method public final notEqualAny(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p1, "arrayExpression"    # Lcom/google/firebase/firestore/pipeline/Expression;

    const-string v0, "arrayExpression"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5819
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->notEqualAny(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    return-object v0
.end method

.method public final notEqualAny(Ljava/util/List;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p1, "values"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/firebase/firestore/pipeline/BooleanExpression;"
        }
    .end annotation

    const-string v0, "values"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5803
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->notEqualAny(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/util/List;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    return-object v0
.end method

.method public final pow(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p1, "exponent"    # Lcom/google/firebase/firestore/pipeline/Expression;

    const-string v0, "exponent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5723
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->pow(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final pow(Ljava/lang/Number;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p1, "exponent"    # Ljava/lang/Number;

    const-string v0, "exponent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5708
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->pow(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Number;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final regexContains(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p1, "pattern"    # Lcom/google/firebase/firestore/pipeline/Expression;

    const-string v0, "pattern"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5988
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->regexContains(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    return-object v0
.end method

.method public final regexContains(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    const-string v0, "pattern"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6002
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->regexContains(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    return-object v0
.end method

.method public final regexMatch(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p1, "pattern"    # Lcom/google/firebase/firestore/pipeline/Expression;

    const-string v0, "pattern"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6016
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->regexMatch(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    return-object v0
.end method

.method public final regexMatch(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    const-string v0, "pattern"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6030
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->regexMatch(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    return-object v0
.end method

.method public final reverse()Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 6100
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->reverse(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final round()Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 5634
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->round(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final roundToPrecision(I)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p1, "decimalPlace"    # I

    .line 5650
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->roundToPrecision(Lcom/google/firebase/firestore/pipeline/Expression;I)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final roundToPrecision(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p1, "decimalPlace"    # Lcom/google/firebase/firestore/pipeline/Expression;

    const-string v0, "decimalPlace"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5667
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->roundToPrecision(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final split(Lcom/google/firebase/firestore/Blob;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p1, "delimiter"    # Lcom/google/firebase/firestore/Blob;

    const-string v0, "delimiter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5935
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->split(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/Blob;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final split(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p1, "delimiter"    # Lcom/google/firebase/firestore/pipeline/Expression;

    const-string v0, "delimiter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5909
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->split(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final split(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p1, "delimiter"    # Ljava/lang/String;

    const-string v0, "delimiter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5922
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->split(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final sqrt()Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 5735
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->sqrt(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final startsWith(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p1, "prefix"    # Lcom/google/firebase/firestore/pipeline/Expression;

    const-string v0, "prefix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6141
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->startsWith(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    return-object v0
.end method

.method public final startsWith(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;

    const-string v0, "prefix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6154
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->startsWith(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    return-object v0
.end method

.method public final varargs stringConcat([Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 2
    .param p1, "stringExpressions"    # [Lcom/google/firebase/firestore/pipeline/Expression;

    const-string v0, "stringExpressions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6298
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/firebase/firestore/pipeline/Expression;

    invoke-virtual {v0, p0, v1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->stringConcat(Lcom/google/firebase/firestore/pipeline/Expression;[Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final varargs stringConcat([Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 2
    .param p1, "strings"    # [Ljava/lang/Object;

    const-string v0, "strings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6324
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->stringConcat(Lcom/google/firebase/firestore/pipeline/Expression;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final varargs stringConcat([Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 2
    .param p1, "strings"    # [Ljava/lang/String;

    const-string v0, "strings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6311
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->stringConcat(Lcom/google/firebase/firestore/pipeline/Expression;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final stringContains(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p1, "substring"    # Lcom/google/firebase/firestore/pipeline/Expression;

    const-string v0, "substring"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6114
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->stringContains(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    return-object v0
.end method

.method public final stringContains(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p1, "substring"    # Ljava/lang/String;

    const-string v0, "substring"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6128
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->stringContains(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    return-object v0
.end method

.method public final stringReverse()Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 6191
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->stringReverse(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final substring(II)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 4
    .param p1, "start"    # I
    .param p2, "length"    # I

    .line 6221
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    sget-object v1, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->constant(Ljava/lang/Number;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v1

    sget-object v2, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->constant(Ljava/lang/Number;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->substring(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final substring(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p1, "start"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p2, "length"    # Lcom/google/firebase/firestore/pipeline/Expression;

    const-string v0, "start"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "length"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6206
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->substring(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final subtract(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p1, "subtrahend"    # Lcom/google/firebase/firestore/pipeline/Expression;

    const-string v0, "subtrahend"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5527
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->subtract(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final subtract(Ljava/lang/Number;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p1, "subtrahend"    # Ljava/lang/Number;

    const-string v0, "subtrahend"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5540
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->subtract(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Number;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final sum()Lcom/google/firebase/firestore/pipeline/AggregateFunction;
    .locals 1

    .line 6938
    sget-object v0, Lcom/google/firebase/firestore/pipeline/AggregateFunction;->Companion:Lcom/google/firebase/firestore/pipeline/AggregateFunction$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/AggregateFunction$Companion;->sum(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/AggregateFunction;

    move-result-object v0

    return-object v0
.end method

.method public final timestampAdd(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p1, "unit"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p2, "amount"    # Lcom/google/firebase/firestore/pipeline/Expression;

    const-string v0, "unit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amount"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6623
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampAdd(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final timestampAdd(Ljava/lang/String;J)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p1, "unit"    # Ljava/lang/String;
    .param p2, "amount"    # J

    const-string v0, "unit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6639
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampAdd(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;J)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final timestampSubtract(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p1, "unit"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p2, "amount"    # Lcom/google/firebase/firestore/pipeline/Expression;

    const-string v0, "unit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amount"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6689
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampSubtract(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final timestampSubtract(Ljava/lang/String;J)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p1, "unit"    # Ljava/lang/String;
    .param p2, "amount"    # J

    const-string v0, "unit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6705
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampSubtract(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;J)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final timestampToUnixMicros()Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 6555
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampToUnixMicros(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final timestampToUnixMillis()Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 6581
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampToUnixMillis(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final timestampToUnixSeconds()Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 6607
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampToUnixSeconds(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final timestampTruncate(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p1, "granularity"    # Lcom/google/firebase/firestore/pipeline/Expression;

    const-string v0, "granularity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6673
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampTruncate(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final timestampTruncate(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p1, "granularity"    # Ljava/lang/String;

    const-string v0, "granularity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6656
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampTruncate(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final toLower()Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 6233
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->toLower(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public abstract toProto$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/UserDataReader;)Lcom/google/firestore/v1/Value;
.end method

.method public final toUpper()Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 6245
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->toUpper(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final trim()Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 6257
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->trim(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final trimValue(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .param p1, "valueToTrim"    # Lcom/google/firebase/firestore/pipeline/Expression;

    const-string v0, "valueToTrim"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6284
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->trimValue(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final trimValue(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 2
    .param p1, "valueToTrim"    # Ljava/lang/String;

    const-string v0, "valueToTrim"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6270
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    sget-object v1, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v1, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->constant(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->trimValue(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final type()Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 5896
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->type(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final unixMicrosToTimestamp()Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 6542
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->unixMicrosToTimestamp(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final unixMillisToTimestamp()Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 6568
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->unixMillisToTimestamp(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final unixSecondsToTimestamp()Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 6594
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->unixSecondsToTimestamp(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final vectorLength()Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 6529
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->vectorLength(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method
