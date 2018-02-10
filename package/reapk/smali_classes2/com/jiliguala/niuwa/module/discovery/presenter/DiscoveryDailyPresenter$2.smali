.class Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter$2;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->refreshNewSub()Lrx/l;
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
    .line 64
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter$2;->a:Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/HotSubjectTemplete;)V
    .locals 2
    .param p1, "hotSubjectTemplete"    # Lcom/jiliguala/niuwa/logic/network/json/HotSubjectTemplete;

    .prologue
    const/4 v1, 0x1

    .line 79
    if-eqz p1, :cond_1

    .line 80
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter$2;->a:Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;

    iget v0, v0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->mRspCnter:I

    if-ge v0, v1, :cond_0

    .line 81
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter$2;->a:Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->access$300(Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter$2;->a:Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;

    invoke-static {v0, p1}, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->access$402(Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;Lcom/jiliguala/niuwa/logic/network/json/HotSubjectTemplete;)Lcom/jiliguala/niuwa/logic/network/json/HotSubjectTemplete;

    .line 84
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter$2;->a:Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;

    iget v1, v0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->mRspCnter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->mRspCnter:I

    .line 85
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter$2;->a:Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->postFail:Z

    .line 89
    :goto_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter$2;->a:Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->access$200(Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;)V

    .line 91
    return-void

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter$2;->a:Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;

    iput-boolean v1, v0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->postFail:Z

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter$2;->a:Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->postFail:Z

    .line 73
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter$2;->a:Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->access$200(Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;)V

    .line 75
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 64
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/HotSubjectTemplete;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter$2;->a(Lcom/jiliguala/niuwa/logic/network/json/HotSubjectTemplete;)V

    return-void
.end method
