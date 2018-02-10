.class public Lcom/jiliguala/niuwa/module/settings/AliFeedBackActivity;
.super Lcom/jiliguala/niuwa/common/base/BaseActivity;
.source "SourceFile"


# instance fields
.field private handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/settings/AliFeedBackActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/AliFeedBackActivity;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/AliFeedBackActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v6, 0x7f0b0027

    invoke-virtual {p0, v6}, Lcom/jiliguala/niuwa/module/settings/AliFeedBackActivity;->setContentView(I)V

    .line 37
    sput-object p0, Lcom/alibaba/sdk/android/feedback/impl/FeedbackAPI;->activity:Landroid/app/Activity;

    .line 39
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/AliFeedBackActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    .line 40
    .local v1, "fm":Landroid/support/v4/app/ag;
    invoke-virtual {v1}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v4

    .line 41
    .local v4, "transaction":Landroid/support/v4/app/an;
    invoke-static {}, Lcom/alibaba/sdk/android/feedback/impl/FeedbackAPI;->getFeedbackFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 43
    .local v0, "feedback":Landroid/support/v4/app/Fragment;
    new-instance v6, Lcom/jiliguala/niuwa/module/settings/AliFeedBackActivity$1;

    invoke-direct {v6, p0, v4, v0}, Lcom/jiliguala/niuwa/module/settings/AliFeedBackActivity$1;-><init>(Lcom/jiliguala/niuwa/module/settings/AliFeedBackActivity;Landroid/support/v4/app/an;Landroid/support/v4/app/Fragment;)V

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/alibaba/sdk/android/feedback/impl/FeedbackAPI;->setFeedbackFragment(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Callable;)V

    .line 52
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 53
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/logic/login/a;->r()Ljava/lang/String;

    move-result-object v5

    .line 54
    .local v5, "userUID":Ljava/lang/String;
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/logic/login/a;->t()Ljava/lang/String;

    move-result-object v3

    .line 55
    .local v3, "nickName":Ljava/lang/String;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 56
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "uid"

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v6, "username"

    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-static {v6}, Lcom/alibaba/sdk/android/feedback/impl/FeedbackAPI;->setAppExtInfo(Lorg/json/JSONObject;)V

    .line 61
    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "nickName":Ljava/lang/String;
    .end local v5    # "userUID":Ljava/lang/String;
    :cond_0
    const/4 v6, -0x1

    invoke-virtual {p0, v6}, Lcom/jiliguala/niuwa/module/settings/AliFeedBackActivity;->setResult(I)V

    .line 62
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    iput-object v6, p0, Lcom/jiliguala/niuwa/module/settings/AliFeedBackActivity;->handler:Landroid/os/Handler;

    .line 63
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/settings/AliFeedBackActivity;->handler:Landroid/os/Handler;

    new-instance v7, Lcom/jiliguala/niuwa/module/settings/AliFeedBackActivity$2;

    invoke-direct {v7, p0, v0}, Lcom/jiliguala/niuwa/module/settings/AliFeedBackActivity$2;-><init>(Lcom/jiliguala/niuwa/module/settings/AliFeedBackActivity;Landroid/support/v4/app/Fragment;)V

    const-wide/16 v8, 0x64

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 80
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 84
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onDestroy()V

    .line 85
    invoke-static {}, Lcom/alibaba/sdk/android/feedback/impl/FeedbackAPI;->cleanFeedbackFragment()V

    .line 86
    invoke-static {}, Lcom/alibaba/sdk/android/feedback/impl/FeedbackAPI;->cleanActivity()V

    .line 87
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/AliFeedBackActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 88
    return-void
.end method
