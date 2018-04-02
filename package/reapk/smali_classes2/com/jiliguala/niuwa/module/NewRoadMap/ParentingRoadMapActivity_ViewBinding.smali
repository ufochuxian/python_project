.class public Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

.field private view2131296406:Landroid/view/View;

.field private view2131296485:Landroid/view/View;

.field private view2131296486:Landroid/view/View;

.field private view2131296961:Landroid/view/View;

.field private view2131296975:Landroid/view/View;

.field private view2131296992:Landroid/view/View;

.field private view2131297389:Landroid/view/View;

.field private view2131297664:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)V
    .locals 1
    .param p1, "target"    # Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;
    .annotation build Landroid/support/annotation/am;
    .end annotation

    .prologue
    .line 43
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity_ViewBinding;-><init>(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;Landroid/view/View;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;Landroid/view/View;)V
    .locals 9
    .param p1, "target"    # Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;
    .param p2, "source"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/am;
    .end annotation

    .prologue
    const v8, 0x7f09046d

    const v7, 0x7f0902cf

    const v6, 0x7f0902c1

    const v5, 0x7f0900e6

    const v4, 0x7f0900e5

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity_ViewBinding;->target:Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    .line 51
    const v1, 0x7f09043e

    const-string v2, "field \'mRecyclerVeiw\'"

    const-class v3, Landroid/support/v7/widget/RecyclerView;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRecyclerVeiw:Landroid/support/v7/widget/RecyclerView;

    .line 52
    const v1, 0x7f09062a

    const-string v2, "field \'mWordText\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mWordText:Landroid/widget/TextView;

    .line 53
    const v1, 0x7f090518

    const-string v2, "field \'mSpeakText\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mSpeakText:Landroid/widget/TextView;

    .line 54
    const v1, 0x7f0903ec

    const-string v2, "field \'mPhonicsTxt\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mPhonicsTxt:Landroid/widget/TextView;

    .line 55
    const v1, 0x7f090624

    const-string v2, "field \'mWordIcon\'"

    const-class v3, Landroid/widget/ImageView;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mWordIcon:Landroid/widget/ImageView;

    .line 56
    const v1, 0x7f090517

    const-string v2, "field \'mSpeakIcon\'"

    const-class v3, Landroid/widget/ImageView;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mSpeakIcon:Landroid/widget/ImageView;

    .line 57
    const v1, 0x7f0903e5

    const-string v2, "field \'mPhonicsIcon\'"

    const-class v3, Landroid/widget/ImageView;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mPhonicsIcon:Landroid/widget/ImageView;

    .line 58
    const v1, 0x7f090386

    const-string v2, "field \'mNewRoadMapRoot\'"

    const-class v3, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mNewRoadMapRoot:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    .line 59
    const v1, 0x7f0902ce

    const-string v2, "field \'mLessonTypeTxt\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mLessonTypeTxt:Landroid/widget/TextView;

    .line 60
    const v1, 0x7f090188

    const-string v2, "field \'mCurrentCourse\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mCurrentCourse:Landroid/widget/TextView;

    .line 61
    const v1, 0x7f0905b1

    const-string v2, "field \'mTotalCourse\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mTotalCourse:Landroid/widget/TextView;

    .line 62
    const v1, 0x7f090407

    const-string v2, "field \'mProgressBar\'"

    const-class v3, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mProgressBar:Lcom/liulishuo/magicprogresswidget/MagicProgressBar;

    .line 63
    const v1, 0x7f09047b

    const-string v2, "field \'mRoadMapBgBelow\'"

    const-class v3, Lcom/jiliguala/niuwa/common/widget/TranslateImageView;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/common/widget/TranslateImageView;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRoadMapBgBelow:Lcom/jiliguala/niuwa/common/widget/TranslateImageView;

    .line 64
    const v1, 0x7f090622

    const-string v2, "field \'mWordContainer\'"

    const-class v3, Landroid/widget/RelativeLayout;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mWordContainer:Landroid/widget/RelativeLayout;

    .line 65
    const v1, 0x7f090516

    const-string v2, "field \'mSpeakContainer\'"

    const-class v3, Landroid/widget/RelativeLayout;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mSpeakContainer:Landroid/widget/RelativeLayout;

    .line 66
    const v1, 0x7f0903e3

    const-string v2, "field \'mPhonicsContainer\'"

    const-class v3, Landroid/widget/RelativeLayout;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mPhonicsContainer:Landroid/widget/RelativeLayout;

    .line 67
    const-string v1, "field \'mBuyAll\' and method \'onBuyAll\'"

    invoke-static {p2, v5, v1}, Lbutterknife/internal/d;->a(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 68
    .local v0, "view":Landroid/view/View;
    const-string v1, "field \'mBuyAll\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {v0, v5, v1, v2}, Lbutterknife/internal/d;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mBuyAll:Landroid/widget/TextView;

    .line 69
    iput-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity_ViewBinding;->view2131296486:Landroid/view/View;

    .line 70
    new-instance v1, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity_ViewBinding$1;-><init>(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity_ViewBinding;Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    const-string v1, "field \'mLeftFindCurrent\' and method \'findLeftCurrent\'"

    invoke-static {p2, v6, v1}, Lbutterknife/internal/d;->a(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 77
    const-string v1, "field \'mLeftFindCurrent\'"

    const-class v2, Landroid/widget/RelativeLayout;

    invoke-static {v0, v6, v1, v2}, Lbutterknife/internal/d;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mLeftFindCurrent:Landroid/widget/RelativeLayout;

    .line 78
    iput-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity_ViewBinding;->view2131296961:Landroid/view/View;

    .line 79
    new-instance v1, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity_ViewBinding$2;-><init>(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity_ViewBinding;Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    const v1, 0x7f0902bd

    const-string v2, "field \'mLeftBabyIv\'"

    const-class v3, Landroid/widget/ImageView;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mLeftBabyIv:Landroid/widget/ImageView;

    .line 86
    const v1, 0x7f090468

    const-string v2, "field \'mRightBabyIv\'"

    const-class v3, Landroid/widget/ImageView;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRightBabyIv:Landroid/widget/ImageView;

    .line 87
    const-string v1, "field \'mRightFindCurrent\' and method \'findRightCurrent\'"

    invoke-static {p2, v8, v1}, Lbutterknife/internal/d;->a(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 88
    const-string v1, "field \'mRightFindCurrent\'"

    const-class v2, Landroid/widget/RelativeLayout;

    invoke-static {v0, v8, v1, v2}, Lbutterknife/internal/d;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRightFindCurrent:Landroid/widget/RelativeLayout;

    .line 89
    iput-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity_ViewBinding;->view2131297389:Landroid/view/View;

    .line 90
    new-instance v1, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity_ViewBinding$3;-><init>(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity_ViewBinding;Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    const-string v1, "field \'mBuyOneVOne\' and method \'onBuyOneVOne\'"

    invoke-static {p2, v4, v1}, Lbutterknife/internal/d;->a(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 97
    const-string v1, "field \'mBuyOneVOne\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {v0, v4, v1, v2}, Lbutterknife/internal/d;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mBuyOneVOne:Landroid/widget/TextView;

    .line 98
    iput-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity_ViewBinding;->view2131296485:Landroid/view/View;

    .line 99
    new-instance v1, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity_ViewBinding$4;

    invoke-direct {v1, p0, p1}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity_ViewBinding$4;-><init>(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity_ViewBinding;Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    const v1, 0x7f0905a0

    const-string v2, "field \'mTopContainer\'"

    const-class v3, Landroid/widget/RelativeLayout;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mTopContainer:Landroid/widget/RelativeLayout;

    .line 106
    const v1, 0x7f09052b

    const-string v2, "field \'mStatusContainer\'"

    const-class v3, Landroid/widget/LinearLayout;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mStatusContainer:Landroid/widget/LinearLayout;

    .line 107
    const v1, 0x7f090580

    const-string v2, "field \'mTip\' and method \'onClickTip\'"

    invoke-static {p2, v1, v2}, Lbutterknife/internal/d;->a(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 108
    const v1, 0x7f090580

    const-string v2, "field \'mTip\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/d;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mTip:Landroid/widget/TextView;

    .line 109
    iput-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity_ViewBinding;->view2131297664:Landroid/view/View;

    .line 110
    new-instance v1, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity_ViewBinding$5;

    invoke-direct {v1, p0, p1}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity_ViewBinding$5;-><init>(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity_ViewBinding;Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    const v1, 0x7f090584

    const-string v2, "field \'mTitle\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mTitle:Landroid/widget/TextView;

    .line 117
    const v1, 0x7f09013a

    const-string v2, "field \'mCiteBearIv\'"

    const-class v3, Landroid/widget/ImageView;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mCiteBearIv:Landroid/widget/ImageView;

    .line 118
    const v1, 0x7f0902ee

    const-string v2, "field \'mLoadingProgressContainer\'"

    const-class v3, Landroid/widget/RelativeLayout;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mLoadingProgressContainer:Landroid/widget/RelativeLayout;

    .line 119
    const v1, 0x7f09047c

    const-string v2, "field \'mRoadmapBgRv\'"

    const-class v3, Landroid/support/v7/widget/RecyclerView;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRoadmapBgRv:Landroid/support/v7/widget/RecyclerView;

    .line 120
    const v1, 0x7f0902e0

    const-string v2, "field \'mListenTv\' and method \'gotoAudioPlay\'"

    invoke-static {p2, v1, v2}, Lbutterknife/internal/d;->a(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 121
    iput-object v0, p1, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mListenTv:Landroid/view/View;

    .line 122
    iput-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity_ViewBinding;->view2131296992:Landroid/view/View;

    .line 123
    new-instance v1, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity_ViewBinding$6;

    invoke-direct {v1, p0, p1}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity_ViewBinding$6;-><init>(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity_ViewBinding;Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    const-string v1, "field \'mLevel\' and method \'onClickLvBtn\'"

    invoke-static {p2, v7, v1}, Lbutterknife/internal/d;->a(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 130
    const-string v1, "field \'mLevel\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {v0, v7, v1, v2}, Lbutterknife/internal/d;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mLevel:Landroid/widget/TextView;

    .line 131
    iput-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity_ViewBinding;->view2131296975:Landroid/view/View;

    .line 132
    new-instance v1, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity_ViewBinding$7;

    invoke-direct {v1, p0, p1}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity_ViewBinding$7;-><init>(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity_ViewBinding;Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    const v1, 0x7f090096

    const-string v2, "method \'onBackIconClick\'"

    invoke-static {p2, v1, v2}, Lbutterknife/internal/d;->a(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 139
    iput-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity_ViewBinding;->view2131296406:Landroid/view/View;

    .line 140
    new-instance v1, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity_ViewBinding$8;

    invoke-direct {v1, p0, p1}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity_ViewBinding$8;-><init>(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity_ViewBinding;Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 3
    .annotation build Landroid/support/annotation/i;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 151
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity_ViewBinding;->target:Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    .line 152
    .local v0, "target":Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Bindings already cleared."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 153
    :cond_0
    iput-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity_ViewBinding;->target:Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    .line 155
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRecyclerVeiw:Landroid/support/v7/widget/RecyclerView;

    .line 156
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mWordText:Landroid/widget/TextView;

    .line 157
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mSpeakText:Landroid/widget/TextView;

    .line 158
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mPhonicsTxt:Landroid/widget/TextView;

    .line 159
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mWordIcon:Landroid/widget/ImageView;

    .line 160
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mSpeakIcon:Landroid/widget/ImageView;

    .line 161
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mPhonicsIcon:Landroid/widget/ImageView;

    .line 162
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mNewRoadMapRoot:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    .line 163
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mLessonTypeTxt:Landroid/widget/TextView;

    .line 164
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mCurrentCourse:Landroid/widget/TextView;

    .line 165
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mTotalCourse:Landroid/widget/TextView;

    .line 166
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mProgressBar:Lcom/liulishuo/magicprogresswidget/MagicProgressBar;

    .line 167
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRoadMapBgBelow:Lcom/jiliguala/niuwa/common/widget/TranslateImageView;

    .line 168
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mWordContainer:Landroid/widget/RelativeLayout;

    .line 169
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mSpeakContainer:Landroid/widget/RelativeLayout;

    .line 170
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mPhonicsContainer:Landroid/widget/RelativeLayout;

    .line 171
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mBuyAll:Landroid/widget/TextView;

    .line 172
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mLeftFindCurrent:Landroid/widget/RelativeLayout;

    .line 173
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mLeftBabyIv:Landroid/widget/ImageView;

    .line 174
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRightBabyIv:Landroid/widget/ImageView;

    .line 175
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRightFindCurrent:Landroid/widget/RelativeLayout;

    .line 176
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mBuyOneVOne:Landroid/widget/TextView;

    .line 177
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mTopContainer:Landroid/widget/RelativeLayout;

    .line 178
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mStatusContainer:Landroid/widget/LinearLayout;

    .line 179
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mTip:Landroid/widget/TextView;

    .line 180
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mTitle:Landroid/widget/TextView;

    .line 181
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mCiteBearIv:Landroid/widget/ImageView;

    .line 182
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mLoadingProgressContainer:Landroid/widget/RelativeLayout;

    .line 183
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRoadmapBgRv:Landroid/support/v7/widget/RecyclerView;

    .line 184
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mListenTv:Landroid/view/View;

    .line 185
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mLevel:Landroid/widget/TextView;

    .line 187
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity_ViewBinding;->view2131296486:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    iput-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity_ViewBinding;->view2131296486:Landroid/view/View;

    .line 189
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity_ViewBinding;->view2131296961:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iput-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity_ViewBinding;->view2131296961:Landroid/view/View;

    .line 191
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity_ViewBinding;->view2131297389:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iput-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity_ViewBinding;->view2131297389:Landroid/view/View;

    .line 193
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity_ViewBinding;->view2131296485:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iput-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity_ViewBinding;->view2131296485:Landroid/view/View;

    .line 195
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity_ViewBinding;->view2131297664:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iput-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity_ViewBinding;->view2131297664:Landroid/view/View;

    .line 197
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity_ViewBinding;->view2131296992:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    iput-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity_ViewBinding;->view2131296992:Landroid/view/View;

    .line 199
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity_ViewBinding;->view2131296975:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iput-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity_ViewBinding;->view2131296975:Landroid/view/View;

    .line 201
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity_ViewBinding;->view2131296406:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iput-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity_ViewBinding;->view2131296406:Landroid/view/View;

    .line 203
    return-void
.end method
