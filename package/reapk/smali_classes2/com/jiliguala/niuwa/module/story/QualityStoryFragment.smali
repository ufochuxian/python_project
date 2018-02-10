.class public Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;
.super Lcom/jiliguala/niuwa/common/base/c;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog$CallBack;
.implements Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog$onPayClickListenr;
.implements Lcom/jiliguala/niuwa/module/story/QualityStoryFragmentView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jiliguala/niuwa/common/base/c",
        "<",
        "Lcom/jiliguala/niuwa/module/story/QualityStoryFragmentPresenter;",
        "Lcom/jiliguala/niuwa/module/story/QualityStoryFragmentView;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog$CallBack;",
        "Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog$onPayClickListenr;",
        "Lcom/jiliguala/niuwa/module/story/QualityStoryFragmentView;"
    }
.end annotation


# static fields
.field public static final FRAGMENT_TAG:Ljava/lang/String;

.field public static final NAME:Ljava/lang/String; = "QualityStoryFragment"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private hasActionDone:Z

.field private lastRemarkText:Ljava/lang/String;

.field private mAddAddressTv:Landroid/widget/TextView;

.field private mAddress:Landroid/widget/TextView;

.field private mCount:Landroid/widget/TextView;

.field private mData:Lcom/jiliguala/niuwa/logic/network/json/StoryOrderTemplete$Data;

.field private mFreightMonet:Landroid/widget/TextView;

.field private mIcon:Landroid/widget/ImageView;

.field private mItemID:Ljava/lang/String;

.field private mMoneyTxt:Landroid/widget/TextView;

.field private mName:Landroid/widget/TextView;

.field private mPayDialog:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;

.field private mPhoneNum:Landroid/widget/TextView;

.field private mPrice:Landroid/widget/TextView;

.field private mRemarkEt:Landroid/widget/EditText;

.field private mRightArrow:Landroid/widget/ImageView;

.field private mRootView:Landroid/view/View;

.field private mTextContainer:Landroid/widget/RelativeLayout;

.field private mTitle:Landroid/widget/TextView;

.field private mTopTextContainer:Landroid/widget/RelativeLayout;

.field private mTotalMoney:Landroid/widget/TextView;

.field private mWeiXinContainer:Landroid/widget/RelativeLayout;

.field private mZhiFuBaoContainer:Landroid/widget/RelativeLayout;

.field private payDialog:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->TAG:Ljava/lang/String;

    .line 47
    const-class v0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->FRAGMENT_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/c;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mRemarkEt:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->lastRemarkText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->lastRemarkText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->hasActionDone:Z

    return p1
.end method

.method public static findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;
    .locals 2
    .param p0, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 78
    sget-object v1, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;

    .line 79
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;
    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;

    .end local v0    # "fragment":Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;
    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;-><init>()V

    .line 83
    .restart local v0    # "fragment":Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;
    :cond_0
    return-object v0
.end method

.method private handleArguments()V
    .locals 2

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ITEM_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mItemID:Ljava/lang/String;

    .line 106
    :cond_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/jiliguala/niuwa/common/base/d;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->createPresenter()Lcom/jiliguala/niuwa/module/story/QualityStoryFragmentPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/jiliguala/niuwa/module/story/QualityStoryFragmentPresenter;
    .locals 1

    .prologue
    .line 88
    new-instance v0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragmentPresenter;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/story/QualityStoryFragmentPresenter;-><init>()V

    return-object v0
.end method

.method public enablePayDialogBtn()V
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mPayDialog:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mPayDialog:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->enablePayBtn()V

    .line 310
    :cond_0
    return-void
.end method

.method protected bridge synthetic getUi()Lcom/jiliguala/niuwa/common/base/e;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->getUi()Lcom/jiliguala/niuwa/module/story/QualityStoryFragmentView;

    move-result-object v0

    return-object v0
.end method

.method protected getUi()Lcom/jiliguala/niuwa/module/story/QualityStoryFragmentView;
    .locals 0

    .prologue
    .line 93
    return-object p0
.end method

.method public goToKeepAddressActivity()V
    .locals 3

    .prologue
    .line 224
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/module/story/KeepAddressActviity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 225
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "SOURCE"

    const-string v2, "QualityStoryFragment"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 227
    return-void
.end method

