package com.google.firebase.firestore.pipeline.evaluation;

import androidx.autofill.HintConstants;
import androidx.exifinterface.media.ExifInterface;
import com.google.firebase.firestore.model.MutableDocument;
import com.google.firebase.firestore.model.Values;
import com.google.firebase.firestore.pipeline.evaluation.UtilsKt;
import com.google.firebase.firestore.util.Assert;
import com.google.firestore.v1.Value;
import com.google.protobuf.ByteString;
import com.google.protobuf.Timestamp;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.NotImplementedError;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* JADX INFO: compiled from: Utils.kt */
/* JADX INFO: loaded from: classes22.dex */
@Metadata(d1 = {"\u0000\u008a\u0001\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0013\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0018\n\u0002\b\u0005\n\u0002\u0010\u0006\n\u0002\b\b\u001a\u001a\u0010\u0000\u001a\u00020\u00012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0003H\u0080\bø\u0001\u0000\u001a\u0085\u0001\u0010\u0004\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u00010\u0005j\u0002`\u000b0\u0006¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\f\u0012#\u0012!\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u00010\u0005j\u0002`\u000b0\u0005j\u0002`\r2\u0014\b\u0004\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00010\u0005H\u0080\bø\u0001\u0000\u001a\u008a\u0001\u0010\u0004\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u00010\u0005j\u0002`\u000b0\u0006¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\f\u0012#\u0012!\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u00010\u0005j\u0002`\u000b0\u0005j\u0002`\r2\u0014\b\u0004\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00010\u0005H\u0081\bø\u0001\u0000¢\u0006\u0002\b\u0010\u001a\u008a\u0001\u0010\u0004\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u00010\u0005j\u0002`\u000b0\u0006¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\f\u0012#\u0012!\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u00010\u0005j\u0002`\u000b0\u0005j\u0002`\r2\u0014\b\u0004\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00010\u0005H\u0081\bø\u0001\u0000¢\u0006\u0002\b\u0012\u001a\u008a\u0001\u0010\u0013\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u00010\u0005j\u0002`\u000b0\u0006¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\f\u0012#\u0012!\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u00010\u0005j\u0002`\u000b0\u0005j\u0002`\r2\u0014\b\u0004\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00140\u0005H\u0081\bø\u0001\u0000¢\u0006\u0002\b\u0015\u001a\u008a\u0001\u0010\u0004\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u00010\u0005j\u0002`\u000b0\u0006¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\f\u0012#\u0012!\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u00010\u0005j\u0002`\u000b0\u0005j\u0002`\r2\u0014\b\u0004\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00010\u0005H\u0081\bø\u0001\u0000¢\u0006\u0002\b\u0016\u001a\u008a\u0001\u0010\u0004\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u00010\u0005j\u0002`\u000b0\u0006¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\f\u0012#\u0012!\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u00010\u0005j\u0002`\u000b0\u0005j\u0002`\r2\u0014\b\u0004\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00010\u0005H\u0081\bø\u0001\u0000¢\u0006\u0002\b\u0018\u001a\u008a\u0001\u0010\u0004\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u00010\u0005j\u0002`\u000b0\u0006¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\f\u0012#\u0012!\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u00010\u0005j\u0002`\u000b0\u0005j\u0002`\r2\u0014\b\u0004\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u00010\u0005H\u0081\bø\u0001\u0000¢\u0006\u0002\b\u001a\u001a\u0090\u0001\u0010\u0004\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u00010\u0005j\u0002`\u000b0\u0006¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\f\u0012#\u0012!\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u00010\u0005j\u0002`\u000b0\u0005j\u0002`\r2\u001a\b\u0004\u0010\u000e\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000f0\u0006\u0012\u0004\u0012\u00020\u00010\u0005H\u0081\bø\u0001\u0000¢\u0006\u0002\b\u001b\u001a\u009b\u0001\u0010\u0004\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u00010\u0005j\u0002`\u000b0\u0006¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\f\u0012#\u0012!\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u00010\u0005j\u0002`\u000b0\u0005j\u0002`\r2\u0014\b\u0004\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u00010\u00052\u0014\b\u0004\u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00010\u0005H\u0080\bø\u0001\u0000\u001a©\u0001\u0010\u001f\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u00010\u0005j\u0002`\u000b0\u0006¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\f\u0012#\u0012!\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u00010\u0005j\u0002`\u000b0\u0005j\u0002`\r\"\u0004\b\u0000\u0010 2\u0006\u0010!\u001a\u00020\"2\u0014\b\u0004\u0010#\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u0002H 0\u00052\u0014\b\u0004\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u0002H \u0012\u0004\u0012\u00020\u00010\u0005H\u0080\bø\u0001\u0000\u001aã\u0001\u0010\u001f\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u00010\u0005j\u0002`\u000b0\u0006¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\f\u0012#\u0012!\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u00010\u0005j\u0002`\u000b0\u0005j\u0002`\r\"\u0004\b\u0000\u0010$\"\u0004\b\u0001\u0010%2\u0006\u0010&\u001a\u00020\"2\u0014\b\u0004\u0010'\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u0002H$0\u00052\u0014\b\u0004\u0010(\u001a\u000e\u0012\u0004\u0012\u0002H$\u0012\u0004\u0012\u00020\u00010\u00052\u0006\u0010)\u001a\u00020\"2\u0014\b\u0004\u0010*\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u0002H%0\u00052\u0014\b\u0004\u0010+\u001a\u000e\u0012\u0004\u0012\u0002H%\u0012\u0004\u0012\u00020\u00010\u0005H\u0080\bø\u0001\u0000\u001a\u0094\u0001\u0010,\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u00010\u0005j\u0002`\u000b0\u0006¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\f\u0012#\u0012!\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u00010\u0005j\u0002`\u000b0\u0005j\u0002`\r2\u001e\b\u0004\u0010\u000e\u001a\u0018\u0012\u0006\u0012\u0004\u0018\u00010\u000f\u0012\u0006\u0012\u0004\u0018\u00010\u000f\u0012\u0004\u0012\u00020\u00010-H\u0081\bø\u0001\u0000¢\u0006\u0002\b.\u001a\u0098\u0001\u0010,\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u00010\u0005j\u0002`\u000b0\u0006¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\f\u0012#\u0012!\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u00010\u0005j\u0002`\u000b0\u0005j\u0002`\r2\"\b\u0004\u0010\u000e\u001a\u001c\u0012\u0006\u0012\u0004\u0018\u00010\u000f\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000f0\u0006\u0012\u0004\u0012\u00020\u00010-H\u0081\bø\u0001\u0000¢\u0006\u0002\b/\u001a\u0098\u0001\u0010,\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u00010\u0005j\u0002`\u000b0\u0006¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\f\u0012#\u0012!\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u00010\u0005j\u0002`\u000b0\u0005j\u0002`\r2\"\b\u0004\u0010\u000e\u001a\u001c\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000f0\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u000f\u0012\u0004\u0012\u00020\u00010-H\u0081\bø\u0001\u0000¢\u0006\u0002\b0\u001a\u0090\u0001\u0010,\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u00010\u0005j\u0002`\u000b0\u0006¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\f\u0012#\u0012!\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u00010\u0005j\u0002`\u000b0\u0005j\u0002`\r2\u001a\b\u0004\u0010\u000e\u001a\u0014\u0012\u0004\u0012\u000201\u0012\u0004\u0012\u000201\u0012\u0004\u0012\u00020\u00010-H\u0081\bø\u0001\u0000¢\u0006\u0002\b2\u001a\u0090\u0001\u0010,\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u00010\u0005j\u0002`\u000b0\u0006¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\f\u0012#\u0012!\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u00010\u0005j\u0002`\u000b0\u0005j\u0002`\r2\u001a\b\u0004\u0010\u000e\u001a\u0014\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00010-H\u0081\bø\u0001\u0000¢\u0006\u0002\b3\u001a6\u00104\u001a\u0010\u0012\u0004\u0012\u00020\u0014\u0012\u0006\u0012\u0004\u0018\u0001H 0\u0005\"\u0004\b\u0000\u0010 2\u0014\b\u0004\u00105\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u0002H 0\u0005H\u0080\bø\u0001\u0000\u001a\u009c\u0001\u0010,\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u00010\u0005j\u0002`\u000b0\u0006¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\f\u0012#\u0012!\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u00010\u0005j\u0002`\u000b0\u0005j\u0002`\r2&\b\u0004\u0010\u000e\u001a \u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000f0\u0006\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000f0\u0006\u0012\u0004\u0012\u00020\u00010-H\u0081\bø\u0001\u0000¢\u0006\u0002\b6\u001aÓ\u0001\u00107\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u00010\u0005j\u0002`\u000b0\u0006¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\f\u0012#\u0012!\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u00010\u0005j\u0002`\u000b0\u0005j\u0002`\r\"\u0004\b\u0000\u0010$\"\u0004\b\u0001\u0010%2\u0006\u0010&\u001a\u00020\"2\u0014\b\u0004\u0010'\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u0002H$0\u00052\u0006\u0010)\u001a\u00020\"2\u0014\b\u0004\u0010*\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u0002H%0\u00052\u001a\b\u0004\u0010\u000e\u001a\u0014\u0012\u0004\u0012\u0002H$\u0012\u0004\u0012\u0002H%\u0012\u0004\u0012\u00020\u00010-H\u0080\bø\u0001\u0000\u001aÙ\u0001\u00108\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u00010\u0005j\u0002`\u000b0\u0006¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\f\u0012#\u0012!\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u00010\u0005j\u0002`\u000b0\u0005j\u0002`\r\"\u0004\b\u0000\u0010$\"\u0004\b\u0001\u0010%2\u0006\u0010&\u001a\u00020\"2\u0014\b\u0004\u0010'\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u0002H$0\u00052\u0006\u0010)\u001a\u00020\"2\u0014\b\u0004\u0010*\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u0002H%0\u00052 \b\u0004\u00109\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u0002H$\u0012\u0004\u0012\u0002H%\u0012\u0004\u0012\u00020\u00010-0\u0003H\u0080\bø\u0001\u0000\u001a£\u0001\u0010:\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u00010\u0005j\u0002`\u000b0\u0006¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\f\u0012#\u0012!\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u00010\u0005j\u0002`\u000b0\u0005j\u0002`\r22\b\u0004\u0010\u000e\u001a,\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u0003\u0012\u0004\u0012\u00020\u00010;H\u0080\bø\u0001\u0000\u001a\u0091\u0001\u0010<\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u00010\u0005j\u0002`\u000b0\u0006¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\f\u0012#\u0012!\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u00010\u0005j\u0002`\u000b0\u0005j\u0002`\r2 \b\u0004\u0010\u000e\u001a\u001a\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00010;H\u0080\bø\u0001\u0000\u001a\u0097\u0001\u0010=\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u00010\u0005j\u0002`\u000b0\u0006¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\f\u0012#\u0012!\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u00010\u0005j\u0002`\u000b0\u0005j\u0002`\r2&\b\u0004\u0010\u000e\u001a \u0012\u0006\u0012\u0004\u0018\u00010\u000f\u0012\u0006\u0012\u0004\u0018\u00010\u000f\u0012\u0006\u0012\u0004\u0018\u00010\u000f\u0012\u0004\u0012\u00020\u00010;H\u0080\bø\u0001\u0000\u001a\u008b\u0001\u0010>\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u00010\u0005j\u0002`\u000b0\u0006¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\f\u0012#\u0012!\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u00010\u0005j\u0002`\u000b0\u0005j\u0002`\r2\u001a\b\u0004\u0010\u000e\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u0006\u0012\u0004\u0012\u00020\u00010\u0005H\u0080\bø\u0001\u0000\u001a\u008b\u0001\u0010?\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u00010\u0005j\u0002`\u000b0\u0006¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\f\u0012#\u0012!\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u00010\u0005j\u0002`\u000b0\u0005j\u0002`\r2\u001a\b\u0004\u0010\u000e\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000f0\u0006\u0012\u0004\u0012\u00020\u00010\u0005H\u0081\bø\u0001\u0000\u001a\u0090\u0001\u0010@\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u00010\u0005j\u0002`\u000b0\u0006¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\f\u0012#\u0012!\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u00010\u0005j\u0002`\u000b0\u0005j\u0002`\r2\u001a\b\u0004\u0010\u000e\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00140\u0006\u0012\u0004\u0012\u00020\u00010\u0005H\u0081\bø\u0001\u0000¢\u0006\u0002\bA\u001a¯\u0001\u0010B\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u00010\u0005j\u0002`\u000b0\u0006¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\f\u0012#\u0012!\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u00010\u0005j\u0002`\u000b0\u0005j\u0002`\r\"\u0004\b\u0000\u0010 2\u0006\u0010!\u001a\u00020\"2\u0014\b\u0004\u0010#\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u0002H 0\u00052\u001a\b\u0004\u0010\u000e\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u0002H 0\u0006\u0012\u0004\u0012\u00020\u00010\u0005H\u0080\bø\u0001\u0000\u001a\u008a\u0001\u0010@\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u00010\u0005j\u0002`\u000b0\u0006¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\f\u0012#\u0012!\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u00010\u0005j\u0002`\u000b0\u0005j\u0002`\r2\u0014\b\u0004\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020C\u0012\u0004\u0012\u00020\u00010\u0005H\u0081\bø\u0001\u0000¢\u0006\u0002\bD\u001a\u008f\u0001\u0010E\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u00010\u0005j\u0002`\u000b0\u0006¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\f\u0012#\u0012!\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u00010\u0005j\u0002`\u000b0\u0005j\u0002`\r2\u001e\b\u0004\u0010\u0002\u001a\u0018\u0012\u0006\u0012\u0004\u0018\u00010\u000f\u0012\u0006\u0012\u0004\u0018\u00010\u000f\u0012\u0004\u0012\u00020\u00110-H\u0080\bø\u0001\u0000\u001a\u009b\u0001\u0010F\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u00010\u0005j\u0002`\u000b0\u0006¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\f\u0012#\u0012!\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u00010\u0005j\u0002`\u000b0\u0005j\u0002`\r2\u0014\b\u0004\u0010G\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00170\u00052\u0014\b\u0004\u0010H\u001a\u000e\u0012\u0004\u0012\u00020I\u0012\u0004\u0012\u00020I0\u0005H\u0080\bø\u0001\u0000\u001a§\u0001\u0010F\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u00010\u0005j\u0002`\u000b0\u0006¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\f\u0012#\u0012!\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u00010\u0005j\u0002`\u000b0\u0005j\u0002`\r2\u001a\b\u0004\u0010G\u001a\u0014\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00170-2\u001a\b\u0004\u0010H\u001a\u0014\u0012\u0004\u0012\u00020I\u0012\u0004\u0012\u00020I\u0012\u0004\u0012\u00020I0-H\u0080\bø\u0001\u0000\u001a\u0085\u0001\u0010J\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u00010\u0005j\u0002`\u000b0\u0006¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\f\u0012#\u0012!\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u00010\u0005j\u0002`\u000b0\u0005j\u0002`\r2\u0014\b\u0004\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020I\u0012\u0004\u0012\u00020\u00010\u0005H\u0080\bø\u0001\u0000\u001a\u009b\u0001\u0010J\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u00010\u0005j\u0002`\u000b0\u0006¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\f\u0012#\u0012!\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u00010\u0005j\u0002`\u000b0\u0005j\u0002`\r2\u0014\b\u0004\u0010G\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00010\u00052\u0014\b\u0004\u0010H\u001a\u000e\u0012\u0004\u0012\u00020I\u0012\u0004\u0012\u00020\u00010\u0005H\u0080\bø\u0001\u0000\u001a¬\u0001\u0010J\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u00010\u0005j\u0002`\u000b0\u0006¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\f\u0012#\u0012!\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u00010\u0005j\u0002`\u000b0\u0005j\u0002`\r2\u001a\b\u0004\u0010G\u001a\u0014\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00010-2\u001a\b\u0004\u0010H\u001a\u0014\u0012\u0004\u0012\u00020I\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00010-H\u0081\bø\u0001\u0000¢\u0006\u0002\bK\u001a§\u0001\u0010J\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u00010\u0005j\u0002`\u000b0\u0006¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\f\u0012#\u0012!\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u00010\u0005j\u0002`\u000b0\u0005j\u0002`\r2\u001a\b\u0004\u0010G\u001a\u0014\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00010-2\u001a\b\u0004\u0010H\u001a\u0014\u0012\u0004\u0012\u00020I\u0012\u0004\u0012\u00020I\u0012\u0004\u0012\u00020\u00010-H\u0080\bø\u0001\u0000\u001a\u008b\u0001\u0010J\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u00010\u0005j\u0002`\u000b0\u0006¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\f\u0012#\u0012!\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u00010\u0005j\u0002`\u000b0\u0005j\u0002`\r2\u001a\b\u0004\u0010H\u001a\u0014\u0012\u0004\u0012\u00020I\u0012\u0004\u0012\u00020I\u0012\u0004\u0012\u00020\u00010-H\u0080\bø\u0001\u0000\"w\u0010N\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u00010\u0005j\u0002`\u000b0\u0006¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\f\u0012#\u0012!\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u00010\u0005j\u0002`\u000b0\u0005j\u0002`\rX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\bO\u0010P*B\b\u0000\u0010L\"\u001d\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u00010\u00052\u001d\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u00010\u0005*\u008c\u0001\b\u0000\u0010M\"#\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u0002`\u000b0\u0006¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\f\u0012\u0004\u0012\u0002`\u000b0\u00052a\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u00010\u0005j\u0002`\u000b0\u0006¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\f\u0012#\u0012!\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u00010\u0005j\u0002`\u000b0\u0005\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006Q"}, d2 = {"catch", "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;", "f", "Lkotlin/Function0;", "unaryFunction", "Lkotlin/Function1;", "", "Lcom/google/firebase/firestore/model/MutableDocument;", "Lkotlin/ParameterName;", HintConstants.AUTOFILL_HINT_NAME, "input", "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateDocument;", "params", "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateFunction;", "function", "Lcom/google/firestore/v1/Value;", "unaryValueFunction", "", "unaryBooleanFunction", "unaryFunctionPrimitive", "", "unaryStringFunctionPrimitive", "unaryStringFunction", "", "unaryLongFunction", "Lcom/google/protobuf/Timestamp;", "unaryTimestampFunction", "unaryArrayFunction", "byteOp", "Lcom/google/protobuf/ByteString;", "stringOp", "unaryFunctionType", ExifInterface.GPS_DIRECTION_TRUE, "valueTypeCase", "Lcom/google/firestore/v1/Value$ValueTypeCase;", "valueExtractor", "T1", "T2", "valueTypeCase1", "valueExtractor1", "function1", "valueTypeCase2", "valueExtractor2", "function2", "binaryFunction", "Lkotlin/Function2;", "binaryValueValueFunction", "binaryValueArrayFunction", "binaryArrayValueFunction", "", "binaryVectorVectorFunction", "binaryStringStringFunction", "cache", "ifAbsent", "binaryArrayArrayFunction", "binaryFunctionType", "binaryFunctionConstructorType", "functionConstructor", "ternaryLazyFunction", "Lkotlin/Function3;", "ternaryTimestampFunction", "ternaryNullableValueFunction", "variadicResultFunction", "variadicNullableValueFunction", "variadicFunction", "variadicStringFunction", "variadicFunctionType", "", "variadicBooleanFunction", "comparison", "arithmeticPrimitive", "intOp", "doubleOp", "", "arithmetic", "arithmeticNumberLong", "EvaluateDocument", "EvaluateFunction", "notImplemented", "getNotImplemented", "()Lkotlin/jvm/functions/Function1;", "com.google.firebase-firebase-firestore"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class UtilsKt {
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> notImplemented = new Function1() { // from class: com.google.firebase.firestore.pipeline.evaluation.UtilsKt$notImplemented$1
        @Override // kotlin.jvm.functions.Function1
        public final Void invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> list) {
            Intrinsics.checkNotNullParameter(list, "<unused var>");
            throw new NotImplementedError(null, 1, null);
        }
    };

    /* JADX INFO: compiled from: Utils.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 176)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Value.ValueTypeCase.values().length];
            try {
                iArr[Value.ValueTypeCase.NULL_VALUE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                iArr[Value.ValueTypeCase.ARRAY_VALUE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                iArr[Value.ValueTypeCase.TIMESTAMP_VALUE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                iArr[Value.ValueTypeCase.STRING_VALUE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                iArr[Value.ValueTypeCase.INTEGER_VALUE.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                iArr[Value.ValueTypeCase.DOUBLE_VALUE.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: renamed from: catch, reason: not valid java name */
    public static final EvaluateResult m8439catch(Function0<? extends EvaluateResult> f) {
        Intrinsics.checkNotNullParameter(f, "f");
        try {
            return f.invoke();
        } catch (Exception e) {
            return EvaluateResultError.INSTANCE;
        }
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> unaryFunction(final Function1<? super EvaluateResult, ? extends EvaluateResult> function) {
        Intrinsics.checkNotNullParameter(function, "function");
        return (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.UtilsKt.unaryFunction.1
            @Override // kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 1) {
                    throw Assert.fail("Function should have exactly 1 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                final Function1<EvaluateResult, EvaluateResult> function12 = function;
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.UtilsKt.unaryFunction.1.1
                    @Override // kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        Intrinsics.checkNotNullParameter(input, "input");
                        try {
                            return function12.invoke(function1.invoke(input));
                        } catch (Exception e) {
                            return EvaluateResultError.INSTANCE;
                        }
                    }
                };
            }
        };
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> unaryValueFunction(final Function1<? super Value, ? extends EvaluateResult> function) {
        Intrinsics.checkNotNullParameter(function, "function");
        return (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.UtilsKt$unaryFunction$$inlined$unaryFunction$2
            @Override // kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 1) {
                    throw Assert.fail("Function should have exactly 1 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                final Function1 function12 = function;
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.UtilsKt$unaryFunction$$inlined$unaryFunction$2.1
                    @Override // kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        EvaluateResult r;
                        Intrinsics.checkNotNullParameter(input, "input");
                        try {
                            r = (EvaluateResult) function1.invoke(input);
                        } catch (Exception e) {
                            return EvaluateResultError.INSTANCE;
                        }
                        if (r.getIsError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        Value value = r.getValue();
                        Value.ValueTypeCase valueTypeCase = value != null ? value.getValueTypeCase() : null;
                        switch (valueTypeCase == null ? -1 : UtilsKt.WhenMappings.$EnumSwitchMapping$0[valueTypeCase.ordinal()]) {
                            case -1:
                            case 1:
                                break;
                            case 0:
                            default:
                                Function1 function13 = function12;
                                Value value2 = r.getValue();
                                Intrinsics.checkNotNull(value2);
                                break;
                        }
                        return EvaluateResultError.INSTANCE;
                    }
                };
            }
        };
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> unaryBooleanFunction(final Function1<? super Boolean, ? extends EvaluateResult> function) {
        Intrinsics.checkNotNullParameter(function, "function");
        final Value.ValueTypeCase valueTypeCase$iv = Value.ValueTypeCase.BOOLEAN_VALUE;
        return (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.UtilsKt$unaryFunction$$inlined$unaryFunctionType$1
            @Override // kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 1) {
                    throw Assert.fail("Function should have exactly 1 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                final Value.ValueTypeCase valueTypeCase = valueTypeCase$iv;
                final Function1 function12 = function;
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.UtilsKt$unaryFunction$$inlined$unaryFunctionType$1.1
                    @Override // kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        EvaluateResultValue evaluateResultValue;
                        EvaluateResultError evaluateResultError;
                        Intrinsics.checkNotNullParameter(input, "input");
                        try {
                            EvaluateResult r = (EvaluateResult) function1.invoke(input);
                            if (r.getIsError()) {
                                return EvaluateResultError.INSTANCE;
                            }
                            Value v = r.getValue();
                            Value.ValueTypeCase valueTypeCase2 = v != null ? v.getValueTypeCase() : null;
                            int i = valueTypeCase2 == null ? -1 : UtilsKt.WhenMappings.$EnumSwitchMapping$0[valueTypeCase2.ordinal()];
                            if (i == -1 || i == 1) {
                                evaluateResultValue = EvaluateResult.INSTANCE.getNULL();
                            } else if (valueTypeCase2 == valueTypeCase) {
                                try {
                                    evaluateResultError = (EvaluateResult) function12.invoke(Boolean.valueOf(v.getBooleanValue()));
                                } catch (Exception e) {
                                    evaluateResultError = EvaluateResultError.INSTANCE;
                                }
                                evaluateResultValue = evaluateResultError;
                            } else {
                                evaluateResultValue = EvaluateResultError.INSTANCE;
                            }
                            return evaluateResultValue;
                        } catch (Exception e2) {
                            return EvaluateResultError.INSTANCE;
                        }
                    }
                };
            }
        };
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> unaryStringFunctionPrimitive(final Function1<? super String, String> function) {
        Intrinsics.checkNotNullParameter(function, "function");
        final Value.ValueTypeCase valueTypeCase$iv$iv = Value.ValueTypeCase.STRING_VALUE;
        return (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.UtilsKt$unaryFunctionPrimitive$$inlined$unaryStringFunction$1
            @Override // kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 1) {
                    throw Assert.fail("Function should have exactly 1 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                final Value.ValueTypeCase valueTypeCase = valueTypeCase$iv$iv;
                final Function1 function12 = function;
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.UtilsKt$unaryFunctionPrimitive$$inlined$unaryStringFunction$1.1
                    @Override // kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        EvaluateResultValue evaluateResultValue;
                        EvaluateResultError evaluateResultErrorString;
                        Intrinsics.checkNotNullParameter(input, "input");
                        try {
                            EvaluateResult r = (EvaluateResult) function1.invoke(input);
                            if (r.getIsError()) {
                                return EvaluateResultError.INSTANCE;
                            }
                            Value v = r.getValue();
                            Value.ValueTypeCase valueTypeCase2 = v != null ? v.getValueTypeCase() : null;
                            int i = valueTypeCase2 == null ? -1 : UtilsKt.WhenMappings.$EnumSwitchMapping$0[valueTypeCase2.ordinal()];
                            if (i == -1 || i == 1) {
                                evaluateResultValue = EvaluateResult.INSTANCE.getNULL();
                            } else if (valueTypeCase2 == valueTypeCase) {
                                try {
                                    String s = v.getStringValue();
                                    evaluateResultErrorString = EvaluateResult.INSTANCE.string((String) function12.invoke(s));
                                } catch (Exception e) {
                                    evaluateResultErrorString = EvaluateResultError.INSTANCE;
                                }
                                evaluateResultValue = evaluateResultErrorString;
                            } else {
                                evaluateResultValue = EvaluateResultError.INSTANCE;
                            }
                            return evaluateResultValue;
                        } catch (Exception e2) {
                            return EvaluateResultError.INSTANCE;
                        }
                    }
                };
            }
        };
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> unaryStringFunction(final Function1<? super String, ? extends EvaluateResult> function) {
        Intrinsics.checkNotNullParameter(function, "function");
        final Value.ValueTypeCase valueTypeCase$iv = Value.ValueTypeCase.STRING_VALUE;
        return (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.UtilsKt$unaryFunction$$inlined$unaryFunctionType$3
            @Override // kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 1) {
                    throw Assert.fail("Function should have exactly 1 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                final Value.ValueTypeCase valueTypeCase = valueTypeCase$iv;
                final Function1 function12 = function;
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.UtilsKt$unaryFunction$$inlined$unaryFunctionType$3.1
                    @Override // kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        EvaluateResultValue evaluateResultValue;
                        EvaluateResultError evaluateResultError;
                        Intrinsics.checkNotNullParameter(input, "input");
                        try {
                            EvaluateResult r = (EvaluateResult) function1.invoke(input);
                            if (r.getIsError()) {
                                return EvaluateResultError.INSTANCE;
                            }
                            Value v = r.getValue();
                            Value.ValueTypeCase valueTypeCase2 = v != null ? v.getValueTypeCase() : null;
                            int i = valueTypeCase2 == null ? -1 : UtilsKt.WhenMappings.$EnumSwitchMapping$0[valueTypeCase2.ordinal()];
                            if (i == -1 || i == 1) {
                                evaluateResultValue = EvaluateResult.INSTANCE.getNULL();
                            } else if (valueTypeCase2 == valueTypeCase) {
                                try {
                                    evaluateResultError = (EvaluateResult) function12.invoke(v.getStringValue());
                                } catch (Exception e) {
                                    evaluateResultError = EvaluateResultError.INSTANCE;
                                }
                                evaluateResultValue = evaluateResultError;
                            } else {
                                evaluateResultValue = EvaluateResultError.INSTANCE;
                            }
                            return evaluateResultValue;
                        } catch (Exception e2) {
                            return EvaluateResultError.INSTANCE;
                        }
                    }
                };
            }
        };
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> unaryLongFunction(final Function1<? super Long, ? extends EvaluateResult> function) {
        Intrinsics.checkNotNullParameter(function, "function");
        final Value.ValueTypeCase valueTypeCase$iv = Value.ValueTypeCase.INTEGER_VALUE;
        return (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.UtilsKt$unaryFunction$$inlined$unaryFunctionType$5
            @Override // kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 1) {
                    throw Assert.fail("Function should have exactly 1 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                final Value.ValueTypeCase valueTypeCase = valueTypeCase$iv;
                final Function1 function12 = function;
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.UtilsKt$unaryFunction$$inlined$unaryFunctionType$5.1
                    @Override // kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        EvaluateResultValue evaluateResultValue;
                        EvaluateResultError evaluateResultError;
                        Intrinsics.checkNotNullParameter(input, "input");
                        try {
                            EvaluateResult r = (EvaluateResult) function1.invoke(input);
                            if (r.getIsError()) {
                                return EvaluateResultError.INSTANCE;
                            }
                            Value v = r.getValue();
                            Value.ValueTypeCase valueTypeCase2 = v != null ? v.getValueTypeCase() : null;
                            int i = valueTypeCase2 == null ? -1 : UtilsKt.WhenMappings.$EnumSwitchMapping$0[valueTypeCase2.ordinal()];
                            if (i == -1 || i == 1) {
                                evaluateResultValue = EvaluateResult.INSTANCE.getNULL();
                            } else if (valueTypeCase2 == valueTypeCase) {
                                try {
                                    evaluateResultError = (EvaluateResult) function12.invoke(Long.valueOf(v.getIntegerValue()));
                                } catch (Exception e) {
                                    evaluateResultError = EvaluateResultError.INSTANCE;
                                }
                                evaluateResultValue = evaluateResultError;
                            } else {
                                evaluateResultValue = EvaluateResultError.INSTANCE;
                            }
                            return evaluateResultValue;
                        } catch (Exception e2) {
                            return EvaluateResultError.INSTANCE;
                        }
                    }
                };
            }
        };
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> unaryTimestampFunction(final Function1<? super Timestamp, ? extends EvaluateResult> function) {
        Intrinsics.checkNotNullParameter(function, "function");
        final Value.ValueTypeCase valueTypeCase$iv = Value.ValueTypeCase.TIMESTAMP_VALUE;
        return (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.UtilsKt$unaryFunction$$inlined$unaryFunctionType$4
            @Override // kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 1) {
                    throw Assert.fail("Function should have exactly 1 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                final Value.ValueTypeCase valueTypeCase = valueTypeCase$iv;
                final Function1 function12 = function;
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.UtilsKt$unaryFunction$$inlined$unaryFunctionType$4.1
                    @Override // kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        EvaluateResultValue evaluateResultValue;
                        EvaluateResultError evaluateResultError;
                        Intrinsics.checkNotNullParameter(input, "input");
                        try {
                            EvaluateResult r = (EvaluateResult) function1.invoke(input);
                            if (r.getIsError()) {
                                return EvaluateResultError.INSTANCE;
                            }
                            Value v = r.getValue();
                            Value.ValueTypeCase valueTypeCase2 = v != null ? v.getValueTypeCase() : null;
                            int i = valueTypeCase2 == null ? -1 : UtilsKt.WhenMappings.$EnumSwitchMapping$0[valueTypeCase2.ordinal()];
                            if (i == -1 || i == 1) {
                                evaluateResultValue = EvaluateResult.INSTANCE.getNULL();
                            } else if (valueTypeCase2 == valueTypeCase) {
                                try {
                                    evaluateResultError = (EvaluateResult) function12.invoke(v.getTimestampValue());
                                } catch (Exception e) {
                                    evaluateResultError = EvaluateResultError.INSTANCE;
                                }
                                evaluateResultValue = evaluateResultError;
                            } else {
                                evaluateResultValue = EvaluateResultError.INSTANCE;
                            }
                            return evaluateResultValue;
                        } catch (Exception e2) {
                            return EvaluateResultError.INSTANCE;
                        }
                    }
                };
            }
        };
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> unaryArrayFunction(final Function1<? super List<Value>, ? extends EvaluateResult> function) {
        Intrinsics.checkNotNullParameter(function, "function");
        return (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.UtilsKt$unaryFunction$$inlined$unaryFunction$1
            @Override // kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 1) {
                    throw Assert.fail("Function should have exactly 1 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                final Function1 function12 = function;
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.UtilsKt$unaryFunction$$inlined$unaryFunction$1.1
                    @Override // kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        Value v;
                        Intrinsics.checkNotNullParameter(input, "input");
                        try {
                            EvaluateResult r = (EvaluateResult) function1.invoke(input);
                            v = r.getValue();
                        } catch (Exception e) {
                            return EvaluateResultError.INSTANCE;
                        }
                        if (v == null) {
                            return EvaluateResult.INSTANCE.getNULL();
                        }
                        Value.ValueTypeCase valueTypeCase = v.getValueTypeCase();
                        switch (valueTypeCase == null ? -1 : UtilsKt.WhenMappings.$EnumSwitchMapping$0[valueTypeCase.ordinal()]) {
                            case 2:
                                Function1 function13 = function12;
                                List<Value> valuesList = v.getArrayValue().getValuesList();
                                Intrinsics.checkNotNullExpressionValue(valuesList, "getValuesList(...)");
                                break;
                        }
                        return EvaluateResultError.INSTANCE;
                    }
                };
            }
        };
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> unaryFunction(final Function1<? super ByteString, ? extends EvaluateResult> byteOp, final Function1<? super String, ? extends EvaluateResult> stringOp) {
        Intrinsics.checkNotNullParameter(byteOp, "byteOp");
        Intrinsics.checkNotNullParameter(stringOp, "stringOp");
        final Value.ValueTypeCase valueTypeCase1$iv = Value.ValueTypeCase.BYTES_VALUE;
        final Value.ValueTypeCase valueTypeCase2$iv = Value.ValueTypeCase.STRING_VALUE;
        return (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.UtilsKt$unaryFunction$$inlined$unaryFunctionType$2
            @Override // kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 1) {
                    throw Assert.fail("Function should have exactly 1 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                final Value.ValueTypeCase valueTypeCase = valueTypeCase1$iv;
                final Value.ValueTypeCase valueTypeCase2 = valueTypeCase2$iv;
                final Function1 function12 = byteOp;
                final Function1 function13 = stringOp;
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.UtilsKt$unaryFunction$$inlined$unaryFunctionType$2.1
                    @Override // kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        Intrinsics.checkNotNullParameter(input, "input");
                        EvaluateResult r = (EvaluateResult) function1.invoke(input);
                        if (r.getIsError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        Value v = r.getValue();
                        Value.ValueTypeCase valueTypeCase3 = v != null ? v.getValueTypeCase() : null;
                        int i = valueTypeCase3 == null ? -1 : UtilsKt.AnonymousClass2.AnonymousClass1.WhenMappings.$EnumSwitchMapping$0[valueTypeCase3.ordinal()];
                        if (i == -1 || i == 1) {
                            return EvaluateResult.INSTANCE.getNULL();
                        }
                        if (valueTypeCase3 == valueTypeCase) {
                            try {
                                return (EvaluateResult) function12.invoke(v.getBytesValue());
                            } catch (Exception e) {
                                return EvaluateResultError.INSTANCE;
                            }
                        }
                        if (valueTypeCase3 == valueTypeCase2) {
                            try {
                                return (EvaluateResult) function13.invoke(v.getStringValue());
                            } catch (Exception e2) {
                                return EvaluateResultError.INSTANCE;
                            }
                        }
                        return EvaluateResultError.INSTANCE;
                    }
                };
            }
        };
    }

    public static final <T> Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> unaryFunctionType(final Value.ValueTypeCase valueTypeCase, final Function1<? super Value, ? extends T> valueExtractor, final Function1<? super T, ? extends EvaluateResult> function) {
        Intrinsics.checkNotNullParameter(valueTypeCase, "valueTypeCase");
        Intrinsics.checkNotNullParameter(valueExtractor, "valueExtractor");
        Intrinsics.checkNotNullParameter(function, "function");
        return (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.UtilsKt$unaryFunctionType$$inlined$unaryFunction$1
            @Override // kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 1) {
                    throw Assert.fail("Function should have exactly 1 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                final Value.ValueTypeCase valueTypeCase2 = valueTypeCase;
                final Function1 function12 = function;
                final Function1 function13 = valueExtractor;
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.UtilsKt$unaryFunctionType$$inlined$unaryFunction$1.1
                    @Override // kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        EvaluateResultValue evaluateResultValue;
                        EvaluateResultError evaluateResultError;
                        Intrinsics.checkNotNullParameter(input, "input");
                        try {
                            EvaluateResult r = (EvaluateResult) function1.invoke(input);
                            if (r.getIsError()) {
                                return EvaluateResultError.INSTANCE;
                            }
                            Value v = r.getValue();
                            Value.ValueTypeCase valueTypeCase3 = v != null ? v.getValueTypeCase() : null;
                            int i = valueTypeCase3 == null ? -1 : UtilsKt.WhenMappings.$EnumSwitchMapping$0[valueTypeCase3.ordinal()];
                            if (i == -1 || i == 1) {
                                evaluateResultValue = EvaluateResult.INSTANCE.getNULL();
                            } else if (valueTypeCase3 == valueTypeCase2) {
                                try {
                                    evaluateResultError = (EvaluateResult) function12.invoke(function13.invoke(v));
                                } catch (Exception e) {
                                    evaluateResultError = EvaluateResultError.INSTANCE;
                                }
                                evaluateResultValue = evaluateResultError;
                            } else {
                                evaluateResultValue = EvaluateResultError.INSTANCE;
                            }
                            return evaluateResultValue;
                        } catch (Exception e2) {
                            return EvaluateResultError.INSTANCE;
                        }
                    }
                };
            }
        };
    }

    public static final <T1, T2> Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> unaryFunctionType(final Value.ValueTypeCase valueTypeCase1, final Function1<? super Value, ? extends T1> valueExtractor1, final Function1<? super T1, ? extends EvaluateResult> function1, final Value.ValueTypeCase valueTypeCase2, final Function1<? super Value, ? extends T2> valueExtractor2, final Function1<? super T2, ? extends EvaluateResult> function2) {
        Intrinsics.checkNotNullParameter(valueTypeCase1, "valueTypeCase1");
        Intrinsics.checkNotNullParameter(valueExtractor1, "valueExtractor1");
        Intrinsics.checkNotNullParameter(function1, "function1");
        Intrinsics.checkNotNullParameter(valueTypeCase2, "valueTypeCase2");
        Intrinsics.checkNotNullParameter(valueExtractor2, "valueExtractor2");
        Intrinsics.checkNotNullParameter(function2, "function2");
        return (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.UtilsKt.unaryFunctionType.2
            @Override // kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 1) {
                    throw Assert.fail("Function should have exactly 1 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function12 = params.get(0);
                final Value.ValueTypeCase valueTypeCase = valueTypeCase1;
                final Value.ValueTypeCase valueTypeCase3 = valueTypeCase2;
                final Function1<T1, EvaluateResult> function13 = function1;
                final Function1<Value, T1> function14 = valueExtractor1;
                final Function1<T2, EvaluateResult> function15 = function2;
                final Function1<Value, T2> function16 = valueExtractor2;
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.UtilsKt.unaryFunctionType.2.1

                    /* JADX INFO: renamed from: com.google.firebase.firestore.pipeline.evaluation.UtilsKt$unaryFunctionType$2$1$WhenMappings */
                    /* JADX INFO: compiled from: Utils.kt */
                    @Metadata(k = 3, mv = {2, 0, 0}, xi = 176)
                    public /* synthetic */ class WhenMappings {
                        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

                        static {
                            int[] iArr = new int[Value.ValueTypeCase.values().length];
                            try {
                                iArr[Value.ValueTypeCase.NULL_VALUE.ordinal()] = 1;
                            } catch (NoSuchFieldError e) {
                            }
                            $EnumSwitchMapping$0 = iArr;
                        }
                    }

                    /* JADX WARN: Type inference incomplete: some casts might be missing */
                    @Override // kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        Intrinsics.checkNotNullParameter(input, "input");
                        EvaluateResult evaluateResultInvoke = function12.invoke(input);
                        if (evaluateResultInvoke.getIsError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        Value value = evaluateResultInvoke.getValue();
                        Value.ValueTypeCase valueTypeCase4 = value != null ? value.getValueTypeCase() : null;
                        int i = valueTypeCase4 == null ? -1 : WhenMappings.$EnumSwitchMapping$0[valueTypeCase4.ordinal()];
                        if (i == -1 || i == 1) {
                            return EvaluateResult.INSTANCE.getNULL();
                        }
                        if (valueTypeCase4 == valueTypeCase) {
                            try {
                                return function13.invoke((T1) function14.invoke(value));
                            } catch (Exception e) {
                                return EvaluateResultError.INSTANCE;
                            }
                        }
                        if (valueTypeCase4 == valueTypeCase3) {
                            try {
                                return function15.invoke((T2) function16.invoke(value));
                            } catch (Exception e2) {
                                return EvaluateResultError.INSTANCE;
                            }
                        }
                        return EvaluateResultError.INSTANCE;
                    }
                };
            }
        };
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> binaryValueValueFunction(final Function2<? super Value, ? super Value, ? extends EvaluateResult> function) {
        Intrinsics.checkNotNullParameter(function, "function");
        return (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.UtilsKt$binaryFunction$1
            @Override // kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 2) {
                    throw Assert.fail("Function should have exactly 2 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                final Function1<? super MutableDocument, ? extends EvaluateResult> function12 = params.get(1);
                final Function2<Value, Value, EvaluateResult> function2 = function;
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.UtilsKt$binaryFunction$1.1
                    @Override // kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        Intrinsics.checkNotNullParameter(input, "input");
                        EvaluateResult v1 = function1.invoke(input);
                        if (v1.getIsError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        EvaluateResult v2 = function12.invoke(input);
                        if (v2.getIsError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        try {
                            return function2.invoke(v1.getValue(), v2.getValue());
                        } catch (Exception e) {
                            return EvaluateResultError.INSTANCE;
                        }
                    }
                };
            }
        };
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> binaryValueArrayFunction(final Function2<? super Value, ? super List<Value>, ? extends EvaluateResult> function) {
        Intrinsics.checkNotNullParameter(function, "function");
        return (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.UtilsKt$binaryFunction$$inlined$binaryValueValueFunction$1
            @Override // kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 2) {
                    throw Assert.fail("Function should have exactly 2 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                final Function1<? super MutableDocument, ? extends EvaluateResult> function12 = params.get(1);
                final Function2 function2 = function;
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.UtilsKt$binaryFunction$$inlined$binaryValueValueFunction$1.1
                    @Override // kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        Intrinsics.checkNotNullParameter(input, "input");
                        EvaluateResult v1 = (EvaluateResult) function1.invoke(input);
                        if (v1.getIsError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        EvaluateResult v2 = (EvaluateResult) function12.invoke(input);
                        if (v2.getIsError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        try {
                            Value v12 = v1.getValue();
                            Value v22 = v2.getValue();
                            Value.ValueTypeCase valueTypeCase = v22 != null ? v22.getValueTypeCase() : null;
                            switch (valueTypeCase == null ? -1 : UtilsKt.WhenMappings.$EnumSwitchMapping$0[valueTypeCase.ordinal()]) {
                                case 2:
                                    Function2 function22 = function2;
                                    List<Value> valuesList = v22.getArrayValue().getValuesList();
                                    Intrinsics.checkNotNullExpressionValue(valuesList, "getValuesList(...)");
                                    break;
                            }
                        } catch (Exception e) {
                            return EvaluateResultError.INSTANCE;
                        }
                        return EvaluateResultError.INSTANCE;
                    }
                };
            }
        };
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> binaryArrayValueFunction(final Function2<? super List<Value>, ? super Value, ? extends EvaluateResult> function) {
        Intrinsics.checkNotNullParameter(function, "function");
        return (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.UtilsKt$binaryFunction$$inlined$binaryValueValueFunction$2
            @Override // kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 2) {
                    throw Assert.fail("Function should have exactly 2 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                final Function1<? super MutableDocument, ? extends EvaluateResult> function12 = params.get(1);
                final Function2 function2 = function;
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.UtilsKt$binaryFunction$$inlined$binaryValueValueFunction$2.1
                    @Override // kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        Intrinsics.checkNotNullParameter(input, "input");
                        EvaluateResult v1 = (EvaluateResult) function1.invoke(input);
                        if (v1.getIsError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        EvaluateResult v2 = (EvaluateResult) function12.invoke(input);
                        if (v2.getIsError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        try {
                            Value v12 = v1.getValue();
                            Value v22 = v2.getValue();
                            Value.ValueTypeCase valueTypeCase = v12 != null ? v12.getValueTypeCase() : null;
                            switch (valueTypeCase == null ? -1 : UtilsKt.WhenMappings.$EnumSwitchMapping$0[valueTypeCase.ordinal()]) {
                                case 2:
                                    Function2 function22 = function2;
                                    List<Value> valuesList = v12.getArrayValue().getValuesList();
                                    Intrinsics.checkNotNullExpressionValue(valuesList, "getValuesList(...)");
                                    break;
                            }
                        } catch (Exception e) {
                            return EvaluateResultError.INSTANCE;
                        }
                        return EvaluateResultError.INSTANCE;
                    }
                };
            }
        };
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> binaryVectorVectorFunction(final Function2<? super double[], ? super double[], ? extends EvaluateResult> function) {
        Intrinsics.checkNotNullParameter(function, "function");
        return (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.UtilsKt$binaryFunction$$inlined$binaryValueValueFunction$3
            @Override // kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 2) {
                    throw Assert.fail("Function should have exactly 2 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                final Function1<? super MutableDocument, ? extends EvaluateResult> function12 = params.get(1);
                final Function2 function2 = function;
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.UtilsKt$binaryFunction$$inlined$binaryValueValueFunction$3.1
                    @Override // kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        double[] leftVector;
                        EvaluateResultError evaluateResultError;
                        Intrinsics.checkNotNullParameter(input, "input");
                        EvaluateResult v1 = (EvaluateResult) function1.invoke(input);
                        if (v1.getIsError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        EvaluateResult v2 = (EvaluateResult) function12.invoke(input);
                        if (v2.getIsError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        try {
                            Value left = v1.getValue();
                            Value right = v2.getValue();
                            double[] rightVector = null;
                            if (left == null || Values.isNullValue(left)) {
                                leftVector = null;
                            } else {
                                if (!Values.isVectorValue(left)) {
                                    return EvaluateResultError.INSTANCE;
                                }
                                leftVector = Values.getVectorValue(left);
                            }
                            if (right != null && !Values.isNullValue(right)) {
                                if (!Values.isVectorValue(right)) {
                                    return EvaluateResultError.INSTANCE;
                                }
                                rightVector = Values.getVectorValue(right);
                            }
                            if (leftVector == null || rightVector == null) {
                                return EvaluateResult.INSTANCE.getNULL();
                            }
                            try {
                                evaluateResultError = (EvaluateResult) function2.invoke(leftVector, rightVector);
                            } catch (Exception e) {
                                evaluateResultError = EvaluateResultError.INSTANCE;
                            }
                            return evaluateResultError;
                        } catch (Exception e2) {
                            return EvaluateResultError.INSTANCE;
                        }
                    }
                };
            }
        };
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> binaryStringStringFunction(final Function2<? super String, ? super String, ? extends EvaluateResult> function) {
        Intrinsics.checkNotNullParameter(function, "function");
        final Value.ValueTypeCase valueTypeCase1$iv = Value.ValueTypeCase.STRING_VALUE;
        final Value.ValueTypeCase valueTypeCase2$iv = Value.ValueTypeCase.STRING_VALUE;
        return (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.UtilsKt$binaryFunction$$inlined$binaryFunctionType$1
            @Override // kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(final List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 2) {
                    throw Assert.fail("Function should have exactly 2 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Value.ValueTypeCase valueTypeCase = valueTypeCase1$iv;
                final Value.ValueTypeCase valueTypeCase2 = valueTypeCase2$iv;
                final Function2 function2 = function;
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.UtilsKt$binaryFunction$$inlined$binaryFunctionType$1.1
                    @Override // kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        Intrinsics.checkNotNullParameter(input, "input");
                        EvaluateResult p1 = (EvaluateResult) ((Function1) params.get(0)).invoke(input);
                        if (p1.getIsError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        Value v1 = p1.getValue();
                        EvaluateResult p2 = (EvaluateResult) ((Function1) params.get(1)).invoke(input);
                        if (p2.getIsError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        Value v2 = p2.getValue();
                        Value.ValueTypeCase valueTypeCase3 = v1 != null ? v1.getValueTypeCase() : null;
                        int i = valueTypeCase3 == null ? -1 : UtilsKt.C06971.C01661.WhenMappings.$EnumSwitchMapping$0[valueTypeCase3.ordinal()];
                        if (i == -1 || i == 1) {
                            return EvaluateResult.INSTANCE.getNULL();
                        }
                        if (valueTypeCase3 != valueTypeCase) {
                            return EvaluateResultError.INSTANCE;
                        }
                        Value.ValueTypeCase valueTypeCase4 = v2 != null ? v2.getValueTypeCase() : null;
                        int i2 = valueTypeCase4 == null ? -1 : UtilsKt.C06971.C01661.WhenMappings.$EnumSwitchMapping$0[valueTypeCase4.ordinal()];
                        if (i2 == -1 || i2 == 1) {
                            return EvaluateResult.INSTANCE.getNULL();
                        }
                        if (valueTypeCase4 != valueTypeCase2) {
                            return EvaluateResultError.INSTANCE;
                        }
                        try {
                            return (EvaluateResult) function2.invoke(v1.getStringValue(), v2.getStringValue());
                        } catch (Exception e) {
                            return EvaluateResultError.INSTANCE;
                        }
                    }
                };
            }
        };
    }

    public static final <T> Function1<String, T> cache(final Function1<? super String, ? extends T> ifAbsent) {
        Intrinsics.checkNotNullParameter(ifAbsent, "ifAbsent");
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = (T) new Pair(null, null);
        return new Function1<String, T>() { // from class: com.google.firebase.firestore.pipeline.evaluation.UtilsKt.cache.1
            @Override // kotlin.jvm.functions.Function1
            public final T invoke(String s) {
                Intrinsics.checkNotNullParameter(s, "s");
                Pair<String, T> pair = objectRef.element;
                String strComponent1 = pair.component1();
                T tComponent2 = pair.component2();
                if (!Intrinsics.areEqual(strComponent1, s)) {
                    T tInvoke = ifAbsent.invoke(s);
                    objectRef.element = (T) new Pair(s, tInvoke);
                    return tInvoke;
                }
                return tComponent2;
            }
        };
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> binaryArrayArrayFunction(final Function2<? super List<Value>, ? super List<Value>, ? extends EvaluateResult> function) {
        Intrinsics.checkNotNullParameter(function, "function");
        return (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.UtilsKt$binaryFunction$7
            @Override // kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(final List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 2) {
                    throw Assert.fail("Function should have exactly 2 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function2<List<Value>, List<Value>, EvaluateResult> function2 = function;
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.UtilsKt$binaryFunction$7.1

                    /* JADX INFO: renamed from: com.google.firebase.firestore.pipeline.evaluation.UtilsKt$binaryFunction$7$1$WhenMappings */
                    /* JADX INFO: compiled from: Utils.kt */
                    @Metadata(k = 3, mv = {2, 0, 0}, xi = 176)
                    public /* synthetic */ class WhenMappings {
                        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

                        static {
                            int[] iArr = new int[Value.ValueTypeCase.values().length];
                            try {
                                iArr[Value.ValueTypeCase.NULL_VALUE.ordinal()] = 1;
                            } catch (NoSuchFieldError e) {
                            }
                            try {
                                iArr[Value.ValueTypeCase.ARRAY_VALUE.ordinal()] = 2;
                            } catch (NoSuchFieldError e2) {
                            }
                            $EnumSwitchMapping$0 = iArr;
                        }
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        List<Value> valuesList;
                        Intrinsics.checkNotNullParameter(input, "input");
                        EvaluateResult p1 = params.get(0).invoke(input);
                        if (p1.getIsError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        Value v1 = p1.getValue();
                        EvaluateResult p2 = params.get(1).invoke(input);
                        if (p2.getIsError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        Value v2 = p2.getValue();
                        List<Value> valuesList2 = null;
                        Value.ValueTypeCase valueTypeCase = v1 != null ? v1.getValueTypeCase() : null;
                        switch (valueTypeCase == null ? -1 : WhenMappings.$EnumSwitchMapping$0[valueTypeCase.ordinal()]) {
                            case -1:
                            case 1:
                                valuesList = null;
                                break;
                            case 0:
                            default:
                                return EvaluateResultError.INSTANCE;
                            case 2:
                                valuesList = v1.getArrayValue().getValuesList();
                                break;
                        }
                        Value.ValueTypeCase valueTypeCase2 = v2 != null ? v2.getValueTypeCase() : null;
                        switch (valueTypeCase2 != null ? WhenMappings.$EnumSwitchMapping$0[valueTypeCase2.ordinal()] : -1) {
                            case -1:
                            case 1:
                                break;
                            case 0:
                            default:
                                return EvaluateResultError.INSTANCE;
                            case 2:
                                valuesList2 = v2.getArrayValue().getValuesList();
                                break;
                        }
                        return (valuesList == null || valuesList2 == null) ? EvaluateResult.INSTANCE.getNULL() : function2.invoke(valuesList, valuesList2);
                    }
                };
            }
        };
    }

    public static final <T1, T2> Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> binaryFunctionType(final Value.ValueTypeCase valueTypeCase1, final Function1<? super Value, ? extends T1> valueExtractor1, final Value.ValueTypeCase valueTypeCase2, final Function1<? super Value, ? extends T2> valueExtractor2, final Function2<? super T1, ? super T2, ? extends EvaluateResult> function) {
        Intrinsics.checkNotNullParameter(valueTypeCase1, "valueTypeCase1");
        Intrinsics.checkNotNullParameter(valueExtractor1, "valueExtractor1");
        Intrinsics.checkNotNullParameter(valueTypeCase2, "valueTypeCase2");
        Intrinsics.checkNotNullParameter(valueExtractor2, "valueExtractor2");
        Intrinsics.checkNotNullParameter(function, "function");
        return (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.UtilsKt.binaryFunctionType.1
            @Override // kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(final List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 2) {
                    throw Assert.fail("Function should have exactly 2 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Value.ValueTypeCase valueTypeCase = valueTypeCase1;
                final Value.ValueTypeCase valueTypeCase3 = valueTypeCase2;
                final Function2<T1, T2, EvaluateResult> function2 = function;
                final Function1<Value, T1> function1 = valueExtractor1;
                final Function1<Value, T2> function12 = valueExtractor2;
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.UtilsKt.binaryFunctionType.1.1

                    /* JADX INFO: renamed from: com.google.firebase.firestore.pipeline.evaluation.UtilsKt$binaryFunctionType$1$1$WhenMappings */
                    /* JADX INFO: compiled from: Utils.kt */
                    @Metadata(k = 3, mv = {2, 0, 0}, xi = 176)
                    public /* synthetic */ class WhenMappings {
                        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

                        static {
                            int[] iArr = new int[Value.ValueTypeCase.values().length];
                            try {
                                iArr[Value.ValueTypeCase.NULL_VALUE.ordinal()] = 1;
                            } catch (NoSuchFieldError e) {
                            }
                            $EnumSwitchMapping$0 = iArr;
                        }
                    }

                    /* JADX WARN: Type inference incomplete: some casts might be missing */
                    @Override // kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        Intrinsics.checkNotNullParameter(input, "input");
                        EvaluateResult evaluateResultInvoke = params.get(0).invoke(input);
                        if (evaluateResultInvoke.getIsError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        Value value = evaluateResultInvoke.getValue();
                        EvaluateResult evaluateResultInvoke2 = params.get(1).invoke(input);
                        if (evaluateResultInvoke2.getIsError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        Value value2 = evaluateResultInvoke2.getValue();
                        Value.ValueTypeCase valueTypeCase4 = value != null ? value.getValueTypeCase() : null;
                        int i = valueTypeCase4 == null ? -1 : WhenMappings.$EnumSwitchMapping$0[valueTypeCase4.ordinal()];
                        if (i == -1 || i == 1) {
                            return EvaluateResult.INSTANCE.getNULL();
                        }
                        if (valueTypeCase4 != valueTypeCase) {
                            return EvaluateResultError.INSTANCE;
                        }
                        Value.ValueTypeCase valueTypeCase5 = value2 != null ? value2.getValueTypeCase() : null;
                        int i2 = valueTypeCase5 == null ? -1 : WhenMappings.$EnumSwitchMapping$0[valueTypeCase5.ordinal()];
                        if (i2 == -1 || i2 == 1) {
                            return EvaluateResult.INSTANCE.getNULL();
                        }
                        if (valueTypeCase5 != valueTypeCase3) {
                            return EvaluateResultError.INSTANCE;
                        }
                        try {
                            return function2.invoke((T1) function1.invoke(value), (T2) function12.invoke(value2));
                        } catch (Exception e) {
                            return EvaluateResultError.INSTANCE;
                        }
                    }
                };
            }
        };
    }

    public static final <T1, T2> Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> binaryFunctionConstructorType(final Value.ValueTypeCase valueTypeCase1, final Function1<? super Value, ? extends T1> valueExtractor1, final Value.ValueTypeCase valueTypeCase2, final Function1<? super Value, ? extends T2> valueExtractor2, final Function0<? extends Function2<? super T1, ? super T2, ? extends EvaluateResult>> functionConstructor) {
        Intrinsics.checkNotNullParameter(valueTypeCase1, "valueTypeCase1");
        Intrinsics.checkNotNullParameter(valueExtractor1, "valueExtractor1");
        Intrinsics.checkNotNullParameter(valueTypeCase2, "valueTypeCase2");
        Intrinsics.checkNotNullParameter(valueExtractor2, "valueExtractor2");
        Intrinsics.checkNotNullParameter(functionConstructor, "functionConstructor");
        return (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.UtilsKt.binaryFunctionConstructorType.1
            @Override // kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 2) {
                    throw Assert.fail("Function should have exactly 2 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                final Function1<? super MutableDocument, ? extends EvaluateResult> function12 = params.get(1);
                final Function2 f = (Function2) functionConstructor.invoke();
                final Value.ValueTypeCase valueTypeCase = valueTypeCase1;
                final Value.ValueTypeCase valueTypeCase3 = valueTypeCase2;
                final Function1<Value, T1> function13 = valueExtractor1;
                final Function1<Value, T2> function14 = valueExtractor2;
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.UtilsKt.binaryFunctionConstructorType.1.1

                    /* JADX INFO: renamed from: com.google.firebase.firestore.pipeline.evaluation.UtilsKt$binaryFunctionConstructorType$1$1$WhenMappings */
                    /* JADX INFO: compiled from: Utils.kt */
                    @Metadata(k = 3, mv = {2, 0, 0}, xi = 176)
                    public /* synthetic */ class WhenMappings {
                        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

                        static {
                            int[] iArr = new int[Value.ValueTypeCase.values().length];
                            try {
                                iArr[Value.ValueTypeCase.NULL_VALUE.ordinal()] = 1;
                            } catch (NoSuchFieldError e) {
                            }
                            $EnumSwitchMapping$0 = iArr;
                        }
                    }

                    /* JADX WARN: Type inference incomplete: some casts might be missing */
                    @Override // kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        Value value;
                        Intrinsics.checkNotNullParameter(input, "input");
                        EvaluateResult evaluateResultInvoke = function1.invoke(input);
                        if (evaluateResultInvoke.getIsError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        EvaluateResult evaluateResultInvoke2 = function12.invoke(input);
                        if (evaluateResultInvoke2.getIsError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        Value value2 = evaluateResultInvoke.getValue();
                        Value value3 = null;
                        Value.ValueTypeCase valueTypeCase4 = value2 != null ? value2.getValueTypeCase() : null;
                        int i = valueTypeCase4 == null ? -1 : WhenMappings.$EnumSwitchMapping$0[valueTypeCase4.ordinal()];
                        if (i == -1 || i == 1) {
                            value = null;
                        } else {
                            if (valueTypeCase4 != valueTypeCase) {
                                return EvaluateResultError.INSTANCE;
                            }
                            value = evaluateResultInvoke.getValue();
                        }
                        Value value4 = evaluateResultInvoke2.getValue();
                        Value.ValueTypeCase valueTypeCase5 = value4 != null ? value4.getValueTypeCase() : null;
                        int i2 = valueTypeCase5 == null ? -1 : WhenMappings.$EnumSwitchMapping$0[valueTypeCase5.ordinal()];
                        if (i2 != -1 && i2 != 1) {
                            if (valueTypeCase5 != valueTypeCase3) {
                                return EvaluateResultError.INSTANCE;
                            }
                            value3 = evaluateResultInvoke2.getValue();
                        }
                        if (value == null || value3 == null) {
                            return EvaluateResult.INSTANCE.getNULL();
                        }
                        return f.invoke((T1) function13.invoke(value), (T2) function14.invoke(value3));
                    }
                };
            }
        };
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> ternaryLazyFunction(final Function3<? super Function0<? extends EvaluateResult>, ? super Function0<? extends EvaluateResult>, ? super Function0<? extends EvaluateResult>, ? extends EvaluateResult> function) {
        Intrinsics.checkNotNullParameter(function, "function");
        return (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.UtilsKt.ternaryLazyFunction.1
            @Override // kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 3) {
                    throw Assert.fail("Function should have exactly 3 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                final Function1<? super MutableDocument, ? extends EvaluateResult> function12 = params.get(1);
                final Function1<? super MutableDocument, ? extends EvaluateResult> function13 = params.get(2);
                final Function3<Function0<? extends EvaluateResult>, Function0<? extends EvaluateResult>, Function0<? extends EvaluateResult>, EvaluateResult> function3 = function;
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.UtilsKt.ternaryLazyFunction.1.1
                    @Override // kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(final MutableDocument input) {
                        Intrinsics.checkNotNullParameter(input, "input");
                        Function3<Function0<? extends EvaluateResult>, Function0<? extends EvaluateResult>, Function0<? extends EvaluateResult>, EvaluateResult> function32 = function3;
                        final Function1<MutableDocument, EvaluateResult> function14 = function1;
                        final Function1<MutableDocument, EvaluateResult> function15 = function12;
                        final Function1<MutableDocument, EvaluateResult> function16 = function13;
                        try {
                            return function32.invoke(new Function0<EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.UtilsKt$ternaryLazyFunction$1$1$1$1
                                /* JADX WARN: Can't rename method to resolve collision */
                                @Override // kotlin.jvm.functions.Function0
                                public final EvaluateResult invoke() {
                                    return function14.invoke(input);
                                }
                            }, new Function0<EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.UtilsKt$ternaryLazyFunction$1$1$1$2
                                /* JADX WARN: Can't rename method to resolve collision */
                                @Override // kotlin.jvm.functions.Function0
                                public final EvaluateResult invoke() {
                                    return function15.invoke(input);
                                }
                            }, new Function0<EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.UtilsKt$ternaryLazyFunction$1$1$1$3
                                /* JADX WARN: Can't rename method to resolve collision */
                                @Override // kotlin.jvm.functions.Function0
                                public final EvaluateResult invoke() {
                                    return function16.invoke(input);
                                }
                            });
                        } catch (Exception e) {
                            return EvaluateResultError.INSTANCE;
                        }
                    }
                };
            }
        };
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> ternaryTimestampFunction(final Function3<? super Timestamp, ? super String, ? super Long, ? extends EvaluateResult> function) {
        Intrinsics.checkNotNullParameter(function, "function");
        return (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.UtilsKt$ternaryTimestampFunction$$inlined$ternaryNullableValueFunction$1
            @Override // kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 3) {
                    throw Assert.fail("Function should have exactly 3 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                final Function1<? super MutableDocument, ? extends EvaluateResult> function12 = params.get(1);
                final Function1<? super MutableDocument, ? extends EvaluateResult> function13 = params.get(2);
                final Function3 function3 = function;
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.UtilsKt$ternaryTimestampFunction$$inlined$ternaryNullableValueFunction$1.1
                    @Override // kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(final MutableDocument input) {
                        Timestamp timestampValue;
                        Long n;
                        Intrinsics.checkNotNullParameter(input, "input");
                        final Function1 function14 = function1;
                        final Function1 function15 = function12;
                        final Function1 function16 = function13;
                        try {
                            Function0<EvaluateResult> function0 = new Function0<EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.UtilsKt$ternaryTimestampFunction$.inlined.ternaryNullableValueFunction.1.1.1
                                /* JADX WARN: Can't rename method to resolve collision */
                                @Override // kotlin.jvm.functions.Function0
                                public final EvaluateResult invoke() {
                                    return (EvaluateResult) function14.invoke(input);
                                }
                            };
                            Function0<EvaluateResult> function02 = new Function0<EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.UtilsKt$ternaryTimestampFunction$.inlined.ternaryNullableValueFunction.1.1.2
                                /* JADX WARN: Can't rename method to resolve collision */
                                @Override // kotlin.jvm.functions.Function0
                                public final EvaluateResult invoke() {
                                    return (EvaluateResult) function15.invoke(input);
                                }
                            };
                            Function0<EvaluateResult> function03 = new Function0<EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.UtilsKt$ternaryTimestampFunction$.inlined.ternaryNullableValueFunction.1.1.3
                                /* JADX WARN: Can't rename method to resolve collision */
                                @Override // kotlin.jvm.functions.Function0
                                public final EvaluateResult invoke() {
                                    return (EvaluateResult) function16.invoke(input);
                                }
                            };
                            Function0<EvaluateResult> function04 = function02;
                            Function0<EvaluateResult> function05 = function0;
                            if (function05.invoke().getIsError()) {
                                return EvaluateResultError.INSTANCE;
                            }
                            Value v1 = function05.invoke().getValue();
                            if (function04.invoke().getIsError()) {
                                return EvaluateResultError.INSTANCE;
                            }
                            Value v2 = function04.invoke().getValue();
                            if (function03.invoke().getIsError()) {
                                return EvaluateResultError.INSTANCE;
                            }
                            Value v3 = function03.invoke().getValue();
                            Value.ValueTypeCase valueTypeCase = v1 != null ? v1.getValueTypeCase() : null;
                            switch (valueTypeCase == null ? -1 : UtilsKt.WhenMappings.$EnumSwitchMapping$0[valueTypeCase.ordinal()]) {
                                case -1:
                                case 1:
                                    timestampValue = null;
                                    break;
                                case 0:
                                case 2:
                                default:
                                    return EvaluateResultError.INSTANCE;
                                case 3:
                                    timestampValue = v1.getTimestampValue();
                                    break;
                            }
                            Timestamp t = timestampValue;
                            Value.ValueTypeCase valueTypeCase2 = v2 != null ? v2.getValueTypeCase() : null;
                            if ((valueTypeCase2 == null ? -1 : UtilsKt.WhenMappings.$EnumSwitchMapping$0[valueTypeCase2.ordinal()]) != 4) {
                                return EvaluateResultError.INSTANCE;
                            }
                            String u = v2.getStringValue();
                            Intrinsics.checkNotNullExpressionValue(u, "getStringValue(...)");
                            Value.ValueTypeCase valueTypeCase3 = v3 != null ? v3.getValueTypeCase() : null;
                            switch (valueTypeCase3 != null ? UtilsKt.WhenMappings.$EnumSwitchMapping$0[valueTypeCase3.ordinal()] : -1) {
                                case -1:
                                case 1:
                                    n = null;
                                    break;
                                case 5:
                                    n = Long.valueOf(v3.getIntegerValue());
                                    break;
                                default:
                                    return EvaluateResultError.INSTANCE;
                            }
                            return (t == null || n == null) ? EvaluateResult.INSTANCE.getNULL() : (EvaluateResult) function3.invoke(t, u, n);
                        } catch (Exception e) {
                            return EvaluateResultError.INSTANCE;
                        }
                    }
                };
            }
        };
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> ternaryNullableValueFunction(final Function3<? super Value, ? super Value, ? super Value, ? extends EvaluateResult> function) {
        Intrinsics.checkNotNullParameter(function, "function");
        return (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.UtilsKt$ternaryNullableValueFunction$$inlined$ternaryLazyFunction$1
            @Override // kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 3) {
                    throw Assert.fail("Function should have exactly 3 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                final Function1<? super MutableDocument, ? extends EvaluateResult> function12 = params.get(1);
                final Function1<? super MutableDocument, ? extends EvaluateResult> function13 = params.get(2);
                final Function3 function3 = function;
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.UtilsKt$ternaryNullableValueFunction$$inlined$ternaryLazyFunction$1.1
                    @Override // kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(final MutableDocument input) {
                        EvaluateResultError evaluateResultError;
                        Intrinsics.checkNotNullParameter(input, "input");
                        final Function1 function14 = function1;
                        final Function1 function15 = function12;
                        final Function1 function16 = function13;
                        try {
                            Function0<EvaluateResult> function0 = new Function0<EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.UtilsKt$ternaryNullableValueFunction$.inlined.ternaryLazyFunction.1.1.1
                                /* JADX WARN: Can't rename method to resolve collision */
                                @Override // kotlin.jvm.functions.Function0
                                public final EvaluateResult invoke() {
                                    return (EvaluateResult) function14.invoke(input);
                                }
                            };
                            Function0<EvaluateResult> function02 = new Function0<EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.UtilsKt$ternaryNullableValueFunction$.inlined.ternaryLazyFunction.1.1.2
                                /* JADX WARN: Can't rename method to resolve collision */
                                @Override // kotlin.jvm.functions.Function0
                                public final EvaluateResult invoke() {
                                    return (EvaluateResult) function15.invoke(input);
                                }
                            };
                            Function0<EvaluateResult> function03 = new Function0<EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.UtilsKt$ternaryNullableValueFunction$.inlined.ternaryLazyFunction.1.1.3
                                /* JADX WARN: Can't rename method to resolve collision */
                                @Override // kotlin.jvm.functions.Function0
                                public final EvaluateResult invoke() {
                                    return (EvaluateResult) function16.invoke(input);
                                }
                            };
                            Function0<EvaluateResult> function04 = function02;
                            Function0<EvaluateResult> function05 = function0;
                            if (function05.invoke().getIsError()) {
                                evaluateResultError = EvaluateResultError.INSTANCE;
                            } else {
                                Value v1 = function05.invoke().getValue();
                                if (function04.invoke().getIsError()) {
                                    evaluateResultError = EvaluateResultError.INSTANCE;
                                } else {
                                    Value v2 = function04.invoke().getValue();
                                    if (function03.invoke().getIsError()) {
                                        evaluateResultError = EvaluateResultError.INSTANCE;
                                    } else {
                                        Value v3 = function03.invoke().getValue();
                                        evaluateResultError = (EvaluateResult) function3.invoke(v1, v2, v3);
                                    }
                                }
                            }
                            return evaluateResultError;
                        } catch (Exception e) {
                            return EvaluateResultError.INSTANCE;
                        }
                    }
                };
            }
        };
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> variadicResultFunction(final Function1<? super List<? extends EvaluateResult>, ? extends EvaluateResult> function) {
        Intrinsics.checkNotNullParameter(function, "function");
        return (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.UtilsKt.variadicResultFunction.1
            @Override // kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(final List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                final Function1<List<? extends EvaluateResult>, EvaluateResult> function1 = function;
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.UtilsKt.variadicResultFunction.1.1
                    @Override // kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        Intrinsics.checkNotNullParameter(input, "input");
                        Iterable $this$map$iv = params;
                        Collection destination$iv$iv = new ArrayList(CollectionsKt.collectionSizeOrDefault($this$map$iv, 10));
                        for (Object item$iv$iv : $this$map$iv) {
                            Function1 it = (Function1) item$iv$iv;
                            destination$iv$iv.add((EvaluateResult) it.invoke(input));
                        }
                        List results = (List) destination$iv$iv;
                        try {
                            return function1.invoke(results);
                        } catch (Exception e) {
                            return EvaluateResultError.INSTANCE;
                        }
                    }
                };
            }
        };
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> variadicNullableValueFunction(final Function1<? super List<Value>, ? extends EvaluateResult> function) {
        Intrinsics.checkNotNullParameter(function, "function");
        return (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.UtilsKt$variadicNullableValueFunction$$inlined$variadicResultFunction$1
            @Override // kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(final List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                final Function1 function1 = function;
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.UtilsKt$variadicNullableValueFunction$$inlined$variadicResultFunction$1.1
                    @Override // kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        Intrinsics.checkNotNullParameter(input, "input");
                        Iterable $this$map$iv = params;
                        Collection destination$iv$iv = new ArrayList(CollectionsKt.collectionSizeOrDefault($this$map$iv, 10));
                        for (Object item$iv$iv : $this$map$iv) {
                            Function1 it = (Function1) item$iv$iv;
                            destination$iv$iv.add((EvaluateResult) it.invoke(input));
                        }
                        Iterable results = (List) destination$iv$iv;
                        int i = 0;
                        try {
                            Function1 function12 = function1;
                            Iterable $this$map$iv2 = results;
                            Collection destination$iv$iv2 = new ArrayList(CollectionsKt.collectionSizeOrDefault($this$map$iv2, 10));
                            for (Object item$iv$iv2 : $this$map$iv2) {
                                EvaluateResult it2 = (EvaluateResult) item$iv$iv2;
                                int i2 = i;
                                Value value = it2.getValue();
                                if (value == null) {
                                    return EvaluateResultError.INSTANCE;
                                }
                                destination$iv$iv2.add(value);
                                i = i2;
                            }
                            return (EvaluateResult) function12.invoke((List) destination$iv$iv2);
                        } catch (Exception e) {
                            return EvaluateResultError.INSTANCE;
                        }
                    }
                };
            }
        };
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> variadicStringFunction(final Function1<? super List<String>, ? extends EvaluateResult> function) {
        Intrinsics.checkNotNullParameter(function, "function");
        final Value.ValueTypeCase valueTypeCase$iv = Value.ValueTypeCase.STRING_VALUE;
        return (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.UtilsKt$variadicFunction$$inlined$variadicFunctionType$1
            @Override // kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(final List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                final Value.ValueTypeCase valueTypeCase = valueTypeCase$iv;
                final Function1 function1 = function;
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.UtilsKt$variadicFunction$$inlined$variadicFunctionType$1.1
                    @Override // kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        Intrinsics.checkNotNullParameter(input, "input");
                        ArrayList values = new ArrayList(params.size());
                        boolean nullFound = false;
                        for (Function1 param : params) {
                            EvaluateResult p = (EvaluateResult) param.invoke(input);
                            if (p.getIsError()) {
                                return EvaluateResultError.INSTANCE;
                            }
                            Value value = p.getValue();
                            Value.ValueTypeCase valueTypeCase2 = value != null ? value.getValueTypeCase() : null;
                            int i = valueTypeCase2 == null ? -1 : UtilsKt.C07011.C01711.WhenMappings.$EnumSwitchMapping$0[valueTypeCase2.ordinal()];
                            if (i == -1 || i == 1) {
                                nullFound = true;
                            } else if (valueTypeCase2 == valueTypeCase) {
                                Value p0 = p.getValue();
                                Intrinsics.checkNotNull(p0);
                                values.add(p0.getStringValue());
                            } else {
                                return EvaluateResultError.INSTANCE;
                            }
                        }
                        if (nullFound) {
                            return EvaluateResult.INSTANCE.getNULL();
                        }
                        try {
                            return (EvaluateResult) function1.invoke(values);
                        } catch (Exception e) {
                            return EvaluateResultError.INSTANCE;
                        }
                    }
                };
            }
        };
    }

    public static final <T> Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> variadicFunctionType(final Value.ValueTypeCase valueTypeCase, final Function1<? super Value, ? extends T> valueExtractor, final Function1<? super List<? extends T>, ? extends EvaluateResult> function) {
        Intrinsics.checkNotNullParameter(valueTypeCase, "valueTypeCase");
        Intrinsics.checkNotNullParameter(valueExtractor, "valueExtractor");
        Intrinsics.checkNotNullParameter(function, "function");
        return (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.UtilsKt.variadicFunctionType.1
            @Override // kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(final List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                final Value.ValueTypeCase valueTypeCase2 = valueTypeCase;
                final Function1<Value, T> function1 = valueExtractor;
                final Function1<List<? extends T>, EvaluateResult> function12 = function;
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.UtilsKt.variadicFunctionType.1.1

                    /* JADX INFO: renamed from: com.google.firebase.firestore.pipeline.evaluation.UtilsKt$variadicFunctionType$1$1$WhenMappings */
                    /* JADX INFO: compiled from: Utils.kt */
                    @Metadata(k = 3, mv = {2, 0, 0}, xi = 176)
                    public /* synthetic */ class WhenMappings {
                        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

                        static {
                            int[] iArr = new int[Value.ValueTypeCase.values().length];
                            try {
                                iArr[Value.ValueTypeCase.NULL_VALUE.ordinal()] = 1;
                            } catch (NoSuchFieldError e) {
                            }
                            $EnumSwitchMapping$0 = iArr;
                        }
                    }

                    /* JADX WARN: Type inference incomplete: some casts might be missing */
                    @Override // kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        Intrinsics.checkNotNullParameter(input, "input");
                        ArrayList arrayList = new ArrayList(params.size());
                        boolean z = false;
                        Iterator<Function1<MutableDocument, EvaluateResult>> it = params.iterator();
                        while (it.hasNext()) {
                            EvaluateResult evaluateResultInvoke = it.next().invoke(input);
                            if (evaluateResultInvoke.getIsError()) {
                                return EvaluateResultError.INSTANCE;
                            }
                            Value value = evaluateResultInvoke.getValue();
                            Value.ValueTypeCase valueTypeCase3 = value != null ? value.getValueTypeCase() : null;
                            int i = valueTypeCase3 == null ? -1 : WhenMappings.$EnumSwitchMapping$0[valueTypeCase3.ordinal()];
                            if (i == -1 || i == 1) {
                                z = true;
                            } else {
                                if (valueTypeCase3 != valueTypeCase2) {
                                    return EvaluateResultError.INSTANCE;
                                }
                                Function1<Value, T> function13 = function1;
                                Value value2 = evaluateResultInvoke.getValue();
                                Intrinsics.checkNotNull(value2);
                                arrayList.add(function13.invoke(value2));
                            }
                        }
                        if (z) {
                            return EvaluateResult.INSTANCE.getNULL();
                        }
                        try {
                            return function12.invoke(arrayList);
                        } catch (Exception e) {
                            return EvaluateResultError.INSTANCE;
                        }
                    }
                };
            }
        };
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> variadicBooleanFunction(final Function1<? super boolean[], ? extends EvaluateResult> function) {
        Intrinsics.checkNotNullParameter(function, "function");
        return (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.UtilsKt$variadicFunction$2
            @Override // kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(final List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                final Function1<boolean[], EvaluateResult> function1 = function;
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.UtilsKt$variadicFunction$2.1

                    /* JADX INFO: renamed from: com.google.firebase.firestore.pipeline.evaluation.UtilsKt$variadicFunction$2$1$WhenMappings */
                    /* JADX INFO: compiled from: Utils.kt */
                    @Metadata(k = 3, mv = {2, 0, 0}, xi = 176)
                    public /* synthetic */ class WhenMappings {
                        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

                        static {
                            int[] iArr = new int[Value.ValueTypeCase.values().length];
                            try {
                                iArr[Value.ValueTypeCase.NULL_VALUE.ordinal()] = 1;
                            } catch (NoSuchFieldError e) {
                            }
                            try {
                                iArr[Value.ValueTypeCase.BOOLEAN_VALUE.ordinal()] = 2;
                            } catch (NoSuchFieldError e2) {
                            }
                            $EnumSwitchMapping$0 = iArr;
                        }
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        Intrinsics.checkNotNullParameter(input, "input");
                        boolean[] values = new boolean[params.size()];
                        boolean nullFound = false;
                        Iterable $this$forEachIndexed$iv = params;
                        int i = 0;
                        for (Object item$iv : $this$forEachIndexed$iv) {
                            int index$iv = i + 1;
                            if (i < 0) {
                                CollectionsKt.throwIndexOverflow();
                            }
                            Function1 param = (Function1) item$iv;
                            EvaluateResult result = (EvaluateResult) param.invoke(input);
                            if (result.getIsError()) {
                                return EvaluateResultError.INSTANCE;
                            }
                            Value v = result.getValue();
                            Value.ValueTypeCase valueTypeCase = v != null ? v.getValueTypeCase() : null;
                            switch (valueTypeCase == null ? -1 : WhenMappings.$EnumSwitchMapping$0[valueTypeCase.ordinal()]) {
                                case -1:
                                case 1:
                                    nullFound = true;
                                    break;
                                case 0:
                                default:
                                    return EvaluateResultError.INSTANCE;
                                case 2:
                                    values[i] = v.getBooleanValue();
                                    break;
                            }
                            i = index$iv;
                        }
                        if (nullFound) {
                            return EvaluateResult.INSTANCE.getNULL();
                        }
                        try {
                            return function1.invoke(values);
                        } catch (Exception e) {
                            return EvaluateResultError.INSTANCE;
                        }
                    }
                };
            }
        };
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> comparison(final Function2<? super Value, ? super Value, Boolean> f) {
        Intrinsics.checkNotNullParameter(f, "f");
        return (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.UtilsKt$comparison$$inlined$binaryValueValueFunction$1
            @Override // kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 2) {
                    throw Assert.fail("Function should have exactly 2 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                final Function1<? super MutableDocument, ? extends EvaluateResult> function12 = params.get(1);
                final Function2 function2 = f;
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.UtilsKt$comparison$$inlined$binaryValueValueFunction$1.1
                    @Override // kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        Intrinsics.checkNotNullParameter(input, "input");
                        EvaluateResult v1 = (EvaluateResult) function1.invoke(input);
                        if (v1.getIsError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        EvaluateResult v2 = (EvaluateResult) function12.invoke(input);
                        if (v2.getIsError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        try {
                            Value p1 = v1.getValue();
                            Value p2 = v2.getValue();
                            return EvaluateResult.INSTANCE.m8435boolean(((Boolean) function2.invoke(p1, p2)).booleanValue());
                        } catch (Exception e) {
                            return EvaluateResultError.INSTANCE;
                        }
                    }
                };
            }
        };
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> arithmeticPrimitive(final Function1<? super Long, Long> intOp, final Function1<? super Double, Double> doubleOp) {
        Intrinsics.checkNotNullParameter(intOp, "intOp");
        Intrinsics.checkNotNullParameter(doubleOp, "doubleOp");
        final Value.ValueTypeCase valueTypeCase1$iv$iv = Value.ValueTypeCase.INTEGER_VALUE;
        final Value.ValueTypeCase valueTypeCase2$iv$iv = Value.ValueTypeCase.DOUBLE_VALUE;
        return (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.UtilsKt$arithmeticPrimitive$$inlined$arithmetic$2
            @Override // kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 1) {
                    throw Assert.fail("Function should have exactly 1 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                final Value.ValueTypeCase valueTypeCase = valueTypeCase1$iv$iv;
                final Value.ValueTypeCase valueTypeCase2 = valueTypeCase2$iv$iv;
                final Function1 function12 = intOp;
                final Function1 function13 = doubleOp;
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.UtilsKt$arithmeticPrimitive$$inlined$arithmetic$2.1
                    @Override // kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        Intrinsics.checkNotNullParameter(input, "input");
                        EvaluateResult r = (EvaluateResult) function1.invoke(input);
                        if (r.getIsError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        Value v = r.getValue();
                        Value.ValueTypeCase valueTypeCase3 = v != null ? v.getValueTypeCase() : null;
                        int i = valueTypeCase3 == null ? -1 : UtilsKt.AnonymousClass2.AnonymousClass1.WhenMappings.$EnumSwitchMapping$0[valueTypeCase3.ordinal()];
                        if (i == -1 || i == 1) {
                            return EvaluateResult.INSTANCE.getNULL();
                        }
                        if (valueTypeCase3 == valueTypeCase) {
                            try {
                                long x = v.getIntegerValue();
                                return EvaluateResult.INSTANCE.m8438long(((Number) function12.invoke(Long.valueOf(x))).longValue());
                            } catch (Exception e) {
                                return EvaluateResultError.INSTANCE;
                            }
                        }
                        if (valueTypeCase3 != valueTypeCase2) {
                            return EvaluateResultError.INSTANCE;
                        }
                        try {
                            double x2 = v.getDoubleValue();
                            return EvaluateResult.INSTANCE.m8436double(((Number) function13.invoke(Double.valueOf(x2))).doubleValue());
                        } catch (Exception e2) {
                            return EvaluateResultError.INSTANCE;
                        }
                    }
                };
            }
        };
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> arithmeticPrimitive(final Function2<? super Long, ? super Long, Long> intOp, final Function2<? super Double, ? super Double, Double> doubleOp) {
        Intrinsics.checkNotNullParameter(intOp, "intOp");
        Intrinsics.checkNotNullParameter(doubleOp, "doubleOp");
        return (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.UtilsKt$arithmeticPrimitive$$inlined$arithmetic$1
            @Override // kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 2) {
                    throw Assert.fail("Function should have exactly 2 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                final Function1<? super MutableDocument, ? extends EvaluateResult> function12 = params.get(1);
                final Function2 function2 = intOp;
                final Function2 function22 = doubleOp;
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.UtilsKt$arithmeticPrimitive$$inlined$arithmetic$1.1
                    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
                    /* JADX WARN: Removed duplicated region for block: B:49:0x00c0 A[ADDED_TO_REGION] */
                    /* JADX WARN: Removed duplicated region for block: B:79:0x01c4 A[ADDED_TO_REGION, REMOVE] */
                    @Override // kotlin.jvm.functions.Function1
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                    */
                    public final EvaluateResult invoke(MutableDocument input) {
                        Value p2;
                        LongValue n2;
                        Value.ValueTypeCase valueTypeCase;
                        LongValue n1;
                        Value.ValueTypeCase valueTypeCase2;
                        Intrinsics.checkNotNullParameter(input, "input");
                        EvaluateResult v1 = (EvaluateResult) function1.invoke(input);
                        if (v1.getIsError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        EvaluateResult v2 = (EvaluateResult) function12.invoke(input);
                        if (v2.getIsError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        try {
                            Value p1 = v1.getValue();
                            p2 = v2.getValue();
                            n2 = null;
                            if (p1 != null) {
                                try {
                                    valueTypeCase = p1.getValueTypeCase();
                                } catch (Exception e) {
                                }
                            } else {
                                valueTypeCase = null;
                            }
                            try {
                                switch (valueTypeCase == null ? -1 : UtilsKt.WhenMappings.$EnumSwitchMapping$0[valueTypeCase.ordinal()]) {
                                    case -1:
                                    case 1:
                                        n1 = null;
                                        break;
                                    case 5:
                                        n1 = new LongValue(p1.getIntegerValue());
                                        break;
                                    case 6:
                                        n1 = new DoubleValue(p1.getDoubleValue());
                                        break;
                                    default:
                                        return EvaluateResultError.INSTANCE;
                                }
                                valueTypeCase2 = p2 != null ? p2.getValueTypeCase() : null;
                            } catch (Exception e2) {
                            }
                        } catch (Exception e3) {
                        }
                        switch (valueTypeCase2 != null ? UtilsKt.WhenMappings.$EnumSwitchMapping$0[valueTypeCase2.ordinal()] : -1) {
                            case -1:
                            case 1:
                                if (n1 == null || n2 == null) {
                                    return EvaluateResult.INSTANCE.getNULL();
                                }
                                if (!(n1 instanceof LongValue)) {
                                    if (!(n1 instanceof DoubleValue)) {
                                        throw new NoWhenBranchMatchedException();
                                    }
                                    if (n2 instanceof DoubleValue) {
                                        double x = ((DoubleValue) n1).getValue();
                                        double y = ((DoubleValue) n2).getValue();
                                        return EvaluateResult.INSTANCE.m8436double(((Number) function22.invoke(Double.valueOf(x), Double.valueOf(y))).doubleValue());
                                    }
                                    if (!(n2 instanceof LongValue)) {
                                        return EvaluateResultError.INSTANCE;
                                    }
                                    double x2 = ((DoubleValue) n1).getValue();
                                    double y2 = ((LongValue) n2).getValue();
                                    return EvaluateResult.INSTANCE.m8436double(((Number) function22.invoke(Double.valueOf(x2), Double.valueOf(y2))).doubleValue());
                                }
                                if (!(n2 instanceof LongValue)) {
                                    if (!(n2 instanceof DoubleValue)) {
                                        throw new NoWhenBranchMatchedException();
                                    }
                                    double x3 = ((LongValue) n1).getValue();
                                    double y3 = ((DoubleValue) n2).getValue();
                                    return EvaluateResult.INSTANCE.m8436double(((Number) function22.invoke(Double.valueOf(x3), Double.valueOf(y3))).doubleValue());
                                }
                                long x4 = ((LongValue) n1).getValue();
                                long y4 = ((LongValue) n2).getValue();
                                try {
                                    return EvaluateResult.INSTANCE.m8438long(((Number) function2.invoke(Long.valueOf(x4), Long.valueOf(y4))).longValue());
                                } catch (Exception e4) {
                                }
                                return EvaluateResultError.INSTANCE;
                            case 5:
                                n2 = new LongValue(p2.getIntegerValue());
                                if (n1 == null) {
                                }
                                return EvaluateResult.INSTANCE.getNULL();
                            case 6:
                                n2 = new DoubleValue(p2.getDoubleValue());
                                if (n1 == null) {
                                }
                                return EvaluateResult.INSTANCE.getNULL();
                            default:
                                return EvaluateResultError.INSTANCE;
                        }
                    }
                };
            }
        };
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> arithmetic(final Function1<? super Double, ? extends EvaluateResult> function) {
        Intrinsics.checkNotNullParameter(function, "function");
        final Value.ValueTypeCase valueTypeCase1$iv$iv = Value.ValueTypeCase.INTEGER_VALUE;
        final Value.ValueTypeCase valueTypeCase2$iv$iv = Value.ValueTypeCase.DOUBLE_VALUE;
        return (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.UtilsKt$arithmetic$$inlined$arithmetic$2
            @Override // kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 1) {
                    throw Assert.fail("Function should have exactly 1 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                final Value.ValueTypeCase valueTypeCase = valueTypeCase1$iv$iv;
                final Value.ValueTypeCase valueTypeCase2 = valueTypeCase2$iv$iv;
                final Function1 function12 = function;
                final Function1 function13 = function;
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.UtilsKt$arithmetic$$inlined$arithmetic$2.1
                    @Override // kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        Intrinsics.checkNotNullParameter(input, "input");
                        EvaluateResult r = (EvaluateResult) function1.invoke(input);
                        if (r.getIsError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        Value v = r.getValue();
                        Value.ValueTypeCase valueTypeCase3 = v != null ? v.getValueTypeCase() : null;
                        int i = valueTypeCase3 == null ? -1 : UtilsKt.AnonymousClass2.AnonymousClass1.WhenMappings.$EnumSwitchMapping$0[valueTypeCase3.ordinal()];
                        if (i == -1 || i == 1) {
                            return EvaluateResult.INSTANCE.getNULL();
                        }
                        if (valueTypeCase3 == valueTypeCase) {
                            try {
                                long n = v.getIntegerValue();
                                return (EvaluateResult) function13.invoke(Double.valueOf(n));
                            } catch (Exception e) {
                                return EvaluateResultError.INSTANCE;
                            }
                        }
                        if (valueTypeCase3 != valueTypeCase2) {
                            return EvaluateResultError.INSTANCE;
                        }
                        try {
                            return (EvaluateResult) function12.invoke(Double.valueOf(v.getDoubleValue()));
                        } catch (Exception e2) {
                            return EvaluateResultError.INSTANCE;
                        }
                    }
                };
            }
        };
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> arithmetic(final Function1<? super Long, ? extends EvaluateResult> intOp, final Function1<? super Double, ? extends EvaluateResult> doubleOp) {
        Intrinsics.checkNotNullParameter(intOp, "intOp");
        Intrinsics.checkNotNullParameter(doubleOp, "doubleOp");
        final Value.ValueTypeCase valueTypeCase1$iv = Value.ValueTypeCase.INTEGER_VALUE;
        final Value.ValueTypeCase valueTypeCase2$iv = Value.ValueTypeCase.DOUBLE_VALUE;
        return (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.UtilsKt$arithmetic$$inlined$unaryFunctionType$1
            @Override // kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 1) {
                    throw Assert.fail("Function should have exactly 1 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                final Value.ValueTypeCase valueTypeCase = valueTypeCase1$iv;
                final Value.ValueTypeCase valueTypeCase2 = valueTypeCase2$iv;
                final Function1 function12 = intOp;
                final Function1 function13 = doubleOp;
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.UtilsKt$arithmetic$$inlined$unaryFunctionType$1.1
                    @Override // kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        Intrinsics.checkNotNullParameter(input, "input");
                        EvaluateResult r = (EvaluateResult) function1.invoke(input);
                        if (r.getIsError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        Value v = r.getValue();
                        Value.ValueTypeCase valueTypeCase3 = v != null ? v.getValueTypeCase() : null;
                        int i = valueTypeCase3 == null ? -1 : UtilsKt.AnonymousClass2.AnonymousClass1.WhenMappings.$EnumSwitchMapping$0[valueTypeCase3.ordinal()];
                        if (i == -1 || i == 1) {
                            return EvaluateResult.INSTANCE.getNULL();
                        }
                        if (valueTypeCase3 == valueTypeCase) {
                            try {
                                return (EvaluateResult) function12.invoke(Long.valueOf(v.getIntegerValue()));
                            } catch (Exception e) {
                                return EvaluateResultError.INSTANCE;
                            }
                        }
                        if (valueTypeCase3 == valueTypeCase2) {
                            try {
                                return (EvaluateResult) function13.invoke(Double.valueOf(v.getDoubleValue()));
                            } catch (Exception e2) {
                                return EvaluateResultError.INSTANCE;
                            }
                        }
                        return EvaluateResultError.INSTANCE;
                    }
                };
            }
        };
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> arithmeticNumberLong(final Function2<? super Long, ? super Long, ? extends EvaluateResult> intOp, final Function2<? super Double, ? super Long, ? extends EvaluateResult> doubleOp) {
        Intrinsics.checkNotNullParameter(intOp, "intOp");
        Intrinsics.checkNotNullParameter(doubleOp, "doubleOp");
        return (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.UtilsKt$arithmetic$$inlined$binaryValueValueFunction$2
            @Override // kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 2) {
                    throw Assert.fail("Function should have exactly 2 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                final Function1<? super MutableDocument, ? extends EvaluateResult> function12 = params.get(1);
                final Function2 function2 = intOp;
                final Function2 function22 = doubleOp;
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.UtilsKt$arithmetic$$inlined$binaryValueValueFunction$2.1
                    @Override // kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        LongValue n1;
                        Intrinsics.checkNotNullParameter(input, "input");
                        EvaluateResult v1 = (EvaluateResult) function1.invoke(input);
                        if (v1.getIsError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        EvaluateResult v2 = (EvaluateResult) function12.invoke(input);
                        if (v2.getIsError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        try {
                            Value p1 = v1.getValue();
                            Value p2 = v2.getValue();
                            Long n2 = null;
                            Value.ValueTypeCase valueTypeCase = p1 != null ? p1.getValueTypeCase() : null;
                            switch (valueTypeCase == null ? -1 : UtilsKt.WhenMappings.$EnumSwitchMapping$0[valueTypeCase.ordinal()]) {
                                case -1:
                                case 1:
                                    n1 = null;
                                    break;
                                case 5:
                                    n1 = new LongValue(p1.getIntegerValue());
                                    break;
                                case 6:
                                    n1 = new DoubleValue(p1.getDoubleValue());
                                    break;
                                default:
                                    return EvaluateResultError.INSTANCE;
                            }
                            Value.ValueTypeCase valueTypeCase2 = p2 != null ? p2.getValueTypeCase() : null;
                            switch (valueTypeCase2 != null ? UtilsKt.WhenMappings.$EnumSwitchMapping$0[valueTypeCase2.ordinal()] : -1) {
                                case -1:
                                case 1:
                                    break;
                                case 5:
                                    n2 = Long.valueOf(p2.getIntegerValue());
                                    break;
                                case 6:
                                    n2 = Long.valueOf((long) p2.getDoubleValue());
                                    break;
                                default:
                                    return EvaluateResultError.INSTANCE;
                            }
                            if (n1 != null && n2 != null) {
                                if (n1 instanceof LongValue) {
                                    return (EvaluateResult) function2.invoke(Long.valueOf(((LongValue) n1).getValue()), n2);
                                }
                                if (n1 instanceof DoubleValue) {
                                    return (EvaluateResult) function22.invoke(Double.valueOf(((DoubleValue) n1).getValue()), n2);
                                }
                                throw new NoWhenBranchMatchedException();
                            }
                            return EvaluateResult.INSTANCE.getNULL();
                        } catch (Exception e) {
                            return EvaluateResultError.INSTANCE;
                        }
                    }
                };
            }
        };
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> arithmetic(final Function2<? super Long, ? super Long, ? extends EvaluateResult> intOp, final Function2<? super Double, ? super Double, ? extends EvaluateResult> doubleOp) {
        Intrinsics.checkNotNullParameter(intOp, "intOp");
        Intrinsics.checkNotNullParameter(doubleOp, "doubleOp");
        return (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.UtilsKt$arithmetic$$inlined$binaryValueValueFunction$1
            @Override // kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 2) {
                    throw Assert.fail("Function should have exactly 2 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                final Function1<? super MutableDocument, ? extends EvaluateResult> function12 = params.get(1);
                final Function2 function2 = intOp;
                final Function2 function22 = doubleOp;
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.UtilsKt$arithmetic$$inlined$binaryValueValueFunction$1.1
                    @Override // kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        LongValue n1;
                        Intrinsics.checkNotNullParameter(input, "input");
                        EvaluateResult v1 = (EvaluateResult) function1.invoke(input);
                        if (v1.getIsError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        EvaluateResult v2 = (EvaluateResult) function12.invoke(input);
                        if (v2.getIsError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        try {
                            Value p1 = v1.getValue();
                            Value p2 = v2.getValue();
                            LongValue n2 = null;
                            Value.ValueTypeCase valueTypeCase = p1 != null ? p1.getValueTypeCase() : null;
                            switch (valueTypeCase == null ? -1 : UtilsKt.WhenMappings.$EnumSwitchMapping$0[valueTypeCase.ordinal()]) {
                                case -1:
                                case 1:
                                    n1 = null;
                                    break;
                                case 5:
                                    n1 = new LongValue(p1.getIntegerValue());
                                    break;
                                case 6:
                                    n1 = new DoubleValue(p1.getDoubleValue());
                                    break;
                                default:
                                    return EvaluateResultError.INSTANCE;
                            }
                            Value.ValueTypeCase valueTypeCase2 = p2 != null ? p2.getValueTypeCase() : null;
                            switch (valueTypeCase2 != null ? UtilsKt.WhenMappings.$EnumSwitchMapping$0[valueTypeCase2.ordinal()] : -1) {
                                case -1:
                                case 1:
                                    break;
                                case 5:
                                    n2 = new LongValue(p2.getIntegerValue());
                                    break;
                                case 6:
                                    n2 = new DoubleValue(p2.getDoubleValue());
                                    break;
                                default:
                                    return EvaluateResultError.INSTANCE;
                            }
                            if (n1 != null && n2 != null) {
                                if (!(n1 instanceof LongValue)) {
                                    if (n1 instanceof DoubleValue) {
                                        return n2 instanceof DoubleValue ? (EvaluateResult) function22.invoke(Double.valueOf(((DoubleValue) n1).getValue()), Double.valueOf(((DoubleValue) n2).getValue())) : n2 instanceof LongValue ? (EvaluateResult) function22.invoke(Double.valueOf(((DoubleValue) n1).getValue()), Double.valueOf(((LongValue) n2).getValue())) : EvaluateResultError.INSTANCE;
                                    }
                                    throw new NoWhenBranchMatchedException();
                                }
                                if (n2 instanceof LongValue) {
                                    return (EvaluateResult) function2.invoke(Long.valueOf(((LongValue) n1).getValue()), Long.valueOf(((LongValue) n2).getValue()));
                                }
                                if (n2 instanceof DoubleValue) {
                                    return (EvaluateResult) function22.invoke(Double.valueOf(((LongValue) n1).getValue()), Double.valueOf(((DoubleValue) n2).getValue()));
                                }
                                throw new NoWhenBranchMatchedException();
                            }
                            return EvaluateResult.INSTANCE.getNULL();
                        } catch (Exception e) {
                            return EvaluateResultError.INSTANCE;
                        }
                    }
                };
            }
        };
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> arithmetic(final Function2<? super Double, ? super Double, ? extends EvaluateResult> doubleOp) {
        Intrinsics.checkNotNullParameter(doubleOp, "doubleOp");
        return (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.UtilsKt$arithmetic$$inlined$arithmetic$1
            @Override // kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 2) {
                    throw Assert.fail("Function should have exactly 2 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                final Function1<? super MutableDocument, ? extends EvaluateResult> function12 = params.get(1);
                final Function2 function2 = doubleOp;
                final Function2 function22 = doubleOp;
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.UtilsKt$arithmetic$$inlined$arithmetic$1.1
                    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
                    /* JADX WARN: Removed duplicated region for block: B:49:0x00c0 A[ADDED_TO_REGION] */
                    /* JADX WARN: Removed duplicated region for block: B:79:0x0190 A[ADDED_TO_REGION, REMOVE] */
                    @Override // kotlin.jvm.functions.Function1
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                    */
                    public final EvaluateResult invoke(MutableDocument input) {
                        Value p2;
                        LongValue n2;
                        Value.ValueTypeCase valueTypeCase;
                        LongValue n1;
                        Value.ValueTypeCase valueTypeCase2;
                        Intrinsics.checkNotNullParameter(input, "input");
                        EvaluateResult v1 = (EvaluateResult) function1.invoke(input);
                        if (v1.getIsError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        EvaluateResult v2 = (EvaluateResult) function12.invoke(input);
                        if (v2.getIsError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        try {
                            Value p1 = v1.getValue();
                            p2 = v2.getValue();
                            n2 = null;
                            if (p1 != null) {
                                try {
                                    valueTypeCase = p1.getValueTypeCase();
                                } catch (Exception e) {
                                }
                            } else {
                                valueTypeCase = null;
                            }
                            try {
                                switch (valueTypeCase == null ? -1 : UtilsKt.WhenMappings.$EnumSwitchMapping$0[valueTypeCase.ordinal()]) {
                                    case -1:
                                    case 1:
                                        n1 = null;
                                        break;
                                    case 5:
                                        n1 = new LongValue(p1.getIntegerValue());
                                        break;
                                    case 6:
                                        n1 = new DoubleValue(p1.getDoubleValue());
                                        break;
                                    default:
                                        return EvaluateResultError.INSTANCE;
                                }
                                valueTypeCase2 = p2 != null ? p2.getValueTypeCase() : null;
                            } catch (Exception e2) {
                            }
                        } catch (Exception e3) {
                        }
                        switch (valueTypeCase2 != null ? UtilsKt.WhenMappings.$EnumSwitchMapping$0[valueTypeCase2.ordinal()] : -1) {
                            case -1:
                            case 1:
                                if (n1 == null || n2 == null) {
                                    return EvaluateResult.INSTANCE.getNULL();
                                }
                                if (!(n1 instanceof LongValue)) {
                                    if (n1 instanceof DoubleValue) {
                                        return n2 instanceof DoubleValue ? (EvaluateResult) function2.invoke(Double.valueOf(((DoubleValue) n1).getValue()), Double.valueOf(((DoubleValue) n2).getValue())) : n2 instanceof LongValue ? (EvaluateResult) function2.invoke(Double.valueOf(((DoubleValue) n1).getValue()), Double.valueOf(((LongValue) n2).getValue())) : EvaluateResultError.INSTANCE;
                                    }
                                    throw new NoWhenBranchMatchedException();
                                }
                                if (!(n2 instanceof LongValue)) {
                                    if (n2 instanceof DoubleValue) {
                                        return (EvaluateResult) function2.invoke(Double.valueOf(((LongValue) n1).getValue()), Double.valueOf(((DoubleValue) n2).getValue()));
                                    }
                                    throw new NoWhenBranchMatchedException();
                                }
                                long l1 = ((LongValue) n1).getValue();
                                long l2 = ((LongValue) n2).getValue();
                                try {
                                    return (EvaluateResult) function22.invoke(Double.valueOf(l1), Double.valueOf(l2));
                                } catch (Exception e4) {
                                }
                                return EvaluateResultError.INSTANCE;
                            case 5:
                                n2 = new LongValue(p2.getIntegerValue());
                                if (n1 == null) {
                                }
                                return EvaluateResult.INSTANCE.getNULL();
                            case 6:
                                n2 = new DoubleValue(p2.getDoubleValue());
                                if (n1 == null) {
                                }
                                return EvaluateResult.INSTANCE.getNULL();
                            default:
                                return EvaluateResultError.INSTANCE;
                        }
                    }
                };
            }
        };
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getNotImplemented() {
        return notImplemented;
    }
}
