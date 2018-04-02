.class public Lcom/jiliguala/niuwa/module/order/fragment/OrderDetailFragment;
.super Lcom/jiliguala/niuwa/common/base/c;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/jiliguala/niuwa/common/widget/customview/b;
.implements Lcom/jiliguala/niuwa/module/order/contact/OrderDetailContract$View;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jiliguala/niuwa/common/base/c",
        "<",
        "Lcom/jiliguala/niuwa/module/order/presenter/OrderDetailPresenter;",
        "Lcom/jiliguala/niuwa/module/order/contact/OrderDetailContract$View;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/jiliguala/niuwa/common/widget/customview/b;",
        "Lcom/jiliguala/niuwa/module/order/contact/OrderDetailContract$View;"
    }
.end annotation


# static fields
.field public static final FRAGMENT_TAG:Ljava/lang/String;

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAddAddressTv:Landroid/widget/TextView;

.field private mAddress:Landroid/widget/TextView;

.field private mConnectUsDialog:Lcom/jiliguala/niuwa/a/b/b;

.field private mConnectUsTxt:Landroid/widget/TextView;

.field private mCopyBt:Landroid/widget/Button;

.field private mCount:Landroid/widget/TextView;

.field private mDateTv:Landroid/widget/TextView;

.field private mDescContainer:Landroid/view/View;

.field private mFreightMoney:Landroid/widget/TextView;

.field private mGoLogisticsBtn:Landroid/widget/Button;

.field private mIcon:Landroid/widget/ImageView;

.field private mMoneyTxt:Landroid/widget/TextView;

.field private mName:Landroid/widget/TextView;

.field private mOrderNumberTv:Landroid/widget/TextView;

.field private mPhoneNum:Landroid/widget/TextView;

.field private mPrice:Landroid/widget/TextView;

.field private mRemarkTv:Landroid/widget/TextView;

.field private mSuperView:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

.field private mTitle:Landroid/widget/TextView;

.field private mTotalMoney:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/jiliguala/niuwa/module/order/fragment/OrderDetailFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/order/fragment/OrderDetailFragment;->TAG:Ljava/lang/String;

    .line 45
    const-class v0, Lcom/jiliguala/niuwa/module/order/fragment/OrderDetailFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/order/fragment/OrderDetailFragment;->FRAGMENT_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/c;-><init>()V

    return-void
.end method

.method public static findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/order/fragment/OrderDetailFragment;
    .locals 2
    .param p0, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 68
    sget-object v1, Lcom/jiliguala/niuwa/module/order/fragment/OrderDetailFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/order/fragment/OrderDetailFragment;

    .line 69
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/order/fragment/OrderDetailFragment;
    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/jiliguala/niuwa/module/order/fragment/OrderDetailFragment;

    .end local v0    # "fragment":Lcom/jiliguala/niuwa/module/order/fragment/OrderDetailFragment;
    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/order/fragment/OrderDetailFragment;-><init>()V

    .line 73
    .restart local v0    # "fragment":Lcom/jiliguala/niuwa/module/order/fragment/OrderDetailFragment;
    :cond_0
    return-object v0
.end method

.method private goGoods()V
    .locals 0

    .prologue
    .line 207
    return-void
.end method

