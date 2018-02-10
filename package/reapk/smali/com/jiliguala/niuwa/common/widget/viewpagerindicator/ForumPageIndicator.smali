.class public Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator$a;
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

.field private h:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator$a;

.field private i:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/a;

.field private j:Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment$OnForumTabSelectedListener;

.field private final k:Landroid/view/View$OnClickListener;

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    new-instance v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator$1;-><init>(Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;->k:Landroid/view/View$OnClickListener;

    .line 78
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;->setHorizontalScrollBarEnabled(Z)V

    .line 80
    new-instance v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;

    const v1, 0x7f04023c

    invoke-direct {v0, p1, v1}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;->b:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;

    .line 82
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;->b:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    return-void
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;->d:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;->c:Ljava/lang/Runnable;

    return-object p1
.end method

.method private a(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 117
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;->b:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;

    invoke-virtual {v1, p1}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 118
    .local v0, "tabView":Landroid/view/View;
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;->c:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;->c:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 121
    :cond_0
    new-instance v1, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator$2;

    invoke-direct {v1, p0, v0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator$2;-><init>(Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;Landroid/view/View;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;->c:Ljava/lang/Runnable;

    .line 128
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;->c:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;->post(Ljava/lang/Runnable;)Z

    .line 129
    return-void
.end method

.method private a(ILjava/lang/String;I)V
    .locals 9
    .param p1, "index"    # I
    .param p2, "str"    # Ljava/lang/String;
    .param p3, "cnt"    # I

    .prologue
    const/16 v8, 0x63

    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 149
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0b00a8

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 150
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f090227

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 151
    .local v1, "tv":Landroid/widget/TextView;
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    const v3, 0x7f090098

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 154
    .local v0, "biv":Landroid/widget/ImageView;
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 166
    iget v3, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;->l:I

    if-eq p1, v3, :cond_2

    .line 167
    if-lez p3, :cond_0

    if-gt p3, v8, :cond_0

    .line 170
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 184
    :goto_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;->k:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 187
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;->b:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x1

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v2, v4}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;->b:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06004e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;->setBackgroundColor(I)V

    .line 189
    return-void

    .line 171
    :cond_0
    if-le p3, v8, :cond_1

    .line 174
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 177
    :cond_1
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 181
    :cond_2
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;)Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment$OnForumTabSelectedListener;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;->j:Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment$OnForumTabSelectedListener;

    return-object v0
.end method

.method static synthetic c(Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;)Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator$a;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;->h:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator$a;

    return-object v0
.end method

.method static synthetic d(Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;)Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/a;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;->i:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/a;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/support/v4/view/ViewPager;I)V
    .locals 0
    .param p1, "view"    # Landroid/support/v4/view/ViewPager;
    .param p2, "initialPosition"    # I

    .prologue
    .line 260
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 261
    invoke-virtual {p0, p2}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;->setCurrentItem(I)V

    .line 262
    return-void
.end method

.method public c()V
    .locals 6

    .prologue
    .line 235
    iget-object v5, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;->b:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;->removeAllViews()V

    .line 236
    iget-object v5, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;->d:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/af;

    move-result-object v0

    .line 237
    .local v0, "adapter":Landroid/support/v4/view/af;
    instance-of v5, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/a;

    if-eqz v5, :cond_0

    move-object v5, v0

    .line 238
    check-cast v5, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/a;

    iput-object v5, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;->i:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/a;

    .line 240
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/view/af;->getCount()I

    move-result v2

    .line 241
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 242
    const-string v4, ""

    .line 243
    .local v4, "iconResId":Ljava/lang/String;
    const/4 v1, 0x0

    .line 244
    .local v1, "cnt":I
    iget-object v5, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;->i:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/a;

    if-eqz v5, :cond_1

    .line 245
    iget-object v5, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;->i:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/a;

    invoke-interface {v5, v3}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/a;->getResStr(I)Ljava/lang/String;

    move-result-object v4

    .line 246
    iget-object v5, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;->i:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/a;

    invoke-interface {v5, v3}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/a;->getCnt(I)I

    move-result v1

    .line 249
    :cond_1
    invoke-direct {p0, v3, v4, v1}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;->a(ILjava/lang/String;I)V

    .line 241
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 251
    .end local v1    # "cnt":I
    .end local v4    # "iconResId":Ljava/lang/String;
    :cond_2
    iget v5, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;->g:I

    if-le v5, v2, :cond_3

    .line 252
    add-int/lit8 v5, v2, -0x1

    iput v5, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;->g:I

    .line 254
    :cond_3
    iget v5, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;->g:I

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;->setCurrentItem(I)V

    .line 255
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;->requestLayout()V

    .line 256
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 133
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 134
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;->c:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;->post(Ljava/lang/Runnable;)Z

    .line 138
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 142
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 143
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;->c:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 146
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

    .line 91
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 92
    .local v4, "widthMode":I
    if-ne v4, v7, :cond_2

    move v1, v5

    .line 93
    .local v1, "lockedExpanded":Z
    :goto_0
    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;->setFillViewport(Z)V

    .line 95
    iget-object v6, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;->b:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;->getChildCount()I

    move-result v0

    .line 96
    .local v0, "childCount":I
    if-le v0, v5, :cond_4

    if-eq v4, v7, :cond_0

    const/high16 v5, -0x80000000

    if-ne v4, v5, :cond_4

    .line 97
    :cond_0
    const/4 v5, 0x2

    if-le v0, v5, :cond_3

    .line 98
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3ecccccd    # 0.4f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;->f:I

    .line 106
    :goto_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;->getMeasuredWidth()I

    move-result v3

    .line 107
    .local v3, "oldWidth":I
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 108
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;->getMeasuredWidth()I

    move-result v2

    .line 110
    .local v2, "newWidth":I
    if-eqz v1, :cond_1

    if-eq v3, v2, :cond_1

    .line 112
    iget v5, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;->g:I

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;->setCurrentItem(I)V

    .line 114
    :cond_1
    return-void

    .line 92
    .end local v0    # "childCount":I
    .end local v1    # "lockedExpanded":Z
    .end local v2    # "newWidth":I
    .end local v3    # "oldWidth":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 100
    .restart local v0    # "childCount":I
    .restart local v1    # "lockedExpanded":Z
    :cond_3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;->f:I

    goto :goto_1

    .line 103
    :cond_4
    const/4 v5, -0x1

    iput v5, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;->f:I

    goto :goto_1
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 193
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;->e:Landroid/support/v4/view/ViewPager$f;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;->e:Landroid/support/v4/view/ViewPager$f;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$f;->onPageScrollStateChanged(I)V

    .line 196
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 200
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;->e:Landroid/support/v4/view/ViewPager$f;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;->e:Landroid/support/v4/view/ViewPager$f;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$f;->onPageScrolled(IFI)V

    .line 203
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 207
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;->setCurrentItem(I)V

    .line 208
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;->e:Landroid/support/v4/view/ViewPager$f;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;->e:Landroid/support/v4/view/ViewPager$f;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$f;->onPageSelected(I)V

    .line 211
    :cond_0
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 6
    .param p1, "item"    # I

    .prologue
    .line 266
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;->d:Landroid/support/v4/view/ViewPager;

    if-nez v4, :cond_0

    .line 267
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "ViewPager has not been bound."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 269
    :cond_0
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;->g:I

    .line 270
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;->d:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 272
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;->b:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;->getChildCount()I

    move-result v3

    .line 273
    .local v3, "tabCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 274
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;->b:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;

    invoke-virtual {v4, v1}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 275
    .local v0, "child":Landroid/view/View;
    if-ne v1, p1, :cond_2

    const/4 v2, 0x1

    .line 276
    .local v2, "isSelected":Z
    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 277
    if-eqz v2, :cond_1

    .line 278
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;->a(I)V

    .line 273
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 275
    .end local v2    # "isSelected":Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 281
    .end local v0    # "child":Landroid/view/View;
    :cond_3
    return-void
.end method

.method public setOnForumTabSelectedListener(Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment$OnForumTabSelectedListener;)V
    .locals 0
    .param p1, "onForumTabSelectedListener"    # Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment$OnForumTabSelectedListener;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;->j:Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment$OnForumTabSelectedListener;

    .line 290
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$f;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v4/view/ViewPager$f;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;->e:Landroid/support/v4/view/ViewPager$f;

    .line 286
    return-void
.end method

.method public setOnTabReselectedListener(Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator$a;)V
    .locals 0
    .param p1, "listener"    # Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator$a;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;->h:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator$a;

    .line 87
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 3
    .param p1, "view"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 215
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;->d:Landroid/support/v4/view/ViewPager;

    if-ne v1, p1, :cond_0

    .line 228
    :goto_0
    return-void

    .line 218
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;->d:Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_1

    .line 219
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;->d:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$f;)V

    .line 221
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/af;

    move-result-object v0

    .line 222
    .local v0, "adapter":Landroid/support/v4/view/af;
    if-nez v0, :cond_2

    .line 223
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "ViewPager does not have adapter instance."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 225
    :cond_2
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;->d:Landroid/support/v4/view/ViewPager;

    .line 226
    invoke-virtual {p1, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$f;)V

    .line 227
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;->c()V

    goto :goto_0
.end method

.method public setmCurrentIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 231
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;->l:I

    .line 232
    return-void
.end method
