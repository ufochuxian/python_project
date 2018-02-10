.class Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter$2;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter;->refreshNewSub()Lrx/l;
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
    .line 78
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter$2;->a:Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/ForumSets;)V
    .locals 2
    .param p1, "forumSets"    # Lcom/jiliguala/niuwa/logic/network/json/ForumSets;

    .prologue
    .line 91
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/ForumSets;->data:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/e;->a(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter$2;->a:Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter;->access$100(Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 93
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter$2;->a:Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter;->access$100(Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/ForumSets;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 94
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter$2;->a:Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter$2;->a:Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectUI;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectUI;->addListHeaderView()V

    .line 96
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter$2;->a:Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectUI;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter$2;->a:Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter;->access$100(Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectUI;->onRefreshNewSuccess(Ljava/util/ArrayList;)V

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter$2;->a:Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter;->access$000(Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter;)V

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter$2;->a:Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter;->access$000(Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter;)V

    .line 87
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 78
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/ForumSets;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter$2;->a(Lcom/jiliguala/niuwa/logic/network/json/ForumSets;)V

    return-void
.end method
