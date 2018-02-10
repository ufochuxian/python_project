.class public Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;
.super Lcom/jiliguala/niuwa/common/base/BaseActivity;
.source "SourceFile"


# static fields
.field private static final KEY_PARAM_A:Ljava/lang/String; = "KEY_PARAM_A"

.field private static final KEY_PARAM_URL:Ljava/lang/String; = "KEY_PARAM_URL"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;

.field private fragment:Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;->requestServer(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;->loadErrorPage()V

    return-void
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;)Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;->fragment:Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    return-object v0
.end method

.method static synthetic access$202(Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;)Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;
    .param p1, "x1"    # Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;->fragment:Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    return-object p1
.end method

.method private loadErrorPage()V
    .locals 5

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v2

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;->fragment:Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    .line 161
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;->fragment:Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;->fragment:Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 163
    :try_start_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;->fragment:Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    const-string v3, "file:///android_asset/local_error.html"

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->setSignUrl(Ljava/lang/String;)V

    .line 164
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;->fragment:Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    const-string v3, "file:///android_asset/local_error.html"

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->loadPage(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v0

    .line 166
    .local v0, "fm":Landroid/support/v4/app/ag;
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v1

    .line 167
    .local v1, "ft":Landroid/support/v4/app/an;
    const v2, 0x7f090158

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;->fragment:Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    sget-object v4, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v4/app/an;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 168
    invoke-virtual {v1}, Landroid/support/v4/app/an;->i()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    .end local v0    # "fm":Landroid/support/v4/app/ag;
    .end local v1    # "ft":Landroid/support/v4/app/an;
    :cond_0
    :goto_0
    return-void

    .line 169
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static makeIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "a"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 41
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 42
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "KEY_PARAM_A"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    const-string v1, "KEY_PARAM_URL"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    return-object v0
.end method

.method private requestServer(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 99
    const-string v3, "KEY_PARAM_A"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;->a:Ljava/lang/String;

    .line 100
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;->a:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;->a:Ljava/lang/String;

    const-string v4, "-relay-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 101
    const-string v3, "KEY_PARAM_URL"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, "url":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v3

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    move-result-object v3

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;->fragment:Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    .line 104
    :try_start_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;->fragment:Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    invoke-virtual {v3, v2}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->setSignUrl(Ljava/lang/String;)V

    .line 105
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;->fragment:Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    invoke-virtual {v3, v2}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->loadPage(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v0

    .line 107
    .local v0, "fm":Landroid/support/v4/app/ag;
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v1

    .line 108
    .local v1, "ft":Landroid/support/v4/app/an;
    const v3, 0x7f090158

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;->fragment:Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    sget-object v5, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v1, v3, v4, v5}, Landroid/support/v4/app/an;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 109
    invoke-virtual {v1}, Landroid/support/v4/app/an;->i()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    .end local v0    # "fm":Landroid/support/v4/app/ag;
    .end local v1    # "ft":Landroid/support/v4/app/an;
    .end local v2    # "url":Ljava/lang/String;
    :goto_0
    return-void

    .line 114
    :cond_0
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/s;->a()Z

    move-result v3

    if-nez v3, :cond_1

    .line 115
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;->loadErrorPage()V

    goto :goto_0

    .line 118
    :cond_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;->getSubscriptions()Lrx/i/b;

    move-result-object v3

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v4

    .line 119
    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v4

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;->a:Ljava/lang/String;

    .line 120
    invoke-interface {v4, v5}, Lcom/jiliguala/niuwa/logic/network/d;->f(Ljava/lang/String;)Lrx/e;

    move-result-object v4

    .line 121
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v5

    invoke-virtual {v4, v5}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v4

    .line 122
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v5

    invoke-virtual {v4, v5}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v4

    .line 123
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v5

    invoke-virtual {v4, v5}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v4

    new-instance v5, Lcom/jiliguala/niuwa/module/youzan/YzH5Activity$2;

    invoke-direct {v5, p0}, Lcom/jiliguala/niuwa/module/youzan/YzH5Activity$2;-><init>(Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;)V

    .line 124
    invoke-virtual {v4, v5}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v4

    .line 118
    invoke-virtual {v3, v4}, Lrx/i/b;->a(Lrx/m;)V

    goto :goto_0

    .line 110
    .restart local v2    # "url":Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v0

    sget-object v1, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;->fragment:Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    .line 89
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;->fragment:Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;->fragment:Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;->finish()V

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0b0033

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 51
    .local v2, "root":Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;->setContentView(Landroid/view/View;)V

    .line 53
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v0

    .line 54
    .local v0, "fm":Landroid/support/v4/app/ag;
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v1

    .line 55
    .local v1, "ft":Landroid/support/v4/app/an;
    sget-object v3, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;->fragment:Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    .line 56
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;->fragment:Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;->fragment:Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->isAdded()Z

    move-result v3

    if-nez v3, :cond_2

    .line 62
    :cond_0
    invoke-static {v0}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    move-result-object v3

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;->fragment:Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    .line 63
    const v3, 0x7f090158

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;->fragment:Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    sget-object v5, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v1, v3, v4, v5}, Landroid/support/v4/app/an;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 64
    invoke-virtual {v1}, Landroid/support/v4/app/an;->i()I

    .line 71
    :cond_1
    :goto_0
    new-instance v3, Lcom/jiliguala/niuwa/module/youzan/YzH5Activity$1;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/youzan/YzH5Activity$1;-><init>(Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 80
    return-void

    .line 66
    :cond_2
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;->fragment:Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->isDetached()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 67
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;->fragment:Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    invoke-virtual {v1, v3}, Landroid/support/v4/app/an;->e(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/an;

    goto :goto_0
.end method
