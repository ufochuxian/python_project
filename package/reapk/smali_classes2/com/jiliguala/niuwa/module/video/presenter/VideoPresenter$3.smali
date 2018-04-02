.class Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$3;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->requestVideoChannel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$3;->a:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate;)V
    .locals 3
    .param p1, "videoChannelTemplate"    # Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate;

    .prologue
    .line 253
    if-eqz p1, :cond_0

    .line 254
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$3;->a:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate;->data:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->access$002(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 255
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$3;->a:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$3;->a:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$3;->a:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->access$000(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->updateVideoChannelData(Ljava/util/ArrayList;)V

    .line 259
    :cond_0
    return-void
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 244
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 249
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 240
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$3;->a(Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate;)V

    return-void
.end method
