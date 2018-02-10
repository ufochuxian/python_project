.class public Lcn/sharesdk/sina/weibo/e;
.super Lcom/mob/tools/a;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcn/sharesdk/framework/Platform$ShareParams;

.field private d:Lcn/sharesdk/framework/authorize/AuthorizeListener;

.field private e:Lcn/sharesdk/sina/weibo/sdk/a/a;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/webkit/WebView;

.field private i:Landroid/widget/Button;

.field private j:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/mob/tools/a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/sina/weibo/e;)I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcn/sharesdk/sina/weibo/e;->j:I

    return v0
.end method

.method static synthetic a(Lcn/sharesdk/sina/weibo/e;I)I
    .locals 0

    .prologue
    .line 38
    iput p1, p0, Lcn/sharesdk/sina/weibo/e;->j:I

    return p1
.end method

.method private a()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/e;->e:Lcn/sharesdk/sina/weibo/sdk/a/a;

    invoke-virtual {v0}, Lcn/sharesdk/sina/weibo/sdk/a/a;->b()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/sina/weibo/e;->g:Landroid/widget/TextView;

    .line 77
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/e;->e:Lcn/sharesdk/sina/weibo/sdk/a/a;

    invoke-virtual {v0}, Lcn/sharesdk/sina/weibo/sdk/a/a;->c()Landroid/webkit/WebView;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/sina/weibo/e;->h:Landroid/webkit/WebView;

    .line 78
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/e;->e:Lcn/sharesdk/sina/weibo/sdk/a/a;

    invoke-virtual {v0}, Lcn/sharesdk/sina/weibo/sdk/a/a;->d()Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/sina/weibo/e;->f:Landroid/widget/LinearLayout;

    .line 79
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/e;->e:Lcn/sharesdk/sina/weibo/sdk/a/a;

    invoke-virtual {v0}, Lcn/sharesdk/sina/weibo/sdk/a/a;->a()Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/sina/weibo/e;->i:Landroid/widget/Button;

    .line 81
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/e;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/e;->i:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->isRemoveCookieOnAuthorize()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/e;->activity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 86
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 89
    :cond_0
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/e;->h:Landroid/webkit/WebView;

    new-instance v1, Lcn/sharesdk/sina/weibo/e$1;

    invoke-direct {v1, p0}, Lcn/sharesdk/sina/weibo/e$1;-><init>(Lcn/sharesdk/sina/weibo/e;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 116
    invoke-direct {p0}, Lcn/sharesdk/sina/weibo/e;->b()Ljava/lang/String;

    .line 117
    return-void
.end method

.method static synthetic a(Lcn/sharesdk/sina/weibo/e;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcn/sharesdk/sina/weibo/e;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 131
    invoke-static {p1}, Lcom/mob/tools/c/l;->e(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 132
    const-string v1, "code"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 133
    const-string v2, "msg"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 134
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 135
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/e;->d:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {v0}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onCancel()V

    .line 141
    :goto_0
    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/e;->finish()V

    .line 142
    return-void

    .line 136
    :cond_0
    const-string v3, "0"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/e;->d:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {v1, v0}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onComplete(Landroid/os/Bundle;)V

    goto :goto_0

    .line 139
    :cond_1
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/e;->d:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic b(Lcn/sharesdk/sina/weibo/e;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/e;->f:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 160
    new-instance v0, Lcn/sharesdk/sina/weibo/e$2;

    invoke-direct {v0, p0}, Lcn/sharesdk/sina/weibo/e$2;-><init>(Lcn/sharesdk/sina/weibo/e;)V

    invoke-static {v0}, Lcom/mob/tools/RxMob;->a(Lcom/mob/tools/RxMob$a;)Lcom/mob/tools/RxMob$c;

    move-result-object v0

    .line 166
    sget-object v1, Lcom/mob/tools/RxMob$Thread;->NEW_THREAD:Lcom/mob/tools/RxMob$Thread;

    invoke-virtual {v0, v1}, Lcom/mob/tools/RxMob$c;->a(Lcom/mob/tools/RxMob$Thread;)Lcom/mob/tools/RxMob$c;

    .line 167
    sget-object v1, Lcom/mob/tools/RxMob$Thread;->UI_THREAD:Lcom/mob/tools/RxMob$Thread;

    invoke-virtual {v0, v1}, Lcom/mob/tools/RxMob$c;->b(Lcom/mob/tools/RxMob$Thread;)Lcom/mob/tools/RxMob$c;

    .line 168
    new-instance v1, Lcn/sharesdk/sina/weibo/e$3;

    invoke-direct {v1, p0}, Lcn/sharesdk/sina/weibo/e$3;-><init>(Lcn/sharesdk/sina/weibo/e;)V

    invoke-virtual {v0, v1}, Lcom/mob/tools/RxMob$c;->a(Lcom/mob/tools/RxMob$d;)V

    .line 186
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic b(Lcn/sharesdk/sina/weibo/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcn/sharesdk/sina/weibo/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 146
    new-instance v1, Lcom/mob/tools/a/k;

    const-string v2, "title"

    iget-object v3, p0, Lcn/sharesdk/sina/weibo/e;->c:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v3}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    new-instance v1, Lcom/mob/tools/a/k;

    const-string v2, "source"

    iget-object v3, p0, Lcn/sharesdk/sina/weibo/e;->a:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    new-instance v1, Lcom/mob/tools/a/k;

    const-string v2, "access_token"

    iget-object v3, p0, Lcn/sharesdk/sina/weibo/e;->b:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    new-instance v1, Lcom/mob/tools/a/k;

    const-string v2, "packagename"

    iget-object v3, p0, Lcn/sharesdk/sina/weibo/e;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    new-instance v1, Lcom/mob/tools/a/k;

    const-string v2, "picinfo"

    invoke-direct {v1, v2, p1}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    new-instance v1, Lcom/mob/tools/a/k;

    const-string v2, "luicode"

    const-string v3, "10000360"

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    new-instance v1, Lcom/mob/tools/a/k;

    const-string v2, "key_hash"

    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/e;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcn/sharesdk/sina/weibo/e;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/sharesdk/sina/weibo/sdk/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    new-instance v1, Lcom/mob/tools/a/k;

    const-string v2, "lfid"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OP_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/sharesdk/sina/weibo/e;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    new-instance v1, Lcom/mob/tools/a/k;

    const-string v2, "version"

    const-string v3, "0041005000"

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://service.weibo.com/share/mobilesdk.php?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/mob/tools/c/l;->a(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 156
    return-object v0
.end method

.method static synthetic c(Lcn/sharesdk/sina/weibo/e;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/e;->h:Landroid/webkit/WebView;

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 202
    .line 205
    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/e;->c:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageData()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 206
    if-nez v0, :cond_2

    iget-object v1, p0, Lcn/sharesdk/sina/weibo/e;->c:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 207
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/e;->c:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/c/c;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 211
    :cond_0
    :goto_0
    if-eqz v0, :cond_a

    .line 212
    new-instance v1, Lcom/sina/weibo/sdk/api/ImageObject;

    invoke-direct {v1}, Lcom/sina/weibo/sdk/api/ImageObject;-><init>()V

    .line 213
    invoke-virtual {v1, v0}, Lcom/sina/weibo/sdk/api/ImageObject;->setImageObject(Landroid/graphics/Bitmap;)V

    .line 214
    iget-object v0, v1, Lcom/sina/weibo/sdk/api/ImageObject;->imageData:[B

    if-eqz v0, :cond_a

    iget-object v0, v1, Lcom/sina/weibo/sdk/api/ImageObject;->imageData:[B

    array-length v0, v0

    if-lez v0, :cond_a

    .line 215
    new-instance v0, Ljava/lang/String;

    iget-object v1, v1, Lcom/sina/weibo/sdk/api/ImageObject;->imageData:[B

    invoke-static {v1}, Lcn/sharesdk/sina/weibo/sdk/a;->a([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    move-object v1, v0

    .line 219
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v6

    .line 254
    :cond_1
    :goto_2
    return-object v0

    .line 208
    :cond_2
    if-nez v0, :cond_0

    iget-object v1, p0, Lcn/sharesdk/sina/weibo/e;->c:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 209
    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/e;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/sina/weibo/e;->c:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mob/tools/c/c;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 223
    :cond_3
    new-instance v0, Lcom/mob/tools/a/n;

    invoke-direct {v0}, Lcom/mob/tools/a/n;-><init>()V

    .line 224
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 225
    new-instance v3, Lcom/mob/tools/a/k;

    const-string v4, "img"

    invoke-direct {v3, v4, v1}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v8, 0x3e8

    div-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 227
    new-instance v3, Lcom/mob/tools/a/k;

    const-string v4, "oauth_timestamp"

    invoke-direct {v3, v4, v1}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    iget-object v4, p0, Lcn/sharesdk/sina/weibo/e;->b:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 230
    iget-object v4, p0, Lcn/sharesdk/sina/weibo/e;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    :cond_4
    iget-object v4, p0, Lcn/sharesdk/sina/weibo/e;->a:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 233
    iget-object v4, p0, Lcn/sharesdk/sina/weibo/e;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    :cond_5
    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/e;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, v1}, Lcom/sina/weibo/sdk/net/HttpManager;->calcOauthSignNative(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 236
    new-instance v3, Lcom/mob/tools/a/k;

    const-string v4, "oauth_sign"

    invoke-direct {v3, v4, v1}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    const-string v1, "http://service.weibo.com/share/mobilesdk_uppic.php"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/mob/tools/a/n;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/a/k;Ljava/util/ArrayList;Lcom/mob/tools/a/n$a;)Ljava/lang/String;

    move-result-object v0

    .line 239
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object v0, v6

    .line 240
    goto/16 :goto_2

    .line 242
    :cond_6
    new-instance v1, Lcom/mob/tools/c/g;

    invoke-direct {v1}, Lcom/mob/tools/c/g;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/c/g;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 243
    if-eqz v0, :cond_7

    const-string v1, "code"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "data"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    move-object v0, v6

    .line 244
    goto/16 :goto_2

    .line 246
    :cond_8
    const-string v1, "code"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 247
    const-string v2, "data"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 248
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    :cond_9
    move-object v0, v6

    .line 251
    goto/16 :goto_2

    .line 252
    :catch_0
    move-exception v0

    .line 253
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/d;->d(Ljava/lang/Throwable;)I

    move-object v0, v6

    .line 254
    goto/16 :goto_2

    :cond_a
    move-object v1, v6

    goto/16 :goto_1
.end method

.method static synthetic d(Lcn/sharesdk/sina/weibo/e;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcn/sharesdk/sina/weibo/e;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcn/sharesdk/framework/Platform$ShareParams;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/e;->c:Lcn/sharesdk/framework/Platform$ShareParams;

    .line 61
    return-void
.end method

.method public a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/e;->d:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    .line 65
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/e;->a:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lcn/sharesdk/sina/weibo/e;->b:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 120
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/e;->g:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    .line 121
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/e;->d:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {v0}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onCancel()V

    .line 122
    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/e;->finish()V

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/e;->i:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 124
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/e;->f:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/e;->h:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 126
    invoke-direct {p0}, Lcn/sharesdk/sina/weibo/e;->b()Ljava/lang/String;

    goto :goto_0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 68
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/e;->activity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 69
    new-instance v0, Lcn/sharesdk/sina/weibo/sdk/a/a;

    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/e;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/sharesdk/sina/weibo/sdk/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/sharesdk/sina/weibo/e;->e:Lcn/sharesdk/sina/weibo/sdk/a/a;

    .line 70
    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/e;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ssdk_sina_web_title"

    invoke-static {v0, v1}, Lcom/mob/tools/c/l;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 71
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/e;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/e;->e:Lcn/sharesdk/sina/weibo/sdk/a/a;

    invoke-virtual {v2, v0}, Lcn/sharesdk/sina/weibo/sdk/a/a;->a(I)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 72
    invoke-direct {p0}, Lcn/sharesdk/sina/weibo/e;->a()V

    .line 73
    return-void
.end method

.method public onKeyEvent(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 190
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 191
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/e;->d:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/e;->d:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {v0}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onCancel()V

    .line 194
    :cond_0
    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/e;->finish()V

    .line 195
    const/4 v0, 0x1

    .line 197
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
