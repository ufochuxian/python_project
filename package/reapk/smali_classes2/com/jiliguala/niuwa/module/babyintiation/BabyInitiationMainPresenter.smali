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

.field private skinManager:Lcom/jiliguala/niuwa/logic/m/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/d;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;->downloadSplash(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;->downloadSkin(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;)Lcom/jiliguala/niuwa/logic/m/a;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;->skinManager:Lcom/jiliguala/niuwa/logic/m/a;

    return-object v0
.end method

.method static synthetic access$302(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;->hasDownload:Z

    return p1
.end method

.method static synthetic access$400(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;->refreshDelay()V

    return-void
.end method

.method static synthetic access$500(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;Lcom/jiliguala/niuwa/logic/b/a/j;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;
    .param p1, "x1"    # Lcom/jiliguala/niuwa/logic/b/a/j;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;->postShareGiftResultToServer(Lcom/jiliguala/niuwa/logic/b/a/j;)V

    return-void
.end method

.method static synthetic access$600(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;->refresh()V

    return-void
.end method

.method private addEventObserver()V
    .locals 4

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;->getSubscription()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/logic/b/a/a;

    .line 196
    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Class;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter$5;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter$5;-><init>(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;)V

    new-instance v3, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter$6;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter$6;-><init>(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;)V

    .line 197
    invoke-virtual {v1, v2, v3}, Lrx/e;->b(Lrx/c/c;Lrx/c/c;)Lrx/m;

    move-result-object v1

    .line 195
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 218
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;->getSubscription()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/logic/b/a/j;

    .line 219
    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Class;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter$7;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter$7;-><init>(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;)V

    new-instance v3, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter$8;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter$8;-><init>(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;)V

    .line 220
    invoke-virtual {v1, v2, v3}, Lrx/e;->b(Lrx/c/c;Lrx/c/c;)Lrx/m;

    move-result-object v1

    .line 218
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 239
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;->getSubscription()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/logic/b/a/c;

    .line 240
    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Class;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter$9;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter$9;-><init>(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;)V

    .line 241
    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/c/c;)Lrx/m;

    move-result-object v1

    .line 239
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 247
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
    .line 93
    .local p1, "skinList":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;>;"
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;->mSkinDownloaded:Z

    if-eqz v0, :cond_0

    .line 110
    :goto_0
    return-void

    .line 96
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;->mSkinDownloaded:Z

    .line 97
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;->getSubscription()Lrx/i/b;

    move-result-object v0

    invoke-static {p1}, Lrx/e;->a(Ljava/lang/Object;)Lrx/e;

    move-result-object v1

    .line 98
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 99
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter$3;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter$3;-><init>(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;)V

    .line 100
    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/c/c;)Lrx/m;

    move-result-object v1

    .line 97
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
    .line 113
    .local p1, "splashList":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Splash;>;"
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;->hasDownload:Z

    if-eqz v0, :cond_0

    .line 130
    :goto_0
    return-void

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;->getSubscription()Lrx/i/b;

    move-result-object v0

    invoke-static {p1}, Lrx/e;->a(Ljava/lang/Object;)Lrx/e;

    move-result-object v1

    .line 117
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 118
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter$4;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter$4;-><init>(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;)V

    .line 119
    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/c/c;)Lrx/m;

    move-result-object v1

    .line 116
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    goto :goto_0
.end method

.method private getAgeType()I
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 179
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/login/a;->h()Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "createTime":Ljava/lang/String;
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/login/a;->V()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 183
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 184
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

    .line 185
    .local v1, "isNew":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 189
    :goto_1
    return v2

    .end local v1    # "isNew":Z
    :cond_0
    move v1, v3

    .line 184
    goto :goto_0

    .restart local v1    # "isNew":Z
    :cond_1
    move v2, v3

    .line 185
    goto :goto_1

    .line 187
    .end local v1    # "isNew":Z
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 188
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

    .line 189
    .restart local v1    # "isNew":Z
    :goto_2
    if-eqz v1, :cond_4

    const/4 v2, 0x3

    goto :goto_1

    .end local v1    # "isNew":Z
    :cond_3
    move v1, v3

    .line 188
    goto :goto_2

    .line 189
    .restart local v1    # "isNew":Z
    :cond_4
    const/4 v2, 0x2

    goto :goto_1
.end method

.method private postShareGiftResultToServer(Lcom/jiliguala/niuwa/logic/b/a/j;)V
    .locals 6
    .param p1, "event"    # Lcom/jiliguala/niuwa/logic/b/a/j;

    .prologue
    .line 250
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, "bid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 252
    new-instance v3, Lcom/jiliguala/niuwa/logic/network/json/GiftEntity;

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/b/a/j;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/jiliguala/niuwa/logic/network/json/GiftEntity;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/jiliguala/niuwa/logic/network/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 253
    .local v2, "json":Ljava/lang/String;
    invoke-static {v2}, Lcom/jiliguala/niuwa/logic/network/a/b;->a(Ljava/lang/String;)Lokhttp3/ab;

    move-result-object v1

    .line 254
    .local v1, "body":Lokhttp3/ab;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;->getSubscription()Lrx/i/b;

    move-result-object v3

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v4

    .line 255
    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v4

    .line 256
    invoke-interface {v4, v1}, Lcom/jiliguala/niuwa/logic/network/d;->z(Lokhttp3/ab;)Lrx/e;

    move-result-object v4

    .line 257
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v5

    invoke-virtual {v4, v5}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v4

    .line 258
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v5

    invoke-virtual {v4, v5}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v4

    .line 259
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v5

    invoke-virtual {v4, v5}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v4

    new-instance v5, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter$10;

    invoke-direct {v5, p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter$10;-><init>(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;)V

    .line 260
    invoke-virtual {v4, v5}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v4

    .line 254
    invoke-virtual {v3, v4}, Lrx/i/b;->a(Lrx/m;)V

    .line 277
    .end local v1    # "body":Lokhttp3/ab;
    .end local v2    # "json":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private refresh()V
    .locals 4

    .prologue
    .line 167
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "curBabyId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    :goto_0
    return-void

    .line 172
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainUi;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v2

    const-string v3, "PREFS_AB_TEST_SONG"

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/logic/login/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainUi;->showFree(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainUi;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/login/a;->N()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainUi;->showUserInfo(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainUi;

    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;->getAgeType()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainUi;->showUiOnAge(I)V

    .line 175
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;->requestServer()V

    goto :goto_0
.end method

.method private refreshDelay()V
    .locals 4

    .prologue
    .line 285
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter$2;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter$2;-><init>(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 291
    return-void
.end method

.method private showMask()V
    .locals 3

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;->getAgeType()I

    move-result v0

    .line 159
    .local v0, "ageType":I
    if-eqz v0, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 161
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainUi;

    if-nez v0, :cond_2

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v1, v2}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainUi;->showMask(Z)V

    .line 163
    :cond_1
    return-void

    .line 161
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getSkin(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 134
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;->skinManager:Lcom/jiliguala/niuwa/logic/m/a;

    invoke-virtual {v1, p1}, Lcom/jiliguala/niuwa/logic/m/a;->a(Landroid/content/Context;)Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;

    move-result-object v0

    .line 135
    .local v0, "skin":Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;->path:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 138
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
    .line 142
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;->mHandler:Landroid/os/Handler;

    .line 143
    new-instance v0, Lcom/jiliguala/niuwa/logic/m/a;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/m/a;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;->skinManager:Lcom/jiliguala/niuwa/logic/m/a;

    .line 144
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;->addEventObserver()V

    .line 146
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;->skinManager:Lcom/jiliguala/niuwa/logic/m/a;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;->skinManager:Lcom/jiliguala/niuwa/logic/m/a;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/m/a;->a()V

    .line 152
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 281
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;->refresh()V

    .line 282
    return-void
.end method

.method public requestServer()V
    .locals 4

    .prologue
    .line 59
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "curBabyId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;->getSubscription()Lrx/i/b;

    move-result-object v1

    .line 64
    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v2

    .line 65
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v2

    .line 66
    invoke-interface {v2, v0}, Lcom/jiliguala/niuwa/logic/network/d;->C(Ljava/lang/String;)Lrx/e;

    move-result-object v2

    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 67
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 68
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v2

    new-instance v3, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter$1;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter$1;-><init>(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;)V

    .line 69
    invoke-virtual {v2, v3}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v2

    .line 63
    invoke-virtual {v1, v2}, Lrx/i/b;->a(Lrx/m;)V

    goto :goto_0
.end method
