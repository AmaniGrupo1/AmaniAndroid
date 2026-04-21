package androidx.compose.ui.text;

import androidx.compose.ui.text.internal.InlineClassHelperKt;
import androidx.compose.ui.unit.TextUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: Placeholder.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ+\u0010\u0010\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0011\u0010\u0012J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\u0016\u001a\u00020\u0017H\u0016J\b\u0010\u0018\u001a\u00020\u0019H\u0016R\u0013\u0010\u0002\u001a\u00020\u0003¢\u0006\n\n\u0002\u0010\u000b\u001a\u0004\b\t\u0010\nR\u0013\u0010\u0004\u001a\u00020\u0003¢\u0006\n\n\u0002\u0010\u000b\u001a\u0004\b\f\u0010\nR\u0013\u0010\u0005\u001a\u00020\u0006¢\u0006\n\n\u0002\u0010\u000f\u001a\u0004\b\r\u0010\u000e¨\u0006\u001a"}, d2 = {"Landroidx/compose/ui/text/Placeholder;", "", "width", "Landroidx/compose/ui/unit/TextUnit;", "height", "placeholderVerticalAlign", "Landroidx/compose/ui/text/PlaceholderVerticalAlign;", "<init>", "(JJILkotlin/jvm/internal/DefaultConstructorMarker;)V", "getWidth-XSAIIZE", "()J", "J", "getHeight-XSAIIZE", "getPlaceholderVerticalAlign-J6kI3mc", "()I", "I", "copy", "copy-K8Q-__8", "(JJI)Landroidx/compose/ui/text/Placeholder;", "equals", "", "other", "hashCode", "", "toString", "", "ui-text"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class Placeholder {
    public static final int $stable = 0;
    private final long height;
    private final int placeholderVerticalAlign;
    private final long width;

    public /* synthetic */ Placeholder(long j, long j2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, j2, i);
    }

    private Placeholder(long width, long height, int placeholderVerticalAlign) {
        this.width = width;
        this.height = height;
        this.placeholderVerticalAlign = placeholderVerticalAlign;
        boolean value$iv = !(TextUnit.m7697getRawTypeimpl(this.width) == 0);
        if (!value$iv) {
            InlineClassHelperKt.throwIllegalArgumentException("width cannot be TextUnit.Unspecified");
        }
        boolean value$iv2 = !(TextUnit.m7697getRawTypeimpl(this.height) == 0);
        if (value$iv2) {
            return;
        }
        InlineClassHelperKt.throwIllegalArgumentException("height cannot be TextUnit.Unspecified");
    }

    /* JADX INFO: renamed from: getWidth-XSAIIZE, reason: not valid java name and from getter */
    public final long getWidth() {
        return this.width;
    }

    /* JADX INFO: renamed from: getHeight-XSAIIZE, reason: not valid java name and from getter */
    public final long getHeight() {
        return this.height;
    }

    /* JADX INFO: renamed from: getPlaceholderVerticalAlign-J6kI3mc, reason: not valid java name and from getter */
    public final int getPlaceholderVerticalAlign() {
        return this.placeholderVerticalAlign;
    }

    /* JADX INFO: renamed from: copy-K8Q-__8, reason: not valid java name */
    public final Placeholder m6838copyK8Q__8(long width, long height, int placeholderVerticalAlign) {
        return new Placeholder(width, height, placeholderVerticalAlign, null);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof Placeholder) && TextUnit.m7696equalsimpl0(this.width, ((Placeholder) other).width) && TextUnit.m7696equalsimpl0(this.height, ((Placeholder) other).height) && PlaceholderVerticalAlign.m6845equalsimpl0(this.placeholderVerticalAlign, ((Placeholder) other).placeholderVerticalAlign);
    }

    public int hashCode() {
        int result = TextUnit.m7700hashCodeimpl(this.width);
        return (((result * 31) + TextUnit.m7700hashCodeimpl(this.height)) * 31) + PlaceholderVerticalAlign.m6846hashCodeimpl(this.placeholderVerticalAlign);
    }

    public String toString() {
        return "Placeholder(width=" + ((Object) TextUnit.m7706toStringimpl(this.width)) + ", height=" + ((Object) TextUnit.m7706toStringimpl(this.height)) + ", placeholderVerticalAlign=" + ((Object) PlaceholderVerticalAlign.m6847toStringimpl(this.placeholderVerticalAlign)) + ')';
    }
}
