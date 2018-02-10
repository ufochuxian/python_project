.class Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter;->loadMoreSub()Lrx/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/ForumSets;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter$1;->a:Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/ForumSets;)V
    .locals 3
    .param p1, "forumSets"    # Lcom/jiliguala/niuwa/logic/network/json/ForumSets;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter$1;->a:Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter;->isLoadingMore:Z

    .line 70
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter$1;->a:Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter$1;->a:Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectUI;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/ForumSets;->data:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectUI;->onLoadMoreSuccess(Ljava/util/ArrayList;)V

    .line 73
    :cond_0
    return-void
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 57
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter$1;->a:Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter;->isLoadingMore:Z

    .line 62
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter$1;->a:Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter$1;->a:Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectUI;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectUI;->onLoadMoreFailed()V

    .line 65
    :cond_0
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 53
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/ForumSets;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter$1;->a(Lcom/jiliguala/niuwa/logic/network/json/ForumSets;)V

    return-void
.end method