.method private goLogistics()V
    .locals 4

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/order/fragment/OrderDetailFragment;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/order/presenter/OrderDetailPresenter;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/order/presenter/OrderDetailPresenter;->getOrderId()Ljava/lang/String;

    move-result-object v1

    .line 197
    .local v1, "orderId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 203
    :goto_0
    return-void

    .line 200
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/order/fragment/OrderDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/jiliguala/niuwa/module/order/LogisticsActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 201
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "order_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/order/fragment/OrderDetailFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private init(Landroid/view/View;)V
    .locals 1
    .param p1, "mRootView"    # Landroid/view/View;

    .prologue
    .line 108
    const v0, 0x7f090546

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/order/fragment/OrderDetailFragment;->mSuperView:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    .line 109
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/order/fragment/OrderDetailFragment;->mSuperView:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->setOnErrorClickListener(Lcom/jiliguala/niuwa/common/widget/customview/b;)V

    .line 110
    const v0, 0x7f09037f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/order/fragment/OrderDetailFragment;->mName:Landroid/widget/TextView;

    .line 111
    const v0, 0x7f0903e1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/order/fragment/OrderDetailFragment;->mPhoneNum:Landroid/widget/TextView;

    .line 112
    const v0, 0x7f090045

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/order/fragment/OrderDetailFragment;->mAddress:Landroid/widget/TextView;

    .line 113
    const v0, 0x7f0903b2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/order/fragment/OrderDetailFragment;->mOrderNumberTv:Landroid/widget/TextView;

    .line 114
    const v0, 0x7f0903b0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/order/fragment/OrderDetailFragment;->mDateTv:Landroid/widget/TextView;

    .line 115
    const v0, 0x7f0903af

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/order/fragment/OrderDetailFragment;->mCopyBt:Landroid/widget/Button;

    .line 116
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/order/fragment/OrderDetailFragment;->mCopyBt:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    const v0, 0x7f090278

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/order/fragment/OrderDetailFragment;->mIcon:Landroid/widget/ImageView;

    .line 118
    const v0, 0x7f0905bf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/order/fragment/OrderDetailFragment;->mTitle:Landroid/widget/TextView;

    .line 119
    const v0, 0x7f090403

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/order/fragment/OrderDetailFragment;->mPrice:Landroid/widget/TextView;

    .line 120
    const v0, 0x7f090168

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/order/fragment/OrderDetailFragment;->mCount:Landroid/widget/TextView;

    .line 121
    const v0, 0x7f090537

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/order/fragment/OrderDetailFragment;->mMoneyTxt:Landroid/widget/TextView;

    .line 122
    const v0, 0x7f09022c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/order/fragment/OrderDetailFragment;->mFreightMoney:Landroid/widget/TextView;

    .line 123
    const v0, 0x7f0905b5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/order/fragment/OrderDetailFragment;->mTotalMoney:Landroid/widget/TextView;

    .line 124
    const v0, 0x7f090042

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/order/fragment/OrderDetailFragment;->mAddAddressTv:Landroid/widget/TextView;

    .line 125
    const v0, 0x7f09044a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/order/fragment/OrderDetailFragment;->mRemarkTv:Landroid/widget/TextView;

    .line 126
    const v0, 0x7f0901ad

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/order/fragment/OrderDetailFragment;->mDescContainer:Landroid/view/View;

    .line 127
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/order/fragment/OrderDetailFragment;->mDescContainer:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    const v0, 0x7f0900c7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/order/fragment/OrderDetailFragment;->mGoLogisticsBtn:Landroid/widget/Button;

    .line 129
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/order/fragment/OrderDetailFragment;->mGoLogisticsBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/jiliguala/niuwa/common/base/d;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/order/fragment/OrderDetailFragment;->createPresenter()Lcom/jiliguala/niuwa/module/order/presenter/OrderDetailPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/jiliguala/niuwa/module/order/presenter/OrderDetailPresenter;
    .locals 1

    .prologue
    .line 78
    new-instance v0, Lcom/jiliguala/niuwa/module/order/presenter/OrderDetailPresenter;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/order/presenter/OrderDetailPresenter;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic getUi()Lcom/jiliguala/niuwa/common/base/e;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/order/fragment/OrderDetailFragment;->getUi()Lcom/jiliguala/niuwa/module/order/contact/OrderDetailContract$View;

    move-result-object v0

    return-object v0
.end method

.method protected getUi()Lcom/jiliguala/niuwa/module/order/contact/OrderDetailContract$View;
    .locals 0

    .prologue
    .line 83
    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 176
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 178
    :sswitch_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/order/fragment/OrderDetailFragment;->mOrderNumberTv:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, "number":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/order/fragment/OrderDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "clipboard"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 181
    .local v0, "cm":Landroid/content/ClipboardManager;
    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 182
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/order/fragment/OrderDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "\u590d\u5236\u6210\u529f"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 186
    .end local v0    # "cm":Landroid/content/ClipboardManager;
    .end local v1    # "number":Ljava/lang/String;
    :sswitch_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/order/fragment/OrderDetailFragment;->goGoods()V

    goto :goto_0

    .line 189
    :sswitch_2
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/order/fragment/OrderDetailFragment;->goLogistics()V

    goto :goto_0

    .line 176
    :sswitch_data_0
    .sparse-switch
        0x7f0900c7 -> :sswitch_2
        0x7f0901ad -> :sswitch_1
        0x7f0903af -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/c;->onCreate(Landroid/os/Bundle;)V

    .line 89
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/order/fragment/OrderDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 90
    .local v0, "arguments":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/order/fragment/OrderDetailFragment;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/order/presenter/OrderDetailPresenter;

    invoke-virtual {v1, v0}, Lcom/jiliguala/niuwa/module/order/presenter/OrderDetailPresenter;->init(Landroid/os/Bundle;)V

    .line 91
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
    .line 96
    const v1, 0x7f0b00be

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 97
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/order/fragment/OrderDetailFragment;->init(Landroid/view/View;)V

    .line 98
    return-object v0
