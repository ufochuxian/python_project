.class Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment$2;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;->reqeustServer(Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/YzData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

.field final synthetic b:Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment$2;->b:Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment$2;->a:Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/YzData;)V
    .locals 6
    .param p1, "yzData"    # Lcom/jiliguala/niuwa/logic/network/json/YzData;

    .prologue
    .line 202
    const/4 v0, 0x0

    .line 203
    .local v0, "refreshed":Z
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment$2;->a:Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment$2;->a:Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    instance-of v1, v1, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/YzData;->data:Lcom/jiliguala/niuwa/logic/network/json/YzData$DataPart;

    if-eqz v1, :cond_2

    .line 207
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment$2;->a:Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/YzData;->data:Lcom/jiliguala/niuwa/logic/network/json/YzData$DataPart;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/YzData$DataPart;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->setSignUrl(Ljava/lang/String;)V

    .line 208
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment$2;->a:Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/YzData;->data:Lcom/jiliguala/niuwa/logic/network/json/YzData$DataPart;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/YzData$DataPart;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->loadPage(Ljava/lang/String;)V

    .line 209
    const/4 v0, 0x1

    .line 211
    :cond_2
    if-nez v0, :cond_0

    .line 212
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment$2;->b:Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;->access$500(Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment$2$1;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment$2$1;-><init>(Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment$2;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 192
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment$2;->b:Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;->access$400(Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;)V

    .line 198
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 188
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/YzData;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment$2;->a(Lcom/jiliguala/niuwa/logic/network/json/YzData;)V

    return-void
.end method
