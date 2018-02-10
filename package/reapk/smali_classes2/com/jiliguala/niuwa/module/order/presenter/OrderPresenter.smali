.class public Lcom/jiliguala/niuwa/module/order/presenter/OrderPresenter;
.super Lcom/jiliguala/niuwa/common/base/d;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/order/contact/OrderContract$Presenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jiliguala/niuwa/common/base/d",
        "<",
        "Lcom/jiliguala/niuwa/module/order/contact/OrderContract$View;",
        ">;",
        "Lcom/jiliguala/niuwa/module/order/contact/OrderContract$Presenter;"
    }
.end annotation


# static fields
.field public static final KEY_PARAM_A:Ljava/lang/String; = "KEY_PARAM_A"

.field public static final KEY_PARAM_URL:Ljava/lang/String; = "KEY_PARAM_URL"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;

.field private mCurrentPos:I

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/jiliguala/niuwa/module/order/presenter/OrderPresenter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/order/presenter/OrderPresenter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/d;-><init>()V

    return-void
.end method

.method private reportToAmplitude(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 48
    if-nez p1, :cond_1

    .line 49
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v0

    const-string v1, "My Store View"

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/a/b;->b(Ljava/lang/String;)V

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 51
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v0

    const-string v1, "Order List View"

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/a/b;->b(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getCurrentPos()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/jiliguala/niuwa/module/order/presenter/OrderPresenter;->mCurrentPos:I

    return v0
.end method

.method public init(Landroid/content/Intent;Lrx/i/b;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "CompositeSub"    # Lrx/i/b;

    .prologue
    .line 37
    const-string v0, "KEY_PARAM_A"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/order/presenter/OrderPresenter;->a:Ljava/lang/String;

    .line 38
    const-string v0, "KEY_PARAM_URL"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/order/presenter/OrderPresenter;->url:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0
    .param p1, "pos"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/jiliguala/niuwa/module/order/presenter/OrderPresenter;->mCurrentPos:I

    .line 44
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/order/presenter/OrderPresenter;->reportToAmplitude(I)V

    .line 45
    return-void
.end method

.method public requestServer()V
    .locals 3

    .prologue
    .line 61
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/order/presenter/OrderPresenter;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/order/presenter/OrderPresenter;->a:Ljava/lang/String;

    const-string v1, "-relay-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/order/presenter/OrderPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/order/contact/OrderContract$View;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/order/presenter/OrderPresenter;->url:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/order/contact/OrderContract$View;->loadYzH5Fragment(Ljava/lang/String;)V

    .line 94
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/s;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 65
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/order/presenter/OrderPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/order/contact/OrderContract$View;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/order/contact/OrderContract$View;->loadYzH5ErrorPage()V

    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/order/presenter/OrderPresenter;->getSubscription()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    .line 68
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/order/presenter/OrderPresenter;->a:Ljava/lang/String;

    .line 69
    invoke-interface {v1, v2}, Lcom/jiliguala/niuwa/logic/network/d;->f(Ljava/lang/String;)Lrx/e;

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

    new-instance v2, Lcom/jiliguala/niuwa/module/order/presenter/OrderPresenter$1;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/order/presenter/OrderPresenter$1;-><init>(Lcom/jiliguala/niuwa/module/order/presenter/OrderPresenter;)V

    .line 73
    invoke-virtual {v1, v2}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v1

    .line 67
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    goto :goto_0
.end method
