.class Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$5;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->requestVideoAnonymous(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/VideoMetaDataTemplate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    .prologue
    .line 373
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$5;->b:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$5;->a:Ljava/lang/String;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/VideoMetaDataTemplate;)V
    .locals 2
    .param p1, "videoDataTemplate"    # Lcom/jiliguala/niuwa/logic/network/json/VideoMetaDataTemplate;

    .prologue
    .line 387
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/VideoMetaDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    if-eqz v0, :cond_0

    .line 389
    invoke-static {}, Lcom/jiliguala/niuwa/logic/g/e;->a()Lcom/jiliguala/niuwa/logic/g/e;

    move-result-object v0

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/VideoMetaDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/g/e;->a(Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;)V

    .line 391
    :cond_0
    return-void
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 377
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 381
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$5;->b:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$5;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->showLimitDialogIfRequestRestVideoFailed(Ljava/lang/String;)V

    .line 382
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$5;->b:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->onFail()V

    .line 383
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 373
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/VideoMetaDataTemplate;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$5;->a(Lcom/jiliguala/niuwa/logic/network/json/VideoMetaDataTemplate;)V

    return-void
.end method