.method public hasNecessaryInfo()Z
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mPhoneNum:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mAddress:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hidePayPage()V
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mPayDialog:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mPayDialog:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->dismiss()V

    .line 296
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 190
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 192
    :sswitch_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mPayDialog:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mPayDialog:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mRemarkEt:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->setComment(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mPayDialog:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->onClickWeiXin()V

    goto :goto_0

    .line 198
    :sswitch_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mPayDialog:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mPayDialog:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mRemarkEt:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->setComment(Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mPayDialog:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->onClickZhiFuBao()V

    goto :goto_0

    .line 204
    :sswitch_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mRemarkEt:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 205
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->hasActionDone:Z

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mRemarkEt:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->lastRemarkText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mRemarkEt:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mRemarkEt:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 208
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->hasActionDone:Z

    goto :goto_0

    .line 218
    :sswitch_3
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->goToKeepAddressActivity()V

    goto :goto_0

    .line 190
    :sswitch_data_0
    .sparse-switch
        0x7f090045 -> :sswitch_3
        0x7f0901aa -> :sswitch_3
        0x7f090378 -> :sswitch_3
        0x7f0903da -> :sswitch_3
        0x7f090443 -> :sswitch_2
        0x7f09045c -> :sswitch_3
        0x7f090569 -> :sswitch_3
        0x7f0905a0 -> :sswitch_3
        0x7f090612 -> :sswitch_0
        0x7f090629 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/c;->onCreate(Landroid/os/Bundle;)V

    .line 99
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->handleArguments()V

    .line 100
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/aa;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 111
    const v0, 0x7f0b00c4

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mRootView:Landroid/view/View;

    .line 112
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f09045c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mRightArrow:Landroid/widget/ImageView;

    .line 113
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mRightArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f090612

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mWeiXinContainer:Landroid/widget/RelativeLayout;

    .line 115
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mWeiXinContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f090629

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mZhiFuBaoContainer:Landroid/widget/RelativeLayout;

    .line 117
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mZhiFuBaoContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f090569

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mTextContainer:Landroid/widget/RelativeLayout;

    .line 119
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mTextContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f0905a0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mTopTextContainer:Landroid/widget/RelativeLayout;

    .line 121
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mTopTextContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f090378

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mName:Landroid/widget/TextView;

    .line 124
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mName:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f0903da

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mPhoneNum:Landroid/widget/TextView;

    .line 126
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mPhoneNum:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f090045

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mAddress:Landroid/widget/TextView;

    .line 128
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mAddress:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f090273

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mIcon:Landroid/widget/ImageView;

    .line 131
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f0905b5

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mTitle:Landroid/widget/TextView;

    .line 133
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f0903fc

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mPrice:Landroid/widget/TextView;

    .line 135
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f090168

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mCount:Landroid/widget/TextView;

    .line 137
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f09052d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mMoneyTxt:Landroid/widget/TextView;

    .line 139
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f09022d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mFreightMonet:Landroid/widget/TextView;

    .line 141
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f0905ab

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mTotalMoney:Landroid/widget/TextView;

    .line 143
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f090042

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mAddAddressTv:Landroid/widget/TextView;

    .line 145
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mAddAddressTv:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mPhoneNum:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f090443

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mRemarkEt:Landroid/widget/EditText;

    .line 148
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mRemarkEt:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 149
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mRemarkEt:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mRemarkEt:Landroid/widget/EditText;

    new-instance v1, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment$1;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment$1;-><init>(Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 167
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mRootView:Landroid/view/View;

    return-object v0

    .line 145
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public onReceivedPayResult(Lcom/jiliguala/niuwa/logic/network/json/PingPPPayResult$Data;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "data"    # Lcom/jiliguala/niuwa/logic/network/json/PingPPPayResult$Data;
    .param p2, "payAmount"    # Ljava/lang/String;
    .param p3, "itemId"    # Ljava/lang/String;
    .param p4, "channel"    # Ljava/lang/String;
    .param p5, "orderId"    # Ljava/lang/String;

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lcom/jiliguala/niuwa/module/story/QualityStoryPayPageActiivty;

    if-eqz v1, :cond_0

    .line 332
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mPayDialog:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->enablePayBtn()V

    .line 333
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mPayDialog:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->dismiss()V

    .line 334
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/story/QualityStoryPayPageActiivty;

    .line 335
    .local v0, "qualityStoryPayPageActiivty":Lcom/jiliguala/niuwa/module/story/QualityStoryPayPageActiivty;
    invoke-virtual {v0, p1, p2, p4}, Lcom/jiliguala/niuwa/module/story/QualityStoryPayPageActiivty;->onReceivedPayResult(Lcom/jiliguala/niuwa/logic/network/json/PingPPPayResult$Data;Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    .end local v0    # "qualityStoryPayPageActiivty":Lcom/jiliguala/niuwa/module/story/QualityStoryPayPageActiivty;
    :cond_0
    return-void
.end method

.method public onReceivedPayResultTimeout()V
    .locals 2

    .prologue
    .line 320
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lcom/jiliguala/niuwa/module/story/QualityStoryPayPageActiivty;

    if-eqz v1, :cond_0

    .line 321
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mPayDialog:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->enablePayBtn()V

    .line 322
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mPayDialog:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->dismiss()V

    .line 323
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/story/QualityStoryPayPageActiivty;

    .line 324
    .local v0, "interactLessonDetailActivity":Lcom/jiliguala/niuwa/module/story/QualityStoryPayPageActiivty;
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/story/QualityStoryPayPageActiivty;->onReceivedPayResultTimeout()V

    .line 327
    .end local v0    # "interactLessonDetailActivity":Lcom/jiliguala/niuwa/module/story/QualityStoryPayPageActiivty;
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 172
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/c;->onResume()V

    .line 173
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mData:Lcom/jiliguala/niuwa/logic/network/json/StoryOrderTemplete$Data;

    if-nez v0, :cond_1

    .line 174
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragmentPresenter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mItemID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/story/QualityStoryFragmentPresenter;->requestStoryLessonByPut(Ljava/lang/String;)V

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mData:Lcom/jiliguala/niuwa/logic/network/json/StoryOrderTemplete$Data;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/StoryOrderTemplete$Data;->hasOrderId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragmentPresenter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mData:Lcom/jiliguala/niuwa/logic/network/json/StoryOrderTemplete$Data;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/StoryOrderTemplete$Data;->order:Lcom/jiliguala/niuwa/logic/network/json/StoryOrder;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/StoryOrder;->oid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/story/QualityStoryFragmentPresenter;->requestStoryLessonByGet(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 185
    invoke-super {p0, p1, p2}, Lcom/jiliguala/niuwa/common/base/c;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 186
    return-void
.end method

.method public onWeixinPayClick()V
    .locals 1

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->hasNecessaryInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    const-string v0, "\u6b63\u5728\u8fdb\u5165\u5fae\u4fe1,\u8bf7\u7a0d\u540e..."

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 344
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->reportLessonPurchaseClick()V

    .line 345
    return-void
.end method

.method public onZhiFuBaoPayClick()V
    .locals 0

    .prologue
    .line 349
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->reportLessonPurchaseClick()V

    .line 350
    return-void
.end method

.method public reportLessonPurchaseClick()V
    .locals 3

    .prologue
    .line 353
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 354
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "ID"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mItemID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    const-string v1, "Type"

    const-string v2, "story"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Item Purchase Click"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 357
    return-void
.end method

.method public requestOrderResultWithNoRetry()V
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mPayDialog:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mPayDialog:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->requestOrderResultWithNoRetry()V

    .line 303
    :cond_0
    return-void
.end method

.method public updateOrderNoStatusToServer()V
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mPayDialog:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mPayDialog:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->reportOrderNoStatusToServer()V

    .line 316
    :cond_0
    return-void
.end method

.method public updateUI(Lcom/jiliguala/niuwa/logic/network/json/StoryOrderTemplete$Data;)V
    .locals 8
    .param p1, "data"    # Lcom/jiliguala/niuwa/logic/network/json/StoryOrderTemplete$Data;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mData:Lcom/jiliguala/niuwa/logic/network/json/StoryOrderTemplete$Data;

    .line 232
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mData:Lcom/jiliguala/niuwa/logic/network/json/StoryOrderTemplete$Data;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mData:Lcom/jiliguala/niuwa/logic/network/json/StoryOrderTemplete$Data;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/StoryOrderTemplete$Data;->hasOrderId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mPayDialog:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;

    if-nez v0, :cond_0

    .line 234
    new-instance v0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, ""

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mData:Lcom/jiliguala/niuwa/logic/network/json/StoryOrderTemplete$Data;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/StoryOrderTemplete$Data;->order:Lcom/jiliguala/niuwa/logic/network/json/StoryOrder;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/StoryOrder;->oid:Ljava/lang/String;

    const-string v4, "REQUEST_CHARGE_USE_POST"

    const-string v5, "0"

    invoke-direct/range {v0 .. v5}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mPayDialog:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;

    .line 235
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mPayDialog:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->setOnPayClickListener(Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog$onPayClickListenr;)V

    .line 236
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mPayDialog:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->setCallBack(Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog$CallBack;)V

    .line 239
    :cond_0
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/StoryOrderTemplete$Data;->hasReceiver()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 240
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/StoryOrderTemplete$Data;->order:Lcom/jiliguala/niuwa/logic/network/json/StoryOrder;

    iget-object v7, v0, Lcom/jiliguala/niuwa/logic/network/json/StoryOrder;->receiver:Lcom/jiliguala/niuwa/logic/network/json/Receiver;

    .line 241
    .local v7, "receiver":Lcom/jiliguala/niuwa/logic/network/json/Receiver;
    iget-object v0, v7, Lcom/jiliguala/niuwa/logic/network/json/Receiver;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 242
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mName:Landroid/widget/TextView;

    iget-object v1, v7, Lcom/jiliguala/niuwa/logic/network/json/Receiver;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060050

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 250
    :goto_0
    iget-object v0, v7, Lcom/jiliguala/niuwa/logic/network/json/Receiver;->tel:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 251
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mPhoneNum:Landroid/widget/TextView;

    iget-object v1, v7, Lcom/jiliguala/niuwa/logic/network/json/Receiver;->tel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    :cond_1
    iget-object v0, v7, Lcom/jiliguala/niuwa/logic/network/json/Receiver;->addr:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, v7, Lcom/jiliguala/niuwa/logic/network/json/Receiver;->addr:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 255
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mAddress:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v7, Lcom/jiliguala/niuwa/logic/network/json/Receiver;->region:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v7, Lcom/jiliguala/niuwa/logic/network/json/Receiver;->addr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    .end local v7    # "receiver":Lcom/jiliguala/niuwa/logic/network/json/Receiver;
    :cond_2
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/StoryOrderTemplete$Data;->hasItem()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 260
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/StoryOrderTemplete$Data;->order:Lcom/jiliguala/niuwa/logic/network/json/StoryOrder;

    iget-object v6, v0, Lcom/jiliguala/niuwa/logic/network/json/StoryOrder;->item:Lcom/jiliguala/niuwa/logic/network/json/Item;

    .line 261
    .local v6, "item":Lcom/jiliguala/niuwa/logic/network/json/Item;
    iget-object v0, v6, Lcom/jiliguala/niuwa/logic/network/json/Item;->thmb:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 262
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v0

    iget-object v1, v6, Lcom/jiliguala/niuwa/logic/network/json/Item;->thmb:Ljava/lang/String;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mIcon:Landroid/widget/ImageView;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/e/a;->j()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    .line 265
    :cond_3
    iget-object v0, v6, Lcom/jiliguala/niuwa/logic/network/json/Item;->ttl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 266
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mTitle:Landroid/widget/TextView;

    iget-object v1, v6, Lcom/jiliguala/niuwa/logic/network/json/Item;->ttl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    :cond_4
    iget-object v0, v6, Lcom/jiliguala/niuwa/logic/network/json/Item;->price:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 270
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mPrice:Landroid/widget/TextView;

    iget-object v1, v6, Lcom/jiliguala/niuwa/logic/network/json/Item;->price:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    :cond_5
    iget-object v0, v6, Lcom/jiliguala/niuwa/logic/network/json/Item;->quantity:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 274
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mCount:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "X "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v6, Lcom/jiliguala/niuwa/logic/network/json/Item;->quantity:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    .end local v6    # "item":Lcom/jiliguala/niuwa/logic/network/json/Item;
    :cond_6
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/StoryOrderTemplete$Data;->hasPayMoney()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 279
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mMoneyTxt:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/StoryOrderTemplete$Data;->order:Lcom/jiliguala/niuwa/logic/network/json/StoryOrder;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/StoryOrder;->total:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    :cond_7
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/StoryOrderTemplete$Data;->hasShipping()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 282
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mFreightMonet:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/StoryOrderTemplete$Data;->order:Lcom/jiliguala/niuwa/logic/network/json/StoryOrder;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/StoryOrder;->shipping:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    :cond_8
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/StoryOrderTemplete$Data;->hasSum()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 285
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mTotalMoney:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/StoryOrderTemplete$Data;->order:Lcom/jiliguala/niuwa/logic/network/json/StoryOrder;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/StoryOrder;->sum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    :cond_9
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mAddAddressTv:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mPhoneNum:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    .line 288
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mAddAddressTv:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mPhoneNum:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 290
    :cond_a
    return-void

    .line 246
    .restart local v7    # "receiver":Lcom/jiliguala/niuwa/logic/network/json/Receiver;
    :cond_b
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mName:Landroid/widget/TextView;

    const-string v1, "\u5fc5\u586b"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->mName:Landroid/widget/TextView;

    const-string v1, "#FD9061"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 288
    .end local v7    # "receiver":Lcom/jiliguala/niuwa/logic/network/json/Receiver;
    :cond_c
    const/16 v0, 0x8

    goto :goto_1
.end method
