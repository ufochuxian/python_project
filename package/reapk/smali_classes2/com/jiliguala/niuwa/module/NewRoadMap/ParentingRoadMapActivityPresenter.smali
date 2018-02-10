.class public Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivityPresenter;
.super Lcom/jiliguala/niuwa/common/base/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jiliguala/niuwa/common/base/d",
        "<",
        "Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapUI;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivityPresenter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivityPresenter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/d;-><init>()V

    return-void
.end method


# virtual methods
.method public requestData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "bid"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "serverIv"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivityPresenter;->getSubscription()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    .line 23
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v1

    .line 24
    invoke-interface {v1, p1, p2, p3}, Lcom/jiliguala/niuwa/logic/network/d;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/e;

    move-result-object v1

    .line 25
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 26
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 27
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivityPresenter$1;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivityPresenter$1;-><init>(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivityPresenter;)V

    .line 28
    invoke-virtual {v1, v2}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 50
    return-void
.end method
