.class public Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;
.super Lcom/jiliguala/niuwa/common/base/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jiliguala/niuwa/common/base/d",
        "<",
        "Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainUi;",
        ">;"
    }
.end annotation


# static fields
.field private static final NEW_USER_CREATE_TIME_VERSION_6:Ljava/lang/String; = "2017-06-22"

.field private static final NEW_USER_CREATE_TIME_VERSION_7:Ljava/lang/String; = "2017-12-29"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private hasDownload:Z

.field private mHandler:Landroid/os/Handler;

.field private mSkinDownloaded:Z

.field private skinManager:Lcom/jiliguala/niuwa/logic/n/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/d;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;->downloadSplash(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;->downloadSkin(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;)Lcom/jiliguala/niuwa/logic/n/a;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;->skinManager:Lcom/jiliguala/niuwa/logic/n/a;

    return-object v0
.end method

.method static synthetic access$302(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;->hasDownload:Z

    return p1
.end method

.method static synthetic access$400(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;->refreshDelay()V

    return-void
.end method

.method static synthetic access$500(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;Lcom/jiliguala/niuwa/logic/b/a/j;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;
    .param p1, "x1"    # Lcom/jiliguala/niuwa/logic/b/a/j;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;->postShareGiftResultToServer(Lcom/jiliguala/niuwa/logic/b/a/j;)V

    return-void
.end method

.method static synthetic access$600(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;->refresh()V

    return-void
.end method

.method private addEventObserver()V
    .locals 4

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;->getSubscription()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/logic/b/a/a;

    .line 194
    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Class;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter$5;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter$5;-><init>(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;)V

    new-instance v3, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter$6;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter$6;-><init>(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;)V

    .line 195
    invoke-virtual {v1, v2, v3}, Lrx/e;->b(Lrx/c/c;Lrx/c/c;)Lrx/m;

    move-result-object v1

    .line 193
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 216
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;->getSubscription()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/logic/b/a/j;

    .line 217
    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Class;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter$7;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter$7;-><init>(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;)V

    new-instance v3, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter$8;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter$8;-><init>(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;)V

    .line 218
    invoke-virtual {v1, v2, v3}, Lrx/e;->b(Lrx/c/c;Lrx/c/c;)Lrx/m;

    move-result-object v1

    .line 216
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 237
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;->getSubscription()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/logic/b/a/c;

    .line 238
    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Class;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter$9;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter$9;-><init>(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;)V

    .line 239
    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/c/c;)Lrx/m;

    move-result-object v1

    .line 237
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 245
    return-void
.end method

.method private downloadSkin(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p1, "skinList":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;>;"
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;->mSkinDownloaded:Z

    if-eqz v0, :cond_0

    .line 108
    :goto_0
    return-void

    .line 94
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;->mSkinDownloaded:Z

    .line 95
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;->getSubscription()Lrx/i/b;

    move-result-object v0

    invoke-static {p1}, Lrx/e;->a(Ljava/lang/Object;)Lrx/e;

    move-result-object v1

    .line 96
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 97
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter$3;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter$3;-><init>(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;)V

    .line 98
    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/c/c;)Lrx/m;

    move-result-object v1

    .line 95
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    goto :goto_0
.end method

.method private downloadSplash(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Splash;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, "splashList":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Splash;>;"
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;->hasDownload:Z

    if-eqz v0, :cond_0

    .line 128
    :goto_0
    return-void

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;->getSubscription()Lrx/i/b;

    move-result-object v0

    invoke-static {p1}, Lrx/e;->a(Ljava/lang/Object;)Lrx/e;

    move-result-object v1

    .line 115
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 116
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter$4;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter$4;-><init>(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;)V

    .line 117
    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/c/c;)Lrx/m;

    move-result-object v1

    .line 114
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    goto :goto_0
.end method

.method private getAgeType()I
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 177
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/login/a;->h()Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "createTime":Ljava/lang/String;
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/login/a;->V()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 181
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 182
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/f;->c(Ljava/lang/String;)J

    move-result-wide v4

    const-string v6, "2017-06-22"

    invoke-static {v6}, Ljava/sql/Date;->valueOf(Ljava/lang/String;)Ljava/sql/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/sql/Date;->getTime()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    move v1, v2

    .line 183
    .local v1, "isNew":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 187
    :goto_1
    return v2

    .end local v1    # "isNew":Z
    :cond_0
    move v1, v3

    .line 182
    goto :goto_0

    .restart local v1    # "isNew":Z
    :cond_1
    move v2, v3

    .line 183
    goto :goto_1

    .line 185
    .end local v1    # "isNew":Z
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 186
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/f;->c(Ljava/lang/String;)J

    move-result-wide v4

    const-string v6, "2017-12-29"

    invoke-static {v6}, Ljava/sql/Date;->valueOf(Ljava/lang/String;)Ljava/sql/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/sql/Date;->getTime()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_3

    move v1, v2

    .line 187
    .restart local v1    # "isNew":Z
    :goto_2
    if-eqz v1, :cond_4

    const/4 v2, 0x3

    goto :goto_1

    .end local v1    # "isNew":Z
    :cond_3
    move v1, v3

    .line 186
    goto :goto_2

    .line 187
    .restart local v1    # "isNew":Z
    :cond_4
    const/4 v2, 0x2

    goto :goto_1
.end method

.method private postShareGiftResultToServer(Lcom/jiliguala/niuwa/logic/b/a/j;)V
    .locals 6
    .param p1, "event"    # Lcom/jiliguala/niuwa/logic/b/a/j;

    .prologue
    .line 248
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, "bid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 250
    new-instance v3, Lcom/jiliguala/niuwa/logic/network/json/GiftEntity;

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/b/a/j;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/jiliguala/niuwa/logic/network/json/GiftEntity;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/jiliguala/niuwa/logic/network/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 251
    .local v2, "json":Ljava/lang/String;
    invoke-static {v2}, Lcom/jiliguala/niuwa/logic/network/a/b;->a(Ljava/lang/String;)Lokhttp3/ab;

    move-result-object v1

    .line 252
    .local v1, "body":Lokhttp3/ab;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;->getSubscription()Lrx/i/b;

    move-result-object v3

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v4

    .line 253
    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v4

    .line 254
    invoke-interface {v4, v1}, Lcom/jiliguala/niuwa/logic/network/d;->z(Lokhttp3/ab;)Lrx/e;

    move-result-object v4

    .line 255
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v5

    invoke-virtual {v4, v5}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v4

    .line 256
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v5

    invoke-virtual {v4, v5}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v4

    .line 257
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v5

    invoke-virtual {v4, v5}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v4

    new-instance v5, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter$10;

    invoke-direct {v5, p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter$10;-><init>(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;)V

    .line 258
    invoke-virtual {v4, v5}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v4

    .line 252
    invoke-virtual {v3, v4}, Lrx/i/b;->a(Lrx/m;)V

    .line 275
    .end local v1    # "body":Lokhttp3/ab;
    .end local v2    # "json":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private refresh()V
    .locals 3

    .prologue
    .line 165
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "curBabyId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    :goto_0
    return-void

    .line 171
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainUi;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/login/a;->N()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainUi;->showUserInfo(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainUi;

    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;->getAgeType()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainUi;->showUiOnAge(I)V

    .line 173
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;->requestServer()V

    goto :goto_0
.end method

.method private refreshDelay()V
    .locals 4

    .prologue
    .line 283
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter$2;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter$2;-><init>(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 289
    return-void
.end method

.method private showMask()V
    .locals 3

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;->getAgeType()I

    move-result v0

    .line 157
    .local v0, "ageType":I
    if-eqz v0, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainUi;

    if-nez v0, :cond_2

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v1, v2}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainUi;->showMask(Z)V

    .line 161
    :cond_1
    return-void

    .line 159
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getSkin()V
    .locals 2

    .prologue
    .line 132
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;->skinManager:Lcom/jiliguala/niuwa/logic/n/a;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/n/a;->a()Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;

    move-result-object v0

    .line 133
    .local v0, "skin":Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;->path:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainUi;

    invoke-interface {v1, v0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainUi;->showSkin(Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;)V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 140
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;->mHandler:Landroid/os/Handler;

    .line 141
    new-instance v0, Lcom/jiliguala/niuwa/logic/n/a;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/n/a;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;->skinManager:Lcom/jiliguala/niuwa/logic/n/a;

    .line 142
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;->addEventObserver()V

    .line 144
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;->skinManager:Lcom/jiliguala/niuwa/logic/n/a;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;->skinManager:Lcom/jiliguala/niuwa/logic/n/a;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/n/a;->b()V

    .line 150
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 279
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;->refresh()V

    .line 280
    return-void
.end method

.method public requestServer()V
    .locals 4

    .prologue
    .line 57
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "curBabyId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    :goto_0
    return-void

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;->getSubscription()Lrx/i/b;

    move-result-object v1

    .line 62
    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v2

    .line 63
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v2

    .line 64
    invoke-interface {v2, v0}, Lcom/jiliguala/niuwa/logic/network/d;->C(Ljava/lang/String;)Lrx/e;

    move-result-object v2

    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 65
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 66
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v2

    new-instance v3, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter$1;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter$1;-><init>(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;)V

    .line 67
    invoke-virtual {v2, v3}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v2

    .line 61
    invoke-virtual {v1, v2}, Lrx/i/b;->a(Lrx/m;)V

    goto :goto_0
.end method
