.class public Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;

.field private c:Ljava/lang/Runnable;

.field private d:Landroid/support/v4/view/ViewPager;

.field private e:Landroid/support/v4/view/ViewPager$f;

.field private f:I

.field private g:I

.field private h:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator$a;

.field private i:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/a;

.field private final j:Landroid/view/View$OnClickListener;

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    new-instance v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator$1;-><init>(Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator;->j:Landroid/view/View$OnClickListener;

    .line 72
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator;->setHorizontalScrollBarEnabled(Z)V

    .line 74
    new-instance v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;

    const v1, 0x7f04023c

    invoke-direct {v0, p1, v1}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator;->b:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;

    .line 76
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator;->b:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    return-void
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator;->d:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator;->c:Ljava/lang/Runnable;

    return-object p1
.end method

.method private a(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 111
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator;->b:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;

    invoke-virtual {v1, p1}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 112
    .local v0, "tabView":Landroid/view/View;
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator;->c:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator;->c:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 115
    :cond_0
    new-instance v1, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator$2;

    invoke-direct {v1, p0, v0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator$2;-><init>(Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator;Landroid/view/View;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator;->c:Ljava/lang/Runnable;

    .line 122
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator;->c:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator;->post(Ljava/lang/Runnable;)Z

    .line 123
    return-void
.end method

.method private a(ILjava/lang/String;I)V
    .locals 7
    .param p1, "index"    # I
    .param p2, "str"    # Ljava/lang/String;
    .param p3, "cnt"    # I

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0b0075

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 144
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f090140

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 145
    .local v0, "tv":Landroid/widget/TextView;
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 146
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 152
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator;->b:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v1, v3}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    return-void
.end method

.method static synthetic b(Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator;)Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator$a;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator;->h:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator$a;

    return-object v0
.end method

.method static synthetic c(Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator;)Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/a;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator;->i:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/a;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/support/v4/view/ViewPager;I)V
    .locals 0
    .param p1, "view"    # Landroid/support/v4/view/ViewPager;
    .param p2, "initialPosition"    # I

    .prologue
    .line 225
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 226
    invoke-virtual {p0, p2}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator;->setCurrentItem(I)V

    .line 227
    return-void
.end method

.method public c()V
    .locals 6

    .prologue
    .line 200
    iget-object v5, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator;->b:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;->removeAllViews()V

    .line 201
    iget-object v5, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator;->d:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/af;

    move-result-object v0

    .line 202
    .local v0, "adapter":Landroid/support/v4/view/af;
    instance-of v5, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/a;

    if-eqz v5, :cond_0

    move-object v5, v0

    .line 203
    check-cast v5, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/a;

    iput-object v5, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator;->i:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/a;

    .line 205
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/view/af;->getCount()I

    move-result v2

    .line 206
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 207
    const-string v4, ""

    .line 208
    .local v4, "iconResId":Ljava/lang/String;
    const/4 v1, 0x0

    .line 209
    .local v1, "cnt":I
    iget-object v5, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator;->i:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/a;

    if-eqz v5, :cond_1

    .line 210
    iget-object v5, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator;->i:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/a;

    invoke-interface {v5, v3}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/a;->getResStr(I)Ljava/lang/String;

    move-result-object v4

    .line 211
    iget-object v5, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator;->i:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/a;

    invoke-interface {v5, v3}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/a;->getCnt(I)I

    move-result v1

    .line 214
    :cond_1
    invoke-direct {p0, v3, v4, v1}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator;->a(ILjava/lang/String;I)V

    .line 206
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 216
    .end local v1    # "cnt":I
    .end local v4    # "iconResId":Ljava/lang/String;
    :cond_2
    iget v5, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator;->g:I

    if-le v5, v2, :cond_3

    .line 217
    add-int/lit8 v5, v2, -0x1

    iput v5, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator;->g:I

    .line 219
    :cond_3
    iget v5, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator;->g:I

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator;->setCurrentItem(I)V

    .line 220
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator;->requestLayout()V

    .line 221
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 127
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 128
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator;->c:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator;->post(Ljava/lang/Runnable;)Z

    .line 132
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 136
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 137
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator;->c:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 140
    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/4 v5, 0x1

    .line 85
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 86
    .local v4, "widthMode":I
    if-ne v4, v7, :cond_2

    move v1, v5

    .line 87
    .local v1, "lockedExpanded":Z
    :goto_0
    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator;->setFillViewport(Z)V

    .line 89
    iget-object v6, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator;->b:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;->getChildCount()I

    move-result v0

    .line 90
    .local v0, "childCount":I
    if-le v0, v5, :cond_4

    if-eq v4, v7, :cond_0

    const/high16 v5, -0x80000000

    if-ne v4, v5, :cond_4

    .line 91
    :cond_0
    const/4 v5, 0x2

    if-le v0, v5, :cond_3

    .line 92
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3ecccccd    # 0.4f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator;->f:I

    .line 100
    :goto_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator;->getMeasuredWidth()I

    move-result v3

    .line 101
    .local v3, "oldWidth":I
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 102
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator;->getMeasuredWidth()I

    move-result v2

    .line 104
    .local v2, "newWidth":I
    if-eqz v1, :cond_1

    if-eq v3, v2, :cond_1

    .line 106
    iget v5, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator;->g:I

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator;->setCurrentItem(I)V

    .line 108
    :cond_1
    return-void

    .line 86
    .end local v0    # "childCount":I
    .end local v1    # "lockedExpanded":Z
    .end local v2    # "newWidth":I
    .end local v3    # "oldWidth":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 94
    .restart local v0    # "childCount":I
    .restart local v1    # "lockedExpanded":Z
    :cond_3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator;->f:I

    goto :goto_1

    .line 97
    :cond_4
    const/4 v5, -0x1

    iput v5, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator;->f:I

    goto :goto_1
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 158
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator;->e:Landroid/support/v4/view/ViewPager$f;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator;->e:Landroid/support/v4/view/ViewPager$f;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$f;->onPageScrollStateChanged(I)V

    .line 161
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 165
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator;->e:Landroid/support/v4/view/ViewPager$f;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator;->e:Landroid/support/v4/view/ViewPager$f;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$f;->onPageScrolled(IFI)V

    .line 168
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 172
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator;->setCurrentItem(I)V

    .line 173
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator;->e:Landroid/support/v4/view/ViewPager$f;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator;->e:Landroid/support/v4/view/ViewPager$f;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$f;->onPageSelected(I)V

    .line 176
    :cond_0
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 6
    .param p1, "item"    # I

    .prologue
    .line 231
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator;->d:Landroid/support/v4/view/ViewPager;

    if-nez v4, :cond_0

    .line 232
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "ViewPager has not been bound."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 234
    :cond_0
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator;->g:I

    .line 235
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator;->d:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 237
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator;->b:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;->getChildCount()I

    move-result v3

    .line 238
    .local v3, "tabCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 239
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator;->b:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;

    invoke-virtual {v4, v1}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 240
    .local v0, "child":Landroid/view/View;
    if-ne v1, p1, :cond_2

    const/4 v2, 0x1

    .line 241
    .local v2, "isSelected":Z
    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 242
    if-eqz v2, :cond_1

    .line 243
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator;->a(I)V

    .line 238
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 240
    .end local v2    # "isSelected":Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 246
    .end local v0    # "child":Landroid/view/View;
    :cond_3
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$f;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v4/view/ViewPager$f;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator;->e:Landroid/support/v4/view/ViewPager$f;

    .line 251
    return-void
.end method

.method public setOnTabReselectedListener(Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator$a;)V
    .locals 0
    .param p1, "listener"    # Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator$a;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator;->h:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator$a;

    .line 81
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 3
    .param p1, "view"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 180
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator;->d:Landroid/support/v4/view/ViewPager;

    if-ne v1, p1, :cond_0

    .line 193
    :goto_0
    return-void

    .line 183
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator;->d:Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_1

    .line 184
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator;->d:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$f;)V

    .line 186
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/af;

    move-result-object v0

    .line 187
    .local v0, "adapter":Landroid/support/v4/view/af;
    if-nez v0, :cond_2

    .line 188
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "ViewPager does not have adapter instance."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 190
    :cond_2
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator;->d:Landroid/support/v4/view/ViewPager;

    .line 191
    invoke-virtual {p1, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$f;)V

    .line 192
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator;->c()V

    goto :goto_0
.end method

.method public setmCurrentIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 196
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ClassPageTabIndicator;->k:I

    .line 197
    return-void
.end method
