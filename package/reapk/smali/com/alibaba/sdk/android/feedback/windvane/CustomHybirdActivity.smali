.class public Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;
.super Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;


# static fields
.field public static final FROM:Ljava/lang/String; = "from"

.field public static final NEED_SHOW_BACK:Ljava/lang/String; = "need_show_back"

.field public static final NEED_TRANS:Ljava/lang/String; = "need_trans"

.field public static final PLUGIN_TITLE:Ljava/lang/String; = "plugin_title"

.field private static final n:Ljava/lang/String;


# instance fields
.field private o:Landroid/widget/TextView;

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->n:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;-><init>()V

    iput-boolean v1, p0, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->r:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->s:Ljava/lang/String;

    iput v1, p0, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->u:I

    return-void
.end method

.method static synthetic a(Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->e()Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;)I
    .locals 1

    iget v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->u:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->u:I

    return v0
.end method

.method static synthetic d(Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;)I
    .locals 1

    iget v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->u:I

    return v0
.end method

.method private d()V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "hideTitle"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->q:Z

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "need_show_back"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->p:Z

    sget v0, Lcom/alibaba/sdk/android/feedback/a$d;->title_back:I

    invoke-virtual {p0, v0}, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->p:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    new-instance v1, Lcom/alibaba/sdk/android/feedback/windvane/c;

    invoke-direct {v1, p0}, Lcom/alibaba/sdk/android/feedback/windvane/c;-><init>(Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->q:Z

    if-eqz v0, :cond_2

    sget v0, Lcom/alibaba/sdk/android/feedback/a$d;->title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/alibaba/sdk/android/feedback/a$d;->title_bar_shadow_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/alibaba/sdk/android/feedback/a$d;->webview_icon_back:I

    invoke-virtual {p0, v0}, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Lcom/alibaba/sdk/android/feedback/windvane/d;

    invoke-direct {v1, p0}, Lcom/alibaba/sdk/android/feedback/windvane/d;-><init>(Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "plugin_title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->s:Ljava/lang/String;

    sget v0, Lcom/alibaba/sdk/android/feedback/a$d;->title_text:I

    invoke-virtual {p0, v0}, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "URL"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->l:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "from"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->t:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "need_trans"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->r:Z

    sget v1, Lcom/alibaba/sdk/android/feedback/a$d;->title_button:I

    invoke-virtual {p0, v1}, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->o:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/sdk/android/feedback/windvane/e;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/sdk/android/feedback/windvane/e;-><init>(Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lcom/alibaba/sdk/android/feedback/impl/FeedbackAPI;->mUICustomInfo:Ljava/util/Map;

    const-string v1, "themeColor"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/alibaba/sdk/android/feedback/impl/FeedbackAPI;->mUICustomInfo:Ljava/util/Map;

    const-string v2, "textColor"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    :try_start_0
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/alibaba/sdk/android/feedback/util/l;->a(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_3
    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_1
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/feedback/util/l;->a(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private e()Z
    .locals 2

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->a:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->a:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FeedbackAPI host"

    invoke-static {v1, v0}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alibaba/sdk/android/feedback/util/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FeedbackAPI host"

    const-string v1, "can go back"

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a()Lcom/alibaba/sdk/android/feedback/xblink/e/a;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    const-string v0, "Back"

    const-string v1, "custom back"

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/alibaba/sdk/android/feedback/a$e;->ali_feedback_container_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->setContentView(I)V

    sget v0, Lcom/alibaba/sdk/android/feedback/a$d;->hybird_container:I

    invoke-virtual {p0, v0}, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->h:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    sput-object p0, Lcom/alibaba/sdk/android/feedback/impl/FeedbackAPI;->activity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->j:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->l:Ljava/lang/String;

    :cond_0
    invoke-direct {p0}, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->d()V

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->b()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->onDestroy()V

    invoke-static {}, Lcom/alibaba/sdk/android/feedback/impl/FeedbackAPI;->cleanActivity()V

    :try_start_0
    sget-object v0, Lcom/alibaba/sdk/android/feedback/impl/FeedbackAPI;->leaveCallback:Ljava/util/concurrent/Callable;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alibaba/sdk/android/feedback/impl/FeedbackAPI;->leaveCallback:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onUrlIntercept(Lcom/alibaba/sdk/android/feedback/xblink/e/a/a;I)V
    .locals 0

    return-void
.end method
