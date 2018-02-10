.class public Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog$CallBack;,
        Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog$onPayClickListenr;
    }
.end annotation


# static fields
.field public static final REQUEST_CHARGE_USE_GET:Ljava/lang/String; = "REQUEST_CHARGE_USE_GET"

.field public static final REQUEST_CHARGE_USE_POST:Ljava/lang/String; = "REQUEST_CHARGE_USE_POST"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCallBack:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog$CallBack;

.field private mComment:Ljava/lang/String;

.field private mDialog:Landroid/app/Dialog;

.field private mItemId:Ljava/lang/String;

.field private mMoneyAccount:Ljava/lang/String;

.field private mOid:Ljava/lang/String;

.field private mOnPayClickListener:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog$onPayClickListenr;

.field private mPayContainer:Landroid/widget/LinearLayout;

.field private mPayMoney:Landroid/widget/TextView;

.field private final mPresenter:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;

.field private mRequestChargeWay:Ljava/lang/String;

.field private mWeiXinContainer:Landroid/widget/RelativeLayout;

.field private mZhiFuBaoContainer:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "moneyAccount"    # Ljava/lang/String;
    .param p3, "itemId"    # Ljava/lang/String;
    .param p4, "requestChargeWay"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->mActivity:Landroid/app/Activity;

    .line 46
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->mMoneyAccount:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->mItemId:Ljava/lang/String;

    .line 48
    iput-object p4, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->mRequestChargeWay:Ljava/lang/String;

    .line 49
    new-instance v0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->mItemId:Ljava/lang/String;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->mRequestChargeWay:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;-><init>(Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogUI;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->mPresenter:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;

    .line 50
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->init()V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "comment"    # Ljava/lang/String;
    .param p3, "oid"    # Ljava/lang/String;
    .param p4, "requestChargeWay"    # Ljava/lang/String;
    .param p5, "amount"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->mActivity:Landroid/app/Activity;

    .line 55
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->mComment:Ljava/lang/String;

    .line 56
    iput-object p5, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->mMoneyAccount:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->mOid:Ljava/lang/String;

    .line 58
    iput-object p4, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->mRequestChargeWay:Ljava/lang/String;

    .line 59
    new-instance v0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->mComment:Ljava/lang/String;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->mOid:Ljava/lang/String;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->mRequestChargeWay:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;-><init>(Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogUI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->mPresenter:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;

    .line 60
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->init()V

    .line 61
    return-void
.end method

.method private init()V
    .locals 5

    .prologue
    const v4, 0x7f1000b3

    .line 86
    new-instance v2, Landroid/app/Dialog;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->mDialog:Landroid/app/Dialog;

    .line 88
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 90
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x50

    invoke-virtual {v2, v3}, Landroid/view/Window;->setGravity(I)V

    .line 92
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 94
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 95
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0b0093

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 97
    .local v1, "rootView":Landroid/view/View;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 99
    const v2, 0x7f0903c4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->mPayContainer:Landroid/widget/LinearLayout;

    .line 101
    const v2, 0x7f090612

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->mWeiXinContainer:Landroid/widget/RelativeLayout;

    .line 103
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->mWeiXinContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    const v2, 0x7f090629

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->mZhiFuBaoContainer:Landroid/widget/RelativeLayout;

    .line 107
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->mZhiFuBaoContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    const v2, 0x7f0903c5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->mPayMoney:Landroid/widget/TextView;

    .line 111
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->mPayMoney:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->mMoneyAccount:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-virtual {v2, v3, v4}, Landroid/view/Window;->setLayout(II)V

    .line 115
    return-void
.end method


# virtual methods
.method public disablePayBtn()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 188
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->mWeiXinContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->mWeiXinContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->mZhiFuBaoContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->mZhiFuBaoContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 194
    :cond_1
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->mDialog:Landroid/app/Dialog;

    if-nez v0, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0
.end method

.method public enablePayBtn()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 178
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->mWeiXinContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->mWeiXinContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->mZhiFuBaoContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->mZhiFuBaoContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 184
    :cond_1
    return-void
.end method

.method public enablePayButton()V
    .locals 0

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->enablePayBtn()V

    .line 224
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 138
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 146
    :goto_0
    return-void

    .line 140
    :sswitch_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->onClickWeiXin()V

    goto :goto_0

    .line 143
    :sswitch_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->onClickZhiFuBao()V

    goto :goto_0

    .line 138
    :sswitch_data_0
    .sparse-switch
        0x7f090612 -> :sswitch_0
        0x7f090629 -> :sswitch_1
    .end sparse-switch
.end method

.method public onClickWeiXin()V
    .locals 2

    .prologue
    .line 164
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/p;->a()Lcom/jiliguala/niuwa/common/util/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/p;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->mOnPayClickListener:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog$onPayClickListenr;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->mOnPayClickListener:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog$onPayClickListenr;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog$onPayClickListenr;->onWeixinPayClick()V

    .line 168
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->disablePayBtn()V

    .line 169
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->mPresenter:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->mMoneyAccount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->onWeixinPayClick(Ljava/lang/String;)V

    .line 173
    :goto_0
    return-void

    .line 171
    :cond_1
    const-string v0, "\u6ca1\u6709\u68c0\u6d4b\u5230\u5fae\u4fe1\uff0c\u8bf7\u4e0b\u8f7d\uff01"

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onClickZhiFuBao()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->mOnPayClickListener:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog$onPayClickListenr;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->mOnPayClickListener:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog$onPayClickListenr;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog$onPayClickListenr;->onZhiFuBaoPayClick()V

    .line 156
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->disablePayBtn()V

    .line 157
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->mPresenter:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->mMoneyAccount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->onZhiFuBaoPayClick(Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method public onReceivedPayResult(Lcom/jiliguala/niuwa/logic/network/json/PingPPPayResult$Data;)V
    .locals 6
    .param p1, "data"    # Lcom/jiliguala/niuwa/logic/network/json/PingPPPayResult$Data;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->mCallBack:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog$CallBack;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->mCallBack:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog$CallBack;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->mPresenter:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->getPayAmount()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->mPresenter:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->getItemId()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->mPresenter:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->getChannel()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->mPresenter:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->getOrderId()Ljava/lang/String;

    move-result-object v5

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog$CallBack;->onReceivedPayResult(Lcom/jiliguala/niuwa/logic/network/json/PingPPPayResult$Data;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :cond_0
    return-void
.end method

.method public onReceivedPayResultTimeout()V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->mCallBack:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog$CallBack;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->mCallBack:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog$CallBack;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog$CallBack;->onReceivedPayResultTimeout()V

    .line 219
    :cond_0
    return-void
.end method

.method public reportOrderNoStatusToServer()V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->mPresenter:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->reportOrderNoStatusToServer()V

    .line 232
    return-void
.end method

.method public requestOrderResultWithNoRetry()V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->mPresenter:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->requestOrderPayResultWithNoRetry()V

    .line 236
    return-void
.end method

.method public setCallBack(Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog$CallBack;)V
    .locals 0
    .param p1, "callBack"    # Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog$CallBack;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->mCallBack:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog$CallBack;

    .line 228
    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 1
    .param p1, "comment"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->mComment:Ljava/lang/String;

    .line 79
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->mPresenter:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->mPresenter:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->setComment(Ljava/lang/String;)V

    .line 82
    :cond_0
    return-void
.end method

.method public setItemId(Ljava/lang/String;)V
    .locals 1
    .param p1, "itemId"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->mItemId:Ljava/lang/String;

    .line 72
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->mPresenter:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->mPresenter:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->setItemId(Ljava/lang/String;)V

    .line 75
    :cond_0
    return-void
.end method

.method public setMoneyAccount(Ljava/lang/String;)V
    .locals 1
    .param p1, "moneyAccount"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->mMoneyAccount:Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->mPayMoney:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->mPayMoney:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    :cond_0
    return-void
.end method

.method public setOnPayClickListener(Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog$onPayClickListenr;)V
    .locals 0
    .param p1, "onPayClickListener"    # Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog$onPayClickListenr;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->mOnPayClickListener:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog$onPayClickListenr;

    .line 198
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->mDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 123
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method
