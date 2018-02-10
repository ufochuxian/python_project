.class Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity$4;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->refreshNewSub()Lrx/l;
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
.field final synthetic a:Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity$4;->a:Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/ForumSets;)V
    .locals 4
    .param p1, "forumSets"    # Lcom/jiliguala/niuwa/logic/network/json/ForumSets;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 139
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity$4;->a:Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->access$300(Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 140
    if-eqz p1, :cond_0

    .line 141
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity$4;->a:Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->access$000(Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;)Lcom/jiliguala/niuwa/module/forum/personalforum/adapter/MyForumListAdapter;

    move-result-object v2

    iget-object v3, p1, Lcom/jiliguala/niuwa/logic/network/json/ForumSets;->data:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v0}, Lcom/jiliguala/niuwa/module/forum/personalforum/adapter/MyForumListAdapter;->updateDateSet(Ljava/util/ArrayList;Z)V

    .line 142
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity$4;->a:Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity$4;->a:Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->access$000(Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;)Lcom/jiliguala/niuwa/module/forum/personalforum/adapter/MyForumListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/forum/personalforum/adapter/MyForumListAdapter;->getCount()I

    move-result v3

    if-gtz v3, :cond_1

    :goto_0
    invoke-static {v2, v0}, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->access$500(Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;Z)V

    .line 143
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity$4;->a:Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->access$000(Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;)Lcom/jiliguala/niuwa/module/forum/personalforum/adapter/MyForumListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/forum/personalforum/adapter/MyForumListAdapter;->notifyDataSetChanged()V

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity$4;->a:Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->access$600(Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;)Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->f()V

    .line 147
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity$4;->a:Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->access$402(Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;Z)Z

    .line 148
    return-void

    :cond_1
    move v0, v1

    .line 142
    goto :goto_0
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    const/4 v2, 0x1

    .line 130
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity$4;->a:Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;

    invoke-static {v0, v2}, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->access$500(Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;Z)V

    .line 131
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity$4;->a:Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->access$600(Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;)Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->f()V

    .line 132
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity$4;->a:Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->access$000(Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;)Lcom/jiliguala/niuwa/module/forum/personalforum/adapter/MyForumListAdapter;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/jiliguala/niuwa/module/forum/personalforum/adapter/MyForumListAdapter;->updateDateSet(Ljava/util/ArrayList;Z)V

    .line 133
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity$4;->a:Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->access$000(Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;)Lcom/jiliguala/niuwa/module/forum/personalforum/adapter/MyForumListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/forum/personalforum/adapter/MyForumListAdapter;->notifyDataSetChanged()V

    .line 134
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity$4;->a:Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->access$402(Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;Z)Z

    .line 135
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 122
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/ForumSets;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity$4;->a(Lcom/jiliguala/niuwa/logic/network/json/ForumSets;)V

    return-void
.end method
