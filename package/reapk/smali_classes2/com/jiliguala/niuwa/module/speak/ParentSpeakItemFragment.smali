.class public Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# instance fields
.field private mBgColorID:I

.field private mCWord:Ljava/lang/String;

.field private mCWordTxt:Landroid/widget/TextView;

.field private mColor:Ljava/lang/String;

.field private mContainer:Landroid/widget/RelativeLayout;

.field private mFlashCardIv:Landroid/widget/ImageView;

.field private mMask:Landroid/view/View;

.field private mPicUrl:Ljava/lang/String;

.field private mRootView:Landroid/view/View;

.field private mWord:Ljava/lang/String;

.field private mWordTv:Landroid/widget/TextView;

.field private sentenceId:Ljava/lang/String;

.field private wordContainer:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static findOrCreateFragment(Landroid/support/v4/app/ag;II)Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;
    .locals 2
    .param p0, "fm"    # Landroid/support/v4/app/ag;
    .param p1, "viewId"    # I
    .param p2, "position"    # I

    .prologue
    .line 46
    invoke-static {p1, p2}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;->makeFragmentName(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;

    .line 47
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;
    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;

    .end local v0    # "fragment":Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;
    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;-><init>()V

    .line 50
    .restart local v0    # "fragment":Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;
    :cond_0
    return-object v0
.end method

.method private loadFlashCardImage()V
    .locals 0

    .prologue
    .line 113
    return-void
.end method

.method private static makeFragmentName(II)Ljava/lang/String;
    .locals 2
    .param p0, "viewId"    # I
    .param p1, "position"    # I

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android:switcher:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public disablePlayFlashCard()V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method public enablePlayFlashCard()V
    .locals 0

    .prologue
    .line 122
    return-void
.end method

.method public getBgColor()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;->mBgColorID:I

    return v0
.end method

.method public getColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;->mColor:Ljava/lang/String;

    return-object v0
.end method

.method public getPicUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;->mPicUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSentenceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;->sentenceId:Ljava/lang/String;

    return-object v0
.end method

.method public hideTitleContainer()V
    .locals 0

    .prologue
    .line 150
    return-void
.end method

.method public hideWordContainer()V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;->wordContainer:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 158
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 79
    const v3, 0x7f0b00c0

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;->mRootView:Landroid/view/View;

    .line 80
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;->mRootView:Landroid/view/View;

    const v4, 0x7f090316

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;->mMask:Landroid/view/View;

    .line 81
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;->mRootView:Landroid/view/View;

    const v4, 0x7f090158

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;->mContainer:Landroid/widget/RelativeLayout;

    .line 82
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;->mColor:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 83
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;->mContainer:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;->mColor:Ljava/lang/String;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 85
    :cond_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;->mRootView:Landroid/view/View;

    const v4, 0x7f090115

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 86
    .local v1, "centerContainer":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 87
    .local v2, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->k()I

    move-result v3

    int-to-double v4, v3

    const-wide v6, 0x3fa999999999999aL    # 0.05

    mul-double/2addr v4, v6

    double-to-int v0, v4

    .line 88
    .local v0, "bottom":I
    invoke-virtual {v2, v8, v8, v8, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 89
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;->mRootView:Landroid/view/View;

    const v4, 0x7f09020e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;->mFlashCardIv:Landroid/widget/ImageView;

    .line 90
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;->mPicUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 91
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;->mFlashCardIv:Landroid/widget/ImageView;

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 96
    :goto_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;->mRootView:Landroid/view/View;

    const v4, 0x7f090620

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;->mWordTv:Landroid/widget/TextView;

    .line 97
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;->mWordTv:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;->mWord:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;->mRootView:Landroid/view/View;

    const v4, 0x7f090190

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;->mCWordTxt:Landroid/widget/TextView;

    .line 99
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;->mCWord:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 100
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;->mCWordTxt:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;->mCWordTxt:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;->mCWord:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    :goto_1
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;->mRootView:Landroid/view/View;

    const v4, 0x7f090622

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;->wordContainer:Landroid/view/View;

    .line 106
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;->wordContainer:Landroid/view/View;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;->mColor:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const v3, 0x7f08041e

    :goto_2
    invoke-virtual {v4, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 108
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;->mRootView:Landroid/view/View;

    return-object v3

    .line 93
    :cond_1
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;->mFlashCardIv:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 94
    invoke-static {p0}, Lcom/bumptech/glide/l;->a(Landroid/support/v4/app/Fragment;)Lcom/bumptech/glide/o;

    move-result-object v3

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;->mPicUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/o;->a(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bumptech/glide/g;->g()Lcom/bumptech/glide/f;

    move-result-object v3

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;->mFlashCardIv:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/f;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/m;

    goto :goto_0

    .line 103
    :cond_2
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;->mCWordTxt:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 106
    :cond_3
    const v3, 0x7f0803d8

    goto :goto_2
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 117
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 118
    return-void
.end method

.method public setBgColor(I)V
    .locals 0
    .param p1, "bgColor"    # I

    .prologue
    .line 133
    iput p1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;->mBgColorID:I

    .line 134
    return-void
.end method

.method public setCWord(Ljava/lang/String;)V
    .locals 0
    .param p1, "mCWord"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;->mCWord:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "mColor"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;->mColor:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setFlashCard(Z)V
    .locals 0
    .param p1, "flashCard"    # Z

    .prologue
    .line 147
    return-void
.end method

.method public setNeedBottomBarPlaceHolder(Z)V
    .locals 0
    .param p1, "needBottomBarPlaceHolder"    # Z

    .prologue
    .line 138
    return-void
.end method

.method public setPicUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "mPicUrl"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;->mPicUrl:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setSententceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "sentenceId"    # Ljava/lang/String;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;->sentenceId:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public setWord(Ljava/lang/String;)V
    .locals 0
    .param p1, "mWord"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;->mWord:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public showOrHideMask(I)V
    .locals 2
    .param p1, "show"    # I

    .prologue
    .line 141
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;->mMask:Landroid/view/View;

    if-nez v0, :cond_0

    .line 143
    :goto_0
    return-void

    .line 142
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;->mMask:Landroid/view/View;

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method

.method public showTitleContainer()V
    .locals 0

    .prologue
    .line 154
    return-void
.end method

.method public showWordContainer()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;->wordContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 163
    return-void
.end method
