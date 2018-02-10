.class public Lcom/jiliguala/niuwa/common/widget/customview/SuperView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/common/widget/customview/SuperView$State;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Lcom/jiliguala/niuwa/common/widget/customview/a;

.field private e:Lcom/jiliguala/niuwa/common/widget/customview/b;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->a(Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    invoke-direct {p0, p2}, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->a(Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    invoke-direct {p0, p2}, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->a(Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 62
    invoke-direct {p0, p2}, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->a(Landroid/util/AttributeSet;)V

    .line 63
    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 9
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 67
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 68
    .local v2, "inflater":Landroid/view/LayoutInflater;
    if-eqz p1, :cond_3

    .line 69
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    sget-object v6, Lcom/jiliguala/niuwa/R$styleable;->SuperView:[I

    invoke-virtual {v5, p1, v6, v7, v7}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 70
    .local v4, "typedArray":Landroid/content/res/TypedArray;
    const/4 v5, 0x3

    invoke-virtual {v4, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 71
    .local v3, "loadingViewResid":I
    if-lez v3, :cond_0

    .line 72
    invoke-virtual {v2, v3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->a:Landroid/view/View;

    .line 74
    :cond_0
    const/4 v5, 0x1

    invoke-virtual {v4, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 75
    .local v0, "emptyViewResid":I
    if-lez v0, :cond_1

    .line 76
    invoke-virtual {v2, v0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->b:Landroid/view/View;

    .line 79
    :cond_1
    const/4 v5, 0x2

    invoke-virtual {v4, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 80
    .local v1, "errorViewResid":I
    if-lez v1, :cond_2

    .line 81
    invoke-virtual {v2, v1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->c:Landroid/view/View;

    .line 83
    :cond_2
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 86
    .end local v0    # "emptyViewResid":I
    .end local v1    # "errorViewResid":I
    .end local v3    # "loadingViewResid":I
    .end local v4    # "typedArray":Landroid/content/res/TypedArray;
    :cond_3
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->g()V

    .line 87
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->f()V

    .line 88
    return-void
.end method

.method private f()V
    .locals 3

    .prologue
    .line 91
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->b:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->b:Landroid/view/View;

    const v2, 0x7f0901db

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 93
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->c:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 96
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->c:Landroid/view/View;

    const v2, 0x7f09043b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 97
    .restart local v0    # "view":Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->c:Landroid/view/View;

    const v2, 0x7f0901ea

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->g:Landroid/widget/RelativeLayout;

    .line 99
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->c:Landroid/view/View;

    const v2, 0x7f0901e9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->f:Landroid/widget/ImageView;

    .line 100
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    .end local v0    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 105
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 106
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 107
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->a:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->a:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->addView(Landroid/view/View;)V

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->b:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 112
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->b:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->addView(Landroid/view/View;)V

    .line 115
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->c:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 116
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->c:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->c:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->addView(Landroid/view/View;)V

    .line 119
    :cond_2
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 122
    sget-object v0, Lcom/jiliguala/niuwa/common/widget/customview/SuperView$State;->LOADING:Lcom/jiliguala/niuwa/common/widget/customview/SuperView$State;

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->a(Lcom/jiliguala/niuwa/common/widget/customview/SuperView$State;)V

    .line 123
    return-void
.end method

.method public a(Lcom/jiliguala/niuwa/common/widget/customview/SuperView$State;)V
    .locals 7
    .param p1, "state"    # Lcom/jiliguala/niuwa/common/widget/customview/SuperView$State;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 135
    const/4 v2, 0x0

    .line 136
    .local v2, "showLoadingView":Z
    const/4 v0, 0x0

    .line 137
    .local v0, "showEmptyView":Z
    const/4 v1, 0x0

    .line 138
    .local v1, "showErrorView":Z
    sget-object v3, Lcom/jiliguala/niuwa/common/widget/customview/SuperView$1;->a:[I

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/common/widget/customview/SuperView$State;->ordinal()I

    move-result v6

    aget v3, v3, v6

    packed-switch v3, :pswitch_data_0

    .line 150
    :goto_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->a:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 151
    iget-object v6, p0, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->a:Landroid/view/View;

    if-eqz v2, :cond_3

    move v3, v4

    :goto_1
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 154
    :cond_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->b:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 155
    iget-object v6, p0, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->b:Landroid/view/View;

    if-eqz v0, :cond_4

    move v3, v4

    :goto_2
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 158
    :cond_1
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->c:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 159
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->c:Landroid/view/View;

    if-eqz v1, :cond_5

    :goto_3
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 161
    :cond_2
    return-void

    .line 140
    :pswitch_0
    const/4 v2, 0x1

    .line 141
    goto :goto_0

    .line 143
    :pswitch_1
    const/4 v0, 0x1

    .line 144
    goto :goto_0

    .line 146
    :pswitch_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    move v3, v5

    .line 151
    goto :goto_1

    :cond_4
    move v3, v5

    .line 155
    goto :goto_2

    :cond_5
    move v4, v5

    .line 159
    goto :goto_3

    .line 138
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public b()V
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lcom/jiliguala/niuwa/common/widget/customview/SuperView$State;->EMPTY:Lcom/jiliguala/niuwa/common/widget/customview/SuperView$State;

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->a(Lcom/jiliguala/niuwa/common/widget/customview/SuperView$State;)V

    .line 127
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lcom/jiliguala/niuwa/common/widget/customview/SuperView$State;->ERROR:Lcom/jiliguala/niuwa/common/widget/customview/SuperView$State;

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->a(Lcom/jiliguala/niuwa/common/widget/customview/SuperView$State;)V

    .line 131
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 188
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->b:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->c:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 195
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 197
    :cond_2
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 212
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->g:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->f:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 218
    :cond_1
    return-void
.end method

.method public getLoadingView()Landroid/view/View;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->a:Landroid/view/View;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 165
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 167
    :sswitch_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->d:Lcom/jiliguala/niuwa/common/widget/customview/a;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->d:Lcom/jiliguala/niuwa/common/widget/customview/a;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/common/widget/customview/a;->a()V

    goto :goto_0

    .line 172
    :sswitch_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->e:Lcom/jiliguala/niuwa/common/widget/customview/b;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->e:Lcom/jiliguala/niuwa/common/widget/customview/b;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/common/widget/customview/b;->onRefreshButtonClick()V

    goto :goto_0

    .line 177
    :sswitch_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->e:Lcom/jiliguala/niuwa/common/widget/customview/b;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->e:Lcom/jiliguala/niuwa/common/widget/customview/b;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/common/widget/customview/b;->onErrorPageBackBtnClick()V

    goto :goto_0

    .line 165
    :sswitch_data_0
    .sparse-switch
        0x7f0901db -> :sswitch_0
        0x7f0901e9 -> :sswitch_2
        0x7f09043b -> :sswitch_1
    .end sparse-switch
.end method

.method public setOnEmptyViewClickListener(Lcom/jiliguala/niuwa/common/widget/customview/a;)V
    .locals 0
    .param p1, "listener"    # Lcom/jiliguala/niuwa/common/widget/customview/a;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->d:Lcom/jiliguala/niuwa/common/widget/customview/a;

    .line 185
    return-void
.end method

.method public setOnErrorClickListener(Lcom/jiliguala/niuwa/common/widget/customview/b;)V
    .locals 0
    .param p1, "mOnErrorClickListener"    # Lcom/jiliguala/niuwa/common/widget/customview/b;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->e:Lcom/jiliguala/niuwa/common/widget/customview/b;

    .line 201
    return-void
.end method
