.class Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->reqeustVideoFavData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/VideoDataSetsTemplate;",
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
    .line 211
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$1;->b:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/VideoDataSetsTemplate;)V
    .locals 3
    .param p1, "videoDataSetsTemplate"    # Lcom/jiliguala/niuwa/logic/network/json/VideoDataSetsTemplate;

    .prologue
    .line 224
    if-eqz p1, :cond_0

    .line 225
    invoke-static {}, Lcom/jiliguala/niuwa/logic/k/e;->a()Lcom/jiliguala/niuwa/logic/k/e;

    move-result-object v0

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/VideoDataSetsTemplate;->data:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jiliguala/niuwa/logic/k/e;->a(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 227
    :cond_0
    return-void
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 215
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 220
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 211
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/VideoDataSetsTemplate;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$1;->a(Lcom/jiliguala/niuwa/logic/network/json/VideoDataSetsTemplate;)V

    return-void
.end method
