.class public Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;
.super Lcom/jiliguala/niuwa/common/base/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity$CreditsListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static final VERSION:Ljava/lang/String; = "1.0.7"

.field private static activityStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;",
            ">;"
        }
    .end annotation
.end field

.field public static creditsListener:Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity$CreditsListener;

.field private static ua:Ljava/lang/String;


# instance fields
.field private RequestCode:I

.field protected delayRefresh:Ljava/lang/Boolean;

.field protected ifRefresh:Ljava/lang/Boolean;

.field private final latch:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected mBackView:Landroid/widget/ImageView;

.field protected mLinearLayout:Landroid/widget/FrameLayout;

.field protected mNavigationBar:Landroid/widget/RelativeLayout;

.field protected mProgress:Landroid/view/View;

.field protected mShare:Landroid/widget/TextView;

.field protected mTitle:Landroid/widget/TextView;

.field protected mWebView:Landroid/webkit/WebView;

.field protected navColor:Ljava/lang/String;

.field protected shareColor:Ljava/lang/Long;

.field protected shareSubtitle:Ljava/lang/String;

.field protected shareThumbnail:Ljava/lang/String;

.field protected shareTitle:Ljava/lang/String;

.field protected shareUrl:Ljava/lang/String;

.field protected titleColor:Ljava/lang/String;

.field protected url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 127
    const-class v0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 125
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;-><init>()V

    .line 131
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->latch:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 137
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->ifRefresh:Ljava/lang/Boolean;

    .line 138
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->delayRefresh:Ljava/lang/Boolean;

    .line 149
    const/16 v0, 0x64

    iput v0, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->RequestCode:I

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->latch:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->showProgress()V

    return-void
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->dismissProgress()V

    return-void
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dpValue"    # F

    .prologue
    .line 155
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 156
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private dismissProgress()V
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->mProgress:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->mProgress:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 352
    :cond_0
    return-void
.end method

