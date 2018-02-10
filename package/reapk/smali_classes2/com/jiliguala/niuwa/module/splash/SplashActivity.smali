.class public Lcom/jiliguala/niuwa/module/splash/SplashActivity;
.super Lcom/jiliguala/niuwa/common/base/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/splash/SplashActivity$a;
    }
.end annotation


# static fields
.field static final CONDITION_REFRESH_USER_INFO_OK:Ljava/lang/String; = "CONDITION_REFRESH_USER_INFO_OK"

.field static final CONDITION_SPLASH_DELAY_OK:Ljava/lang/String; = "CONDITION_SPLASH_DELAY_OK"

.field private static final COUNT_TIMES:I = 0x5

.field private static final DELAY_COUNT_DOWN:I = 0x3e8

.field private static final DELAY_SHOW_SPLASH:I = 0x320

.field private static final DELAY_TIME:I = 0xbb8

.field private static final MSG_COUNT_DOWN:I = 0x1001

.field private static final MSG_FINISH_SHOW_MAIN:I = 0x1000

.field private static final MSG_SHOW_SPLASH_EXTRA:I = 0x1002

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private alreadyStartMain:Z

.field private countTimes:I

.field private extraImg:Landroid/widget/ImageView;

.field private mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

.field mHandler:Landroid/os/Handler;

.field private mProgressConainer:Landroid/widget/RelativeLayout;

.field private mRefreshUserInfoOk:Z

.field private mSplashDelayOk:Z

.field private skipText:Landroid/widget/TextView;

.field private splash:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Splash;

.field private splashContainer:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/jiliguala/niuwa/module/splash/SplashActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;-><init>()V

    .line 64
    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->mRefreshUserInfoOk:Z

    .line 65
    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->mSplashDelayOk:Z

    .line 66
    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->alreadyStartMain:Z

    .line 70
    const/4 v0, 0x5

    iput v0, p0, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->countTimes:I

    .line 73
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/splash/SplashActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/splash/SplashActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->extraImg:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/splash/SplashActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/splash/SplashActivity;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->goNext()V

    return-void
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/splash/SplashActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/splash/SplashActivity;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->countDown()V

    return-void
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/splash/SplashActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/splash/SplashActivity;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->showSplashExtra()V

    return-void
.end method

.method private countDown()V
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->countTimes:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->countTimes:I

    .line 200
    iget v0, p0, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->countTimes:I

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->setCdText(I)V

    .line 201
    iget v0, p0, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->countTimes:I

    if-gtz v0, :cond_0

    .line 202
    const-string v0, "CONDITION_SPLASH_DELAY_OK"

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->tryToStartMain(Ljava/lang/String;)V

    .line 206
    :goto_0
    return-void

    .line 204
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->postCountDown()V

    goto :goto_0
.end method

.method private delay(J)V
    .locals 3
    .param p1, "delay"    # J

    .prologue
    .line 193
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 194
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 195
    return-void
.end method

.method private delaySplash(J)V
    .locals 3
    .param p1, "delay"    # J

    .prologue
    .line 187
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1002

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 188
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 189
    return-void
.end method

