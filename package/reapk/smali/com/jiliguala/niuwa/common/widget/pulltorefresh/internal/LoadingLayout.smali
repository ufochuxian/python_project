.class public abstract Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/common/widget/pulltorefresh/a;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# static fields
.field static final b:Ljava/lang/String; = "PullToRefresh-LoadingLayout"

.field static final c:Landroid/view/animation/Interpolator;


# instance fields
.field private final a:Landroid/widget/TextView;

.field protected final d:Landroid/widget/ImageView;

.field protected final e:Landroid/widget/ProgressBar;

.field protected final f:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

.field protected final g:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Orientation;

.field private final h:Landroid/widget/TextView;

.field private i:Landroid/widget/FrameLayout;

.field private j:Z

.field private k:Ljava/lang/CharSequence;

.field private l:Ljava/lang/CharSequence;

.field private m:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->c:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;
    .param p3, "scrollDirection"    # Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Orientation;
    .param p4, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 62
    iput-object p2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->f:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    .line 63
    iput-object p3, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->g:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Orientation;

    .line 65
    sget-object v5, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout$1;->a:[I

    invoke-virtual {p3}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Orientation;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 71
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0b016a

    invoke-virtual {v5, v6, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 75
    :goto_0
    const v5, 0x7f09020a

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    iput-object v5, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->i:Landroid/widget/FrameLayout;

    .line 76
    iget-object v5, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->i:Landroid/widget/FrameLayout;

    const v6, 0x7f090416

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->a:Landroid/widget/TextView;

    .line 77
    iget-object v5, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->i:Landroid/widget/FrameLayout;

    const v6, 0x7f090414

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    iput-object v5, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->e:Landroid/widget/ProgressBar;

    .line 78
    iget-object v5, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->i:Landroid/widget/FrameLayout;

    const v6, 0x7f090415

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->h:Landroid/widget/TextView;

    .line 79
    iget-object v5, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->i:Landroid/widget/FrameLayout;

    const v6, 0x7f090413

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->d:Landroid/widget/ImageView;

    .line 81
    iget-object v5, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 83
    .local v3, "lp":Landroid/widget/FrameLayout$LayoutParams;
    sget-object v5, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout$1;->b:[I

    invoke-virtual {p2}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_1

    .line 95
    sget-object v5, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Orientation;->VERTICAL:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Orientation;

    if-ne p3, v5, :cond_9

    const/16 v5, 0x50

    :goto_1
    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 98
    const v5, 0x7f0f017b

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->k:Ljava/lang/CharSequence;

    .line 99
    const v5, 0x7f0f017c

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->l:Ljava/lang/CharSequence;

    .line 100
    const v5, 0x7f0f017d

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->m:Ljava/lang/CharSequence;

    .line 104
    :goto_2
    const/4 v5, 0x7

    invoke-virtual {p4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 105
    const/4 v5, 0x7

    invoke-virtual {p4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 106
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 107
    invoke-static {p0, v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/c;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 111
    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    :cond_0
    const/16 v5, 0x9

    invoke-virtual {p4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 112
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 113
    .local v4, "styleID":Landroid/util/TypedValue;
    const/16 v5, 0x9

    invoke-virtual {p4, v5, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 114
    iget v5, v4, Landroid/util/TypedValue;->data:I

    invoke-direct {p0, v5}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->setTextAppearance(I)V

    .line 116
    .end local v4    # "styleID":Landroid/util/TypedValue;
    :cond_1
    const/16 v5, 0x12

    invoke-virtual {p4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 117
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 118
    .restart local v4    # "styleID":Landroid/util/TypedValue;
    const/16 v5, 0x12

    invoke-virtual {p4, v5, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 119
    iget v5, v4, Landroid/util/TypedValue;->data:I

    invoke-direct {p0, v5}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->setSubTextAppearance(I)V

    .line 123
    .end local v4    # "styleID":Landroid/util/TypedValue;
    :cond_2
    const/16 v5, 0xa

    invoke-virtual {p4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 124
    const/16 v5, 0xa

    invoke-virtual {p4, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 125
    .local v1, "colors":Landroid/content/res/ColorStateList;
    if-eqz v1, :cond_3

    .line 126
    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 129
    .end local v1    # "colors":Landroid/content/res/ColorStateList;
    :cond_3
    const/16 v5, 0x8

    invoke-virtual {p4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 130
    const/16 v5, 0x8

    invoke-virtual {p4, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 131
    .restart local v1    # "colors":Landroid/content/res/ColorStateList;
    if-eqz v1, :cond_4

    .line 132
    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->setSubTextColor(Landroid/content/res/ColorStateList;)V

    .line 137
    .end local v1    # "colors":Landroid/content/res/ColorStateList;
    :cond_4
    const/4 v2, 0x0

    .line 138
    .local v2, "imageDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v5, 0x2

    invoke-virtual {p4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 139
    const/4 v5, 0x2

    invoke-virtual {p4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 144
    :cond_5
    sget-object v5, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout$1;->b:[I

    invoke-virtual {p2}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_2

    .line 147
    const/4 v5, 0x5

    invoke-virtual {p4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 148
    const/4 v5, 0x5

    invoke-virtual {p4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 166
    :cond_6
    :goto_3
    if-nez v2, :cond_7

    .line 167
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->getDefaultDrawableResId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 171
    :cond_7
    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 173
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->i()V

    .line 174
    return-void

    .line 67
    .end local v2    # "imageDrawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :pswitch_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0b0169

    invoke-virtual {v5, v6, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto/16 :goto_0

    .line 85
    .restart local v3    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :pswitch_1
    sget-object v5, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Orientation;->VERTICAL:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Orientation;

    if-ne p3, v5, :cond_8

    const/16 v5, 0x30

    :goto_4
    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 88
    const v5, 0x7f0f0178

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->k:Ljava/lang/CharSequence;

    .line 89
    const v5, 0x7f0f0179

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->l:Ljava/lang/CharSequence;

    .line 90
    const v5, 0x7f0f017a

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->m:Ljava/lang/CharSequence;

    goto/16 :goto_2

    .line 85
    :cond_8
    const/4 v5, 0x3

    goto :goto_4

    .line 95
    :cond_9
    const/4 v5, 0x5

    goto/16 :goto_1

    .line 149
    .restart local v2    # "imageDrawable":Landroid/graphics/drawable/Drawable;
    :cond_a
    const/4 v5, 0x6

    invoke-virtual {p4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 150
    const-string v5, "ptrDrawableTop"

    const-string v6, "ptrDrawableStart"

    invoke-static {v5, v6}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const/4 v5, 0x6

    invoke-virtual {p4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_3

    .line 156
    :pswitch_2
    const/4 v5, 0x4

    invoke-virtual {p4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 157
    const/4 v5, 0x4

    invoke-virtual {p4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_3

    .line 158
    :cond_b
    const/4 v5, 0x3

    invoke-virtual {p4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 159
    const-string v5, "ptrDrawableBottom"

    const-string v6, "ptrDrawableEnd"

    invoke-static {v5, v6}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const/4 v5, 0x3

    invoke-virtual {p4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_3

    .line 65
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 83
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    .line 144
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method private setSubHeaderText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v1, 0x8

    .line 341
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 342
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 343
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->h:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setSubTextAppearance(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 357
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 360
    :cond_0
    return-void
.end method

.method private setSubTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 363
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 366
    :cond_0
    return-void
.end method

.method private setTextAppearance(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 369
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 373
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 375
    :cond_1
    return-void
.end method

.method private setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 378
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 382
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 384
    :cond_1
    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected abstract a(F)V
.end method

.method protected abstract a(Landroid/graphics/drawable/Drawable;)V
.end method

.method protected abstract b()V
.end method

.method public final b(F)V
    .locals 1
    .param p1, "scaleOfLayout"    # F

    .prologue
    .line 214
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->j:Z

    if-nez v0, :cond_0

    .line 215
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->a(F)V

    .line 217
    :cond_0
    return-void
.end method

.method protected abstract c()V
.end method

.method protected abstract d()V
.end method

.method public final e()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 199
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 206
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 208
    :cond_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 209
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 211
    :cond_3
    return-void
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->k:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->a()V

    .line 226
    return-void
.end method

.method public final g()V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->l:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    :cond_0
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->j:Z

    if-eqz v0, :cond_2

    .line 234
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 240
    :goto_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->h:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 243
    :cond_1
    return-void

    .line 237
    :cond_2
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->b()V

    goto :goto_0
.end method

.method public final getContentSize()I
    .locals 2

    .prologue
    .line 189
    sget-object v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout$1;->a:[I

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->g:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Orientation;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Orientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 194
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    :goto_0
    return v0

    .line 191
    :pswitch_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    goto :goto_0

    .line 189
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected abstract getDefaultDrawableResId()I
.end method

.method public final h()V
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->m:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->c()V

    .line 252
    return-void
.end method

.method public final i()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 255
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->k:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 260
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->j:Z

    if-eqz v0, :cond_2

    .line 261
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 267
    :goto_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 269
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->h:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 274
    :cond_1
    :goto_1
    return-void

    .line 264
    :cond_2
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->d()V

    goto :goto_0

    .line 271
    :cond_3
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public final j()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 308
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v2, v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-ne v2, v0, :cond_1

    .line 312
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 314
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-ne v2, v0, :cond_2

    .line 315
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 317
    :cond_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v2, v0, :cond_3

    .line 318
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 320
    :cond_3
    return-void
.end method

.method public final setHeight(I)V
    .locals 1
    .param p1, "height"    # I

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 178
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 179
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->requestLayout()V

    .line 180
    return-void
.end method

.method public setLastUpdatedLabel(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 278
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->setSubHeaderText(Ljava/lang/CharSequence;)V

    .line 279
    return-void
.end method

.method public final setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "imageDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 283
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 284
    instance-of v0, p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->j:Z

    .line 287
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->a(Landroid/graphics/drawable/Drawable;)V

    .line 288
    return-void
.end method

.method public setPullLabel(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "pullLabel"    # Ljava/lang/CharSequence;

    .prologue
    .line 291
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->k:Ljava/lang/CharSequence;

    .line 292
    return-void
.end method

.method public setRefreshingLabel(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "refreshingLabel"    # Ljava/lang/CharSequence;

    .prologue
    .line 295
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->l:Ljava/lang/CharSequence;

    .line 296
    return-void
.end method

.method public setReleaseLabel(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "releaseLabel"    # Ljava/lang/CharSequence;

    .prologue
    .line 299
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->m:Ljava/lang/CharSequence;

    .line 300
    return-void
.end method

.method public setTextTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "tf"    # Landroid/graphics/Typeface;

    .prologue
    .line 304
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 305
    return-void
.end method

.method public final setWidth(I)V
    .locals 1
    .param p1, "width"    # I

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 184
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 185
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->requestLayout()V

    .line 186
    return-void
.end method
