.class public Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment;
.super Lcom/jiliguala/niuwa/common/base/b;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final FRAGMENT_TAG:Ljava/lang/String;

.field private static final REQUEST_MOBILE_INFO:I = 0x3039


# instance fields
.field private mWxBoundDialog:Landroid/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment;->FRAGMENT_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/b;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment;->showWxBoundDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment;->finishActivity()V

    return-void
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment;->mWxBoundDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment;->goMobilePhone()V

    return-void
.end method

.method private addObserver()V
    .locals 3

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/logic/b/a/a;

    .line 61
    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Class;)Lrx/e;

    move-result-object v1

    .line 62
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment$1;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment$1;-><init>(Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment;)V

    .line 63
    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/c/c;)Lrx/m;

    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 82
    return-void
.end method

.method private finishActivity()V
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 86
    return-void
.end method

.method private goMobilePhone()V
    .locals 4

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0f0183

    const-string v3, "PURCHASE_GET_CHARGE"

    invoke-static {v1, v2, v3}, Lcom/jiliguala/niuwa/module/onboading/OnBoardingIntentHelper;->makeIntentForPurchaseCompletion(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 129
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0x3039

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 130
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 55
    const v0, 0x7f0900c2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    const v0, 0x7f090096

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    return-void
.end method

.method private showWxBoundDialog()V
    .locals 9

    .prologue
    .line 90
    :try_start_0
    new-instance v6, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    const v8, 0x7f1000b4

    invoke-direct {v6, v7, v8}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v6, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment;->mWxBoundDialog:Landroid/app/Dialog;

    .line 91
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment;->mWxBoundDialog:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 92
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment;->mWxBoundDialog:Landroid/app/Dialog;

    const v7, 0x7f0b012d

    invoke-virtual {v6, v7}, Landroid/app/Dialog;->setContentView(I)V

    .line 94
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment;->mWxBoundDialog:Landroid/app/Dialog;

    const v7, 0x7f09004c

    invoke-virtual {v6, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 95
    .local v4, "tips":Landroid/widget/TextView;
    const-string v6, "\u8be5\u5fae\u4fe1\u5df2\u88ab\u7ed1\u5b9a\uff0c\u60a8\u662f\u5426\u9009\u62e9\u7ed1\u5b9a\u624b\u673a\u53f7"

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment;->mWxBoundDialog:Landroid/app/Dialog;

    const v7, 0x7f090156

    invoke-virtual {v6, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 97
    .local v1, "confirm":Landroid/widget/Button;
    const-string v6, "\u7ed1\u5b9a\u624b\u673a\u53f7"

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment;->mWxBoundDialog:Landroid/app/Dialog;

    const v7, 0x7f0900fa

    invoke-virtual {v6, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 99
    .local v0, "cancel":Landroid/widget/Button;
    const-string v6, "\u53d6\u6d88"

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 100
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->h()I

    move-result v6

    mul-int/lit8 v6, v6, 0x4

    div-int/lit8 v5, v6, 0x5

    .line 101
    .local v5, "width":I
    const/4 v3, -0x2

    .line 102
    .local v3, "height":I
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment;->mWxBoundDialog:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v5, v3}, Landroid/view/Window;->setLayout(II)V

    .line 103
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment;->mWxBoundDialog:Landroid/app/Dialog;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 104
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment;->mWxBoundDialog:Landroid/app/Dialog;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 106
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment;->mWxBoundDialog:Landroid/app/Dialog;

    const v7, 0x7f0900fa

    invoke-virtual {v6, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v7, Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment$2;

    invoke-direct {v7, p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment$2;-><init>(Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment;->mWxBoundDialog:Landroid/app/Dialog;

    const v7, 0x7f090156

    invoke-virtual {v6, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v7, Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment$3;

    invoke-direct {v7, p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment$3;-><init>(Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment;->mWxBoundDialog:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .end local v0    # "cancel":Landroid/widget/Button;
    .end local v1    # "confirm":Landroid/widget/Button;
    .end local v3    # "height":I
    .end local v4    # "tips":Landroid/widget/TextView;
    .end local v5    # "width":I
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v2

    .line 121
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 134
    invoke-super {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/common/base/b;->onActivityResult(IILandroid/content/Intent;)V

    .line 135
    const/16 v0, 0x3039

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 136
    const-string v0, "\u7ed1\u5b9a\u6210\u529f"

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 137
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment;->finishActivity()V

    .line 139
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 143
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 157
    :goto_0
    return-void

    .line 145
    :sswitch_0
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/jiliguala/niuwa/module/settings/login/LoginActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 146
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 147
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "login_type"

    const/16 v3, 0x1001

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 148
    const-string v2, "source"

    const-string v3, "guest_upgrade_wechat"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 150
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 153
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    :sswitch_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment;->finishActivity()V

    goto :goto_0

    .line 143
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090096 -> :sswitch_1
        0x7f0900c2 -> :sswitch_0
    .end sparse-switch
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
    .line 42
    const v1, 0x7f0b00af

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 43
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment;->initView(Landroid/view/View;)V

    .line 44
    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 50
    invoke-super {p0, p1, p2}, Lcom/jiliguala/niuwa/common/base/b;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 51
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment;->addObserver()V

    .line 52
    return-void
.end method
