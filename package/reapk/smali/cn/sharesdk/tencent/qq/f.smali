.class public Lcn/sharesdk/tencent/qq/f;
.super Lcom/mob/tools/a;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcn/sharesdk/framework/PlatformActionListener;

.field private c:Ljava/lang/String;

.field private d:Lcn/sharesdk/tencent/qq/QQWebShareAdapter;

.field private e:Lcn/sharesdk/framework/authorize/RegisterView;

.field private f:Landroid/webkit/WebView;

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/mob/tools/a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/tencent/qq/f;)Lcn/sharesdk/framework/PlatformActionListener;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/f;->b:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic a(Lcn/sharesdk/tencent/qq/f;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcn/sharesdk/tencent/qq/f;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/tencent/qq/f;Z)Z
    .locals 0

    .prologue
    .line 27
    iput-boolean p1, p0, Lcn/sharesdk/tencent/qq/f;->h:Z

    return p1
.end method

.method private b()Lcn/sharesdk/tencent/qq/QQWebShareAdapter;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 63
    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/f;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p0, Lcn/sharesdk/tencent/qq/f;->activity:Landroid/app/Activity;

    .line 64
    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/16 v3, 0x80

    .line 63
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 65
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "QQWebShareAdapter"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 80
    :goto_0
    return-object v0

    .line 70
    :cond_1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 72
    instance-of v2, v0, Lcn/sharesdk/tencent/qq/QQWebShareAdapter;

    if-nez v2, :cond_2

    move-object v0, v1

    .line 73
    goto :goto_0

    .line 76
    :cond_2
    check-cast v0, Lcn/sharesdk/tencent/qq/QQWebShareAdapter;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/d;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/d;->d(Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 80
    goto :goto_0
.end method

.method static synthetic b(Lcn/sharesdk/tencent/qq/f;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/f;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcn/sharesdk/tencent/qq/f;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/f;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 178
    if-nez p1, :cond_0

    const-string v0, ""

    .line 179
    :goto_0
    invoke-static {p1}, Lcom/mob/tools/c/l;->e(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 180
    if-nez v1, :cond_1

    .line 181
    iput-boolean v4, p0, Lcn/sharesdk/tencent/qq/f;->g:Z

    .line 182
    invoke-virtual {p0}, Lcn/sharesdk/tencent/qq/f;->finish()V

    .line 183
    iget-object v1, p0, Lcn/sharesdk/tencent/qq/f;->b:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v2, Ljava/lang/Throwable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to parse callback uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v6, v5, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 218
    :goto_1
    return-void

    .line 178
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 187
    :cond_1
    const-string v2, "action"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 188
    const-string v3, "share"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "shareToQQ"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 189
    iput-boolean v4, p0, Lcn/sharesdk/tencent/qq/f;->g:Z

    .line 190
    invoke-virtual {p0}, Lcn/sharesdk/tencent/qq/f;->finish()V

    .line 191
    iget-object v1, p0, Lcn/sharesdk/tencent/qq/f;->b:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v2, Ljava/lang/Throwable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "action error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v6, v5, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_1

    .line 195
    :cond_2
    const-string v2, "result"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 196
    const-string v3, "cancel"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 197
    invoke-virtual {p0}, Lcn/sharesdk/tencent/qq/f;->finish()V

    .line 198
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/f;->b:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v0, v6, v5}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    goto :goto_1

    .line 200
    :cond_3
    const-string v3, "complete"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 201
    iput-boolean v4, p0, Lcn/sharesdk/tencent/qq/f;->g:Z

    .line 202
    invoke-virtual {p0}, Lcn/sharesdk/tencent/qq/f;->finish()V

    .line 203
    iget-object v1, p0, Lcn/sharesdk/tencent/qq/f;->b:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v2, Ljava/lang/Throwable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "operation failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v6, v5, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto/16 :goto_1

    .line 207
    :cond_4
    const-string v2, "response"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 208
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 209
    iput-boolean v4, p0, Lcn/sharesdk/tencent/qq/f;->g:Z

    .line 210
    invoke-virtual {p0}, Lcn/sharesdk/tencent/qq/f;->finish()V

    .line 211
    iget-object v1, p0, Lcn/sharesdk/tencent/qq/f;->b:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v2, Ljava/lang/Throwable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "response empty"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v6, v5, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto/16 :goto_1

    .line 215
    :cond_5
    iput-boolean v4, p0, Lcn/sharesdk/tencent/qq/f;->h:Z

    .line 216
    invoke-virtual {p0}, Lcn/sharesdk/tencent/qq/f;->finish()V

    .line 217
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/f;->b:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v2, Lcom/mob/tools/c/g;

    invoke-direct {v2}, Lcom/mob/tools/c/g;-><init>()V

    invoke-virtual {v2, v1}, Lcom/mob/tools/c/g;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {v0, v6, v5, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    goto/16 :goto_1
.end method

.method static synthetic d(Lcn/sharesdk/tencent/qq/f;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/f;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic e(Lcn/sharesdk/tencent/qq/f;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/f;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic f(Lcn/sharesdk/tencent/qq/f;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/f;->activity:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method protected a()Lcn/sharesdk/framework/authorize/RegisterView;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 114
    new-instance v0, Lcn/sharesdk/framework/authorize/RegisterView;

    iget-object v1, p0, Lcn/sharesdk/tencent/qq/f;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcn/sharesdk/framework/authorize/RegisterView;-><init>(Landroid/content/Context;)V

    .line 115
    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/RegisterView;->c()Lcn/sharesdk/framework/TitleLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcn/sharesdk/framework/TitleLayout;->getChildCount()I

    move-result v1

    .line 116
    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/RegisterView;->c()Lcn/sharesdk/framework/TitleLayout;

    move-result-object v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v1}, Lcn/sharesdk/framework/TitleLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 117
    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/RegisterView;->a()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcn/sharesdk/tencent/qq/f$1;

    invoke-direct {v2, p0}, Lcn/sharesdk/tencent/qq/f$1;-><init>(Lcn/sharesdk/tencent/qq/f;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/RegisterView;->b()Landroid/webkit/WebView;

    move-result-object v1

    iput-object v1, p0, Lcn/sharesdk/tencent/qq/f;->f:Landroid/webkit/WebView;

    .line 134
    iget-object v1, p0, Lcn/sharesdk/tencent/qq/f;->f:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 135
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 136
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 137
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 138
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 139
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 140
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 141
    iget-object v2, p0, Lcn/sharesdk/tencent/qq/f;->activity:Landroid/app/Activity;

    const-string v3, "database"

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 142
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 143
    iget-object v1, p0, Lcn/sharesdk/tencent/qq/f;->f:Landroid/webkit/WebView;

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 144
    iget-object v1, p0, Lcn/sharesdk/tencent/qq/f;->f:Landroid/webkit/WebView;

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 145
    iget-object v1, p0, Lcn/sharesdk/tencent/qq/f;->f:Landroid/webkit/WebView;

    new-instance v2, Lcn/sharesdk/tencent/qq/f$2;

    invoke-direct {v2, p0}, Lcn/sharesdk/tencent/qq/f$2;-><init>(Lcn/sharesdk/tencent/qq/f;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 172
    return-object v0
.end method

.method public a(Lcn/sharesdk/framework/PlatformActionListener;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcn/sharesdk/tencent/qq/f;->b:Lcn/sharesdk/framework/PlatformActionListener;

    .line 43
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcn/sharesdk/tencent/qq/f;->a:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tencent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/tencent/qq/f;->c:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 84
    invoke-virtual {p0}, Lcn/sharesdk/tencent/qq/f;->a()Lcn/sharesdk/framework/authorize/RegisterView;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/tencent/qq/f;->e:Lcn/sharesdk/framework/authorize/RegisterView;

    .line 86
    :try_start_0
    invoke-virtual {p0}, Lcn/sharesdk/tencent/qq/f;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ssdk_share_to_qq"

    invoke-static {v0, v1}, Lcom/mob/tools/c/l;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 87
    if-lez v0, :cond_0

    .line 88
    iget-object v1, p0, Lcn/sharesdk/tencent/qq/f;->e:Lcn/sharesdk/framework/authorize/RegisterView;

    invoke-virtual {v1}, Lcn/sharesdk/framework/authorize/RegisterView;->c()Lcn/sharesdk/framework/TitleLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcn/sharesdk/framework/TitleLayout;->getTvTitle()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/f;->d:Lcn/sharesdk/tencent/qq/QQWebShareAdapter;

    iget-object v1, p0, Lcn/sharesdk/tencent/qq/f;->e:Lcn/sharesdk/framework/authorize/RegisterView;

    invoke-virtual {v1}, Lcn/sharesdk/framework/authorize/RegisterView;->d()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/sharesdk/tencent/qq/QQWebShareAdapter;->setBodyView(Landroid/widget/RelativeLayout;)V

    .line 96
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/f;->d:Lcn/sharesdk/tencent/qq/QQWebShareAdapter;

    iget-object v1, p0, Lcn/sharesdk/tencent/qq/f;->e:Lcn/sharesdk/framework/authorize/RegisterView;

    invoke-virtual {v1}, Lcn/sharesdk/framework/authorize/RegisterView;->b()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/sharesdk/tencent/qq/QQWebShareAdapter;->setWebView(Landroid/webkit/WebView;)V

    .line 97
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/f;->d:Lcn/sharesdk/tencent/qq/QQWebShareAdapter;

    iget-object v1, p0, Lcn/sharesdk/tencent/qq/f;->e:Lcn/sharesdk/framework/authorize/RegisterView;

    invoke-virtual {v1}, Lcn/sharesdk/framework/authorize/RegisterView;->c()Lcn/sharesdk/framework/TitleLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/sharesdk/tencent/qq/QQWebShareAdapter;->setTitleView(Lcn/sharesdk/framework/TitleLayout;)V

    .line 98
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/f;->d:Lcn/sharesdk/tencent/qq/QQWebShareAdapter;

    invoke-virtual {v0}, Lcn/sharesdk/tencent/qq/QQWebShareAdapter;->onCreate()V

    .line 99
    invoke-virtual {p0}, Lcn/sharesdk/tencent/qq/f;->disableScreenCapture()Z

    .line 100
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/f;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcn/sharesdk/tencent/qq/f;->e:Lcn/sharesdk/framework/authorize/RegisterView;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 102
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/f;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/mob/tools/c/e;->a(Landroid/content/Context;)Lcom/mob/tools/c/e;

    move-result-object v0

    .line 103
    const-string v1, "none"

    invoke-virtual {v0}, Lcom/mob/tools/c/e;->B()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/sharesdk/tencent/qq/f;->g:Z

    .line 105
    invoke-virtual {p0}, Lcn/sharesdk/tencent/qq/f;->finish()V

    .line 106
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/f;->b:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Throwable;

    const-string v4, "failed to load webpage, network disconnected."

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2, v3}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 111
    :goto_1
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 91
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/d;->d(Ljava/lang/Throwable;)I

    .line 92
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/f;->e:Lcn/sharesdk/framework/authorize/RegisterView;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/RegisterView;->c()Lcn/sharesdk/framework/TitleLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/TitleLayout;->setVisibility(I)V

    goto :goto_0

    .line 110
    :cond_1
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/f;->e:Lcn/sharesdk/framework/authorize/RegisterView;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/RegisterView;->b()Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/tencent/qq/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 251
    iget-boolean v0, p0, Lcn/sharesdk/tencent/qq/f;->g:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcn/sharesdk/tencent/qq/f;->h:Z

    if-nez v0, :cond_0

    .line 252
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/f;->b:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 254
    :cond_0
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/f;->d:Lcn/sharesdk/tencent/qq/QQWebShareAdapter;

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/f;->d:Lcn/sharesdk/tencent/qq/QQWebShareAdapter;

    invoke-virtual {v0}, Lcn/sharesdk/tencent/qq/QQWebShareAdapter;->onDestroy()V

    .line 257
    :cond_1
    return-void
.end method

.method public onFinish()Z
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/f;->d:Lcn/sharesdk/tencent/qq/QQWebShareAdapter;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/f;->d:Lcn/sharesdk/tencent/qq/QQWebShareAdapter;

    invoke-virtual {v0}, Lcn/sharesdk/tencent/qq/QQWebShareAdapter;->onFinish()Z

    move-result v0

    .line 263
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/mob/tools/a;->onFinish()Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/f;->d:Lcn/sharesdk/tencent/qq/QQWebShareAdapter;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/f;->d:Lcn/sharesdk/tencent/qq/QQWebShareAdapter;

    invoke-virtual {v0}, Lcn/sharesdk/tencent/qq/QQWebShareAdapter;->onPause()V

    .line 230
    :cond_0
    return-void
.end method

.method public onRestart()V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/f;->d:Lcn/sharesdk/tencent/qq/QQWebShareAdapter;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/f;->d:Lcn/sharesdk/tencent/qq/QQWebShareAdapter;

    invoke-virtual {v0}, Lcn/sharesdk/tencent/qq/QQWebShareAdapter;->onRestart()V

    .line 248
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/f;->d:Lcn/sharesdk/tencent/qq/QQWebShareAdapter;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/f;->d:Lcn/sharesdk/tencent/qq/QQWebShareAdapter;

    invoke-virtual {v0}, Lcn/sharesdk/tencent/qq/QQWebShareAdapter;->onResume()V

    .line 236
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/f;->d:Lcn/sharesdk/tencent/qq/QQWebShareAdapter;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/f;->d:Lcn/sharesdk/tencent/qq/QQWebShareAdapter;

    invoke-virtual {v0}, Lcn/sharesdk/tencent/qq/QQWebShareAdapter;->onStart()V

    .line 224
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/f;->d:Lcn/sharesdk/tencent/qq/QQWebShareAdapter;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/f;->d:Lcn/sharesdk/tencent/qq/QQWebShareAdapter;

    invoke-virtual {v0}, Lcn/sharesdk/tencent/qq/QQWebShareAdapter;->onStop()V

    .line 242
    :cond_0
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/mob/tools/a;->setActivity(Landroid/app/Activity;)V

    .line 52
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/f;->d:Lcn/sharesdk/tencent/qq/QQWebShareAdapter;

    if-nez v0, :cond_0

    .line 53
    invoke-direct {p0}, Lcn/sharesdk/tencent/qq/f;->b()Lcn/sharesdk/tencent/qq/QQWebShareAdapter;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/tencent/qq/f;->d:Lcn/sharesdk/tencent/qq/QQWebShareAdapter;

    .line 54
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/f;->d:Lcn/sharesdk/tencent/qq/QQWebShareAdapter;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcn/sharesdk/tencent/qq/QQWebShareAdapter;

    invoke-direct {v0}, Lcn/sharesdk/tencent/qq/QQWebShareAdapter;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/tencent/qq/f;->d:Lcn/sharesdk/tencent/qq/QQWebShareAdapter;

    .line 58
    :cond_0
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/f;->d:Lcn/sharesdk/tencent/qq/QQWebShareAdapter;

    invoke-virtual {v0, p1}, Lcn/sharesdk/tencent/qq/QQWebShareAdapter;->setActivity(Landroid/app/Activity;)V

    .line 59
    return-void
.end method
