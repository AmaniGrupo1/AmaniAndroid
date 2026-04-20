package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.inspector.InspectionCompanion;
import android.view.inspector.PropertyMapper;
import android.view.inspector.PropertyReader;
import android.widget.LinearLayout;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.media3.extractor.text.ttml.TtmlNode;
import io.grpc.internal.GrpcUtil;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.HashSet;
import java.util.Set;
import java.util.function.IntFunction;

/* JADX INFO: loaded from: classes.dex */
public class LinearLayoutCompat extends ViewGroup {
    private static final String ACCESSIBILITY_CLASS_NAME = "androidx.appcompat.widget.LinearLayoutCompat";
    public static final int HORIZONTAL = 0;
    private static final int INDEX_BOTTOM = 2;
    private static final int INDEX_CENTER_VERTICAL = 0;
    private static final int INDEX_FILL = 3;
    private static final int INDEX_TOP = 1;
    public static final int SHOW_DIVIDER_BEGINNING = 1;
    public static final int SHOW_DIVIDER_END = 4;
    public static final int SHOW_DIVIDER_MIDDLE = 2;
    public static final int SHOW_DIVIDER_NONE = 0;
    public static final int VERTICAL = 1;
    private static final int VERTICAL_GRAVITY_COUNT = 4;
    private boolean mBaselineAligned;
    private int mBaselineAlignedChildIndex;
    private int mBaselineChildTop;
    private Drawable mDivider;
    private int mDividerHeight;
    private int mDividerPadding;
    private int mDividerWidth;
    private int mGravity;
    private int[] mMaxAscent;
    private int[] mMaxDescent;
    private int mOrientation;
    private int mShowDividers;
    private int mTotalLength;
    private boolean mUseLargestChild;
    private float mWeightSum;

    @Retention(RetentionPolicy.SOURCE)
    public @interface DividerMode {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface OrientationMode {
    }

    public final class InspectionCompanion implements android.view.inspector.InspectionCompanion<LinearLayoutCompat> {
        private int mBaselineAlignedChildIndexId;
        private int mBaselineAlignedId;
        private int mDividerId;
        private int mDividerPaddingId;
        private int mGravityId;
        private int mMeasureWithLargestChildId;
        private int mOrientationId;
        private boolean mPropertiesMapped = false;
        private int mShowDividersId;
        private int mWeightSumId;

        @Override // android.view.inspector.InspectionCompanion
        public void mapProperties(PropertyMapper propertyMapper) {
            this.mBaselineAlignedId = propertyMapper.mapBoolean("baselineAligned", R.attr.baselineAligned);
            this.mBaselineAlignedChildIndexId = propertyMapper.mapInt("baselineAlignedChildIndex", R.attr.baselineAlignedChildIndex);
            this.mGravityId = propertyMapper.mapGravity("gravity", R.attr.gravity);
            this.mOrientationId = propertyMapper.mapIntEnum("orientation", R.attr.orientation, new IntFunction<String>() { // from class: androidx.appcompat.widget.LinearLayoutCompat.InspectionCompanion.1
                @Override // java.util.function.IntFunction
                public String apply(int value) {
                    switch (value) {
                        case 0:
                            return "horizontal";
                        case 1:
                            return "vertical";
                        default:
                            return String.valueOf(value);
                    }
                }
            });
            this.mWeightSumId = propertyMapper.mapFloat("weightSum", R.attr.weightSum);
            this.mDividerId = propertyMapper.mapObject("divider", androidx.appcompat.R.attr.divider);
            this.mDividerPaddingId = propertyMapper.mapInt("dividerPadding", androidx.appcompat.R.attr.dividerPadding);
            this.mMeasureWithLargestChildId = propertyMapper.mapBoolean("measureWithLargestChild", androidx.appcompat.R.attr.measureWithLargestChild);
            this.mShowDividersId = propertyMapper.mapIntFlag("showDividers", androidx.appcompat.R.attr.showDividers, new IntFunction<Set<String>>() { // from class: androidx.appcompat.widget.LinearLayoutCompat.InspectionCompanion.2
                @Override // java.util.function.IntFunction
                public Set<String> apply(int value) {
                    Set<String> flags = new HashSet<>();
                    if (value == 0) {
                        flags.add("none");
                    }
                    if (value == 1) {
                        flags.add("beginning");
                    }
                    if (value == 2) {
                        flags.add("middle");
                    }
                    if (value == 4) {
                        flags.add(TtmlNode.END);
                    }
                    return flags;
                }
            });
            this.mPropertiesMapped = true;
        }

        @Override // android.view.inspector.InspectionCompanion
        public void readProperties(LinearLayoutCompat linearLayoutCompat, PropertyReader propertyReader) {
            if (!this.mPropertiesMapped) {
                throw new InspectionCompanion.UninitializedPropertyMapException();
            }
            propertyReader.readBoolean(this.mBaselineAlignedId, linearLayoutCompat.isBaselineAligned());
            propertyReader.readInt(this.mBaselineAlignedChildIndexId, linearLayoutCompat.getBaselineAlignedChildIndex());
            propertyReader.readGravity(this.mGravityId, linearLayoutCompat.getGravity());
            propertyReader.readIntEnum(this.mOrientationId, linearLayoutCompat.getOrientation());
            propertyReader.readFloat(this.mWeightSumId, linearLayoutCompat.getWeightSum());
            propertyReader.readObject(this.mDividerId, linearLayoutCompat.getDividerDrawable());
            propertyReader.readInt(this.mDividerPaddingId, linearLayoutCompat.getDividerPadding());
            propertyReader.readBoolean(this.mMeasureWithLargestChildId, linearLayoutCompat.isMeasureWithLargestChildEnabled());
            propertyReader.readIntFlag(this.mShowDividersId, linearLayoutCompat.getShowDividers());
        }
    }

    public LinearLayoutCompat(Context context) {
        this(context, null);
    }

