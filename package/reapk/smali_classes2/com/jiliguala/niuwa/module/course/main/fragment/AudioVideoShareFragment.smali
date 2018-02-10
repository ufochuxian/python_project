.class public Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;
.super Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;
.source "SourceFile"


# static fields
.field public static final FRAGMENT_TAG:Ljava/lang/String;

.field public static final POP_WIDth:I


# instance fields
.field private shareText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/high16 v0, 0x43910000    # 290.0f

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v0

    sput v0, Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;->POP_WIDth:I

    .line 24
    const-class v0, Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;->FRAGMENT_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;-><init>()V

    .line 25
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f01b4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;->shareText:Ljava/lang/String;

    return-void
.end method

.method public static findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;
    .locals 2
    .param p0, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 28
    sget-object v1, Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;

    .line 29
    .local v0, "audioVideoShareFragment":Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;
    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;

    .end local v0    # "audioVideoShareFragment":Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;
    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;-><init>()V

    .line 32
    .restart local v0    # "audioVideoShareFragment":Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;
    :cond_0
    return-object v0
.end method

.method private getRoundImageHeight()I
    .locals 1

    .prologue
    .line 62
    sget v0, Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;->POP_WIDth:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x5

    return v0
.end method

.method private isOrientationLandScape()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 136
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 137
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getRequestedOrientation()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isOrientationPortrait()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 131
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-nez v2, :cond_0

    .line 132
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getRequestedOrientation()I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private relayoutShareBtn()V
    .locals 5

    .prologue
    const/high16 v4, 0x42340000    # 45.0f

    .line 98
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;->mPengYouQuanContainer:Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_0

    .line 99
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;->mPengYouQuanContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 100
    .local v0, "params1":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_0

    .line 101
    invoke-static {v4}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 104
    .end local v0    # "params1":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;->mWeiXinContainer:Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_1

    .line 105
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;->mWeiXinContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 106
    .local v1, "params2":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v1, :cond_1

    .line 107
    invoke-static {v4}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 110
    .end local v1    # "params2":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;->mWeiBoBtn:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    .line 111
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;->mWeiBoBtn:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 112
    .local v2, "params3":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_2

    .line 113
    invoke-static {v4}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 116
    .end local v2    # "params3":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    return-void
.end method

.method private relayoutText()V
    .locals 3

    .prologue
    const/high16 v2, 0x40a00000    # 5.0f

    .line 83
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;->mTitleTxt:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;->mTitleTxt:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 85
    .local v0, "params1":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v0, :cond_0

    .line 86
    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 89
    .end local v0    # "params1":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;->mSubTitle:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 90
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;->mSubTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 91
    .restart local v0    # "params1":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v0, :cond_1

    .line 92
    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 95
    .end local v0    # "params1":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    return-void
.end method


# virtual methods
.method protected getShareText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;->shareText:Ljava/lang/String;

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 37
    invoke-super {p0, p1, p2}, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 38
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;->mSocialGroup:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 39
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;->mSingleSocialPengyouquan:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 40
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;->mSingleSocialWeiBo:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 41
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/p;->a()Lcom/jiliguala/niuwa/common/util/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/p;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/jiliguala/niuwa/common/util/p;->a()Lcom/jiliguala/niuwa/common/util/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/p;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;->mSocialGroup:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 43
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;->mSingleSocialPengyouquan:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 44
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;->mSingleSocialWeiBo:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 46
    :cond_0
    return-void
.end method

.method protected setRoundImageViewHeihtWidth()V
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 50
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;->isOrientationLandScape()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;->mCourseCompleteIcon:Lcom/jiliguala/niuwa/common/widget/RatioImageView;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/RatioImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 52
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 53
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .end local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 55
    .restart local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;->getRoundImageHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 56
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;->mCourseCompleteIcon:Lcom/jiliguala/niuwa/common/widget/RatioImageView;

    invoke-virtual {v1, v0}, Lcom/jiliguala/niuwa/common/widget/RatioImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    .end local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    return-void
.end method

.method public setShareText(Ljava/lang/String;)V
    .locals 0
    .param p1, "shareText"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;->shareText:Ljava/lang/String;

    .line 126
    return-void
.end method

.method protected setWidthHeight()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 67
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;->isOrientationLandScape()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 68
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;->relayoutShareBtn()V

    .line 69
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;->relayoutText()V

    .line 70
    sget v1, Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;->POP_WIDth:I

    .line 71
    .local v1, "width":I
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;->mTitleTxt:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07007e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v6, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 72
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;->mSubTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070080

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v6, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 73
    const/4 v0, -0x2

    .line 74
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 75
    .local v2, "window":Landroid/view/Window;
    invoke-virtual {v2, v1, v0}, Landroid/view/Window;->setLayout(II)V

    .line 76
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/view/Window;->setGravity(I)V

    .line 80
    .end local v0    # "height":I
    .end local v1    # "width":I
    .end local v2    # "window":Landroid/view/Window;
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-super {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->setWidthHeight()V

    goto :goto_0
.end method
