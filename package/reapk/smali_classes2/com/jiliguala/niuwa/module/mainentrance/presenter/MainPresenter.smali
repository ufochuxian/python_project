.class public Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final AUDIO_RECORD_FILE_NAME:Ljava/lang/String; = "audio"

.field static final MAX_RETRY_COUNT:I = 0x3

.field private static final MIGRATION_VER:I = 0xa

.field private static final OFFLINE_MIGRATION_VER:I = 0x11

.field private static final TAG:Ljava/lang/String;

.field private static final USER_MIGRATION_VER:I = 0x1b

.field public static mIsShowTvLogin:Z


# instance fields
.field private counter:I

.field private downloadInterface:Lcom/jiliguala/niuwa/receivers/DownloadReceiver$a;

.field private mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

.field private mDownloadReceiver:Lcom/jiliguala/niuwa/receivers/DownloadReceiver;

.field private mMainView:Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-class v0, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainView;)V
    .locals 1
    .param p1, "mainView"    # Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainView;

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    .line 70
    new-instance v0, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter$1;-><init>(Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;->downloadInterface:Lcom/jiliguala/niuwa/receivers/DownloadReceiver$a;

    .line 110
    const/4 v0, 0x0

    iput v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;->counter:I

    .line 113
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;->mMainView:Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainView;

    .line 114
    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;)Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;->mMainView:Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;->unzipInteractLesson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;->handleGlobeResponse(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;)I
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;

    .prologue
    .line 58
    iget v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;->counter:I

    return v0
.end method

.method static synthetic access$308(Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;)I
    .locals 2
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;

    .prologue
    .line 58
    iget v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;->counter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;->counter:I

    return v0
.end method

.method static synthetic access$400(Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;)Lcom/jiliguala/niuwa/common/util/xutils/c;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    return-object v0
.end method

