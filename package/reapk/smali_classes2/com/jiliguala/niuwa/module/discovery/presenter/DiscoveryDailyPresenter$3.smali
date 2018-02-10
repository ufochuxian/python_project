.class Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter$3;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->requestBanner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate;",
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
    .line 111
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter$3;->a:Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate;)V
    .locals 2
    .param p1, "dailyDataTemplate"    # Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate;

    .prologue
    const/4 v1, 0x1

    .line 126
    if-eqz p1, :cond_1

    .line 127
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter$3;->a:Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;

    iget v0, v0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->mRspCnter:I

    if-ge v0, v1, :cond_0

    .line 128
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter$3;->a:Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->access$300(Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter$3;->a:Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;

    invoke-static {v0, p1}, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->access$502(Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate;)Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate;

    .line 131
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter$3;->a:Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;

    iget v1, v0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->mRspCnter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->mRspCnter:I

    .line 132
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter$3;->a:Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->bannerFail:Z

    .line 136
    :goto_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter$3;->a:Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->access$200(Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;)V

    .line 138
    return-void

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter$3;->a:Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;

    iput-boolean v1, v0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->bannerFail:Z

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 115
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter$3;->a:Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->bannerFail:Z

    .line 120
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter$3;->a:Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->access$200(Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;)V

    .line 122
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 111
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter$3;->a(Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate;)V

    return-void
.end method
