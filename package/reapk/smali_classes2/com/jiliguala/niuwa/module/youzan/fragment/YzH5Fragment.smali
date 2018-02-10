.class public Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;
.super Lcom/jiliguala/niuwa/module/youzan/fragment/WebViewFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$CustomChromeClient;,
        Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$a;
    }
.end annotation


# static fields
.field private static final FILECHOOSER_RESULTCODE:I = 0x1000

.field public static final FRAGMENT_TAG:Ljava/lang/String;

.field public static final KEY_FROM_HOME_PAGE:Ljava/lang/String; = "FROM_HOME_PAGE"

.field public static final KEY_FROM_ORDER:Ljava/lang/String; = "FROM_ORDER"

.field public static final KEY_NEED_BACK:Ljava/lang/String; = "NEED_BACK"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private btnClose:Landroid/view/View;

.field buttonShare:Landroid/widget/ImageView;

.field private cpb:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;

.field private isFromHomePage:Z

.field private isFromOrder:Z

.field private mUploadCallbackAboveL:Landroid/webkit/ValueCallback;

.field private mUploadMessage:Landroid/webkit/ValueCallback;

.field private needBack:Z

.field private progressBar:Landroid/view/View;

.field private shareprefix:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private titleView:Landroid/widget/TextView;

.field private url:Ljava/lang/String;

.field private urlHistory:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private web:Lcom/youzan/androidsdk/basic/YouzanBrowser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const-class v0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->FRAGMENT_TAG:Ljava/lang/String;

    .line 75
    const-class v0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/youzan/fragment/WebViewFragment;-><init>()V

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->needBack:Z

    .line 85
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->isFromHomePage:Z

    .line 86
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->isFromOrder:Z

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->shareprefix:Ljava/util/ArrayList;

    .line 92
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->urlHistory:Ljava/util/LinkedList;

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->getYouzanToken()V

    return-void
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->openWebview()V

    return-void
.end method

.method static synthetic access$1000(Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->btnClose:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->titleView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;
    .param p1, "x1"    # Landroid/webkit/ValueCallback;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->mUploadMessage:Landroid/webkit/ValueCallback;

    return-object p1
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;)Lcom/youzan/androidsdk/basic/YouzanBrowser;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->web:Lcom/youzan/androidsdk/basic/YouzanBrowser;

    return-object v0
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->unRegisterAll()V

    return-void
.end method

