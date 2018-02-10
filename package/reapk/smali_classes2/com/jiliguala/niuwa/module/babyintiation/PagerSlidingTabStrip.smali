.class public Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip$a;,
        Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip$b;,
        Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip$TitleIconTabProvider;,
        Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip$IconTabProvider;
    }
.end annotation


# static fields
.field private static final ATTRS:[I


# instance fields
.field private currentPosition:I

.field private currentPositionOffset:F

.field private defaultTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field public delegatePageListener:Landroid/support/v4/view/ViewPager$f;

.field private dividerColor:I

.field private dividerPadding:I

.field private dividerPaint:Landroid/graphics/Paint;

.field private dividerWidth:I

.field private expandedTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private indicatorColor:I

.field private indicatorHeight:I

.field private lastScrollX:I

.field private locale:Ljava/util/Locale;

.field private final pageListener:Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip$a;

.field private pager:Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;

.field private rectPaint:Landroid/graphics/Paint;

.field private scrollOffset:I

.field private shouldExpand:Z

.field private tabBackgroundResId:I

.field private tabCount:I

.field private tabPadding:I

.field private tabTextColor:I

.field private tabTextSize:I

.field private tabTypeface:Landroid/graphics/Typeface;

.field private tabTypefaceStyle:I

.field private tabsContainer:Landroid/widget/LinearLayout;

.field private textAllCaps:Z

.field private underlineColor:I

.field private underlineHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->ATTRS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1010095
        0x1010098
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const v8, -0x99999a

    const/4 v7, 0x2

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 97
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    new-instance v2, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip$a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip$a;-><init>(Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip$1;)V

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->pageListener:Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip$a;

    .line 65
    iput v5, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->currentPosition:I

    .line 66
    const/4 v2, 0x0

    iput v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->currentPositionOffset:F

    .line 69
    iput v8, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->indicatorColor:I

    .line 70
    const/high16 v2, 0x1a000000

    iput v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->underlineColor:I

    .line 71
    const/high16 v2, 0x1a000000

    iput v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->dividerColor:I

    .line 72
    iput-boolean v5, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->shouldExpand:Z

    .line 73
    iput-boolean v4, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->textAllCaps:Z

    .line 74
    const/16 v2, 0x34

    iput v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->scrollOffset:I

    .line 75
    const/16 v2, 0x8

    iput v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->indicatorHeight:I

    .line 76
    iput v7, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->underlineHeight:I

    .line 77
    const/16 v2, 0xc

    iput v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->dividerPadding:I

    .line 78
    const/16 v2, 0x18

    iput v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->tabPadding:I

    .line 79
    iput v4, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->dividerWidth:I

    .line 80
    const/16 v2, 0xc

    iput v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->tabTextSize:I

    .line 81
    iput v8, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->tabTextColor:I

    .line 82
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->tabTypeface:Landroid/graphics/Typeface;

    .line 83
    iput v4, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->tabTypefaceStyle:I

    .line 84
    iput v5, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->lastScrollX:I

    .line 85
    const v2, 0x7f08006f

    iput v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->tabBackgroundResId:I

    .line 99
    invoke-virtual {p0, v4}, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->setFillViewport(Z)V

    .line 100
    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->setWillNotDraw(Z)V

    .line 102
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    .line 103
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 104
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->addView(Landroid/view/View;)V

    .line 107
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 109
    .local v1, "dm":Landroid/util/DisplayMetrics;
    iget v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->scrollOffset:I

    int-to-float v2, v2

    invoke-static {v4, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->scrollOffset:I

    .line 110
    iget v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->indicatorHeight:I

    int-to-float v2, v2

    invoke-static {v4, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->indicatorHeight:I

    .line 111
    iget v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->underlineHeight:I

    int-to-float v2, v2

    invoke-static {v4, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->underlineHeight:I

    .line 112
    iget v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->dividerPadding:I

    int-to-float v2, v2

    invoke-static {v4, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->dividerPadding:I

    .line 113
    iget v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->tabPadding:I

    int-to-float v2, v2

    invoke-static {v4, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->tabPadding:I

    .line 114
    iget v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->dividerWidth:I

    int-to-float v2, v2

    invoke-static {v4, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->dividerWidth:I

    .line 115
    iget v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->tabTextSize:I

    int-to-float v2, v2

    invoke-static {v7, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->tabTextSize:I

    .line 119
    sget-object v2, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->ATTRS:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 121
    .local v0, "a":Landroid/content/res/TypedArray;
    iget v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->tabTextSize:I

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->tabTextSize:I

    .line 122
    iget v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->tabTextColor:I

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->tabTextColor:I

    .line 124
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 128
    sget-object v2, Lcom/jiliguala/niuwa/R$styleable;->PagerSlidingTabStrip:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 130
    iget v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->indicatorColor:I

    invoke-virtual {v0, v7, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->indicatorColor:I

    .line 131
    const/16 v2, 0x9

    iget v3, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->underlineColor:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->underlineColor:I

    .line 132
    iget v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->dividerColor:I

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->dividerColor:I

    .line 133
    const/4 v2, 0x3

    iget v3, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->indicatorHeight:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->indicatorHeight:I

    .line 135
    const/16 v2, 0xa

    iget v3, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->underlineHeight:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->underlineHeight:I

    .line 137
    iget v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->dividerPadding:I

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->dividerPadding:I

    .line 138
    const/4 v2, 0x7

    iget v3, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->tabPadding:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->tabPadding:I

    .line 139
    const/4 v2, 0x6

    iget v3, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->tabBackgroundResId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->tabBackgroundResId:I

    .line 140
    const/4 v2, 0x5

    iget-boolean v3, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->shouldExpand:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->shouldExpand:Z

    .line 141
    const/4 v2, 0x4

    iget v3, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->scrollOffset:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->scrollOffset:I

    .line 142
    const/16 v2, 0x8

    iget-boolean v3, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->textAllCaps:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->textAllCaps:Z

    .line 144
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 146
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    .line 147
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 148
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 150
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->dividerPaint:Landroid/graphics/Paint;

    .line 151
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->dividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 152
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->dividerPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->dividerWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 154
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->defaultTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 155
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v5, v6, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->expandedTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 157
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->locale:Ljava/util/Locale;

    if-nez v2, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->locale:Ljava/util/Locale;

    .line 160
    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;)I
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;

    .prologue
    .line 53
    iget v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->currentPosition:I

    return v0
.end method

.method static synthetic access$102(Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;I)I
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->currentPosition:I

    return p1
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;)Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->pager:Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;II)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->scrollToChild(II)V

    return-void
.end method

.method static synthetic access$502(Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;F)F
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;
    .param p1, "x1"    # F

    .prologue
    .line 53
    iput p1, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->currentPositionOffset:F

    return p1
.end method

.method static synthetic access$600(Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private addIconTab(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "resId"    # I

    .prologue
    .line 289
    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 290
    .local v0, "tab":Landroid/widget/ImageButton;
    invoke-virtual {v0, p2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 292
    invoke-direct {p0, p1, v0}, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->addTab(ILandroid/view/View;)V

    .line 294
    return-void
.end method

.method private addTab(ILandroid/view/View;)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "tab"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 297
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 298
    new-instance v0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip$2;

    invoke-direct {v0, p0, p1}, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip$2;-><init>(Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    iget v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->tabPadding:I

    iget v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->tabPadding:I

    invoke-virtual {p2, v0, v2, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 306
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->shouldExpand:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->expandedTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    :goto_0
    invoke-virtual {v1, p2, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 307
    return-void

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->defaultTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    goto :goto_0
.end method

.method private addTextIconTab(ILjava/lang/String;I)V
    .locals 12
    .param p1, "position"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "resId"    # I

    .prologue
    .line 219
    const/4 v8, -0x1

    if-ne p3, v8, :cond_0

    .line 220
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->addTextTab(ILjava/lang/String;)V

    .line 262
    :goto_0
    return-void

    .line 224
    :cond_0
    new-instance v7, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 225
    .local v7, "tab":Landroid/widget/TextView;
    invoke-virtual {v7, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    const/high16 v8, 0x41880000    # 17.0f

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 227
    invoke-virtual {v7}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    .line 229
    .local v2, "paint":Landroid/text/TextPaint;
    const/16 v8, 0x11

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 230
    invoke-virtual {v7}, Landroid/widget/TextView;->setSingleLine()V

    .line 232
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v0, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 234
    .local v0, "icon":Landroid/widget/ImageView;
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 237
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v1, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 238
    .local v1, "linearLayout":Landroid/widget/LinearLayout;
    const v8, 0x7f09059e

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setId(I)V

    .line 239
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 240
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 242
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->defaultTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 243
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->defaultTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 245
    new-instance v4, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v4, v8}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 246
    .local v4, "relativeLayout":Landroid/widget/RelativeLayout;
    const v8, -0xffff01

    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 247
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v5, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 248
    .local v5, "rl":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v8, 0xd

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 249
    invoke-virtual {v4, v1, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 252
    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v3, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 253
    .local v3, "redDot":Landroid/widget/ImageView;
    const v8, 0x7f09059d

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setId(I)V

    .line 254
    const v8, 0x7f0802c5

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 255
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v6, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 256
    .local v6, "rlRedDot":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v8, 0x1

    const v9, 0x7f09059e

    invoke-virtual {v6, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 257
    const/4 v8, 0x0

    const/high16 v9, 0x41700000    # 15.0f

    invoke-static {v9}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v6, v8, v9, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 258
    const/16 v8, 0x8

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 259
    invoke-virtual {v4, v3, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 261
    invoke-direct {p0, p1, v4}, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->addTab(ILandroid/view/View;)V

    goto/16 :goto_0
.end method

.method private addTextTab(ILjava/lang/String;)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 279
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 280
    .local v0, "tab":Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 282
    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 284
    invoke-direct {p0, p1, v0}, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->addTab(ILandroid/view/View;)V

    .line 285
    return-void
.end method

.method private changeStyle(Landroid/widget/LinearLayout;ZI)V
    .locals 3
    .param p1, "ll"    # Landroid/widget/LinearLayout;
    .param p2, "selected"    # Z
    .param p3, "color"    # I

    .prologue
    .line 425
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 426
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/view/View;->setSelected(Z)V

    .line 427
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 428
    .local v1, "view":Landroid/view/View;
    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 429
    check-cast v1, Landroid/widget/TextView;

    .end local v1    # "view":Landroid/view/View;
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 431
    :cond_0
    return-void
.end method

.method private scrollToChild(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "offset"    # I

    .prologue
    .line 342
    iget v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->tabCount:I

    if-nez v1, :cond_1

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 346
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int v0, v1, p2

    .line 348
    .local v0, "newScrollX":I
    if-gtz p1, :cond_2

    if-lez p2, :cond_3

    .line 349
    :cond_2
    iget v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->scrollOffset:I

    sub-int/2addr v0, v1

    .line 352
    :cond_3
    iget v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->lastScrollX:I

    if-eq v0, v1, :cond_0

    .line 353
    iput v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->lastScrollX:I

    .line 354
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->scrollTo(II)V

    goto :goto_0
.end method

.method private updateTabStyles()V
    .locals 5

    .prologue
    .line 311
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->tabCount:I

    if-ge v0, v3, :cond_2

    .line 313
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 315
    .local v2, "v":Landroid/view/View;
    iget v3, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->tabBackgroundResId:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 317
    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 319
    check-cast v1, Landroid/widget/TextView;

    .line 320
    .local v1, "tab":Landroid/widget/TextView;
    const/4 v3, 0x0

    iget v4, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->tabTextSize:I

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 321
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->tabTypeface:Landroid/graphics/Typeface;

    iget v4, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->tabTypefaceStyle:I

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 322
    iget v3, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->tabTextColor:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 327
    iget-boolean v3, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->textAllCaps:Z

    if-eqz v3, :cond_0

    .line 328
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_1

    .line 329
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 311
    .end local v1    # "tab":Landroid/widget/TextView;
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 331
    .restart local v1    # "tab":Landroid/widget/TextView;
    :cond_1
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->locale:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 338
    .end local v1    # "tab":Landroid/widget/TextView;
    .end local v2    # "v":Landroid/view/View;
    :cond_2
    return-void
.end method


# virtual methods
.method public changeTabStyles(I)V
    .locals 9
    .param p1, "selectPos"    # I

    .prologue
    const/4 v8, 0x0

    .line 407
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v5, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->tabCount:I

    if-ge v1, v5, :cond_2

    .line 408
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 409
    .local v4, "v":Landroid/view/View;
    instance-of v5, v4, Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_0

    move-object v3, v4

    .line 410
    check-cast v3, Landroid/widget/RelativeLayout;

    .line 411
    .local v3, "rl":Landroid/widget/RelativeLayout;
    invoke-virtual {v3, v8}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 412
    .local v0, "child":Landroid/view/View;
    instance-of v5, v0, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_0

    move-object v2, v0

    .line 413
    check-cast v2, Landroid/widget/LinearLayout;

    .line 414
    .local v2, "ll":Landroid/widget/LinearLayout;
    if-ne v1, p1, :cond_1

    .line 415
    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060052

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {p0, v2, v5, v6}, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->changeStyle(Landroid/widget/LinearLayout;ZI)V

    .line 407
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "ll":Landroid/widget/LinearLayout;
    .end local v3    # "rl":Landroid/widget/RelativeLayout;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 417
    .restart local v0    # "child":Landroid/view/View;
    .restart local v2    # "ll":Landroid/widget/LinearLayout;
    .restart local v3    # "rl":Landroid/widget/RelativeLayout;
    :cond_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060050

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-direct {p0, v2, v8, v5}, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->changeStyle(Landroid/widget/LinearLayout;ZI)V

    goto :goto_1

    .line 422
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "ll":Landroid/widget/LinearLayout;
    .end local v3    # "rl":Landroid/widget/RelativeLayout;
    .end local v4    # "v":Landroid/view/View;
    :cond_2
    return-void
.end method

.method public getDividerColor()I
    .locals 1

    .prologue
    .line 476
    iget v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->dividerColor:I

    return v0
.end method

.method public getDividerPadding()I
    .locals 1

    .prologue
    .line 494
    iget v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->dividerPadding:I

    return v0
.end method

.method public getIndicatorColor()I
    .locals 1

    .prologue
    .line 439
    iget v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->indicatorColor:I

    return v0
.end method

.method public getIndicatorHeight()I
    .locals 1

    .prologue
    .line 448
    iget v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->indicatorHeight:I

    return v0
.end method

.method public getScrollOffset()I
    .locals 1

    .prologue
    .line 503
    iget v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->scrollOffset:I

    return v0
.end method

.method public getShouldExpand()Z
    .locals 1

    .prologue
    .line 512
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->shouldExpand:Z

    return v0
.end method

.method public getTabBackground()I
    .locals 1

    .prologue
    .line 558
    iget v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->tabBackgroundResId:I

    return v0
.end method

.method public getTabPaddingLeftRight()I
    .locals 1

    .prologue
    .line 566
    iget v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->tabPadding:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 543
    iget v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->tabTextColor:I

    return v0
.end method

.method public getTextSize()I
    .locals 1

    .prologue
    .line 529
    iget v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->tabTextSize:I

    return v0
.end method

.method public getUnderlineColor()I
    .locals 1

    .prologue
    .line 462
    iget v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->underlineColor:I

    return v0
.end method

.method public getUnderlineHeight()I
    .locals 1

    .prologue
    .line 485
    iget v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->underlineHeight:I

    return v0
.end method

.method public isTextAllCaps()Z
    .locals 1

    .prologue
    .line 521
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->textAllCaps:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 3

    .prologue
    .line 180
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 182
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->pager:Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->getAdapter()Landroid/support/v4/view/af;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/af;->getCount()I

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->tabCount:I

    .line 184
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->tabCount:I

    if-ge v0, v1, :cond_2

    .line 185
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->pager:Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->getAdapter()Landroid/support/v4/view/af;

    move-result-object v1

    instance-of v1, v1, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip$TitleIconTabProvider;

    if-eqz v1, :cond_0

    .line 186
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->pager:Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->getAdapter()Landroid/support/v4/view/af;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/view/af;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->pager:Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;

    .line 187
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->getAdapter()Landroid/support/v4/view/af;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip$TitleIconTabProvider;

    invoke-interface {v1, v0}, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip$TitleIconTabProvider;->getPageIconResId(I)I

    move-result v1

    .line 186
    invoke-direct {p0, v0, v2, v1}, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->addTextIconTab(ILjava/lang/String;I)V

    .line 184
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 188
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->pager:Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->getAdapter()Landroid/support/v4/view/af;

    move-result-object v1

    instance-of v1, v1, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip$IconTabProvider;

    if-eqz v1, :cond_1

    .line 189
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->pager:Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->getAdapter()Landroid/support/v4/view/af;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip$IconTabProvider;

    invoke-interface {v1, v0}, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip$IconTabProvider;->getPageIconResId(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->addIconTab(II)V

    goto :goto_1

    .line 191
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->pager:Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->getAdapter()Landroid/support/v4/view/af;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/view/af;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->addTextTab(ILjava/lang/String;)V

    goto :goto_1

    .line 195
    :cond_2
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->updateTabStyles()V

    .line 197
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip$1;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip$1;-><init>(Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 215
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 361
    invoke-super/range {p0 .. p1}, Landroid/widget/HorizontalScrollView;->onDraw(Landroid/graphics/Canvas;)V

    .line 363
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->tabCount:I

    if-nez v1, :cond_1

    .line 404
    :cond_0
    return-void

    .line 367
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->getHeight()I

    move-result v12

    .line 371
    .local v12, "height":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->indicatorColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 374
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->currentPosition:I

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 375
    .local v11, "currentTab":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v2, v1

    .line 376
    .local v2, "lineLeft":F
    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v4, v1

    .line 380
    .local v4, "lineRight":F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->currentPositionOffset:F

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->currentPosition:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->tabCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_2

    .line 382
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->currentPosition:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 383
    .local v14, "nextTab":Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v15, v1

    .line 384
    .local v15, "nextTabLeft":F
    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v0, v1

    move/from16 v16, v0

    .line 386
    .local v16, "nextTabRight":F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->currentPositionOffset:F

    mul-float/2addr v1, v15

    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v5, v0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->currentPositionOffset:F

    sub-float/2addr v3, v5

    mul-float/2addr v3, v2

    add-float v2, v1, v3

    .line 387
    move-object/from16 v0, p0

    iget v1, v0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->currentPositionOffset:F

    mul-float v1, v1, v16

    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v5, v0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->currentPositionOffset:F

    sub-float/2addr v3, v5

    mul-float/2addr v3, v4

    add-float v4, v1, v3

    .line 390
    .end local v14    # "nextTab":Landroid/view/View;
    .end local v15    # "nextTabLeft":F
    .end local v16    # "nextTabRight":F
    :cond_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->indicatorHeight:I

    sub-int v1, v12, v1

    int-to-float v3, v1

    int-to-float v5, v12

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 394
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->underlineColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 395
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->underlineHeight:I

    sub-int v1, v12, v1

    int-to-float v7, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    int-to-float v8, v1

    int-to-float v9, v12

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 399
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->dividerPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->dividerColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 400
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->tabCount:I

    add-int/lit8 v1, v1, -0x1

    if-ge v13, v1, :cond_0

    .line 401
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v13}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 402
    .local v17, "tab":Landroid/view/View;
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v6, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->dividerPadding:I

    int-to-float v7, v1

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v8, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->dividerPadding:I

    sub-int v1, v12, v1

    int-to-float v9, v1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->dividerPaint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 400
    add-int/lit8 v13, v13, 0x1

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 576
    move-object v0, p1

    check-cast v0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip$b;

    .line 577
    .local v0, "savedState":Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip$b;
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip$b;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/HorizontalScrollView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 578
    iget v1, v0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip$b;->a:I

    iput v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->currentPosition:I

    .line 579
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->requestLayout()V

    .line 580
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 584
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 585
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip$b;

    invoke-direct {v0, v1}, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip$b;-><init>(Landroid/os/Parcelable;)V

    .line 586
    .local v0, "savedState":Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip$b;
    iget v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->currentPosition:I

    iput v2, v0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip$b;->a:I

    .line 587
    return-object v0
.end method

.method public setAllCaps(Z)V
    .locals 0
    .param p1, "textAllCaps"    # Z

    .prologue
    .line 525
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->textAllCaps:Z

    .line 526
    return-void
.end method

.method public setDividerColor(I)V
    .locals 0
    .param p1, "dividerColor"    # I

    .prologue
    .line 480
    iput p1, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->dividerColor:I

    .line 481
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->invalidate()V

    .line 482
    return-void
.end method

.method public setDividerColorResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 471
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->dividerColor:I

    .line 472
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->invalidate()V

    .line 473
    return-void
.end method

.method public setDividerPadding(I)V
    .locals 0
    .param p1, "dividerPaddingPx"    # I

    .prologue
    .line 498
    iput p1, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->dividerPadding:I

    .line 499
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->invalidate()V

    .line 500
    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 0
    .param p1, "indicatorColor"    # I

    .prologue
    .line 443
    iput p1, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->indicatorColor:I

    .line 444
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->invalidate()V

    .line 445
    return-void
.end method

.method public setIndicatorColorResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 434
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->indicatorColor:I

    .line 435
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->invalidate()V

    .line 436
    return-void
.end method

.method public setIndicatorHeight(I)V
    .locals 0
    .param p1, "indicatorLineHeightPx"    # I

    .prologue
    .line 452
    iput p1, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->indicatorHeight:I

    .line 453
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->invalidate()V

    .line 454
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$f;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v4/view/ViewPager$f;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->delegatePageListener:Landroid/support/v4/view/ViewPager$f;

    .line 176
    return-void
.end method

.method public setScrollOffset(I)V
    .locals 0
    .param p1, "scrollOffsetPx"    # I

    .prologue
    .line 507
    iput p1, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->scrollOffset:I

    .line 508
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->invalidate()V

    .line 509
    return-void
.end method

.method public setShouldExpand(Z)V
    .locals 0
    .param p1, "shouldExpand"    # Z

    .prologue
    .line 516
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->shouldExpand:Z

    .line 517
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->requestLayout()V

    .line 518
    return-void
.end method

.method public setTabBackground(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 562
    iput p1, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->tabBackgroundResId:I

    .line 563
    return-void
.end method

.method public setTabPaddingLeftRight(I)V
    .locals 0
    .param p1, "paddingPx"    # I

    .prologue
    .line 570
    iput p1, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->tabPadding:I

    .line 571
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->updateTabStyles()V

    .line 572
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .param p1, "textColor"    # I

    .prologue
    .line 547
    iput p1, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->tabTextColor:I

    .line 548
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->updateTabStyles()V

    .line 549
    return-void
.end method

.method public setTextColorResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 538
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->tabTextColor:I

    .line 539
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->updateTabStyles()V

    .line 540
    return-void
.end method

.method public setTextSize(I)V
    .locals 0
    .param p1, "textSizePx"    # I

    .prologue
    .line 533
    iput p1, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->tabTextSize:I

    .line 534
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->updateTabStyles()V

    .line 535
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .locals 0
    .param p1, "typeface"    # Landroid/graphics/Typeface;
    .param p2, "style"    # I

    .prologue
    .line 552
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->tabTypeface:Landroid/graphics/Typeface;

    .line 553
    iput p2, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->tabTypefaceStyle:I

    .line 554
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->updateTabStyles()V

    .line 555
    return-void
.end method

.method public setUnderlineColor(I)V
    .locals 0
    .param p1, "underlineColor"    # I

    .prologue
    .line 466
    iput p1, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->underlineColor:I

    .line 467
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->invalidate()V

    .line 468
    return-void
.end method

.method public setUnderlineColorResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 457
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->underlineColor:I

    .line 458
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->invalidate()V

    .line 459
    return-void
.end method

.method public setUnderlineHeight(I)V
    .locals 0
    .param p1, "underlineHeightPx"    # I

    .prologue
    .line 489
    iput p1, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->underlineHeight:I

    .line 490
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->invalidate()V

    .line 491
    return-void
.end method

.method public setViewPager(Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;)V
    .locals 2
    .param p1, "pager"    # Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->pager:Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;

    .line 165
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->getAdapter()Landroid/support/v4/view/af;

    move-result-object v0

    if-nez v0, :cond_0

    .line 166
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager does not have adapter instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->pageListener:Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip$a;

    invoke-virtual {p1, v0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->setOnPageChangeListener(Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$b;)V

    .line 171
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->notifyDataSetChanged()V

    .line 172
    return-void
.end method

.method public showRedPoint(IZ)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "show"    # Z

    .prologue
    .line 270
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 271
    .local v0, "childAt":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 272
    const v2, 0x7f09059d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 273
    .local v1, "redDot":Landroid/view/View;
    if-eqz p2, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 275
    .end local v1    # "redDot":Landroid/view/View;
    :cond_0
    return-void

    .line 273
    .restart local v1    # "redDot":Landroid/view/View;
    :cond_1
    const/16 v2, 0x8

    goto :goto_0
.end method
