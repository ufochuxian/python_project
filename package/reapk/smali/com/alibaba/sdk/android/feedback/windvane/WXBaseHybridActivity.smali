.class public Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;
.super Lcom/alibaba/sdk/android/feedback/xblink/activity/XBBaseHybridActivity;

# interfaces
.implements Lcom/alibaba/sdk/android/feedback/xblink/webview/k;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "Registered"
    }
.end annotation


# static fields
.field public static final EXTERNAL:Ljava/lang/String; = "external"

.field public static final FROM:Ljava/lang/String; = "from"

.field public static final FROM_TAOBAO_ITEM:Ljava/lang/String; = "fromTaobaoItem"

.field public static final HIDE_TITLE:Ljava/lang/String; = "hideTitle"

.field public static final NEED_LOGIN:Ljava/lang/String; = "needLogin"

.field public static final NEED_SHOW_BACK:Ljava/lang/String; = "need_show_back"

.field public static final NEED_SHOW_NAV:Ljava/lang/String; = "need_show_nav"

.field public static final REMAI_REQESTCODE:I = 0x3

.field private static final t:Ljava/lang/String;


# instance fields
.field protected a:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

.field protected b:Z

.field protected c:Z

.field protected d:Lcom/alibaba/sdk/android/feedback/windvane/a;

.field protected e:Lcom/alibaba/sdk/android/feedback/windvane/n;

.field protected f:Lcom/alibaba/sdk/android/feedback/windvane/m;

.field private n:Landroid/widget/ProgressBar;

.field private o:Landroid/widget/TextView;

.field private p:Z

.field private q:Landroid/os/Handler;

.field private r:Z

.field private s:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->t:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alibaba/sdk/android/feedback/xblink/activity/XBBaseHybridActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->p:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->q:Landroid/os/Handler;

    const-string v0, "WXPageAction"

    iput-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->s:Ljava/lang/String;

    return-void
.end method

.method private d()V
    .locals 3

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->a:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

    iget-object v1, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->s:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->e:Lcom/alibaba/sdk/android/feedback/windvane/n;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->a:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

    const-string v1, "WXPage"

    iget-object v2, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->f:Lcom/alibaba/sdk/android/feedback/windvane/m;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private e()V
    .locals 4

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/activity/XBBaseHybridActivity;->h:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;->getWebview()Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->a:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->a:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    :cond_0
    new-instance v0, Lcom/alibaba/sdk/android/feedback/windvane/a;

    invoke-direct {v0, p0}, Lcom/alibaba/sdk/android/feedback/windvane/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->d:Lcom/alibaba/sdk/android/feedback/windvane/a;

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->a:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

    iget-object v1, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->d:Lcom/alibaba/sdk/android/feedback/windvane/a;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v0, Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    const v2, 0x1010078

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->n:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->n:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->n:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/sdk/android/feedback/a$c;->ali_feedback_progress_bar_states:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x6

    invoke-direct {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->a:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

    new-instance v2, Lcom/alibaba/sdk/android/feedback/windvane/b;

    iget-object v3, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->n:Landroid/widget/ProgressBar;

    invoke-direct {v2, v3}, Lcom/alibaba/sdk/android/feedback/windvane/b;-><init>(Landroid/widget/ProgressBar;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v1, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->a:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->getWvUIModel()Lcom/alibaba/sdk/android/feedback/xblink/webview/x;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->n:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/x;->a(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->h:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;->getWebview()Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->h:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;->getWebview()Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->getSubUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->d:Lcom/alibaba/sdk/android/feedback/windvane/a;

    iget-object v1, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/feedback/windvane/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->d:Lcom/alibaba/sdk/android/feedback/windvane/a;

    invoke-virtual {v0, p0}, Lcom/alibaba/sdk/android/feedback/windvane/a;->a(Lcom/alibaba/sdk/android/feedback/xblink/webview/k;)V

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->a:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

    new-instance v1, Lcom/alibaba/sdk/android/feedback/windvane/k;

    invoke-direct {v1, p0}, Lcom/alibaba/sdk/android/feedback/windvane/k;-><init>(Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private f()V
    .locals 2

    sget v0, Lcom/alibaba/sdk/android/feedback/a$e;->ali_feedback_error:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->h:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;

    invoke-virtual {v1, v0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;->setErrorView(Landroid/view/View;)V

    sget v1, Lcom/alibaba/sdk/android/feedback/a$d;->error_view_refresh_btn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/alibaba/sdk/android/feedback/windvane/l;

    invoke-direct {v1, p0}, Lcom/alibaba/sdk/android/feedback/windvane/l;-><init>(Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private g()V
    .locals 3

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "needLogin"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->b:Z

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "need_show_nav"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->c:Z

    return-void
.end method

.method public static getSubUserAgent()Ljava/lang/String;
    .locals 1

    const-string v0, "AliApp(WX/1)"

    return-object v0
.end method


# virtual methods
.method protected b()V
    .locals 3

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->h:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;

    iget-object v1, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->j:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->k:[B

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;->a(Ljava/lang/String;[B)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const-string v0, "onActivityResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->a:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->reload()V

    :cond_0
    sget v0, Lcom/alibaba/sdk/android/feedback/windvane/n;->a:I

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->a:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

    iget-object v1, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/alibaba/sdk/android/feedback/windvane/n;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/alibaba/sdk/android/feedback/windvane/n;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/sdk/android/feedback/windvane/n;->a(IILandroid/content/Intent;)V

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/sdk/android/feedback/xblink/activity/XBBaseHybridActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/alibaba/sdk/android/feedback/xblink/activity/XBBaseHybridActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "URL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->l:Ljava/lang/String;

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/activity/XBBaseHybridActivity;->h:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;->getWebview()Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->a:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->r:Z

    new-instance v0, Lcom/alibaba/sdk/android/feedback/windvane/n;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alibaba/sdk/android/feedback/windvane/n;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->e:Lcom/alibaba/sdk/android/feedback/windvane/n;

    new-instance v0, Lcom/alibaba/sdk/android/feedback/windvane/m;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alibaba/sdk/android/feedback/windvane/m;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->f:Lcom/alibaba/sdk/android/feedback/windvane/m;

    invoke-direct {p0}, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->f()V

    invoke-direct {p0}, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->d()V

    invoke-direct {p0}, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->e()V

    invoke-direct {p0}, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->g()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->r:Z

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->d:Lcom/alibaba/sdk/android/feedback/windvane/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->d:Lcom/alibaba/sdk/android/feedback/windvane/a;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/feedback/windvane/a;->a(Z)V

    :cond_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->h:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridViewController;->removeAllViews()V

    invoke-super {p0}, Lcom/alibaba/sdk/android/feedback/xblink/activity/XBBaseHybridActivity;->onDestroy()V

    return-void
.end method

.method public onReceivedError()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->o:Landroid/widget/TextView;

    if-nez v0, :cond_0

    sget v0, Lcom/alibaba/sdk/android/feedback/a$d;->webview_icon_back:I

    invoke-virtual {p0, v0}, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->o:Landroid/widget/TextView;

    :cond_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->o:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->o:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/sdk/android/feedback/a$a;->ali_feedback_black:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->o:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/sdk/android/feedback/a$c;->ali_feedback_common_back_btn_bg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->a:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->getWvUIModel()Lcom/alibaba/sdk/android/feedback/xblink/webview/x;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->a:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->getWvUIModel()Lcom/alibaba/sdk/android/feedback/xblink/webview/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/x;->d()V

    :cond_2
    return-void
.end method
