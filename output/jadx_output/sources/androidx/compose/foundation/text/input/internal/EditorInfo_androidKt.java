package androidx.compose.foundation.text.input.internal;

import android.view.inputmethod.EditorInfo;
import androidx.compose.foundation.text.handwriting.StylusHandwriting_androidKt;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.ImeAction;
import androidx.compose.ui.text.input.ImeOptions;
import androidx.compose.ui.text.input.KeyboardCapitalization;
import androidx.compose.ui.text.input.KeyboardType;
import androidx.compose.ui.text.input.PlatformImeOptions;
import androidx.core.view.inputmethod.EditorInfoCompat;
import androidx.media3.extractor.ts.TsExtractor;
import kotlin.Metadata;

/* JADX INFO: compiled from: EditorInfo.android.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\u001a=\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nH\u0000¢\u0006\u0004\b\f\u0010\r\u001a\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011H\u0002¨\u0006\u0013"}, d2 = {"update", "", "Landroid/view/inputmethod/EditorInfo;", "text", "", "selection", "Landroidx/compose/ui/text/TextRange;", "imeOptions", "Landroidx/compose/ui/text/input/ImeOptions;", "contentMimeTypes", "", "", "update-pLxbY9I", "(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;JLandroidx/compose/ui/text/input/ImeOptions;[Ljava/lang/String;)V", "hasFlag", "", "bits", "", "flag", "foundation"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class EditorInfo_androidKt {
    /* JADX INFO: renamed from: update-pLxbY9I$default, reason: not valid java name */
    public static /* synthetic */ void m1378updatepLxbY9I$default(EditorInfo editorInfo, CharSequence charSequence, long j, ImeOptions imeOptions, String[] strArr, int i, Object obj) {
        String[] strArr2;
        if ((i & 8) == 0) {
            strArr2 = strArr;
        } else {
            strArr2 = null;
        }
        m1377updatepLxbY9I(editorInfo, charSequence, j, imeOptions, strArr2);
    }

    /* JADX INFO: renamed from: update-pLxbY9I, reason: not valid java name */
    public static final void m1377updatepLxbY9I(EditorInfo $this$update_u2dpLxbY9I, CharSequence text, long j, ImeOptions imeOptions, String[] contentMimeTypes) {
        String it;
        int imeAction = imeOptions.getImeAction();
        int i = 3;
        int i2 = 6;
        if (ImeAction.m7096equalsimpl0(imeAction, ImeAction.INSTANCE.m7109getDefaulteUduSuo())) {
            if (!imeOptions.getSingleLine()) {
                i2 = 0;
            }
        } else if (ImeAction.m7096equalsimpl0(imeAction, ImeAction.INSTANCE.m7113getNoneeUduSuo())) {
            i2 = 1;
        } else if (ImeAction.m7096equalsimpl0(imeAction, ImeAction.INSTANCE.m7111getGoeUduSuo())) {
            i2 = 2;
        } else if (ImeAction.m7096equalsimpl0(imeAction, ImeAction.INSTANCE.m7112getNexteUduSuo())) {
            i2 = 5;
        } else if (ImeAction.m7096equalsimpl0(imeAction, ImeAction.INSTANCE.m7114getPreviouseUduSuo())) {
            i2 = 7;
        } else if (ImeAction.m7096equalsimpl0(imeAction, ImeAction.INSTANCE.m7115getSearcheUduSuo())) {
            i2 = 3;
        } else if (ImeAction.m7096equalsimpl0(imeAction, ImeAction.INSTANCE.m7116getSendeUduSuo())) {
            i2 = 4;
        } else if (!ImeAction.m7096equalsimpl0(imeAction, ImeAction.INSTANCE.m7110getDoneeUduSuo())) {
            throw new IllegalStateException("invalid ImeAction".toString());
        }
        $this$update_u2dpLxbY9I.imeOptions = i2;
        PlatformImeOptions platformImeOptions = imeOptions.getPlatformImeOptions();
        if (platformImeOptions != null && (it = platformImeOptions.getPrivateImeOptions()) != null) {
            $this$update_u2dpLxbY9I.privateImeOptions = it;
        }
        LocaleListHelper.INSTANCE.setHintLocales($this$update_u2dpLxbY9I, imeOptions.getHintLocales());
        int keyboardType = imeOptions.getKeyboardType();
        if (KeyboardType.m7149equalsimpl0(keyboardType, KeyboardType.INSTANCE.m7170getTextPjHm6EE())) {
            i = 1;
        } else if (KeyboardType.m7149equalsimpl0(keyboardType, KeyboardType.INSTANCE.m7163getAsciiPjHm6EE())) {
            $this$update_u2dpLxbY9I.imeOptions |= Integer.MIN_VALUE;
            i = 1;
        } else if (KeyboardType.m7149equalsimpl0(keyboardType, KeyboardType.INSTANCE.m7166getNumberPjHm6EE())) {
            i = 2;
        } else if (!KeyboardType.m7149equalsimpl0(keyboardType, KeyboardType.INSTANCE.m7169getPhonePjHm6EE())) {
            if (KeyboardType.m7149equalsimpl0(keyboardType, KeyboardType.INSTANCE.m7172getUriPjHm6EE())) {
                i = 17;
            } else if (KeyboardType.m7149equalsimpl0(keyboardType, KeyboardType.INSTANCE.m7165getEmailPjHm6EE())) {
                i = 33;
            } else if (KeyboardType.m7149equalsimpl0(keyboardType, KeyboardType.INSTANCE.m7168getPasswordPjHm6EE())) {
                i = TsExtractor.TS_STREAM_TYPE_AC3;
            } else if (KeyboardType.m7149equalsimpl0(keyboardType, KeyboardType.INSTANCE.m7167getNumberPasswordPjHm6EE())) {
                i = 18;
            } else if (KeyboardType.m7149equalsimpl0(keyboardType, KeyboardType.INSTANCE.m7164getDecimalPjHm6EE())) {
                i = 8194;
            } else {
                throw new IllegalStateException("Invalid Keyboard Type".toString());
            }
        }
        $this$update_u2dpLxbY9I.inputType = i;
        if (!imeOptions.getSingleLine() && hasFlag($this$update_u2dpLxbY9I.inputType, 1)) {
            $this$update_u2dpLxbY9I.inputType |= 131072;
            if (ImeAction.m7096equalsimpl0(imeOptions.getImeAction(), ImeAction.INSTANCE.m7109getDefaulteUduSuo())) {
                $this$update_u2dpLxbY9I.imeOptions |= 1073741824;
            }
        }
        if (hasFlag($this$update_u2dpLxbY9I.inputType, 1)) {
            int capitalization = imeOptions.getCapitalization();
            if (KeyboardCapitalization.m7132equalsimpl0(capitalization, KeyboardCapitalization.INSTANCE.m7141getCharactersIUNYP9k())) {
                $this$update_u2dpLxbY9I.inputType |= 4096;
            } else if (KeyboardCapitalization.m7132equalsimpl0(capitalization, KeyboardCapitalization.INSTANCE.m7145getWordsIUNYP9k())) {
                $this$update_u2dpLxbY9I.inputType |= 8192;
            } else if (KeyboardCapitalization.m7132equalsimpl0(capitalization, KeyboardCapitalization.INSTANCE.m7143getSentencesIUNYP9k())) {
                $this$update_u2dpLxbY9I.inputType |= 16384;
            }
            if (imeOptions.getAutoCorrect()) {
                $this$update_u2dpLxbY9I.inputType |= 32768;
            }
        }
        $this$update_u2dpLxbY9I.initialSelStart = TextRange.m6928getStartimpl(j);
        $this$update_u2dpLxbY9I.initialSelEnd = TextRange.m6923getEndimpl(j);
        EditorInfoCompat.setInitialSurroundingText($this$update_u2dpLxbY9I, text);
        if (contentMimeTypes != null) {
            EditorInfoCompat.setContentMimeTypes($this$update_u2dpLxbY9I, contentMimeTypes);
        }
        $this$update_u2dpLxbY9I.imeOptions |= 33554432;
        if (StylusHandwriting_androidKt.isStylusHandwritingSupported() && !KeyboardType.m7149equalsimpl0(imeOptions.getKeyboardType(), KeyboardType.INSTANCE.m7168getPasswordPjHm6EE()) && !KeyboardType.m7149equalsimpl0(imeOptions.getKeyboardType(), KeyboardType.INSTANCE.m7167getNumberPasswordPjHm6EE())) {
            EditorInfoCompat.setStylusHandwritingEnabled($this$update_u2dpLxbY9I, true);
            EditorInfoApi34.INSTANCE.setHandwritingGestures($this$update_u2dpLxbY9I);
        } else {
            EditorInfoCompat.setStylusHandwritingEnabled($this$update_u2dpLxbY9I, false);
        }
    }

    private static final boolean hasFlag(int bits, int flag) {
        return (bits & flag) == flag;
    }
}
