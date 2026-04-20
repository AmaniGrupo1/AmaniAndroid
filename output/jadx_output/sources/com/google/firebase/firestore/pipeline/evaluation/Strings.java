package com.google.firebase.firestore.pipeline.evaluation;

import android.icu.lang.UCharacter;
import androidx.autofill.HintConstants;
import androidx.collection.SieveCacheKt;
import androidx.compose.runtime.ComposerImplKt;
import androidx.core.view.MotionEventCompat;
import com.google.common.base.CharMatcher;
import com.google.common.collect.ImmutableList;
import com.google.common.math.IntMath;
import com.google.common.primitives.Ints;
import com.google.firebase.firestore.Blob;
import com.google.firebase.firestore.model.MutableDocument;
import com.google.firebase.firestore.model.Values;
import com.google.firebase.firestore.pipeline.evaluation.EvaluateResult;
import com.google.firebase.firestore.pipeline.evaluation.Strings;
import com.google.firebase.firestore.pipeline.evaluation.UtilsKt;
import com.google.firebase.firestore.util.Assert;
import com.google.firebase.firestore.util.RegexUtils;
import com.google.firestore.v1.Value;
import com.google.protobuf.ByteString;
import com.google.re2j.Matcher;
import com.google.re2j.Pattern;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: Strings.kt */
/* JADX INFO: loaded from: classes22.dex */
@Metadata(d1 = {"\u0000P\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0012\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u001b\u001a\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0002\u001a\u0010\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0019\u001a\u00020\u001aH\u0002\u001a\u0010\u0010\u001e\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0002\u001a\u0010\u0010\u001f\u001a\u00020\u001a2\u0006\u0010\u0019\u001a\u00020\u001aH\u0002\u001a\u0010\u0010&\u001a\u00020'2\u0006\u0010\u0006\u001a\u00020'H\u0002\u001a\u0010\u0010(\u001a\u00020)2\u0006\u0010\u0006\u001a\u00020*H\u0002\u001a\u0017\u0010-\u001a\u0004\u0018\u00010.2\u0006\u0010/\u001a\u00020\u0007H\u0002¢\u0006\u0002\u00100\u001a\u0010\u0010G\u001a\u00020'2\u0006\u0010H\u001a\u00020'H\u0002\"w\u0010\u0000\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f\"w\u0010\r\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\f\"w\u0010\u000f\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\f\"w\u0010\u0011\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\f\"w\u0010\u0013\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\f\"w\u0010\u0015\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\f\"w\u0010\u001c\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\f\"w\u0010 \u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\f\"w\u0010\"\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b#\u0010\f\"w\u0010$\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b%\u0010\f\"w\u0010+\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b,\u0010\f\"w\u00101\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b2\u0010\f\"w\u00103\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b4\u0010\f\"w\u00105\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b6\u0010\f\"w\u00107\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b8\u0010\f\"w\u00109\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b:\u0010\f\"w\u0010;\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b<\u0010\f\"w\u0010=\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b>\u0010\f\"w\u0010?\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b@\u0010\f\"w\u0010A\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\bB\u0010\f\"w\u0010C\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\bD\u0010\f\"w\u0010E\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\bF\u0010\f¨\u0006I"}, d2 = {"evaluateStrConcat", "Lkotlin/Function1;", "", "Lcom/google/firebase/firestore/model/MutableDocument;", "Lkotlin/ParameterName;", HintConstants.AUTOFILL_HINT_NAME, "input", "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;", "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateDocument;", "params", "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateFunction;", "getEvaluateStrConcat", "()Lkotlin/jvm/functions/Function1;", "evaluateStrContains", "getEvaluateStrContains", "evaluateStartsWith", "getEvaluateStartsWith", "evaluateEndsWith", "getEvaluateEndsWith", "evaluateByteLength", "getEvaluateByteLength", "evaluateCharLength", "getEvaluateCharLength", "isUpperCaseImpl", "", "c", "", "toLowerCaseImpl", "evaluateToLowercase", "getEvaluateToLowercase", "isLowerCaseImpl", "toUpperCaseImpl", "evaluateToUppercase", "getEvaluateToUppercase", "evaluateReverse", "getEvaluateReverse", "evaluateStringReverse", "getEvaluateStringReverse", "stringReverse", "", "bytesReverse", "", "Lcom/google/protobuf/ByteString;", "evaluateSplit", "getEvaluateSplit", "getIntegerOrElse", "", Values.VECTOR_MAP_VECTORS_KEY, "(Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;)Ljava/lang/Long;", "evaluateSubstring", "getEvaluateSubstring", "evaluateTrim", "getEvaluateTrim", "evaluateLTrim", "getEvaluateLTrim", "evaluateRTrim", "getEvaluateRTrim", "evaluateReplaceAll", "getEvaluateReplaceAll", "evaluateReplaceFirst", "getEvaluateReplaceFirst", "evaluateRegexContains", "getEvaluateRegexContains", "evaluateRegexMatch", "getEvaluateRegexMatch", "evaluateRegexFind", "getEvaluateRegexFind", "evaluateRegexFindAll", "getEvaluateRegexFindAll", "evaluateLike", "getEvaluateLike", "likeToRegex", "like", "com.google.firebase-firebase-firestore"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class Strings {
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateByteLength;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateCharLength;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateEndsWith;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateLTrim;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateLike;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateRTrim;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateRegexContains;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateRegexFind;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateRegexFindAll;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateRegexMatch;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateReplaceAll;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateReplaceFirst;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateReverse;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateSplit;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateStartsWith;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateStrConcat;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateStrContains;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateStringReverse;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateSubstring;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateToLowercase;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateToUppercase;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateTrim;

    /* JADX INFO: compiled from: Strings.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Value.ValueTypeCase.values().length];
            try {
                iArr[Value.ValueTypeCase.STRING_VALUE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                iArr[Value.ValueTypeCase.BYTES_VALUE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                iArr[Value.ValueTypeCase.ARRAY_VALUE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    static {
        final Value.ValueTypeCase valueTypeCase$iv$iv = Value.ValueTypeCase.STRING_VALUE;
        evaluateStrConcat = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.Strings$special$$inlined$variadicStringFunction$1
            @Override // kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(final List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                final Value.ValueTypeCase valueTypeCase = valueTypeCase$iv$iv;
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.Strings$special$$inlined$variadicStringFunction$1.1
                    /* JADX WARN: Incorrect condition in loop: B:4:0x0021 */
                    @Override // kotlin.jvm.functions.Function1
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                    */
                    public final EvaluateResult invoke(MutableDocument input) {
                        Intrinsics.checkNotNullParameter(input, "input");
                        ArrayList values = new ArrayList(params.size());
                        Iterator it = params.iterator();
                        boolean nullFound = false;
                        while (nullFound) {
                            Function1 param = (Function1) it.next();
                            EvaluateResult p = (EvaluateResult) param.invoke(input);
                            if (p.getIsError()) {
                                return EvaluateResultError.INSTANCE;
                            }
                            Value value = p.getValue();
                            Value.ValueTypeCase valueTypeCase2 = value != null ? value.getValueTypeCase() : null;
                            int i = valueTypeCase2 == null ? -1 : UtilsKt.C07011.C01711.WhenMappings.$EnumSwitchMapping$0[valueTypeCase2.ordinal()];
                            if (i == -1 || i == 1) {
                                nullFound = true;
                            } else {
                                if (valueTypeCase2 != valueTypeCase) {
                                    return EvaluateResultError.INSTANCE;
                                }
                                Value p0 = p.getValue();
                                Intrinsics.checkNotNull(p0);
                                values.add(p0.getStringValue());
                            }
                        }
                        if (nullFound) {
                            return EvaluateResult.INSTANCE.getNULL();
                        }
                        int i2 = 0;
                        try {
                            ArrayList strings = values;
                            EvaluateResult.Companion companion = EvaluateResult.INSTANCE;
                            StringBuilder $this$evaluateStrConcat_u24lambda_u241_u24lambda_u240 = new StringBuilder();
                            ArrayList $this$forEach$iv = strings;
                            for (Object element$iv : $this$forEach$iv) {
                                $this$evaluateStrConcat_u24lambda_u241_u24lambda_u240.append((String) element$iv);
                                i2 = i2;
                            }
                            String string = $this$evaluateStrConcat_u24lambda_u241_u24lambda_u240.toString();
                            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
                            return companion.string(string);
                        } catch (Exception e) {
                            return EvaluateResultError.INSTANCE;
                        }
                    }
                };
            }
        };
        final Value.ValueTypeCase valueTypeCase1$iv$iv = Value.ValueTypeCase.STRING_VALUE;
        final Value.ValueTypeCase valueTypeCase2$iv$iv = Value.ValueTypeCase.STRING_VALUE;
        evaluateStrContains = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.Strings$special$$inlined$binaryStringStringFunction$1
            @Override // kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(final List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 2) {
                    throw Assert.fail("Function should have exactly 2 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Value.ValueTypeCase valueTypeCase = valueTypeCase1$iv$iv;
                final Value.ValueTypeCase valueTypeCase2 = valueTypeCase2$iv$iv;
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.Strings$special$$inlined$binaryStringStringFunction$1.1
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
                            String value = v1.getStringValue();
                            String substring = v2.getStringValue();
                            return EvaluateResult.INSTANCE.m8435boolean(StringsKt.contains$default((CharSequence) value, (CharSequence) substring, false, 2, (Object) null));
                        } catch (Exception e) {
                            return EvaluateResultError.INSTANCE;
                        }
                    }
                };
            }
        };
        final Value.ValueTypeCase valueTypeCase1$iv$iv2 = Value.ValueTypeCase.STRING_VALUE;
        final Value.ValueTypeCase valueTypeCase2$iv$iv2 = Value.ValueTypeCase.STRING_VALUE;
        evaluateStartsWith = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.Strings$special$$inlined$binaryStringStringFunction$2
            @Override // kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(final List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 2) {
                    throw Assert.fail("Function should have exactly 2 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Value.ValueTypeCase valueTypeCase = valueTypeCase1$iv$iv2;
                final Value.ValueTypeCase valueTypeCase2 = valueTypeCase2$iv$iv2;
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.Strings$special$$inlined$binaryStringStringFunction$2.1
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
                            String value = v1.getStringValue();
                            String prefix = v2.getStringValue();
                            return EvaluateResult.INSTANCE.m8435boolean(StringsKt.startsWith$default(value, prefix, false, 2, (Object) null));
                        } catch (Exception e) {
                            return EvaluateResultError.INSTANCE;
                        }
                    }
                };
            }
        };
        final Value.ValueTypeCase valueTypeCase1$iv$iv3 = Value.ValueTypeCase.STRING_VALUE;
        final Value.ValueTypeCase valueTypeCase2$iv$iv3 = Value.ValueTypeCase.STRING_VALUE;
        evaluateEndsWith = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.Strings$special$$inlined$binaryStringStringFunction$3
            @Override // kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(final List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 2) {
                    throw Assert.fail("Function should have exactly 2 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Value.ValueTypeCase valueTypeCase = valueTypeCase1$iv$iv3;
                final Value.ValueTypeCase valueTypeCase2 = valueTypeCase2$iv$iv3;
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.Strings$special$$inlined$binaryStringStringFunction$3.1
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
                            String value = v1.getStringValue();
                            String suffix = v2.getStringValue();
                            return EvaluateResult.INSTANCE.m8435boolean(StringsKt.endsWith$default(value, suffix, false, 2, (Object) null));
                        } catch (Exception e) {
                            return EvaluateResultError.INSTANCE;
                        }
                    }
                };
            }
        };
        final Value.ValueTypeCase valueTypeCase1$iv$iv4 = Value.ValueTypeCase.BYTES_VALUE;
        final Value.ValueTypeCase valueTypeCase2$iv$iv4 = Value.ValueTypeCase.STRING_VALUE;
        evaluateByteLength = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.Strings$special$$inlined$unaryFunction$1
            @Override // kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 1) {
                    throw Assert.fail("Function should have exactly 1 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                final Value.ValueTypeCase valueTypeCase = valueTypeCase1$iv$iv4;
                final Value.ValueTypeCase valueTypeCase2 = valueTypeCase2$iv$iv4;
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.Strings$special$$inlined$unaryFunction$1.1
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
                                ByteString b = v.getBytesValue();
                                return EvaluateResult.INSTANCE.m8437long(b.size());
                            } catch (Exception e) {
                                return EvaluateResultError.INSTANCE;
                            }
                        }
                        if (valueTypeCase3 != valueTypeCase2) {
                            return EvaluateResultError.INSTANCE;
                        }
                        try {
                            String s = v.getStringValue();
                            EvaluateResult.Companion companion = EvaluateResult.INSTANCE;
                            byte[] bytes = s.getBytes(Charsets.UTF_8);
                            Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
                            return companion.m8437long(bytes.length);
                        } catch (Exception e2) {
                            return EvaluateResultError.INSTANCE;
                        }
                    }
                };
            }
        };
        final Value.ValueTypeCase valueTypeCase$iv$iv2 = Value.ValueTypeCase.STRING_VALUE;
        evaluateCharLength = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.Strings$special$$inlined$unaryStringFunction$1
            @Override // kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 1) {
                    throw Assert.fail("Function should have exactly 1 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                final Value.ValueTypeCase valueTypeCase = valueTypeCase$iv$iv2;
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.Strings$special$$inlined$unaryStringFunction$1.1
                    @Override // kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        EvaluateResultValue evaluateResultValue;
                        EvaluateResultError evaluateResultErrorM8437long;
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
                                    evaluateResultErrorM8437long = EvaluateResult.INSTANCE.m8437long(s.codePointCount(0, s.length()));
                                } catch (Exception e) {
                                    evaluateResultErrorM8437long = EvaluateResultError.INSTANCE;
                                }
                                evaluateResultValue = evaluateResultErrorM8437long;
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
        evaluateToLowercase = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.Strings$special$$inlined$unaryValueFunction$1
            @Override // kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 1) {
                    throw Assert.fail("Function should have exactly 1 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.Strings$special$$inlined$unaryValueFunction$1.1
                    @Override // kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        EvaluateResult r;
                        EvaluateResultValue evaluateResultValueString;
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
                                Value value2 = r.getValue();
                                Intrinsics.checkNotNull(value2);
                                Value.ValueTypeCase valueTypeCase2 = value2.getValueTypeCase();
                                switch (valueTypeCase2 != null ? Strings.WhenMappings.$EnumSwitchMapping$0[valueTypeCase2.ordinal()] : -1) {
                                    case 1:
                                        EvaluateResult.Companion companion = EvaluateResult.INSTANCE;
                                        String stringValue = value2.getStringValue();
                                        Intrinsics.checkNotNullExpressionValue(stringValue, "getStringValue(...)");
                                        String lowerCase = stringValue.toLowerCase(Locale.ROOT);
                                        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
                                        evaluateResultValueString = companion.string(lowerCase);
                                        break;
                                    case 2:
                                        byte[] bytes = value2.getBytesValue().toByteArray();
                                        Intrinsics.checkNotNullExpressionValue(bytes, "toByteArray(...)");
                                        int length = bytes.length;
                                        for (int i = 0; i < length; i++) {
                                            bytes[i] = Strings.isUpperCaseImpl(bytes[i]) ? (byte) Strings.toLowerCaseImpl(bytes[i]) : bytes[i];
                                        }
                                        evaluateResultValueString = EvaluateResult.INSTANCE.value(Values.encodeValue(bytes));
                                        break;
                                    default:
                                        evaluateResultValueString = EvaluateResultError.INSTANCE;
                                        break;
                                }
                                break;
                        }
                        return EvaluateResultError.INSTANCE;
                    }
                };
            }
        };
        evaluateToUppercase = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.Strings$special$$inlined$unaryValueFunction$2
            @Override // kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 1) {
                    throw Assert.fail("Function should have exactly 1 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.Strings$special$$inlined$unaryValueFunction$2.1
                    @Override // kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        EvaluateResult r;
                        EvaluateResultValue evaluateResultValueString;
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
                                Value value2 = r.getValue();
                                Intrinsics.checkNotNull(value2);
                                Value.ValueTypeCase valueTypeCase2 = value2.getValueTypeCase();
                                switch (valueTypeCase2 != null ? Strings.WhenMappings.$EnumSwitchMapping$0[valueTypeCase2.ordinal()] : -1) {
                                    case 1:
                                        EvaluateResult.Companion companion = EvaluateResult.INSTANCE;
                                        String stringValue = value2.getStringValue();
                                        Intrinsics.checkNotNullExpressionValue(stringValue, "getStringValue(...)");
                                        String upperCase = stringValue.toUpperCase(Locale.ROOT);
                                        Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
                                        evaluateResultValueString = companion.string(upperCase);
                                        break;
                                    case 2:
                                        byte[] bytes = value2.getBytesValue().toByteArray();
                                        Intrinsics.checkNotNullExpressionValue(bytes, "toByteArray(...)");
                                        int length = bytes.length;
                                        for (int i = 0; i < length; i++) {
                                            bytes[i] = Strings.isLowerCaseImpl(bytes[i]) ? (byte) Strings.toUpperCaseImpl(bytes[i]) : bytes[i];
                                        }
                                        evaluateResultValueString = EvaluateResult.INSTANCE.value(Values.encodeValue(bytes));
                                        break;
                                    default:
                                        evaluateResultValueString = EvaluateResultError.INSTANCE;
                                        break;
                                }
                                break;
                        }
                        return EvaluateResultError.INSTANCE;
                    }
                };
            }
        };
        evaluateReverse = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.Strings$special$$inlined$unaryValueFunction$3
            @Override // kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 1) {
                    throw Assert.fail("Function should have exactly 1 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.Strings$special$$inlined$unaryValueFunction$3.1
                    @Override // kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        EvaluateResult r;
                        EvaluateResultValue evaluateResultValueString;
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
                                Value value2 = r.getValue();
                                Intrinsics.checkNotNull(value2);
                                Value.ValueTypeCase valueTypeCase2 = value2.getValueTypeCase();
                                switch (valueTypeCase2 != null ? Strings.WhenMappings.$EnumSwitchMapping$0[valueTypeCase2.ordinal()] : -1) {
                                    case 1:
                                        EvaluateResult.Companion companion = EvaluateResult.INSTANCE;
                                        String stringValue = value2.getStringValue();
                                        Intrinsics.checkNotNullExpressionValue(stringValue, "getStringValue(...)");
                                        evaluateResultValueString = companion.string(Strings.stringReverse(stringValue));
                                        break;
                                    case 2:
                                        EvaluateResult.Companion companion2 = EvaluateResult.INSTANCE;
                                        ByteString bytesValue = value2.getBytesValue();
                                        Intrinsics.checkNotNullExpressionValue(bytesValue, "getBytesValue(...)");
                                        Blob blobFromBytes = Blob.fromBytes(Strings.bytesReverse(bytesValue));
                                        Intrinsics.checkNotNullExpressionValue(blobFromBytes, "fromBytes(...)");
                                        evaluateResultValueString = companion2.value(Values.encodeValue(blobFromBytes));
                                        break;
                                    case 3:
                                        EvaluateResult.Companion companion3 = EvaluateResult.INSTANCE;
                                        List<Value> valuesList = value2.getArrayValue().getValuesList();
                                        Intrinsics.checkNotNullExpressionValue(valuesList, "getValuesList(...)");
                                        evaluateResultValueString = companion3.value(Values.encodeValue(CollectionsKt.reversed(valuesList)));
                                        break;
                                    default:
                                        evaluateResultValueString = EvaluateResultError.INSTANCE;
                                        break;
                                }
                                break;
                        }
                        return EvaluateResultError.INSTANCE;
                    }
                };
            }
        };
        evaluateStringReverse = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.Strings$special$$inlined$unaryValueFunction$4
            @Override // kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 1) {
                    throw Assert.fail("Function should have exactly 1 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.Strings$special$$inlined$unaryValueFunction$4.1
                    @Override // kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        EvaluateResult r;
                        EvaluateResultValue evaluateResultValueString;
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
                                Value value2 = r.getValue();
                                Intrinsics.checkNotNull(value2);
                                Value.ValueTypeCase valueTypeCase2 = value2.getValueTypeCase();
                                switch (valueTypeCase2 != null ? Strings.WhenMappings.$EnumSwitchMapping$0[valueTypeCase2.ordinal()] : -1) {
                                    case 1:
                                        EvaluateResult.Companion companion = EvaluateResult.INSTANCE;
                                        String stringValue = value2.getStringValue();
                                        Intrinsics.checkNotNullExpressionValue(stringValue, "getStringValue(...)");
                                        evaluateResultValueString = companion.string(Strings.stringReverse(stringValue));
                                        break;
                                    case 2:
                                        EvaluateResult.Companion companion2 = EvaluateResult.INSTANCE;
                                        ByteString bytesValue = value2.getBytesValue();
                                        Intrinsics.checkNotNullExpressionValue(bytesValue, "getBytesValue(...)");
                                        Blob blobFromBytes = Blob.fromBytes(Strings.bytesReverse(bytesValue));
                                        Intrinsics.checkNotNullExpressionValue(blobFromBytes, "fromBytes(...)");
                                        evaluateResultValueString = companion2.value(Values.encodeValue(blobFromBytes));
                                        break;
                                    default:
                                        evaluateResultValueString = EvaluateResultError.INSTANCE;
                                        break;
                                }
                                break;
                        }
                        return EvaluateResultError.INSTANCE;
                    }
                };
            }
        };
        evaluateSplit = UtilsKt.getNotImplemented();
        evaluateSubstring = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.Strings$special$$inlined$ternaryLazyFunction$1
            @Override // kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 3) {
                    throw Assert.fail("Function should have exactly 3 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                final Function1<? super MutableDocument, ? extends EvaluateResult> function12 = params.get(1);
                final Function1<? super MutableDocument, ? extends EvaluateResult> function13 = params.get(2);
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.Strings$special$$inlined$ternaryLazyFunction$1.1
                    @Override // kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(final MutableDocument input) {
                        Function0<EvaluateResult> function0;
                        Function0<EvaluateResult> function02;
                        Long integerOrElse;
                        Intrinsics.checkNotNullParameter(input, "input");
                        final Function1 function14 = function1;
                        final Function1 function15 = function12;
                        final Function1 function16 = function13;
                        try {
                            Function0<EvaluateResult> function03 = new Function0<EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.Strings$special$.inlined.ternaryLazyFunction.1.1.1
                                /* JADX WARN: Can't rename method to resolve collision */
                                @Override // kotlin.jvm.functions.Function0
                                public final EvaluateResult invoke() {
                                    return (EvaluateResult) function14.invoke(input);
                                }
                            };
                            Function0<EvaluateResult> function04 = new Function0<EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.Strings$special$.inlined.ternaryLazyFunction.1.1.2
                                /* JADX WARN: Can't rename method to resolve collision */
                                @Override // kotlin.jvm.functions.Function0
                                public final EvaluateResult invoke() {
                                    return (EvaluateResult) function15.invoke(input);
                                }
                            };
                            function0 = new Function0<EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.Strings$special$.inlined.ternaryLazyFunction.1.1.3
                                /* JADX WARN: Can't rename method to resolve collision */
                                @Override // kotlin.jvm.functions.Function0
                                public final EvaluateResult invoke() {
                                    return (EvaluateResult) function16.invoke(input);
                                }
                            };
                            function02 = function03;
                            integerOrElse = Strings.getIntegerOrElse(function04.invoke());
                        } catch (Exception e) {
                            return EvaluateResultError.INSTANCE;
                        }
                        if (integerOrElse == null) {
                            return EvaluateResultError.INSTANCE;
                        }
                        long start = integerOrElse.longValue();
                        Long integerOrElse2 = Strings.getIntegerOrElse(function0.invoke());
                        if (integerOrElse2 == null) {
                            return EvaluateResultError.INSTANCE;
                        }
                        long length = integerOrElse2.longValue();
                        if (length < 0) {
                            return EvaluateResultError.INSTANCE;
                        }
                        Value str = function02.invoke().getValue();
                        Value.ValueTypeCase valueTypeCase = str != null ? str.getValueTypeCase() : null;
                        switch (valueTypeCase == null ? -1 : Strings.WhenMappings.$EnumSwitchMapping$0[valueTypeCase.ordinal()]) {
                            case 1:
                                String text = str.getStringValue();
                                if (start < 0) {
                                    Intrinsics.checkNotNull(text);
                                    start = Math.max(0L, ((long) text.codePointCount(0, text.length())) + start);
                                }
                                Intrinsics.checkNotNull(text);
                                int codePointCount = text.codePointCount(0, text.length());
                                if (start < codePointCount) {
                                    StringBuilder substring = new StringBuilder();
                                    int curIndex = text.offsetByCodePoints(0, (int) Math.min(start, SieveCacheKt.NodeLinkMask));
                                    long i = 0;
                                    while (i < length) {
                                        int codePointCount2 = codePointCount;
                                        if (curIndex >= text.length()) {
                                            EvaluateResult.Companion companion = EvaluateResult.INSTANCE;
                                            String string = substring.toString();
                                            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
                                        } else {
                                            substring.append(Character.toChars(text.codePointAt(curIndex)));
                                            curIndex = text.offsetByCodePoints(curIndex, 1);
                                            i++;
                                            codePointCount = codePointCount2;
                                            function0 = function0;
                                        }
                                        break;
                                    }
                                    EvaluateResult.Companion companion2 = EvaluateResult.INSTANCE;
                                    String string2 = substring.toString();
                                    Intrinsics.checkNotNullExpressionValue(string2, "toString(...)");
                                }
                                break;
                            case 2:
                                ByteString bytes = str.getBytesValue();
                                int bytesCount = bytes.size() - 1;
                                if (start < 0) {
                                    start = Math.max(0L, ((long) bytesCount) + start + 1);
                                }
                                if (bytesCount >= start) {
                                    int end = Math.min(Integer.MAX_VALUE, Math.min(IntMath.saturatedAdd(Ints.saturatedCast(start), Ints.saturatedCast(length)), bytesCount + 1));
                                    EvaluateResult.Companion companion3 = EvaluateResult.INSTANCE;
                                    Blob blobFromByteString = Blob.fromByteString(bytes.substring((int) start, end));
                                    Intrinsics.checkNotNullExpressionValue(blobFromByteString, "fromByteString(...)");
                                }
                                break;
                        }
                        return EvaluateResultError.INSTANCE;
                    }
                };
            }
        };
        evaluateTrim = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.Strings$special$$inlined$unaryValueFunction$5
            @Override // kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 1) {
                    throw Assert.fail("Function should have exactly 1 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.Strings$special$$inlined$unaryValueFunction$5.1
                    @Override // kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        EvaluateResult r;
                        EvaluateResultValue evaluateResultValueString;
                        EvaluateResultValue evaluateResultValueValue;
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
                                Value value2 = r.getValue();
                                Intrinsics.checkNotNull(value2);
                                Value.ValueTypeCase valueTypeCase2 = value2.getValueTypeCase();
                                switch (valueTypeCase2 != null ? Strings.WhenMappings.$EnumSwitchMapping$0[valueTypeCase2.ordinal()] : -1) {
                                    case 1:
                                        EvaluateResult.Companion companion = EvaluateResult.INSTANCE;
                                        String strTrimFrom = CharMatcher.whitespace().trimFrom(value2.getStringValue());
                                        Intrinsics.checkNotNullExpressionValue(strTrimFrom, "trimFrom(...)");
                                        evaluateResultValueString = companion.string(strTrimFrom);
                                        break;
                                    case 2:
                                        ByteString bytes = value2.getBytesValue();
                                        int startIndex = 0;
                                        while (startIndex < bytes.size() && Character.isWhitespace(bytes.byteAt(startIndex))) {
                                            startIndex++;
                                        }
                                        int endIndex = bytes.size() - 1;
                                        while (endIndex >= startIndex && Character.isWhitespace(bytes.byteAt(endIndex))) {
                                            endIndex--;
                                        }
                                        if (startIndex > endIndex) {
                                            EvaluateResult.Companion companion2 = EvaluateResult.INSTANCE;
                                            byte[] byteArray = ByteString.EMPTY.toByteArray();
                                            Intrinsics.checkNotNullExpressionValue(byteArray, "toByteArray(...)");
                                            evaluateResultValueValue = companion2.value(Values.encodeValue(byteArray));
                                        } else {
                                            EvaluateResult.Companion companion3 = EvaluateResult.INSTANCE;
                                            byte[] byteArray2 = bytes.substring(startIndex, endIndex + 1).toByteArray();
                                            Intrinsics.checkNotNullExpressionValue(byteArray2, "toByteArray(...)");
                                            evaluateResultValueValue = companion3.value(Values.encodeValue(byteArray2));
                                        }
                                        evaluateResultValueString = evaluateResultValueValue;
                                        break;
                                    default:
                                        evaluateResultValueString = EvaluateResultError.INSTANCE;
                                        break;
                                }
                                break;
                        }
                        return EvaluateResultError.INSTANCE;
                    }
                };
            }
        };
        evaluateLTrim = UtilsKt.getNotImplemented();
        evaluateRTrim = UtilsKt.getNotImplemented();
        evaluateReplaceAll = UtilsKt.getNotImplemented();
        evaluateReplaceFirst = UtilsKt.getNotImplemented();
        final Value.ValueTypeCase valueTypeCase1$iv = Value.ValueTypeCase.STRING_VALUE;
        final Value.ValueTypeCase valueTypeCase2$iv = Value.ValueTypeCase.STRING_VALUE;
        evaluateRegexContains = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.Strings$special$$inlined$binaryFunctionConstructorType$1
            @Override // kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 2) {
                    throw Assert.fail("Function should have exactly 2 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                final Function1<? super MutableDocument, ? extends EvaluateResult> function12 = params.get(1);
                final Function2 f = new Function2<String, String, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.Strings$evaluateRegexContains$3$1
                    @Override // kotlin.jvm.functions.Function2
                    public final EvaluateResult invoke(String value, String patternString) {
                        Pattern pattern;
                        Intrinsics.checkNotNullParameter(value, "value");
                        Intrinsics.checkNotNullParameter(patternString, "patternString");
                        try {
                            pattern = Pattern.compile(patternString);
                        } catch (Exception e) {
                            pattern = null;
                        }
                        return pattern == null ? EvaluateResultError.INSTANCE : EvaluateResult.INSTANCE.m8435boolean(pattern.matcher(value).find());
                    }
                };
                final Value.ValueTypeCase valueTypeCase = valueTypeCase1$iv;
                final Value.ValueTypeCase valueTypeCase2 = valueTypeCase2$iv;
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.Strings$special$$inlined$binaryFunctionConstructorType$1.1
                    @Override // kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        Value v1Ready;
                        Intrinsics.checkNotNullParameter(input, "input");
                        EvaluateResult v1 = (EvaluateResult) function1.invoke(input);
                        if (v1.getIsError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        EvaluateResult v2 = (EvaluateResult) function12.invoke(input);
                        if (v2.getIsError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        Value value = v1.getValue();
                        Value v2Ready = null;
                        Value.ValueTypeCase valueTypeCase3 = value != null ? value.getValueTypeCase() : null;
                        int i = valueTypeCase3 == null ? -1 : UtilsKt.AnonymousClass1.C01651.WhenMappings.$EnumSwitchMapping$0[valueTypeCase3.ordinal()];
                        if (i == -1 || i == 1) {
                            v1Ready = null;
                        } else {
                            if (valueTypeCase3 != valueTypeCase) {
                                return EvaluateResultError.INSTANCE;
                            }
                            v1Ready = v1.getValue();
                        }
                        Value value2 = v2.getValue();
                        Value.ValueTypeCase valueTypeCase4 = value2 != null ? value2.getValueTypeCase() : null;
                        int i2 = valueTypeCase4 == null ? -1 : UtilsKt.AnonymousClass1.C01651.WhenMappings.$EnumSwitchMapping$0[valueTypeCase4.ordinal()];
                        if (i2 != -1 && i2 != 1) {
                            if (valueTypeCase4 != valueTypeCase2) {
                                return EvaluateResultError.INSTANCE;
                            }
                            v2Ready = v2.getValue();
                        }
                        if (v1Ready == null || v2Ready == null) {
                            return EvaluateResult.INSTANCE.getNULL();
                        }
                        Value p0 = v1Ready;
                        Value p02 = v2Ready;
                        return (EvaluateResult) f.invoke(p0.getStringValue(), p02.getStringValue());
                    }
                };
            }
        };
        final Value.ValueTypeCase valueTypeCase1$iv2 = Value.ValueTypeCase.STRING_VALUE;
        final Value.ValueTypeCase valueTypeCase2$iv2 = Value.ValueTypeCase.STRING_VALUE;
        evaluateRegexMatch = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.Strings$special$$inlined$binaryFunctionConstructorType$2
            @Override // kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 2) {
                    throw Assert.fail("Function should have exactly 2 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                final Function1<? super MutableDocument, ? extends EvaluateResult> function12 = params.get(1);
                final Function2 f = new Function2<String, String, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.Strings$evaluateRegexMatch$3$1
                    @Override // kotlin.jvm.functions.Function2
                    public final EvaluateResult invoke(String value, String patternString) {
                        Pattern pattern;
                        Intrinsics.checkNotNullParameter(value, "value");
                        Intrinsics.checkNotNullParameter(patternString, "patternString");
                        try {
                            pattern = Pattern.compile(patternString);
                        } catch (Exception e) {
                            pattern = null;
                        }
                        return pattern == null ? EvaluateResultError.INSTANCE : EvaluateResult.INSTANCE.m8435boolean(pattern.matches(value));
                    }
                };
                final Value.ValueTypeCase valueTypeCase = valueTypeCase1$iv2;
                final Value.ValueTypeCase valueTypeCase2 = valueTypeCase2$iv2;
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.Strings$special$$inlined$binaryFunctionConstructorType$2.1
                    @Override // kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        Value v1Ready;
                        Intrinsics.checkNotNullParameter(input, "input");
                        EvaluateResult v1 = (EvaluateResult) function1.invoke(input);
                        if (v1.getIsError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        EvaluateResult v2 = (EvaluateResult) function12.invoke(input);
                        if (v2.getIsError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        Value value = v1.getValue();
                        Value v2Ready = null;
                        Value.ValueTypeCase valueTypeCase3 = value != null ? value.getValueTypeCase() : null;
                        int i = valueTypeCase3 == null ? -1 : UtilsKt.AnonymousClass1.C01651.WhenMappings.$EnumSwitchMapping$0[valueTypeCase3.ordinal()];
                        if (i == -1 || i == 1) {
                            v1Ready = null;
                        } else {
                            if (valueTypeCase3 != valueTypeCase) {
                                return EvaluateResultError.INSTANCE;
                            }
                            v1Ready = v1.getValue();
                        }
                        Value value2 = v2.getValue();
                        Value.ValueTypeCase valueTypeCase4 = value2 != null ? value2.getValueTypeCase() : null;
                        int i2 = valueTypeCase4 == null ? -1 : UtilsKt.AnonymousClass1.C01651.WhenMappings.$EnumSwitchMapping$0[valueTypeCase4.ordinal()];
                        if (i2 != -1 && i2 != 1) {
                            if (valueTypeCase4 != valueTypeCase2) {
                                return EvaluateResultError.INSTANCE;
                            }
                            v2Ready = v2.getValue();
                        }
                        if (v1Ready == null || v2Ready == null) {
                            return EvaluateResult.INSTANCE.getNULL();
                        }
                        Value p0 = v1Ready;
                        Value p02 = v2Ready;
                        return (EvaluateResult) f.invoke(p0.getStringValue(), p02.getStringValue());
                    }
                };
            }
        };
        final Value.ValueTypeCase valueTypeCase1$iv3 = Value.ValueTypeCase.STRING_VALUE;
        final Value.ValueTypeCase valueTypeCase2$iv3 = Value.ValueTypeCase.STRING_VALUE;
        evaluateRegexFind = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.Strings$special$$inlined$binaryFunctionConstructorType$3
            @Override // kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 2) {
                    throw Assert.fail("Function should have exactly 2 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                final Function1<? super MutableDocument, ? extends EvaluateResult> function12 = params.get(1);
                final Function2 f = new Function2<String, String, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.Strings$evaluateRegexFind$3$1
                    @Override // kotlin.jvm.functions.Function2
                    public final EvaluateResult invoke(String value, String patternString) {
                        Pattern pattern;
                        EvaluateResultValue evaluateResultValueValue;
                        Intrinsics.checkNotNullParameter(value, "value");
                        Intrinsics.checkNotNullParameter(patternString, "patternString");
                        try {
                            pattern = Pattern.compile(patternString);
                        } catch (Exception e) {
                            pattern = null;
                        }
                        if (pattern == null) {
                            return EvaluateResultError.INSTANCE;
                        }
                        Matcher matcher = pattern.matcher(value);
                        if (matcher.find()) {
                            try {
                                EvaluateResult.Companion companion = EvaluateResult.INSTANCE;
                                RegexUtils.Companion companion2 = RegexUtils.INSTANCE;
                                Intrinsics.checkNotNull(matcher);
                                evaluateResultValueValue = companion.value(companion2.handleMatch(matcher));
                            } catch (IllegalArgumentException e2) {
                                evaluateResultValueValue = EvaluateResultError.INSTANCE;
                            }
                            return evaluateResultValueValue;
                        }
                        return EvaluateResult.INSTANCE.getNULL();
                    }
                };
                final Value.ValueTypeCase valueTypeCase = valueTypeCase1$iv3;
                final Value.ValueTypeCase valueTypeCase2 = valueTypeCase2$iv3;
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.Strings$special$$inlined$binaryFunctionConstructorType$3.1
                    @Override // kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        Value v1Ready;
                        Intrinsics.checkNotNullParameter(input, "input");
                        EvaluateResult v1 = (EvaluateResult) function1.invoke(input);
                        if (v1.getIsError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        EvaluateResult v2 = (EvaluateResult) function12.invoke(input);
                        if (v2.getIsError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        Value value = v1.getValue();
                        Value v2Ready = null;
                        Value.ValueTypeCase valueTypeCase3 = value != null ? value.getValueTypeCase() : null;
                        int i = valueTypeCase3 == null ? -1 : UtilsKt.AnonymousClass1.C01651.WhenMappings.$EnumSwitchMapping$0[valueTypeCase3.ordinal()];
                        if (i == -1 || i == 1) {
                            v1Ready = null;
                        } else {
                            if (valueTypeCase3 != valueTypeCase) {
                                return EvaluateResultError.INSTANCE;
                            }
                            v1Ready = v1.getValue();
                        }
                        Value value2 = v2.getValue();
                        Value.ValueTypeCase valueTypeCase4 = value2 != null ? value2.getValueTypeCase() : null;
                        int i2 = valueTypeCase4 == null ? -1 : UtilsKt.AnonymousClass1.C01651.WhenMappings.$EnumSwitchMapping$0[valueTypeCase4.ordinal()];
                        if (i2 != -1 && i2 != 1) {
                            if (valueTypeCase4 != valueTypeCase2) {
                                return EvaluateResultError.INSTANCE;
                            }
                            v2Ready = v2.getValue();
                        }
                        if (v1Ready == null || v2Ready == null) {
                            return EvaluateResult.INSTANCE.getNULL();
                        }
                        Value p0 = v1Ready;
                        Value p02 = v2Ready;
                        return (EvaluateResult) f.invoke(p0.getStringValue(), p02.getStringValue());
                    }
                };
            }
        };
        final Value.ValueTypeCase valueTypeCase1$iv4 = Value.ValueTypeCase.STRING_VALUE;
        final Value.ValueTypeCase valueTypeCase2$iv4 = Value.ValueTypeCase.STRING_VALUE;
        evaluateRegexFindAll = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.Strings$special$$inlined$binaryFunctionConstructorType$4
            @Override // kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 2) {
                    throw Assert.fail("Function should have exactly 2 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                final Function1<? super MutableDocument, ? extends EvaluateResult> function12 = params.get(1);
                final Function2 f = new Function2<String, String, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.Strings$evaluateRegexFindAll$3$1
                    @Override // kotlin.jvm.functions.Function2
                    public final EvaluateResult invoke(String value, String patternString) {
                        Pattern pattern;
                        EvaluateResultValue list;
                        Intrinsics.checkNotNullParameter(value, "value");
                        Intrinsics.checkNotNullParameter(patternString, "patternString");
                        try {
                            pattern = Pattern.compile(patternString);
                        } catch (Exception e) {
                            pattern = null;
                        }
                        if (pattern == null) {
                            return EvaluateResultError.INSTANCE;
                        }
                        ImmutableList.Builder builder = ImmutableList.builder();
                        Matcher matcher = pattern.matcher(value);
                        while (matcher.find()) {
                            try {
                                RegexUtils.Companion companion = RegexUtils.INSTANCE;
                                Intrinsics.checkNotNull(matcher);
                                builder.add(companion.handleMatch(matcher));
                            } catch (IllegalArgumentException e2) {
                                list = EvaluateResultError.INSTANCE;
                            }
                        }
                        EvaluateResult.Companion companion2 = EvaluateResult.INSTANCE;
                        ImmutableList immutableListBuild = builder.build();
                        Intrinsics.checkNotNullExpressionValue(immutableListBuild, "build(...)");
                        list = companion2.list(immutableListBuild);
                        return list;
                    }
                };
                final Value.ValueTypeCase valueTypeCase = valueTypeCase1$iv4;
                final Value.ValueTypeCase valueTypeCase2 = valueTypeCase2$iv4;
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.Strings$special$$inlined$binaryFunctionConstructorType$4.1
                    @Override // kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        Value v1Ready;
                        Intrinsics.checkNotNullParameter(input, "input");
                        EvaluateResult v1 = (EvaluateResult) function1.invoke(input);
                        if (v1.getIsError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        EvaluateResult v2 = (EvaluateResult) function12.invoke(input);
                        if (v2.getIsError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        Value value = v1.getValue();
                        Value v2Ready = null;
                        Value.ValueTypeCase valueTypeCase3 = value != null ? value.getValueTypeCase() : null;
                        int i = valueTypeCase3 == null ? -1 : UtilsKt.AnonymousClass1.C01651.WhenMappings.$EnumSwitchMapping$0[valueTypeCase3.ordinal()];
                        if (i == -1 || i == 1) {
                            v1Ready = null;
                        } else {
                            if (valueTypeCase3 != valueTypeCase) {
                                return EvaluateResultError.INSTANCE;
                            }
                            v1Ready = v1.getValue();
                        }
                        Value value2 = v2.getValue();
                        Value.ValueTypeCase valueTypeCase4 = value2 != null ? value2.getValueTypeCase() : null;
                        int i2 = valueTypeCase4 == null ? -1 : UtilsKt.AnonymousClass1.C01651.WhenMappings.$EnumSwitchMapping$0[valueTypeCase4.ordinal()];
                        if (i2 != -1 && i2 != 1) {
                            if (valueTypeCase4 != valueTypeCase2) {
                                return EvaluateResultError.INSTANCE;
                            }
                            v2Ready = v2.getValue();
                        }
                        if (v1Ready == null || v2Ready == null) {
                            return EvaluateResult.INSTANCE.getNULL();
                        }
                        Value p0 = v1Ready;
                        Value p02 = v2Ready;
                        return (EvaluateResult) f.invoke(p0.getStringValue(), p02.getStringValue());
                    }
                };
            }
        };
        final Value.ValueTypeCase valueTypeCase1$iv5 = Value.ValueTypeCase.STRING_VALUE;
        final Value.ValueTypeCase valueTypeCase2$iv5 = Value.ValueTypeCase.STRING_VALUE;
        evaluateLike = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.Strings$special$$inlined$binaryFunctionConstructorType$5
            @Override // kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 2) {
                    throw Assert.fail("Function should have exactly 2 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                final Function1<? super MutableDocument, ? extends EvaluateResult> function12 = params.get(1);
                final Function2 f = new Function2<String, String, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.Strings$evaluateLike$3$1
                    @Override // kotlin.jvm.functions.Function2
                    public final EvaluateResult invoke(String value, String like) {
                        Pattern pattern;
                        Intrinsics.checkNotNullParameter(value, "value");
                        Intrinsics.checkNotNullParameter(like, "like");
                        try {
                            pattern = Pattern.compile(Strings.likeToRegex(like));
                        } catch (Exception e) {
                            pattern = null;
                        }
                        return pattern == null ? EvaluateResultError.INSTANCE : EvaluateResult.INSTANCE.m8435boolean(pattern.matches(value));
                    }
                };
                final Value.ValueTypeCase valueTypeCase = valueTypeCase1$iv5;
                final Value.ValueTypeCase valueTypeCase2 = valueTypeCase2$iv5;
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.Strings$special$$inlined$binaryFunctionConstructorType$5.1
                    @Override // kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        Value v1Ready;
                        Intrinsics.checkNotNullParameter(input, "input");
                        EvaluateResult v1 = (EvaluateResult) function1.invoke(input);
                        if (v1.getIsError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        EvaluateResult v2 = (EvaluateResult) function12.invoke(input);
                        if (v2.getIsError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        Value value = v1.getValue();
                        Value v2Ready = null;
                        Value.ValueTypeCase valueTypeCase3 = value != null ? value.getValueTypeCase() : null;
                        int i = valueTypeCase3 == null ? -1 : UtilsKt.AnonymousClass1.C01651.WhenMappings.$EnumSwitchMapping$0[valueTypeCase3.ordinal()];
                        if (i == -1 || i == 1) {
                            v1Ready = null;
                        } else {
                            if (valueTypeCase3 != valueTypeCase) {
                                return EvaluateResultError.INSTANCE;
                            }
                            v1Ready = v1.getValue();
                        }
                        Value value2 = v2.getValue();
                        Value.ValueTypeCase valueTypeCase4 = value2 != null ? value2.getValueTypeCase() : null;
                        int i2 = valueTypeCase4 == null ? -1 : UtilsKt.AnonymousClass1.C01651.WhenMappings.$EnumSwitchMapping$0[valueTypeCase4.ordinal()];
                        if (i2 != -1 && i2 != 1) {
                            if (valueTypeCase4 != valueTypeCase2) {
                                return EvaluateResultError.INSTANCE;
                            }
                            v2Ready = v2.getValue();
                        }
                        if (v1Ready == null || v2Ready == null) {
                            return EvaluateResult.INSTANCE.getNULL();
                        }
                        Value p0 = v1Ready;
                        Value p02 = v2Ready;
                        return (EvaluateResult) f.invoke(p0.getStringValue(), p02.getStringValue());
                    }
                };
            }
        };
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateStrConcat() {
        return evaluateStrConcat;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateStrContains() {
        return evaluateStrContains;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateStartsWith() {
        return evaluateStartsWith;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateEndsWith() {
        return evaluateEndsWith;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateByteLength() {
        return evaluateByteLength;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateCharLength() {
        return evaluateCharLength;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean isUpperCaseImpl(int c) {
        return UCharacter.isUpperCase(c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int toLowerCaseImpl(int c) {
        return UCharacter.toLowerCase(c);
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateToLowercase() {
        return evaluateToLowercase;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean isLowerCaseImpl(int c) {
        return UCharacter.isLowerCase(c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int toUpperCaseImpl(int c) {
        return UCharacter.toUpperCase(c);
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateToUppercase() {
        return evaluateToUppercase;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateReverse() {
        return evaluateReverse;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateStringReverse() {
        return evaluateStringReverse;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String stringReverse(String input) {
        StringBuilder reversed = new StringBuilder();
        int curIndex = input.length();
        while (curIndex > 0) {
            curIndex = input.offsetByCodePoints(curIndex, -1);
            reversed.append(Character.toChars(input.codePointAt(curIndex)));
        }
        String string = reversed.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final byte[] bytesReverse(ByteString input) {
        byte[] bytes = input.toByteArray();
        int length = bytes.length / 2;
        for (int i = 0; i < length; i++) {
            byte tmp = bytes[i];
            bytes[i] = bytes[(bytes.length - i) - 1];
            bytes[(bytes.length - i) - 1] = tmp;
        }
        Intrinsics.checkNotNull(bytes);
        return bytes;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateSplit() {
        return evaluateSplit;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Long getIntegerOrElse(EvaluateResult value) {
        Value value2;
        if (!value.getIsSuccess()) {
            return null;
        }
        Value value3 = value.getValue();
        if ((value3 != null ? value3.getValueTypeCase() : null) == Value.ValueTypeCase.INTEGER_VALUE && (value2 = value.getValue()) != null) {
            return Long.valueOf(value2.getIntegerValue());
        }
        return null;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateSubstring() {
        return evaluateSubstring;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateTrim() {
        return evaluateTrim;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateLTrim() {
        return evaluateLTrim;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateRTrim() {
        return evaluateRTrim;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateReplaceAll() {
        return evaluateReplaceAll;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateReplaceFirst() {
        return evaluateReplaceFirst;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateRegexContains() {
        return evaluateRegexContains;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateRegexMatch() {
        return evaluateRegexMatch;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateRegexFind() {
        return evaluateRegexFind;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateRegexFindAll() {
        return evaluateRegexFindAll;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateLike() {
        return evaluateLike;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String likeToRegex(String like) throws Exception {
        StringBuilder $this$likeToRegex_u24lambda_u2428 = new StringBuilder();
        boolean escape = false;
        int length = like.length();
        for (int i = 0; i < length; i++) {
            char c = like.charAt(i);
            if (escape) {
                escape = false;
                if (c == '\\') {
                    $this$likeToRegex_u24lambda_u2428.append("\\");
                } else {
                    $this$likeToRegex_u24lambda_u2428.append(c);
                }
            } else {
                switch (c) {
                    case '$':
                        $this$likeToRegex_u24lambda_u2428.append("\\$");
                        break;
                    case '%':
                        $this$likeToRegex_u24lambda_u2428.append(".*");
                        break;
                    case '(':
                        $this$likeToRegex_u24lambda_u2428.append("\\(");
                        break;
                    case ')':
                        $this$likeToRegex_u24lambda_u2428.append("\\)");
                        break;
                    case '*':
                        $this$likeToRegex_u24lambda_u2428.append("\\*");
                        break;
                    case MotionEventCompat.AXIS_GENERIC_12 /* 43 */:
                        $this$likeToRegex_u24lambda_u2428.append("\\+");
                        break;
                    case MotionEventCompat.AXIS_GENERIC_15 /* 46 */:
                        $this$likeToRegex_u24lambda_u2428.append("\\.");
                        break;
                    case '?':
                        $this$likeToRegex_u24lambda_u2428.append("\\?");
                        break;
                    case '[':
                        $this$likeToRegex_u24lambda_u2428.append("\\[");
                        break;
                    case '\\':
                        escape = true;
                        Unit unit = Unit.INSTANCE;
                        break;
                    case ']':
                        $this$likeToRegex_u24lambda_u2428.append("\\]");
                        break;
                    case '^':
                        $this$likeToRegex_u24lambda_u2428.append("\\^");
                        break;
                    case '_':
                        $this$likeToRegex_u24lambda_u2428.append('.');
                        break;
                    case '{':
                        $this$likeToRegex_u24lambda_u2428.append("\\{");
                        break;
                    case '|':
                        $this$likeToRegex_u24lambda_u2428.append("\\|");
                        break;
                    case ComposerImplKt.nodeKey /* 125 */:
                        $this$likeToRegex_u24lambda_u2428.append("\\}");
                        break;
                    default:
                        $this$likeToRegex_u24lambda_u2428.append(c);
                        break;
                }
            }
        }
        if (!escape) {
            String string = $this$likeToRegex_u24lambda_u2428.toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            return string;
        }
        throw new Exception("LIKE pattern ends in backslash");
    }
}
