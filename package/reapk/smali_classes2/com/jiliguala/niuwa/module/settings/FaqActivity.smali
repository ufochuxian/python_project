.class public Lcom/jiliguala/niuwa/module/settings/FaqActivity;
.super Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mRedDot:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/settings/FaqActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/FaqActivity;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/FaqActivity;->mRedDot:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/settings/FaqActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/FaqActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/settings/FaqActivity;->showRedDot(Z)V

    return-void
.end method

.method private checkFeedBack()V
    .locals 1

    .prologue
    .line 163
    new-instance v0, Lcom/jiliguala/niuwa/module/settings/FaqActivity$2;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/settings/FaqActivity$2;-><init>(Lcom/jiliguala/niuwa/module/settings/FaqActivity;)V

    invoke-static {v0}, Lcom/alibaba/sdk/android/feedback/impl/FeedbackAPI;->getFeedbackUnreadCount(Lcom/alibaba/sdk/android/feedback/util/IUnreadCountCallback;)V

    .line 178
    return-void
.end method

.method private doFeedback()V
    .locals 3

    .prologue
    .line 125
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 126
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/jiliguala/niuwa/module/settings/AliFeedBackActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 127
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/settings/FaqActivity;->startActivity(Landroid/content/Intent;)V

    .line 128
    const v1, 0x7f01001d

    const v2, 0x7f010013

    invoke-virtual {p0, v1, v2}, Lcom/jiliguala/niuwa/module/settings/FaqActivity;->overridePendingTransition(II)V

    .line 129
    return-void
.end method

.method private finishWithAnim()V
    .locals 2

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/FaqActivity;->finish()V

    .line 144
    const v0, 0x7f010012

    const v1, 0x7f01001e

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/settings/FaqActivity;->overridePendingTransition(II)V

    .line 145
    return-void
.end method

.method private goContactUs()V
    .locals 3

    .prologue
    .line 119
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jiliguala/niuwa/module/settings/ContactUsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 120
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/settings/FaqActivity;->startActivity(Landroid/content/Intent;)V

    .line 121
    const v1, 0x7f01001d

    const v2, 0x7f010013

    invoke-virtual {p0, v1, v2}, Lcom/jiliguala/niuwa/module/settings/FaqActivity;->overridePendingTransition(II)V

    .line 122
    return-void
.end method

.method private initUi()V
    .locals 2

    .prologue
    .line 28
    const v1, 0x7f090609

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/settings/FaqActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 29
    .local v0, "webContainer":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/settings/FaqActivity;->initWebView(Landroid/view/View;)V

    .line 30
    const v1, 0x7f090014

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/settings/FaqActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    const v1, 0x7f09001f

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/settings/FaqActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    const v1, 0x7f0901fe

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/settings/FaqActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    const v1, 0x7f0901f6

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/settings/FaqActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/settings/FaqActivity;->mRedDot:Landroid/widget/ImageView;

    .line 34
    return-void
.end method

.method private showRedDot(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 154
    new-instance v0, Lcom/jiliguala/niuwa/module/settings/FaqActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/jiliguala/niuwa/module/settings/FaqActivity$1;-><init>(Lcom/jiliguala/niuwa/module/settings/FaqActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/settings/FaqActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 160
    return-void
.end method


# virtual methods
.method public dealWriteResult(Ljava/lang/String;)V
    .locals 0
    .param p1, "jsonResult"    # Ljava/lang/String;

    .prologue
    .line 54
    return-void
.end method

.method public doShare(Ljava/lang/String;)V
    .locals 0
    .param p1, "shareJson"    # Ljava/lang/String;

    .prologue
    .line 49
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 134
    invoke-super {p0}, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->onBackPressed()V

    .line 135
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/FaqActivity;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/FaqActivity;->goBack()V

    .line 140
    :goto_0
    return-void

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/FaqActivity;->pressBack()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 103
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 116
    :goto_0
    return-void

    .line 105
    :sswitch_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/FaqActivity;->finishWithAnim()V

    goto :goto_0

    .line 108
    :sswitch_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/FaqActivity;->onBackPressed()V

    goto :goto_0

    .line 111
    :sswitch_2
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/FaqActivity;->goContactUs()V

    goto :goto_0

    .line 103
    :sswitch_data_0
    .sparse-switch
        0x7f090014 -> :sswitch_1
        0x7f09001f -> :sswitch_0
        0x7f0901fe -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const v0, 0x7f0b0029

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/settings/FaqActivity;->setContentView(I)V

    .line 23
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/FaqActivity;->initUi()V

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/jiliguala/niuwa/logic/l/f;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/app-faq.html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/settings/FaqActivity;->loadUrl(Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public onGameCompleted(Ljava/lang/String;)V
    .locals 0
    .param p1, "gameID"    # Ljava/lang/String;

    .prologue
    .line 74
    return-void
.end method

.method public onLoadFinished(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 89
    return-void
.end method

.method public onLoadStarted(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 84
    return-void
.end method

.method public onReceivedTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 94
    return-void
.end method

.method public onRefresh()V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 149
    invoke-super {p0}, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->onResume()V

    .line 151
    return-void
.end method

.method public onSectionCompleted(Ljava/lang/String;)V
    .locals 0
    .param p1, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 69
    return-void
.end method

.method public showRightTopBtn(Ljava/lang/String;)V
    .locals 0
    .param p1, "show"    # Ljava/lang/String;

    .prologue
    .line 44
    return-void
.end method

.method public showRightTopBtn(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 39
    return-void
.end method

.method public startRecording(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 59
    return-void
.end method

.method public startRecordingPron(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 79
    return-void
.end method

.method public stopRecording()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method