.method private loadUrl(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 335
    if-eqz p1, :cond_0

    .line 336
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 338
    :cond_0
    return-void
.end method

.method private showProgress()V
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->mProgress:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->mProgress:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 345
    :cond_0
    return-void
.end method


# virtual methods
.method public finishActivity(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 643
    if-eqz p1, :cond_0

    .line 644
    sget-object v0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->activityStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 645
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 647
    :cond_0
    return-void
.end method

.method public finishUpActivity()V
    .locals 3

    .prologue
    .line 633
    sget-object v2, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->activityStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v1

    .line 634
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-ge v0, v2, :cond_0

    .line 635
    sget-object v2, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->activityStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->finish()V

    .line 634
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 637
    :cond_0
    return-void
.end method

.method protected initNavigationBar()V
    .locals 14

    .prologue
    const/16 v13, 0xf

    const/4 v12, 0x1

    const/4 v11, -0x1

    const/high16 v10, 0x41a00000    # 20.0f

    const/4 v9, 0x0

    .line 389
    const/high16 v7, 0x43480000    # 200.0f

    invoke-static {p0, v7}, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->dip2px(Landroid/content/Context;F)I

    move-result v2

    .line 390
    .local v2, "dp200":I
    const/high16 v7, 0x42480000    # 50.0f

    invoke-static {p0, v7}, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->dip2px(Landroid/content/Context;F)I

    move-result v3

    .line 391
    .local v3, "dp50":I
    invoke-static {p0, v10}, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->dip2px(Landroid/content/Context;F)I

    move-result v1

    .line 392
    .local v1, "dp20":I
    const/high16 v7, 0x41200000    # 10.0f

    invoke-static {p0, v7}, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->dip2px(Landroid/content/Context;F)I

    move-result v0

    .line 394
    .local v0, "dp10":I
    new-instance v7, Landroid/widget/RelativeLayout;

    invoke-direct {v7, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->mNavigationBar:Landroid/widget/RelativeLayout;

    .line 395
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->mNavigationBar:Landroid/widget/RelativeLayout;

    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v8, v11, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 397
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->mTitle:Landroid/widget/TextView;

    .line 398
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 399
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setLines(I)V

    .line 400
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 401
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->mNavigationBar:Landroid/widget/RelativeLayout;

    iget-object v8, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 402
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 403
    .local v4, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v7, 0xd

    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 405
    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->mBackView:Landroid/widget/ImageView;

    .line 406
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->mBackView:Landroid/widget/ImageView;

    const v8, 0x108004c

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 407
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 408
    .local v5, "mBackLayout":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v5, v13, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 409
    const/16 v7, 0x9

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 410
    invoke-virtual {v5, v0, v9, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 411
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->mNavigationBar:Landroid/widget/RelativeLayout;

    iget-object v8, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->mBackView:Landroid/widget/ImageView;

    invoke-virtual {v7, v8, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 414
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->mShare:Landroid/widget/TextView;

    .line 415
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->mShare:Landroid/widget/TextView;

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setLines(I)V

    .line 416
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->mShare:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 417
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->mShare:Landroid/widget/TextView;

    const-string v8, "\u5206\u4eab"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 418
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->mShare:Landroid/widget/TextView;

    invoke-virtual {v7, v9, v9, v0, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 419
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->mShare:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->shareColor:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 420
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->mNavigationBar:Landroid/widget/RelativeLayout;

    iget-object v8, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->mShare:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 421
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->mShare:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 422
    .local v6, "shareLp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v6, v13, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 423
    const/16 v7, 0xb

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 425
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->mShare:Landroid/widget/TextView;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 426
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->mShare:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setClickable(Z)V

    .line 427
    return-void
.end method

.method protected initView()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 362
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->mLinearLayout:Landroid/widget/FrameLayout;

    .line 363
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->mLinearLayout:Landroid/widget/FrameLayout;

    const v4, -0x777778

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 364
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->mLinearLayout:Landroid/widget/FrameLayout;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 367
    const/high16 v3, 0x42480000    # 50.0f

    invoke-static {p0, v3}, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->dip2px(Landroid/content/Context;F)I

    move-result v0

    .line 375
    .local v0, "height50dp":I
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->initWebView()V

    .line 377
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->mLinearLayout:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 379
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 380
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f0b0167

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->mProgress:Landroid/view/View;

    .line 381
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 382
    .local v2, "ll":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->mLinearLayout:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->mProgress:Landroid/view/View;

    invoke-virtual {v3, v4, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 383
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->mProgress:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->bringToFront()V

    .line 385
    return-void
.end method

.method protected initWebView()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 431
    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->mWebView:Landroid/webkit/WebView;

    .line 432
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 434
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 437
    .local v0, "settings":Landroid/webkit/WebSettings;
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 438
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 439
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 440
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 441
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 442
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 443
    sget-object v1, Landroid/webkit/WebSettings$ZoomDensity;->MEDIUM:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    .line 444
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 446
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 448
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-le v1, v2, :cond_0

    .line 449
    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON_DEMAND:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 453
    :cond_0
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 454
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setLongClickable(Z)V

    .line 455
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setScrollbarFadingEnabled(Z)V

    .line 456
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->mWebView:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 457
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setDrawingCacheEnabled(Z)V

    .line 459
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 460
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 461
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 462
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 570
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 571
    const-string v0, "url"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 572
    const-string v0, "url"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->url:Ljava/lang/String;

    .line 574
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->url:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->loadUrl(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 575
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->ifRefresh:Ljava/lang/Boolean;

    .line 578
    :cond_0
    return-void
.end method

.method protected onBackClick()V
    .locals 2

    .prologue
    .line 355
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 356
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0x63

    invoke-virtual {p0, v1, v0}, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->setResult(ILandroid/content/Intent;)V

    .line 357
    invoke-virtual {p0, p0}, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->finishActivity(Landroid/app/Activity;)V

    .line 358
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v9, 0x10

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 161
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 162
    invoke-virtual {p0, v7}, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->setRequestedOrientation(I)V

    .line 163
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "url"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->url:Ljava/lang/String;

    .line 164
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->url:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 165
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "url can\'t be blank"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 169
    :cond_0
    sget-object v4, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->activityStack:Ljava/util/Stack;

    if-nez v4, :cond_1

    .line 170
    new-instance v4, Ljava/util/Stack;

    invoke-direct {v4}, Ljava/util/Stack;-><init>()V

    sput-object v4, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->activityStack:Ljava/util/Stack;

    .line 172
    :cond_1
    sget-object v4, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->activityStack:Ljava/util/Stack;

    invoke-virtual {v4, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "titleColor"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->titleColor:Ljava/lang/String;

    .line 176
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0xff"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->titleColor:Ljava/lang/String;

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->titleColor:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 177
    .local v2, "titleColorTemp":Ljava/lang/String;
    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 179
    .local v3, "titlel":Ljava/lang/Long;
    iput-object v3, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->shareColor:Ljava/lang/Long;

    .line 181
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "navColor"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->navColor:Ljava/lang/String;

    .line 182
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0xff"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->navColor:Ljava/lang/String;

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->navColor:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "navColorTemp":Ljava/lang/String;
    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 186
    .local v1, "navl":Ljava/lang/Long;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->initView()V

    .line 187
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->mLinearLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v4}, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->setContentView(Landroid/view/View;)V

    .line 209
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->mShare:Landroid/widget/TextView;

    if-eqz v4, :cond_2

    .line 210
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->mShare:Landroid/widget/TextView;

    new-instance v5, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity$1;

    invoke-direct {v5, p0}, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity$1;-><init>(Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    :cond_2
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v5, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity$2;

    invoke-direct {v5, p0}, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity$2;-><init>(Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;)V

    const-string v6, "duiba_app"

    invoke-virtual {v4, v5, v6}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    sget-object v4, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->ua:Ljava/lang/String;

    if-nez v4, :cond_3

    .line 264
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Duiba/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "1.0.7"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->ua:Ljava/lang/String;

    .line 266
    :cond_3
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    sget-object v5, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->ua:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 268
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v5, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity$3;

    invoke-direct {v5, p0}, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity$3;-><init>(Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 275
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v5, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity$4;

    invoke-direct {v5, p0}, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity$4;-><init>(Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 327
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->url:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->loadUrl(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 328
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 609
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 610
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->onBackClick()V

    .line 611
    const/4 v0, 0x1

    .line 613
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 467
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 582
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onResume()V

    .line 583
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->ifRefresh:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 584
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->url:Ljava/lang/String;

    .line 586
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->url:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->loadUrl(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 587
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->ifRefresh:Ljava/lang/Boolean;

    .line 605
    :goto_0
    return-void

    .line 588
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->delayRefresh:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 589
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->reload()V

    .line 590
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->delayRefresh:Ljava/lang/Boolean;

    goto :goto_0

    .line 593
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_2

    .line 594
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->mWebView:Landroid/webkit/WebView;

    const-string v2, "if(window.onDBNewOpenBack){onDBNewOpenBack()}"

    new-instance v3, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity$6;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity$6;-><init>(Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    .line 601
    :cond_2
    const-string v0, "javascript:if(window.onDBNewOpenBack){onDBNewOpenBack()}"

    .line 602
    .local v0, "script":Ljava/lang/String;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->mWebView:Landroid/webkit/WebView;

    invoke-direct {p0, v1, v0}, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->loadUrl(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected request()V
    .locals 0

    .prologue
    .line 332
    return-void
.end method

.method public setAllActivityDelayRefresh()V
    .locals 4

    .prologue
    .line 654
    sget-object v2, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->activityStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v1

    .line 655
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 656
    sget-object v2, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->activityStack:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p0, :cond_0

    .line 657
    sget-object v2, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->activityStack:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->delayRefresh:Ljava/lang/Boolean;

    .line 655
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 660
    :cond_1
    return-void
.end method

.method protected setShareInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "shareUrl"    # Ljava/lang/String;
    .param p2, "shareThumbnail"    # Ljava/lang/String;
    .param p3, "shareTitle"    # Ljava/lang/String;
    .param p4, "shareSubtitle"    # Ljava/lang/String;

    .prologue
    .line 623
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->shareUrl:Ljava/lang/String;

    .line 624
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->shareThumbnail:Ljava/lang/String;

    .line 625
    iput-object p4, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->shareSubtitle:Ljava/lang/String;

    .line 626
    iput-object p3, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->shareTitle:Ljava/lang/String;

    .line 627
    return-void
.end method

.method protected shouldOverrideUrlByDuiba(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 10
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 477
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 478
    .local v3, "uri":Landroid/net/Uri;
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->url:Ljava/lang/String;

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 480
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->loadUrl(Landroid/webkit/WebView;Ljava/lang/String;)V

    move v5, v6

    .line 565
    :cond_0
    :goto_0
    return v5

    .line 484
    :cond_1
    const-string v7, "tel:"

    invoke-virtual {p2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 485
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.DIAL"

    invoke-direct {v2, v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 486
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->startActivity(Landroid/content/Intent;)V

    move v5, v6

    .line 487
    goto :goto_0

    .line 489
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    const-string v7, "http://"

    invoke-virtual {p2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "https://"

    invoke-virtual {p2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 493
    :cond_3
    const-string v7, "/client/dbshare"

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 494
    const-string v7, "content"

    invoke-virtual {v3, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 495
    .local v0, "content":Ljava/lang/String;
    sget-object v7, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->creditsListener:Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity$CreditsListener;

    if-eqz v7, :cond_4

    if-eqz v0, :cond_4

    .line 496
    const-string v7, "\\|"

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 497
    .local v1, "dd":[Ljava/lang/String;
    array-length v7, v1

    const/4 v8, 0x4

    if-ne v7, v8, :cond_4

    .line 498
    aget-object v5, v1, v5

    aget-object v7, v1, v6

    const/4 v8, 0x2

    aget-object v8, v1, v8

    const/4 v9, 0x3

    aget-object v9, v1, v9

    invoke-virtual {p0, v5, v7, v8, v9}, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->setShareInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .end local v1    # "dd":[Ljava/lang/String;
    :cond_4
    move v5, v6

    .line 504
    goto :goto_0

    .line 507
    .end local v0    # "content":Ljava/lang/String;
    :cond_5
    const-string v7, "/client/dblogin"

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 508
    sget-object v5, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->creditsListener:Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity$CreditsListener;

    if-eqz v5, :cond_6

    .line 509
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v7, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity$5;

    invoke-direct {v7, p0}, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity$5;-><init>(Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;)V

    invoke-virtual {v5, v7}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    :cond_6
    move v5, v6

    .line 516
    goto :goto_0

    .line 518
    :cond_7
    const-string v7, "dbnewopen"

    invoke-virtual {p2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 519
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 520
    .restart local v2    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v2, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 521
    const-string v5, "navColor"

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->navColor:Ljava/lang/String;

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 522
    const-string v5, "titleColor"

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->titleColor:Ljava/lang/String;

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 523
    const-string v5, "dbnewopen"

    const-string v7, "none"

    invoke-virtual {p2, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 524
    const-string v5, "url"

    invoke-virtual {v2, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 525
    iget v5, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->RequestCode:I

    invoke-virtual {p0, v2, v5}, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .end local v2    # "intent":Landroid/content/Intent;
    :goto_1
    move v5, v6

    .line 565
    goto/16 :goto_0

    .line 526
    :cond_8
    const-string v7, "dbbackrefresh"

    invoke-virtual {p2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 527
    const-string v5, "dbbackrefresh"

    const-string v7, "none"

    invoke-virtual {p2, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 528
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 529
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v5, "url"

    invoke-virtual {v2, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 530
    const-string v5, "navColor"

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->navColor:Ljava/lang/String;

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 531
    const-string v5, "titleColor"

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->titleColor:Ljava/lang/String;

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 532
    iget v5, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->RequestCode:I

    invoke-virtual {p0, v5, v2}, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->setResult(ILandroid/content/Intent;)V

    .line 533
    invoke-virtual {p0, p0}, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->finishActivity(Landroid/app/Activity;)V

    goto :goto_1

    .line 534
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_9
    const-string v7, "dbbackrootrefresh"

    invoke-virtual {p2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 535
    const-string v7, "dbbackrootrefresh"

    const-string v8, "none"

    invoke-virtual {p2, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 536
    sget-object v7, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->activityStack:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->size()I

    move-result v7

    if-ne v7, v6, :cond_a

    .line 537
    invoke-virtual {p0, p0}, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->finishActivity(Landroid/app/Activity;)V

    goto :goto_1

    .line 539
    :cond_a
    sget-object v7, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->activityStack:Ljava/util/Stack;

    invoke-virtual {v7, v5}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, v5, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->ifRefresh:Ljava/lang/Boolean;

    .line 540
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->finishUpActivity()V

    goto :goto_1

    .line 542
    :cond_b
    const-string v5, "dbbackroot"

    invoke-virtual {p2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 543
    const-string v5, "dbbackroot"

    const-string v7, "none"

    invoke-virtual {p2, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 544
    sget-object v5, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->activityStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v5

    if-ne v5, v6, :cond_c

    .line 545
    invoke-virtual {p0, p0}, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->finishActivity(Landroid/app/Activity;)V

    goto :goto_1

    .line 547
    :cond_c
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->finishUpActivity()V

    goto/16 :goto_1

    .line 549
    :cond_d
    const-string v5, "dbback"

    invoke-virtual {p2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 550
    const-string v5, "dbback"

    const-string v7, "none"

    invoke-virtual {p2, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 551
    invoke-virtual {p0, p0}, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->finishActivity(Landroid/app/Activity;)V

    goto/16 :goto_1

    .line 553
    :cond_e
    const-string v5, ".apk"

    invoke-virtual {p2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_f

    const-string v5, ".apk?"

    invoke-virtual {p2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 554
    :cond_f
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v4, v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 555
    .local v4, "viewIntent":Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->startActivity(Landroid/content/Intent;)V

    move v5, v6

    .line 556
    goto/16 :goto_0

    .line 558
    .end local v4    # "viewIntent":Landroid/content/Intent;
    :cond_10
    const-string v5, "autologin"

    invoke-virtual {p2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_11

    sget-object v5, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->activityStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v5

    if-le v5, v6, :cond_11

    .line 560
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->setAllActivityDelayRefresh()V

    .line 563
    :cond_11
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->loadUrl(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto/16 :goto_1
.end method