.method static synthetic access$500(Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;->letUserManuallyLogin()V

    return-void
.end method

.method private doRequestGlobe()V
    .locals 4

    .prologue
    .line 240
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;->mMainView:Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainView;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;->mMainView:Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainView;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    .line 242
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v1

    sget-object v2, Lcom/jiliguala/niuwa/common/util/b/a;->a:Ljava/lang/String;

    .line 243
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->g()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/jiliguala/niuwa/logic/network/d;->a(Ljava/lang/String;I)Lrx/e;

    move-result-object v1

    .line 244
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 245
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 246
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter$3;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter$3;-><init>(Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;)V

    .line 247
    invoke-virtual {v1, v2}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v1

    .line 241
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 270
    :cond_0
    return-void
.end method

.method private doRequestGlobeAnonymous()V
    .locals 3

    .prologue
    .line 273
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;->mMainView:Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainView;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;->mMainView:Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainView;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    .line 275
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v1

    .line 276
    invoke-interface {v1}, Lcom/jiliguala/niuwa/logic/network/d;->a()Lrx/e;

    move-result-object v1

    .line 277
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 278
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 279
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter$4;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter$4;-><init>(Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;)V

    .line 280
    invoke-virtual {v1, v2}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v1

    .line 274
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 302
    :cond_0
    return-void
.end method

.method private generateBody()Lokhttp3/ab;
    .locals 3

    .prologue
    .line 414
    invoke-static {}, Lcom/jiliguala/niuwa/logic/p/a;->a()Lcom/jiliguala/niuwa/logic/p/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/p/a;->d()Ljava/lang/String;

    move-result-object v1

    .line 415
    .local v1, "json":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 416
    invoke-static {v1}, Lcom/jiliguala/niuwa/logic/network/a/b;->a(Ljava/lang/String;)Lokhttp3/ab;

    move-result-object v0

    .line 419
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private generateRequestBody(Lcom/jiliguala/niuwa/logic/network/json/WechatSubscribeTemplete;)Lokhttp3/ab;
    .locals 2
    .param p1, "data"    # Lcom/jiliguala/niuwa/logic/network/json/WechatSubscribeTemplete;

    .prologue
    .line 563
    invoke-static {p1}, Lcom/jiliguala/niuwa/logic/network/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 565
    .local v1, "json":Ljava/lang/String;
    invoke-static {v1}, Lcom/jiliguala/niuwa/logic/network/a/b;->a(Ljava/lang/String;)Lokhttp3/ab;

    move-result-object v0

    .line 566
    .local v0, "body":Lokhttp3/ab;
    return-object v0
.end method

.method private handleGlobeResponse(Ljava/lang/Object;)V
    .locals 13
    .param p1, "response"    # Ljava/lang/Object;

    .prologue
    .line 308
    if-eqz p1, :cond_7

    instance-of v9, p1, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate;

    if-eqz v9, :cond_7

    move-object v3, p1

    .line 310
    check-cast v3, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate;

    .line 312
    .local v3, "globeTemplate":Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate;
    iget-object v9, v3, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$DataPart;

    if-nez v9, :cond_0

    .line 371
    .end local v3    # "globeTemplate":Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate;
    .end local p1    # "response":Ljava/lang/Object;
    :goto_0
    return-void

    .line 314
    .restart local v3    # "globeTemplate":Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate;
    .restart local p1    # "response":Ljava/lang/Object;
    :cond_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v9

    invoke-virtual {v9}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v9, p1

    check-cast v9, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate;

    iget-object v9, v9, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$DataPart;

    iget-object v9, v9, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$DataPart;->user:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    if-eqz v9, :cond_3

    .line 316
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v9

    invoke-virtual {v9}, Lcom/jiliguala/niuwa/logic/login/a;->d()Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    move-result-object v0

    .line 317
    .local v0, "curUser":Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;
    invoke-static {v0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 318
    iget-object v10, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    move-object v9, p1

    check-cast v9, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate;

    iget-object v9, v9, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$DataPart;

    iget-object v9, v9, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$DataPart;->user:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v9, v9, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->b:Ljava/util/ArrayList;

    iput-object v9, v10, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->b:Ljava/util/ArrayList;

    .line 319
    iget-object v10, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    move-object v9, p1

    check-cast v9, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate;

    iget-object v9, v9, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$DataPart;

    iget-object v9, v9, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$DataPart;->user:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v9, v9, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->groups:Ljava/util/ArrayList;

    iput-object v9, v10, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->groups:Ljava/util/ArrayList;

    move-object v9, p1

    .line 320
    check-cast v9, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate;

    iget-object v9, v9, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$DataPart;

    iget-object v8, v9, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$DataPart;->user:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    .line 321
    .local v8, "user":Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;
    if-eqz v8, :cond_1

    .line 322
    iget-object v9, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v10, v8, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->bind:Ljava/util/HashMap;

    iput-object v10, v9, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->bind:Ljava/util/HashMap;

    .line 324
    :cond_1
    iget-object v10, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    move-object v9, p1

    check-cast v9, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate;

    iget-object v9, v9, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$DataPart;

    iget-object v9, v9, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$DataPart;->user:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v9, v9, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->cts:Ljava/lang/String;

    iput-object v9, v10, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->cts:Ljava/lang/String;

    .line 325
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/jiliguala/niuwa/logic/login/a;->b(Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;)V

    .line 327
    new-instance v2, Lcom/jiliguala/niuwa/logic/b/a/a;

    const/16 v9, 0x1001

    invoke-direct {v2, v9}, Lcom/jiliguala/niuwa/logic/b/a/a;-><init>(I)V

    .line 328
    .local v2, "event":Lcom/jiliguala/niuwa/logic/b/a/a;
    const-string v9, "globe"

    invoke-virtual {v2, v9}, Lcom/jiliguala/niuwa/logic/b/a/a;->a(Ljava/lang/String;)V

    .line 329
    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v9

    invoke-virtual {v9, v2}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Object;)V

    move-object v9, p1

    .line 331
    check-cast v9, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate;

    iget-object v9, v9, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$DataPart;

    iget-boolean v9, v9, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$DataPart;->tvlogin:Z

    sput-boolean v9, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;->mIsShowTvLogin:Z

    move-object v9, p1

    .line 333
    check-cast v9, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate;

    iget-object v9, v9, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$DataPart;

    iget-boolean v4, v9, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$DataPart;->notif:Z

    .line 336
    .local v4, "notif":Z
    iget-object v9, p0, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;->mMainView:Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainView;

    if-eqz v9, :cond_2

    .line 337
    if-eqz v4, :cond_6

    .line 338
    iget-object v9, p0, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;->mMainView:Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainView;

    invoke-interface {v9}, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainView;->showRedDot()V

    .line 342
    :goto_1
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;->mMainView:Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainView;

    move-object v9, p1

    check-cast v9, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate;

    iget-object v9, v9, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$DataPart;

    iget-object v9, v9, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$DataPart;->shareprefix:Ljava/util/ArrayList;

    invoke-interface {v10, v9}, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainView;->setYouzanSharePrefix(Ljava/util/ArrayList;)V

    :cond_2
    move-object v9, p1

    .line 345
    check-cast v9, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate;

    iget-object v9, v9, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$DataPart;

    iget-object v9, v9, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$DataPart;->shareprefix:Ljava/util/ArrayList;

    sput-object v9, Lcom/jiliguala/niuwa/MyApplication;->mPrefixUrls:Ljava/util/ArrayList;

    .line 348
    .end local v0    # "curUser":Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;
    .end local v2    # "event":Lcom/jiliguala/niuwa/logic/b/a/a;
    .end local v4    # "notif":Z
    .end local v8    # "user":Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;
    :cond_3
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;->handleUpGrade(Ljava/lang/Object;)V

    move-object v9, p1

    .line 350
    check-cast v9, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate;

    iget-object v9, v9, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$DataPart;

    iget-boolean v5, v9, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$DataPart;->recommendnotif:Z

    .line 351
    .local v5, "recommendNotif":Z
    iget-object v9, p0, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;->mMainView:Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainView;

    if-eqz v9, :cond_4

    .line 352
    iget-object v9, p0, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;->mMainView:Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainView;

    invoke-interface {v9, v5}, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainView;->showRecommendRedDot(Z)V

    :cond_4
    move-object v9, p1

    .line 355
    check-cast v9, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate;

    iget-object v9, v9, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$DataPart;

    iget-object v7, v9, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$DataPart;->treasure:Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$Treasure;

    .line 356
    .local v7, "treasure":Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$Treasure;
    iget-object v9, p0, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;->mMainView:Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainView;

    if-eqz v9, :cond_5

    .line 357
    iget-object v9, p0, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;->mMainView:Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainView;

    invoke-interface {v9, v7}, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainView;->showTreasure(Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$Treasure;)V

    :cond_5
    move-object v9, p1

    .line 359
    check-cast v9, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate;

    iget-object v9, v9, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$DataPart;

    iget-object v6, v9, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$DataPart;->subscribe:Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$Subscribe;

    .line 360
    .local v6, "subscribe":Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$Subscribe;
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/ae;->a()Lcom/jiliguala/niuwa/common/util/ae;

    move-result-object v9

    iput-object v6, v9, Lcom/jiliguala/niuwa/common/util/ae;->a:Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$Subscribe;

    .line 361
    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v9

    new-instance v10, Lcom/jiliguala/niuwa/logic/b/a/a;

    const/16 v11, 0x1033

    invoke-direct {v10, v11}, Lcom/jiliguala/niuwa/logic/b/a/a;-><init>(I)V

    invoke-virtual {v9, v10}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Object;)V

    .line 362
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate;

    .end local p1    # "response":Ljava/lang/Object;
    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$DataPart;

    .line 363
    .local v1, "dataPart":Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$DataPart;
    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v9

    new-instance v10, Lcom/jiliguala/niuwa/logic/b/a/c;

    iget-object v11, v1, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$DataPart;->classicon:Ljava/lang/String;

    iget-boolean v12, v1, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$DataPart;->cls:Z

    invoke-direct {v10, v11, v12}, Lcom/jiliguala/niuwa/logic/b/a/c;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v9, v10}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 340
    .end local v1    # "dataPart":Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$DataPart;
    .end local v5    # "recommendNotif":Z
    .end local v6    # "subscribe":Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$Subscribe;
    .end local v7    # "treasure":Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$Treasure;
    .restart local v0    # "curUser":Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;
    .restart local v2    # "event":Lcom/jiliguala/niuwa/logic/b/a/a;
    .restart local v4    # "notif":Z
    .restart local v8    # "user":Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;
    .restart local p1    # "response":Ljava/lang/Object;
    :cond_6
    iget-object v9, p0, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;->mMainView:Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainView;

    invoke-interface {v9}, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainView;->hideRedDot()V

    goto :goto_1

    .line 369
    .end local v0    # "curUser":Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;
    .end local v2    # "event":Lcom/jiliguala/niuwa/logic/b/a/a;
    .end local v3    # "globeTemplate":Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate;
    .end local v4    # "notif":Z
    .end local v8    # "user":Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;
    :cond_7
    const/4 v9, 0x0

    const-string v10, "UPDATE_DIALOG"

    invoke-static {v9, v10}, Lcom/jiliguala/niuwa/module/mainentrance/utils/DialogChain;->addDialogToChain(Landroid/app/Dialog;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private handleUpGrade(Ljava/lang/Object;)V
    .locals 8
    .param p1, "response"    # Ljava/lang/Object;

    .prologue
    .line 378
    if-nez p1, :cond_2

    .line 379
    const/4 v4, 0x0

    .line 384
    .local v4, "ver":I
    :goto_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/s/a;->a()Lcom/jiliguala/niuwa/logic/s/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/logic/s/a;->c()I

    move-result v3

    .line 386
    .local v3, "localVer":I
    if-le v4, v3, :cond_4

    sget-object v6, Lcom/jiliguala/niuwa/common/util/b/a;->a:Ljava/lang/String;

    const-string v7, "GPM"

    .line 392
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 393
    const-string v2, ""

    .local v2, "downloadUrl":Ljava/lang/String;
    move-object v6, p1

    .line 394
    check-cast v6, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$DataPart;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$DataPart;->channelUrls:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$AllChannelData;

    .line 395
    .local v0, "channel":Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$AllChannelData;
    iget-object v2, v0, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$AllChannelData;->chl_download_link:Ljava/lang/String;

    .line 398
    .end local v0    # "channel":Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$AllChannelData;
    :cond_0
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate;

    .end local p1    # "response":Ljava/lang/Object;
    iget-object v6, p1, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$DataPart;

    iget-object v5, v6, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$DataPart;->android_whatsnew:Ljava/util/ArrayList;

    .line 399
    .local v5, "whatsNews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;->mMainView:Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainView;

    if-eqz v6, :cond_1

    .line 400
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    if-eqz v5, :cond_1

    .line 401
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;->mMainView:Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainView;

    invoke-interface {v6, v2, v5}, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainView;->handleUpdate(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 410
    .end local v2    # "downloadUrl":Ljava/lang/String;
    .end local v5    # "whatsNews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    :goto_1
    return-void

    .end local v3    # "localVer":I
    .end local v4    # "ver":I
    .restart local p1    # "response":Ljava/lang/Object;
    :cond_2
    move-object v6, p1

    .line 381
    check-cast v6, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate;

    iget-object v1, v6, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$DataPart;

    .line 382
    .local v1, "data":Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$DataPart;
    if-nez v1, :cond_3

    const/4 v4, 0x0

    .restart local v4    # "ver":I
    :goto_2
    goto :goto_0

    .end local v4    # "ver":I
    :cond_3
    iget v4, v1, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$DataPart;->android_ver:I

    goto :goto_2

    .line 408
    .end local v1    # "data":Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$DataPart;
    .restart local v3    # "localVer":I
    .restart local v4    # "ver":I
    :cond_4
    const/4 v6, 0x0

    const-string v7, "UPDATE_DIALOG"

    invoke-static {v6, v7}, Lcom/jiliguala/niuwa/module/mainentrance/utils/DialogChain;->addDialogToChain(Landroid/app/Dialog;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private initDownloadReceiver()V
    .locals 3

    .prologue
    .line 216
    new-instance v1, Lcom/jiliguala/niuwa/receivers/DownloadReceiver;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;->downloadInterface:Lcom/jiliguala/niuwa/receivers/DownloadReceiver$a;

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/receivers/DownloadReceiver;-><init>(Lcom/jiliguala/niuwa/receivers/DownloadReceiver$a;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;->mDownloadReceiver:Lcom/jiliguala/niuwa/receivers/DownloadReceiver;

    .line 217
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 218
    .local v0, "filter":Landroid/content/IntentFilter;
    sget-object v1, Lcom/jiliguala/niuwa/services/DownloadService;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 219
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;->mDownloadReceiver:Lcom/jiliguala/niuwa/receivers/DownloadReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 220
    return-void
.end method

.method private letUserManuallyLogin()V
    .locals 4

    .prologue
    .line 499
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;->mMainView:Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainView;

    if-eqz v2, :cond_0

    .line 500
    const v2, 0x7f0f018a

    invoke-static {v2}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(I)V

    .line 501
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v2

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/logic/login/a;->a(Landroid/content/Context;)V

    .line 509
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;->mMainView:Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainView;

    invoke-interface {v2}, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 510
    .local v0, "activity":Landroid/app/Activity;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 511
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x34000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 512
    const-string v2, "ARGUMENT_IS_FROM_LOGOUT"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 513
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 514
    const v2, 0x7f01001d

    const v3, 0x7f010013

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 517
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private unregisterReceiver()V
    .locals 2

    .prologue
    .line 223
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;->mDownloadReceiver:Lcom/jiliguala/niuwa/receivers/DownloadReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 224
    return-void
.end method

.method private unzipInteractLesson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "downloadUrl"    # Ljava/lang/String;
    .param p3, "fullPath"    # Ljava/lang/String;

    .prologue
    .line 119
    sget-boolean v0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->S_IS_SUB_COURSE_VISIBLE:Z

    if-nez v0, :cond_0

    .line 120
    invoke-static {}, Lcom/jiliguala/niuwa/services/f;->a()Lcom/jiliguala/niuwa/services/f;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;->getSrcFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;->getDestFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    sget-object v7, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->PATH_PREFIX:Ljava/lang/String;

    move-object v1, p2

    move-object v2, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v7}, Lcom/jiliguala/niuwa/services/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/UnzipFileInterface;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    .line 122
    :cond_0
    return-void
.end method


# virtual methods
.method public checkVersion()V
    .locals 2

    .prologue
    .line 134
    invoke-static {}, Lcom/jiliguala/niuwa/logic/s/a;->a()Lcom/jiliguala/niuwa/logic/s/a;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter$2;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter$2;-><init>(Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/s/a;->a(Lcom/jiliguala/niuwa/logic/s/a$a;)V

    .line 172
    return-void
.end method

.method public doAppUpGrade(Ljava/lang/String;)V
    .locals 6
    .param p1, "upgradeUrl"    # Ljava/lang/String;

    .prologue
    .line 186
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/jiliguala/niuwa/common/util/d/a;->e(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 189
    .local v3, "filePath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 190
    .local v1, "dstFile":Ljava/io/File;
    const/4 v4, 0x1

    invoke-static {v1, v4}, Lcom/jiliguala/niuwa/common/util/i;->a(Ljava/io/File;Z)Z

    .line 193
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/jiliguala/niuwa/services/DownloadService;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 194
    .local v0, "apkDownIntent":Landroid/content/Intent;
    sget-object v4, Lcom/jiliguala/niuwa/services/DownloadService;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    const-string v4, "type"

    const/4 v5, 0x6

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 196
    const-string v4, "_id"

    invoke-static {p1}, Lcom/jiliguala/niuwa/common/util/x;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    const-string v4, "url"

    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    const-string v4, "download_type"

    const/4 v5, 0x2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 199
    const-string v4, "path"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    :try_start_0
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :goto_0
    return-void

    .line 202
    :catch_0
    move-exception v2

    .line 203
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public doReAuth()V
    .locals 6

    .prologue
    .line 452
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/login/a;->w()Ljava/lang/String;

    move-result-object v1

    .line 453
    .local v1, "_u":Ljava/lang/String;
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/login/a;->x()Ljava/lang/String;

    move-result-object v0

    .line 454
    .local v0, "_p":Ljava/lang/String;
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/login/a;->F()Ljava/lang/String;

    move-result-object v2

    .line 455
    .local v2, "typ":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 456
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;->letUserManuallyLogin()V

    .line 495
    :cond_1
    :goto_0
    return-void

    .line 459
    :cond_2
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;->mMainView:Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainView;

    if-eqz v3, :cond_1

    .line 460
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;->mMainView:Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainView;

    invoke-interface {v3}, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainView;->getSubscriptions()Lrx/i/b;

    move-result-object v3

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v4

    .line 461
    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v4

    .line 462
    invoke-interface {v4, v1, v0, v2}, Lcom/jiliguala/niuwa/logic/network/d;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/e;

    move-result-object v4

    .line 463
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v5

    invoke-virtual {v4, v5}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v4

    .line 464
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v5

    invoke-virtual {v4, v5}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v4

    .line 465
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v5

    invoke-virtual {v4, v5}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v4

    new-instance v5, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter$6;

    invoke-direct {v5, p0}, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter$6;-><init>(Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;)V

    .line 466
    invoke-virtual {v4, v5}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v4

    .line 460
    invoke-virtual {v3, v4}, Lrx/i/b;->a(Lrx/m;)V

    goto :goto_0
.end method

.method public executeMigration(II)V
    .locals 5
    .param p1, "oldVer"    # I
    .param p2, "newVer"    # I

    .prologue
    const/4 v4, 0x0

    .line 175
    const-string v3, "MIGRATION"

    invoke-static {v3, v4}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;Z)Z

    move-result v0

    .line 176
    .local v0, "hasMigrated":Z
    const-string v3, "OFFLINE_MIGRATION"

    invoke-static {v3, v4}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;Z)Z

    move-result v1

    .line 177
    .local v1, "hasOffLineMigrated":Z
    const-string v3, "USER_INFO_MIGRATION"

    invoke-static {v3, v4}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;Z)Z

    move-result v2

    .line 183
    .local v2, "hasUserMigrated":Z
    return-void
.end method

.method protected getDestFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 130
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->PATH_PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected getSrcFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 125
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->PATH_PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".zip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 126
    .local v0, "downloadFile":Ljava/io/File;
    return-object v0
.end method

.method public postDataToServer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "openid"    # Ljava/lang/String;
    .param p2, "sceneid"    # Ljava/lang/String;

    .prologue
    .line 528
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 560
    :goto_0
    return-void

    .line 529
    :cond_0
    new-instance v0, Lcom/jiliguala/niuwa/logic/network/json/WechatSubscribeTemplete;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/network/json/WechatSubscribeTemplete;-><init>()V

    .line 530
    .local v0, "templete":Lcom/jiliguala/niuwa/logic/network/json/WechatSubscribeTemplete;
    iput-object p1, v0, Lcom/jiliguala/niuwa/logic/network/json/WechatSubscribeTemplete;->openid:Ljava/lang/String;

    .line 531
    iput-object p2, v0, Lcom/jiliguala/niuwa/logic/network/json/WechatSubscribeTemplete;->sceneid:Ljava/lang/String;

    .line 532
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;->mMainView:Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainView;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainView;->getSubscriptions()Lrx/i/b;

    move-result-object v1

    .line 533
    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v2

    .line 534
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v2

    .line 535
    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;->generateRequestBody(Lcom/jiliguala/niuwa/logic/network/json/WechatSubscribeTemplete;)Lokhttp3/ab;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/jiliguala/niuwa/logic/network/d;->F(Lokhttp3/ab;)Lrx/e;

    move-result-object v2

    .line 536
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 537
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 538
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v2

    new-instance v3, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter$7;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter$7;-><init>(Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;)V

    .line 539
    invoke-virtual {v2, v3}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v2

    .line 532
    invoke-virtual {v1, v2}, Lrx/i/b;->a(Lrx/m;)V

    goto :goto_0
.end method

.method public registerAll()V
    .locals 0

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;->initDownloadReceiver()V

    .line 209
    return-void
.end method

.method public releaseRef()V
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;->downloadInterface:Lcom/jiliguala/niuwa/receivers/DownloadReceiver$a;

    if-eqz v0, :cond_0

    .line 521
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;->downloadInterface:Lcom/jiliguala/niuwa/receivers/DownloadReceiver$a;

    .line 523
    :cond_0
    return-void
.end method

.method public reportBulkTrack()V
    .locals 4

    .prologue
    .line 423
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;->generateBody()Lokhttp3/ab;

    move-result-object v0

    .line 424
    .local v0, "body":Lokhttp3/ab;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;->mMainView:Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainView;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 425
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;->mMainView:Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainView;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainView;->getSubscriptions()Lrx/i/b;

    move-result-object v1

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v2

    .line 426
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v2

    .line 427
    invoke-interface {v2, v0}, Lcom/jiliguala/niuwa/logic/network/d;->b(Lokhttp3/ab;)Lrx/e;

    move-result-object v2

    .line 428
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 429
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 430
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v2

    new-instance v3, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter$5;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter$5;-><init>(Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;)V

    .line 431
    invoke-virtual {v2, v3}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v2

    .line 425
    invoke-virtual {v1, v2}, Lrx/i/b;->a(Lrx/m;)V

    .line 448
    :cond_0
    return-void
.end method

.method public requestGlobe()V
    .locals 1

    .prologue
    .line 232
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;->doRequestGlobe()V

    .line 237
    :cond_0
    return-void
.end method

.method public unRegisterAll()V
    .locals 0

    .prologue
    .line 212
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;->unregisterReceiver()V

    .line 213
    return-void
.end method
