.class Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;->refreshNewSub()Lrx/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lcom/jiliguala/niuwa/module/story/data/json/ShelfContent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter$1;->a:Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/module/story/data/json/ShelfContent;)V
    .locals 2
    .param p1, "shelfContent"    # Lcom/jiliguala/niuwa/module/story/data/json/ShelfContent;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter$1;->a:Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;->access$100(Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter$1;->a:Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;->access$000(Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;)Lcom/jiliguala/niuwa/module/story/presenter/ShelfView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    if-eqz p1, :cond_0

    .line 55
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter$1;->a:Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;->access$000(Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;)Lcom/jiliguala/niuwa/module/story/presenter/ShelfView;

    move-result-object v0

    iget-object v1, p1, Lcom/jiliguala/niuwa/module/story/data/json/ShelfContent;->data:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/story/presenter/ShelfView;->onRefreshNewSuccess(Ljava/util/ArrayList;)V

    .line 59
    :cond_0
    return-void
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 38
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter$1;->a:Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;->access$000(Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;)Lcom/jiliguala/niuwa/module/story/presenter/ShelfView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter$1;->a:Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;->access$000(Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;)Lcom/jiliguala/niuwa/module/story/presenter/ShelfView;

    move-result-object v0

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/story/presenter/ShelfView;->onRefreshNewFail()V

    .line 45
    :cond_0
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 34
    check-cast p1, Lcom/jiliguala/niuwa/module/story/data/json/ShelfContent;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter$1;->a(Lcom/jiliguala/niuwa/module/story/data/json/ShelfContent;)V

    return-void
.end method
