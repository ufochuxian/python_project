.class public Lcom/jiliguala/niuwa/module/story/KeepAddressFragemntPresenter;
.super Lcom/jiliguala/niuwa/common/base/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jiliguala/niuwa/common/base/d",
        "<",
        "Lcom/jiliguala/niuwa/module/story/KeepAddressFragmentView;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragemntPresenter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragemntPresenter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/d;-><init>()V

    return-void
.end method

.method private generateRequestBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lokhttp3/ab;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "tel"    # Ljava/lang/String;
    .param p3, "region"    # Ljava/lang/String;
    .param p4, "addr"    # Ljava/lang/String;
    .param p5, "post"    # Ljava/lang/String;
    .param p6, "weichat"    # Ljava/lang/String;

    .prologue
    .line 53
    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/KeepAddressTemplete;

    invoke-direct {v1}, Lcom/jiliguala/niuwa/logic/network/json/KeepAddressTemplete;-><init>()V

    .line 54
    .local v1, "data":Lcom/jiliguala/niuwa/logic/network/json/KeepAddressTemplete;
    iput-object p1, v1, Lcom/jiliguala/niuwa/logic/network/json/KeepAddressTemplete;->name:Ljava/lang/String;

    .line 55
    iput-object p2, v1, Lcom/jiliguala/niuwa/logic/network/json/KeepAddressTemplete;->tel:Ljava/lang/String;

    .line 56
    iput-object p4, v1, Lcom/jiliguala/niuwa/logic/network/json/KeepAddressTemplete;->addr:Ljava/lang/String;

    .line 57
    iput-object p5, v1, Lcom/jiliguala/niuwa/logic/network/json/KeepAddressTemplete;->zip:Ljava/lang/String;

    .line 58
    iput-object p6, v1, Lcom/jiliguala/niuwa/logic/network/json/KeepAddressTemplete;->wechatid:Ljava/lang/String;

    .line 59
    iput-object p3, v1, Lcom/jiliguala/niuwa/logic/network/json/KeepAddressTemplete;->region:Ljava/lang/String;

    .line 60
    invoke-static {v1}, Lcom/jiliguala/niuwa/logic/network/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, "json":Ljava/lang/String;
    invoke-static {v2}, Lcom/jiliguala/niuwa/logic/network/a/b;->a(Ljava/lang/String;)Lokhttp3/ab;

    move-result-object v0

    .line 63
    .local v0, "body":Lokhttp3/ab;
    return-object v0
.end method


# virtual methods
.method public reportUserAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "tel"    # Ljava/lang/String;
    .param p3, "region"    # Ljava/lang/String;
    .param p4, "addr"    # Ljava/lang/String;
    .param p5, "post"    # Ljava/lang/String;
    .param p6, "weichat"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/KeepAddressFragemntPresenter;->getSubscription()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    .line 26
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v1

    .line 27
    invoke-direct/range {p0 .. p6}, Lcom/jiliguala/niuwa/module/story/KeepAddressFragemntPresenter;->generateRequestBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lokhttp3/ab;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/jiliguala/niuwa/logic/network/d;->w(Lokhttp3/ab;)Lrx/e;

    move-result-object v1

    .line 28
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 29
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 30
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/story/KeepAddressFragemntPresenter$1;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/story/KeepAddressFragemntPresenter$1;-><init>(Lcom/jiliguala/niuwa/module/story/KeepAddressFragemntPresenter;)V

    .line 31
    invoke-virtual {v1, v2}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 50
    return-void
.end method

.method public requestAddressDataFromServer(Ljava/lang/String;)V
    .locals 3
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/KeepAddressFragemntPresenter;->getSubscription()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    .line 68
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v1

    .line 69
    invoke-interface {v1, p1}, Lcom/jiliguala/niuwa/logic/network/d;->h(Ljava/lang/String;)Lrx/e;

    move-result-object v1

    .line 70
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 71
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 72
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/story/KeepAddressFragemntPresenter$2;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/story/KeepAddressFragemntPresenter$2;-><init>(Lcom/jiliguala/niuwa/module/story/KeepAddressFragemntPresenter;)V

    .line 73
    invoke-virtual {v1, v2}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v1

    .line 67
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 91
    return-void
.end method