.method private goNext()V
    .locals 10

    .prologue
    const-wide/16 v8, 0xbb8

    .line 111
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 112
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/login/a;->r()Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "uid":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->getSubscriptions()Lrx/i/b;

    move-result-object v2

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v3

    .line 114
    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v3

    .line 115
    invoke-interface {v3, v1}, Lcom/jiliguala/niuwa/logic/network/d;->g(Ljava/lang/String;)Lrx/e;

    move-result-object v3

    .line 116
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v4

    invoke-virtual {v3, v4}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v3

    .line 117
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v4

    invoke-virtual {v3, v4}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v3

    const-wide/16 v4, 0x3

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 118
    invoke-virtual {v3, v4, v5, v6}, Lrx/e;->q(JLjava/util/concurrent/TimeUnit;)Lrx/e;

    move-result-object v3

    .line 119
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v4

    invoke-virtual {v3, v4}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v3

    new-instance v4, Lcom/jiliguala/niuwa/module/splash/SplashActivity$2;

    invoke-direct {v4, p0}, Lcom/jiliguala/niuwa/module/splash/SplashActivity$2;-><init>(Lcom/jiliguala/niuwa/module/splash/SplashActivity;)V

    .line 120
    invoke-virtual {v3, v4}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v3

    .line 113
    invoke-virtual {v2, v3}, Lrx/i/b;->a(Lrx/m;)V

    .line 151
    invoke-static {p0}, Lcom/jiliguala/niuwa/logic/o/a;->b(Landroid/content/Context;)Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Splash;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->splash:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Splash;

    .line 152
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->splash:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Splash;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->splash:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Splash;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Splash;->path:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 153
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->splash:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Splash;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Splash;->path:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 154
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    const-wide/16 v2, 0x320

    invoke-direct {p0, v2, v3}, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->delaySplash(J)V

    .line 166
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "uid":Ljava/lang/String;
    :goto_0
    return-void

    .line 157
    .restart local v0    # "file":Ljava/io/File;
    .restart local v1    # "uid":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, v8, v9}, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->delay(J)V

    goto :goto_0

    .line 160
    .end local v0    # "file":Ljava/io/File;
    :cond_1
    invoke-direct {p0, v8, v9}, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->delay(J)V

    goto :goto_0

    .line 163
    .end local v1    # "uid":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, v8, v9}, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->delay(J)V

    .line 164
    const-string v2, "CONDITION_REFRESH_USER_INFO_OK"

    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->tryToStartMain(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private postCountDown()V
    .locals 4

    .prologue
    .line 209
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1001

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 210
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 211
    return-void
.end method

.method private reportSplashViewClick(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 257
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 258
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "URL"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Splash View Click"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 260
    return-void
.end method

.method private setCdText(I)V
    .locals 5
    .param p1, "count"    # I

    .prologue
    .line 281
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->skipText:Landroid/widget/TextView;

    const v1, 0x7f0f01c4

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    return-void
.end method

.method private showSplashExtra()V
    .locals 4

    .prologue
    .line 169
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->splash:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Splash;

    if-nez v1, :cond_0

    .line 184
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->splashContainer:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 173
    invoke-static {p0}, Lcom/bumptech/glide/l;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/o;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->splash:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Splash;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Splash;->path:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/o;->a(Ljava/io/File;)Lcom/bumptech/glide/g;

    move-result-object v1

    const/4 v2, 0x1

    .line 174
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/g;->a(Z)Lcom/bumptech/glide/f;

    move-result-object v1

    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 175
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/f;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/f;

    move-result-object v0

    .line 176
    .local v0, "builder":Lcom/bumptech/glide/f;, "Lcom/bumptech/glide/f<Ljava/io/File;>;"
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->extraImg:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->extraImg:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    if-eqz v1, :cond_1

    .line 177
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->extraImg:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->extraImg:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/bumptech/glide/f;->e(II)Lcom/bumptech/glide/f;

    .line 179
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->extraImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/f;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/m;

    .line 180
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->extraImg:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->splash:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Splash;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Splash;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 181
    iget v1, p0, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->countTimes:I

    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->setCdText(I)V

    .line 182
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->postCountDown()V

    .line 183
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->splash:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Splash;

    invoke-static {v1}, Lcom/jiliguala/niuwa/logic/o/a;->a(Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Splash;)V

    goto :goto_0
.end method

.method private startMain()V
    .locals 1

    .prologue
    .line 263
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->startMain(Ljava/lang/String;)V

    .line 264
    return-void
.end method

.method private startMain(Ljava/lang/String;)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 267
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->alreadyStartMain:Z

    .line 268
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 270
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 271
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 272
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 275
    :cond_0
    const v1, 0x7f01000c

    const v2, 0x7f010011

    invoke-virtual {p0, v1, v2}, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->overridePendingTransition(II)V

    .line 276
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 277
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->finish()V

    .line 278
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 323
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 235
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 237
    :sswitch_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 238
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->startMain()V

    goto :goto_0

    .line 242
    :sswitch_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 243
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 244
    .local v0, "tag":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 245
    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->reportSplashViewClick(Ljava/lang/String;)V

    .line 246
    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->startMain(Ljava/lang/String;)V

    .line 247
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->splash:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Splash;

    invoke-static {v1}, Lcom/jiliguala/niuwa/logic/o/a;->b(Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Splash;)V

    goto :goto_0

    .line 235
    :sswitch_data_0
    .sparse-switch
        0x7f090405 -> :sswitch_0
        0x7f090511 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->isTaskRoot()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MAIN"

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->finish()V

    .line 104
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-static {}, Lcom/jiliguala/niuwa/module/babyintiation/helper/PreloadHelper;->getInstance()Lcom/jiliguala/niuwa/module/babyintiation/helper/PreloadHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/babyintiation/helper/PreloadHelper;->startPreLoad()V

    .line 88
    new-instance v0, Lcom/jiliguala/niuwa/module/splash/SplashActivity$a;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/splash/SplashActivity$a;-><init>(Lcom/jiliguala/niuwa/module/splash/SplashActivity;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->mHandler:Landroid/os/Handler;

    .line 89
    const v0, 0x7f0b0048

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->setContentView(I)V

    .line 90
    const v0, 0x7f090510

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->splashContainer:Landroid/widget/RelativeLayout;

    .line 91
    const v0, 0x7f090405

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->mProgressConainer:Landroid/widget/RelativeLayout;

    .line 92
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->mProgressConainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    const v0, 0x7f090511

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->extraImg:Landroid/widget/ImageView;

    .line 94
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->extraImg:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    const v0, 0x7f0904f8

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->skipText:Landroid/widget/TextView;

    .line 96
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->extraImg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/module/splash/SplashActivity$1;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/splash/SplashActivity$1;-><init>(Lcom/jiliguala/niuwa/module/splash/SplashActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 313
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onDestroy()V

    .line 314
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 317
    :cond_0
    return-void
.end method

.method public tryToStartMain(Ljava/lang/String;)V
    .locals 2
    .param p1, "condition"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 223
    const-string v0, "CONDITION_REFRESH_USER_INFO_OK"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 224
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->mRefreshUserInfoOk:Z

    .line 228
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->mSplashDelayOk:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->mRefreshUserInfoOk:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->alreadyStartMain:Z

    if-nez v0, :cond_1

    .line 229
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->startMain()V

    .line 231
    :cond_1
    return-void

    .line 225
    :cond_2
    const-string v0, "CONDITION_SPLASH_DELAY_OK"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->mSplashDelayOk:Z

    goto :goto_0
.end method
