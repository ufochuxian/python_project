.class public Lcom/jiliguala/niuwa/module/onboading/presenter/BabyNickNamePresenter;
.super Lcom/jiliguala/niuwa/common/base/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jiliguala/niuwa/common/base/d",
        "<",
        "Lcom/jiliguala/niuwa/module/onboading/view/IBabyNickView;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mBd:Ljava/lang/String;

.field private mNick:Ljava/lang/String;

.field private mUserInfoTemplate:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/jiliguala/niuwa/module/onboading/presenter/BabyNickNamePresenter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/onboading/presenter/BabyNickNamePresenter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/d;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/onboading/presenter/BabyNickNamePresenter;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/onboading/presenter/BabyNickNamePresenter;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/onboading/presenter/BabyNickNamePresenter;->reportAmplitude()V

    return-void
.end method

.method static synthetic access$102(Lcom/jiliguala/niuwa/module/onboading/presenter/BabyNickNamePresenter;Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;)Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/onboading/presenter/BabyNickNamePresenter;
    .param p1, "x1"    # Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/onboading/presenter/BabyNickNamePresenter;->mUserInfoTemplate:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    return-object p1
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/onboading/presenter/BabyNickNamePresenter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/onboading/presenter/BabyNickNamePresenter;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/presenter/BabyNickNamePresenter;->mNick:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/onboading/presenter/BabyNickNamePresenter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/onboading/presenter/BabyNickNamePresenter;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/presenter/BabyNickNamePresenter;->mBd:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/jiliguala/niuwa/module/onboading/presenter/BabyNickNamePresenter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/onboading/presenter/BabyNickNamePresenter;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/module/onboading/presenter/BabyNickNamePresenter;->requestAddBaby(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private reportAmplitude()V
    .locals 3

    .prologue
    .line 79
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v0

    const-string v1, "Start Apk Channel"

    sget-object v2, Lcom/jiliguala/niuwa/common/util/b/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method private requestAddBaby(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "nick"    # Ljava/lang/String;
    .param p2, "bd"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 83
    invoke-static {p2}, Lcom/jiliguala/niuwa/common/util/f;->d(Ljava/lang/String;)J

    move-result-wide v2

    .line 85
    .local v2, "longBirthday":J
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/presenter/BabyNickNamePresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 87
    if-nez p1, :cond_0

    const-string p1, ""

    .line 89
    :cond_0
    const-string v1, "\n"

    const-string v5, ""

    invoke-virtual {p1, v1, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 91
    new-instance v0, Lcom/jiliguala/niuwa/logic/network/json/NewBabyInfoTemplate$PutBabyInfoTemplate;

    move-object v1, p1

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/jiliguala/niuwa/logic/network/json/NewBabyInfoTemplate$PutBabyInfoTemplate;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 92
    .local v0, "template":Lcom/jiliguala/niuwa/logic/network/json/NewBabyInfoTemplate$PutBabyInfoTemplate;
    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/network/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 93
    .local v7, "json":Ljava/lang/String;
    invoke-static {v7}, Lcom/jiliguala/niuwa/logic/network/a/b;->a(Ljava/lang/String;)Lokhttp3/ab;

    move-result-object v6

    .line 95
    .local v6, "body":Lokhttp3/ab;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/presenter/BabyNickNamePresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/onboading/view/IBabyNickView;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/onboading/view/IBabyNickView;->getSubscriptions()Lrx/i/b;

    move-result-object v1

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v4

    invoke-interface {v4, v6}, Lcom/jiliguala/niuwa/logic/network/d;->n(Lokhttp3/ab;)Lrx/e;

    move-result-object v4

    .line 96
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v5

    invoke-virtual {v4, v5}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v4

    .line 97
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v5

    invoke-virtual {v4, v5}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v4

    .line 98
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v5

    invoke-virtual {v4, v5}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v4

    new-instance v5, Lcom/jiliguala/niuwa/module/onboading/presenter/BabyNickNamePresenter$2;

    invoke-direct {v5, p0}, Lcom/jiliguala/niuwa/module/onboading/presenter/BabyNickNamePresenter$2;-><init>(Lcom/jiliguala/niuwa/module/onboading/presenter/BabyNickNamePresenter;)V

    .line 99
    invoke-virtual {v4, v5}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v4

    .line 95
    invoke-virtual {v1, v4}, Lrx/i/b;->a(Lrx/m;)V

    .line 147
    .end local v0    # "template":Lcom/jiliguala/niuwa/logic/network/json/NewBabyInfoTemplate$PutBabyInfoTemplate;
    .end local v6    # "body":Lokhttp3/ab;
    .end local v7    # "json":Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method public checkBabyParent(Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoDataTmp;)Z
    .locals 2
    .param p1, "babyInfoDataTmp"    # Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoDataTmp;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/presenter/BabyNickNamePresenter;->mUserInfoTemplate:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/presenter/BabyNickNamePresenter;->mUserInfoTemplate:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoDataTmp;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/presenter/BabyNickNamePresenter;->mUserInfoTemplate:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->_id:Ljava/lang/String;

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoDataTmp;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;->prt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 154
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public generateUserInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "nick"    # Ljava/lang/String;
    .param p2, "bd"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/onboading/presenter/BabyNickNamePresenter;->mNick:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/onboading/presenter/BabyNickNamePresenter;->mBd:Ljava/lang/String;

    .line 42
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/presenter/BabyNickNamePresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/presenter/BabyNickNamePresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/onboading/view/IBabyNickView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/onboading/view/IBabyNickView;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    .line 44
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v1

    .line 45
    invoke-interface {v1}, Lcom/jiliguala/niuwa/logic/network/d;->j()Lrx/e;

    move-result-object v1

    .line 46
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 47
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 48
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/onboading/presenter/BabyNickNamePresenter$1;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/onboading/presenter/BabyNickNamePresenter$1;-><init>(Lcom/jiliguala/niuwa/module/onboading/presenter/BabyNickNamePresenter;)V

    .line 49
    invoke-virtual {v1, v2}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 76
    :goto_0
    return-void

    .line 73
    :cond_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->d()Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/presenter/BabyNickNamePresenter;->mUserInfoTemplate:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    .line 74
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/presenter/BabyNickNamePresenter;->mNick:Ljava/lang/String;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/presenter/BabyNickNamePresenter;->mBd:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/jiliguala/niuwa/module/onboading/presenter/BabyNickNamePresenter;->requestAddBaby(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
