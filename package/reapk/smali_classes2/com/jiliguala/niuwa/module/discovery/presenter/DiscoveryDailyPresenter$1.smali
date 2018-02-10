.class Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->loadMoreSub()Lrx/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/HotSubjectTemplete;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter$1;->a:Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/HotSubjectTemplete;)V
    .locals 3
    .param p1, "forumSets"    # Lcom/jiliguala/niuwa/logic/network/json/HotSubjectTemplete;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter$1;->a:Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->access$002(Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;Z)Z

    .line 56
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter$1;->a:Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->access$100(Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;)Lcom/jiliguala/niuwa/module/discovery/presenter/DailyView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter$1;->a:Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->access$100(Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;)Lcom/jiliguala/niuwa/module/discovery/presenter/DailyView;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/HotSubjectTemplete;->data:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/discovery/presenter/DailyView;->onLoadMoreSuccess(Ljava/util/ArrayList;)V

    .line 59
    :cond_0
    return-void
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 43
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter$1;->a:Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->access$002(Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;Z)Z

    .line 48
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter$1;->a:Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->access$100(Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;)Lcom/jiliguala/niuwa/module/discovery/presenter/DailyView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter$1;->a:Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->access$100(Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;)Lcom/jiliguala/niuwa/module/discovery/presenter/DailyView;

    move-result-object v0

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/discovery/presenter/DailyView;->onLoadMoreFailed()V

    .line 51
    :cond_0
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 39
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/HotSubjectTemplete;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter$1;->a(Lcom/jiliguala/niuwa/logic/network/json/HotSubjectTemplete;)V

    return-void
.end method