.end method

.method public onErrorPageBackBtnClick()V
    .locals 0

    .prologue
    .line 172
    return-void
.end method

.method public onRefreshButtonClick()V
    .locals 1

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/order/fragment/OrderDetailFragment;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/order/presenter/OrderDetailPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/order/presenter/OrderDetailPresenter;->requestServer()V

    .line 167
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 103
    invoke-super {p0, p1, p2}, Lcom/jiliguala/niuwa/common/base/c;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 104
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/order/fragment/OrderDetailFragment;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/order/presenter/OrderDetailPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/order/presenter/OrderDetailPresenter;->requestServer()V

    .line 105
    return-void
.end method

.method public showData(Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean;)V
    .locals 10
    .param p1, "data"    # Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean;

    .prologue
    .line 134
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean;->getReceiver()Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean$ReceiverBean;

    move-result-object v3

    .line 135
    .local v3, "receiver":Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean$ReceiverBean;
    if-eqz v3, :cond_0

    .line 136
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/order/fragment/OrderDetailFragment;->mName:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean$ReceiverBean;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "\u2014\u2014\u2014\u2014\u2014"

    :goto_0
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/order/fragment/OrderDetailFragment;->mPhoneNum:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean$ReceiverBean;->getTel()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/order/fragment/OrderDetailFragment;->mAddress:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean$ReceiverBean;->getAddr()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "\u2014\u2014\u2014\u2014\u2014"

    :goto_1
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    :cond_0
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/order/fragment/OrderDetailFragment;->mOrderNumberTv:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean;->getOid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean;->getCts()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/jiliguala/niuwa/common/util/f;->c(Ljava/lang/String;)J

    move-result-wide v4

    .line 142
    .local v4, "time":J
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v1, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 143
    .local v1, "format":Ljava/text/SimpleDateFormat;
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "date":Ljava/lang/String;
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/order/fragment/OrderDetailFragment;->mDateTv:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean;->getItem()Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean$ItemBean;

    move-result-object v2

    .line 147
    .local v2, "item":Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean$ItemBean;
    if-eqz v2, :cond_1

    .line 148
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v6

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean$ItemBean;->getThmb()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/jiliguala/niuwa/module/order/fragment/OrderDetailFragment;->mIcon:Landroid/widget/ImageView;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v9

    invoke-virtual {v9}, Lcom/jiliguala/niuwa/logic/e/a;->n()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    .line 149
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/order/fragment/OrderDetailFragment;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean$ItemBean;->getTtl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/order/fragment/OrderDetailFragment;->mPrice:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean$ItemBean;->getPrice()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/order/fragment/OrderDetailFragment;->mCount:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " x "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean$ItemBean;->getQuantity()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    :cond_1
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/order/fragment/OrderDetailFragment;->mRemarkTv:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean;->getComment()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/order/fragment/OrderDetailFragment;->mMoneyTxt:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean;->getTotal()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/order/fragment/OrderDetailFragment;->mFreightMoney:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean;->getShipping()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/order/fragment/OrderDetailFragment;->mTotalMoney:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean;->getSum()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    return-void

    .line 136
    .end local v0    # "date":Ljava/lang/String;
    .end local v1    # "format":Ljava/text/SimpleDateFormat;
    .end local v2    # "item":Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean$ItemBean;
    .end local v4    # "time":J
    :cond_2
    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean$ReceiverBean;->getName()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 138
    :cond_3
    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean$ReceiverBean;->getAddr()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1
.end method

.method public showError()V
    .locals 0

    .prologue
    .line 162
    return-void
.end method
