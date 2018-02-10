.class Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment$3;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->generateRefreshNewSub()Lrx/l;
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
.field final synthetic a:Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment$3;->a:Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/ForumSets;)V
    .locals 3
    .param p1, "forumSets"    # Lcom/jiliguala/niuwa/logic/network/json/ForumSets;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment$3;->a:Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->access$100(Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    if-eqz p1, :cond_0

    .line 165
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment$3;->a:Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->access$000(Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;)Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;

    move-result-object v0

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/ForumSets;->data:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;->updateDateSet(Ljava/util/ArrayList;Z)V

    .line 166
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment$3;->a:Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->access$000(Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;)Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;->notifyDataSetChanged()V

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment$3;->a:Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->access$300(Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;)Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->f()V

    .line 170
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment$3;->a:Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->access$200(Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment$3;->a:Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->access$000(Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;)Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 171
    return-void

    .line 170
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 149
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment$3;->a:Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->access$300(Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;)Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->f()V

    .line 156
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment$3;->a:Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->access$200(Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment$3;->a:Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->access$000(Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;)Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumSecondaryPageListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 157
    return-void

    .line 156
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 145
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/ForumSets;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment$3;->a(Lcom/jiliguala/niuwa/logic/network/json/ForumSets;)V

    return-void
.end method