    public LinearLayoutCompat(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public LinearLayoutCompat(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mBaselineAligned = true;
        this.mBaselineAlignedChildIndex = -1;
        this.mBaselineChildTop = 0;
        this.mGravity = 8388659;
        TintTypedArray a = TintTypedArray.obtainStyledAttributes(context, attrs, androidx.appcompat.R.styleable.LinearLayoutCompat, defStyleAttr, 0);
        ViewCompat.saveAttributeDataForStyleable(this, context, androidx.appcompat.R.styleable.LinearLayoutCompat, attrs, a.getWrappedTypeArray(), defStyleAttr, 0);
        int index = a.getInt(androidx.appcompat.R.styleable.LinearLayoutCompat_android_orientation, -1);
        if (index >= 0) {
            setOrientation(index);
        }
        int index2 = a.getInt(androidx.appcompat.R.styleable.LinearLayoutCompat_android_gravity, -1);
        if (index2 >= 0) {
            setGravity(index2);
        }
        boolean baselineAligned = a.getBoolean(androidx.appcompat.R.styleable.LinearLayoutCompat_android_baselineAligned, true);
        if (!baselineAligned) {
            setBaselineAligned(baselineAligned);
        }
        this.mWeightSum = a.getFloat(androidx.appcompat.R.styleable.LinearLayoutCompat_android_weightSum, -1.0f);
        this.mBaselineAlignedChildIndex = a.getInt(androidx.appcompat.R.styleable.LinearLayoutCompat_android_baselineAlignedChildIndex, -1);
        this.mUseLargestChild = a.getBoolean(androidx.appcompat.R.styleable.LinearLayoutCompat_measureWithLargestChild, false);
        setDividerDrawable(a.getDrawable(androidx.appcompat.R.styleable.LinearLayoutCompat_divider));
        this.mShowDividers = a.getInt(androidx.appcompat.R.styleable.LinearLayoutCompat_showDividers, 0);
        this.mDividerPadding = a.getDimensionPixelSize(androidx.appcompat.R.styleable.LinearLayoutCompat_dividerPadding, 0);
        a.recycle();
    }

    public void setShowDividers(int showDividers) {
        if (showDividers != this.mShowDividers) {
            requestLayout();
        }
        this.mShowDividers = showDividers;
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    public int getShowDividers() {
        return this.mShowDividers;
    }

    public Drawable getDividerDrawable() {
        return this.mDivider;
    }

    public void setDividerDrawable(Drawable divider) {
        if (divider == this.mDivider) {
            return;
        }
        this.mDivider = divider;
        if (divider != null) {
            this.mDividerWidth = divider.getIntrinsicWidth();
            this.mDividerHeight = divider.getIntrinsicHeight();
        } else {
            this.mDividerWidth = 0;
            this.mDividerHeight = 0;
        }
        setWillNotDraw(divider == null);
        requestLayout();
    }

    public void setDividerPadding(int padding) {
        this.mDividerPadding = padding;
    }

    public int getDividerPadding() {
        return this.mDividerPadding;
    }

    public int getDividerWidth() {
        return this.mDividerWidth;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.mDivider == null) {
            return;
        }
        if (this.mOrientation == 1) {
            drawDividersVertical(canvas);
        } else {
            drawDividersHorizontal(canvas);
        }
    }

    void drawDividersVertical(Canvas canvas) {
        int bottom;
        int count = getVirtualChildCount();
        for (int i = 0; i < count; i++) {
            View child = getVirtualChildAt(i);
            if (child != null && child.getVisibility() != 8 && hasDividerBeforeChildAt(i)) {
                LayoutParams lp = (LayoutParams) child.getLayoutParams();
                int top = (child.getTop() - lp.topMargin) - this.mDividerHeight;
                drawHorizontalDivider(canvas, top);
            }
        }
        if (hasDividerBeforeChildAt(count)) {
            View child2 = getVirtualChildAt(count - 1);
            if (child2 == null) {
                bottom = (getHeight() - getPaddingBottom()) - this.mDividerHeight;
            } else {
                LayoutParams lp2 = (LayoutParams) child2.getLayoutParams();
                int bottom2 = child2.getBottom() + lp2.bottomMargin;
                bottom = bottom2;
            }
            drawHorizontalDivider(canvas, bottom);
        }
    }

    void drawDividersHorizontal(Canvas canvas) {
        int position;
        int position2;
        int count = getVirtualChildCount();
        boolean isLayoutRtl = ViewUtils.isLayoutRtl(this);
        for (int i = 0; i < count; i++) {
            View child = getVirtualChildAt(i);
            if (child != null && child.getVisibility() != 8 && hasDividerBeforeChildAt(i)) {
                LayoutParams lp = (LayoutParams) child.getLayoutParams();
                if (isLayoutRtl) {
                    position2 = child.getRight() + lp.rightMargin;
                } else {
                    int position3 = child.getLeft();
                    position2 = (position3 - lp.leftMargin) - this.mDividerWidth;
                }
                drawVerticalDivider(canvas, position2);
            }
        }
        if (hasDividerBeforeChildAt(count)) {
            View child2 = getVirtualChildAt(count - 1);
            if (child2 == null) {
                if (isLayoutRtl) {
                    position = getPaddingLeft();
                } else {
                    int position4 = getWidth();
                    position = (position4 - getPaddingRight()) - this.mDividerWidth;
                }
            } else {
                LayoutParams lp2 = (LayoutParams) child2.getLayoutParams();
                if (isLayoutRtl) {
                    position = (child2.getLeft() - lp2.leftMargin) - this.mDividerWidth;
                } else {
                    int position5 = child2.getRight();
                    position = position5 + lp2.rightMargin;
                }
            }
            drawVerticalDivider(canvas, position);
        }
    }

    void drawHorizontalDivider(Canvas canvas, int top) {
        this.mDivider.setBounds(getPaddingLeft() + this.mDividerPadding, top, (getWidth() - getPaddingRight()) - this.mDividerPadding, this.mDividerHeight + top);
        this.mDivider.draw(canvas);
    }

    void drawVerticalDivider(Canvas canvas, int left) {
        this.mDivider.setBounds(left, getPaddingTop() + this.mDividerPadding, this.mDividerWidth + left, (getHeight() - getPaddingBottom()) - this.mDividerPadding);
        this.mDivider.draw(canvas);
    }

    public boolean isBaselineAligned() {
        return this.mBaselineAligned;
    }

    public void setBaselineAligned(boolean baselineAligned) {
        this.mBaselineAligned = baselineAligned;
    }

    public boolean isMeasureWithLargestChildEnabled() {
        return this.mUseLargestChild;
    }

    public void setMeasureWithLargestChildEnabled(boolean enabled) {
        this.mUseLargestChild = enabled;
    }

    @Override // android.view.View
    public int getBaseline() {
        int majorGravity;
        if (this.mBaselineAlignedChildIndex < 0) {
            return super.getBaseline();
        }
        if (getChildCount() <= this.mBaselineAlignedChildIndex) {
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds.");
        }
        View child = getChildAt(this.mBaselineAlignedChildIndex);
        int childBaseline = child.getBaseline();
        if (childBaseline == -1) {
            if (this.mBaselineAlignedChildIndex == 0) {
                return -1;
            }
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout points to a View that doesn't know how to get its baseline.");
        }
        int childTop = this.mBaselineChildTop;
        if (this.mOrientation == 1 && (majorGravity = this.mGravity & 112) != 48) {
            switch (majorGravity) {
                case 16:
                    childTop += ((((getBottom() - getTop()) - getPaddingTop()) - getPaddingBottom()) - this.mTotalLength) / 2;
                    break;
                case GrpcUtil.DEFAULT_PORT_PLAINTEXT /* 80 */:
                    childTop = ((getBottom() - getTop()) - getPaddingBottom()) - this.mTotalLength;
                    break;
            }
        }
        LayoutParams lp = (LayoutParams) child.getLayoutParams();
        return lp.topMargin + childTop + childBaseline;
    }

    public int getBaselineAlignedChildIndex() {
        return this.mBaselineAlignedChildIndex;
    }

    public void setBaselineAlignedChildIndex(int i) {
        if (i < 0 || i >= getChildCount()) {
            throw new IllegalArgumentException("base aligned child index out of range (0, " + getChildCount() + ")");
        }
        this.mBaselineAlignedChildIndex = i;
    }

    View getVirtualChildAt(int index) {
        return getChildAt(index);
    }

    int getVirtualChildCount() {
        return getChildCount();
    }

    public float getWeightSum() {
        return this.mWeightSum;
    }

    public void setWeightSum(float weightSum) {
        this.mWeightSum = Math.max(0.0f, weightSum);
    }

    @Override // android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        if (this.mOrientation == 1) {
            measureVertical(widthMeasureSpec, heightMeasureSpec);
        } else {
            measureHorizontal(widthMeasureSpec, heightMeasureSpec);
        }
    }

