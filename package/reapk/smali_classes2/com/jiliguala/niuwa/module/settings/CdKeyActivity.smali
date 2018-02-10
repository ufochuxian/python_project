.class public Lcom/jiliguala/niuwa/module/settings/CdKeyActivity;
.super Lcom/jiliguala/niuwa/common/base/BaseActivity;
.source "SourceFile"


# instance fields
.field actionBack:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f090014
    .end annotation
.end field

.field btnExchange:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        a = 0x7f0900c6
    .end annotation
.end field

.field cdkeyImg:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f090112
    .end annotation
.end field

.field editExchange:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        a = 0x7f0901d4
    .end annotation
.end field

.field private mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/settings/CdKeyActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/CdKeyActivity;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/CdKeyActivity;->goToMobilePage()V

    return-void
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/settings/CdKeyActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/CdKeyActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/settings/CdKeyActivity;->reportAmplitude(Z)V

    return-void
.end method

.method private addEventObserver()V
    .locals 4

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/CdKeyActivity;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/logic/b/a/a;

    .line 79
    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Class;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/settings/CdKeyActivity$1;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/settings/CdKeyActivity$1;-><init>(Lcom/jiliguala/niuwa/module/settings/CdKeyActivity;)V

    new-instance v3, Lcom/jiliguala/niuwa/module/settings/CdKeyActivity$2;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/settings/CdKeyActivity$2;-><init>(Lcom/jiliguala/niuwa/module/settings/CdKeyActivity;)V

    .line 80
    invoke-virtual {v1, v2, v3}, Lrx/e;->b(Lrx/c/c;Lrx/c/c;)Lrx/m;

    move-result-object v1

    .line 78
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 111
    return-void
.end method

.method private generateRequestBody(Lcom/jiliguala/niuwa/logic/network/json/RedeemEntity;)Lokhttp3/ab;
    .locals 2
    .param p1, "data"    # Lcom/jiliguala/niuwa/logic/network/json/RedeemEntity;

    .prologue
    .line 172
    invoke-static {p1}, Lcom/jiliguala/niuwa/logic/network/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, "json":Ljava/lang/String;
    invoke-static {v1}, Lcom/jiliguala/niuwa/logic/network/a/b;->a(Ljava/lang/String;)Lokhttp3/ab;

    move-result-object v0

    .line 174
    .local v0, "body":Lokhttp3/ab;
    return-object v0
.end method

.method private goToMobilePage()V
    .locals 3

    .prologue
    .line 114
    const-string v1, "\u8bf7\u8865\u5145\u624b\u673a\u53f7\u624d\u80fd\u4fdd\u5b58\u73cd\u8d35\u7684\u5b66\u4e60\u8bb0\u5f55\u54e6"

    invoke-static {v1}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 115
    const v1, 0x7f0f0191

    const-string v2, "CDKEY EXCHANGE"

    invoke-static {p0, v1, v2}, Lcom/jiliguala/niuwa/module/onboading/OnBoardingIntentHelper;->makeIntentForPurchaseCompletion(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 118
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/settings/CdKeyActivity;->startActivity(Landroid/content/Intent;)V

    .line 119
    return-void
.end method

.method private onExchange()V
    .locals 4

    .prologue
    .line 142
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/CdKeyActivity;->editExchange:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "code":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/CdKeyActivity;->getSubscriptions()Lrx/i/b;

    move-result-object v1

    .line 144
    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v2

    .line 145
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v2

    new-instance v3, Lcom/jiliguala/niuwa/logic/network/json/RedeemEntity;

    invoke-direct {v3, v0}, Lcom/jiliguala/niuwa/logic/network/json/RedeemEntity;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-direct {p0, v3}, Lcom/jiliguala/niuwa/module/settings/CdKeyActivity;->generateRequestBody(Lcom/jiliguala/niuwa/logic/network/json/RedeemEntity;)Lokhttp3/ab;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/jiliguala/niuwa/logic/network/d;->C(Lokhttp3/ab;)Lrx/e;

    move-result-object v2

    .line 147
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 148
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 149
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v2

    new-instance v3, Lcom/jiliguala/niuwa/module/settings/CdKeyActivity$3;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/settings/CdKeyActivity$3;-><init>(Lcom/jiliguala/niuwa/module/settings/CdKeyActivity;)V

    .line 150
    invoke-virtual {v2, v3}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v2

    .line 143
    invoke-virtual {v1, v2}, Lrx/i/b;->a(Lrx/m;)V

    .line 169
    return-void
.end method

.method private reportAmplitude(Z)V
    .locals 3
    .param p1, "success"    # Z

    .prologue
    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 73
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "success"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Redeem Code View"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 75
    return-void

    .line 73
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/CdKeyActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 65
    const v0, 0x7f0b0023

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/settings/CdKeyActivity;->setContentView(I)V

    .line 66
    invoke-static {p0}, Lbutterknife/ButterKnife;->a(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 67
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/CdKeyActivity;->addEventObserver()V

    .line 68
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/settings/CdKeyActivity;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    .line 69
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I
    .annotation build Lbutterknife/OnTextChanged;
        a = {
            0x7f0901d4
        }
    .end annotation

    .prologue
    .line 138
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/CdKeyActivity;->btnExchange:Landroid/widget/Button;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 139
    return-void

    .line 138
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        a = {
            0x7f090014,
            0x7f0900c6
        }
    .end annotation

    .prologue
    .line 124
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 126
    :sswitch_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/CdKeyActivity;->finish()V

    goto :goto_0

    .line 129
    :sswitch_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/CdKeyActivity;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/CdKeyActivity;->onExchange()V

    goto :goto_0

    .line 124
    :sswitch_data_0
    .sparse-switch
        0x7f090014 -> :sswitch_0
        0x7f0900c6 -> :sswitch_1
    .end sparse-switch
.end method
