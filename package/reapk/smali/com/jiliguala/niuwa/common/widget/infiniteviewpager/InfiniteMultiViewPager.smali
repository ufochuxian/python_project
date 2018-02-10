.class public Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Landroid/graphics/Point;

.field private final c:Landroid/graphics/Point;

.field private d:I

.field private e:Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager$a;

.field private f:I

.field private g:I

.field private h:I

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, -0x1

    .line 65
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    const/4 v0, 0x2

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;->d:I

    .line 46
    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;->f:I

    .line 50
    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;->g:I

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;->b:Landroid/graphics/Point;

    .line 68
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;->c:Landroid/graphics/Point;

    .line 69
    return-void
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;->d:I

    return p1
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;)Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager$a;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;->e:Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager$a;

    return-object v0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;->setCurrentItem(I)V

    .line 121
    new-instance v0, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager$1;-><init>(Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;)V

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$f;)V

    .line 172
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 227
    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;->setClipChildren(Z)V

    .line 228
    sget-object v1, Lcom/jiliguala/niuwa/R$styleable;->MultiViewPager:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 229
    .local v0, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;->setMaxWidth(I)V

    .line 230
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;->setMaxHeight(I)V

    .line 231
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;->setMatchChildWidth(I)V

    .line 232
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 233
    return-void
.end method

.method private static a(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 2
    .param p0, "size"    # Landroid/graphics/Point;
    .param p1, "maxSize"    # Landroid/graphics/Point;

    .prologue
    .line 72
    iget v0, p1, Landroid/graphics/Point;->x:I

    if-ltz v0, :cond_0

    .line 73
    iget v0, p0, Landroid/graphics/Point;->x:I

    iget v1, p1, Landroid/graphics/Point;->x:I

    if-le v0, v1, :cond_0

    .line 74
    iget v0, p1, Landroid/graphics/Point;->x:I

    iput v0, p0, Landroid/graphics/Point;->x:I

    .line 77
    :cond_0
    iget v0, p1, Landroid/graphics/Point;->y:I

    if-ltz v0, :cond_1

    .line 78
    iget v0, p0, Landroid/graphics/Point;->y:I

    iget v1, p1, Landroid/graphics/Point;->y:I

    if-le v0, v1, :cond_1

    .line 79
    iget v0, p1, Landroid/graphics/Point;->y:I

    iput v0, p0, Landroid/graphics/Point;->y:I

    .line 82
    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;)I
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;

    .prologue
    .line 36
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;->d:I

    return v0
.end method