    protected boolean hasDividerBeforeChildAt(int childIndex) {
        if (childIndex == 0) {
            return (this.mShowDividers & 1) != 0;
        }
        int childCount = getChildCount();
        int i = this.mShowDividers;
        if (childIndex == childCount) {
            return (i & 4) != 0;
        }
        if ((i & 2) == 0) {
            return false;
        }
        for (int i2 = childIndex - 1; i2 >= 0; i2--) {
            if (getChildAt(i2).getVisibility() != 8) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:162:0x03b0  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x03b3  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x0430  */
    /* JADX WARN: Removed duplicated region for block: B:198:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x016a  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0179  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    void measureVertical(int widthMeasureSpec, int heightMeasureSpec) {
        int count;
        float totalWeight;
        int heightMode;
        int delta;
        int delta2;
        int heightMode2;
        int baselineChildIndex;
        int margin;
        int delta3;
        int alternativeMaxWidth;
        int delta4;
        int alternativeMaxWidth2;
        int weightedMaxWidth;
        float totalWeight2;
        int i;
        int i2;
        int oldHeight;
        int heightMode3;
        boolean useLargestChild;
        int alternativeMaxWidth3;
        int largestChildHeight;
        int heightMode4;
        int largestChildHeight2;
        LayoutParams lp;
        View child;
        boolean matchWidthLocally;
        this.mTotalLength = 0;
        int weightedMaxWidth2 = 0;
        float totalWeight3 = 0.0f;
        int count2 = getVirtualChildCount();
        int widthMode = View.MeasureSpec.getMode(widthMeasureSpec);
        int heightMode5 = View.MeasureSpec.getMode(heightMeasureSpec);
        int baselineChildIndex2 = this.mBaselineAlignedChildIndex;
        boolean useLargestChild2 = this.mUseLargestChild;
        boolean matchWidth = false;
        boolean skippedMeasure = false;
        int maxWidth = 0;
        int childState = 0;
        int maxWidth2 = 0;
        int childState2 = 0;
        int largestChildHeight3 = 0;
        boolean allFillParent = true;
        while (childState2 < count2) {
            int largestChildHeight4 = maxWidth2;
            View child2 = getVirtualChildAt(childState2);
            if (child2 == null) {
                this.mTotalLength += measureNullChild(childState2);
                heightMode3 = heightMode5;
                useLargestChild = useLargestChild2;
                largestChildHeight = largestChildHeight4;
                largestChildHeight2 = count2;
            } else if (child2.getVisibility() == 8) {
                childState2 += getChildrenSkipCount(child2, childState2);
                heightMode3 = heightMode5;
                useLargestChild = useLargestChild2;
                largestChildHeight = largestChildHeight4;
                largestChildHeight2 = count2;
            } else {
                if (hasDividerBeforeChildAt(childState2)) {
                    this.mTotalLength += this.mDividerHeight;
                }
                LayoutParams lp2 = (LayoutParams) child2.getLayoutParams();
                float totalWeight4 = totalWeight3 + lp2.weight;
                if (heightMode5 == 1073741824 && lp2.height == 0 && lp2.weight > 0.0f) {
                    int totalLength = this.mTotalLength;
                    this.mTotalLength = Math.max(totalLength, lp2.topMargin + totalLength + lp2.bottomMargin);
                    skippedMeasure = true;
                    heightMode3 = heightMode5;
                    useLargestChild = useLargestChild2;
                    alternativeMaxWidth3 = largestChildHeight3;
                    largestChildHeight = largestChildHeight4;
                    heightMode4 = weightedMaxWidth2;
                    largestChildHeight2 = count2;
                    lp = lp2;
                    child = child2;
                } else {
                    if (lp2.height == 0 && lp2.weight > 0.0f) {
                        lp2.height = -2;
                        oldHeight = 0;
                    } else {
                        oldHeight = Integer.MIN_VALUE;
                    }
                    heightMode3 = heightMode5;
                    useLargestChild = useLargestChild2;
                    alternativeMaxWidth3 = largestChildHeight3;
                    largestChildHeight = largestChildHeight4;
                    heightMode4 = weightedMaxWidth2;
                    largestChildHeight2 = count2;
                    lp = lp2;
                    measureChildBeforeLayout(child2, childState2, widthMeasureSpec, 0, heightMeasureSpec, totalWeight4 == 0.0f ? this.mTotalLength : 0);
                    child = child2;
                    if (oldHeight != Integer.MIN_VALUE) {
                        lp.height = oldHeight;
                    }
                    int childHeight = child.getMeasuredHeight();
                    int totalLength2 = this.mTotalLength;
                    int oldHeight2 = lp.topMargin;
                    this.mTotalLength = Math.max(totalLength2, totalLength2 + childHeight + oldHeight2 + lp.bottomMargin + getNextLocationOffset(child));
                    if (useLargestChild) {
                        largestChildHeight = Math.max(childHeight, largestChildHeight);
                    }
                }
                if (baselineChildIndex2 >= 0 && baselineChildIndex2 == childState2 + 1) {
                    this.mBaselineChildTop = this.mTotalLength;
                }
                if (childState2 < baselineChildIndex2 && lp.weight > 0.0f) {
                    throw new RuntimeException("A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won't work.  Either remove the weight, or don't set mBaselineAlignedChildIndex.");
                }
                boolean matchWidthLocally2 = false;
                if (widthMode != 1073741824 && lp.width == -1) {
                    matchWidth = true;
                    matchWidthLocally2 = true;
                }
                int margin2 = lp.leftMargin + lp.rightMargin;
                int measuredWidth = child.getMeasuredWidth() + margin2;
                maxWidth = Math.max(maxWidth, measuredWidth);
                int childState3 = View.combineMeasuredStates(childState, child.getMeasuredState());
                if (allFillParent) {
                    matchWidthLocally = matchWidthLocally2;
                    boolean allFillParent2 = lp.width == -1;
                    if (lp.weight <= 0.0f) {
                        heightMode4 = Math.max(heightMode4, matchWidthLocally ? margin2 : measuredWidth);
                        largestChildHeight3 = alternativeMaxWidth3;
                    } else {
                        int i3 = matchWidthLocally ? margin2 : measuredWidth;
                        int measuredWidth2 = alternativeMaxWidth3;
                        largestChildHeight3 = Math.max(measuredWidth2, i3);
                    }
                    childState2 += getChildrenSkipCount(child, childState2);
                    allFillParent = allFillParent2;
                    childState = childState3;
                    weightedMaxWidth2 = heightMode4;
                    totalWeight3 = totalWeight4;
                } else {
                    matchWidthLocally = matchWidthLocally2;
                }
                if (lp.weight <= 0.0f) {
                }
                childState2 += getChildrenSkipCount(child, childState2);
                allFillParent = allFillParent2;
                childState = childState3;
                weightedMaxWidth2 = heightMode4;
                totalWeight3 = totalWeight4;
            }
            childState2++;
            maxWidth2 = largestChildHeight;
            heightMode5 = heightMode3;
            count2 = largestChildHeight2;
            useLargestChild2 = useLargestChild;
        }
        int count3 = count2;
        int heightMode6 = heightMode5;
        boolean useLargestChild3 = useLargestChild2;
        int largestChildHeight5 = maxWidth2;
        int weightedMaxWidth3 = weightedMaxWidth2;
        int i4 = this.mTotalLength;
        if (i4 > 0) {
            count = count3;
            if (hasDividerBeforeChildAt(count)) {
                this.mTotalLength += this.mDividerHeight;
            }
        } else {
            count = count3;
        }
        if (useLargestChild3) {
            heightMode = heightMode6;
            if (heightMode == Integer.MIN_VALUE || heightMode == 0) {
                this.mTotalLength = 0;
                int i5 = 0;
                while (i5 < count) {
                    View child3 = getVirtualChildAt(i5);
                    if (child3 == null) {
                        this.mTotalLength += measureNullChild(i5);
                        i = i5;
                        totalWeight2 = totalWeight3;
                    } else {
                        totalWeight2 = totalWeight3;
                        if (child3.getVisibility() == 8) {
                            i2 = i5 + getChildrenSkipCount(child3, i5);
                            i5 = i2 + 1;
                            totalWeight3 = totalWeight2;
                        } else {
                            LayoutParams lp3 = (LayoutParams) child3.getLayoutParams();
                            int totalLength3 = this.mTotalLength;
                            i = i5;
                            int i6 = lp3.topMargin;
                            this.mTotalLength = Math.max(totalLength3, totalLength3 + largestChildHeight5 + i6 + lp3.bottomMargin + getNextLocationOffset(child3));
                        }
                    }
                    i2 = i;
                    i5 = i2 + 1;
                    totalWeight3 = totalWeight2;
                }
                totalWeight = totalWeight3;
            } else {
                totalWeight = totalWeight3;
            }
        } else {
            totalWeight = totalWeight3;
            heightMode = heightMode6;
        }
        this.mTotalLength += getPaddingTop() + getPaddingBottom();
        int heightSizeAndState = View.resolveSizeAndState(Math.max(this.mTotalLength, getSuggestedMinimumHeight()), heightMeasureSpec, 0);
        int heightSize = heightSizeAndState & ViewCompat.MEASURED_SIZE_MASK;
        int delta5 = heightSize - this.mTotalLength;
        if (skippedMeasure) {
            delta = delta5;
        } else {
            if (delta5 == 0 || totalWeight <= 0.0f) {
                int alternativeMaxWidth4 = Math.max(largestChildHeight3, weightedMaxWidth3);
                if (!useLargestChild3 || heightMode == 1073741824) {
                    delta3 = delta5;
                    alternativeMaxWidth = alternativeMaxWidth4;
                } else {
                    int i7 = 0;
                    while (i7 < count) {
                        int heightSize2 = heightSize;
                        View child4 = getVirtualChildAt(i7);
                        if (child4 != null) {
                            delta4 = delta5;
                            alternativeMaxWidth2 = alternativeMaxWidth4;
                            if (child4.getVisibility() == 8) {
                                weightedMaxWidth = weightedMaxWidth3;
                            } else if (((LayoutParams) child4.getLayoutParams()).weight > 0.0f) {
                                int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(child4.getMeasuredWidth(), 1073741824);
                                weightedMaxWidth = weightedMaxWidth3;
                                int weightedMaxWidth4 = View.MeasureSpec.makeMeasureSpec(largestChildHeight5, 1073741824);
                                child4.measure(iMakeMeasureSpec, weightedMaxWidth4);
                            } else {
                                weightedMaxWidth = weightedMaxWidth3;
                            }
                        } else {
                            delta4 = delta5;
                            alternativeMaxWidth2 = alternativeMaxWidth4;
                            weightedMaxWidth = weightedMaxWidth3;
                        }
                        i7++;
                        alternativeMaxWidth4 = alternativeMaxWidth2;
                        heightSize = heightSize2;
                        delta5 = delta4;
                        weightedMaxWidth3 = weightedMaxWidth;
                    }
                    delta3 = delta5;
                    alternativeMaxWidth = alternativeMaxWidth4;
                }
                delta2 = alternativeMaxWidth;
                if (!allFillParent && widthMode != 1073741824) {
                    maxWidth = delta2;
                }
                setMeasuredDimension(View.resolveSizeAndState(Math.max(maxWidth + getPaddingLeft() + getPaddingRight(), getSuggestedMinimumWidth()), widthMeasureSpec, childState), heightSizeAndState);
                if (!matchWidth) {
                    forceUniformWidth(count, heightMeasureSpec);
                    return;
                }
                return;
            }
            delta = delta5;
        }
        float weightSum = this.mWeightSum > 0.0f ? this.mWeightSum : totalWeight;
        this.mTotalLength = 0;
        int measuredWidth3 = 0;
        int delta6 = delta;
        while (measuredWidth3 < count) {
            View child5 = getVirtualChildAt(measuredWidth3);
            float weightSum2 = weightSum;
            int i8 = measuredWidth3;
            if (child5.getVisibility() == 8) {
                heightMode2 = heightMode;
                baselineChildIndex = baselineChildIndex2;
            } else {
                LayoutParams lp4 = (LayoutParams) child5.getLayoutParams();
                float childExtra = lp4.weight;
                if (childExtra <= 0.0f) {
                    heightMode2 = heightMode;
                    baselineChildIndex = baselineChildIndex2;
                } else {
                    int share = (int) ((delta6 * childExtra) / weightSum2);
                    weightSum2 -= childExtra;
                    int delta7 = delta6 - share;
                    int childWidthMeasureSpec = getChildMeasureSpec(widthMeasureSpec, getPaddingLeft() + getPaddingRight() + lp4.leftMargin + lp4.rightMargin, lp4.width);
                    if (lp4.height != 0 || heightMode != 1073741824) {
                        heightMode2 = heightMode;
                        int heightMode7 = child5.getMeasuredHeight();
                        int childHeight2 = heightMode7 + share;
                        if (childHeight2 < 0) {
                            childHeight2 = 0;
                        }
                        baselineChildIndex = baselineChildIndex2;
                        child5.measure(childWidthMeasureSpec, View.MeasureSpec.makeMeasureSpec(childHeight2, 1073741824));
                        childState = View.combineMeasuredStates(childState, child5.getMeasuredState() & (-256));
                        delta6 = delta7;
                    } else {
                        heightMode2 = heightMode;
                        int heightMode8 = share > 0 ? share : 0;
                        child5.measure(childWidthMeasureSpec, View.MeasureSpec.makeMeasureSpec(heightMode8, 1073741824));
                        baselineChildIndex = baselineChildIndex2;
                        childState = View.combineMeasuredStates(childState, child5.getMeasuredState() & (-256));
                        delta6 = delta7;
                    }
                }
                int heightMode9 = lp4.leftMargin;
                int margin3 = heightMode9 + lp4.rightMargin;
                int measuredWidth4 = child5.getMeasuredWidth() + margin3;
                maxWidth = Math.max(maxWidth, measuredWidth4);
                if (widthMode != 1073741824) {
                    margin = margin3;
                    int margin4 = lp4.width == -1 ? 1 : 0;
                    int alternativeMaxWidth5 = Math.max(largestChildHeight3, margin4 == 0 ? margin : measuredWidth4);
                    boolean allFillParent3 = !allFillParent && lp4.width == -1;
                    int totalLength4 = this.mTotalLength;
                    this.mTotalLength = Math.max(totalLength4, totalLength4 + child5.getMeasuredHeight() + lp4.topMargin + lp4.bottomMargin + getNextLocationOffset(child5));
                    allFillParent = allFillParent3;
                    delta6 = delta6;
                    largestChildHeight3 = alternativeMaxWidth5;
                } else {
                    margin = margin3;
                }
                int alternativeMaxWidth52 = Math.max(largestChildHeight3, margin4 == 0 ? margin : measuredWidth4);
                if (allFillParent) {
                }
                int totalLength42 = this.mTotalLength;
                this.mTotalLength = Math.max(totalLength42, totalLength42 + child5.getMeasuredHeight() + lp4.topMargin + lp4.bottomMargin + getNextLocationOffset(child5));
                allFillParent = allFillParent3;
                delta6 = delta6;
                largestChildHeight3 = alternativeMaxWidth52;
            }
            weightSum = weightSum2;
            measuredWidth3 = i8 + 1;
            heightMode = heightMode2;
            baselineChildIndex2 = baselineChildIndex;
        }
        this.mTotalLength += getPaddingTop() + getPaddingBottom();
        delta2 = largestChildHeight3;
        if (!allFillParent) {
            maxWidth = delta2;
        }
        setMeasuredDimension(View.resolveSizeAndState(Math.max(maxWidth + getPaddingLeft() + getPaddingRight(), getSuggestedMinimumWidth()), widthMeasureSpec, childState), heightSizeAndState);
        if (!matchWidth) {
        }
    }

    private void forceUniformWidth(int count, int heightMeasureSpec) {
        int heightMeasureSpec2;
        int uniformMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824);
        int i = 0;
        while (i < count) {
            View child = getVirtualChildAt(i);
            if (child.getVisibility() == 8) {
                heightMeasureSpec2 = heightMeasureSpec;
            } else {
                LayoutParams lp = (LayoutParams) child.getLayoutParams();
                if (lp.width != -1) {
                    heightMeasureSpec2 = heightMeasureSpec;
                } else {
                    int oldHeight = lp.height;
                    lp.height = child.getMeasuredHeight();
                    heightMeasureSpec2 = heightMeasureSpec;
                    measureChildWithMargins(child, uniformMeasureSpec, 0, heightMeasureSpec2, 0);
                    lp.height = oldHeight;
                }
            }
            i++;
            heightMeasureSpec = heightMeasureSpec2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:201:0x0536  */
    /* JADX WARN: Removed duplicated region for block: B:209:0x056e  */
    /* JADX WARN: Removed duplicated region for block: B:232:0x060e  */
    /* JADX WARN: Removed duplicated region for block: B:250:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    void measureHorizontal(int widthMeasureSpec, int heightMeasureSpec) {
        int i;
        int count;
        int widthMode;
        int delta;
        int widthSizeAndState;
        int i2;
        int alternativeMaxHeight;
        int widthMode2;
        float weightSum;
        int i3;
        float weightSum2;
        int alternativeMaxHeight2;
        int delta2;
        int delta3;
        int widthSize;
        int delta4;
        int widthSizeAndState2;
        int i4;
        int i5;
        int weightedMaxHeight;
        int weightedMaxHeight2;
        int count2;
        int[] maxAscent;
        boolean baselineAligned;
        int largestChildWidth;
        int weightedMaxHeight3;
        boolean useLargestChild;
        int[] maxDescent;
        int alternativeMaxHeight3;
        int widthMode3;
        int i6;
        int i7;
        int margin;
        int i8;
        int largestChildWidth2;
        int alternativeMaxHeight4;
        this.mTotalLength = 0;
        int alternativeMaxHeight5 = 0;
        int weightedMaxHeight4 = 0;
        int count3 = getVirtualChildCount();
        int widthMode4 = View.MeasureSpec.getMode(widthMeasureSpec);
        int heightMode = View.MeasureSpec.getMode(heightMeasureSpec);
        if (this.mMaxAscent == null || this.mMaxDescent == null) {
            this.mMaxAscent = new int[4];
            this.mMaxDescent = new int[4];
        }
        int[] maxAscent2 = this.mMaxAscent;
        int[] maxDescent2 = this.mMaxDescent;
        maxAscent2[3] = -1;
        maxAscent2[2] = -1;
        maxAscent2[1] = -1;
        maxAscent2[0] = -1;
        maxDescent2[3] = -1;
        maxDescent2[2] = -1;
        maxDescent2[1] = -1;
        maxDescent2[0] = -1;
        boolean baselineAligned2 = this.mBaselineAligned;
        boolean useLargestChild2 = this.mUseLargestChild;
        boolean useLargestChild3 = useLargestChild2;
        boolean isExactly = widthMode4 == 1073741824;
        int maxHeight = 0;
        float totalWeight = 0.0f;
        boolean allFillParent = true;
        int i9 = 0;
        boolean skippedMeasure = false;
        int childState = 0;
        int childState2 = 0;
        int largestChildWidth3 = 0;
        while (true) {
            i = 8;
            if (i9 >= count3) {
                break;
            }
            float totalWeight2 = totalWeight;
            View child = getVirtualChildAt(i9);
            if (child == null) {
                this.mTotalLength += measureNullChild(i9);
                i8 = i9;
                count2 = count3;
                widthMode3 = widthMode4;
                maxAscent = maxAscent2;
                baselineAligned = baselineAligned2;
                useLargestChild = useLargestChild3;
                totalWeight = totalWeight2;
                maxDescent = maxDescent2;
                alternativeMaxHeight3 = alternativeMaxHeight5;
            } else if (child.getVisibility() == 8) {
                i8 = i9 + getChildrenSkipCount(child, i9);
                count2 = count3;
                widthMode3 = widthMode4;
                maxAscent = maxAscent2;
                baselineAligned = baselineAligned2;
                useLargestChild = useLargestChild3;
                totalWeight = totalWeight2;
                maxDescent = maxDescent2;
                alternativeMaxHeight3 = alternativeMaxHeight5;
            } else {
                if (hasDividerBeforeChildAt(i9)) {
                    this.mTotalLength += this.mDividerWidth;
                }
                LayoutParams lp = (LayoutParams) child.getLayoutParams();
                float totalWeight3 = totalWeight2 + lp.weight;
                if (widthMode4 != 1073741824 || lp.width != 0 || lp.weight <= 0.0f) {
                    int largestChildWidth4 = childState2;
                    int alternativeMaxHeight6 = alternativeMaxHeight5;
                    int oldWidth = Integer.MIN_VALUE;
                    if (lp.width == 0 && lp.weight > 0.0f) {
                        oldWidth = 0;
                        lp.width = -2;
                    }
                    if (totalWeight3 == 0.0f) {
                        int i10 = weightedMaxHeight4;
                        weightedMaxHeight2 = this.mTotalLength;
                        weightedMaxHeight = i10;
                    } else {
                        weightedMaxHeight = weightedMaxHeight4;
                        weightedMaxHeight2 = 0;
                    }
                    count2 = count3;
                    maxAscent = maxAscent2;
                    baselineAligned = baselineAligned2;
                    largestChildWidth = largestChildWidth4;
                    weightedMaxHeight3 = weightedMaxHeight;
                    useLargestChild = useLargestChild3;
                    maxDescent = maxDescent2;
                    alternativeMaxHeight3 = alternativeMaxHeight6;
                    widthMode3 = widthMode4;
                    int widthMode5 = oldWidth;
                    i6 = i9;
                    measureChildBeforeLayout(child, i6, widthMeasureSpec, weightedMaxHeight2, heightMeasureSpec, 0);
                    if (widthMode5 != Integer.MIN_VALUE) {
                        lp.width = widthMode5;
                    }
                    int childWidth = child.getMeasuredWidth();
                    if (isExactly) {
                        this.mTotalLength += lp.leftMargin + childWidth + lp.rightMargin + getNextLocationOffset(child);
                    } else {
                        int totalLength = this.mTotalLength;
                        this.mTotalLength = Math.max(totalLength, totalLength + childWidth + lp.leftMargin + lp.rightMargin + getNextLocationOffset(child));
                    }
                    if (useLargestChild) {
                        largestChildWidth = Math.max(childWidth, largestChildWidth);
                    }
                } else {
                    if (isExactly) {
                        int i11 = this.mTotalLength;
                        largestChildWidth2 = childState2;
                        int largestChildWidth5 = lp.leftMargin;
                        this.mTotalLength = i11 + largestChildWidth5 + lp.rightMargin;
                        alternativeMaxHeight4 = alternativeMaxHeight5;
                    } else {
                        largestChildWidth2 = childState2;
                        int largestChildWidth6 = this.mTotalLength;
                        int i12 = lp.leftMargin + largestChildWidth6;
                        alternativeMaxHeight4 = alternativeMaxHeight5;
                        int alternativeMaxHeight7 = lp.rightMargin;
                        this.mTotalLength = Math.max(largestChildWidth6, i12 + alternativeMaxHeight7);
                    }
                    if (baselineAligned2) {
                        int freeSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                        child.measure(freeSpec, freeSpec);
                        i6 = i9;
                        count2 = count3;
                        maxAscent = maxAscent2;
                        baselineAligned = baselineAligned2;
                        largestChildWidth = largestChildWidth2;
                        weightedMaxHeight3 = weightedMaxHeight4;
                        useLargestChild = useLargestChild3;
                        maxDescent = maxDescent2;
                        alternativeMaxHeight3 = alternativeMaxHeight4;
                        widthMode3 = widthMode4;
                    } else {
                        skippedMeasure = true;
                        i6 = i9;
                        count2 = count3;
                        maxAscent = maxAscent2;
                        baselineAligned = baselineAligned2;
                        largestChildWidth = largestChildWidth2;
                        weightedMaxHeight3 = weightedMaxHeight4;
                        useLargestChild = useLargestChild3;
                        maxDescent = maxDescent2;
                        alternativeMaxHeight3 = alternativeMaxHeight4;
                        widthMode3 = widthMode4;
                    }
                }
                int childWidth2 = 0;
                if (heightMode != 1073741824 && lp.height == -1) {
                    largestChildWidth3 = 1;
                    childWidth2 = 1;
                }
                int margin2 = lp.topMargin + lp.bottomMargin;
                int childHeight = child.getMeasuredHeight() + margin2;
                int childState3 = View.combineMeasuredStates(childState, child.getMeasuredState());
                if (!baselineAligned) {
                    i7 = childWidth2;
                    margin = margin2;
                } else {
                    int childBaseline = child.getBaseline();
                    i7 = childWidth2;
                    if (childBaseline == -1) {
                        margin = margin2;
                    } else {
                        int gravity = (lp.gravity < 0 ? this.mGravity : lp.gravity) & 112;
                        int index = ((gravity >> 4) & (-2)) >> 1;
                        int gravity2 = maxAscent[index];
                        maxAscent[index] = Math.max(gravity2, childBaseline);
                        margin = margin2;
                        maxDescent[index] = Math.max(maxDescent[index], childHeight - childBaseline);
                    }
                }
                int maxHeight2 = Math.max(maxHeight, childHeight);
                boolean allFillParent2 = allFillParent && lp.height == -1;
                if (lp.weight > 0.0f) {
                    weightedMaxHeight3 = Math.max(weightedMaxHeight3, i7 != 0 ? margin : childHeight);
                } else {
                    alternativeMaxHeight3 = Math.max(alternativeMaxHeight3, i7 != 0 ? margin : childHeight);
                }
                int i13 = i6 + getChildrenSkipCount(child, i6);
                maxHeight = maxHeight2;
                allFillParent = allFillParent2;
                childState = childState3;
                weightedMaxHeight4 = weightedMaxHeight3;
                totalWeight = totalWeight3;
                i8 = i13;
                childState2 = largestChildWidth;
            }
            i9 = i8 + 1;
            alternativeMaxHeight5 = alternativeMaxHeight3;
            maxDescent2 = maxDescent;
            baselineAligned2 = baselineAligned;
            useLargestChild3 = useLargestChild;
            widthMode4 = widthMode3;
            maxAscent2 = maxAscent;
            count3 = count2;
        }
        float totalWeight4 = totalWeight;
        int count4 = count3;
        int widthMode6 = widthMode4;
        int[] maxAscent3 = maxAscent2;
        boolean baselineAligned3 = baselineAligned2;
        boolean useLargestChild4 = useLargestChild3;
        int largestChildWidth7 = childState2;
        int weightedMaxHeight5 = weightedMaxHeight4;
        int[] maxDescent3 = maxDescent2;
        int alternativeMaxHeight8 = alternativeMaxHeight5;
        if (this.mTotalLength > 0) {
            count = count4;
            if (hasDividerBeforeChildAt(count)) {
                this.mTotalLength += this.mDividerWidth;
            }
        } else {
            count = count4;
        }
        if (maxAscent3[1] != -1 || maxAscent3[0] != -1 || maxAscent3[2] != -1 || maxAscent3[3] != -1) {
            int ascent = Math.max(maxAscent3[3], Math.max(maxAscent3[0], Math.max(maxAscent3[1], maxAscent3[2])));
            int descent = Math.max(maxDescent3[3], Math.max(maxDescent3[0], Math.max(maxDescent3[1], maxDescent3[2])));
            maxHeight = Math.max(maxHeight, ascent + descent);
        }
        if (useLargestChild4) {
            widthMode = widthMode6;
            if (widthMode == Integer.MIN_VALUE || widthMode == 0) {
                this.mTotalLength = 0;
                int i14 = 0;
                while (i14 < count) {
                    View child2 = getVirtualChildAt(i14);
                    if (child2 == null) {
                        this.mTotalLength += measureNullChild(i14);
                        i4 = i14;
                    } else if (child2.getVisibility() == i) {
                        i5 = i14 + getChildrenSkipCount(child2, i14);
                        i14 = i5 + 1;
                        i = 8;
                    } else {
                        LayoutParams lp2 = (LayoutParams) child2.getLayoutParams();
                        if (isExactly) {
                            int i15 = this.mTotalLength;
                            int i16 = lp2.leftMargin + largestChildWidth7;
                            i4 = i14;
                            int i17 = lp2.rightMargin;
                            this.mTotalLength = i15 + i16 + i17 + getNextLocationOffset(child2);
                        } else {
                            i4 = i14;
                            int i18 = this.mTotalLength;
                            this.mTotalLength = Math.max(i18, i18 + largestChildWidth7 + lp2.leftMargin + lp2.rightMargin + getNextLocationOffset(child2));
                        }
                    }
                    i5 = i4;
                    i14 = i5 + 1;
                    i = 8;
                }
            }
        } else {
            widthMode = widthMode6;
        }
        this.mTotalLength += getPaddingLeft() + getPaddingRight();
        int widthSizeAndState3 = View.resolveSizeAndState(Math.max(this.mTotalLength, getSuggestedMinimumWidth()), widthMeasureSpec, 0);
        int widthSize2 = widthSizeAndState3 & ViewCompat.MEASURED_SIZE_MASK;
        int delta5 = widthSize2 - this.mTotalLength;
        if (skippedMeasure) {
            delta = delta5;
            widthSizeAndState = widthSizeAndState3;
            i2 = -16777216;
        } else {
            if (delta5 == 0 || totalWeight4 <= 0.0f) {
                alternativeMaxHeight = Math.max(alternativeMaxHeight8, weightedMaxHeight5);
                if (!useLargestChild4 || widthMode == 1073741824) {
                    delta3 = delta5;
                    widthSizeAndState = widthSizeAndState3;
                    i2 = -16777216;
                } else {
                    int i19 = 0;
                    while (i19 < count) {
                        View child3 = getVirtualChildAt(i19);
                        if (child3 != null) {
                            widthSize = widthSize2;
                            delta4 = delta5;
                            if (child3.getVisibility() == 8) {
                                widthSizeAndState2 = widthSizeAndState3;
                            } else if (((LayoutParams) child3.getLayoutParams()).weight > 0.0f) {
                                widthSizeAndState2 = widthSizeAndState3;
                                child3.measure(View.MeasureSpec.makeMeasureSpec(largestChildWidth7, 1073741824), View.MeasureSpec.makeMeasureSpec(child3.getMeasuredHeight(), 1073741824));
                            } else {
                                widthSizeAndState2 = widthSizeAndState3;
                            }
                        } else {
                            widthSize = widthSize2;
                            delta4 = delta5;
                            widthSizeAndState2 = widthSizeAndState3;
                        }
                        i19++;
                        widthSize2 = widthSize;
                        delta5 = delta4;
                        widthSizeAndState3 = widthSizeAndState2;
                    }
                    delta3 = delta5;
                    widthSizeAndState = widthSizeAndState3;
                    i2 = -16777216;
                }
                if (!allFillParent && heightMode != 1073741824) {
                    maxHeight = alternativeMaxHeight;
                }
                setMeasuredDimension(widthSizeAndState | (childState & i2), View.resolveSizeAndState(Math.max(maxHeight + getPaddingTop() + getPaddingBottom(), getSuggestedMinimumHeight()), heightMeasureSpec, childState << 16));
                if (largestChildWidth3 == 0) {
                    forceUniformHeight(count, widthMeasureSpec);
                    return;
                }
                return;
            }
            delta = delta5;
            widthSizeAndState = widthSizeAndState3;
            i2 = -16777216;
        }
        float weightSum3 = this.mWeightSum > 0.0f ? this.mWeightSum : totalWeight4;
        maxAscent3[3] = -1;
        maxAscent3[2] = -1;
        maxAscent3[1] = -1;
        maxAscent3[0] = -1;
        maxDescent3[3] = -1;
        maxDescent3[2] = -1;
        maxDescent3[1] = -1;
        maxDescent3[0] = -1;
        this.mTotalLength = 0;
        int i20 = 0;
        int maxHeight3 = -1;
        int delta6 = delta;
        while (i20 < count) {
            View child4 = getVirtualChildAt(i20);
            if (child4 != null) {
                weightSum = weightSum3;
                if (child4.getVisibility() == 8) {
                    widthMode2 = widthMode;
                    i3 = i20;
                } else {
                    LayoutParams lp3 = (LayoutParams) child4.getLayoutParams();
                    float childExtra = lp3.weight;
                    if (childExtra <= 0.0f) {
                        widthMode2 = widthMode;
                        i3 = i20;
                        weightSum2 = weightSum;
                    } else {
                        int share = (int) ((delta6 * childExtra) / weightSum);
                        float weightSum4 = weightSum - childExtra;
                        int delta7 = delta6 - share;
                        int paddingTop = getPaddingTop() + getPaddingBottom() + lp3.topMargin + lp3.bottomMargin;
                        i3 = i20;
                        int i21 = lp3.height;
                        int childHeightMeasureSpec = getChildMeasureSpec(heightMeasureSpec, paddingTop, i21);
                        if (lp3.width != 0 || widthMode != 1073741824) {
                            widthMode2 = widthMode;
                            int childWidth3 = child4.getMeasuredWidth() + share;
                            if (childWidth3 < 0) {
                                childWidth3 = 0;
                            }
                            delta2 = delta7;
                            child4.measure(View.MeasureSpec.makeMeasureSpec(childWidth3, 1073741824), childHeightMeasureSpec);
                            childState = View.combineMeasuredStates(childState, child4.getMeasuredState() & i2);
                            delta6 = delta2;
                            weightSum2 = weightSum4;
                        } else {
                            widthMode2 = widthMode;
                            child4.measure(View.MeasureSpec.makeMeasureSpec(share > 0 ? share : 0, 1073741824), childHeightMeasureSpec);
                            delta2 = delta7;
                            childState = View.combineMeasuredStates(childState, child4.getMeasuredState() & i2);
                            delta6 = delta2;
                            weightSum2 = weightSum4;
                        }
                    }
                    if (isExactly) {
                        this.mTotalLength += child4.getMeasuredWidth() + lp3.leftMargin + lp3.rightMargin + getNextLocationOffset(child4);
                        weightSum = weightSum2;
                    } else {
                        int totalLength2 = this.mTotalLength;
                        weightSum = weightSum2;
                        this.mTotalLength = Math.max(totalLength2, child4.getMeasuredWidth() + totalLength2 + lp3.leftMargin + lp3.rightMargin + getNextLocationOffset(child4));
                    }
                    boolean matchHeightLocally = heightMode != 1073741824 && lp3.height == -1;
                    int margin3 = lp3.topMargin + lp3.bottomMargin;
                    int childHeight2 = child4.getMeasuredHeight() + margin3;
                    maxHeight3 = Math.max(maxHeight3, childHeight2);
                    int alternativeMaxHeight9 = Math.max(alternativeMaxHeight8, matchHeightLocally ? margin3 : childHeight2);
                    if (allFillParent) {
                        alternativeMaxHeight2 = alternativeMaxHeight9;
                        boolean allFillParent3 = lp3.height == -1;
                        if (baselineAligned3) {
                            allFillParent = allFillParent3;
                        } else {
                            int childBaseline2 = child4.getBaseline();
                            allFillParent = allFillParent3;
                            if (childBaseline2 != -1) {
                                int gravity3 = (lp3.gravity < 0 ? this.mGravity : lp3.gravity) & 112;
                                int index2 = ((gravity3 >> 4) & (-2)) >> 1;
                                int gravity4 = maxAscent3[index2];
                                maxAscent3[index2] = Math.max(gravity4, childBaseline2);
                                maxDescent3[index2] = Math.max(maxDescent3[index2], childHeight2 - childBaseline2);
                            }
                        }
                        alternativeMaxHeight8 = alternativeMaxHeight2;
                    } else {
                        alternativeMaxHeight2 = alternativeMaxHeight9;
                    }
                    if (baselineAligned3) {
                    }
                    alternativeMaxHeight8 = alternativeMaxHeight2;
                }
            } else {
                widthMode2 = widthMode;
                weightSum = weightSum3;
                i3 = i20;
            }
            weightSum3 = weightSum;
            i20 = i3 + 1;
            widthMode = widthMode2;
        }
        this.mTotalLength += getPaddingLeft() + getPaddingRight();
        if (maxAscent3[1] == -1 && maxAscent3[0] == -1 && maxAscent3[2] == -1 && maxAscent3[3] == -1) {
            maxHeight = maxHeight3;
        } else {
            int ascent2 = Math.max(maxAscent3[3], Math.max(maxAscent3[0], Math.max(maxAscent3[1], maxAscent3[2])));
            int descent2 = Math.max(maxDescent3[3], Math.max(maxDescent3[0], Math.max(maxDescent3[1], maxDescent3[2])));
            maxHeight = Math.max(maxHeight3, ascent2 + descent2);
        }
        alternativeMaxHeight = alternativeMaxHeight8;
        if (!allFillParent) {
            maxHeight = alternativeMaxHeight;
        }
        setMeasuredDimension(widthSizeAndState | (childState & i2), View.resolveSizeAndState(Math.max(maxHeight + getPaddingTop() + getPaddingBottom(), getSuggestedMinimumHeight()), heightMeasureSpec, childState << 16));
        if (largestChildWidth3 == 0) {
        }
    }

    private void forceUniformHeight(int count, int widthMeasureSpec) {
        int widthMeasureSpec2;
        int uniformMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824);
        int i = 0;
        while (i < count) {
            View child = getVirtualChildAt(i);
            if (child.getVisibility() == 8) {
                widthMeasureSpec2 = widthMeasureSpec;
            } else {
                LayoutParams lp = (LayoutParams) child.getLayoutParams();
                if (lp.height != -1) {
                    widthMeasureSpec2 = widthMeasureSpec;
                } else {
                    int oldWidth = lp.width;
                    lp.width = child.getMeasuredWidth();
                    widthMeasureSpec2 = widthMeasureSpec;
                    measureChildWithMargins(child, widthMeasureSpec2, 0, uniformMeasureSpec, 0);
                    lp.width = oldWidth;
                }
            }
            i++;
            widthMeasureSpec = widthMeasureSpec2;
        }
    }

    int getChildrenSkipCount(View child, int index) {
        return 0;
    }

    int measureNullChild(int childIndex) {
        return 0;
    }

    void measureChildBeforeLayout(View child, int childIndex, int widthMeasureSpec, int totalWidth, int heightMeasureSpec, int totalHeight) {
        measureChildWithMargins(child, widthMeasureSpec, totalWidth, heightMeasureSpec, totalHeight);
    }

    int getLocationOffset(View child) {
        return 0;
    }

    int getNextLocationOffset(View child) {
        return 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean changed, int l, int t, int r, int b) {
        if (this.mOrientation == 1) {
            layoutVertical(l, t, r, b);
        } else {
            layoutHorizontal(l, t, r, b);
        }
    }

    void layoutVertical(int left, int top, int right, int bottom) {
        int childTop;
        int gravity;
        int childTop2;
        int childLeft;
        int childLeft2;
        int paddingLeft = getPaddingLeft();
        int width = right - left;
        int childRight = width - getPaddingRight();
        int childSpace = (width - paddingLeft) - getPaddingRight();
        int count = getVirtualChildCount();
        int majorGravity = this.mGravity & 112;
        int minorGravity = this.mGravity & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        switch (majorGravity) {
            case 16:
                int childTop3 = getPaddingTop();
                childTop = childTop3 + (((bottom - top) - this.mTotalLength) / 2);
                break;
            case GrpcUtil.DEFAULT_PORT_PLAINTEXT /* 80 */:
                int childTop4 = getPaddingTop();
                childTop = ((childTop4 + bottom) - top) - this.mTotalLength;
                break;
            default:
                childTop = getPaddingTop();
                break;
        }
        int i = 0;
        while (i < count) {
            int childTop5 = childTop;
            View child = getVirtualChildAt(i);
            if (child == null) {
                childTop = childTop5 + measureNullChild(i);
            } else if (child.getVisibility() == 8) {
                childTop = childTop5;
            } else {
                int childWidth = child.getMeasuredWidth();
                int childHeight = child.getMeasuredHeight();
                LayoutParams lp = (LayoutParams) child.getLayoutParams();
                int gravity2 = lp.gravity;
                if (gravity2 >= 0) {
                    gravity = gravity2;
                } else {
                    gravity = minorGravity;
                }
                int layoutDirection = getLayoutDirection();
                int absoluteGravity = GravityCompat.getAbsoluteGravity(gravity, layoutDirection);
                switch (absoluteGravity & 7) {
                    case 1:
                        childTop2 = childTop5;
                        int childTop6 = childSpace - childWidth;
                        int childLeft3 = (((childTop6 / 2) + paddingLeft) + lp.leftMargin) - lp.rightMargin;
                        childLeft = childLeft3;
                        break;
                    case 5:
                        int childLeft4 = childRight - childWidth;
                        childTop2 = childTop5;
                        int childTop7 = lp.rightMargin;
                        childLeft = childLeft4 - childTop7;
                        break;
                    default:
                        childTop2 = childTop5;
                        int childTop8 = lp.leftMargin;
                        childLeft = paddingLeft + childTop8;
                        break;
                }
                if (!hasDividerBeforeChildAt(i)) {
                    childLeft2 = childLeft;
                } else {
                    childLeft2 = childLeft;
                    int childLeft5 = this.mDividerHeight;
                    childTop2 += childLeft5;
                }
                int childLeft6 = lp.topMargin;
                int childTop9 = childTop2 + childLeft6;
                int layoutDirection2 = childTop9 + getLocationOffset(child);
                setChildFrame(child, childLeft2, layoutDirection2, childWidth, childHeight);
                int childTop10 = childTop9 + lp.bottomMargin + childHeight + getNextLocationOffset(child);
                i += getChildrenSkipCount(child, i);
                childTop = childTop10;
            }
            i++;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00d2  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x011e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    void layoutHorizontal(int left, int top, int right, int bottom) {
        int childLeft;
        int start;
        int dir;
        int layoutDirection;
        boolean isLayoutRtl;
        int paddingTop;
        int childHeight;
        int childBaseline;
        int gravity;
        int gravity2;
        int childTop;
        int childTop2;
        int childLeft2;
        boolean isLayoutRtl2 = ViewUtils.isLayoutRtl(this);
        int paddingTop2 = getPaddingTop();
        int height = bottom - top;
        int childBottom = height - getPaddingBottom();
        int childSpace = (height - paddingTop2) - getPaddingBottom();
        int count = getVirtualChildCount();
        int majorGravity = this.mGravity & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        int minorGravity = this.mGravity & 112;
        boolean baselineAligned = this.mBaselineAligned;
        int[] maxAscent = this.mMaxAscent;
        int[] maxDescent = this.mMaxDescent;
        int layoutDirection2 = getLayoutDirection();
        switch (GravityCompat.getAbsoluteGravity(majorGravity, layoutDirection2)) {
            case 1:
                int childLeft3 = getPaddingLeft();
                childLeft = childLeft3 + (((right - left) - this.mTotalLength) / 2);
                break;
            case 5:
                int childLeft4 = getPaddingLeft();
                childLeft = ((childLeft4 + right) - left) - this.mTotalLength;
                break;
            default:
                childLeft = getPaddingLeft();
                break;
        }
        if (!isLayoutRtl2) {
            start = 0;
            dir = 1;
        } else {
            int start2 = count - 1;
            start = start2;
            dir = -1;
        }
        int i = 0;
        while (i < count) {
            int childIndex = start + (dir * i);
            int[] maxDescent2 = maxDescent;
            View child = getVirtualChildAt(childIndex);
            if (child == null) {
                childLeft += measureNullChild(childIndex);
                layoutDirection = layoutDirection2;
                isLayoutRtl = isLayoutRtl2;
                paddingTop = paddingTop2;
            } else {
                layoutDirection = layoutDirection2;
                int childLeft5 = childLeft;
                if (child.getVisibility() != 8) {
                    int i2 = i;
                    int childWidth = child.getMeasuredWidth();
                    int childHeight2 = child.getMeasuredHeight();
                    isLayoutRtl = isLayoutRtl2;
                    LayoutParams lp = (LayoutParams) child.getLayoutParams();
                    if (!baselineAligned) {
                        childHeight = childHeight2;
                    } else {
                        childHeight = childHeight2;
                        if (lp.height != -1) {
                            int childBaseline2 = child.getBaseline();
                            childBaseline = childBaseline2;
                        }
                        gravity = lp.gravity;
                        if (gravity < 0) {
                            gravity2 = gravity;
                        } else {
                            gravity2 = minorGravity;
                        }
                        switch (gravity2 & 112) {
                            case 16:
                                childTop = ((((childSpace - childHeight) / 2) + paddingTop2) + lp.topMargin) - lp.bottomMargin;
                                break;
                            case 48:
                                int childTop3 = lp.topMargin + paddingTop2;
                                childTop = childBaseline != -1 ? childTop3 + (maxAscent[1] - childBaseline) : childTop3;
                                break;
                            case GrpcUtil.DEFAULT_PORT_PLAINTEXT /* 80 */:
                                int childTop4 = childBottom - childHeight;
                                int childTop5 = childTop4 - lp.bottomMargin;
                                if (childBaseline == -1) {
                                    childTop = childTop5;
                                } else {
                                    int descent = child.getMeasuredHeight() - childBaseline;
                                    childTop = childTop5 - (maxDescent2[2] - descent);
                                }
                                break;
                            default:
                                childTop = paddingTop2;
                                break;
                        }
                        if (hasDividerBeforeChildAt(childIndex)) {
                            childTop2 = childTop;
                            childLeft2 = childLeft5;
                        } else {
                            childTop2 = childTop;
                            int childTop6 = this.mDividerWidth;
                            childLeft2 = childLeft5 + childTop6;
                        }
                        int childLeft6 = childLeft2;
                        int childLeft7 = lp.leftMargin;
                        int childLeft8 = childLeft6 + childLeft7;
                        int childBaseline3 = childTop2;
                        paddingTop = paddingTop2;
                        setChildFrame(child, childLeft8 + getLocationOffset(child), childBaseline3, childWidth, childHeight);
                        int childLeft9 = childLeft8 + lp.rightMargin + childWidth + getNextLocationOffset(child);
                        i = i2 + getChildrenSkipCount(child, childIndex);
                        childLeft = childLeft9;
                    }
                    childBaseline = -1;
                    gravity = lp.gravity;
                    if (gravity < 0) {
                    }
                    switch (gravity2 & 112) {
                        case 16:
                            break;
                        case 48:
                            break;
                        case GrpcUtil.DEFAULT_PORT_PLAINTEXT /* 80 */:
                            break;
                    }
                    if (hasDividerBeforeChildAt(childIndex)) {
                    }
                    int childLeft62 = childLeft2;
                    int childLeft72 = lp.leftMargin;
                    int childLeft82 = childLeft62 + childLeft72;
                    int childBaseline32 = childTop2;
                    paddingTop = paddingTop2;
                    setChildFrame(child, childLeft82 + getLocationOffset(child), childBaseline32, childWidth, childHeight);
                    int childLeft92 = childLeft82 + lp.rightMargin + childWidth + getNextLocationOffset(child);
                    i = i2 + getChildrenSkipCount(child, childIndex);
                    childLeft = childLeft92;
                } else {
                    isLayoutRtl = isLayoutRtl2;
                    paddingTop = paddingTop2;
                    childLeft = childLeft5;
                }
            }
            i++;
            maxDescent = maxDescent2;
            layoutDirection2 = layoutDirection;
            paddingTop2 = paddingTop;
            isLayoutRtl2 = isLayoutRtl;
        }
    }

    private void setChildFrame(View child, int left, int top, int width, int height) {
        child.layout(left, top, left + width, top + height);
    }

    public void setOrientation(int orientation) {
        if (this.mOrientation != orientation) {
            this.mOrientation = orientation;
            requestLayout();
        }
    }

    public int getOrientation() {
        return this.mOrientation;
    }

    public void setGravity(int gravity) {
        if (this.mGravity != gravity) {
            if ((8388615 & gravity) == 0) {
                gravity |= GravityCompat.START;
            }
            if ((gravity & 112) == 0) {
                gravity |= 48;
            }
            this.mGravity = gravity;
            requestLayout();
        }
    }

    public int getGravity() {
        return this.mGravity;
    }

    public void setHorizontalGravity(int horizontalGravity) {
        int gravity = horizontalGravity & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        if ((8388615 & this.mGravity) != gravity) {
            this.mGravity = (this.mGravity & (-8388616)) | gravity;
            requestLayout();
        }
    }

    public void setVerticalGravity(int verticalGravity) {
        int gravity = verticalGravity & 112;
        if ((this.mGravity & 112) != gravity) {
            this.mGravity = (this.mGravity & (-113)) | gravity;
            requestLayout();
        }
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(AttributeSet attrs) {
        return new LayoutParams(getContext(), attrs);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    public LayoutParams generateDefaultLayoutParams() {
        if (this.mOrientation == 0) {
            return new LayoutParams(-2, -2);
        }
        if (this.mOrientation == 1) {
            return new LayoutParams(-1, -2);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(ViewGroup.LayoutParams p) {
        if (p instanceof LayoutParams) {
            return new LayoutParams((ViewGroup.MarginLayoutParams) p);
        }
        if (p instanceof ViewGroup.MarginLayoutParams) {
            return new LayoutParams((ViewGroup.MarginLayoutParams) p);
        }
        return new LayoutParams(p);
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams p) {
        return p instanceof LayoutParams;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent event) {
        super.onInitializeAccessibilityEvent(event);
        event.setClassName(ACCESSIBILITY_CLASS_NAME);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo info) {
        super.onInitializeAccessibilityNodeInfo(info);
        info.setClassName(ACCESSIBILITY_CLASS_NAME);
    }

    public static class LayoutParams extends LinearLayout.LayoutParams {
        public LayoutParams(Context c, AttributeSet attrs) {
            super(c, attrs);
        }

        public LayoutParams(int width, int height) {
            super(width, height);
        }

        public LayoutParams(int width, int height, float weight) {
            super(width, height, weight);
        }

        public LayoutParams(ViewGroup.LayoutParams p) {
            super(p);
        }

        public LayoutParams(ViewGroup.MarginLayoutParams source) {
            super(source);
        }
    }
}
