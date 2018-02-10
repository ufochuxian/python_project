.class Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->checkRefreshResponse()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter$4;->a:Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 165
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter$4;->a:Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->access$600(Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 166
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter$4;->a:Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;

    iget-boolean v0, v0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->postFail:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter$4;->a:Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;

    iget-boolean v0, v0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->bannerFail:Z

    if-eqz v0, :cond_2

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter$4;->a:Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;

    iput v3, v0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->mRspCnter:I

    .line 168
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter$4;->a:Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->access$700(Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;)V

    .line 200
    :cond_1
    :goto_0
    return-void

    .line 172
    :cond_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter$4;->a:Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;

    iget v0, v0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->mRspCnter:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_8

    .line 173
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter$4;->a:Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->access$100(Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;)Lcom/jiliguala/niuwa/module/discovery/presenter/DailyView;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 174
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter$4;->a:Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->access$500(Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;)Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter$4;->a:Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->access$500(Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;)Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate;

    move-result-object v0

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate$DataPart;

    if-nez v0, :cond_5

    .line 175
    :cond_3
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter$4;->a:Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;

    iput-boolean v2, v0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->bannerFail:Z

    .line 176
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter$4;->a:Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->access$700(Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;)V

    .line 189
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter$4;->a:Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;

    iput v3, v0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->mRspCnter:I

    goto :goto_0

    .line 178
    :cond_5
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter$4;->a:Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->access$400(Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;)Lcom/jiliguala/niuwa/logic/network/json/HotSubjectTemplete;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter$4;->a:Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->access$400(Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;)Lcom/jiliguala/niuwa/logic/network/json/HotSubjectTemplete;

    move-result-object v0

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/HotSubjectTemplete;->data:Ljava/util/ArrayList;

    if-nez v0, :cond_7

    .line 179
    :cond_6
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter$4;->a:Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;

    iput-boolean v2, v0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->postFail:Z

    .line 180
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter$4;->a:Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->access$700(Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;)V

    goto :goto_1

    .line 183
    :cond_7
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter$4;->a:Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->access$300(Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 184
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter$4;->a:Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->access$300(Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter$4;->a:Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->access$400(Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;)Lcom/jiliguala/niuwa/logic/network/json/HotSubjectTemplete;

    move-result-object v1

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/HotSubjectTemplete;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 185
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter$4;->a:Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;

    invoke-static {v0, v2}, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->access$802(Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;Z)Z

    .line 186
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter$4;->a:Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->access$100(Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;)Lcom/jiliguala/niuwa/module/discovery/presenter/DailyView;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter$4;->a:Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->access$300(Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter$4;->a:Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->access$500(Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;)Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/jiliguala/niuwa/module/discovery/presenter/DailyView;->onRefreshNewSuccess(Ljava/util/ArrayList;Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate;)V

    goto :goto_1

    .line 192
    :cond_8
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter$4;->a:Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->access$800(Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter$4;->a:Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->access$600(Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method
