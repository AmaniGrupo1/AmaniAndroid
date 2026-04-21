.class public abstract Landroidx/transition/Transition;
.super Ljava/lang/Object;
.source "Transition.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/Transition$SeekController;,
        Landroidx/transition/Transition$TransitionListener;,
        Landroidx/transition/Transition$AnimationInfo;,
        Landroidx/transition/Transition$Impl26;,
        Landroidx/transition/Transition$ArrayListManager;,
        Landroidx/transition/Transition$TransitionNotification;,
        Landroidx/transition/Transition$EpicenterCallback;,
        Landroidx/transition/Transition$MatchOrder;
    }
.end annotation


# static fields
.field static final DBG:Z = false

.field private static final DEFAULT_MATCH_ORDER:[I

.field private static final EMPTY_ANIMATOR_ARRAY:[Landroid/animation/Animator;

.field private static final LOG_TAG:Ljava/lang/String; = "Transition"

.field private static final MATCH_FIRST:I = 0x1

.field public static final MATCH_ID:I = 0x3

.field private static final MATCH_ID_STR:Ljava/lang/String; = "id"

.field public static final MATCH_INSTANCE:I = 0x1

.field private static final MATCH_INSTANCE_STR:Ljava/lang/String; = "instance"

.field public static final MATCH_ITEM_ID:I = 0x4

.field private static final MATCH_ITEM_ID_STR:Ljava/lang/String; = "itemId"

.field private static final MATCH_LAST:I = 0x4

.field public static final MATCH_NAME:I = 0x2

.field private static final MATCH_NAME_STR:Ljava/lang/String; = "name"

.field private static final STRAIGHT_PATH_MOTION:Landroidx/transition/PathMotion;

.field private static sRunningAnimators:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroidx/collection/ArrayMap<",
            "Landroid/animation/Animator;",
            "Landroidx/transition/Transition$AnimationInfo;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mAnimatorCache:[Landroid/animation/Animator;

.field mAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field mCanRemoveViews:Z

.field private mCloneParent:Landroidx/transition/Transition;

.field mCurrentAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field mDuration:J

.field private mEndValues:Landroidx/transition/TransitionValuesMaps;

.field private mEndValuesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/transition/TransitionValues;",
            ">;"
        }
    .end annotation
.end field

.field mEnded:Z

.field private mEpicenterCallback:Landroidx/transition/Transition$EpicenterCallback;

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/transition/Transition$TransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mListenersCache:[Landroidx/transition/Transition$TransitionListener;

.field private mMatchOrder:[I

.field private mName:Ljava/lang/String;

.field private mNameOverrides:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mNumInstances:I

.field mParent:Landroidx/transition/TransitionSet;

.field private mPathMotion:Landroidx/transition/PathMotion;

.field private mPaused:Z

.field mPropagation:Landroidx/transition/TransitionPropagation;

.field mSeekController:Landroidx/transition/Transition$SeekController;

.field mSeekOffsetInParent:J

.field private mStartDelay:J

.field private mStartValues:Landroidx/transition/TransitionValuesMaps;

.field private mStartValuesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/transition/TransitionValues;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetChildExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetIdChildExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetIdExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mTargetIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetNameExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetTypeChildExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private mTargetTypeExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private mTargetTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field mTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mTotalDuration:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 132
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/animation/Animator;

    sput-object v0, Landroidx/transition/Transition;->EMPTY_ANIMATOR_ARRAY:[Landroid/animation/Animator;

    .line 174
    const/4 v0, 0x3

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x1

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroidx/transition/Transition;->DEFAULT_MATCH_ORDER:[I

    .line 181
    new-instance v0, Landroidx/transition/Transition$1;

    invoke-direct {v0}, Landroidx/transition/Transition$1;-><init>()V

    sput-object v0, Landroidx/transition/Transition;->STRAIGHT_PATH_MOTION:Landroidx/transition/PathMotion;

    .line 216
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/transition/Transition;->sRunningAnimators:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/transition/Transition;->mName:Ljava/lang/String;

    .line 193
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/transition/Transition;->mStartDelay:J

    .line 194
    iput-wide v0, p0, Landroidx/transition/Transition;->mDuration:J

    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 196
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    .line 197
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    .line 198
    iput-object v0, p0, Landroidx/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    .line 199
    iput-object v0, p0, Landroidx/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    .line 200
    iput-object v0, p0, Landroidx/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    .line 201
    iput-object v0, p0, Landroidx/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    .line 202
    iput-object v0, p0, Landroidx/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    .line 203
    iput-object v0, p0, Landroidx/transition/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    .line 204
    iput-object v0, p0, Landroidx/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    .line 205
    iput-object v0, p0, Landroidx/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    .line 206
    iput-object v0, p0, Landroidx/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    .line 207
    new-instance v1, Landroidx/transition/TransitionValuesMaps;

    invoke-direct {v1}, Landroidx/transition/TransitionValuesMaps;-><init>()V

    iput-object v1, p0, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    .line 208
    new-instance v1, Landroidx/transition/TransitionValuesMaps;

    invoke-direct {v1}, Landroidx/transition/TransitionValuesMaps;-><init>()V

    iput-object v1, p0, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    .line 209
    iput-object v0, p0, Landroidx/transition/Transition;->mParent:Landroidx/transition/TransitionSet;

    .line 210
    sget-object v1, Landroidx/transition/Transition;->DEFAULT_MATCH_ORDER:[I

    iput-object v1, p0, Landroidx/transition/Transition;->mMatchOrder:[I

    .line 225
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/transition/Transition;->mCanRemoveViews:Z

    .line 229
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    .line 232
    sget-object v2, Landroidx/transition/Transition;->EMPTY_ANIMATOR_ARRAY:[Landroid/animation/Animator;

    iput-object v2, p0, Landroidx/transition/Transition;->mAnimatorCache:[Landroid/animation/Animator;

    .line 236
    iput v1, p0, Landroidx/transition/Transition;->mNumInstances:I

    .line 239
    iput-boolean v1, p0, Landroidx/transition/Transition;->mPaused:Z

    .line 243
    iput-boolean v1, p0, Landroidx/transition/Transition;->mEnded:Z

    .line 246
    iput-object v0, p0, Landroidx/transition/Transition;->mCloneParent:Landroidx/transition/Transition;

    .line 249
    iput-object v0, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    .line 268
    sget-object v0, Landroidx/transition/Transition;->STRAIGHT_PATH_MOTION:Landroidx/transition/PathMotion;

    iput-object v0, p0, Landroidx/transition/Transition;->mPathMotion:Landroidx/transition/PathMotion;

    .line 289
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/transition/Transition;->mName:Ljava/lang/String;

    .line 193
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/transition/Transition;->mStartDelay:J

    .line 194
    iput-wide v0, p0, Landroidx/transition/Transition;->mDuration:J

    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 196
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    .line 197
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    .line 198
    iput-object v0, p0, Landroidx/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    .line 199
    iput-object v0, p0, Landroidx/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    .line 200
    iput-object v0, p0, Landroidx/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    .line 201
    iput-object v0, p0, Landroidx/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    .line 202
    iput-object v0, p0, Landroidx/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    .line 203
    iput-object v0, p0, Landroidx/transition/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    .line 204
    iput-object v0, p0, Landroidx/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    .line 205
    iput-object v0, p0, Landroidx/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    .line 206
    iput-object v0, p0, Landroidx/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    .line 207
    new-instance v1, Landroidx/transition/TransitionValuesMaps;

    invoke-direct {v1}, Landroidx/transition/TransitionValuesMaps;-><init>()V

    iput-object v1, p0, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    .line 208
    new-instance v1, Landroidx/transition/TransitionValuesMaps;

    invoke-direct {v1}, Landroidx/transition/TransitionValuesMaps;-><init>()V

    iput-object v1, p0, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    .line 209
    iput-object v0, p0, Landroidx/transition/Transition;->mParent:Landroidx/transition/TransitionSet;

    .line 210
    sget-object v1, Landroidx/transition/Transition;->DEFAULT_MATCH_ORDER:[I

    iput-object v1, p0, Landroidx/transition/Transition;->mMatchOrder:[I

    .line 225
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/transition/Transition;->mCanRemoveViews:Z

    .line 229
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    .line 232
    sget-object v2, Landroidx/transition/Transition;->EMPTY_ANIMATOR_ARRAY:[Landroid/animation/Animator;

    iput-object v2, p0, Landroidx/transition/Transition;->mAnimatorCache:[Landroid/animation/Animator;

    .line 236
    iput v1, p0, Landroidx/transition/Transition;->mNumInstances:I

    .line 239
    iput-boolean v1, p0, Landroidx/transition/Transition;->mPaused:Z

    .line 243
    iput-boolean v1, p0, Landroidx/transition/Transition;->mEnded:Z

    .line 246
    iput-object v0, p0, Landroidx/transition/Transition;->mCloneParent:Landroidx/transition/Transition;

    .line 249
    iput-object v0, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    .line 268
    sget-object v0, Landroidx/transition/Transition;->STRAIGHT_PATH_MOTION:Landroidx/transition/PathMotion;

    iput-object v0, p0, Landroidx/transition/Transition;->mPathMotion:Landroidx/transition/PathMotion;

    .line 301
    sget-object v0, Landroidx/transition/Styleable;->TRANSITION:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 302
    .local v0, "a":Landroid/content/res/TypedArray;
    move-object v2, p2

    check-cast v2, Landroid/content/res/XmlResourceParser;

    .line 303
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    const-string v3, "duration"

    const/4 v4, 0x1

    const/4 v5, -0x1

    invoke-static {v0, v2, v3, v4, v5}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v3

    int-to-long v3, v3

    .line 305
    .local v3, "duration":J
    const-wide/16 v6, 0x0

    cmp-long v8, v3, v6

    if-ltz v8, :cond_0

    .line 306
    invoke-virtual {p0, v3, v4}, Landroidx/transition/Transition;->setDuration(J)Landroidx/transition/Transition;

    .line 308
    :cond_0
    const-string/jumbo v8, "startDelay"

    const/4 v9, 0x2

    invoke-static {v0, v2, v8, v9, v5}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v5

    int-to-long v8, v5

    .line 310
    .local v8, "startDelay":J
    cmp-long v5, v8, v6

    if-lez v5, :cond_1

    .line 311
    invoke-virtual {p0, v8, v9}, Landroidx/transition/Transition;->setStartDelay(J)Landroidx/transition/Transition;

    .line 313
    :cond_1
    const-string v5, "interpolator"

    invoke-static {v0, v2, v5, v1, v1}, Landroidx/core/content/res/TypedArrayUtils;->getNamedResourceId(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v1

    .line 315
    .local v1, "resId":I
    if-lez v1, :cond_2

    .line 316
    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroidx/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroidx/transition/Transition;

    .line 318
    :cond_2
    const-string v5, "matchOrder"

    const/4 v6, 0x3

    invoke-static {v0, v2, v5, v6}, Landroidx/core/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 320
    .local v5, "matchOrder":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 321
    invoke-static {v5}, Landroidx/transition/Transition;->parseMatchOrder(Ljava/lang/String;)[I

    move-result-object v6

    invoke-virtual {p0, v6}, Landroidx/transition/Transition;->setMatchOrder([I)V

    .line 323
    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 324
    return-void
.end method

.method static synthetic access$000(Landroidx/transition/Transition;)Landroidx/transition/Transition;
    .locals 1
    .param p0, "x0"    # Landroidx/transition/Transition;

    .line 129
    iget-object v0, p0, Landroidx/transition/Transition;->mCloneParent:Landroidx/transition/Transition;

    return-object v0
.end method

.method static synthetic access$002(Landroidx/transition/Transition;Landroidx/transition/Transition;)Landroidx/transition/Transition;
    .locals 0
    .param p0, "x0"    # Landroidx/transition/Transition;
    .param p1, "x1"    # Landroidx/transition/Transition;

    .line 129
    iput-object p1, p0, Landroidx/transition/Transition;->mCloneParent:Landroidx/transition/Transition;

    return-object p1
.end method

.method private addUnmatched(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap<",
            "Landroid/view/View;",
            "Landroidx/transition/TransitionValues;",
            ">;",
            "Landroidx/collection/ArrayMap<",
            "Landroid/view/View;",
            "Landroidx/transition/TransitionValues;",
            ">;)V"
        }
    .end annotation

    .line 689
    .local p1, "unmatchedStart":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/view/View;Landroidx/transition/TransitionValues;>;"
    .local p2, "unmatchedEnd":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/view/View;Landroidx/transition/TransitionValues;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroidx/collection/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    .line 690
    invoke-virtual {p1, v0}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/TransitionValues;

    .line 691
    .local v1, "start":Landroidx/transition/TransitionValues;
    iget-object v3, v1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 692
    iget-object v3, p0, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 693
    iget-object v3, p0, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 689
    .end local v1    # "start":Landroidx/transition/TransitionValues;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 698
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    invoke-virtual {p2}, Landroidx/collection/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 699
    invoke-virtual {p2, v0}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/TransitionValues;

    .line 700
    .local v1, "end":Landroidx/transition/TransitionValues;
    iget-object v3, v1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 701
    iget-object v3, p0, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 702
    iget-object v3, p0, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 698
    .end local v1    # "end":Landroidx/transition/TransitionValues;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 705
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method private static addViewValues(Landroidx/transition/TransitionValuesMaps;Landroid/view/View;Landroidx/transition/TransitionValues;)V
    .locals 9
    .param p0, "transitionValuesMaps"    # Landroidx/transition/TransitionValuesMaps;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "transitionValues"    # Landroidx/transition/TransitionValues;

    .line 1611
    iget-object v0, p0, Landroidx/transition/TransitionValuesMaps;->mViewValues:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1612
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1613
    .local v0, "id":I
    const/4 v1, 0x0

    if-ltz v0, :cond_1

    .line 1614
    iget-object v2, p0, Landroidx/transition/TransitionValuesMaps;->mIdValues:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_0

    .line 1616
    iget-object v2, p0, Landroidx/transition/TransitionValuesMaps;->mIdValues:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 1618
    :cond_0
    iget-object v2, p0, Landroidx/transition/TransitionValuesMaps;->mIdValues:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1621
    :cond_1
    :goto_0
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    .line 1622
    .local v2, "name":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 1623
    iget-object v3, p0, Landroidx/transition/TransitionValuesMaps;->mNameValues:Landroidx/collection/ArrayMap;

    invoke-virtual {v3, v2}, Landroidx/collection/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1625
    iget-object v3, p0, Landroidx/transition/TransitionValuesMaps;->mNameValues:Landroidx/collection/ArrayMap;

    invoke-virtual {v3, v2, v1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1627
    :cond_2
    iget-object v3, p0, Landroidx/transition/TransitionValuesMaps;->mNameValues:Landroidx/collection/ArrayMap;

    invoke-virtual {v3, v2, p1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1630
    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/widget/ListView;

    if-eqz v3, :cond_6

    .line 1631
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    .line 1632
    .local v3, "listview":Landroid/widget/ListView;
    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    invoke-interface {v4}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1633
    invoke-virtual {v3, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v4

    .line 1634
    .local v4, "position":I
    invoke-virtual {v3, v4}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v5

    .line 1635
    .local v5, "itemId":J
    iget-object v7, p0, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Landroidx/collection/LongSparseArray;

    invoke-virtual {v7, v5, v6}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result v7

    if-ltz v7, :cond_5

    .line 1637
    iget-object v7, p0, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Landroidx/collection/LongSparseArray;

    invoke-virtual {v7, v5, v6}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 1638
    .local v7, "alreadyMatched":Landroid/view/View;
    if-eqz v7, :cond_4

    .line 1639
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setHasTransientState(Z)V

    .line 1640
    iget-object v8, p0, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Landroidx/collection/LongSparseArray;

    invoke-virtual {v8, v5, v6, v1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1642
    .end local v7    # "alreadyMatched":Landroid/view/View;
    :cond_4
    goto :goto_2

    .line 1643
    :cond_5
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setHasTransientState(Z)V

    .line 1644
    iget-object v1, p0, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1, v5, v6, p1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1648
    .end local v3    # "listview":Landroid/widget/ListView;
    .end local v4    # "position":I
    .end local v5    # "itemId":J
    :cond_6
    :goto_2
    return-void
.end method

.method private static alreadyContains([II)Z
    .locals 3
    .param p0, "array"    # [I
    .param p1, "searchIndex"    # I

    .line 573
    aget v0, p0, p1

    .line 574
    .local v0, "value":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 575
    aget v2, p0, v1

    if-ne v2, v0, :cond_0

    .line 576
    const/4 v2, 0x1

    return v2

    .line 574
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 579
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private captureHierarchy(Landroid/view/View;Z)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "start"    # Z

    .line 1678
    if-nez p1, :cond_0

    .line 1679
    return-void

    .line 1681
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1682
    .local v0, "id":I
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1683
    return-void

    .line 1685
    :cond_1
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1686
    return-void

    .line 1688
    :cond_2
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    .line 1689
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1690
    .local v1, "numTypes":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_4

    .line 1691
    iget-object v3, p0, Landroidx/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1692
    return-void

    .line 1690
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1696
    .end local v1    # "numTypes":I
    .end local v2    # "i":I
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_7

    .line 1697
    new-instance v1, Landroidx/transition/TransitionValues;

    invoke-direct {v1, p1}, Landroidx/transition/TransitionValues;-><init>(Landroid/view/View;)V

    .line 1698
    .local v1, "values":Landroidx/transition/TransitionValues;
    if-eqz p2, :cond_5

    .line 1699
    invoke-virtual {p0, v1}, Landroidx/transition/Transition;->captureStartValues(Landroidx/transition/TransitionValues;)V

    goto :goto_1

    .line 1701
    :cond_5
    invoke-virtual {p0, v1}, Landroidx/transition/Transition;->captureEndValues(Landroidx/transition/TransitionValues;)V

    .line 1703
    :goto_1
    iget-object v2, v1, Landroidx/transition/TransitionValues;->mTargetedTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1704
    invoke-virtual {p0, v1}, Landroidx/transition/Transition;->capturePropagationValues(Landroidx/transition/TransitionValues;)V

    .line 1705
    if-eqz p2, :cond_6

    .line 1706
    iget-object v2, p0, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    invoke-static {v2, p1, v1}, Landroidx/transition/Transition;->addViewValues(Landroidx/transition/TransitionValuesMaps;Landroid/view/View;Landroidx/transition/TransitionValues;)V

    goto :goto_2

    .line 1708
    :cond_6
    iget-object v2, p0, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    invoke-static {v2, p1, v1}, Landroidx/transition/Transition;->addViewValues(Landroidx/transition/TransitionValuesMaps;Landroid/view/View;Landroidx/transition/TransitionValues;)V

    .line 1711
    .end local v1    # "values":Landroidx/transition/TransitionValues;
    :cond_7
    :goto_2
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_c

    .line 1713
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_8

    iget-object v1, p0, Landroidx/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1714
    return-void

    .line 1716
    :cond_8
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_9

    iget-object v1, p0, Landroidx/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1717
    return-void

    .line 1719
    :cond_9
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_b

    .line 1720
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1721
    .local v1, "numTypes":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    if-ge v2, v1, :cond_b

    .line 1722
    iget-object v3, p0, Landroidx/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1723
    return-void

    .line 1721
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1727
    .end local v1    # "numTypes":I
    .end local v2    # "i":I
    :cond_b
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1728
    .local v1, "parent":Landroid/view/ViewGroup;
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_c

    .line 1729
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Landroidx/transition/Transition;->captureHierarchy(Landroid/view/View;Z)V

    .line 1728
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1732
    .end local v1    # "parent":Landroid/view/ViewGroup;
    .end local v2    # "i":I
    :cond_c
    return-void
.end method

.method private excludeId(Ljava/util/ArrayList;IZ)Ljava/util/ArrayList;
    .locals 1
    .param p2, "targetId"    # I
    .param p3, "exclude"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;IZ)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1381
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-lez p2, :cond_1

    .line 1382
    if-eqz p3, :cond_0

    .line 1383
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/transition/Transition$ArrayListManager;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    .line 1385
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/transition/Transition$ArrayListManager;->remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1388
    :cond_1
    :goto_0
    return-object p1
.end method

.method private static excludeObject(Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/ArrayList;
    .locals 0
    .param p2, "exclude"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;TT;Z)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 1237
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .local p1, "target":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_1

    .line 1238
    if-eqz p2, :cond_0

    .line 1239
    invoke-static {p0, p1}, Landroidx/transition/Transition$ArrayListManager;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    goto :goto_0

    .line 1241
    :cond_0
    invoke-static {p0, p1}, Landroidx/transition/Transition$ArrayListManager;->remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    .line 1244
    :cond_1
    :goto_0
    return-object p0
.end method

.method private excludeType(Ljava/util/ArrayList;Ljava/lang/Class;Z)Ljava/util/ArrayList;
    .locals 0
    .param p3, "exclude"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ljava/lang/Class<",
            "*>;Z)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 1463
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Class<*>;>;"
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p2, :cond_1

    .line 1464
    if-eqz p3, :cond_0

    .line 1465
    invoke-static {p1, p2}, Landroidx/transition/Transition$ArrayListManager;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    .line 1467
    :cond_0
    invoke-static {p1, p2}, Landroidx/transition/Transition$ArrayListManager;->remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1470
    :cond_1
    :goto_0
    return-object p1
.end method

.method private excludeView(Ljava/util/ArrayList;Landroid/view/View;Z)Ljava/util/ArrayList;
    .locals 0
    .param p2, "target"    # Landroid/view/View;
    .param p3, "exclude"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1396
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p2, :cond_1

    .line 1397
    if-eqz p3, :cond_0

    .line 1398
    invoke-static {p1, p2}, Landroidx/transition/Transition$ArrayListManager;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    .line 1400
    :cond_0
    invoke-static {p1, p2}, Landroidx/transition/Transition$ArrayListManager;->remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1403
    :cond_1
    :goto_0
    return-object p1
.end method

.method private static getRunningAnimators()Landroidx/collection/ArrayMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/ArrayMap<",
            "Landroid/animation/Animator;",
            "Landroidx/transition/Transition$AnimationInfo;",
            ">;"
        }
    .end annotation

    .line 908
    sget-object v0, Landroidx/transition/Transition;->sRunningAnimators:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/collection/ArrayMap;

    .line 909
    .local v0, "runningAnimators":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/animation/Animator;Landroidx/transition/Transition$AnimationInfo;>;"
    if-nez v0, :cond_0

    .line 910
    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    move-object v0, v1

    .line 911
    sget-object v1, Landroidx/transition/Transition;->sRunningAnimators:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 913
    :cond_0
    return-object v0
.end method

.method private static isValidMatch(I)Z
    .locals 2
    .param p0, "match"    # I

    .line 569
    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/4 v1, 0x4

    if-gt p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isValueChanged(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;Ljava/lang/String;)Z
    .locals 3
    .param p0, "oldValues"    # Landroidx/transition/TransitionValues;
    .param p1, "newValues"    # Landroidx/transition/TransitionValues;
    .param p2, "key"    # Ljava/lang/String;

    .line 1963
    iget-object v0, p0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1964
    .local v0, "oldValue":Ljava/lang/Object;
    iget-object v1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1966
    .local v1, "newValue":Ljava/lang/Object;
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 1968
    const/4 v2, 0x0

    .local v2, "changed":Z
    goto :goto_1

    .line 1969
    .end local v2    # "changed":Z
    :cond_0
    if-eqz v0, :cond_2

    if-nez v1, :cond_1

    goto :goto_0

    .line 1974
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .restart local v2    # "changed":Z
    goto :goto_1

    .line 1971
    .end local v2    # "changed":Z
    :cond_2
    :goto_0
    const/4 v2, 0x1

    .line 1981
    .restart local v2    # "changed":Z
    :goto_1
    return v2
.end method

.method private matchIds(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap<",
            "Landroid/view/View;",
            "Landroidx/transition/TransitionValues;",
            ">;",
            "Landroidx/collection/ArrayMap<",
            "Landroid/view/View;",
            "Landroidx/transition/TransitionValues;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 636
    .local p1, "unmatchedStart":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/view/View;Landroidx/transition/TransitionValues;>;"
    .local p2, "unmatchedEnd":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/view/View;Landroidx/transition/TransitionValues;>;"
    .local p3, "startIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/View;>;"
    .local p4, "endIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/View;>;"
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 637
    .local v0, "numStartIds":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 638
    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 639
    .local v2, "startView":Landroid/view/View;
    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 640
    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 641
    .local v3, "endView":Landroid/view/View;
    if-eqz v3, :cond_0

    invoke-virtual {p0, v3}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 642
    invoke-virtual {p1, v2}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/transition/TransitionValues;

    .line 643
    .local v4, "startValues":Landroidx/transition/TransitionValues;
    invoke-virtual {p2, v3}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/transition/TransitionValues;

    .line 644
    .local v5, "endValues":Landroidx/transition/TransitionValues;
    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    .line 645
    iget-object v6, p0, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 646
    iget-object v6, p0, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 647
    invoke-virtual {p1, v2}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    invoke-virtual {p2, v3}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    .end local v2    # "startView":Landroid/view/View;
    .end local v3    # "endView":Landroid/view/View;
    .end local v4    # "startValues":Landroidx/transition/TransitionValues;
    .end local v5    # "endValues":Landroidx/transition/TransitionValues;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 653
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private matchInstances(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap<",
            "Landroid/view/View;",
            "Landroidx/transition/TransitionValues;",
            ">;",
            "Landroidx/collection/ArrayMap<",
            "Landroid/view/View;",
            "Landroidx/transition/TransitionValues;",
            ">;)V"
        }
    .end annotation

    .line 588
    .local p1, "unmatchedStart":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/view/View;Landroidx/transition/TransitionValues;>;"
    .local p2, "unmatchedEnd":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/view/View;Landroidx/transition/TransitionValues;>;"
    invoke-virtual {p1}, Landroidx/collection/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 589
    invoke-virtual {p1, v0}, Landroidx/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 590
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 591
    invoke-virtual {p2, v1}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/TransitionValues;

    .line 592
    .local v2, "end":Landroidx/transition/TransitionValues;
    if-eqz v2, :cond_0

    iget-object v3, v2, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 593
    invoke-virtual {p1, v0}, Landroidx/collection/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/transition/TransitionValues;

    .line 594
    .local v3, "start":Landroidx/transition/TransitionValues;
    iget-object v4, p0, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 595
    iget-object v4, p0, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 588
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "end":Landroidx/transition/TransitionValues;
    .end local v3    # "start":Landroidx/transition/TransitionValues;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 599
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private matchItemIds(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;Landroidx/collection/LongSparseArray;Landroidx/collection/LongSparseArray;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap<",
            "Landroid/view/View;",
            "Landroidx/transition/TransitionValues;",
            ">;",
            "Landroidx/collection/ArrayMap<",
            "Landroid/view/View;",
            "Landroidx/transition/TransitionValues;",
            ">;",
            "Landroidx/collection/LongSparseArray<",
            "Landroid/view/View;",
            ">;",
            "Landroidx/collection/LongSparseArray<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 609
    .local p1, "unmatchedStart":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/view/View;Landroidx/transition/TransitionValues;>;"
    .local p2, "unmatchedEnd":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/view/View;Landroidx/transition/TransitionValues;>;"
    .local p3, "startItemIds":Landroidx/collection/LongSparseArray;, "Landroidx/collection/LongSparseArray<Landroid/view/View;>;"
    .local p4, "endItemIds":Landroidx/collection/LongSparseArray;, "Landroidx/collection/LongSparseArray<Landroid/view/View;>;"
    invoke-virtual {p3}, Landroidx/collection/LongSparseArray;->size()I

    move-result v0

    .line 610
    .local v0, "numStartIds":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 611
    invoke-virtual {p3, v1}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 612
    .local v2, "startView":Landroid/view/View;
    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 613
    invoke-virtual {p3, v1}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    invoke-virtual {p4, v3, v4}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 614
    .local v3, "endView":Landroid/view/View;
    if-eqz v3, :cond_0

    invoke-virtual {p0, v3}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 615
    invoke-virtual {p1, v2}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/transition/TransitionValues;

    .line 616
    .local v4, "startValues":Landroidx/transition/TransitionValues;
    invoke-virtual {p2, v3}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/transition/TransitionValues;

    .line 617
    .local v5, "endValues":Landroidx/transition/TransitionValues;
    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    .line 618
    iget-object v6, p0, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 619
    iget-object v6, p0, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 620
    invoke-virtual {p1, v2}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    invoke-virtual {p2, v3}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    .end local v2    # "startView":Landroid/view/View;
    .end local v3    # "endView":Landroid/view/View;
    .end local v4    # "startValues":Landroidx/transition/TransitionValues;
    .end local v5    # "endValues":Landroidx/transition/TransitionValues;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 626
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private matchNames(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap<",
            "Landroid/view/View;",
            "Landroidx/transition/TransitionValues;",
            ">;",
            "Landroidx/collection/ArrayMap<",
            "Landroid/view/View;",
            "Landroidx/transition/TransitionValues;",
            ">;",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 663
    .local p1, "unmatchedStart":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/view/View;Landroidx/transition/TransitionValues;>;"
    .local p2, "unmatchedEnd":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/view/View;Landroidx/transition/TransitionValues;>;"
    .local p3, "startNames":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .local p4, "endNames":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {p3}, Landroidx/collection/ArrayMap;->size()I

    move-result v0

    .line 664
    .local v0, "numStartNames":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 665
    invoke-virtual {p3, v1}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 666
    .local v2, "startView":Landroid/view/View;
    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 667
    invoke-virtual {p3, v1}, Landroidx/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p4, v3}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 668
    .local v3, "endView":Landroid/view/View;
    if-eqz v3, :cond_0

    invoke-virtual {p0, v3}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 669
    invoke-virtual {p1, v2}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/transition/TransitionValues;

    .line 670
    .local v4, "startValues":Landroidx/transition/TransitionValues;
    invoke-virtual {p2, v3}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/transition/TransitionValues;

    .line 671
    .local v5, "endValues":Landroidx/transition/TransitionValues;
    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    .line 672
    iget-object v6, p0, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 673
    iget-object v6, p0, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 674
    invoke-virtual {p1, v2}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    invoke-virtual {p2, v3}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    .end local v2    # "startView":Landroid/view/View;
    .end local v3    # "endView":Landroid/view/View;
    .end local v4    # "startValues":Landroidx/transition/TransitionValues;
    .end local v5    # "endValues":Landroidx/transition/TransitionValues;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 680
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private matchStartAndEnd(Landroidx/transition/TransitionValuesMaps;Landroidx/transition/TransitionValuesMaps;)V
    .locals 5
    .param p1, "startValues"    # Landroidx/transition/TransitionValuesMaps;
    .param p2, "endValues"    # Landroidx/transition/TransitionValuesMaps;

    .line 709
    new-instance v0, Landroidx/collection/ArrayMap;

    iget-object v1, p1, Landroidx/transition/TransitionValuesMaps;->mViewValues:Landroidx/collection/ArrayMap;

    invoke-direct {v0, v1}, Landroidx/collection/ArrayMap;-><init>(Landroidx/collection/SimpleArrayMap;)V

    .line 710
    .local v0, "unmatchedStart":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/view/View;Landroidx/transition/TransitionValues;>;"
    new-instance v1, Landroidx/collection/ArrayMap;

    iget-object v2, p2, Landroidx/transition/TransitionValuesMaps;->mViewValues:Landroidx/collection/ArrayMap;

    invoke-direct {v1, v2}, Landroidx/collection/ArrayMap;-><init>(Landroidx/collection/SimpleArrayMap;)V

    .line 713
    .local v1, "unmatchedEnd":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/view/View;Landroidx/transition/TransitionValues;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Landroidx/transition/Transition;->mMatchOrder:[I

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 714
    iget-object v3, p0, Landroidx/transition/Transition;->mMatchOrder:[I

    aget v3, v3, v2

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 727
    :pswitch_0
    iget-object v3, p1, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Landroidx/collection/LongSparseArray;

    iget-object v4, p2, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Landroidx/collection/LongSparseArray;

    invoke-direct {p0, v0, v1, v3, v4}, Landroidx/transition/Transition;->matchItemIds(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;Landroidx/collection/LongSparseArray;Landroidx/collection/LongSparseArray;)V

    goto :goto_1

    .line 723
    :pswitch_1
    iget-object v3, p1, Landroidx/transition/TransitionValuesMaps;->mIdValues:Landroid/util/SparseArray;

    iget-object v4, p2, Landroidx/transition/TransitionValuesMaps;->mIdValues:Landroid/util/SparseArray;

    invoke-direct {p0, v0, v1, v3, v4}, Landroidx/transition/Transition;->matchIds(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 725
    goto :goto_1

    .line 719
    :pswitch_2
    iget-object v3, p1, Landroidx/transition/TransitionValuesMaps;->mNameValues:Landroidx/collection/ArrayMap;

    iget-object v4, p2, Landroidx/transition/TransitionValuesMaps;->mNameValues:Landroidx/collection/ArrayMap;

    invoke-direct {p0, v0, v1, v3, v4}, Landroidx/transition/Transition;->matchNames(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V

    .line 721
    goto :goto_1

    .line 716
    :pswitch_3
    invoke-direct {p0, v0, v1}, Landroidx/transition/Transition;->matchInstances(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V

    .line 717
    nop

    .line 713
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 732
    .end local v2    # "i":I
    :cond_0
    invoke-direct {p0, v0, v1}, Landroidx/transition/Transition;->addUnmatched(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V

    .line 733
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private notifyFromTransition(Landroidx/transition/Transition;Landroidx/transition/Transition$TransitionNotification;Z)V
    .locals 5
    .param p1, "transition"    # Landroidx/transition/Transition;
    .param p2, "notification"    # Landroidx/transition/Transition$TransitionNotification;
    .param p3, "isReversed"    # Z

    .line 2334
    iget-object v0, p0, Landroidx/transition/Transition;->mCloneParent:Landroidx/transition/Transition;

    if-eqz v0, :cond_0

    .line 2335
    iget-object v0, p0, Landroidx/transition/Transition;->mCloneParent:Landroidx/transition/Transition;

    invoke-direct {v0, p1, p2, p3}, Landroidx/transition/Transition;->notifyFromTransition(Landroidx/transition/Transition;Landroidx/transition/Transition$TransitionNotification;Z)V

    .line 2337
    :cond_0
    iget-object v0, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2339
    iget-object v0, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2340
    .local v0, "size":I
    iget-object v1, p0, Landroidx/transition/Transition;->mListenersCache:[Landroidx/transition/Transition$TransitionListener;

    if-nez v1, :cond_1

    .line 2341
    new-array v1, v0, [Landroidx/transition/Transition$TransitionListener;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroidx/transition/Transition;->mListenersCache:[Landroidx/transition/Transition$TransitionListener;

    .line 2342
    .local v1, "listeners":[Landroidx/transition/Transition$TransitionListener;
    :goto_0
    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/transition/Transition;->mListenersCache:[Landroidx/transition/Transition$TransitionListener;

    .line 2343
    iget-object v3, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, [Landroidx/transition/Transition$TransitionListener;

    .line 2344
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_2

    .line 2345
    aget-object v4, v1, v3

    invoke-interface {p2, v4, p1, p3}, Landroidx/transition/Transition$TransitionNotification;->notifyListener(Landroidx/transition/Transition$TransitionListener;Landroidx/transition/Transition;Z)V

    .line 2346
    aput-object v2, v1, v3

    .line 2344
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2348
    .end local v3    # "i":I
    :cond_2
    iput-object v1, p0, Landroidx/transition/Transition;->mListenersCache:[Landroidx/transition/Transition$TransitionListener;

    .line 2350
    .end local v0    # "size":I
    .end local v1    # "listeners":[Landroidx/transition/Transition$TransitionListener;
    :cond_3
    return-void
.end method

.method private static parseMatchOrder(Ljava/lang/String;)[I
    .locals 7
    .param p0, "matchOrderString"    # Ljava/lang/String;

    .line 328
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ","

    invoke-direct {v0, p0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    .local v0, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    new-array v1, v1, [I

    .line 331
    .local v1, "matches":[I
    const/4 v2, 0x0

    .line 332
    .local v2, "index":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 333
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 334
    .local v3, "token":Ljava/lang/String;
    const-string v4, "id"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    .line 335
    const/4 v4, 0x3

    aput v4, v1, v2

    goto :goto_1

    .line 336
    :cond_0
    const-string v4, "instance"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 337
    aput v5, v1, v2

    goto :goto_1

    .line 338
    :cond_1
    const-string/jumbo v4, "name"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 339
    const/4 v4, 0x2

    aput v4, v1, v2

    goto :goto_1

    .line 340
    :cond_2
    const-string v4, "itemId"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 341
    const/4 v4, 0x4

    aput v4, v1, v2

    goto :goto_1

    .line 342
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 344
    array-length v4, v1

    sub-int/2addr v4, v5

    new-array v4, v4, [I

    .line 345
    .local v4, "smallerMatches":[I
    const/4 v6, 0x0

    invoke-static {v1, v6, v4, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 346
    move-object v1, v4

    .line 347
    nop

    .end local v4    # "smallerMatches":[I
    add-int/lit8 v2, v2, -0x1

    .line 348
    nop

    .line 351
    :goto_1
    nop

    .end local v3    # "token":Ljava/lang/String;
    add-int/2addr v2, v5

    .line 352
    goto :goto_0

    .line 349
    .restart local v3    # "token":Ljava/lang/String;
    :cond_4
    new-instance v4, Landroid/view/InflateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown match type in matchOrder: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 353
    .end local v3    # "token":Ljava/lang/String;
    :cond_5
    return-object v1
.end method

.method private runAnimator(Landroid/animation/Animator;Landroidx/collection/ArrayMap;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/Animator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/Animator;",
            "Landroidx/collection/ArrayMap<",
            "Landroid/animation/Animator;",
            "Landroidx/transition/Transition$AnimationInfo;",
            ">;)V"
        }
    .end annotation

    .line 944
    .local p2, "runningAnimators":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/animation/Animator;Landroidx/transition/Transition$AnimationInfo;>;"
    if-eqz p1, :cond_0

    .line 946
    new-instance v0, Landroidx/transition/Transition$2;

    invoke-direct {v0, p0, p2}, Landroidx/transition/Transition$2;-><init>(Landroidx/transition/Transition;Landroidx/collection/ArrayMap;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 958
    invoke-virtual {p0, p1}, Landroidx/transition/Transition;->animate(Landroid/animation/Animator;)V

    .line 960
    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;
    .locals 1
    .param p1, "listener"    # Landroidx/transition/Transition$TransitionListener;

    .line 2116
    iget-object v0, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 2119
    :cond_0
    iget-object v0, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2120
    return-object p0
.end method

.method public addTarget(I)Landroidx/transition/Transition;
    .locals 2
    .param p1, "targetId"    # I

    .line 1106
    if-eqz p1, :cond_0

    .line 1107
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1109
    :cond_0
    return-object p0
.end method

.method public addTarget(Landroid/view/View;)Landroidx/transition/Transition;
    .locals 1
    .param p1, "target"    # Landroid/view/View;

    .line 1083
    iget-object v0, p0, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1084
    return-object p0
.end method

.method public addTarget(Ljava/lang/Class;)Landroidx/transition/Transition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Landroidx/transition/Transition;"
        }
    .end annotation

    .line 1159
    .local p1, "targetType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    .line 1162
    :cond_0
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1163
    return-object p0
.end method

.method public addTarget(Ljava/lang/String;)Landroidx/transition/Transition;
    .locals 1
    .param p1, "targetName"    # Ljava/lang/String;

    .line 1130
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    .line 1133
    :cond_0
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1134
    return-object p0
.end method

.method protected animate(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 1995
    if-nez p1, :cond_0

    .line 1996
    invoke-virtual {p0}, Landroidx/transition/Transition;->end()V

    goto :goto_0

    .line 1998
    :cond_0
    invoke-virtual {p0}, Landroidx/transition/Transition;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 1999
    invoke-virtual {p0}, Landroidx/transition/Transition;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 2001
    :cond_1
    invoke-virtual {p0}, Landroidx/transition/Transition;->getStartDelay()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 2002
    invoke-virtual {p0}, Landroidx/transition/Transition;->getStartDelay()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 2004
    :cond_2
    invoke-virtual {p0}, Landroidx/transition/Transition;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2005
    invoke-virtual {p0}, Landroidx/transition/Transition;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2007
    :cond_3
    new-instance v0, Landroidx/transition/Transition$3;

    invoke-direct {v0, p0}, Landroidx/transition/Transition$3;-><init>(Landroidx/transition/Transition;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2014
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 2016
    :goto_0
    return-void
.end method

.method protected cancel()V
    .locals 5

    .line 2095
    iget-object v0, p0, Landroidx/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2096
    .local v0, "numAnimators":I
    iget-object v1, p0, Landroidx/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/transition/Transition;->mAnimatorCache:[Landroid/animation/Animator;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/animation/Animator;

    .line 2097
    .local v1, "cache":[Landroid/animation/Animator;
    sget-object v2, Landroidx/transition/Transition;->EMPTY_ANIMATOR_ARRAY:[Landroid/animation/Animator;

    iput-object v2, p0, Landroidx/transition/Transition;->mAnimatorCache:[Landroid/animation/Animator;

    .line 2098
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 2099
    aget-object v3, v1, v2

    .line 2100
    .local v3, "animator":Landroid/animation/Animator;
    const/4 v4, 0x0

    aput-object v4, v1, v2

    .line 2101
    invoke-virtual {v3}, Landroid/animation/Animator;->cancel()V

    .line 2098
    .end local v3    # "animator":Landroid/animation/Animator;
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2103
    .end local v2    # "i":I
    :cond_0
    iput-object v1, p0, Landroidx/transition/Transition;->mAnimatorCache:[Landroid/animation/Animator;

    .line 2104
    sget-object v2, Landroidx/transition/Transition$TransitionNotification;->ON_CANCEL:Landroidx/transition/Transition$TransitionNotification;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroidx/transition/Transition;->notifyListeners(Landroidx/transition/Transition$TransitionNotification;Z)V

    .line 2105
    return-void
.end method

.method public abstract captureEndValues(Landroidx/transition/TransitionValues;)V
.end method

.method capturePropagationValues(Landroidx/transition/TransitionValues;)V
    .locals 5
    .param p1, "transitionValues"    # Landroidx/transition/TransitionValues;

    .line 2260
    iget-object v0, p0, Landroidx/transition/Transition;->mPropagation:Landroidx/transition/TransitionPropagation;

    if-eqz v0, :cond_3

    iget-object v0, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2261
    iget-object v0, p0, Landroidx/transition/Transition;->mPropagation:Landroidx/transition/TransitionPropagation;

    invoke-virtual {v0}, Landroidx/transition/TransitionPropagation;->getPropagationProperties()[Ljava/lang/String;

    move-result-object v0

    .line 2262
    .local v0, "propertyNames":[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 2263
    return-void

    .line 2265
    :cond_0
    const/4 v1, 0x1

    .line 2267
    .local v1, "containsAll":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 2268
    iget-object v3, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    aget-object v4, v0, v2

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2269
    const/4 v1, 0x0

    .line 2270
    goto :goto_1

    .line 2267
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2273
    .end local v2    # "i":I
    :cond_2
    :goto_1
    if-nez v1, :cond_3

    .line 2274
    iget-object v2, p0, Landroidx/transition/Transition;->mPropagation:Landroidx/transition/TransitionPropagation;

    invoke-virtual {v2, p1}, Landroidx/transition/TransitionPropagation;->captureValues(Landroidx/transition/TransitionValues;)V

    .line 2277
    .end local v0    # "propertyNames":[Ljava/lang/String;
    .end local v1    # "containsAll":Z
    :cond_3
    return-void
.end method

.method public abstract captureStartValues(Landroidx/transition/TransitionValues;)V
.end method

.method captureValues(Landroid/view/ViewGroup;Z)V
    .locals 6
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "start"    # Z

    .line 1550
    invoke-virtual {p0, p2}, Landroidx/transition/Transition;->clearValues(Z)V

    .line 1551
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    :cond_0
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    .line 1552
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    .line 1553
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 1590
    :cond_2
    invoke-direct {p0, p1, p2}, Landroidx/transition/Transition;->captureHierarchy(Landroid/view/View;Z)V

    goto/16 :goto_7

    .line 1554
    :cond_3
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 1555
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1556
    .local v1, "id":I
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1557
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_6

    .line 1558
    new-instance v3, Landroidx/transition/TransitionValues;

    invoke-direct {v3, v2}, Landroidx/transition/TransitionValues;-><init>(Landroid/view/View;)V

    .line 1559
    .local v3, "values":Landroidx/transition/TransitionValues;
    if-eqz p2, :cond_4

    .line 1560
    invoke-virtual {p0, v3}, Landroidx/transition/Transition;->captureStartValues(Landroidx/transition/TransitionValues;)V

    goto :goto_2

    .line 1562
    :cond_4
    invoke-virtual {p0, v3}, Landroidx/transition/Transition;->captureEndValues(Landroidx/transition/TransitionValues;)V

    .line 1564
    :goto_2
    iget-object v4, v3, Landroidx/transition/TransitionValues;->mTargetedTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1565
    invoke-virtual {p0, v3}, Landroidx/transition/Transition;->capturePropagationValues(Landroidx/transition/TransitionValues;)V

    .line 1566
    if-eqz p2, :cond_5

    .line 1567
    iget-object v4, p0, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    invoke-static {v4, v2, v3}, Landroidx/transition/Transition;->addViewValues(Landroidx/transition/TransitionValuesMaps;Landroid/view/View;Landroidx/transition/TransitionValues;)V

    goto :goto_3

    .line 1569
    :cond_5
    iget-object v4, p0, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    invoke-static {v4, v2, v3}, Landroidx/transition/Transition;->addViewValues(Landroidx/transition/TransitionValuesMaps;Landroid/view/View;Landroidx/transition/TransitionValues;)V

    .line 1554
    .end local v1    # "id":I
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "values":Landroidx/transition/TransitionValues;
    :cond_6
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1573
    .end local v0    # "i":I
    :cond_7
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    iget-object v1, p0, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_a

    .line 1574
    iget-object v1, p0, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1575
    .local v1, "view":Landroid/view/View;
    new-instance v2, Landroidx/transition/TransitionValues;

    invoke-direct {v2, v1}, Landroidx/transition/TransitionValues;-><init>(Landroid/view/View;)V

    .line 1576
    .local v2, "values":Landroidx/transition/TransitionValues;
    if-eqz p2, :cond_8

    .line 1577
    invoke-virtual {p0, v2}, Landroidx/transition/Transition;->captureStartValues(Landroidx/transition/TransitionValues;)V

    goto :goto_5

    .line 1579
    :cond_8
    invoke-virtual {p0, v2}, Landroidx/transition/Transition;->captureEndValues(Landroidx/transition/TransitionValues;)V

    .line 1581
    :goto_5
    iget-object v3, v2, Landroidx/transition/TransitionValues;->mTargetedTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1582
    invoke-virtual {p0, v2}, Landroidx/transition/Transition;->capturePropagationValues(Landroidx/transition/TransitionValues;)V

    .line 1583
    if-eqz p2, :cond_9

    .line 1584
    iget-object v3, p0, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    invoke-static {v3, v1, v2}, Landroidx/transition/Transition;->addViewValues(Landroidx/transition/TransitionValuesMaps;Landroid/view/View;Landroidx/transition/TransitionValues;)V

    goto :goto_6

    .line 1586
    :cond_9
    iget-object v3, p0, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    invoke-static {v3, v1, v2}, Landroidx/transition/Transition;->addViewValues(Landroidx/transition/TransitionValuesMaps;Landroid/view/View;Landroidx/transition/TransitionValues;)V

    .line 1573
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "values":Landroidx/transition/TransitionValues;
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1592
    .end local v0    # "i":I
    :cond_a
    :goto_7
    if-nez p2, :cond_d

    iget-object v0, p0, Landroidx/transition/Transition;->mNameOverrides:Landroidx/collection/ArrayMap;

    if-eqz v0, :cond_d

    .line 1593
    iget-object v0, p0, Landroidx/transition/Transition;->mNameOverrides:Landroidx/collection/ArrayMap;

    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->size()I

    move-result v0

    .line 1594
    .local v0, "numOverrides":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1595
    .local v1, "overriddenViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v0, :cond_b

    .line 1596
    iget-object v3, p0, Landroidx/transition/Transition;->mNameOverrides:Landroidx/collection/ArrayMap;

    invoke-virtual {v3, v2}, Landroidx/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1597
    .local v3, "fromName":Ljava/lang/String;
    iget-object v4, p0, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    iget-object v4, v4, Landroidx/transition/TransitionValuesMaps;->mNameValues:Landroidx/collection/ArrayMap;

    invoke-virtual {v4, v3}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1595
    .end local v3    # "fromName":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1599
    .end local v2    # "i":I
    :cond_b
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_9
    if-ge v2, v0, :cond_d

    .line 1600
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 1601
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_c

    .line 1602
    iget-object v4, p0, Landroidx/transition/Transition;->mNameOverrides:Landroidx/collection/ArrayMap;

    invoke-virtual {v4, v2}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1603
    .local v4, "toName":Ljava/lang/String;
    iget-object v5, p0, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    iget-object v5, v5, Landroidx/transition/TransitionValuesMaps;->mNameValues:Landroidx/collection/ArrayMap;

    invoke-virtual {v5, v4, v3}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1599
    .end local v3    # "view":Landroid/view/View;
    .end local v4    # "toName":Ljava/lang/String;
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1607
    .end local v0    # "numOverrides":I
    .end local v1    # "overriddenViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v2    # "i":I
    :cond_d
    return-void
.end method

.method clearValues(Z)V
    .locals 1
    .param p1, "start"    # Z

    .line 1656
    if-eqz p1, :cond_0

    .line 1657
    iget-object v0, p0, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    iget-object v0, v0, Landroidx/transition/TransitionValuesMaps;->mViewValues:Landroidx/collection/ArrayMap;

    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->clear()V

    .line 1658
    iget-object v0, p0, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    iget-object v0, v0, Landroidx/transition/TransitionValuesMaps;->mIdValues:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1659
    iget-object v0, p0, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    iget-object v0, v0, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V

    goto :goto_0

    .line 1661
    :cond_0
    iget-object v0, p0, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    iget-object v0, v0, Landroidx/transition/TransitionValuesMaps;->mViewValues:Landroidx/collection/ArrayMap;

    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->clear()V

    .line 1662
    iget-object v0, p0, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    iget-object v0, v0, Landroidx/transition/TransitionValuesMaps;->mIdValues:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1663
    iget-object v0, p0, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    iget-object v0, v0, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V

    .line 1665
    :goto_0
    return-void
.end method

.method public clone()Landroidx/transition/Transition;
    .locals 2

    .line 2291
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/transition/Transition;

    .line 2292
    .local v0, "clone":Landroidx/transition/Transition;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroidx/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    .line 2293
    new-instance v1, Landroidx/transition/TransitionValuesMaps;

    invoke-direct {v1}, Landroidx/transition/TransitionValuesMaps;-><init>()V

    iput-object v1, v0, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    .line 2294
    new-instance v1, Landroidx/transition/TransitionValuesMaps;

    invoke-direct {v1}, Landroidx/transition/TransitionValuesMaps;-><init>()V

    iput-object v1, v0, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    .line 2295
    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    .line 2296
    iput-object v1, v0, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    .line 2297
    iput-object v1, v0, Landroidx/transition/Transition;->mSeekController:Landroidx/transition/Transition$SeekController;

    .line 2298
    iput-object p0, v0, Landroidx/transition/Transition;->mCloneParent:Landroidx/transition/Transition;

    .line 2299
    iput-object v1, v0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2300
    return-object v0

    .line 2301
    .end local v0    # "clone":Landroidx/transition/Transition;
    :catch_0
    move-exception v0

    .line 2302
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 129
    invoke-virtual {p0}, Landroidx/transition/Transition;->clone()Landroidx/transition/Transition;

    move-result-object v0

    return-object v0
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroidx/transition/TransitionValues;
    .param p3, "endValues"    # Landroidx/transition/TransitionValues;

    .line 518
    const/4 v0, 0x0

    return-object v0
.end method

.method createAnimators(Landroid/view/ViewGroup;Landroidx/transition/TransitionValuesMaps;Landroidx/transition/TransitionValuesMaps;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 24
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroidx/transition/TransitionValuesMaps;
    .param p3, "endValues"    # Landroidx/transition/TransitionValuesMaps;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroidx/transition/TransitionValuesMaps;",
            "Landroidx/transition/TransitionValuesMaps;",
            "Ljava/util/ArrayList<",
            "Landroidx/transition/TransitionValues;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroidx/transition/TransitionValues;",
            ">;)V"
        }
    .end annotation

    .line 751
    .local p4, "startValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/transition/TransitionValues;>;"
    .local p5, "endValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/transition/TransitionValues;>;"
    move-object/from16 v3, p0

    move-object/from16 v7, p1

    invoke-static {}, Landroidx/transition/Transition;->getRunningAnimators()Landroidx/collection/ArrayMap;

    move-result-object v8

    .line 752
    .local v8, "runningAnimators":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/animation/Animator;Landroidx/transition/Transition$AnimationInfo;>;"
    const-wide v0, 0x7fffffffffffffffL

    .line 753
    .local v0, "minStartDelay":J
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    move-object v9, v2

    .line 754
    .local v9, "startDelays":Landroid/util/SparseIntArray;
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 755
    .local v10, "startValuesListCount":I
    invoke-virtual {v3}, Landroidx/transition/Transition;->getRootTransition()Landroidx/transition/Transition;

    move-result-object v2

    iget-object v2, v2, Landroidx/transition/Transition;->mSeekController:Landroidx/transition/Transition$SeekController;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v13, v2

    .line 756
    .local v13, "hasSeekController":Z
    const/4 v2, 0x0

    move v14, v2

    .local v14, "i":I
    :goto_1
    if-ge v14, v10, :cond_12

    .line 757
    move-object/from16 v15, p4

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/TransitionValues;

    .line 758
    .local v2, "start":Landroidx/transition/TransitionValues;
    move-object/from16 v4, p5

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/transition/TransitionValues;

    .line 759
    .local v5, "end":Landroidx/transition/TransitionValues;
    if-eqz v2, :cond_1

    iget-object v6, v2, Landroidx/transition/TransitionValues;->mTargetedTransitions:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 760
    const/4 v2, 0x0

    .line 762
    :cond_1
    if-eqz v5, :cond_2

    iget-object v6, v5, Landroidx/transition/TransitionValues;->mTargetedTransitions:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 763
    const/4 v5, 0x0

    .line 765
    :cond_2
    if-nez v2, :cond_3

    if-nez v5, :cond_3

    .line 766
    move/from16 v18, v10

    move/from16 v20, v13

    goto/16 :goto_a

    .line 769
    :cond_3
    if-eqz v2, :cond_5

    if-eqz v5, :cond_5

    invoke-virtual {v3, v2, v5}, Landroidx/transition/Transition;->isTransitionRequired(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v6, 0x1

    :goto_3
    move/from16 v16, v6

    .line 770
    .local v16, "isChanged":Z
    if-eqz v16, :cond_11

    .line 789
    invoke-virtual {v3, v7, v2, v5}, Landroidx/transition/Transition;->createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v6

    .line 790
    .local v6, "animator":Landroid/animation/Animator;
    if-eqz v6, :cond_10

    .line 793
    const/16 v17, 0x0

    .line 794
    .local v17, "infoValues":Landroidx/transition/TransitionValues;
    if-eqz v5, :cond_c

    .line 795
    iget-object v11, v5, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 796
    .local v11, "view":Landroid/view/View;
    invoke-virtual {v3}, Landroidx/transition/Transition;->getTransitionProperties()[Ljava/lang/String;

    move-result-object v12

    .line 797
    .local v12, "properties":[Ljava/lang/String;
    if-eqz v12, :cond_b

    array-length v4, v12

    if-lez v4, :cond_b

    .line 798
    new-instance v4, Landroidx/transition/TransitionValues;

    invoke-direct {v4, v11}, Landroidx/transition/TransitionValues;-><init>(Landroid/view/View;)V

    .line 799
    .end local v17    # "infoValues":Landroidx/transition/TransitionValues;
    .local v4, "infoValues":Landroidx/transition/TransitionValues;
    move-object/from16 v19, v6

    move/from16 v18, v10

    move-object/from16 v10, p3

    .end local v6    # "animator":Landroid/animation/Animator;
    .end local v10    # "startValuesListCount":I
    .local v18, "startValuesListCount":I
    .local v19, "animator":Landroid/animation/Animator;
    iget-object v6, v10, Landroidx/transition/TransitionValuesMaps;->mViewValues:Landroidx/collection/ArrayMap;

    invoke-virtual {v6, v11}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/transition/TransitionValues;

    .line 800
    .local v6, "newValues":Landroidx/transition/TransitionValues;
    if-eqz v6, :cond_7

    .line 801
    const/16 v17, 0x0

    move/from16 v10, v17

    .local v10, "j":I
    :goto_4
    move/from16 v20, v13

    .end local v13    # "hasSeekController":Z
    .local v20, "hasSeekController":Z
    array-length v13, v12

    if-ge v10, v13, :cond_6

    .line 802
    iget-object v13, v4, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    move/from16 v17, v10

    .end local v10    # "j":I
    .local v17, "j":I
    aget-object v10, v12, v17

    move-object/from16 v21, v12

    .end local v12    # "properties":[Ljava/lang/String;
    .local v21, "properties":[Ljava/lang/String;
    iget-object v12, v6, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v22, v6

    .end local v6    # "newValues":Landroidx/transition/TransitionValues;
    .local v22, "newValues":Landroidx/transition/TransitionValues;
    aget-object v6, v21, v17

    .line 803
    invoke-interface {v12, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 802
    invoke-interface {v13, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 801
    add-int/lit8 v10, v17, 0x1

    move/from16 v13, v20

    move-object/from16 v12, v21

    move-object/from16 v6, v22

    .end local v17    # "j":I
    .restart local v10    # "j":I
    goto :goto_4

    .end local v21    # "properties":[Ljava/lang/String;
    .end local v22    # "newValues":Landroidx/transition/TransitionValues;
    .restart local v6    # "newValues":Landroidx/transition/TransitionValues;
    .restart local v12    # "properties":[Ljava/lang/String;
    :cond_6
    move-object/from16 v22, v6

    move/from16 v17, v10

    move-object/from16 v21, v12

    .end local v6    # "newValues":Landroidx/transition/TransitionValues;
    .end local v10    # "j":I
    .end local v12    # "properties":[Ljava/lang/String;
    .restart local v17    # "j":I
    .restart local v21    # "properties":[Ljava/lang/String;
    .restart local v22    # "newValues":Landroidx/transition/TransitionValues;
    goto :goto_5

    .line 800
    .end local v17    # "j":I
    .end local v20    # "hasSeekController":Z
    .end local v21    # "properties":[Ljava/lang/String;
    .end local v22    # "newValues":Landroidx/transition/TransitionValues;
    .restart local v6    # "newValues":Landroidx/transition/TransitionValues;
    .restart local v12    # "properties":[Ljava/lang/String;
    .restart local v13    # "hasSeekController":Z
    :cond_7
    move-object/from16 v22, v6

    move-object/from16 v21, v12

    move/from16 v20, v13

    .line 806
    .end local v6    # "newValues":Landroidx/transition/TransitionValues;
    .end local v12    # "properties":[Ljava/lang/String;
    .end local v13    # "hasSeekController":Z
    .restart local v20    # "hasSeekController":Z
    .restart local v21    # "properties":[Ljava/lang/String;
    .restart local v22    # "newValues":Landroidx/transition/TransitionValues;
    :goto_5
    invoke-virtual {v8}, Landroidx/collection/ArrayMap;->size()I

    move-result v6

    .line 807
    .local v6, "numExistingAnims":I
    const/4 v10, 0x0

    .restart local v10    # "j":I
    :goto_6
    if-ge v10, v6, :cond_a

    .line 808
    invoke-virtual {v8, v10}, Landroidx/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/animation/Animator;

    .line 809
    .local v12, "anim":Landroid/animation/Animator;
    invoke-virtual {v8, v12}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/transition/Transition$AnimationInfo;

    .line 810
    .local v13, "info":Landroidx/transition/Transition$AnimationInfo;
    move/from16 v17, v6

    .end local v6    # "numExistingAnims":I
    .local v17, "numExistingAnims":I
    iget-object v6, v13, Landroidx/transition/Transition$AnimationInfo;->mValues:Landroidx/transition/TransitionValues;

    if-eqz v6, :cond_8

    iget-object v6, v13, Landroidx/transition/Transition$AnimationInfo;->mView:Landroid/view/View;

    if-ne v6, v11, :cond_8

    iget-object v6, v13, Landroidx/transition/Transition$AnimationInfo;->mName:Ljava/lang/String;

    .line 811
    move/from16 v23, v10

    .end local v10    # "j":I
    .local v23, "j":I
    invoke-virtual {v3}, Landroidx/transition/Transition;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 812
    iget-object v6, v13, Landroidx/transition/Transition$AnimationInfo;->mValues:Landroidx/transition/TransitionValues;

    invoke-virtual {v6, v4}, Landroidx/transition/TransitionValues;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 814
    const/4 v6, 0x0

    .line 815
    .end local v19    # "animator":Landroid/animation/Animator;
    .local v6, "animator":Landroid/animation/Animator;
    move-object/from16 v17, v4

    goto :goto_7

    .line 810
    .end local v6    # "animator":Landroid/animation/Animator;
    .end local v23    # "j":I
    .restart local v10    # "j":I
    .restart local v19    # "animator":Landroid/animation/Animator;
    :cond_8
    move/from16 v23, v10

    .line 807
    .end local v10    # "j":I
    .end local v12    # "anim":Landroid/animation/Animator;
    .end local v13    # "info":Landroidx/transition/Transition$AnimationInfo;
    .restart local v23    # "j":I
    :cond_9
    add-int/lit8 v10, v23, 0x1

    move/from16 v6, v17

    .end local v23    # "j":I
    .restart local v10    # "j":I
    goto :goto_6

    .end local v17    # "numExistingAnims":I
    .local v6, "numExistingAnims":I
    :cond_a
    move/from16 v17, v6

    move/from16 v23, v10

    .end local v6    # "numExistingAnims":I
    .end local v10    # "j":I
    .restart local v17    # "numExistingAnims":I
    .restart local v23    # "j":I
    move-object/from16 v17, v4

    move-object/from16 v6, v19

    goto :goto_7

    .line 797
    .end local v4    # "infoValues":Landroidx/transition/TransitionValues;
    .end local v18    # "startValuesListCount":I
    .end local v19    # "animator":Landroid/animation/Animator;
    .end local v20    # "hasSeekController":Z
    .end local v21    # "properties":[Ljava/lang/String;
    .end local v22    # "newValues":Landroidx/transition/TransitionValues;
    .end local v23    # "j":I
    .local v6, "animator":Landroid/animation/Animator;
    .local v10, "startValuesListCount":I
    .local v12, "properties":[Ljava/lang/String;
    .local v13, "hasSeekController":Z
    .local v17, "infoValues":Landroidx/transition/TransitionValues;
    :cond_b
    move-object/from16 v19, v6

    move/from16 v18, v10

    move-object/from16 v21, v12

    move/from16 v20, v13

    .line 820
    .end local v6    # "animator":Landroid/animation/Animator;
    .end local v10    # "startValuesListCount":I
    .end local v12    # "properties":[Ljava/lang/String;
    .end local v13    # "hasSeekController":Z
    .restart local v18    # "startValuesListCount":I
    .restart local v19    # "animator":Landroid/animation/Animator;
    .restart local v20    # "hasSeekController":Z
    move-object/from16 v6, v19

    .end local v19    # "animator":Landroid/animation/Animator;
    .restart local v6    # "animator":Landroid/animation/Animator;
    :goto_7
    goto :goto_8

    .line 821
    .end local v11    # "view":Landroid/view/View;
    .end local v18    # "startValuesListCount":I
    .end local v20    # "hasSeekController":Z
    .restart local v10    # "startValuesListCount":I
    .restart local v13    # "hasSeekController":Z
    :cond_c
    move-object/from16 v19, v6

    move/from16 v18, v10

    move/from16 v20, v13

    .end local v6    # "animator":Landroid/animation/Animator;
    .end local v10    # "startValuesListCount":I
    .end local v13    # "hasSeekController":Z
    .restart local v18    # "startValuesListCount":I
    .restart local v19    # "animator":Landroid/animation/Animator;
    .restart local v20    # "hasSeekController":Z
    iget-object v11, v2, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 823
    .end local v19    # "animator":Landroid/animation/Animator;
    .restart local v6    # "animator":Landroid/animation/Animator;
    .restart local v11    # "view":Landroid/view/View;
    :goto_8
    if-eqz v6, :cond_f

    .line 824
    iget-object v4, v3, Landroidx/transition/Transition;->mPropagation:Landroidx/transition/TransitionPropagation;

    if-eqz v4, :cond_d

    .line 825
    iget-object v4, v3, Landroidx/transition/Transition;->mPropagation:Landroidx/transition/TransitionPropagation;

    invoke-virtual {v4, v7, v3, v2, v5}, Landroidx/transition/TransitionPropagation;->getStartDelay(Landroid/view/ViewGroup;Landroidx/transition/Transition;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)J

    move-result-wide v12

    .line 826
    .local v12, "delay":J
    iget-object v4, v3, Landroidx/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    long-to-int v10, v12

    invoke-virtual {v9, v4, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 827
    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    move-wide v12, v0

    goto :goto_9

    .line 824
    .end local v12    # "delay":J
    :cond_d
    move-wide v12, v0

    .line 829
    .end local v0    # "minStartDelay":J
    .local v12, "minStartDelay":J
    :goto_9
    new-instance v0, Landroidx/transition/Transition$AnimationInfo;

    move-object v1, v2

    .end local v2    # "start":Landroidx/transition/TransitionValues;
    .local v1, "start":Landroidx/transition/TransitionValues;
    invoke-virtual {v3}, Landroidx/transition/Transition;->getName()Ljava/lang/String;

    move-result-object v2

    .line 830
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getWindowId()Landroid/view/WindowId;

    move-result-object v4

    move-object v10, v11

    move-object v11, v1

    move-object v1, v10

    move-object v10, v5

    move-object/from16 v5, v17

    .end local v17    # "infoValues":Landroidx/transition/TransitionValues;
    .local v1, "view":Landroid/view/View;
    .local v5, "infoValues":Landroidx/transition/TransitionValues;
    .local v10, "end":Landroidx/transition/TransitionValues;
    .local v11, "start":Landroidx/transition/TransitionValues;
    invoke-direct/range {v0 .. v6}, Landroidx/transition/Transition$AnimationInfo;-><init>(Landroid/view/View;Ljava/lang/String;Landroidx/transition/Transition;Landroid/view/WindowId;Landroidx/transition/TransitionValues;Landroid/animation/Animator;)V

    move-object v2, v1

    .line 831
    .end local v1    # "view":Landroid/view/View;
    .local v0, "info":Landroidx/transition/Transition$AnimationInfo;
    .local v2, "view":Landroid/view/View;
    if-eqz v20, :cond_e

    .line 832
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 833
    .local v1, "set":Landroid/animation/AnimatorSet;
    invoke-virtual {v1, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 834
    move-object v6, v1

    .line 836
    .end local v1    # "set":Landroid/animation/AnimatorSet;
    :cond_e
    invoke-virtual {v8, v6, v0}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 837
    iget-object v1, v3, Landroidx/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-wide v0, v12

    goto :goto_a

    .line 823
    .end local v10    # "end":Landroidx/transition/TransitionValues;
    .end local v12    # "minStartDelay":J
    .local v0, "minStartDelay":J
    .local v2, "start":Landroidx/transition/TransitionValues;
    .local v5, "end":Landroidx/transition/TransitionValues;
    .local v11, "view":Landroid/view/View;
    .restart local v17    # "infoValues":Landroidx/transition/TransitionValues;
    :cond_f
    move-object v10, v11

    move-object v11, v2

    move-object v2, v10

    move-object v10, v5

    move-object/from16 v5, v17

    .end local v17    # "infoValues":Landroidx/transition/TransitionValues;
    .local v2, "view":Landroid/view/View;
    .local v5, "infoValues":Landroidx/transition/TransitionValues;
    .restart local v10    # "end":Landroidx/transition/TransitionValues;
    .local v11, "start":Landroidx/transition/TransitionValues;
    goto :goto_a

    .line 790
    .end local v11    # "start":Landroidx/transition/TransitionValues;
    .end local v18    # "startValuesListCount":I
    .end local v20    # "hasSeekController":Z
    .local v2, "start":Landroidx/transition/TransitionValues;
    .local v5, "end":Landroidx/transition/TransitionValues;
    .local v10, "startValuesListCount":I
    .restart local v13    # "hasSeekController":Z
    :cond_10
    move-object v11, v2

    move-object/from16 v19, v6

    move/from16 v18, v10

    move/from16 v20, v13

    move-object v10, v5

    .end local v2    # "start":Landroidx/transition/TransitionValues;
    .end local v5    # "end":Landroidx/transition/TransitionValues;
    .end local v6    # "animator":Landroid/animation/Animator;
    .end local v13    # "hasSeekController":Z
    .local v10, "end":Landroidx/transition/TransitionValues;
    .restart local v11    # "start":Landroidx/transition/TransitionValues;
    .restart local v18    # "startValuesListCount":I
    .restart local v19    # "animator":Landroid/animation/Animator;
    .restart local v20    # "hasSeekController":Z
    goto :goto_a

    .line 770
    .end local v11    # "start":Landroidx/transition/TransitionValues;
    .end local v18    # "startValuesListCount":I
    .end local v19    # "animator":Landroid/animation/Animator;
    .end local v20    # "hasSeekController":Z
    .restart local v2    # "start":Landroidx/transition/TransitionValues;
    .restart local v5    # "end":Landroidx/transition/TransitionValues;
    .local v10, "startValuesListCount":I
    .restart local v13    # "hasSeekController":Z
    :cond_11
    move-object v11, v2

    move/from16 v18, v10

    move/from16 v20, v13

    move-object v10, v5

    .line 756
    .end local v2    # "start":Landroidx/transition/TransitionValues;
    .end local v5    # "end":Landroidx/transition/TransitionValues;
    .end local v10    # "startValuesListCount":I
    .end local v13    # "hasSeekController":Z
    .end local v16    # "isChanged":Z
    .restart local v18    # "startValuesListCount":I
    .restart local v20    # "hasSeekController":Z
    :goto_a
    add-int/lit8 v14, v14, 0x1

    move/from16 v10, v18

    move/from16 v13, v20

    goto/16 :goto_1

    .end local v18    # "startValuesListCount":I
    .end local v20    # "hasSeekController":Z
    .restart local v10    # "startValuesListCount":I
    .restart local v13    # "hasSeekController":Z
    :cond_12
    move-object/from16 v15, p4

    move/from16 v18, v10

    move/from16 v20, v13

    .line 842
    .end local v10    # "startValuesListCount":I
    .end local v13    # "hasSeekController":Z
    .end local v14    # "i":I
    .restart local v18    # "startValuesListCount":I
    .restart local v20    # "hasSeekController":Z
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-eqz v2, :cond_13

    .line 843
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_13

    .line 844
    invoke-virtual {v9, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    .line 845
    .local v4, "index":I
    iget-object v5, v3, Landroidx/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/Animator;

    .line 846
    .local v5, "animator":Landroid/animation/Animator;
    invoke-virtual {v8, v5}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/transition/Transition$AnimationInfo;

    .line 847
    .local v6, "info":Landroidx/transition/Transition$AnimationInfo;
    invoke-virtual {v9, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v10

    int-to-long v10, v10

    sub-long/2addr v10, v0

    iget-object v12, v6, Landroidx/transition/Transition$AnimationInfo;->mAnimator:Landroid/animation/Animator;

    .line 848
    invoke-virtual {v12}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v12

    add-long/2addr v10, v12

    .line 849
    .local v10, "delay":J
    iget-object v12, v6, Landroidx/transition/Transition$AnimationInfo;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v12, v10, v11}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 843
    .end local v4    # "index":I
    .end local v5    # "animator":Landroid/animation/Animator;
    .end local v6    # "info":Landroidx/transition/Transition$AnimationInfo;
    .end local v10    # "delay":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 852
    .end local v2    # "i":I
    :cond_13
    return-void
.end method

.method createSeekController()Landroidx/transition/TransitionSeekController;
    .locals 1

    .line 529
    new-instance v0, Landroidx/transition/Transition$SeekController;

    invoke-direct {v0, p0}, Landroidx/transition/Transition$SeekController;-><init>(Landroidx/transition/Transition;)V

    iput-object v0, p0, Landroidx/transition/Transition;->mSeekController:Landroidx/transition/Transition$SeekController;

    .line 530
    iget-object v0, p0, Landroidx/transition/Transition;->mSeekController:Landroidx/transition/Transition$SeekController;

    invoke-virtual {p0, v0}, Landroidx/transition/Transition;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    .line 531
    iget-object v0, p0, Landroidx/transition/Transition;->mSeekController:Landroidx/transition/Transition$SeekController;

    return-object v0
.end method

.method protected end()V
    .locals 4

    .line 2045
    iget v0, p0, Landroidx/transition/Transition;->mNumInstances:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Landroidx/transition/Transition;->mNumInstances:I

    .line 2046
    iget v0, p0, Landroidx/transition/Transition;->mNumInstances:I

    if-nez v0, :cond_4

    .line 2047
    sget-object v0, Landroidx/transition/Transition$TransitionNotification;->ON_END:Landroidx/transition/Transition$TransitionNotification;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroidx/transition/Transition;->notifyListeners(Landroidx/transition/Transition$TransitionNotification;Z)V

    .line 2048
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    iget-object v3, v3, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Landroidx/collection/LongSparseArray;

    invoke-virtual {v3}, Landroidx/collection/LongSparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 2049
    iget-object v3, p0, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    iget-object v3, v3, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Landroidx/collection/LongSparseArray;

    invoke-virtual {v3, v0}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 2050
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 2051
    invoke-virtual {v3, v2}, Landroid/view/View;->setHasTransientState(Z)V

    .line 2048
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2054
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v3, p0, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    iget-object v3, v3, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Landroidx/collection/LongSparseArray;

    invoke-virtual {v3}, Landroidx/collection/LongSparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 2055
    iget-object v3, p0, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    iget-object v3, v3, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Landroidx/collection/LongSparseArray;

    invoke-virtual {v3, v0}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 2056
    .restart local v3    # "view":Landroid/view/View;
    if-eqz v3, :cond_2

    .line 2057
    invoke-virtual {v3, v2}, Landroid/view/View;->setHasTransientState(Z)V

    .line 2054
    .end local v3    # "view":Landroid/view/View;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2060
    .end local v0    # "i":I
    :cond_3
    iput-boolean v1, p0, Landroidx/transition/Transition;->mEnded:Z

    .line 2062
    :cond_4
    return-void
.end method

.method public excludeChildren(IZ)Landroidx/transition/Transition;
    .locals 1
    .param p1, "targetId"    # I
    .param p2, "exclude"    # Z

    .line 1372
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Landroidx/transition/Transition;->excludeId(Ljava/util/ArrayList;IZ)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroidx/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    .line 1373
    return-object p0
.end method

.method public excludeChildren(Landroid/view/View;Z)Landroidx/transition/Transition;
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "exclude"    # Z

    .line 1343
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Landroidx/transition/Transition;->excludeView(Ljava/util/ArrayList;Landroid/view/View;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroidx/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    .line 1344
    return-object p0
.end method

.method public excludeChildren(Ljava/lang/Class;Z)Landroidx/transition/Transition;
    .locals 1
    .param p2, "exclude"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)",
            "Landroidx/transition/Transition;"
        }
    .end annotation

    .line 1453
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Landroidx/transition/Transition;->excludeType(Ljava/util/ArrayList;Ljava/lang/Class;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroidx/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    .line 1454
    return-object p0
.end method

.method public excludeTarget(IZ)Landroidx/transition/Transition;
    .locals 1
    .param p1, "targetId"    # I
    .param p2, "exclude"    # Z

    .line 1293
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Landroidx/transition/Transition;->excludeId(Ljava/util/ArrayList;IZ)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroidx/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    .line 1294
    return-object p0
.end method

.method public excludeTarget(Landroid/view/View;Z)Landroidx/transition/Transition;
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "exclude"    # Z

    .line 1268
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Landroidx/transition/Transition;->excludeView(Ljava/util/ArrayList;Landroid/view/View;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroidx/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    .line 1269
    return-object p0
.end method

.method public excludeTarget(Ljava/lang/Class;Z)Landroidx/transition/Transition;
    .locals 1
    .param p2, "exclude"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)",
            "Landroidx/transition/Transition;"
        }
    .end annotation

    .line 1427
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Landroidx/transition/Transition;->excludeType(Ljava/util/ArrayList;Ljava/lang/Class;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroidx/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    .line 1428
    return-object p0
.end method

.method public excludeTarget(Ljava/lang/String;Z)Landroidx/transition/Transition;
    .locals 1
    .param p1, "targetName"    # Ljava/lang/String;
    .param p2, "exclude"    # Z

    .line 1318
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    invoke-static {v0, p1, p2}, Landroidx/transition/Transition;->excludeObject(Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroidx/transition/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    .line 1319
    return-object p0
.end method

.method forceToEnd(Landroid/view/ViewGroup;)V
    .locals 7
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;

    .line 2070
    invoke-static {}, Landroidx/transition/Transition;->getRunningAnimators()Landroidx/collection/ArrayMap;

    move-result-object v0

    .line 2071
    .local v0, "runningAnimators":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/animation/Animator;Landroidx/transition/Transition$AnimationInfo;>;"
    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->size()I

    move-result v1

    .line 2072
    .local v1, "numOldAnims":I
    if-eqz p1, :cond_3

    if-nez v1, :cond_0

    goto :goto_1

    .line 2076
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWindowId()Landroid/view/WindowId;

    move-result-object v2

    .line 2077
    .local v2, "windowId":Landroid/view/WindowId;
    new-instance v3, Landroidx/collection/ArrayMap;

    invoke-direct {v3, v0}, Landroidx/collection/ArrayMap;-><init>(Landroidx/collection/SimpleArrayMap;)V

    .line 2078
    .local v3, "oldAnimators":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/animation/Animator;Landroidx/transition/Transition$AnimationInfo;>;"
    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->clear()V

    .line 2080
    add-int/lit8 v4, v1, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_2

    .line 2081
    invoke-virtual {v3, v4}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/transition/Transition$AnimationInfo;

    .line 2082
    .local v5, "info":Landroidx/transition/Transition$AnimationInfo;
    iget-object v6, v5, Landroidx/transition/Transition$AnimationInfo;->mView:Landroid/view/View;

    if-eqz v6, :cond_1

    iget-object v6, v5, Landroidx/transition/Transition$AnimationInfo;->mWindowId:Landroid/view/WindowId;

    invoke-virtual {v2, v6}, Landroid/view/WindowId;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2083
    invoke-virtual {v3, v4}, Landroidx/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/animation/Animator;

    .line 2084
    .local v6, "anim":Landroid/animation/Animator;
    invoke-virtual {v6}, Landroid/animation/Animator;->end()V

    .line 2080
    .end local v5    # "info":Landroidx/transition/Transition$AnimationInfo;
    .end local v6    # "anim":Landroid/animation/Animator;
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 2087
    .end local v4    # "i":I
    :cond_2
    return-void

    .line 2073
    .end local v2    # "windowId":Landroid/view/WindowId;
    .end local v3    # "oldAnimators":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/animation/Animator;Landroidx/transition/Transition$AnimationInfo;>;"
    :cond_3
    :goto_1
    return-void
.end method

.method public getDuration()J
    .locals 2

    .line 391
    iget-wide v0, p0, Landroidx/transition/Transition;->mDuration:J

    return-wide v0
.end method

.method public getEpicenter()Landroid/graphics/Rect;
    .locals 1

    .line 2218
    iget-object v0, p0, Landroidx/transition/Transition;->mEpicenterCallback:Landroidx/transition/Transition$EpicenterCallback;

    if-nez v0, :cond_0

    .line 2219
    const/4 v0, 0x0

    return-object v0

    .line 2221
    :cond_0
    iget-object v0, p0, Landroidx/transition/Transition;->mEpicenterCallback:Landroidx/transition/Transition$EpicenterCallback;

    invoke-virtual {v0, p0}, Landroidx/transition/Transition$EpicenterCallback;->onGetEpicenter(Landroidx/transition/Transition;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getEpicenterCallback()Landroidx/transition/Transition$EpicenterCallback;
    .locals 1

    .line 2206
    iget-object v0, p0, Landroidx/transition/Transition;->mEpicenterCallback:Landroidx/transition/Transition$EpicenterCallback;

    return-object v0
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1

    .line 443
    iget-object v0, p0, Landroidx/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method getMatchedTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewInStart"    # Z

    .line 1760
    iget-object v0, p0, Landroidx/transition/Transition;->mParent:Landroidx/transition/TransitionSet;

    if-eqz v0, :cond_0

    .line 1761
    iget-object v0, p0, Landroidx/transition/Transition;->mParent:Landroidx/transition/TransitionSet;

    invoke-virtual {v0, p1, p2}, Landroidx/transition/TransitionSet;->getMatchedTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    move-result-object v0

    return-object v0

    .line 1763
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    .line 1764
    .local v0, "lookIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/transition/TransitionValues;>;"
    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 1765
    return-object v1

    .line 1767
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1768
    .local v2, "count":I
    const/4 v3, -0x1

    .line 1769
    .local v3, "index":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_5

    .line 1770
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/transition/TransitionValues;

    .line 1771
    .local v5, "values":Landroidx/transition/TransitionValues;
    if-nez v5, :cond_3

    .line 1773
    return-object v1

    .line 1775
    :cond_3
    iget-object v6, v5, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    if-ne v6, p1, :cond_4

    .line 1776
    move v3, v4

    .line 1777
    goto :goto_2

    .line 1769
    .end local v5    # "values":Landroidx/transition/TransitionValues;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1780
    .end local v4    # "i":I
    :cond_5
    :goto_2
    const/4 v1, 0x0

    .line 1781
    .local v1, "values":Landroidx/transition/TransitionValues;
    if-ltz v3, :cond_7

    .line 1782
    if-eqz p2, :cond_6

    iget-object v4, p0, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    goto :goto_3

    :cond_6
    iget-object v4, p0, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    .line 1783
    .local v4, "matchIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/transition/TransitionValues;>;"
    :goto_3
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v1, v5

    check-cast v1, Landroidx/transition/TransitionValues;

    .line 1785
    .end local v4    # "matchIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/transition/TransitionValues;>;"
    :cond_7
    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 2319
    iget-object v0, p0, Landroidx/transition/Transition;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPathMotion()Landroidx/transition/PathMotion;
    .locals 1

    .line 2177
    iget-object v0, p0, Landroidx/transition/Transition;->mPathMotion:Landroidx/transition/PathMotion;

    return-object v0
.end method

.method public getPropagation()Landroidx/transition/TransitionPropagation;
    .locals 1

    .line 2252
    iget-object v0, p0, Landroidx/transition/Transition;->mPropagation:Landroidx/transition/TransitionPropagation;

    return-object v0
.end method

.method public final getRootTransition()Landroidx/transition/Transition;
    .locals 1

    .line 362
    iget-object v0, p0, Landroidx/transition/Transition;->mParent:Landroidx/transition/TransitionSet;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Landroidx/transition/Transition;->mParent:Landroidx/transition/TransitionSet;

    invoke-virtual {v0}, Landroidx/transition/TransitionSet;->getRootTransition()Landroidx/transition/Transition;

    move-result-object v0

    return-object v0

    .line 365
    :cond_0
    return-object p0
.end method

.method public getStartDelay()J
    .locals 2

    .line 417
    iget-wide v0, p0, Landroidx/transition/Transition;->mStartDelay:J

    return-wide v0
.end method

.method public getTargetIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1483
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTargetNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1510
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTargetTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 1524
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTargets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1496
    iget-object v0, p0, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    return-object v0
.end method

.method final getTotalDurationMillis()J
    .locals 2

    .line 2357
    iget-wide v0, p0, Landroidx/transition/Transition;->mTotalDuration:J

    return-wide v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1

    .line 468
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "start"    # Z

    .line 1741
    iget-object v0, p0, Landroidx/transition/Transition;->mParent:Landroidx/transition/TransitionSet;

    if-eqz v0, :cond_0

    .line 1742
    iget-object v0, p0, Landroidx/transition/Transition;->mParent:Landroidx/transition/TransitionSet;

    invoke-virtual {v0, p1, p2}, Landroidx/transition/TransitionSet;->getTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    move-result-object v0

    return-object v0

    .line 1744
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    .line 1745
    .local v0, "valuesMaps":Landroidx/transition/TransitionValuesMaps;
    :goto_0
    iget-object v1, v0, Landroidx/transition/TransitionValuesMaps;->mViewValues:Landroidx/collection/ArrayMap;

    invoke-virtual {v1, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/TransitionValues;

    return-object v1
.end method

.method hasAnimators()Z
    .locals 1

    .line 1842
    iget-object v0, p0, Landroidx/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isSeekingSupported()Z
    .locals 1

    .line 1538
    const/4 v0, 0x0

    return v0
.end method

.method public isTransitionRequired(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Z
    .locals 6
    .param p1, "startValues"    # Landroidx/transition/TransitionValues;
    .param p2, "endValues"    # Landroidx/transition/TransitionValues;

    .line 1937
    const/4 v0, 0x0

    .line 1940
    .local v0, "valuesChanged":Z
    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 1941
    invoke-virtual {p0}, Landroidx/transition/Transition;->getTransitionProperties()[Ljava/lang/String;

    move-result-object v1

    .line 1942
    .local v1, "properties":[Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 1943
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 1944
    .local v4, "property":Ljava/lang/String;
    invoke-static {p1, p2, v4}, Landroidx/transition/Transition;->isValueChanged(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1945
    const/4 v0, 0x1

    .line 1946
    goto :goto_1

    .line 1943
    .end local v4    # "property":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    goto :goto_3

    .line 1950
    :cond_2
    iget-object v2, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1951
    .local v3, "key":Ljava/lang/String;
    invoke-static {p1, p2, v3}, Landroidx/transition/Transition;->isValueChanged(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1952
    const/4 v0, 0x1

    .line 1953
    goto :goto_3

    .line 1955
    .end local v3    # "key":Ljava/lang/String;
    :cond_3
    goto :goto_2

    .line 1958
    .end local v1    # "properties":[Ljava/lang/String;
    :cond_4
    :goto_3
    return v0
.end method

.method isValidTarget(Landroid/view/View;)Z
    .locals 6
    .param p1, "target"    # Landroid/view/View;

    .line 865
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 866
    .local v0, "targetId":I
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 867
    return v2

    .line 869
    :cond_0
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 870
    return v2

    .line 872
    :cond_1
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 873
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 874
    .local v1, "numTypes":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 875
    iget-object v4, p0, Landroidx/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    .line 876
    .local v4, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 877
    return v2

    .line 874
    .end local v4    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 881
    .end local v1    # "numTypes":I
    .end local v3    # "i":I
    :cond_3
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 882
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 883
    return v2

    .line 886
    :cond_4
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_7

    iget-object v1, p0, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Landroidx/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroidx/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    .line 887
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_5
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroidx/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    .line 888
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 889
    :cond_6
    return v3

    .line 891
    :cond_7
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_2

    .line 894
    :cond_8
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    if-eqz v1, :cond_9

    iget-object v1, p0, Landroidx/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 895
    return v3

    .line 897
    :cond_9
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    if-eqz v1, :cond_b

    .line 898
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Landroidx/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_b

    .line 899
    iget-object v4, p0, Landroidx/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    invoke-virtual {v4, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 900
    return v3

    .line 898
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 904
    .end local v1    # "i":I
    :cond_b
    return v2

    .line 892
    :cond_c
    :goto_2
    return v3
.end method

.method notifyListeners(Landroidx/transition/Transition$TransitionNotification;Z)V
    .locals 0
    .param p1, "notification"    # Landroidx/transition/Transition$TransitionNotification;
    .param p2, "isReversed"    # Z

    .line 2326
    invoke-direct {p0, p0, p1, p2}, Landroidx/transition/Transition;->notifyFromTransition(Landroidx/transition/Transition;Landroidx/transition/Transition$TransitionNotification;Z)V

    .line 2327
    return-void
.end method

.method public pause(Landroid/view/View;)V
    .locals 5
    .param p1, "sceneRoot"    # Landroid/view/View;

    .line 1796
    iget-boolean v0, p0, Landroidx/transition/Transition;->mEnded:Z

    if-nez v0, :cond_1

    .line 1797
    iget-object v0, p0, Landroidx/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1798
    .local v0, "numAnimators":I
    iget-object v1, p0, Landroidx/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/transition/Transition;->mAnimatorCache:[Landroid/animation/Animator;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/animation/Animator;

    .line 1799
    .local v1, "cache":[Landroid/animation/Animator;
    sget-object v2, Landroidx/transition/Transition;->EMPTY_ANIMATOR_ARRAY:[Landroid/animation/Animator;

    iput-object v2, p0, Landroidx/transition/Transition;->mAnimatorCache:[Landroid/animation/Animator;

    .line 1800
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 1801
    aget-object v3, v1, v2

    .line 1802
    .local v3, "animator":Landroid/animation/Animator;
    const/4 v4, 0x0

    aput-object v4, v1, v2

    .line 1803
    invoke-virtual {v3}, Landroid/animation/Animator;->pause()V

    .line 1800
    .end local v3    # "animator":Landroid/animation/Animator;
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1805
    .end local v2    # "i":I
    :cond_0
    iput-object v1, p0, Landroidx/transition/Transition;->mAnimatorCache:[Landroid/animation/Animator;

    .line 1806
    sget-object v2, Landroidx/transition/Transition$TransitionNotification;->ON_PAUSE:Landroidx/transition/Transition$TransitionNotification;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroidx/transition/Transition;->notifyListeners(Landroidx/transition/Transition$TransitionNotification;Z)V

    .line 1807
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/transition/Transition;->mPaused:Z

    .line 1809
    .end local v0    # "numAnimators":I
    .end local v1    # "cache":[Landroid/animation/Animator;
    :cond_1
    return-void
.end method

.method playTransition(Landroid/view/ViewGroup;)V
    .locals 14
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;

    .line 1851
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    .line 1852
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    .line 1853
    iget-object v0, p0, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    iget-object v1, p0, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    invoke-direct {p0, v0, v1}, Landroidx/transition/Transition;->matchStartAndEnd(Landroidx/transition/TransitionValuesMaps;Landroidx/transition/TransitionValuesMaps;)V

    .line 1855
    invoke-static {}, Landroidx/transition/Transition;->getRunningAnimators()Landroidx/collection/ArrayMap;

    move-result-object v0

    .line 1856
    .local v0, "runningAnimators":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/animation/Animator;Landroidx/transition/Transition$AnimationInfo;>;"
    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->size()I

    move-result v1

    .line 1857
    .local v1, "numOldAnims":I
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWindowId()Landroid/view/WindowId;

    move-result-object v2

    .line 1858
    .local v2, "windowId":Landroid/view/WindowId;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1859
    .local v3, "endedTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/transition/Transition;>;"
    add-int/lit8 v4, v1, -0x1

    .local v4, "i":I
    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ltz v4, :cond_7

    .line 1860
    invoke-virtual {v0, v4}, Landroidx/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/Animator;

    .line 1861
    .local v7, "anim":Landroid/animation/Animator;
    if-eqz v7, :cond_6

    .line 1862
    invoke-virtual {v0, v7}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/transition/Transition$AnimationInfo;

    .line 1863
    .local v8, "oldInfo":Landroidx/transition/Transition$AnimationInfo;
    if-eqz v8, :cond_6

    iget-object v9, v8, Landroidx/transition/Transition$AnimationInfo;->mView:Landroid/view/View;

    if-eqz v9, :cond_6

    iget-object v9, v8, Landroidx/transition/Transition$AnimationInfo;->mWindowId:Landroid/view/WindowId;

    .line 1864
    invoke-virtual {v2, v9}, Landroid/view/WindowId;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1865
    iget-object v9, v8, Landroidx/transition/Transition$AnimationInfo;->mValues:Landroidx/transition/TransitionValues;

    .line 1866
    .local v9, "oldValues":Landroidx/transition/TransitionValues;
    iget-object v10, v8, Landroidx/transition/Transition$AnimationInfo;->mView:Landroid/view/View;

    .line 1867
    .local v10, "oldView":Landroid/view/View;
    invoke-virtual {p0, v10, v6}, Landroidx/transition/Transition;->getTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    move-result-object v11

    .line 1868
    .local v11, "startValues":Landroidx/transition/TransitionValues;
    invoke-virtual {p0, v10, v6}, Landroidx/transition/Transition;->getMatchedTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    move-result-object v12

    .line 1869
    .local v12, "endValues":Landroidx/transition/TransitionValues;
    if-nez v11, :cond_0

    if-nez v12, :cond_0

    .line 1870
    iget-object v13, p0, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    iget-object v13, v13, Landroidx/transition/TransitionValuesMaps;->mViewValues:Landroidx/collection/ArrayMap;

    invoke-virtual {v13, v10}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    move-object v12, v13

    check-cast v12, Landroidx/transition/TransitionValues;

    .line 1872
    :cond_0
    if-nez v11, :cond_1

    if-eqz v12, :cond_2

    :cond_1
    iget-object v13, v8, Landroidx/transition/Transition$AnimationInfo;->mTransition:Landroidx/transition/Transition;

    .line 1873
    invoke-virtual {v13, v9, v12}, Landroidx/transition/Transition;->isTransitionRequired(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Z

    move-result v13

    if-eqz v13, :cond_2

    move v5, v6

    goto :goto_1

    :cond_2
    nop

    .line 1874
    .local v5, "cancel":Z
    :goto_1
    if-eqz v5, :cond_6

    .line 1875
    iget-object v6, v8, Landroidx/transition/Transition$AnimationInfo;->mTransition:Landroidx/transition/Transition;

    .line 1876
    .local v6, "transition":Landroidx/transition/Transition;
    invoke-virtual {v6}, Landroidx/transition/Transition;->getRootTransition()Landroidx/transition/Transition;

    move-result-object v13

    iget-object v13, v13, Landroidx/transition/Transition;->mSeekController:Landroidx/transition/Transition$SeekController;

    if-eqz v13, :cond_3

    .line 1879
    invoke-virtual {v7}, Landroid/animation/Animator;->cancel()V

    .line 1880
    iget-object v13, v6, Landroidx/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1881
    invoke-virtual {v0, v4}, Landroidx/collection/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 1882
    iget-object v13, v6, Landroidx/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-nez v13, :cond_6

    .line 1883
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1885
    :cond_3
    invoke-virtual {v7}, Landroid/animation/Animator;->isRunning()Z

    move-result v13

    if-nez v13, :cond_5

    invoke-virtual {v7}, Landroid/animation/Animator;->isStarted()Z

    move-result v13

    if-eqz v13, :cond_4

    goto :goto_2

    .line 1894
    :cond_4
    invoke-virtual {v0, v4}, Landroidx/collection/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_3

    .line 1889
    :cond_5
    :goto_2
    invoke-virtual {v7}, Landroid/animation/Animator;->cancel()V

    .line 1859
    .end local v5    # "cancel":Z
    .end local v6    # "transition":Landroidx/transition/Transition;
    .end local v7    # "anim":Landroid/animation/Animator;
    .end local v8    # "oldInfo":Landroidx/transition/Transition$AnimationInfo;
    .end local v9    # "oldValues":Landroidx/transition/TransitionValues;
    .end local v10    # "oldView":Landroid/view/View;
    .end local v11    # "startValues":Landroidx/transition/TransitionValues;
    .end local v12    # "endValues":Landroidx/transition/TransitionValues;
    :cond_6
    :goto_3
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_0

    .line 1902
    .end local v4    # "i":I
    :cond_7
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_9

    .line 1903
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/transition/Transition;

    .line 1904
    .local v7, "transition":Landroidx/transition/Transition;
    sget-object v8, Landroidx/transition/Transition$TransitionNotification;->ON_CANCEL:Landroidx/transition/Transition$TransitionNotification;

    invoke-virtual {v7, v8, v5}, Landroidx/transition/Transition;->notifyListeners(Landroidx/transition/Transition$TransitionNotification;Z)V

    .line 1905
    iget-boolean v8, v7, Landroidx/transition/Transition;->mEnded:Z

    if-nez v8, :cond_8

    .line 1906
    iput-boolean v6, v7, Landroidx/transition/Transition;->mEnded:Z

    .line 1907
    sget-object v8, Landroidx/transition/Transition$TransitionNotification;->ON_END:Landroidx/transition/Transition$TransitionNotification;

    invoke-virtual {v7, v8, v5}, Landroidx/transition/Transition;->notifyListeners(Landroidx/transition/Transition$TransitionNotification;Z)V

    .line 1902
    .end local v7    # "transition":Landroidx/transition/Transition;
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1912
    .end local v4    # "i":I
    :cond_9
    iget-object v9, p0, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    iget-object v10, p0, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    iget-object v11, p0, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    iget-object v12, p0, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    move-object v7, p0

    move-object v8, p1

    .end local p1    # "sceneRoot":Landroid/view/ViewGroup;
    .local v8, "sceneRoot":Landroid/view/ViewGroup;
    invoke-virtual/range {v7 .. v12}, Landroidx/transition/Transition;->createAnimators(Landroid/view/ViewGroup;Landroidx/transition/TransitionValuesMaps;Landroidx/transition/TransitionValuesMaps;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1913
    iget-object p1, v7, Landroidx/transition/Transition;->mSeekController:Landroidx/transition/Transition$SeekController;

    if-nez p1, :cond_a

    .line 1914
    invoke-virtual {p0}, Landroidx/transition/Transition;->runAnimators()V

    goto :goto_5

    .line 1915
    :cond_a
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x22

    if-lt p1, v4, :cond_b

    .line 1916
    invoke-virtual {p0}, Landroidx/transition/Transition;->prepareAnimatorsForSeeking()V

    .line 1917
    iget-object p1, v7, Landroidx/transition/Transition;->mSeekController:Landroidx/transition/Transition$SeekController;

    invoke-virtual {p1}, Landroidx/transition/Transition$SeekController;->initPlayTime()V

    .line 1918
    iget-object p1, v7, Landroidx/transition/Transition;->mSeekController:Landroidx/transition/Transition$SeekController;

    invoke-virtual {p1}, Landroidx/transition/Transition$SeekController;->ready()V

    .line 1920
    :cond_b
    :goto_5
    return-void
.end method

.method prepareAnimatorsForSeeking()V
    .locals 11

    .line 971
    invoke-static {}, Landroidx/transition/Transition;->getRunningAnimators()Landroidx/collection/ArrayMap;

    move-result-object v0

    .line 973
    .local v0, "runningAnimators":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/animation/Animator;Landroidx/transition/Transition$AnimationInfo;>;"
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroidx/transition/Transition;->mTotalDuration:J

    .line 974
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Landroidx/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 995
    iget-object v5, p0, Landroidx/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    .line 974
    if-ge v3, v4, :cond_4

    .line 975
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator;

    .line 979
    .local v4, "anim":Landroid/animation/Animator;
    invoke-virtual {v0, v4}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/transition/Transition$AnimationInfo;

    .line 980
    .local v5, "info":Landroidx/transition/Transition$AnimationInfo;
    if-eqz v4, :cond_3

    if-eqz v5, :cond_3

    .line 981
    invoke-virtual {p0}, Landroidx/transition/Transition;->getDuration()J

    move-result-wide v6

    cmp-long v6, v6, v1

    if-ltz v6, :cond_0

    .line 982
    iget-object v6, v5, Landroidx/transition/Transition$AnimationInfo;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroidx/transition/Transition;->getDuration()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 984
    :cond_0
    invoke-virtual {p0}, Landroidx/transition/Transition;->getStartDelay()J

    move-result-wide v6

    cmp-long v6, v6, v1

    if-ltz v6, :cond_1

    .line 985
    iget-object v6, v5, Landroidx/transition/Transition$AnimationInfo;->mAnimator:Landroid/animation/Animator;

    .line 986
    invoke-virtual {p0}, Landroidx/transition/Transition;->getStartDelay()J

    move-result-wide v7

    iget-object v9, v5, Landroidx/transition/Transition$AnimationInfo;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v9}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v9

    add-long/2addr v7, v9

    .line 985
    invoke-virtual {v6, v7, v8}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 988
    :cond_1
    invoke-virtual {p0}, Landroidx/transition/Transition;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 989
    iget-object v6, v5, Landroidx/transition/Transition$AnimationInfo;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroidx/transition/Transition;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 991
    :cond_2
    iget-object v6, p0, Landroidx/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 992
    iget-wide v6, p0, Landroidx/transition/Transition;->mTotalDuration:J

    invoke-static {v4}, Landroidx/transition/Transition$Impl26;->getTotalDuration(Landroid/animation/Animator;)J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iput-wide v6, p0, Landroidx/transition/Transition;->mTotalDuration:J

    .line 974
    .end local v4    # "anim":Landroid/animation/Animator;
    .end local v5    # "info":Landroidx/transition/Transition$AnimationInfo;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 995
    .end local v3    # "i":I
    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 996
    return-void
.end method

.method public removeListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;
    .locals 1
    .param p1, "listener"    # Landroidx/transition/Transition$TransitionListener;

    .line 2131
    iget-object v0, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2132
    return-object p0

    .line 2134
    :cond_0
    iget-object v0, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/transition/Transition;->mCloneParent:Landroidx/transition/Transition;

    if-eqz v0, :cond_1

    .line 2135
    iget-object v0, p0, Landroidx/transition/Transition;->mCloneParent:Landroidx/transition/Transition;

    invoke-virtual {v0, p1}, Landroidx/transition/Transition;->removeListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    .line 2137
    :cond_1
    iget-object v0, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 2138
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 2140
    :cond_2
    return-object p0
.end method

.method public removeTarget(I)Landroidx/transition/Transition;
    .locals 2
    .param p1, "targetId"    # I

    .line 1192
    if-eqz p1, :cond_0

    .line 1193
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1195
    :cond_0
    return-object p0
.end method

.method public removeTarget(Landroid/view/View;)Landroidx/transition/Transition;
    .locals 1
    .param p1, "target"    # Landroid/view/View;

    .line 1177
    iget-object v0, p0, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1178
    return-object p0
.end method

.method public removeTarget(Ljava/lang/Class;)Landroidx/transition/Transition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Landroidx/transition/Transition;"
        }
    .end annotation

    .line 1226
    .local p1, "target":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1227
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1229
    :cond_0
    return-object p0
.end method

.method public removeTarget(Ljava/lang/String;)Landroidx/transition/Transition;
    .locals 1
    .param p1, "targetName"    # Ljava/lang/String;

    .line 1209
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1210
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1212
    :cond_0
    return-object p0
.end method

.method public resume(Landroid/view/View;)V
    .locals 6
    .param p1, "sceneRoot"    # Landroid/view/View;

    .line 1819
    iget-boolean v0, p0, Landroidx/transition/Transition;->mPaused:Z

    if-eqz v0, :cond_2

    .line 1820
    iget-boolean v0, p0, Landroidx/transition/Transition;->mEnded:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1821
    iget-object v0, p0, Landroidx/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1822
    .local v0, "numAnimators":I
    iget-object v2, p0, Landroidx/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/transition/Transition;->mAnimatorCache:[Landroid/animation/Animator;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/animation/Animator;

    .line 1823
    .local v2, "cache":[Landroid/animation/Animator;
    sget-object v3, Landroidx/transition/Transition;->EMPTY_ANIMATOR_ARRAY:[Landroid/animation/Animator;

    iput-object v3, p0, Landroidx/transition/Transition;->mAnimatorCache:[Landroid/animation/Animator;

    .line 1824
    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_0

    .line 1825
    aget-object v4, v2, v3

    .line 1826
    .local v4, "animator":Landroid/animation/Animator;
    const/4 v5, 0x0

    aput-object v5, v2, v3

    .line 1827
    invoke-virtual {v4}, Landroid/animation/Animator;->resume()V

    .line 1824
    .end local v4    # "animator":Landroid/animation/Animator;
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1829
    .end local v3    # "i":I
    :cond_0
    iput-object v2, p0, Landroidx/transition/Transition;->mAnimatorCache:[Landroid/animation/Animator;

    .line 1830
    sget-object v3, Landroidx/transition/Transition$TransitionNotification;->ON_RESUME:Landroidx/transition/Transition$TransitionNotification;

    invoke-virtual {p0, v3, v1}, Landroidx/transition/Transition;->notifyListeners(Landroidx/transition/Transition$TransitionNotification;Z)V

    .line 1832
    .end local v0    # "numAnimators":I
    .end local v2    # "cache":[Landroid/animation/Animator;
    :cond_1
    iput-boolean v1, p0, Landroidx/transition/Transition;->mPaused:Z

    .line 1834
    :cond_2
    return-void
.end method

.method protected runAnimators()V
    .locals 4

    .line 926
    invoke-virtual {p0}, Landroidx/transition/Transition;->start()V

    .line 927
    invoke-static {}, Landroidx/transition/Transition;->getRunningAnimators()Landroidx/collection/ArrayMap;

    move-result-object v0

    .line 929
    .local v0, "runningAnimators":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/animation/Animator;Landroidx/transition/Transition$AnimationInfo;>;"
    iget-object v1, p0, Landroidx/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    .line 933
    .local v2, "anim":Landroid/animation/Animator;
    invoke-virtual {v0, v2}, Landroidx/collection/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 934
    invoke-virtual {p0}, Landroidx/transition/Transition;->start()V

    .line 935
    invoke-direct {p0, v2, v0}, Landroidx/transition/Transition;->runAnimator(Landroid/animation/Animator;Landroidx/collection/ArrayMap;)V

    .line 937
    .end local v2    # "anim":Landroid/animation/Animator;
    :cond_0
    goto :goto_0

    .line 938
    :cond_1
    iget-object v1, p0, Landroidx/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 939
    invoke-virtual {p0}, Landroidx/transition/Transition;->end()V

    .line 940
    return-void
.end method

.method setCanRemoveViews(Z)V
    .locals 0
    .param p1, "canRemoveViews"    # Z

    .line 2280
    iput-boolean p1, p0, Landroidx/transition/Transition;->mCanRemoveViews:Z

    .line 2281
    return-void
.end method

.method setCurrentPlayTimeMillis(JJ)V
    .locals 17
    .param p1, "playTimeMillis"    # J
    .param p3, "lastPlayTimeMillis"    # J

    .line 2373
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-virtual {v0}, Landroidx/transition/Transition;->getTotalDurationMillis()J

    move-result-wide v3

    .line 2374
    .local v3, "duration":J
    cmp-long v5, v1, p3

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-gez v5, :cond_0

    move v5, v7

    goto :goto_0

    :cond_0
    move v5, v6

    .line 2375
    .local v5, "isReversed":Z
    :goto_0
    const-wide/16 v8, 0x0

    cmp-long v10, p3, v8

    if-gez v10, :cond_1

    cmp-long v10, v1, v8

    if-gez v10, :cond_2

    :cond_1
    cmp-long v10, p3, v3

    if-lez v10, :cond_3

    cmp-long v10, v1, v3

    if-gtz v10, :cond_3

    .line 2377
    :cond_2
    iput-boolean v6, v0, Landroidx/transition/Transition;->mEnded:Z

    .line 2378
    sget-object v6, Landroidx/transition/Transition$TransitionNotification;->ON_START:Landroidx/transition/Transition$TransitionNotification;

    invoke-virtual {v0, v6, v5}, Landroidx/transition/Transition;->notifyListeners(Landroidx/transition/Transition$TransitionNotification;Z)V

    .line 2380
    :cond_3
    iget-object v6, v0, Landroidx/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 2381
    .local v6, "numAnimators":I
    iget-object v10, v0, Landroidx/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    iget-object v11, v0, Landroidx/transition/Transition;->mAnimatorCache:[Landroid/animation/Animator;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/animation/Animator;

    .line 2382
    .local v10, "cache":[Landroid/animation/Animator;
    sget-object v11, Landroidx/transition/Transition;->EMPTY_ANIMATOR_ARRAY:[Landroid/animation/Animator;

    iput-object v11, v0, Landroidx/transition/Transition;->mAnimatorCache:[Landroid/animation/Animator;

    .line 2383
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v6, :cond_4

    .line 2384
    aget-object v12, v10, v11

    .line 2385
    .local v12, "animator":Landroid/animation/Animator;
    const/4 v13, 0x0

    aput-object v13, v10, v11

    .line 2386
    invoke-static {v12}, Landroidx/transition/Transition$Impl26;->getTotalDuration(Landroid/animation/Animator;)J

    move-result-wide v13

    .line 2387
    .local v13, "animDuration":J
    move-wide v15, v3

    .end local v3    # "duration":J
    .local v15, "duration":J
    invoke-static {v8, v9, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    invoke-static {v3, v4, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    .line 2388
    .local v3, "playTime":J
    invoke-static {v12, v3, v4}, Landroidx/transition/Transition$Impl26;->setCurrentPlayTime(Landroid/animation/Animator;J)V

    .line 2383
    .end local v3    # "playTime":J
    .end local v12    # "animator":Landroid/animation/Animator;
    .end local v13    # "animDuration":J
    add-int/lit8 v11, v11, 0x1

    move-wide v3, v15

    goto :goto_1

    .end local v15    # "duration":J
    .local v3, "duration":J
    :cond_4
    move-wide v15, v3

    .line 2390
    .end local v3    # "duration":J
    .end local v11    # "i":I
    .restart local v15    # "duration":J
    iput-object v10, v0, Landroidx/transition/Transition;->mAnimatorCache:[Landroid/animation/Animator;

    .line 2392
    cmp-long v3, v1, v15

    if-lez v3, :cond_5

    cmp-long v3, p3, v15

    if-lez v3, :cond_6

    :cond_5
    cmp-long v3, v1, v8

    if-gez v3, :cond_8

    cmp-long v3, p3, v8

    if-ltz v3, :cond_8

    .line 2395
    :cond_6
    cmp-long v3, v1, v15

    if-lez v3, :cond_7

    .line 2398
    iput-boolean v7, v0, Landroidx/transition/Transition;->mEnded:Z

    .line 2400
    :cond_7
    sget-object v3, Landroidx/transition/Transition$TransitionNotification;->ON_END:Landroidx/transition/Transition$TransitionNotification;

    invoke-virtual {v0, v3, v5}, Landroidx/transition/Transition;->notifyListeners(Landroidx/transition/Transition$TransitionNotification;Z)V

    .line 2402
    :cond_8
    return-void
.end method

.method public setDuration(J)Landroidx/transition/Transition;
    .locals 0
    .param p1, "duration"    # J

    .line 378
    iput-wide p1, p0, Landroidx/transition/Transition;->mDuration:J

    .line 379
    return-object p0
.end method

.method public setEpicenterCallback(Landroidx/transition/Transition$EpicenterCallback;)V
    .locals 0
    .param p1, "epicenterCallback"    # Landroidx/transition/Transition$EpicenterCallback;

    .line 2192
    iput-object p1, p0, Landroidx/transition/Transition;->mEpicenterCallback:Landroidx/transition/Transition$EpicenterCallback;

    .line 2193
    return-void
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)Landroidx/transition/Transition;
    .locals 0
    .param p1, "interpolator"    # Landroid/animation/TimeInterpolator;

    .line 430
    iput-object p1, p0, Landroidx/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 431
    return-object p0
.end method

.method public varargs setMatchOrder([I)V
    .locals 4
    .param p1, "matches"    # [I

    .line 552
    if-eqz p1, :cond_4

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    .line 555
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 556
    aget v1, p1, v0

    .line 557
    .local v1, "match":I
    invoke-static {v1}, Landroidx/transition/Transition;->isValidMatch(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 560
    invoke-static {p1, v0}, Landroidx/transition/Transition;->alreadyContains([II)Z

    move-result v2

    if-nez v2, :cond_1

    .line 555
    .end local v1    # "match":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 561
    .restart local v1    # "match":I
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "matches contains a duplicate value"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 558
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "matches contains invalid value"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 564
    .end local v0    # "i":I
    .end local v1    # "match":I
    :cond_3
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroidx/transition/Transition;->mMatchOrder:[I

    goto :goto_2

    .line 553
    :cond_4
    :goto_1
    sget-object v0, Landroidx/transition/Transition;->DEFAULT_MATCH_ORDER:[I

    iput-object v0, p0, Landroidx/transition/Transition;->mMatchOrder:[I

    .line 566
    :goto_2
    return-void
.end method

.method public setPathMotion(Landroidx/transition/PathMotion;)V
    .locals 1
    .param p1, "pathMotion"    # Landroidx/transition/PathMotion;

    .line 2160
    if-nez p1, :cond_0

    .line 2161
    sget-object v0, Landroidx/transition/Transition;->STRAIGHT_PATH_MOTION:Landroidx/transition/PathMotion;

    iput-object v0, p0, Landroidx/transition/Transition;->mPathMotion:Landroidx/transition/PathMotion;

    goto :goto_0

    .line 2163
    :cond_0
    iput-object p1, p0, Landroidx/transition/Transition;->mPathMotion:Landroidx/transition/PathMotion;

    .line 2165
    :goto_0
    return-void
.end method

.method public setPropagation(Landroidx/transition/TransitionPropagation;)V
    .locals 0
    .param p1, "transitionPropagation"    # Landroidx/transition/TransitionPropagation;

    .line 2236
    iput-object p1, p0, Landroidx/transition/Transition;->mPropagation:Landroidx/transition/TransitionPropagation;

    .line 2237
    return-void
.end method

.method public setStartDelay(J)Landroidx/transition/Transition;
    .locals 0
    .param p1, "startDelay"    # J

    .line 404
    iput-wide p1, p0, Landroidx/transition/Transition;->mStartDelay:J

    .line 405
    return-object p0
.end method

.method protected start()V
    .locals 2

    .line 2026
    iget v0, p0, Landroidx/transition/Transition;->mNumInstances:I

    if-nez v0, :cond_0

    .line 2027
    sget-object v0, Landroidx/transition/Transition$TransitionNotification;->ON_START:Landroidx/transition/Transition$TransitionNotification;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/transition/Transition;->notifyListeners(Landroidx/transition/Transition$TransitionNotification;Z)V

    .line 2028
    iput-boolean v1, p0, Landroidx/transition/Transition;->mEnded:Z

    .line 2030
    :cond_0
    iget v0, p0, Landroidx/transition/Transition;->mNumInstances:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/transition/Transition;->mNumInstances:I

    .line 2031
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 2285
    const-string v0, ""

    invoke-virtual {p0, v0}, Landroidx/transition/Transition;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "indent"    # Ljava/lang/String;

    .line 2405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2406
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2407
    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2408
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2409
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2410
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-wide v1, p0, Landroidx/transition/Transition;->mDuration:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    const-string v2, ") "

    if-eqz v1, :cond_0

    .line 2411
    const-string v1, "dur("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v5, p0, Landroidx/transition/Transition;->mDuration:J

    .line 2412
    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2413
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2415
    :cond_0
    iget-wide v5, p0, Landroidx/transition/Transition;->mStartDelay:J

    cmp-long v1, v5, v3

    if-eqz v1, :cond_1

    .line 2416
    const-string v1, "dly("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Landroidx/transition/Transition;->mStartDelay:J

    .line 2417
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2418
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2420
    :cond_1
    iget-object v1, p0, Landroidx/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    if-eqz v1, :cond_2

    .line 2421
    const-string v1, "interp("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroidx/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 2422
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2423
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2425
    :cond_2
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_3

    iget-object v1, p0, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_8

    .line 2426
    :cond_3
    const-string/jumbo v1, "tgts("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2427
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v2, ", "

    if-lez v1, :cond_5

    .line 2428
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 2429
    if-lez v1, :cond_4

    .line 2430
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2432
    :cond_4
    iget-object v3, p0, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2428
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2435
    .end local v1    # "i":I
    :cond_5
    iget-object v1, p0, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 2436
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v3, p0, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_7

    .line 2437
    if-lez v1, :cond_6

    .line 2438
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2440
    :cond_6
    iget-object v3, p0, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2436
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2443
    .end local v1    # "i":I
    :cond_7
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2445
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
