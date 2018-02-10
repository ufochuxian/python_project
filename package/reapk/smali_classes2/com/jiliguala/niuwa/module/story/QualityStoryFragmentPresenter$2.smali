.class Lcom/jiliguala/niuwa/module/story/QualityStoryFragmentPresenter$2;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/story/QualityStoryFragmentPresenter;->requestStoryLessonByGet(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/StoryOrderTemplete;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/story/QualityStoryFragmentPresenter;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/story/QualityStoryFragmentPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/story/QualityStoryFragmentPresenter;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragmentPresenter$2;->a:Lcom/jiliguala/niuwa/module/story/QualityStoryFragmentPresenter;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/StoryOrderTemplete;)V
    .locals 2
    .param p1, "storyOrderTemplete"    # Lcom/jiliguala/niuwa/logic/network/json/StoryOrderTemplete;

    .prologue
    .line 77
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/StoryOrderTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/StoryOrderTemplete$Data;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/StoryOrderTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/StoryOrderTemplete$Data;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/StoryOrderTemplete$Data;->order:Lcom/jiliguala/niuwa/logic/network/json/StoryOrder;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragmentPresenter$2;->a:Lcom/jiliguala/niuwa/module/story/QualityStoryFragmentPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/story/QualityStoryFragmentPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragmentPresenter$2;->a:Lcom/jiliguala/niuwa/module/story/QualityStoryFragmentPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/story/QualityStoryFragmentPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragmentView;

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/StoryOrderTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/StoryOrderTemplete$Data;

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/story/QualityStoryFragmentView;->updateUI(Lcom/jiliguala/niuwa/logic/network/json/StoryOrderTemplete$Data;)V

    .line 83
    :cond_0
    return-void
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 73
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 64
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/StoryOrderTemplete;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/story/QualityStoryFragmentPresenter$2;->a(Lcom/jiliguala/niuwa/logic/network/json/StoryOrderTemplete;)V

    return-void
.end method
