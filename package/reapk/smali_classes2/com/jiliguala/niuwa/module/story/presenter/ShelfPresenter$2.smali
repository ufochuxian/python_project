.class Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter$2;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;->loadMoreSub()Lrx/l;
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
    .line 64
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter$2;->a:Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/module/story/data/json/ShelfContent;)V
    .locals 2
    .param p1, "shelfContent"    # Lcom/jiliguala/niuwa/module/story/data/json/ShelfContent;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter$2;->a:Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;->access$102(Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;Z)Z

    .line 81
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter$2;->a:Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;->access$000(Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;)Lcom/jiliguala/niuwa/module/story/presenter/ShelfView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    if-eqz p1, :cond_0

    .line 83
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter$2;->a:Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;->access$000(Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;)Lcom/jiliguala/niuwa/module/story/presenter/ShelfView;

    move-result-object v0

    iget-object v1, p1, Lcom/jiliguala/niuwa/module/story/data/json/ShelfContent;->data:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/story/presenter/ShelfView;->onLoadMoreSuccess(Ljava/util/ArrayList;)V

    .line 86
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
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter$2;->a:Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;->access$102(Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;Z)Z

    .line 73
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter$2;->a:Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;->access$000(Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;)Lcom/jiliguala/niuwa/module/story/presenter/ShelfView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter$2;->a:Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;->access$000(Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;)Lcom/jiliguala/niuwa/module/story/presenter/ShelfView;

    move-result-object v0

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/story/presenter/ShelfView;->onLoadMoreFail()V

    .line 76
    :cond_0
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 64
    check-cast p1, Lcom/jiliguala/niuwa/module/story/data/json/ShelfContent;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter$2;->a(Lcom/jiliguala/niuwa/module/story/data/json/ShelfContent;)V

    return-void
.end method
