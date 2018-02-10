.class public Lcom/pingplusplus/android/a/e;
.super Lcom/pingplusplus/android/j;
.source "SourceFile"


# instance fields
.field private o:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/pingplusplus/android/j;-><init>(Landroid/app/Activity;Lorg/json/JSONObject;)V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pingplusplus/android/a/e;->o:Z

    .line 32
    return-void
.end method

.method static synthetic a(Lcom/pingplusplus/android/a/e;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/pingplusplus/android/a/e;->h:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/webkit/ValueCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 165
    iput-object p1, p0, Lcom/pingplusplus/android/a/e;->l:Landroid/webkit/ValueCallback;

    .line 166
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 167
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CHOOSER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 171
    const-string v2, "android.intent.extra.INTENT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 172
    const-string v0, "android.intent.extra.TITLE"

    const-string v2, "Image Chooser"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    iget-object v0, p0, Lcom/pingplusplus/android/a/e;->b:Lcom/pingplusplus/android/PaymentActivity;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/pingplusplus/android/PaymentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 175
    return-void
.end method

.method static synthetic a(Lcom/pingplusplus/android/a/e;Landroid/webkit/ValueCallback;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/pingplusplus/android/a/e;->a(Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method static synthetic a(Lcom/pingplusplus/android/a/e;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/pingplusplus/android/a/e;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/pingplusplus/android/a/e;Z)Z
    .locals 0

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/pingplusplus/android/a/e;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/pingplusplus/android/a/e;)Lcom/pingplusplus/android/PaymentActivity;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/pingplusplus/android/a/e;->b:Lcom/pingplusplus/android/PaymentActivity;

    return-object v0
.end method

.method static synthetic b(Lcom/pingplusplus/android/a/e;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/pingplusplus/android/a/e;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/pingplusplus/android/a/e;Z)Z
    .locals 0

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/pingplusplus/android/a/e;->i:Z

    return p1
.end method

.method static synthetic c(Lcom/pingplusplus/android/a/e;)Lcom/pingplusplus/android/PaymentActivity;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/pingplusplus/android/a/e;->b:Lcom/pingplusplus/android/PaymentActivity;

    return-object v0
.end method

.method static synthetic c(Lcom/pingplusplus/android/a/e;Z)Z
    .locals 0

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/pingplusplus/android/a/e;->o:Z

    return p1
.end method

.method static synthetic d(Lcom/pingplusplus/android/a/e;)Lcom/pingplusplus/android/PaymentActivity;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/pingplusplus/android/a/e;->b:Lcom/pingplusplus/android/PaymentActivity;

    return-object v0
.end method

.method static synthetic d(Lcom/pingplusplus/android/a/e;Z)Z
    .locals 0

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/pingplusplus/android/a/e;->i:Z

    return p1
.end method

.method static synthetic e(Lcom/pingplusplus/android/a/e;)Lcom/pingplusplus/android/PaymentActivity;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/pingplusplus/android/a/e;->b:Lcom/pingplusplus/android/PaymentActivity;

    return-object v0
.end method

.method static synthetic f(Lcom/pingplusplus/android/a/e;)Lcom/pingplusplus/android/PaymentActivity;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/pingplusplus/android/a/e;->b:Lcom/pingplusplus/android/PaymentActivity;

    return-object v0
.end method

.method static synthetic g(Lcom/pingplusplus/android/a/e;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/pingplusplus/android/a/e;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/pingplusplus/android/a/e;)Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/pingplusplus/android/a/e;->i:Z

    return v0
.end method

.method static synthetic i(Lcom/pingplusplus/android/a/e;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/pingplusplus/android/a/e;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/pingplusplus/android/a/e;)Lcom/pingplusplus/android/PaymentActivity;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/pingplusplus/android/a/e;->b:Lcom/pingplusplus/android/PaymentActivity;

    return-object v0
.end method

.method static synthetic k(Lcom/pingplusplus/android/a/e;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/pingplusplus/android/a/e;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lcom/pingplusplus/android/a/e;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/pingplusplus/android/a/e;->d:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic m(Lcom/pingplusplus/android/a/e;)Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/pingplusplus/android/a/e;->o:Z

    return v0
.end method

.method static synthetic n(Lcom/pingplusplus/android/a/e;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/pingplusplus/android/a/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic o(Lcom/pingplusplus/android/a/e;)Lcom/pingplusplus/android/WebViewEx;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/pingplusplus/android/a/e;->a:Lcom/pingplusplus/android/WebViewEx;

    return-object v0
.end method

.method static synthetic p(Lcom/pingplusplus/android/a/e;)Lcom/pingplusplus/android/PaymentActivity;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/pingplusplus/android/a/e;->b:Lcom/pingplusplus/android/PaymentActivity;

    return-object v0
.end method

.method static synthetic q(Lcom/pingplusplus/android/a/e;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/pingplusplus/android/a/e;->e:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic r(Lcom/pingplusplus/android/a/e;)Lcom/pingplusplus/android/PaymentActivity;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/pingplusplus/android/a/e;->b:Lcom/pingplusplus/android/PaymentActivity;

    return-object v0
.end method

.method static synthetic s(Lcom/pingplusplus/android/a/e;)Lcom/pingplusplus/android/PaymentActivity;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/pingplusplus/android/a/e;->b:Lcom/pingplusplus/android/PaymentActivity;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 3

    .prologue
    .line 36
    iget-object v0, p0, Lcom/pingplusplus/android/a/e;->a:Lcom/pingplusplus/android/WebViewEx;

    new-instance v1, Lcom/pingplusplus/android/a/f;

    iget-object v2, p0, Lcom/pingplusplus/android/a/e;->a:Lcom/pingplusplus/android/WebViewEx;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, p0, v2}, Lcom/pingplusplus/android/a/f;-><init>(Lcom/pingplusplus/android/a/e;Lcom/pingplusplus/android/WebViewEx;)V

    invoke-virtual {v0, v1}, Lcom/pingplusplus/android/WebViewEx;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 109
    iget-object v0, p0, Lcom/pingplusplus/android/a/e;->a:Lcom/pingplusplus/android/WebViewEx;

    new-instance v1, Lcom/pingplusplus/android/a/g;

    iget-object v2, p0, Lcom/pingplusplus/android/a/e;->a:Lcom/pingplusplus/android/WebViewEx;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, p0, v2}, Lcom/pingplusplus/android/a/g;-><init>(Lcom/pingplusplus/android/a/e;Lcom/pingplusplus/android/WebViewEx;)V

    invoke-virtual {v0, v1}, Lcom/pingplusplus/android/WebViewEx;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 140
    return-void
.end method

.method protected a(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 143
    const-string v0, "channel"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pingplusplus/android/a/e;->h:Ljava/lang/String;

    .line 144
    const-string v0, "credential"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 146
    const-string v1, "qgbc_wap"

    iget-object v2, p0, Lcom/pingplusplus/android/a/e;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/pingplusplus/android/a/e;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    :goto_0
    iput-object v0, p0, Lcom/pingplusplus/android/a/e;->c:Ljava/lang/String;

    .line 153
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/pingplusplus/android/a/e;->a(Ljava/lang/String;[B)V

    .line 154
    return-void

    .line 149
    :cond_0
    iget-object v1, p0, Lcom/pingplusplus/android/a/e;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 150
    const-string v1, "url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
