.class Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;->updateForumBoardList(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/BoardListTemplate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment$1;->a:Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/BoardListTemplate;)V
    .locals 3
    .param p1, "boardListTemplate"    # Lcom/jiliguala/niuwa/logic/network/json/BoardListTemplate;

    .prologue
    .line 191
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment$1;->a:Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;->access$400(Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;)I

    move-result v1

    if-nez v1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment$1;->a:Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;->access$100(Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 194
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment$1;->a:Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;->access$200(Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;)Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->d()V

    .line 195
    if-eqz p1, :cond_0

    .line 196
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/BoardListTemplate;->data:Ljava/util/ArrayList;

    .line 197
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/BoardListTemplate$DataPart;>;"
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment$1;->a:Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;->access$000(Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;)Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter;->updateData(Ljava/util/ArrayList;Z)V

    .line 199
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment$1;->a:Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;->access$000(Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;)Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter;->notifyDataSetChanged()V

    .line 203
    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/BoardListTemplate$DataPart;>;"
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment$1;->a:Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;->access$300(Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment$1;->a:Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;->access$300(Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/a/g;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 204
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment$1;->a:Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;->access$300(Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/a/g;->dismissAllowingStateLoss()V

    .line 206
    :cond_1
    return-void
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 174
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment$1;->a:Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;->access$000(Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;)Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/forum/page/adapter/ForumBoradListAdapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment$1;->a:Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;->access$100(Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment$1;->a:Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;->access$200(Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;)Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->c()V

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment$1;->a:Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;->access$300(Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment$1;->a:Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;->access$300(Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment$1;->a:Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;->access$300(Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->dismissAllowingStateLoss()V

    .line 186
    :cond_1
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 170
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/BoardListTemplate;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment$1;->a(Lcom/jiliguala/niuwa/logic/network/json/BoardListTemplate;)V

    return-void
.end method