.method static synthetic access$400(Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->isFromHomePage:Z

    return v0
.end method

.method static synthetic access$500(Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->requestServerAndLoad()V

    return-void
.end method

.method static synthetic access$600(Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->addToHistory(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->refreshShareBtnState(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;)Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->cpb:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;

    return-object v0
.end method

.method static synthetic access$900(Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->progressBar:Landroid/view/View;

    return-object v0
.end method

.method private addToHistory(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 480
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 481
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->urlHistory:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 485
    :cond_1
    return-void
.end method

.method public static findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;
    .locals 2
    .param p0, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 106
    sget-object v1, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    .line 107
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;
    if-nez v0, :cond_0

    .line 108
    new-instance v0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    .end local v0    # "fragment":Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;
    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;-><init>()V

    .line 110
    .restart local v0    # "fragment":Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;
    :cond_0
    return-object v0
.end method

.method public static findOrCreateFragment(Landroid/support/v4/app/ag;II)Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;
    .locals 2
    .param p0, "fm"    # Landroid/support/v4/app/ag;
    .param p1, "viewId"    # I
    .param p2, "position"    # I

    .prologue
    .line 97
    invoke-static {p1, p2}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->makeFragmentName(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    .line 98
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;
    if-nez v0, :cond_0

    .line 99
    new-instance v0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    .end local v0    # "fragment":Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;
    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;-><init>()V

    .line 102
    .restart local v0    # "fragment":Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;
    :cond_0
    return-object v0
.end method

.method private getLastUrlFromHistory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->urlHistory:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->urlHistory:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->urlHistory:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 491
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "about:blank"

    goto :goto_0
.end method

.method private getYouzanToken()V
    .locals 3

    .prologue
    .line 283
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->mSubscriptions:Lrx/i/b;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    .line 284
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v1

    .line 285
    invoke-interface {v1}, Lcom/jiliguala/niuwa/logic/network/d;->g()Lrx/e;

    move-result-object v1

    .line 286
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 287
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 288
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$4;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$4;-><init>(Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;)V

    .line 289
    invoke-virtual {v1, v2}, Lrx/e;->b(Lrx/f;)Lrx/m;

    move-result-object v1

    .line 283
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 312
    return-void
.end method

.method private initBridge()V
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->web:Lcom/youzan/androidsdk/basic/YouzanBrowser;

    new-instance v1, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$a;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$a;-><init>(Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;)V

    invoke-virtual {v0, v1}, Lcom/youzan/androidsdk/basic/YouzanBrowser;->setWebViewClient(Lcom/youzan/androidsdk/basic/web/plugin/c;)V

    .line 239
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->web:Lcom/youzan/androidsdk/basic/YouzanBrowser;

    new-instance v1, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$CustomChromeClient;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$CustomChromeClient;-><init>(Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;)V

    invoke-virtual {v0, v1}, Lcom/youzan/androidsdk/basic/YouzanBrowser;->setWebChromeClient(Lcom/youzan/androidsdk/basic/web/plugin/b;)V

    .line 242
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->web:Lcom/youzan/androidsdk/basic/YouzanBrowser;

    new-instance v1, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$1;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$1;-><init>(Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;)V

    invoke-virtual {v0, v1}, Lcom/youzan/androidsdk/basic/YouzanBrowser;->subscribe(Lcom/youzan/androidsdk/b/f;)V

    .line 261
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->web:Lcom/youzan/androidsdk/basic/YouzanBrowser;

    new-instance v1, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$2;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$2;-><init>(Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;)V

    invoke-virtual {v0, v1}, Lcom/youzan/androidsdk/basic/YouzanBrowser;->subscribe(Lcom/youzan/androidsdk/b/f;)V

    .line 269
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->web:Lcom/youzan/androidsdk/basic/YouzanBrowser;

    new-instance v1, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$3;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$3;-><init>(Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;)V

    invoke-virtual {v0, v1}, Lcom/youzan/androidsdk/basic/YouzanBrowser;->subscribe(Lcom/youzan/androidsdk/b/f;)V

    .line 279
    return-void
.end method

.method private initView(Landroid/view/View;)Landroid/view/View;
    .locals 7
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    const/16 v5, 0x8

    .line 335
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 337
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->getWebView()Lcom/youzan/androidsdk/basic/YouzanBrowser;

    move-result-object v3

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->web:Lcom/youzan/androidsdk/basic/YouzanBrowser;

    .line 339
    const v3, 0x7f090402

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->progressBar:Landroid/view/View;

    .line 340
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->progressBar:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 341
    const v3, 0x7f090591

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 342
    .local v2, "topBar":Landroid/view/View;
    iget-boolean v3, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->isFromOrder:Z

    if-nez v3, :cond_2

    .line 343
    iget-boolean v3, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->isFromHomePage:Z

    if-nez v3, :cond_1

    move v3, v4

    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 347
    :goto_1
    const v3, 0x7f090038

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->buttonShare:Landroid/widget/ImageView;

    .line 348
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->buttonShare:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 349
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->buttonShare:Landroid/widget/ImageView;

    new-instance v6, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$5;

    invoke-direct {v6, p0}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$5;-><init>(Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;)V

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 357
    const v3, 0x7f090014

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 358
    .local v0, "exitBtn":Landroid/widget/ImageView;
    iget-boolean v3, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->needBack:Z

    if-eqz v3, :cond_3

    :goto_2
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 359
    new-instance v3, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$6;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$6;-><init>(Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    const v3, 0x7f09057a

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->titleView:Landroid/widget/TextView;

    .line 369
    iget-boolean v3, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->isFromHomePage:Z

    if-nez v3, :cond_0

    .line 370
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->titleView:Landroid/widget/TextView;

    const-string v4, "\u5471\u5e97"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    :cond_0
    const v3, 0x7f0902e6

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->cpb:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;

    .line 374
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->cpb:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;

    invoke-virtual {v3, v5}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->setVisibility(I)V

    .line 376
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->web:Lcom/youzan/androidsdk/basic/YouzanBrowser;

    invoke-virtual {v3}, Lcom/youzan/androidsdk/basic/YouzanBrowser;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 377
    .local v1, "settings":Landroid/webkit/WebSettings;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 379
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->url:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->refreshShareBtnState(Ljava/lang/String;)V

    .line 381
    const v3, 0x7f09001f

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->btnClose:Landroid/view/View;

    .line 383
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->btnClose:Landroid/view/View;

    new-instance v4, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$7;

    invoke-direct {v4, p0}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$7;-><init>(Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 396
    .end local v0    # "exitBtn":Landroid/widget/ImageView;
    .end local v1    # "settings":Landroid/webkit/WebSettings;
    .end local v2    # "topBar":Landroid/view/View;
    .end local p1    # "rootView":Landroid/view/View;
    :goto_3
    return-object p1

    .restart local v2    # "topBar":Landroid/view/View;
    .restart local p1    # "rootView":Landroid/view/View;
    :cond_1
    move v3, v5

    .line 343
    goto :goto_0

    .line 345
    :cond_2
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .restart local v0    # "exitBtn":Landroid/widget/ImageView;
    :cond_3
    move v4, v5

    .line 358
    goto :goto_2

    .line 396
    .end local v0    # "exitBtn":Landroid/widget/ImageView;
    .end local v2    # "topBar":Landroid/view/View;
    :cond_4
    const/4 p1, 0x0

    goto :goto_3
.end method

.method public static makeFragmentName(II)Ljava/lang/String;
    .locals 2
    .param p0, "viewId"    # I
    .param p1, "position"    # I

    .prologue
    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android:switcher:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private onActivityResultAboveL(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 454
    const/16 v5, 0x1000

    if-ne p1, v5, :cond_0

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->mUploadCallbackAboveL:Landroid/webkit/ValueCallback;

    if-nez v5, :cond_1

    .line 476
    :cond_0
    :goto_0
    return-void

    .line 457
    :cond_1
    const/4 v4, 0x0

    .line 458
    .local v4, "results":[Landroid/net/Uri;
    const/4 v5, -0x1

    if-ne p2, v5, :cond_2

    .line 459
    if-nez p3, :cond_3

    .line 474
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->mUploadCallbackAboveL:Landroid/webkit/ValueCallback;

    invoke-interface {v5, v4}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 475
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->mUploadCallbackAboveL:Landroid/webkit/ValueCallback;

    goto :goto_0

    .line 461
    :cond_3
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    .line 462
    .local v1, "dataString":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    .line 463
    .local v0, "clipData":Landroid/content/ClipData;
    if-eqz v0, :cond_4

    .line 464
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v5

    new-array v4, v5, [Landroid/net/Uri;

    .line 465
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 466
    invoke-virtual {v0, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    .line 467
    .local v3, "item":Landroid/content/ClipData$Item;
    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v5

    aput-object v5, v4, v2

    .line 465
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 470
    .end local v2    # "i":I
    .end local v3    # "item":Landroid/content/ClipData$Item;
    :cond_4
    if-eqz v1, :cond_2

    .line 471
    const/4 v5, 0x1

    new-array v4, v5, [Landroid/net/Uri;

    .end local v4    # "results":[Landroid/net/Uri;
    const/4 v5, 0x0

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    aput-object v6, v4, v5

    .restart local v4    # "results":[Landroid/net/Uri;
    goto :goto_1
.end method

.method private openWebview()V
    .locals 1

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->url:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->loadPage(Ljava/lang/String;)V

    .line 156
    :cond_0
    return-void
.end method

.method private refreshShareBtnState(Ljava/lang/String;)V
    .locals 4
    .param p1, "loadingUrl"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x8

    .line 315
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 316
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->shareprefix:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->buttonShare:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    .line 317
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->shareprefix:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 318
    .local v0, "sharePrefix":Ljava/lang/String;
    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 319
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->buttonShare:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 329
    .end local v0    # "sharePrefix":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 322
    .restart local v0    # "sharePrefix":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->buttonShare:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 326
    .end local v0    # "sharePrefix":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->buttonShare:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private reportAmplitude(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 200
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 201
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "URL"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Web View"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 203
    return-void
.end method

.method private requestServerAndLoad()V
    .locals 4

    .prologue
    .line 495
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/s;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 496
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->loadErrorPage()V

    .line 532
    :goto_0
    return-void

    .line 498
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->getLastUrlFromHistory()Ljava/lang/String;

    move-result-object v0

    .line 499
    .local v0, "lastUrl":Ljava/lang/String;
    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 500
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->getSubscriptions()Lrx/i/b;

    move-result-object v1

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v2

    .line 501
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v2

    const-string v3, "-home-"

    .line 502
    invoke-interface {v2, v3}, Lcom/jiliguala/niuwa/logic/network/d;->f(Ljava/lang/String;)Lrx/e;

    move-result-object v2

    .line 503
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 504
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 505
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v2

    new-instance v3, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$8;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$8;-><init>(Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;)V

    .line 506
    invoke-virtual {v2, v3}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v2

    .line 500
    invoke-virtual {v1, v2}, Lrx/i/b;->a(Lrx/m;)V

    goto :goto_0

    .line 529
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->web:Lcom/youzan/androidsdk/basic/YouzanBrowser;

    invoke-virtual {v1, v0}, Lcom/youzan/androidsdk/basic/YouzanBrowser;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private unRegisterAll()V
    .locals 4

    .prologue
    .line 413
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->web:Lcom/youzan/androidsdk/basic/YouzanBrowser;

    if-eqz v2, :cond_1

    .line 415
    :try_start_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->web:Lcom/youzan/androidsdk/basic/YouzanBrowser;

    invoke-virtual {v2}, Lcom/youzan/androidsdk/basic/YouzanBrowser;->stopLoading()V

    .line 416
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->web:Lcom/youzan/androidsdk/basic/YouzanBrowser;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/youzan/androidsdk/basic/YouzanBrowser;->clearCache(Z)V

    .line 417
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->web:Lcom/youzan/androidsdk/basic/YouzanBrowser;

    invoke-virtual {v2}, Lcom/youzan/androidsdk/basic/YouzanBrowser;->clearHistory()V

    .line 418
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->web:Lcom/youzan/androidsdk/basic/YouzanBrowser;

    invoke-virtual {v2}, Lcom/youzan/androidsdk/basic/YouzanBrowser;->clearFormData()V

    .line 419
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->web:Lcom/youzan/androidsdk/basic/YouzanBrowser;

    invoke-virtual {v2}, Lcom/youzan/androidsdk/basic/YouzanBrowser;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 420
    .local v1, "parent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    .line 421
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->web:Lcom/youzan/androidsdk/basic/YouzanBrowser;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 423
    :cond_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->web:Lcom/youzan/androidsdk/basic/YouzanBrowser;

    invoke-virtual {v2}, Lcom/youzan/androidsdk/basic/YouzanBrowser;->removeAllViews()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->urlHistory:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    .line 429
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->urlHistory:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 434
    .end local v1    # "parent":Landroid/view/ViewGroup;
    :cond_1
    :goto_0
    return-void

    .line 425
    :catch_0
    move-exception v0

    .line 426
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 428
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->urlHistory:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    .line 429
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->urlHistory:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    goto :goto_0

    .line 428
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->urlHistory:Ljava/util/LinkedList;

    if-eqz v3, :cond_2

    .line 429
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->urlHistory:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    .line 432
    :cond_2
    throw v2
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 146
    const v0, 0x7f0b0050

    return v0
.end method

.method protected getWebViewId()I
    .locals 1

    .prologue
    .line 141
    const v0, 0x7f09060a

    return v0
.end method

.method public loadErrorPage()V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->web:Lcom/youzan/androidsdk/basic/YouzanBrowser;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->web:Lcom/youzan/androidsdk/basic/YouzanBrowser;

    const-string v1, "file:///android_asset/local_error.html"

    invoke-virtual {v0, v1}, Lcom/youzan/androidsdk/basic/YouzanBrowser;->loadUrl(Ljava/lang/String;)V

    .line 209
    :cond_0
    return-void
.end method

.method public loadPage(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->web:Lcom/youzan/androidsdk/basic/YouzanBrowser;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    :try_start_0
    const-string v0, "utf-8"

    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 185
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->refreshShareBtnState(Ljava/lang/String;)V

    .line 186
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/s;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->web:Lcom/youzan/androidsdk/basic/YouzanBrowser;

    invoke-virtual {v0, p1}, Lcom/youzan/androidsdk/basic/YouzanBrowser;->loadUrl(Ljava/lang/String;)V

    .line 188
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->addToHistory(Ljava/lang/String;)V

    .line 189
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->reportAmplitude(Ljava/lang/String;)V

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->loadErrorPage()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 193
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 438
    invoke-super {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/module/youzan/fragment/WebViewFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 439
    const/16 v2, 0x1000

    if-ne p1, v2, :cond_0

    .line 440
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->mUploadMessage:Landroid/webkit/ValueCallback;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->mUploadCallbackAboveL:Landroid/webkit/ValueCallback;

    if-nez v2, :cond_1

    .line 450
    :cond_0
    :goto_0
    return-void

    .line 442
    :cond_1
    if-eqz p3, :cond_2

    const/4 v2, -0x1

    if-eq p2, v2, :cond_3

    :cond_2
    move-object v0, v1

    .line 443
    .local v0, "result":Landroid/net/Uri;
    :goto_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->mUploadCallbackAboveL:Landroid/webkit/ValueCallback;

    if-eqz v2, :cond_4

    .line 444
    invoke-direct {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->onActivityResultAboveL(IILandroid/content/Intent;)V

    goto :goto_0

    .line 442
    .end local v0    # "result":Landroid/net/Uri;
    :cond_3
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    .line 445
    .restart local v0    # "result":Landroid/net/Uri;
    :cond_4
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->mUploadMessage:Landroid/webkit/ValueCallback;

    if-eqz v2, :cond_0

    .line 446
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->mUploadMessage:Landroid/webkit/ValueCallback;

    invoke-interface {v2, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 447
    iput-object v1, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->mUploadMessage:Landroid/webkit/ValueCallback;

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 2

    .prologue
    .line 400
    const/4 v0, 0x0

    .line 402
    .local v0, "canGoBack":Z
    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->web:Lcom/youzan/androidsdk/basic/YouzanBrowser;

    invoke-virtual {v1}, Lcom/youzan/androidsdk/basic/YouzanBrowser;->pageGoBack()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 405
    :goto_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->web:Lcom/youzan/androidsdk/basic/YouzanBrowser;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->urlHistory:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 406
    const/4 v1, 0x1

    .line 409
    :goto_1
    return v1

    .line 408
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->unRegisterAll()V

    .line 409
    const/4 v1, 0x0

    goto :goto_1

    .line 403
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 225
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/module/youzan/fragment/WebViewFragment;->onCreate(Landroid/os/Bundle;)V

    .line 227
    sget-object v1, Lcom/jiliguala/niuwa/MyApplication;->mPrefixUrls:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->shareprefix:Ljava/util/ArrayList;

    .line 228
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 229
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 230
    const-string v1, "FROM_HOME_PAGE"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->isFromHomePage:Z

    .line 231
    const-string v1, "NEED_BACK"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->needBack:Z

    .line 232
    const-string v1, "FROM_ORDER"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->isFromOrder:Z

    .line 234
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 134
    invoke-super {p0, p1, p2}, Lcom/jiliguala/niuwa/module/youzan/fragment/WebViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 135
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->initView(Landroid/view/View;)Landroid/view/View;

    .line 136
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->initBridge()V

    .line 137
    return-void
.end method

.method public setFromHomePage(Z)V
    .locals 0
    .param p1, "fromHomePage"    # Z

    .prologue
    .line 173
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->isFromHomePage:Z

    .line 174
    return-void
.end method

.method public setNeedBack(Z)V
    .locals 0
    .param p1, "needBack"    # Z

    .prologue
    .line 169
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->needBack:Z

    .line 170
    return-void
.end method

.method public setShareprefix(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 159
    .local p1, "shareprefix":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->shareprefix:Ljava/util/ArrayList;

    .line 162
    :cond_0
    return-void
.end method

.method public setSignUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->url:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public show(Landroid/support/v4/app/ag;)V
    .locals 2
    .param p1, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 119
    if-nez p1, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v0

    .line 123
    .local v0, "ft":Landroid/support/v4/app/an;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 124
    sget-object v1, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/app/an;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 125
    invoke-virtual {v0}, Landroid/support/v4/app/an;->i()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 127
    .end local v0    # "ft":Landroid/support/v4/app/an;
    :catch_0
    move-exception v1

    goto :goto_0
.end method
