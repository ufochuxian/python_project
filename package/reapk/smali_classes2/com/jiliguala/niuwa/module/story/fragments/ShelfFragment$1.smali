.class Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment$1;->a:Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;)V
    .locals 2
    .param p1, "pullToRefreshLayout"    # Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment$1;->a:Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;->access$000(Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;Z)V

    .line 85
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment$1;->a:Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;->access$102(Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;Z)Z

    .line 86
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment$1;->a:Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;->access$200(Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;)Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;->refreshShelfData()V

    .line 87
    return-void
.end method

.method public b(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;)V
    .locals 0
    .param p1, "pullToRefreshLayout"    # Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;

    .prologue
    .line 93
    return-void
.end method