# virtual methods
.method protected a(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v7, 0x0

    .line 262
    iget-boolean v6, p0, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;->i:Z

    if-nez v6, :cond_1

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    iget v6, p0, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;->h:I

    if-nez v6, :cond_2

    .line 266
    iput-boolean v7, p0, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;->i:Z

    goto :goto_0

    .line 267
    :cond_2
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;->getChildCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 268
    invoke-virtual {p0, v7}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 269
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    .line 270
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 271
    .local v5, "pageWidth":I
    iget v6, p0, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;->h:I

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 272
    .local v3, "match":Landroid/view/View;
    if-nez v3, :cond_3

    .line 273
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "MatchWithChildResId did not find that ID in the first fragment of the ViewPager; is that view defined in the child view\'s layout? Note that MultiViewPager only measures the child for index 0."

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 276
    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 278
    .local v1, "childWidth":I
    if-lez v1, :cond_0

    .line 279
    iput-boolean v7, p0, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;->i:Z

    .line 280
    sub-int v2, v5, v1

    .line 281
    .local v2, "difference":I
    neg-int v6, v2

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070056

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p0, v6}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;->setPageMargin(I)V

    .line 282
    int-to-float v6, v5

    int-to-float v7, v1

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    add-int/lit8 v4, v6, 0x1

    .line 283
    .local v4, "offscreen":I
    invoke-virtual {p0, v4}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;->setOffscreenPageLimit(I)V

    .line 284
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;->requestLayout()V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    .line 237
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;->b:Landroid/graphics/Point;

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Point;->set(II)V

    .line 238
    iget v4, p0, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;->f:I

    if-gez v4, :cond_0

    iget v4, p0, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;->g:I

    if-ltz v4, :cond_1

    .line 239
    :cond_0
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;->c:Landroid/graphics/Point;

    iget v5, p0, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;->f:I

    iget v6, p0, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;->g:I

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Point;->set(II)V

    .line 240
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;->b:Landroid/graphics/Point;

    iget-object v5, p0, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;->c:Landroid/graphics/Point;

    invoke-static {v4, v5}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;->a(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 241
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;->b:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 242
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;->b:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 245
    :cond_1
    const/4 v2, 0x0

    .line 246
    .local v2, "height":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 247
    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 248
    .local v0, "child":Landroid/view/View;
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v0, p1, v4}, Landroid/view/View;->measure(II)V

    .line 249
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 250
    .local v1, "h":I
    if-le v1, v2, :cond_2

    .line 251
    move v2, v1

    .line 246
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 254
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "h":I
    :cond_3
    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 256
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->onMeasure(II)V

    .line 257
    invoke-virtual {p0, p1, p2}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;->a(II)V

    .line 258
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;->getAdapter()Landroid/support/v4/view/af;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b;

    .line 101
    .local v0, "adapter":Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b;
    if-nez v0, :cond_1

    .line 102
    sget-boolean v4, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/a;->j:Z

    if-eqz v4, :cond_0

    .line 105
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 117
    :goto_0
    return-void

    .line 108
    :cond_1
    instance-of v4, p1, Landroid/os/Bundle;

    if-eqz v4, :cond_2

    move-object v1, p1

    .line 109
    check-cast v1, Landroid/os/Bundle;

    .line 110
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v4, "adapter_state"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 111
    .local v3, "representation":Ljava/lang/String;
    invoke-virtual {v0, v3}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 112
    .local v2, "c":Ljava/lang/Object;
    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b;->a(Ljava/lang/Object;)V

    .line 113
    const-string v4, "super_state"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    invoke-super {p0, v4}, Landroid/support/v4/view/ViewPager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0

    .line 116
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "c":Ljava/lang/Object;
    .end local v3    # "representation":Ljava/lang/String;
    :cond_2
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;->getAdapter()Landroid/support/v4/view/af;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b;

    .line 87
    .local v0, "adapter":Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b;
    if-nez v0, :cond_0

    .line 89
    invoke-super {p0}, Landroid/support/v4/view/ViewPager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 95
    :goto_0
    return-object v1

    .line 91
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 92
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "super_state"

    invoke-super {p0}, Landroid/support/v4/view/ViewPager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 93
    const-string v2, "adapter_state"

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b;->a()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 291
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/view/ViewPager;->onSizeChanged(IIII)V

    .line 293
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;->i:Z

    .line 294
    return-void
.end method

.method public setAdapter(Landroid/support/v4/view/af;)V
    .locals 2
    .param p1, "adapter"    # Landroid/support/v4/view/af;

    .prologue
    .line 214
    instance-of v0, p1, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b;

    if-eqz v0, :cond_0

    .line 215
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/af;)V

    .line 216
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;->a()V

    .line 220
    return-void

    .line 218
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Adapter should be an instance of InfinitePagerAdapter."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setCurrentIndicator(Ljava/lang/Object;)V
    .locals 6
    .param p1, "indicator"    # Ljava/lang/Object;

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;->getAdapter()Landroid/support/v4/view/af;

    move-result-object v0

    .line 189
    .local v0, "adapter":Landroid/support/v4/view/af;
    if-nez v0, :cond_1

    .line 202
    :cond_0
    return-void

    :cond_1
    move-object v3, v0

    .line 192
    check-cast v3, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b;

    .line 193
    .local v3, "infinitePagerAdapter":Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b;
    invoke-virtual {v3}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 194
    .local v1, "currentIndicator":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    if-ne v4, v5, :cond_0

    .line 198
    invoke-virtual {v3, p1}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b;->a(Ljava/lang/Object;)V

    .line 199
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v4, 0x5

    if-ge v2, v4, :cond_0

    .line 200
    invoke-virtual {v3, v2}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b;->a(I)V

    .line 199
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public final setCurrentItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 176
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 177
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot change page index unless its 1."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 180
    return-void
.end method

.method public setMatchChildWidth(I)V
    .locals 1
    .param p1, "matchChildWidthResId"    # I

    .prologue
    .line 302
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;->h:I

    if-eq v0, p1, :cond_0

    .line 303
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;->h:I

    .line 304
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;->i:Z

    .line 306
    :cond_0
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 323
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;->g:I

    .line 324
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 314
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;->f:I

    .line 315
    return-void
.end method

.method public final setOffscreenPageLimit(I)V
    .locals 0
    .param p1, "limit"    # I

    .prologue
    .line 209
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 210
    return-void
.end method

.method public setOnInfinitePageChangeListener(Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager$a;)V
    .locals 0
    .param p1, "listener"    # Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager$a;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;->e:Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager$a;

    .line 224
    return-void
.end method
