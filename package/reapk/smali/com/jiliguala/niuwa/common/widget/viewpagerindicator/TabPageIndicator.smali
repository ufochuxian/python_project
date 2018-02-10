.class public Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator$a;
    }
.end annotation


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field private static final d:Ljava/lang/String;


# instance fields
.field private final e:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;

.field private f:Ljava/lang/Runnable;

.field private g:Landroid/support/v4/view/ViewPager$f;

.field private h:I

.field private i:I

.field private j:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator$a;

.field private k:J

.field private l:J

.field private m:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/a;

.field private n:Landroid/support/v4/view/ViewPager$f;

.field private final o:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const-wide/16 v0, -0x1

    .line 88
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    iput-wide v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;->k:J

    .line 58
    iput-wide v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;->l:J

    .line 61
    new-instance v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator$1;-><init>(Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;->o:Landroid/view/View$OnClickListener;

    .line 89
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;->setHorizontalScrollBarEnabled(Z)V

    .line 91
    new-instance v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;

    const v1, 0x7f04023c

    invoke-direct {v0, p1, v1}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;->e:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;

    .line 93
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;->e:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    return-void
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;)I
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;

    .prologue
    .line 41
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;->i:I

    return v0
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;J)J
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;
    .param p1, "x1"    # J

    .prologue
    .line 41
    iput-wide p1, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;->l:J

    return-wide p1
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;->f:Ljava/lang/Runnable;

    return-object p1
.end method

.method private a(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 151
    new-instance v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator$2;

    invoke-direct {v0, p0, p1}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator$2;-><init>(Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;I)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;->f:Ljava/lang/Runnable;

    .line 161
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;->f:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;->post(Ljava/lang/Runnable;)Z

    .line 162
    return-void
.end method

.method private a(II)V
    .locals 8
    .param p1, "index"    # I
    .param p2, "iconResId"    # I

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0b006d

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 183
    .local v2, "view":Landroid/view/View;
    const v4, 0x7f090273

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 184
    .local v0, "icon":Landroid/widget/ImageView;
    const v4, 0x7f090438

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 185
    .local v1, "red_dot":Landroid/widget/ImageView;
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 186
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 187
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 188
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;->o:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    const/high16 v3, 0x3f800000    # 1.0f

    .line 195
    .local v3, "weight":F
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;->e:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, 0x0

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v2, v5}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;->e:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080086

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;->setBackgroundColor(I)V

    .line 197
    return-void
.end method

.method static synthetic b(Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;)Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator$a;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;->j:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator$a;

    return-object v0
.end method

.method static synthetic c(Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;)J
    .locals 2
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;->l:J

    return-wide v0
.end method

.method static synthetic d(Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;)J
    .locals 2
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;->k:J

    return-wide v0
.end method

.method static synthetic e(Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;)Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;->e:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 200
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;->m:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/a;

    if-eqz v3, :cond_3

    .line 201
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;->e:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;->removeAllViews()V

    .line 202
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;->m:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/a;

    invoke-interface {v3}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/a;->getCount()I

    move-result v0

    .line 203
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 204
    const/4 v2, 0x0

    .line 205
    .local v2, "iconResId":I
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;->m:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/a;

    if-eqz v3, :cond_0

    .line 206
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;->m:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/a;

    invoke-interface {v3, v1}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/a;->getIconResId(I)I

    move-result v2

    .line 208
    :cond_0
    invoke-direct {p0, v1, v2}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;->a(II)V

    .line 203
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 210
    .end local v2    # "iconResId":I
    :cond_1
    iget v3, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;->i:I

    if-le v3, v0, :cond_2

    .line 211
    add-int/lit8 v3, v0, -0x1

    iput v3, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;->i:I

    .line 213
    :cond_2
    iget v3, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;->i:I

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;->setCurrentItem(I)V

    .line 214
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;->requestLayout()V

    .line 216
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method public a(ZI)V
    .locals 6
    .param p1, "show"    # Z
    .param p2, "index"    # I

    .prologue
    .line 101
    iget-object v5, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;->e:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;

    if-eqz v5, :cond_2

    .line 102
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;->e:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;->getChildCount()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 103
    iget-object v5, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;->e:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;

    invoke-virtual {v5, v0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 104
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 105
    .local v3, "tag":Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 107
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 108
    .local v1, "idx":I
    if-ne v1, p2, :cond_0

    .line 109
    const v5, 0x7f090438

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 110
    .local v2, "redDot":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 111
    if-eqz p1, :cond_1

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .end local v1    # "idx":I
    .end local v2    # "redDot":Landroid/view/View;
    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 111
    .restart local v1    # "idx":I
    .restart local v2    # "redDot":Landroid/view/View;
    :cond_1
    const/16 v5, 0x8

    goto :goto_1

    .line 121
    .end local v0    # "i":I
    .end local v1    # "idx":I
    .end local v2    # "redDot":Landroid/view/View;
    .end local v3    # "tag":Ljava/lang/Object;
    .end local v4    # "view":Landroid/view/View;
    :cond_2
    return-void

    .line 114
    .restart local v0    # "i":I
    .restart local v3    # "tag":Ljava/lang/Object;
    .restart local v4    # "view":Landroid/view/View;
    :catch_0
    move-exception v5

    goto :goto_2
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 166
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 167
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;->f:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;->f:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;->post(Ljava/lang/Runnable;)Z

    .line 171
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 175
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 179
    return-void
.end method

.method public onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/4 v5, 0x1

    .line 125
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 126
    .local v4, "widthMode":I
    if-ne v4, v7, :cond_2

    move v1, v5

    .line 127
    .local v1, "lockedExpanded":Z
    :goto_0
    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;->setFillViewport(Z)V

    .line 129
    iget-object v6, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;->e:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;->getChildCount()I

    move-result v0

    .line 130
    .local v0, "childCount":I
    if-le v0, v5, :cond_4

    if-eq v4, v7, :cond_0

    const/high16 v5, -0x80000000

    if-ne v4, v5, :cond_4

    .line 131
    :cond_0
    const/4 v5, 0x2

    if-le v0, v5, :cond_3

    .line 132
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3ecccccd    # 0.4f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;->h:I

    .line 140
    :goto_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;->getMeasuredWidth()I

    move-result v3

    .line 141
    .local v3, "oldWidth":I
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 142
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;->getMeasuredWidth()I

    move-result v2

    .line 144
    .local v2, "newWidth":I
    if-eqz v1, :cond_1

    if-eq v3, v2, :cond_1

    .line 146
    iget v5, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;->i:I

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;->setCurrentItem(I)V

    .line 148
    :cond_1
    return-void

    .line 126
    .end local v0    # "childCount":I
    .end local v1    # "lockedExpanded":Z
    .end local v2    # "newWidth":I
    .end local v3    # "oldWidth":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 134
    .restart local v0    # "childCount":I
    .restart local v1    # "lockedExpanded":Z
    :cond_3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;->h:I

    goto :goto_1

    .line 137
    :cond_4
    const/4 v5, -0x1

    iput v5, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;->h:I

    goto :goto_1
.end method

.method public setAdapter(Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/a;)V
    .locals 1
    .param p1, "adapter"    # Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/a;

    .prologue
    .line 219
    instance-of v0, p1, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/a;

    if-eqz v0, :cond_0

    .line 220
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;->m:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/a;

    .line 221
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;->a()V

    .line 223
    :cond_0
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 4
    .param p1, "itemIndex"    # I

    .prologue
    .line 230
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;->e:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;->getChildCount()I

    move-result v1

    .line 231
    .local v1, "tabCount":I
    if-lez v1, :cond_0

    .line 233
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;->e:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;

    iget v3, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;->i:I

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 234
    .local v0, "child":Landroid/view/View;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 235
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;->i:I

    .line 237
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;->e:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;

    iget v3, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;->i:I

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 238
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 239
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;->n:Landroid/support/v4/view/ViewPager$f;

    if-eqz v2, :cond_0

    .line 240
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;->n:Landroid/support/v4/view/ViewPager$f;

    iget v3, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;->i:I

    invoke-interface {v2, v3}, Landroid/support/v4/view/ViewPager$f;->onPageSelected(I)V

    .line 254
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public setInitialPosition(I)V
    .locals 0
    .param p1, "initialPosition"    # I

    .prologue
    .line 226
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;->setCurrentItem(I)V

    .line 227
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$f;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v4/view/ViewPager$f;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;->n:Landroid/support/v4/view/ViewPager$f;

    .line 258
    return-void
.end method

.method public setOnTabReselectedListener(Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator$a;)V
    .locals 0
    .param p1, "listener"    # Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator$a;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;->j:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator$a;

    .line 98
    return-void
.end method
